//
// Created by aser on 7/5/17.
//

#include <sstream>
#include "StackFrame.h"
#include "Thread.h"
#include "Action.h"

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
    std::stringstream ss;
    ss << "\nadd load: " << clapNum << " " << action->get_uniq_name() << " " << loads.size() << "\n";
    std::cout << ss.str();
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
    std::stringstream ss;
    ss << "\nupdate load: " << clapNum << " " << loads.size() << "\n";
    for (std::vector<uint64_t>::iterator it = vec.begin(); it != vec.end(); ++it)
        ss << *it << " ";
    ss << "\n";
    for (std::set<Action*>::iterator it = loads.begin(); it != loads.end(); ++it)
        ss << (*it)->get_uniq_name() << " ";
    ss << "\n";
    std::cout << ss.str();

    clapToLoads[clapNum] = loads;
}

void StackFrame::updateReachabilityMap(uint64_t clapNum, Action* action) {
    std::set<Action*> loads = clapToLoads[clapNum];
    //int trackBid = trackBid;
    //std::cout << "xxx:  " << clapNum << "\n";
    //std::cout << trackedBID << "\n";
    for (std::set<uint64_t >::iterator it = trackedBID.begin();
            it != trackedBID.end(); ++it) {
        if (clapToLoads.find(*it) != clapToLoads.end())
            loads.insert(clapToLoads[*it].begin(), clapToLoads[*it].end());
    }

    std::cout << "loads: " << loads.size() << " " << action->get_seq_number() << "\n";
    /*std::stringstream ss;
    ss << "\nset load: " << " " << action->get_uniq_name() << " " << loads.size() << "\n";
    for (std::set<Action*>::iterator it = loads.begin(); it != loads.end(); ++it)
        ss << (*it)->get_uniq_name() << " ";
    ss << "\n";
    std::cout << ss.str();*/

    if (loads.size() != 0)
        thread->setReachabilityMap(action->get_seq_number(), loads);
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
