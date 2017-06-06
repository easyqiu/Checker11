
#include "../checker.hpp"

#include <thread>
#include <atomic>
#include <cassert>
#include <iostream>
#include <map>

#include <sys/types.h>
#include <unistd.h>

int data1 = 0, data2 = 0;
std::atomic<int> x={0}, y={0};

std::map<std::thread::id, std::ofstream*> outfiles;

void f1() {
    checker_thread_begin(std::this_thread::get_id());
    checker_shared((void*)&data1);
    
    data1 = 2;
    atomic_thread_fence(std::memory_order_release); // a 
    x.store(1, std::memory_order_relaxed);
    x.store(2, std::memory_order_relaxed);
}

void f2() {
    checker_thread_begin(std::this_thread::get_id());
    checker_shared((void*)&data1);
    
    while ((data2 = x.load(std::memory_order_relaxed)) != 2) ;
    atomic_thread_fence(std::memory_order_acquire); // b
    assert(data1 == 2); // will never be violated
}

int main() {
    
    checker_thread_begin(std::this_thread::get_id());
    checker_shared((void*)&data1);
    
    std::thread a(f1);
    std::thread b(f2);

    checker_thread_create(std::this_thread::get_id(), a.get_id());
    checker_thread_create(std::this_thread::get_id(), b.get_id());
    
    /*std::atomic_compare_exchange_weak(&y, &data1, 2);
    std::atomic_compare_exchange_strong_explicit(&y, &data1, 2, 
            std::memory_order_release, std::memory_order_relaxed);
    y.fetch_add(1, std::memory_order_relaxed);*/

    //std::cout << "data: " << data1 << " " << data2 << "\n";
    assert(data1 == 2); // may be violated
    
    a.join(), b.join();
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
