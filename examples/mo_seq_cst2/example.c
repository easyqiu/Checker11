#include <thread>
#include <atomic>
#include <cassert>

int data1, data2;
std::atomic<int> y=0;
std::atomic<int> z=0; 

void f1() {
    data1 = y.load(std::memory_order_seq_cst);
    z.store(1, std::memory_order_seq_cst);
}

void f2() {
    data2 = z.load(std::memory_order_seq_cst);
    y.store(1, std::memory_order_relaxed);
}

int main() {
    std::thread t1(f1);
    std::thread t2(f2);
    assert(!(data1==1 && data2 == 1)); // never be violated
    t1.join(); t2.join();
    return 0;
}
