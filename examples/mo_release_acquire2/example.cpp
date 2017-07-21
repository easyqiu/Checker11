#include "ModelChecker.h"
#include "checker.hpp"

#include <thread>
#include <atomic>
#include <cassert>
#include <vector>
 
using namespace checker;

std::vector<int> data;
std::atomic<int> flag;
 
void thread_1()
{
    checker_thread_begin("thread1");
    data.push_back(42);
    flag.store(1, std::memory_order_release);
    checker_thread_end();
}
 
void thread_2()
{
    checker_thread_begin("thread2");
    int expected=1;
    while (!flag.compare_exchange_strong(expected, 2, std::memory_order_acq_rel)) {
        expected = 1;
        std::this_thread::yield();
    }
    checker_thread_end();
}
 
void thread_3()
{
    checker_thread_begin("thread3");
    while (flag.load(std::memory_order_acquire) < 2)
        std::this_thread::yield();
    
    assert(data.at(0) == 42); // will never fire
    checker_thread_end();
}
 
int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    flag = 0;

    std::thread a(thread_1);
    std::thread b(thread_2);
    std::thread c(thread_3);

    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());
    checker_thread_create(c.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    checker_thread_join(c.get_id());

    a.join(); b.join(); c.join();

    checker_thread_end();
    checker_solver();
    return 0;
}

int main() {
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();

    return 0;
}
