#include "ModelChecker.h"
#include "checker.hpp"

#include <thread>
#include <atomic>
#include <cassert>
#include <string>
#include <sstream>
#include <iostream>
 
using namespace checker;

std::atomic<std::string*> ptr;
int data;

void producer()
{
    checker_thread_begin("producer");
    std::string* p  = new std::string("Hello");
    data = 42;
    ptr.store(p, std::memory_order_release);
    checker_thread_end();
}
 
void consumer()
{
    std::string* p2;
    checker_thread_begin("consumer");
    while (!(p2 = ptr.load(std::memory_order_acquire)))
        std::this_thread::yield();
    assert(data == 42); // never fires
    checker_thread_end();
}

int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");
   
    ptr = 0;
    
    std::thread a(producer);
    std::thread b(consumer);
    
    checker_thread_create(a.get_id());
    checker_thread_create(b.get_id());

    checker_thread_join(a.get_id());
    checker_thread_join(b.get_id());
    
    a.join(); b.join();
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
