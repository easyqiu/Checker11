/**
 * @file addr-satcycle.cc
 * @brief Address-based satisfaction cycle test
 *
 * This program has a peculiar behavior which is technically legal under the
 * current C++ memory model but which is a result of a type of satisfaction
 * cycle. We use this as justification for part of our modifications to the
 * memory model when proving our model-checker's correctness.
 */
#include "ModelChecker.h"
#include "checker.hpp"

#include <atomic>
#include <iostream>
#include <thread>
#include <stdio.h>
#include <cassert>

using namespace checker;
using namespace std;

std::atomic<int> x[2], idx, y;

int r1, r2, r3; /* "local" variables */

void a()
{
    checker_thread_begin("a");
	r1 = idx.load(memory_order_relaxed);
	x[r1].store(0, memory_order_relaxed);

	/* Key point: can we guarantee that &x[0] == &x[r1]? */
	r2 = x[0].load(memory_order_relaxed);
	y.store(r2);
}

void b()
{
    checker_thread_begin("b");
	r3 = y.load(memory_order_relaxed);
	idx.store(r3, memory_order_relaxed);
}

int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

	//thrd_t t1, t2;

    x[0] = 1;
    idx = 0;
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

	printf("r1 = %d\n", r1);
	printf("r2 = %d\n", r2);
	printf("r3 = %d\n", r3);

	/*
	 * This condition should not be hit because it only occurs under a
	 * satisfaction cycle
	 */
	bool cycle = (r1 == 1 && r2 == 1 && r3 == 1);
	assert(!cycle);

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
