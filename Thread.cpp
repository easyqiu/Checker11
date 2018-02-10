//
// Created by aser on 6/4/17.
//
#include <iostream>
#include <fstream>
#include <sstream>
#include <cassert>
#include <string>

#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Schedule.h"
#include "Buffer.h"
#include "StackFrame.h"
#include "FairState.h"
#include "checker.hpp"
#include "Util.h"

using namespace checker;

Thread::Thread(Executor* exe, std::string tid, std::string n) {
    this->exe = exe;
    id = tid, name = n;
    fairState = new FairState();
    inConsistency = false;
    //trackedBID = 0;
    std::cout << "new thread: " << exe << " " << this << " " << tid << " " << n << "\n";
    std::cout << "stack size: " << stack.size() << "\n";
}

Thread::~Thread() {
    for (std::vector<Action*>::iterator it = actionList.begin();
            it != actionList.end(); ++it) {
        //std::cout << "delete action: " << *it << "\n";
        delete *it;
    }

#ifdef DEBUG
    std::cout << "buffers: " << this << " " << buffers.size() << "\n";
#endif
    for (std::map<std::string, Buffer*>::iterator it = buffers.begin();
            it != buffers.end(); ++it) {
#ifdef DEBUG
        std::cout << "delete Buffer: " << it->second << "\n";
#endif
        delete it->second;
#ifdef DEBUG
        std::cout << "suc!\n";
#endif
    }

    //std::cout << "delete fairState: " << fairState << "\n";
    delete fairState;
    //std::cout << "End delete thread: " << this << "\n";
}

void Thread::setContext() {
    context = name;
    for (std::vector<StackFrame*>::iterator it = stack.begin();
            it != stack.end(); ++it) {
        StackFrame* frame = *it;
        if (context == "")
            context = frame->getName();
        else
            context += "*" + frame->getName();
    }
}

std::string Thread::getContext() {
    return context;
}

void Thread::addAction(Action* action, uint64_t clapNum) {
    //std::cout << "Pre Add action: " << this << " " << action->get_action_str() << " " << id << " " << actionList.size() << "!!!\n";
    actionList.push_back(action);
    action->set_seq_number(actionList.size()-1);
    //std::cout << "Add action: " << this << " " << id << " " << actionList.size() << "@@@@@\n";

    action->setClapNum(clapNum);
    action->setTimes(stack.back()->incTimes(clapNum));
    action->setContext(context);

    /*Schedule* curSch = exe->getCurSch();
    curSch->eraseAction(std::make_pair(name, action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());*/
    //std::cout << "addAction: " << stack.size() << "\n";
}

std::vector<Action*>& Thread::getActionList() {
    return actionList;
}

std::string Thread::printTrace() {
    std::cout << "print trace: " << this << " " << name << " " << id << " " << actionList.size() << "\n";
    //for (std::vector<Action*>::iterator it = actionList.begin();
    //        it != actionList.end(); ++it) {
    std::map<int64_t, std::string> addressMap;

    std::stringstream ss, ss1;
    int index = 0;
    for (unsigned i=0; i<actionList.size(); i++) {
        Action* action = actionList[i];

        //std::ofstream outfile(name, std::ios::app);
        action_type_t type = action->get_type();
        //std::cout << "print: " << name << " " << type << " *" << i << "*\n";
        if (RWAction* read = dynamic_cast<RWAction*>(action)) {
            std::string val;
            if (read->get_value() > 10000000000000) {
                if (addressMap.find(read->get_value()) != addressMap.end())
                    val = addressMap[read->get_value()];
                else {
                    val = "A" + util::stringValueOf(index);
                    index++;
                    addressMap[read->get_value()] = val;
                }
                ss1 << "aaaaaaa: " << val << "\n";
                std::cout << "hhhhh: " << val << "\n";
            } else
                val = util::stringValueOf(read->get_value());

            if (RMWAction* rmw = dynamic_cast<RMWAction*>(read)) {
                val = util::stringValueOf(rmw->getReadValue());
                std::cout << rmw->getContextName() << " " << action->get_uniq_name() << " rmw "
                          << val << " " << rmw->get_location_str() << " " << rmw->getWriteValue() << " " << read->getReadFromContext() << " " << action->getClapNum() << "\n";
                ss << val;// << " ";
            } else {
                if (read->is_write())
                    std::cout << action->getContextName() << " " << action->get_uniq_name() << " w " << val << " " << read->get_location_str() << " " << read->getReadFromContext() << " " << action->getClapNum() << "\n";
                else {
                    std::cout << action->getContextName() << " " << action->get_uniq_name() << " r " << val << " " << read->get_location_str() << " " << read->getReadFromContext() << " " << action->getClapNum() << "\n";
                    ss << val;// << " ";
                }
            }
        }
        /*else if (type == ATOMIC_FENCE) {
            outfile << dynamic_cast<FenceAction *>(action)->get_action_str();
        } else
            outfile << action->get_action_str();
        outfile.flush();
        outfile.close();*/
    }
    std::cout << ss1.str() << " " << ss.str() << "\n";
    //std::cout << "end printTrace!\n";
    printReachabilityMap();
    return ss.str();
}

