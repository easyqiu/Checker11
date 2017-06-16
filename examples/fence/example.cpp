#include <vector>
#include <iostream>
#include <thread>
#include <atomic>
#include <cassert>
#include <execinfo.h>

#include "ModelChecker.h"
#include "checker.hpp"
 
std::atomic<int> data1;
int i, data2;
std::atomic<int> x;
 
void f1()
{
    checker_thread_begin("f1");
    
    data1.store(27, std::memory_order_relaxed);
    data1.store(42, std::memory_order_relaxed);
    
    atomic_thread_fence(std::memory_order_release);
    x.store(100, std::memory_order_release);
    
    checker_thread_end();
}

void f2()
{
    checker_thread_begin("f2");
    //if (x.load(std::memory_order_relaxed)==1) {
      i = x.load(std::memory_order_acquire);
      atomic_thread_fence(std::memory_order_acquire);
      data2 = data1;
    /*} else {
      data2 = 42;
      std::cout << "yyyy: " << data2 << "\n";
    }*/
    checker_thread_end();
}
 
 
int user_main()
{
    //modelChecker = new ModelChecker();
    checker_generateExecutor();
    checker_thread_begin("main");

    x = 0, data1 = 0;

    std::thread b(f2);
    std::thread a(f1);
    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    a.join(), b.join();
    std::cout << "xxxx: " << i << " " << data2 << "\n";
    //assert(data2 != 42); // never be violated
    //assert(true);
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
   
    return 0;
}
