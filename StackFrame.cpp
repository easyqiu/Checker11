//
// Created by aser on 7/5/17.
//

#include <sstream>
#include <cstring>
#include <algorithm>

#include "checker.hpp"
#include "StackFrame.h"
#include "Thread.h"
#include "Action.h"
#include "Executor.h"

using namespace checker;

void StackFrame::addLoad(uint64_t clapNum, Action* action) {
    //loads.push_back(std::make_pair(clapNum, seqNum));
    clapToSeq[clapNum] = action;
    std::set<Action*> loads;
    loads.insert(action);

    /*for (std::set<uint64_t >::iterator it = trackedBID.begin();
            it != trackedBID.end(); ++it) {
        if (clapToLoads.find(*it) != clapToLoads.end())
            loads.insert(clapToLoads[*it].begin(), clapToLoads[*it].end());
    }*/
    clapToLoads[clapNum] = loads;

#ifdef DEBUG
    std::stringstream ss;
    ss << "\nadd load: " << clapNum << " " << action->get_uniq_name() << " " << loads.size() << "\n";
    std::cout << ss.str();
#endif
}

void StackFrame::updateLoads(uint64_t clapNum, std::vector<uint64_t> vec) {
    //std::cout << "update load: " << clapNum << " " << vec[0] << "\n";
    std::set<Action*> loads;
    for (std::set<uint64_t >::iterator it = trackedBID.begin();
            it != trackedBID.end(); ++it)
        if (std::find(vec.begin(), vec.end(), *it) == vec.end())
            vec.push_back(*it);

    for (std::vector<uint64_t>::iterator it = vec.begin();
         it != vec.end(); ++it) {
        if (clapToLoads.find(*it) != clapToLoads.end()) {
            loads.insert(clapToLoads[*it].begin(), clapToLoads[*it].end());
        }
    }

#ifdef DEBUG
    std::stringstream ss;
    ss << "\nupdate load: " << clapNum << " " << loads.size() << "\n";
    for (std::vector<uint64_t>::iterator it = vec.begin(); it != vec.end(); ++it)
        ss << *it << " ";
    ss << "\n";
    for (std::set<Action*>::iterator it = loads.begin(); it != loads.end(); ++it)
        ss << (*it)->get_uniq_name() << " ";
    ss << "\n";
    std::cout << ss.str();
#endif

    clapToLoads[clapNum] = loads;
}

void StackFrame::updateReachabilityMap(uint64_t clapNum, Action* action) {
    std::cout << "In stackframe update reachability map: " << clapNum << " " << this << "\n";
    std::set<Action*> loads = clapToLoads[clapNum];
    std::cout << "111: " << currentBID << "\n";
    std::cout << "111: " << trackedBID.size() << "\n";
    std::cout << "111: " << currentBID << " " << trackedBID.size() << "\n";
    std::cout << "111: " << currentBID << " " << clapNum << "\n";
    //int trackBid = trackBid;
    //std::cout << "xxx:  " << clapNum << "\n";
    //std::cout << trackedBID << "\n";
    std::stringstream ss;
    ss << "reach: " << currentBID << " " << clapNum << "\n";
    std::cout << "777\n";
    for (std::set<uint64_t >::iterator it = trackedBID.begin();
            it != trackedBID.end(); ++it) {
        std::cout << "555\n";
#ifdef DEBUG
        ss << "Tracked BID: " << *it << " " << clapToLoads[*it].size() << "\n";
#endif
        std::cout << "666\n";
        if (clapToLoads.find(*it) != clapToLoads.end())
            loads.insert(clapToLoads[*it].begin(), clapToLoads[*it].end());
    }

    std::cout << "222\n";

#ifdef DEBUG
    ss << "\nloads: " << loads.size() << " " << action->get_seq_number() << " " << currentBID << " " << clapNum << "\n";

    ss << "\nset load: " << " " << action->get_uniq_name() << " " << loads.size() << "\n";
    for (std::set<Action*>::iterator it = loads.begin(); it != loads.end(); ++it)
        ss << (*it)->get_uniq_name() << " ";
    ss << "\n";
#endif

    std::cout << "333\n";
    if (loads.size() != 0)
        thread->setReachabilityMap(action->get_seq_number(), loads);

    std::cout << "444\n";
    std::map<int, std::vector<Action*> > &list = thread->getExe()->getLoopDepActionMap();
    if (list.find(currentBID) != list.end()) {
        action->setLoopDepActions(list[currentBID]);
        std::set<Action*> sActions;
        sActions.insert(list[currentBID].begin(), list[currentBID].end());
        thread->addReachabilityMap(action->get_seq_number(), sActions);

#ifdef DEBUG
        ss << "Set loop dep action: " << currentBID << " " << list[currentBID].size() << " " << action->get_uniq_name() << "\n";
        for (std::vector<Action*>::iterator it = list[currentBID].begin();
                it != list[currentBID].end(); ++it) {
            ss << (*it)->get_uniq_name() << " ";
        }
        ss << "\n";
#endif
    }

    std::cout << "555\n";
#ifdef DEBUG
    std::cout << ss.str();
#endif

}

void StackFrame::handlePHI(uint64_t clapNum,
                                   std::vector<uint64_t> vec1, std::vector<uint64_t> vec2) {
    uint64_t num = 0;
    int i=0;
    for (std::vector<uint64_t>::iterator it = vec2.begin();
            it != vec2.end(); ++it) {
        if (*it == currentBID)
            num = vec1[i];
        i++;
    }

    std::vector<uint64_t> vec;
    vec.push_back(num);
    updateLoads(clapNum, vec);
}

uint64_t StackFrame::incTimes(uint64_t clapNum) {
    if (clapNumToTimes.find(clapNum) == clapNumToTimes.end())
        clapNumToTimes[clapNum] = 1;
    else
        clapNumToTimes[clapNum]++;

    return clapNumToTimes[clapNum];
}

uint64_t StackFrame::getTimes(uint64_t clapNum) {
    if (clapNumToTimes.find(clapNum) == clapNumToTimes.end())
        return 0;

    return clapNumToTimes[clapNum];
}
