//
// Created by aser on 6/18/17.
//

#include <iostream>
#include <sstream>

#include "Buffer.h"
#include "Action.h"

using namespace checker;

void Buffer::fetchExpectVal(int64_t val) {
    std::vector<int64_t>::iterator it;
    std::vector<int64_t> newValues;
    bool flag = false;
    for (it = values.begin(); it != values.end(); ++it) {
        if (val == *it)
            flag = true;

        if (flag)
            newValues.push_back(*it);
    }

    if (flag) {
        values.clear();
        values.insert(values.begin(), newValues.begin(), newValues.end());
        std::cout << "hhhhh1\n";
    } /*else {
        values.push_back(val);
        std::cout << "hhhhh2\n";
    }*/

    /*if (it != values.end()) {
        values.erase(values.begin(), it);
        //std::cout << "catch the expected val!\n";
    } else {
        // it expects an future value
        values.clear();
        values.push_back(val);
        //std::cout << "Fetch the future value: " << val << "\n";
        verifyVal = val;
        verify = true;
    }*/
}

int64_t Buffer::getValue() {
    assert(values.size() != 0);

    std::stringstream ss;
    ss << "get value: " << this << " " << addr << " " << values.back() << "\n";
    std::cout << ss.str();
    return values.back();
}

void Buffer::updateBuffer(int64_t val, int order) {
    memory_order mo = Action::to_mo(order);
    if (verify) {
        //assert(val == verifyVal);
        verify = false;
    }

    /*if (mo == memory_order_seq_cst)
        values.clear();
    else if (mo == memory_order_release) {

    } else if (mo == memory_order_acq_rel) {

    } else if (mo == memory_order_acquire) {

    }*/

    values.push_back(val);
    std::stringstream ss;
    ss << "update buffer: " << this << " " << addr << " " << val << "\n";
    std::cout << ss.str();
}

void Buffer::updateBuffer(std::vector<int64_t> vals) {
    assert(values.size() == 0);
    values.insert(values.begin(), vals.begin(), vals.end());
}
