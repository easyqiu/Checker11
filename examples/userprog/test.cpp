#include <vector>
#include <iostream>
#include <thread>
#include <atomic>
#include <cassert>
 
int data1, data2;
std::atomic<int> x, y;
 
void f1()
{
    data1 = x.load(std::memory_order_relaxed);
    y.store(data1, std::memory_order_relaxed);
}

void f2()
{
    data2 = y.load(std::memory_order_relaxed);
    x.store(42, std::memory_order_relaxed);
}
 
 
int main()
{
    x = 0, y = 0;

    std::thread a(f1);
    std::thread b(f2);
    
    a.join(); b.join();
    printf("data: %d, %d\n", data1, data2);
    return 0;
}
