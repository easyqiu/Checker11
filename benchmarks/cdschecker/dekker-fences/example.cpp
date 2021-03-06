/*
 * Dekker's critical section algorithm, implemented with fences.
 *
 * URL:
 *   http://www.justsoftwaresolutions.co.uk/threading/
 */
#include "ModelChecker.h"
#include "checker.hpp"

#include <atomic>
#include <thread>
#include <execinfo.h>

//#include "librace.h"

std::atomic<bool> flag0, flag1;
std::atomic<int> turn;

uint32_t var = 0;
int data1, data2;

void p0()
{
    checker_thread_begin("p0");
	
    flag0.store(true,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_seq_cst);
    //data1 = flag1.load(std::memory_order_relaxed);

	while (flag1.load(std::memory_order_relaxed))
	{
        //checker_loop();
        checker_loopDep(17);
		if (turn.load(std::memory_order_relaxed) != 0)
		{
			flag0.store(false,std::memory_order_relaxed);
			while (turn.load(std::memory_order_relaxed) != 0)
			{
                std::this_thread::yield();
                //if (data1 == 1000) return ;
			}
            
            checker_loopDep(37);
			flag0.store(true,std::memory_order_relaxed);
			std::atomic_thread_fence(std::memory_order_seq_cst);
		} else
			std::this_thread::yield();

        //if (data1 == 1000) return ;
    }
    
    checker_loopDep(62);
	std::atomic_thread_fence(std::memory_order_acquire);

	// critical section
	//store_32(&var, 1);
    var = 1;

	turn.store(1,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_release);
	flag0.store(false,std::memory_order_relaxed);
    
    checker_thread_end();
}

void p1()
{
    checker_thread_begin("p1");
	
    flag1.store(true,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_seq_cst);
    //data2 = flag0.load(std::memory_order_relaxed);
	
    while (flag0.load(std::memory_order_relaxed))
	{
        //checker_loop();
        checker_loopDep(79);
		if (turn.load(std::memory_order_relaxed) != 1)
		{
			flag1.store(false,std::memory_order_relaxed);
			while (turn.load(std::memory_order_relaxed) != 1)
			{
                std::this_thread::yield();
                //if (data1 == 1000) return ;
			}
    
            //checker_loop();
            checker_loopDep(99);
			flag1.store(true,std::memory_order_relaxed);
			std::atomic_thread_fence(std::memory_order_seq_cst);
		} else
            std::this_thread::yield();

        //if (data1 == 1000) return ;
	}
    
    //checker_loop();
    checker_loopDep(124);
	std::atomic_thread_fence(std::memory_order_acquire);

	// critical section
	//store_32(&var, 2);
    var = 2;

	turn.store(0,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_release);
	flag1.store(false,std::memory_order_relaxed);
    
    checker_thread_end();
}

int user_main()
{
    double bTime = clock();
    checker_generateExecutor();
    checker_thread_begin("main");

	flag0 = false;
	flag1 = false;
	turn = 0;

    std::thread a(p0);
    std::thread b(p1);

    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());

    a.join();
    b.join();

    printf("data: %d, %d\n", data1, data2);

    checker_thread_end();
    checker_solver();
    std::cerr << "TTTTime: " << clock() - bTime << "\n";
    //exit(1);

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

    delete modelChecker;
    return 0;
}
