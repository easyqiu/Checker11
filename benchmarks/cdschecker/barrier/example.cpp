#include "ModelChecker.h"
#include "checker.hpp"

#include <stdio.h>
#include <thread>

#include "barrier.h"

spinning_barrier *barr;
int var = 0;

void threadA()
{
    checker_thread_begin("threadA");
    var = 1;
	barr->wait();
    checker_thread_end();
}

void threadB()
{
    checker_thread_begin("threadB");
	barr->wait();
	printf("var = %d\n", var);

    checker_thread_end();
}

#define NUMREADERS 1
int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

	barr = new spinning_barrier(NUMREADERS + 1);

	//thrd_create(&A, &threadA, NULL);
    std::thread a(threadA);
    std::thread b(threadB);

    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    
    b.join();
    a.join();
    
    checker_thread_end();
    checker_solver();
	return 0;
}

int main() {
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();

    delete modelChecker;
    return 0;
}
