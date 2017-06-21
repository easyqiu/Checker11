#include "ModelChecker.h"
#include "checker.hpp"

#include <iostream>
#include <chrono>
#include <thread>
#include <mutex>

using namespace checker;

//int g_num;  // protected by g_num_mutex
std::atomic<int> g_num;

std::mutex g_num_mutex;
 
void slow_increment(int id) 
{
    checker_thread_begin("slow");
    //checker_shared((void*)&g_num);

    for (int i = 0; i < 3; ++i) {
        g_num_mutex.lock();
        ++g_num;
        g_num.fetch_add(2);
        std::cout << id << " => " << g_num << '\n';
        g_num_mutex.unlock();
 
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    checker_thread_end();
}
 
int user_main()
{
    checker_generateExecutor();
    checker_thread_begin("main");
    //checker_shared((void*)&g_num);

    g_num = 0;

    std::thread t1(slow_increment, 0);
    std::thread t2(slow_increment, 1);

    checker_thread_create(t1.get_id());
    checker_thread_create(t2.get_id());

    checker_thread_join(t1.get_id());
    checker_thread_join(t2.get_id());

    t1.join();
    t2.join();

    checker_thread_end();
    checker_solver();
    return 0;
}

int main() {
    printf("xxxxx!\n");
    modelChecker = new ModelChecker();
    printf("xxxxx1111!\n");
    user_main();
    
    while (modelChecker->getSchList().size()) 
        user_main();

    return 0;
}
