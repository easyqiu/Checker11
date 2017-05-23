#include <vector>
#include <iostream>
#include <thread>
#include <atomic>
#include <cassert>
 
int data1, data2;
std::atomic<int> x = {0};
 
void f1()
{
    data1 = 42;
    atomic_thread_fence(std::memory_order_release);
    x.store(1, std::memory_order_relaxed);
}

void f2()
{
    if (x.load(std::memory_order_relaxed)==1) {
      atomic_thread_fence(std::memory_order_acquire);
      data2 = data1;
    } else 
      data2 = 42;
}
 
 
int main()
{
    std::thread a(f1);
    std::thread b(f2);
    a.join(), b.join();
    assert(data2==42); // never be violated
}
