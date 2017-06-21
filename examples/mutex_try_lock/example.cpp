#include "ModelChecker.h"
#include "checker.hpp"

#include <chrono>
#include <mutex>
#include <thread>
#include <iostream> // std::cout
 
using namespace checker;

std::chrono::milliseconds interval(100);
 
std::mutex mutex;
int job_shared = 0; // both threads can modify 'job_shared',
    // mutex will protect this variable
 
int job_exclusive = 0; // only one thread can modify 'job_exclusive'
    // no protection needed
 
// this thread can modify both 'job_shared' and 'job_exclusive'
void job_1() 
{
    checker_thread_begin("job_1");
    
    std::this_thread::sleep_for(interval); // let 'job_2' take a lock
 
    while (true) {
        // try to lock mutex to modify 'job_shared'
        if (mutex.try_lock()) {
            std::cout << "job shared (" << job_shared << ")\n";
            mutex.unlock();
            break ;
        } else {
            // can't get lock to modify 'job_shared'
            // but there is some other work to do
            ++job_exclusive;
            std::cout << "job exclusive (" << job_exclusive << ")\n";
            std::this_thread::sleep_for(interval);
        }
    }
    checker_thread_end();
}
 
// this thread can modify only 'job_shared'
void job_2() 
{
    checker_thread_begin("job_2");
    mutex.lock();
    std::this_thread::sleep_for(5 * interval);
    ++job_shared;
    mutex.unlock();
    checker_thread_end();
}
 
int user_main() 
{
    checker_generateExecutor();
    checker_thread_begin("main");
    
    std::thread a(job_1);
    std::thread b(job_2);

    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());

    a.join();
    b.join();
    checker_thread_end();
    checker_solver();

    return 0;
}

int main() {
    modelChecker = new ModelChecker();
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();

    return 0;
}
