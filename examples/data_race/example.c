#include <thread>
#include <atomic>

int y, x = 2;

void f1() {
    x = 3;
}

void f2() {
    y = {x==3};
}

int main() {
    std::thread t1(f1);
    std::thread t2(f2);
    t1.join(); t2.join();
    return 0;
}

// for cppmem
// a data race (dr)
//int main() {
//  int x = 2;
//  int y;
//  {{{  x = 3; 
//  |||  y = (x==3);  
//  }}};
//  return 0; }

