#include "ModelChecker.h"
#include "checker.hpp"
//#include "../../Instrument.h"
//#include "../../Executor.h"

#include <vector>
#include <iostream>
#include <thread>
#include <atomic>
#include <cassert>
 
using namespace checker;

int data1, data2, data3;
std::atomic<int> x, y, z;
 
void f1()
{
    checker_thread_begin("f1");
   
    x = 1;

    checker_thread_end();
}

void f2()
{
    checker_thread_begin("f2");

    data1 = x;
    data2 = x;

    checker_thread_end();
}
 
 
int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    x = 0, y = 0, z = 0;

    std::thread a(f1);
    std::thread b(f2);
    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    
    a.join(); b.join();
    printf("data: %d, %d\n", data1, data2);
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
