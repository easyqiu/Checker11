#include <stdio.h>
#include <thread>
#include <atomic>

#include "ModelChecker.h"
#include "checker.hpp"

//#include "librace.h"

#define RW_LOCK_BIAS            0x00100000
#define WRITE_LOCK_CMP          RW_LOCK_BIAS

using namespace std;

/** Example implementation of linux rw lock along with 2 thread test
 *  driver... */

typedef union {
    std::atomic<int> lock;
} rwlock_t;

static inline int read_can_lock(rwlock_t *lock)
{
	return atomic_load_explicit(&lock->lock, memory_order_relaxed) > 0;
}

static inline int write_can_lock(rwlock_t *lock)
{
	return atomic_load_explicit(&lock->lock, memory_order_relaxed) == RW_LOCK_BIAS;
}

atomic<int> x;
int data1, data2;
void b() {
    checker_thread_begin("b");
    //data1 = x.load(memory_order_relaxed);
    //x.store(data1-1, memory_order_relaxed);
    data1 = atomic_fetch_sub_explicit(&x, 1, memory_order_acquire);
    checker_thread_end();
}

void c() {
    checker_thread_begin("c");
    //data2 = x.load(memory_order_relaxed);
    //x.store(data2-1, memory_order_relaxed);
    data2 = atomic_fetch_sub_explicit(&x, 1, memory_order_acquire);
    checker_thread_end();
}

static inline void read_lock(rwlock_t *rw)
{
	//int priorvalue = atomic_fetch_sub_explicit(&rw->lock, 1, memory_order_acquire);
	//while (priorvalue <= 0) {
    while (atomic_fetch_sub_explicit(&rw->lock, 1, memory_order_acquire) <= 0) {
		atomic_fetch_add_explicit(&rw->lock, 1, memory_order_relaxed);
		while (atomic_load_explicit(&rw->lock, memory_order_relaxed) <= 0) {
            this_thread::yield();
		}
		//priorvalue = atomic_fetch_sub_explicit(&rw->lock, 1, memory_order_acquire);
	}
}

static inline void write_lock(rwlock_t *rw)
{
	//int priorvalue = atomic_fetch_sub_explicit(&rw->lock, RW_LOCK_BIAS, memory_order_acquire);
	//while (priorvalue != RW_LOCK_BIAS) {
    while (atomic_fetch_sub_explicit(&rw->lock, RW_LOCK_BIAS, memory_order_acquire) != RW_LOCK_BIAS) {
		atomic_fetch_add_explicit(&rw->lock, RW_LOCK_BIAS, memory_order_relaxed);
		while (atomic_load_explicit(&rw->lock, memory_order_relaxed) != RW_LOCK_BIAS) {
            this_thread::yield();
		}
		//priorvalue = atomic_fetch_sub_explicit(&rw->lock, RW_LOCK_BIAS, memory_order_acquire);
	}
}

static inline int read_trylock(rwlock_t *rw)
{
	int priorvalue = atomic_fetch_sub_explicit(&rw->lock, 1, memory_order_acquire);
	if (priorvalue > 0)
		return 1;

	atomic_fetch_add_explicit(&rw->lock, 1, memory_order_relaxed);
	return 0;
}

static inline int write_trylock(rwlock_t *rw)
{
	int priorvalue = atomic_fetch_sub_explicit(&rw->lock, RW_LOCK_BIAS, memory_order_acquire);
	if (priorvalue == RW_LOCK_BIAS)
		return 1;

	atomic_fetch_add_explicit(&rw->lock, RW_LOCK_BIAS, memory_order_relaxed);
	return 0;
}

static inline void read_unlock(rwlock_t *rw)
{
	atomic_fetch_add_explicit(&rw->lock, 1, memory_order_release);
}

static inline void write_unlock(rwlock_t *rw)
{
	atomic_fetch_add_explicit(&rw->lock, RW_LOCK_BIAS, memory_order_release);
}

rwlock_t mylock;
int shareddata;

static void a()
{
    checker_thread_begin("a");
	
    int i;
	for(i = 0; i < 2; i++) {
		if ((i % 2) == 0) {
			read_lock(&mylock);
			//load_32(&shareddata);
			read_unlock(&mylock);
		} else {
			write_lock(&mylock);
			//store_32(&shareddata,(unsigned int)i);
			write_unlock(&mylock);
		}
	}
    
    checker_thread_end();
}

int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");

    mylock.lock = RW_LOCK_BIAS;
	//atomic_init(&mylock.lock, RW_LOCK_BIAS);
    x = 1;

    std::thread t1(a);
    std::thread t2(a);

    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());

    t1.join();
    t2.join();

    checker_thread_end();
    checker_solver();

    printf("data: %d, %d\n", data1, data2);
	return 0;
}

int main() {
    //signal(SIGSEGV, handler);
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();

    return 0;
}
