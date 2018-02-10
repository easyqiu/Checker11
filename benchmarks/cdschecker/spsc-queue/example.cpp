#include "ModelChecker.h"
#include "checker.hpp"

#include <thread>

#include "queue.h"

spsc_queue<int> *q;

void thread(unsigned thread_index)
{
    checker_thread_begin("thread");
    if (0 == thread_index)
    {
        q->enqueue(11);
    }
    else
    {
        int d = q->dequeue();
        RL_ASSERT(11 == d);
    }
    checker_thread_end();
}

int user_main(int argc, char **argv)
{
    checker_generateExecutor();
    checker_thread_begin("main");

    q = new spsc_queue<int>();

    std::thread A(thread, 0);
    std::thread B(thread, 1);
   
    checker_thread_create(A.get_id());
    checker_thread_create(B.get_id());
    checker_thread_join(A.get_id());
    checker_thread_join(B.get_id());

    thrd_join(A);
    thrd_join(B);

    delete q;

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

