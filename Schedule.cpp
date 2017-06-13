//
// Created by aser on 6/12/17.
//

#include "Schedule.h"

//using namespace std;
using namespace checker;

void Schedule::updateReadValueMap(std::pair<std::string, int> fs, uint64_t val) {
    readValueMap[fs] = val;
}

void Schedule::updatePreAction(std::pair<std::string, int> action1, std::pair<std::string, int> action2) {
    preActions[action1].insert(action2);
}

bool Schedule::checkPreRead(std::pair<std::string, int> action) {
    if (preActions.find(action) == preActions.end())
        return true;
    else
        return false;
}

void Schedule::eraseAction(std::pair<std::string, int> action) {
    for (std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > >::iterator
            it = preActions.begin(); it != preActions.end(); ++it) {
        it->second.erase(action);
    }
}

uint64_t Schedule::getRFValue(std::pair<std::string, int> action) {
    if (readValueMap.find(action) == readValueMap.end())
        return 0xff;
    else
        return readValueMap[action];
}

void Schedule::clearData() {
    readValueMap.clear();
    preActions.clear();
}

bool Schedule::inPrefix(std::pair<std::string, int> action) {
    if (readValueMap.find(action) != readValueMap.end())
        return true;
    else
        return false;
}