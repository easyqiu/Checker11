#include "checker.hpp"

#include <thread>
#include <atomic>
#include <cassert>
#include <string>
 
std::atomic<int> x;
int data;

void producer()
{
    checker_thread_begin("producer");
    data = 42;
    x.store(7, std::memory_order_release);
    x.store(8, std::memory_order_release);
    checker_thread_end();
}
 
void consumer()
{
    int test;
    checker_thread_begin("consumer");
    while ((test = x.load(std::memory_order_acquire)) == 0)
        ;
    assert(data == 42); // never fires
    checker_thread_end();
}

int main() {
    checker_generateExecutor();
    checker_thread_begin("main");
    checker_shared((void*)&data);
    x = 0;
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
