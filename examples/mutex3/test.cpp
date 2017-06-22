#include <iostream>
#include <chrono>
#include <thread>
#include <mutex>

std::atomic<int> x;

int main() {

    double xx;
    x = 0;
    printf("r1 = %d\n", x+2);
    printf("r1 = %d\n", x.fetch_add(xx));
    printf("r1 = %d\n", x.load(std::memory_order_seq_cst));
    return 0;
}
