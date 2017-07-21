//
// Created by aser on 6/4/17.
//
#include <iostream>
#include <fstream>
#include <sstream>
#include <cassert>

#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Schedule.h"
#include "Buffer.h"
#include "StackFrame.h"
#include "FairState.h"

using namespace checker;

Thread::Thread(Executor* exe, std::string tid, std::string n) {
    this->exe = exe;
    id = tid, name = n;
    fairState = new FairState();
    //trackedBID = 0;
    //std::cout << "new thread: " << exe << " " << this << " " << tid << " " << n << "\n";
}

void Thread::addAction(Action* action) {
    //std::cout << "Pre Add action: " << this << " " << action->get_action_str() << " " << id << " " << actionList.size() << "!!!\n";
    actionList.push_back(action);
    action->set_seq_number(actionList.size()-1);
    //std::cout << "Add action: " << this << " " << id << " " << actionList.size() << "@@@@@\n";
    Schedule* curSch = exe->getCurSch();
    curSch->eraseAction(std::make_pair(name, action->get_seq_number()));
}

std::vector<Action*> Thread::getActionList() {
    return actionList;
}

void Thread::printTrace() {
    //std::cout << "print trace: " << this << " " << name << " " << id << " " << actionList.size() << "\n";
    //for (std::vector<Action*>::iterator it = actionList.begin();
    //        it != actionList.end(); ++it) {
    for (unsigned i=0; i<actionList.size(); i++) {
        Action* action = actionList[i];

        std::ofstream outfile(name, std::ios::app);
        action_type_t type = action->get_type();
        //std::cout << "print: " << name << " " << type << " *" << i << "*\n";
        if (RWAction* read = dynamic_cast<RWAction*>(action)) {
            int64_t val = read->get_value();
            if (RMWAction* rmw = dynamic_cast<RMWAction*>(read))
                val = rmw->getReadValue();
            std::cout << action->get_uniq_name() << " " << val << "\n";
        }
        /*else if (type == ATOMIC_FENCE) {
            outfile << dynamic_cast<FenceAction *>(action)->get_action_str();
        } else
            outfile << action->get_action_str();
        outfile.flush();
        outfile.close();*/
    }
    //std::cout << "end printTrace!\n";
}

std::string Thread::getName() {return name;}


void Thread::clearBuffer(void* loc) {
    if (buffers.find(loc) != buffers.end())
        buffers[loc]->clear();
}

void Thread::updateBuffer(void* loc, int64_t val, int order) {
    //std::cout << "update buffer: " << loc << " " << val << "\n";
    if (buffers.find(loc) == buffers.end()) {
        Buffer* buffer = new Buffer(loc);
        buffer->updateBuffer(val, order);
        buffers[loc] = buffer;
    } else {
        buffers[loc]->updateBuffer(val, order);
    }
}

void Thread::updateBuffer(std::map<void*, Buffer*> bufs) {
    for (std::map<void*, Buffer*>::iterator it = bufs.begin();
            it != bufs.end(); ++it) {
        Buffer* buf = it->second;
        Buffer* newBuf = new Buffer(it->first);
        buffers[it->first] = newBuf;
        newBuf->updateBuffer(buf->getAllValues());
    }
}

void Thread::fetchExpectVal(void* loc, int64_t val) {
    if (buffers.find(loc) == buffers.end()) {
        Buffer* buffer = new Buffer(loc);
        buffers[loc] = buffer;
        buffer->fetchExpectVal(val);
    } else
        buffers[loc]->fetchExpectVal(val);
}

int64_t Thread::getValue(void* loc) {
    if (buffers.find(loc) == buffers.end()) {
        assert(false && "Find an un-initialization error!");
    }

    //std::cout << "get buffer: " << loc << " " << buffers[loc]->getValue() << "\n";
    return buffers[loc]->getValue();
}

void Thread::addNewLoad(uint64_t clapNum, Action* action) {
    //clapNumToSeqNum.push_back(std::make_pair(clapNum, seqNum));
    //loadsWithClapNum.insert(clapNum);
    if (stack.size() > 0)
        stack.back()->addLoad(clapNum, action);
}

void Thread::addClapList(uint64_t clapNum, std::vector<uint64_t > vec) {
    //std::cout << "size: " << stack.size() << "\n";
    if (stack.size() > 0)
        stack.back()->updateLoads(clapNum, vec);
}

void Thread::updateReachabilityMap(uint64_t clapNum, Action* action) {
    //std::cout << "update reachability: " << action->get_uniq_name() << " " << stack.size() << " " << clapNum << "\n";
    if (stack.size() > 0)
        stack.back()->updateReachabilityMap(clapNum, action);
    //std::cout << "end update!\n";
}

void Thread::handlePHI(uint64_t clapNum, std::vector<uint64_t> vec1, std::vector<uint64_t> vec2) {
    if (stack.size() > 0)
        stack.back()->handlePHI(clapNum, vec1, vec2);
}

void Thread::setTrackedBID(uint64_t bid) {
    if (stack.size() > 0)
        stack.back()->setTrackedBID(bid);
}

void Thread::clearBID() {
    if (stack.size() > 0)
        stack.back()->clearTrackedBID();
}

std::set<uint64_t> Thread::getBID() {
    if (stack.size() > 0)
       return stack.back()->getBID();

    std::set<uint64_t > ss;
    return ss;
}

void Thread::setCurrentBid(uint64_t bid) {
    if (stack.size() > 0)
        stack.back()->setCurrentBid(bid);
}

uint64_t Thread::getCurrentBid() {
    return getCurrentBid();
}

void Thread::setReachabilityMap(int seqNum, std::set<Action*> vec) {
    std::cout << "set Reachability map 111: " << this << " " << seqNum << " " << vec.size() << " " << reachabilityMap.size() << "\n";
    std::set<Action*> newVec;
    newVec.insert(vec.begin(), vec.end());
    reachabilityMap[seqNum] = newVec;
    //std::cout << "222\n";
}

void Thread::handleFuncBegin(std::string name) {
    StackFrame* stackFrame = new StackFrame(this, name);
    stack.push_back(stackFrame);
}

void Thread::handleFuncEnd() {
    assert(stack.size() > 0);
    stack.erase(stack.end()-1);
}

std::map<int, std::set<Action*> > &Thread::getReachabilityMap() {
    std::cout << "iiiii: " << this << "\n";
    std::cout << "1112: " << reachabilityMap.size() << "\n";
    for (std::map<int, std::set<Action*> >::iterator it = reachabilityMap.begin();
         it != reachabilityMap.end(); ++it) {
        std::cout << "xx: \n";
        std::cout << it->first << " " << it->second.size() << "\n";
        for (std::set<Action*>::iterator it2 = it->second.begin();
             it2 != it->second.end(); ++it2)
            std::cout << "yy: " << (*it2)->get_uniq_name() << "\n";
    }
    std::cout << "eeeeend!\n";
    //std::cout << "xxxssss: " << reachabilityMap.size() << "!!!\n";
    return reachabilityMap;
}

std::set<Action*> Thread::getReachabilityMap(int seqNum) {
    std::cout << "in getmap2\n";
    if (reachabilityMap.find(seqNum) != reachabilityMap.end())
        return reachabilityMap[seqNum];

    std::set<Action*> s;
    return s;
}
