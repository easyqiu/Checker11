#include "ModelChecker.h"
#include "checker.hpp"
#include <atomic>
#include <thread>

using namespace checker;

int main() {

    ModelChecker* modelChecker;

    std::thread a(user_main);
    //user_main();
    a.join();

    return 0;
}
