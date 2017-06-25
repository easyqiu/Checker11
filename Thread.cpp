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

using namespace checker;

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
        if (type == ATOMIC_WRITE || type == ATOMIC_READ)
            outfile << dynamic_cast<RWAction*>(action)->get_action_str();
        else if (type == ATOMIC_FENCE) {
            outfile << dynamic_cast<FenceAction *>(action)->get_action_str();
        } else
            outfile << action->get_action_str();
        outfile.flush();
        outfile.close();
    }
    //std::cout << "end printTrace!\n";
}

std::string Thread::getName() {return name;}


void Thread::clearBuffer(void* loc) {
    if (buffers.find(loc) != buffers.end())
        buffers[loc]->clear();
}

void Thread::updateBuffer(void* loc, uint64_t val) {
    std::cout << "update buffer: " << loc << " " << val << "\n";
    if (buffers.find(loc) == buffers.end()) {
        Buffer* buffer = new Buffer(loc);
        buffers[loc] = buffer;
        buffer->updateBuffer(val);
    } else
        buffers[loc]->updateBuffer(val);
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

void Thread::fetchExpectVal(void* loc, uint64_t val) {
    if (buffers.find(loc) == buffers.end()) {
        Buffer* buffer = new Buffer(loc);
        buffers[loc] = buffer;
        buffer->fetchExpectVal(val);
    } else
        buffers[loc]->fetchExpectVal(val);
}

uint64_t Thread::getValue(void* loc) {
    if (buffers.find(loc) == buffers.end()) {
        assert(false && "Find an un-initialization error!");
    }

    std::cout << "get buffer: " << loc << " " << buffers[loc]->getValue() << "\n";
    return buffers[loc]->getValue();
}

