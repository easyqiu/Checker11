/*
 * Dekker's critical section algorithm, implemented with fences.
 *
 * URL:
 *   http://www.justsoftwaresolutions.co.uk/threading/
 */
#include <atomic>
#include <thread>
#include <execinfo.h>
#include <iostream>

//#include "librace.h"

std::atomic<bool> flag0, flag1;
std::atomic<int> turn;

uint32_t var = 0;
int data1, data2;

void p0()
{
	
    flag0.store(true,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_seq_cst);
    //data1 = flag1.load(std::memory_order_relaxed);

	while (flag1.load(std::memory_order_relaxed))
	{
		if (turn.load(std::memory_order_relaxed) != 0)
		{
			flag0.store(false,std::memory_order_relaxed);
			while (turn.load(std::memory_order_relaxed) != 0)
			{
                std::this_thread::yield();
			}
            
			flag0.store(true,std::memory_order_relaxed);
			std::atomic_thread_fence(std::memory_order_seq_cst);
		} else
			std::this_thread::yield();

	}
    
	std::atomic_thread_fence(std::memory_order_acquire);

	// critical section
	//store_32(&var, 1);
    var = 1;

	turn.store(1,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_release);
	flag0.store(false,std::memory_order_relaxed);
    
}

void p1()
{
	
    flag1.store(true,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_seq_cst);
    //data2 = flag0.load(std::memory_order_relaxed);
	
    while (flag0.load(std::memory_order_relaxed))
	{
		if (turn.load(std::memory_order_relaxed) != 1)
		{
			flag1.store(false,std::memory_order_relaxed);
			while (turn.load(std::memory_order_relaxed) != 1)
			{
                std::this_thread::yield();
			}
    
			flag1.store(true,std::memory_order_relaxed);
			std::atomic_thread_fence(std::memory_order_seq_cst);
		} else
            std::this_thread::yield();
	}
    
	std::atomic_thread_fence(std::memory_order_acquire);

	// critical section
	//store_32(&var, 2);
    var = 2;

	turn.store(0,std::memory_order_relaxed);
	std::atomic_thread_fence(std::memory_order_release);
	flag1.store(false,std::memory_order_relaxed);
    
}

int main()
{

    double bTime = clock();

	flag0 = false;
	flag1 = false;
	turn = 0;

    std::thread a(p0);
    std::thread b(p1);


    a.join();
    b.join();

    printf("data: %d, %d\n", data1, data2);
    std::cerr << "TTTTime: " << clock() - bTime << "\n";

	return 0;
}
