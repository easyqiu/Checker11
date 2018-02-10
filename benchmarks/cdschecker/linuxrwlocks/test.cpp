#include <atomic>
#include <thread>

using namespace std;

std::atomic<int> x;
int data1, data2;

void a() {
    //data1 = x.load(memory_order_acquire);
    data1 = atomic_fetch_sub_explicit(&x, 1, memory_order_relaxed);
}

void b() {
    //data2 = x.load(memory_order_acquire);
    data2 = atomic_fetch_sub_explicit(&x, 1, memory_order_relaxed);
}


int main() {
    x = 1;
    std::thread t1(a);
    std::thread t2(b);
    
    t1.join(), t2.join();
    printf("data: %d %d\n", data1, data2);
}
