#include <vector>
#include <iostream>
#include <thread>
#include <atomic>
#include <cassert>
 
int data1, data2;
std::atomic<int> x = {0}, y = {0};
 
void f1()
{
    data1 = x.load(std::memory_order_relaxed);
    y.store(1, std::memory_order_relaxed);
}

void f2()
{
    data2 = y.load(std::memory_order_relaxed);
    x.store(1, std::memory_order_relaxed);
}
 
 
int main()
{
    std::thread a(f1);
    std::thread b(f2);
    a.join(), b.join();
    assert(!(data1 == 1 && data2 == 1)); // may be violated
}
