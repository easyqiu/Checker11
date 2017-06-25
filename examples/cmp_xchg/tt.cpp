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
    printf("ddd1: %d\n", data1);
    bool flag = y.compare_exchange_weak(data1, 0, std::memory_order_release, std::memory_order_relaxed);
    printf("ddd2: %d, %d\n", flag, data1);
    //std::atomic_compare_exchange_weak(&y, &data1, 222);
    printf("ddd3: %d\n", data1);
}

void f2()
{
    data2 = y.load(std::memory_order_relaxed);
    x.store(1, std::memory_order_relaxed);
}
 
 
int main()
{
    data1 = data2 = 0;
    x = 1, y = 1;

    std::thread a(f1);
    std::thread b(f2);
    
    a.join(); b.join();
    printf("data: %d, %d\n", data1, data2);
    return 0;
}
