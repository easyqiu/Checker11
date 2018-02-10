//
// Created by aser on 6/18/17.
//

#include <iostream>
#include <sstream>

#include "checker.hpp"
#include "Buffer.h"
#include "Action.h"
#include "Executor.h"
#include "Schedule.h"
#include "Thread.h"

using namespace checker;

void Buffer::fetchExpectVal(std::pair<int64_t, std::string> item) {
    std::vector<std::pair<int64_t, std::string> >::iterator it;
    std::vector<std::pair<int64_t, std::string> > newValues;

    int64_t val = item.first;
    std::string context = item.second;
    std::string curThread = thread->getName();
    std::cout << "TTTT: \n";
    std::cout << curThread << "\n";

    if (curThread == values.back().second.substr(0, values.back().second.find("*"))
            && val != values.back().first) {
        std::cout << "Executing an inconsistent schedule!\n";
        thread->setInConsistency(true);
    }

#ifdef DEBUG
    std::stringstream ss;
    ss << "before fetch: " << addr << " " << val << " " << context << "\n";
            //<< context.substr(context.find("*")) <<
            //" " << values.back().second.substr(values.back().second.find("*")) << "\n";
    for (it = values.begin(); it != values.end(); ++it) {
        ss << it->first << " " << it->second << " ";
    }
    ss << "\n";
#endif

    bool flag = false;
    for (it = values.begin(); it != values.end(); ++it) {
        if (val == it->first && context == it->second)
            flag = true;

        if (flag)
            newValues.push_back(*it);
    }

    if (flag) {
        //values.clear();
        //values.insert(values.begin(), newValues.begin(), newValues.end());
    } else
        values.push_back(std::make_pair(val, context));

#ifdef DEBUG
    ss << "after fetch: " << addr << "\n";
    for (it = values.begin(); it != values.end(); ++it) {
        ss << it->first << " " << it->second << "\n";
    }
    std::cout << ss.str() << "\n";
#endif

    /*else {
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

std::pair<int64_t, std::string> Buffer::getValue() {
    assert(values.size() != 0);

#ifdef DEBUG
    std::stringstream ss;
    ss << "get value: " << this << " " << addr << " " << values.back().first << " " << values.back().second << "\n";
    std::cout << ss.str();

    std::cout << "current values for: " << addr << "\n";
    for (std::vector<std::pair<int64_t, std::string> >::iterator it = values.begin();
            it != values.end(); ++it)
        std::cout << it->first << " " << it->second << " ";
    std::cout << "\n";
#endif

    return values.back();
}

void Buffer::updateBuffer(int64_t val, std::string context, int order) {
    memory_order mo = Action::to_mo(order);
    if (verify) {
        //assert(val == verifyVal);
        verify = false;
    }

    values.push_back(std::make_pair(val, context));

    for (std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator
            it = exe->getCurSch()->getReadValueMap().begin(); it != exe->getCurSch()->getReadValueMap().end(); ++it) {
        if (it->second.second.second == context) {
            std::cout << "update addr: " << addr << " from " << it->second.second.first << " " << val << "\n";
            it->second.second.first = val;
        }
    }

    /*std::stringstream ss;
    ss << "update buffer: " << this << " " << addr << " " << val << "\n";
    std::cout << ss.str();*/
}

void Buffer::updateBuffer(std::vector<std::pair<int64_t, std::string> > vals) {
    values.clear();
    //assert(values.size() == 0);
    //values.insert(values.begin(), vals.begin(), vals.end());
    for (std::vector<std::pair<int64_t, std::string> >::iterator it = vals.begin();
            it != vals.end(); ++it)
        values.push_back(*it);
}
