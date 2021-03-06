#include "ModelChecker.h"
#include "checker.hpp"

//#include "main.cpp"
#include <thread>
#include <atomic>
#include <cassert>

using namespace checker;
//ModelChecker* modelChecker;

int data1, data2, data3, data4;
std::atomic<int> x={0}, y={0};

void f1() {
    checker_thread_begin("f1");
    x.store(10, std::memory_order_release);
    y.store(10, std::memory_order_release);
    checker_thread_end();
}

void f2() {
    checker_thread_begin("f2");
    data1 = x.load(std::memory_order_acquire);
    data2 = y.load(std::memory_order_acquire);
    checker_thread_end();
}

void f3() {
    checker_thread_begin("f3");
    data3 = x.load(std::memory_order_acquire);
    data4 = y.load(std::memory_order_acquire);
    checker_thread_end();
}


//extern "C" int user_main() {
//int user_main() {
int user_main() {
    checker_generateExecutor();
    checker_thread_begin("main");
    
    x = 0, y = 0;
    
    std::thread a(f1);
    std::thread b(f2);
    std::thread c(f3);

    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());
    checker_thread_create(c.get_id());
    
    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    checker_thread_join(c.get_id());
    
    a.join(), b.join();
    c.join();
    assert(!(data1==1 && data2 == 0 && data3 == 0 && data4 == 1)); //may be violated
    printf("data: %d, %d, %d, %d\n", data1, data2, data3, data4);
    std::cout << "data: " << data1 << " " << data2 << " " << data3 << " " << data4 << "\n";
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
