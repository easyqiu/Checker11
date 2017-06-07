//
// Created by aser on 6/4/17.
//

#include <assert.h>
#include <fstream>
#include <sstream>

#include "Executor.h"
#include "Action.h"
#include "Thread.h"

using namespace checker;

void Executor::addThread(std::string tid, std::string name) {
    Thread* thread = new Thread(tid, name);
    threadMap[tid] = thread;
}

void Executor::execute_thread_create_action(std::string tid1, std::string tid2) {
    Thread* thread1 = threadMap[tid1];
    //Thread* thread2 = threadMap[tid2];
    //std::cout << "create: " << tid1 << " " << tid2 << " " << thread1 << " " << thread2 << "\n";
    Action* action = new Action(this, THREAD_CREATE, tid1, tid2);
    thread1->addAction(action);
}

void Executor::execute_thread_begin_action(std::string tid, std::string name) {
    addThread(tid, name);
    Action* action = new Action(this, THREAD_START, name);
    threadMap[tid]->addAction(action);
}

void Executor::execute_thread_end_action(std::string tid) {
    Thread* thread = threadMap[tid];
    Action* action = new Action(this, THREAD_FINISH, tid);
    thread->addAction(action);
    thread->printTrace();
}

void Executor::execute_thread_join_action(std::string tid1, std::string tid2) {
    //Thread* thread1 = threadMap[tid1];
    //Thread* thread2 = threadMap[tid2];
    Action* action = new Action(this, THREAD_JOIN, tid1, tid2);
    threadMap[tid1]->addAction(action);
}

int Executor::execute_pre_read_action(std::string tid, void* addr, int mo) {
    Action* action = new Action(this, ATOMIC_READ, mo, addr);

    if (threadMap.find(tid) == threadMap.end()) 
        return 0xff;
   
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread!");
    Thread* thread = threadMap[tid];
    while (thread->pause(action) == true) {}

    thread->addAction(action);

    return 0xff;
}

void Executor::execute_post_read_action(std::string tid, void* addr, int mo, uint64_t val) {
    //Action* action = new Action(ATOMIC_READ, mo, addr);
    Thread* thread = threadMap[tid];
    thread->getActionList().back()->set_value(val);
}


void Executor::execute_write_action(std::string tid, void* addr, int mo, int val) {
    Thread *thread = threadMap[tid];
    Action *action = new Action(this, ATOMIC_WRITE, mo, addr, val);
    while (thread->pause(action) == true) {}

    thread->addAction(action);
    std::cout << "list write: " << tid << " " << threadMap[tid]->getActionList().size() << "\n";
}

std::map<std::string, Thread *> Executor::getThreadMap() {
    return threadMap;
}

void Executor::readPrefix(std::string filename) {
    std::ifstream infile(filename);
    std::string line;
    while (getline(infile, line)) {
        if (line.find(":") != line.end()) {
            std::string num = line.substr(0, line.find(":"));
            line = line.substr(line.find(":")+2);
            char action[100];

            strcpy(action, line);
            char* token = strtok (action," ");

            std::string tName = token;
            token = strtok(NULL, " ");
            
        }
    }

}
