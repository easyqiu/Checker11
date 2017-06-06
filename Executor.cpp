//
// Created by aser on 6/4/17.
//

#include <assert.h>
#include "Executor.h"

void Executor::addThread(std::string tid) {
    Thread* thread = new Thread(tid);
    threadMap[tid] = thread;
}

int Executor::execute_pre_read_action(std::string tid, void* addr, int mo) {
    Action* action = new Action(ATOMIC_READ, to_mo(mo), addr);

    if (threadMap.find(tid) == threadMap.end()) 
        return 0xff;
   
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread!");
    Thread* thread = threadMap[tid];
    while (thread->pause(action) == true) {}

    thread->addAction(action);

    return 0xff;
}

void Executor::execute_post_read_action(std::string tid, void* addr, int mo, uint64_t val) {
    //Action* action = new Action(ATOMIC_READ, to_mo(mo), addr);
    Thread* thread = threadMap[tid];
    thread->getActionList().back()->set_value(val);
}


void Executor::execute_write_action(std::string tid, void* addr, int mo, int val) {
    Thread *thread = threadMap[tid];
    Action *action = new Action(ATOMIC_WRITE, to_mo(mo), addr, val);
    while (thread->pause(action) == true) {}

    thread->addAction(action);

}
