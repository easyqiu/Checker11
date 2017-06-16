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
    if (preActions.find(action2) == preActions.end())
        return ;

    std::set<std::pair<std::string, int> > preSet = preActions[action2];
    preActions[action1].insert(preSet.begin(), preSet.end());
}

bool Schedule::checkPreAction(std::pair<std::string, int> action) {
    pthread_mutex_lock(&preActionsLock);
    if (preActions.find(action) == preActions.end() ||
            preActions[action].size() == 0) {
        pthread_mutex_unlock(&preActionsLock);
        return true;
    } else {
        /*std::cout << "size: " << action.first << " " << action.second << " " << preActions[action].size() << "\n";
        for (std::set<std::pair<std::string, int> >::iterator it = preActions[action].begin();
                it != preActions[action].end(); ++it) {
            std::cout << "xxxxx: " << action.first << " " << action.second << " " << it->first << " " << it->second << "\n";
        }*/
        pthread_mutex_unlock(&preActionsLock);
        return false;
    }
}

void Schedule::eraseAction(std::pair<std::string, int> action) {
    pthread_mutex_lock(&preActionsLock);
    //std::cout << "In erase1: " <<  this << " " << preActions.size() << "\n";
    for (std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > >::iterator
            it = preActions.begin(); it != preActions.end(); ++it) {
        if (it->second.find(action) != it->second.end())
            it->second.erase(it->second.find(action));
    }
    //std::cout << "end erase\n";
    pthread_mutex_unlock(&preActionsLock);
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
    //std::cout << "size: " << readValueMap.size() << " " << preActions.size() << "\n";
}

bool Schedule::inPrefix(std::pair<std::string, int> action) {
    if (readValueMap.find(action) != readValueMap.end())
        return true;
    else
        return false;
}

void Schedule::print() {
    std::cout << "Schedule: " << this << "\n";
    for (std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > >::iterator
                 it = preActions.begin(); it != preActions.end(); ++it) {
        std::cout << "For: " << it->first.first << " " << it->first.second << "\n";
        for (std::set<std::pair<std::string, int> >::iterator it2 = it->second.begin();
                it2 != it->second.end(); it2++)
            std::cout << "    " << it2->first << " " << it2->second << "\n";
    }

    for (std::map<std::pair<std::string, int>, uint64_t>::iterator it = readValueMap.begin();
            it != readValueMap.end(); ++it) {
        std::cout << "Read Map: " << it->first.first << " " << it->first.second << " " << it->second << "\n";
    }
}


