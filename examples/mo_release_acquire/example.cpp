#include "checker.hpp"

#include <thread>
#include <atomic>
#include <cassert>
#include <string>
 
std::atomic<std::string*> ptr;
int data;

struct structA {
    int x;
    int y;
};

void producer()
{
    checker_thread_begin("producer");
    std::string* p  = new std::string("Hello");
    data = 42;
    ptr.store(p, std::memory_order_release);
    checker_thread_end();
}
 
void consumer()
{
    std::string* p2;
    checker_thread_begin("consumer");
    while (!(p2 = ptr.load(std::memory_order_acquire)))
        ;
    assert(*p2 == "Hello"); // never fires
    assert(data == 42); // never fires
    checker_thread_end();
}

void test() {
    std::atomic<int> x, y;
    x = x+y;
    x.store(2, std::memory_order_release);
}

void test(int x) {
    std::atomic<structA> A, B, *C;
}
 
int main() {
    checker_generateExecutor();
    checker_thread_begin("main");
    checker_shared((void*)&data);
    std::thread t1(producer);
    std::thread t2(consumer);
    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());
    t1.join(); t2.join();
    checker_thread_end();
    checker_solver();
}
