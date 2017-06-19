//
// Created by aser on 6/18/17.
//

#include "Buffer.h"

using namespace checker;

void Buffer::fetchExpectVal(uint64_t val) {
    std::vector<uint64_t>::iterator it;
    for (it = values.begin(); it != values.end(); ++it) {
        if (val == *it)
            break;
    }

    if (it != values.end())
        values.erase(values.begin(), it);
    else {
        // it expects an future value
        values.push_back(val);
    }

}

uint64_t Buffer::getValue() {
    assert(values.size() != 0);
    return values[0];
}
