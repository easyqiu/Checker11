#include <thread>
#include <atomic>
#include <cassert>
#include <string>
#include <sstream>
#include <iostream>
 
#include "ModelChecker.h"
#include "checker.hpp"

using namespace checker;

std::atomic<std::string*> ptr;
int data;

int64_t test() {
    return 140583176769504;
}

void producer()
{
    std::string* p  = new std::string("Hello");
    data = 42;
    ptr.store(p, std::memory_order_release);
}

void consumer()
{
    std::string* p2;
    while (!(p2 = ptr.load(std::memory_order_acquire)))
        ;
    std::stringstream ss;
    ss << "p2: " << p2 << " " << *p2 << "\n";
    std::cout << ss.str();
    int64_t m = checker_preAtomicLoad_double(0, 0, 0);
    printf("mm: %ld\n", m);

    printf("xxxxxxx: %p, %ld, %p\n", p2, p2, (std::string*)(((void*)p2)));
    assert(*p2 == "Hello"); // never fires
    printf("yyyyyyy!\n");
    assert(data == 42); // never fires
}

int main()
{
    std::string* p  = new std::string("H");
    ptr.store(p);
    
    std::stringstream ss;
    ss << "store p: " << p << " " << *p << "\n";

    std::thread a(producer);
    std::thread b(consumer);
    
    a.join(); b.join();
    return 0;
}
