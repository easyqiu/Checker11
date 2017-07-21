#include <stdio.h>
#include <thread>
#include <atomic>

#include "ModelChecker.h"
#include "checker.hpp"

std::atomic<int> a;
std::atomic<int> b;
std::atomic<int> c;
//std::atomic<int> r3;
using namespace std;

void r()
{
    checker_thread_begin("r");
    //checker_shared((void*)&r3);
	
    int r1=atomic_load_explicit(&a, memory_order_relaxed);
	int r2=atomic_load_explicit(&a, memory_order_relaxed);
    int r3 = 0;
	//int r3=atomic_load_explicit(&c, memory_order_relaxed);
    //r1++, r2++;
	if (r1==r2) {
        //r3=atomic_load_explicit(&c, memory_order_relaxed);
		//atomic_store_explicit(&b, 2, memory_order_relaxed);
        b.fetch_add(1, std::memory_order_relaxed);
        /*if (r1==1) {
            atomic_store_explicit(&b, 2, memory_order_relaxed);
            r2=atomic_load_explicit(&b, memory_order_relaxed);
            r3 = 5;
        }*/
    }
	printf("r1=%d\n",r1);
	printf("r2=%d\n",r2);
	//printf("r3=%d\n",r3);
    
    checker_thread_end();
}

void s()
{
    checker_thread_begin("s");
    //checker_shared((void*)&r3);

    int r4=atomic_load_explicit(&b, memory_order_relaxed);
	atomic_store_explicit(&a, r4, memory_order_relaxed);
	//atomic_store_explicit(&c, 1, memory_order_relaxed);
	printf("r4=%d\n",r4);
    
    //atomic_store_explicit(&a, 1, memory_order_relaxed);
    
    checker_thread_end();
}

void test(int yy[10]){
    yy[2] = 1000000;
}

int user_main(int argc, char **argv)
{
    checker_generateExecutor();
    //std::vector<int> xx;
    /*int* xx;
    xx[0] = 200000;
    test(xx);*/
    checker_thread_begin("main");
    //checker_shared((void*)&r3);

    //a = xx[0];
    a = 0, b = 1, c = 0;
	
    printf("Main thread: creating 2 threads\n");
    std::thread t1(r);
    std::thread t2(s);
    
    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());
    
    t1.join();
    t2.join();

	printf("Main thread is finished\n");

    checker_thread_end();
    checker_solver();
	
    return 0;
}

int main(int argc, char **argv) {
    printf("Begin\n");
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

