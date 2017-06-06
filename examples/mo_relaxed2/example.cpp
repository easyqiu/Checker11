#include "../../checker.hpp"
//#include "../../Instrument.h"
//#include "../../Executor.h"

#include <vector>
#include <iostream>
#include <thread>
#include <atomic>
#include <cassert>
 
int data1, data2;
std::atomic<int> x = {0}, y = {0};
 
void f1()
{
    checker_thread_begin(std::this_thread::get_id());
    checker_shared((void*)&data1);
    checker_shared((void*)&data2);
    data1 = x.load(std::memory_order_relaxed);
    y.store(1, std::memory_order_relaxed);
}

void f2()
{
    checker_thread_begin(std::this_thread::get_id());
    checker_shared((void*)&data1);
    checker_shared((void*)&data2);
    data2 = y.load(std::memory_order_relaxed);
    x.store(1, std::memory_order_relaxed);
}
 
 
int main()
{
    checker_generateExecutor();
    checker_thread_begin(std::this_thread::get_id());
    std::thread a(f1);
    std::thread b(f2);
    
    checker_thread_create(std::this_thread::get_id(), a.get_id());
    checker_thread_create(std::this_thread::get_id(), b.get_id());

    //checker_thread_create(a.get_id(), b.get_id());
    a.join(), b.join();
    std::cout << "data: " << data1 << " " << data2 << "\n";
    assert(!(data1 == 1 && data2 == 1)); // may be violated
    return 0;
}
