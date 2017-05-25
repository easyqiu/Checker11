#include <thread>
#include <atomic>
#include <cassert>
#include <iostream>

int data1 = 0, data2 = 0;
std::atomic<int> x=0;

void f1() {
    data1 = 2;
    //atomic_thread_fence(std::memory_order_release); 
    x.store(1, std::memory_order_release);  // a
    x.store(2, std::memory_order_relaxed);
}

void f2() {
    while ((data2 = x.load(std::memory_order_relaxed)) == 0) ;
    atomic_thread_fence(std::memory_order_acquire); // b 
}

int main() {
    std::thread a(f1);
    std::thread b(f2);

    std::cout << "data: " << data1 << " " << data2 << "\n";
    assert(data1 == 2); // will never be violated
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
//        r1=x.load(memory_order_acquire);
//        //atomic_thread_fence(memory_order_acquire); // b
//      }  
//  }}};
//  return 0; }
