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
std::atomic<int> x, y;
int *dp1, *dp2, *dp3, *dp4;

std::atomic_uintptr_t xp, yp;
 
void f1()
{
    checker_thread_begin("f1");
    dp2 = (int*) calloc(1, sizeof(int));
    dp1 = (int*) xp.load(std::memory_order_relaxed);
    yp.store((uintptr_t)dp2, std::memory_order_relaxed);
    checker_thread_end();
}

void f2()
{
    checker_thread_begin("f2");
    dp4 = (int*) calloc(1, sizeof(int));
    dp3 = (int*) yp.load(std::memory_order_relaxed);
    xp.store((uintptr_t)dp4, std::memory_order_relaxed);
    checker_thread_end();
}
 
 
int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    xp = 0, yp = 0;

    std::thread a(f1);
    std::thread b(f2);
    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    
    a.join(); b.join();
    printf("data: %d, %d\n", dp1, dp3);
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
