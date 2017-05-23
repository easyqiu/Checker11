#include <thread>
#include <atomic>
#include <cassert>

int data1, data2;
std::atomic<int> x=0, y=0;

void f1() {
    x.store(1, memory_order_relaxed);
    x.store(2, memory_order_relaxed);
}

void f2() {
    data1 = x.load(memory_order_relaxed);
    data2 = x.load(memory_order_relaxed);
}

int main() {
    std::thread a(f1);
    std::thread b(f2);
    assert(!(data1==2 && data2==1));
    a.join(), b.join();
}

// for cppmem
//int main() {
//  atomic_int x; 
//  {{{ { 
//        x.store(1,memory_order_relaxed); 
//        x.store(2,memory_order_relaxed); 
//        }
//  ||| { r1=x.load(memory_order_relaxed);
//       r2=x.load(memory_order_relaxed);}  }}}
//  return 0;
//}

