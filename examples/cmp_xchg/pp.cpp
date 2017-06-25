#include "checker.hpp"
#include "ModelChecker.h"

using namespace checker;

int main() {
    myPrint_1(preCmpXchg_32(0, 0, 0, 0, 0).flag);
    return 0;
}
