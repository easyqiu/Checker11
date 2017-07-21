#include <stdio.h>
#include <thread>
#include <atomic>
#include <execinfo.h>

#include "ModelChecker.h"
#include "checker.hpp"

std::atomic<int> x;
std::atomic<int> y;
std::atomic<int> z;
//std::atomic<int> r3;
int data1, data2, data3;
using namespace std;

void r1()
{
    checker_thread_begin("r1");
    data1 = x.load(memory_order_relaxed);
    checker_thread_end();
}

void r2()
{
    checker_thread_begin("r2");
    data2 = y.load(memory_order_relaxed);
    checker_thread_end();
}

void r3()
{
    checker_thread_begin("r3");
    data3 = z.load(memory_order_relaxed);
    checker_thread_end();
}

void r4()
{
    checker_thread_begin("r4");
    x.store(1, memory_order_relaxed);
    checker_thread_end();
}

void r5()
{
    checker_thread_begin("r5");
    y.store(1, memory_order_relaxed);
    checker_thread_end();
}

void r6()
{
    checker_thread_begin("r6");
    z.store(1, memory_order_relaxed);
    checker_thread_end();
}

int user_main(int argc, char **argv)
{
    checker_generateExecutor();
    checker_thread_begin("main");
    
    x = y = z = 0;
	
    printf("Main thread: creating 2 threads\n");
    std::thread t1(r1);
    std::thread t2(r2);
    std::thread t3(r3);
    std::thread t4(r4);
    std::thread t5(r5);
    std::thread t6(r6);
    
    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());
    checker_thread_create(t3.get_id());
    checker_thread_create(t4.get_id());
    checker_thread_create(t5.get_id());
    checker_thread_create(t6.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());
    checker_thread_join(t3.get_id());
    checker_thread_join(t4.get_id());
    checker_thread_join(t5.get_id());
    checker_thread_join(t6.get_id());
    
    t1.join();
    t2.join();
    t3.join();
    t4.join();
    t5.join();
    t6.join();

	printf("Main thread is finished\n");
    printf("data: %d, %d, %d\n", data1, data2, data3);

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

int main(int argc, char **argv) {
    printf("Begin\n");
    signal(SIGSEGV, handler);
    modelChecker = new ModelChecker();
    user_main(argc, argv);
    
    while (modelChecker->getSchList().size()) 
        user_main(argc, argv);
   
    return 0;
}

// for CPPMem
/*int main() {
    atomic_int x = 0;
    atomic_int y = 1; 
    {{{ {
            int a = x.load(memory_order_relaxed);
            int b = x.load(memory_order_relaxed);
            if (a == b) 
                y.store(2, memory_order_relaxed);
        }
    |||  {
        int b = y.load(memory_order_relaxed);
        x.store(b, memory_order_relaxed);
    }
      }}};
    return 0; }*/

