
#include "ModelChecker.h"
#include "checker.hpp"

#include <thread>
#include <atomic>
#include <cassert>
#include <iostream>
#include <map>

#include <sys/types.h>
#include <unistd.h>

using namespace checker;

int data1 = 0, data2 = 0;
std::atomic<int> x, y;

std::map<std::thread::id, std::ofstream*> outfiles;

void f1() {
    checker_thread_begin("f1");
    //checker_shared((void*)&data1);
    
    data1 = 2;
    atomic_thread_fence(std::memory_order_release); // a 
    x.store(1, std::memory_order_relaxed);
    x.store(2, std::memory_order_relaxed);
    checker_thread_end();
}

void f2() {
    checker_thread_begin("f2");
    //checker_shared((void*)&data1);
    
    while ((data2 = x.load(std::memory_order_relaxed)) != 2) ;
    atomic_thread_fence(std::memory_order_acquire); // b
    assert(data1 == 2); // will never be violated
    checker_thread_end();
}

int user_main() {
    
    checker_generateExecutor();
    checker_thread_begin("main");
    //checker_shared((void*)&data1);
    
    data1 = data2 = 0;
    x = y = 0;

    std::thread a(f1);
    std::thread b(f2);

    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());
    
    /*std::atomic_compare_exchange_weak(&y, &data1, 2);
    std::atomic_compare_exchange_strong_explicit(&y, &data1, 2, 
            std::memory_order_release, std::memory_order_relaxed);
    y.fetch_add(1, std::memory_order_relaxed);*/

    //std::cout << "data: " << data1 << " " << data2 << "\n";
    //assert(data1 == 2); // may be violated
    
    a.join(), b.join();
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
//       atomic_thread_fence(memory_order_release); // a
//       x.store(1, memory_order_relaxed);
//       x.store(2, memory_order_relaxed); 
//      }
//  |||  {
//        r1=x.load(memory_order_relaxed);
//        atomic_thread_fence(memory_order_acquire); // b
//      }  
//  }}};
//  return 0; }
