#include <thread>
#include <atomic>
#include <cassert>

std::atomic<int> x=0;

void f1() {
    x.store(1, std::memory_order_relaxed); // w1
    x.store(2, std::memory_order_relaxed); // w2
}

int main() {
    std::thread a(f1);
    a.join();
}

// for cppmem
//int main() {
//  atomic_int x; 
//  {{{ { 
//        x.store(1,memory_order_relaxed); 
//        x.store(2,memory_order_relaxed); }
//  }}}
//  return 0;
//}

