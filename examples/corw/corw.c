#include <thread>
#include <atomic>
#include <cassert>

std::atomic<int> x=0, y=0;
int data=0;

void f1() {
    x.store(1, std::memory_order_relaxed);
}

void f2() {
    data = x.load(std::memory_order_relaxed);
    x.store(2,std::memory_order_relaxed);
}

int main() {
    std::thread a(f1);
    std::thread b(f2);
    assert(data!=2);
    a.join(), b.join();
}
