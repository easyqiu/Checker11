#include "ModelChecker.h"
#include "checker.hpp"

#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include <thread>
#include <atomic>

#include "deque.h"

using namespace checker;
using namespace std;

Deque *q;
int a;
int b;
int c;

static void task() {
    checker_thread_begin("task");
	a=steal(q);
    checker_thread_end();
}

int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

	q=create();
    std::thread t(task);
    
    checker_thread_create(t.get_id());
	
    push(q, 1);
	push(q, 2);
	push(q, 4);
	b=take(q);
	c=take(q);

    checker_thread_join(t.get_id());
    t.join();

	bool correct=true;
	if (a!=1 && a!=2 && a!=4 && a!= EMPTY) {
		correct=false;
        printf("false1\n");
    }
	if (b!=1 && b!=2 && b!=4 && b!= EMPTY) {
        printf("false2\n");
		correct=false;
    }
	if (c!=1 && c!=2 && c!=4 && a!= EMPTY) {
        printf("false3\n");
		correct=false;
    }
	if (a!=EMPTY && b!=EMPTY && c!=EMPTY && (a+b+c)!=7) {
        printf("false4\n");
		correct=false;
    }
	if (!correct)
		printf("a=%d b=%d c=%d\n",a,b,c);
	assert(correct);

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