std::string Thread::getName() {return name;}

std::string toString(void* loc) {
    std::stringstream ss;
    ss << loc;
    return ss.str();
}

void Thread::clearBuffer(void* loc) {
    std::string addr = toString(loc);
    if (buffers.find(addr) != buffers.end())
        buffers[addr]->clear();
}

void Thread::updateBuffer(void* loc, int64_t val, std::string context, int order) {
#ifdef DEBUG
    std::cout << "update buf1: " << this << " " << loc << " " << context << " " << val << "\n";
#endif
    std::string addr = toString(loc);
    if (buffers.find(addr) == buffers.end()) {
        //std::cout << "uuuu1111!\n";
        Buffer* buffer = new Buffer(exe, this, addr);
        //std::cout << "new Buffer1: " << buffer << "\n";
        buffer->updateBuffer(val, context, order);
        buffers[addr] = buffer;
    } else {
        //std::cout << "uuuu2222!\n";
        buffers[addr]->updateBuffer(val, context, order);
    }

#ifdef DEBUG
    std::cout << "update buf1 end: " << this << "\n";
#endif
}

void Thread::updateBuffer(std::map<std::string, Buffer*> bufs) {
#ifdef DEBUG
    std::cout << "update buf2: " << this << " " << bufs.size() << "\n";
#endif
    for (std::map<std::string, Buffer*>::iterator it = bufs.begin();
            it != bufs.end(); ++it) {
        Buffer* buf = it->second;
        Buffer* newBuf = new Buffer(exe, this, it->first);
        //std::cout << "new Buffer2: " << newBuf << " " << buf << "\n";
        buffers[it->first] = newBuf;
        newBuf->updateBuffer(buf->getAllValues());
        //std::cout << "end new buffer2!\n";
    }
    //std::cout << "update buf2 end: " << this << "\n";
}

void Thread::fetchExpectVal(std::string context, void* loc, std::pair<int64_t, std::string> item) {
    std::string oldContext = context;
    context = context.substr(0, context.rfind("|"));
    std::string clapNum = "0";// context.substr(context.rfind("|")+1);
    //std::cout << "clapName: " << clapNum << "\n";

    std::string addr = toString(loc);
    if (buffers.find(addr) == buffers.end()) {
        Buffer* buffer = new Buffer(exe, this, addr);
        //std::cout << "new Buffer3: " << buffer << "\n";
        buffers[addr] = buffer;
        buffer->fetchExpectVal(item);
    } else
        buffers[addr]->fetchExpectVal(item);

    if (clapNum == "36" || clapNum == "95" || clapNum == "80") {
        // for generating fair states
        if (clapTimes.find(context) == clapTimes.end() ||
            clapTimes[context].first != item.first) {
            clapTimes[context] = std::make_pair(item.first, 1);
        } else if (clapTimes[context].second < 2) {
            clapTimes[context].second++;
        } else {
            assert(false);
        }
    }
    //std::cout << "In fetch: " << loc << " " << context << " " << clapTimes[context].first << " " << clapTimes[context].second << "\n";
}

