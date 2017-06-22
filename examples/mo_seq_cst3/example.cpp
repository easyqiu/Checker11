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
 
void f1()
{
    checker_thread_begin("f1");
    //checker_shared((void*)&data1);
    //checker_shared((void*)&data2);
    //data1 = x.load(std::memory_order_relaxed);
    data3 = x.load(std::memory_order_seq_cst);
    y.store(1, std::memory_order_relaxed);
    checker_thread_end();
}

void f2()
{
    checker_thread_begin("f2");
    //checker_shared((void*)&data1);
    //checker_shared((void*)&data2);
    data2 = y.load(std::memory_order_seq_cst);
    x.store(1, std::memory_order_relaxed);
    checker_thread_end();
}
 
 
int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    x = 0, y = 0;

    std::thread a(f1);
    std::thread b(f2);
    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    
    a.join(); b.join();
    std::cout << "data: " << data1 << " " << data3 << " " << data2 << "\n";
    if (!(data1 == 1 && data2 == 1)) // may be violated
        std::cout << "ERROR!\n";
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
