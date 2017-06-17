#include <stdio.h>
#include <thread>
#include <atomic>

std::atomic<int> a;
std::atomic<int> b;

using namespace std;

void r()
{
    int r3;
    while ((r3 = atomic_load_explicit(&a, memory_order_relaxed)) != 1) {
        printf("r3=%d\n",r3);
    }

    int r1=atomic_load_explicit(&a, memory_order_relaxed);
	int r2=atomic_load_explicit(&a, memory_order_relaxed);
	//if (r1==r2)
	//	atomic_store_explicit(&b, 2, memory_order_relaxed);
	printf("r1=%d\n",r1);
	printf("r2=%d\n",r2);
}

void s()
{
    atomic_store_explicit(&a, 1, memory_order_relaxed);
    atomic_store_explicit(&a, 2, memory_order_relaxed);
}

int main(int argc, char **argv)
{
    a = 0, b = 1;
	
    printf("Main thread: creating 2 threads\n");
    std::thread t1(r);
    std::thread t2(s);
    
    t1.join();
    t2.join();

	printf("Main thread is finished\n");
	
    return 0;
}
