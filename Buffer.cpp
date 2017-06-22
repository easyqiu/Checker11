//
// Created by aser on 6/18/17.
//

#include <iostream>
#include "Buffer.h"

using namespace checker;

void Buffer::fetchExpectVal(uint64_t val) {
    std::vector<uint64_t>::iterator it;
    for (it = values.begin(); it != values.end(); ++it) {
        if (val == *it)
            break;
    }

    if (it != values.end()) {
        values.erase(values.begin(), it);
        std::cout << "catch the expected val!\n";
    } else {
        // it expects an future value
        values.clear();
        values.push_back(val);
        std::cout << "Fetch the future value: " << val << "\n";
        verifyVal = val;
        verify = true;
    }

}

uint64_t Buffer::getValue() {
    assert(values.size() != 0);
    return values[0];
}

void Buffer::updateBuffer(uint64_t val) {
    if (verify) {
        //assert(val == verifyVal);
        verify = false;
    }

    values.push_back(val);
}

void Buffer::updateBuffer(std::vector<uint64_t> vals) {
    assert(values.size() == 0);
    values.insert(values.begin(), vals.begin(), vals.end());
}
