#include <thread>
#include <atomic>
#include <cassert>

std::atomic<int> x=0, y=0;

void f1() {
    x.store(1, memory_order_relaxed);
}

void f2() {
    y = x.load(memory_order_relaxed);
    x.store(2,memory_order_relaxed);
}

int main() {
    std::thread a(f1);
    std::thread b(f2);
    assert(!(y.load()!=2));
    a.join(), b.join();
}

