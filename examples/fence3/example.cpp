#include <thread>
#include <atomic>
#include <cassert>
#include <iostream>

#include "ModelChecker.h"
#include "checker.hpp"

std::atomic<int> data1;
int data2, data3;
std::atomic<int> x;

void f1() {
    checker_thread_begin("f1");
    
    data1 = 2;
    //atomic_thread_fence(std::memory_order_release); // a 
    x.store(1, std::memory_order_release);
    x.store(2, std::memory_order_relaxed);
    
    checker_thread_end();
}

void f2() {
    checker_thread_begin("f2");
    
    //while ((data2 = x.load(std::memory_order_acquire)) == 0) ; // b
    data2 = x.load(std::memory_order_relaxed);
    atomic_thread_fence(std::memory_order_acquire); // b
    data3 = data1;
    
    checker_thread_end();
}

int user_main() {
    checker_generateExecutor();
    checker_thread_begin("main");
    
    data1 = data2 = data3 = 0;
    x = 0;

    std::thread a(f1);
    std::thread b(f2);
    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    //assert(data1 == 2); // will never be violated
    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    a.join(), b.join();
    
    std::cout << "data: " << data1 << " " << data2 << " " << data3 << "\n";
    checker_thread_end();
    checker_solver();

    return 0;
}

int main() {
    //signal(SIGSEGV, handler);
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();
   
    return 0;
}

// for mem, a--sw-->b
//int main() {
//  atomic_int x=0;
//  int y;
//  {{{  { 
//       //atomic_thread_fence(memory_order_release); 
//       x.store(1, memory_order_release); // a
//       x.store(2, memory_order_relaxed); 
//      }
//  |||  {
//        r1=x.load(memory_order_relaxed);
//        atomic_thread_fence(memory_order_acquire); // b
//      }  
//  }}};
//  return 0; }
