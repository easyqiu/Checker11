#include "ModelChecker.h"
#include "checker.hpp"

//#include "main.cpp"
#include <thread>
#include <atomic>
#include <cassert>
#include <execinfo.h>

using namespace checker;
//ModelChecker* modelChecker;

int data1, data2;
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
    checker_thread_end();
}

void f3() {
    checker_thread_begin("f3");
    data2 = y.load(std::memory_order_acquire);
    checker_thread_end();
}


int user_main() {
    checker_generateExecutor();
    checker_thread_begin("main");
    std::thread a(f1);
    std::thread b(f2);
    std::thread c(f3);

    x = 0, y = 0;
    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());
    checker_thread_create(c.get_id());
    
    a.join(), b.join();
    c.join();
    
    std::cout << "data: " << data1 << " " << data2 << "\n";
    checker_thread_end();
    checker_solver();
    return 0;
}

void handler(int sig) {
    void *array[10];
    size_t size;

    // get void*'s for all entries on the stack
    size = backtrace(array, 10);

    // print out all the frames to stderr
    fprintf(stderr, "Error: signal %d:\n", sig);
    backtrace_symbols_fd(array, size, STDERR_FILENO);
    exit(1);
}


int main() {
    signal(SIGSEGV, handler);
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();
    /*do {
        int num = modelChecker->getSchList().size();
        if (num == 0)
            break ;
        while (test--) {
            user_main();
        }
    }*/

    return 0;
}
