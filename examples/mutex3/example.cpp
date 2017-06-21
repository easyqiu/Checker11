#include "ModelChecker.h"
#include "checker.hpp"

#include <iostream>
#include <chrono>
#include <thread>
#include <mutex>

using namespace checker;

int g_num;  // protected by g_num_mutex
std::atomic<int> x;
int r1;

std::mutex x_mutex;
 
void f1() 
{
    checker_thread_begin("f1");

    x_mutex.lock();
    x.store(1, std::memory_order_relaxed);
    x.store(2, std::memory_order_relaxed);
    x.store(3, std::memory_order_relaxed);
    x.store(4, std::memory_order_relaxed);
    x_mutex.unlock();

    checker_thread_end();
}

void f2() 
{
    checker_thread_begin("f2");

    x_mutex.lock();
    r1 = x.load(std::memory_order_relaxed);
    x_mutex.unlock();

    checker_thread_end();
}

int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    x = 0;

    std::thread t1(f1);
    std::thread t2(f2);

    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());

    t1.join();
    t2.join();

    printf("r1=%d\n", r1);

    checker_thread_end();
    checker_solver();
    return 0;
}

int main() {
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();

    return 0;
}
