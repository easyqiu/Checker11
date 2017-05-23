#include <thread>
#include <atomic>
#include <cassert>

int data1, data2, data3, data4;
std::atomic<int> x=0, y=0;

void f1() {
    x.store(1, std::memory_order_release);
    y.store(1, std::memory_order_release);
}

void f2() {
    data1 = x.load(std::memory_order_acquire);
    data2 = y.load(std::memory_order_acquire);
}

void f3() {
    data3 = x.load(std::memory_order_acquire);
    data4 = y.load(std::memory_order_acquire);
}


int main() {
    std::thread a(f1);
    std::thread b(f2);
    std::thread c(f3);
    assert(!(data1==1 && data2 == 0 && data3 == 0 && data4 == 1)); //may be violated
    a.join(), b.join(), c.join();
}