std::pair<int64_t, std::string> Thread::getValue2(std::string context, std::string expectContext, void* loc) {
    std::cout << "context0: " << context << " " << loc << "\n";
    context = context.substr(0, context.rfind("|"));

    std::string addr = toString(loc);
    if (buffers.find(addr) == buffers.end()) {
        std::cout << "context: " << context << "\n";
        //assert(false && "Find an un-initialization error!");
        std::cerr << "Find an un-initialization error!\n";
    }

    std::pair<int64_t, std::string> retVal = buffers[addr]->getValue();
}

std::pair<int64_t, std::string> Thread::getValue(std::string context, void* loc) {
    std::cout << "context0: " << context << " " << loc << "\n";
    context = context.substr(0, context.rfind("|"));

    std::string addr = toString(loc);
    if (buffers.find(addr) == buffers.end()) {
        std::cout << "context: " << context << " " << addr << "\n";
        if (!inConsistency) {
            //assert(false && "Find an un-initialization error!");
            std::cerr << "Find an un-initialization error!\n";
        }
    }

    std::pair<int64_t, std::string> retVal = buffers[addr]->getValue();

    std::string clapNum = "0";// = context.substr(context.rfind("|")+1);
    //std::cout << "clapName: " << clapNum << "\n";
    if (clapNum != "36" && clapNum != "95" && clapNum != "80")
        return retVal;

    // for generating fair states
    if (clapTimes.find(context) == clapTimes.end() ||
            clapTimes[context].first != retVal.first) {
        clapTimes[context] = std::make_pair(retVal.first, 1);
#ifdef DEBUG
    std::cout << "get buffer1: " << loc << " " << context << " " << retVal.first << " " << retVal.second << "\n";
#endif
        return retVal;
    } else if (clapTimes[context].second  < 2) {
        clapTimes[context].second++;
#ifdef DEBUG
    std::cout << "get buffer2: " << loc << " " << context << " " << retVal.first << " " << retVal.second << "\n";
#endif
        return retVal;
    } else {
        std::pair<int64_t, std::string> newVal;
        do {
            usleep(100);
            std::stringstream ss;
            ss << std::this_thread::get_id();
            exe->updatePriority(ss.str());
            newVal = buffers[addr]->getValue();
        } while (retVal == newVal);
        clapTimes[context] = std::make_pair(newVal.first, 1);
#ifdef DEBUG
    std::cout << "get buffer3: " << loc << " " << context << " " << newVal.first << " " <<newVal.second << "\n";
#endif
        return newVal;
    }

    //return buffers[addr]->getValue();
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

std::set<uint64_t>& Thread::getBID() {
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
    //std::cout << "set Reachability map 111: " << this << " " << seqNum << " " << vec.size() << " " << reachabilityMap.size() << "\n";
    std::set<Action*> newVec;
    newVec.insert(vec.begin(), vec.end());
    reachabilityMap[seqNum] = newVec;
    //std::cout << "222\n";
}

void Thread::addReachabilityMap(int seqNum, std::set<Action*> vec) {
    //std::cout << "set Reachability map 111: " << this << " " << seqNum << " " << vec.size() << " " << reachabilityMap.size() << "\n";
    reachabilityMap[seqNum].insert(vec.begin(), vec.end());
    //std::cout << "222\n";
}


void Thread::handleFuncBegin(std::string name) {
    StackFrame* stackFrame = new StackFrame(this, name);
    stack.push_back(stackFrame);
    setContext();
}

void Thread::handleFuncEnd() {
    assert(stack.size() > 0);
    StackFrame* frame = *(stack.end()-1);
    stack.erase(stack.end()-1);

    if (frame != NULL)
        delete frame;
    setContext();
}

void Thread::printReachabilityMap() {
    std::cout << "iiiii: " << this << " " << reachabilityMap.size() << "\n";
    for (std::map<int, std::set<Action*> >::iterator it = reachabilityMap.begin();
         it != reachabilityMap.end(); ++it) {
        std::cout << "xx: " << it->first << " " << it->second.size() << "\n";
        for (std::set<Action*>::iterator it2 = it->second.begin();
             it2 != it->second.end(); ++it2)
            std::cout << "yy: " << (*it2)->get_uniq_name() << "\n";
    }
}

std::set<Action*> Thread::getReachabilityMap(int seqNum) {
    if (reachabilityMap.find(seqNum) != reachabilityMap.end())
        return reachabilityMap[seqNum];

    std::set<Action*> s;
    return s;
}
