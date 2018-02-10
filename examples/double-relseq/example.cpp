/*
 * This test performs some relaxed, release, acquire opeations on a single
 * atomic variable. It can give some rough idea of release sequence support but
 * probably should be improved to give better information.
 *
 * This test tries to establish two release sequences, where we should always
 * either establish both or establish neither. (Note that this is only true for
 * a few executions of interest, where both load-acquire's read from the same
 * write.)
 */
#include "ModelChecker.h"
#include "checker.hpp"

#include <stdio.h>
#include <thread>
#include <atomic>

using namespace checker;
using namespace std;

std::atomic<int> x;
int var = 0;

static void a()
{
    checker_thread_begin("a");
    var = 1;
	atomic_store_explicit(&x, 1, memory_order_release);
	atomic_store_explicit(&x, 42, memory_order_relaxed);
    checker_thread_end();
}

static void b()
{
    checker_thread_begin("b");
	int r = atomic_load_explicit(&x, memory_order_acquire);
	printf("r = %d\n", r);
	printf("load %d\n", var);
    checker_thread_end();
}

static void c()
{
    checker_thread_begin("c");
	atomic_store_explicit(&x, 2, memory_order_relaxed);
    checker_thread_end();
}

int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    x = 0;

	printf("Main thread: creating 4 threads\n");

    std::thread t1(a);
    std::thread t2(b);
    //std::thread t3(b);
    //std::thread t4(c);

    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());
    //checker_thread_create(t3.get_id());
    //checker_thread_create(t4.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());
    //checker_thread_join(t3.get_id());
    //checker_thread_join(t4.get_id());

    t1.join(); t2.join(); //t3.join(); t4.join();

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
