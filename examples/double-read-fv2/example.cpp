/*
 * Try to read the same value as a future value twice.
 *
 * This test should be able to see r1 = r2 = 42. Currently, we never see that
 * (as of 2/21/13) because the r2 load won't have a potential future value of
 * 42 at the same time as r1, due to our scheduling (the loads for r1 and r2
 * must occur before the write of x = 42).
 *
 * Note that the atomic_int y is simply used to aid in forcing a particularly
 * interesting scheduling. It is superfluous.
 */
#include "ModelChecker.h"
#include "checker.hpp"

#include <stdio.h>
#include <thread>
#include <atomic>

using namespace checker;
using namespace std;

std::atomic<int> x, y;

static void a()
{
    checker_thread_begin("a");
	int r1 = atomic_load_explicit(&x, memory_order_relaxed);
	int r2 = atomic_load_explicit(&x, memory_order_relaxed);
	printf("r1 = %d, r2 = %d\n", r1, r2);
    checker_thread_end();
}

static void b()
{
    checker_thread_begin("b");
	atomic_store_explicit(&x, 43, memory_order_relaxed);
	atomic_store_explicit(&x, 42, memory_order_relaxed);
    checker_thread_end();
}

int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    x = 0;
    y = 0;

	printf("Main thread: creating 2 threads\n");
    
    std::thread t1(a);
    std::thread t2(b);

    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());

    t1.join(); t2.join();

	printf("Main thread is finished\n");

    checker_thread_end();
    checker_solver();

	return 0;
}

int main() {
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();

    delete modelChecker;

    return 0;
}
