#include <thread>
#include <atomic>
#include <cassert>

int data;
std::atomic<int> x=0;

void f1() {
    x.store(1, memory_order_relaxed);
}

void f2() {
    x.store(2,memory_order_relaxed);
    data = x.load(memory_order_relaxed);
}

int main() {
    std::thread a(f1);
    std::thread b(f2);
    a.join(), b.join();
}

// for cppmem
//int main() {
//  atomic_int x; 
//  {{{ { 
//        x.store(1,memory_order_relaxed); 
//        }
//  ||| { x.store(2,memory_order_relaxed); 
//       r1=x.load(memory_order_relaxed); }  }}}
//  return 0;
//}
