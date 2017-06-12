//
// Created by aser on 6/4/17.
//

#include <assert.h>
#include <fstream>
#include <sstream>

#include "Executor.h"
#include "Action.h"
#include "Thread.h"
#include "Solver.h"
#include "Util.h"

using namespace checker;
using namespace util;

Executor::Executor() {
    std::cout << "Generate a new Execuctor\n";
    readPrefix("Input2");

    set_parameters();
    solver = new Solver(this);
    bugFixMode = true;
    inputIndex = 0;
}

void Executor::addThread(std::string tid, std::string name) {
    Thread* thread = new Thread(tid, name);
    threadMap[tid] = thread;
}

void Executor::execute_thread_create_action(std::string tid1, std::string tid2) {
    Thread* thread1 = threadMap[tid1];
    //Thread* thread2 = threadMap[tid2];
    //std::cout << "create: " << tid1 << " " << tid2 << " " << thread1 << " " << thread2 << "\n";
    Action* action = new Action(this, thread1, THREAD_CREATE, tid1, tid2);
    thread1->addAction(action);
}

void Executor::execute_thread_begin_action(std::string tid, std::string name) {
    addThread(tid, name);
    Thread* thread = threadMap[tid];
    Action* action = new Action(this, thread, THREAD_START, name);
    thread->addAction(action);
}

void Executor::execute_thread_end_action(std::string tid) {
    Thread* thread = threadMap[tid];
    Action* action = new Action(this, thread, THREAD_FINISH, tid);
    thread->addAction(action);
    thread->printTrace();
}

void Executor::execute_thread_join_action(std::string tid1, std::string tid2) {
    //Thread* thread1 = threadMap[tid1];
    //Thread* thread2 = threadMap[tid2];
    Thread* thread = threadMap[tid1];
    Action* action = new Action(this, thread, THREAD_JOIN, tid1, tid2);
    thread->addAction(action);
}

int Executor::execute_pre_read_action(std::string tid, void* addr, int mo) {
    Thread* thread = threadMap[tid];
    Action* action = new RWAction(this, thread, ATOMIC_READ, mo, addr, false);

    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread!");
    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    //std::cout << "current action: " << readValueMap.size() << " " << currentPair.first << " " << currentPair.second << "\n";
    while (preActions[currentPair].size() != 0) {}

    if (readValueMap.find(currentPair) == readValueMap.end())
        return 0xff;
    else {
        return readValueMap[currentPair];
    }
}

void Executor::execute_post_read_action(std::string tid, void* addr, int mo, uint64_t val) {
    //Action* action = new Action(ATOMIC_READ, mo, addr);
    Thread* thread = threadMap[tid];
    RWAction* action = dynamic_cast<RWAction*>(thread->getActionList().back());
    assert(action != 0);
    action->set_value(val);
}


void Executor::execute_write_action(std::string tid, void* addr, int mo, uint64_t val) {
    Thread *thread = threadMap[tid];
    Action *action = new RWAction(this, thread, ATOMIC_WRITE, mo, addr, true, val);
    while (thread->pause(action) == true) {}

    thread->addAction(action);
}

std::map<std::string, Thread *> Executor::getThreadMap() {
    return threadMap;
}

void Executor::readPrefix(std::string filename) {
    std::ifstream infile(filename);
    std::string line;
    std::cout << "Reading Prefix: \n";
    while (getline(infile, line)) {
        char action[100];
        if (line.find("RF: ") != std::string::npos) {
            line = line.substr(line.find(":")+2);

            std::strcpy(action, line.c_str());
            char* token = strtok(action, " ");

            std::string fname = token;
            token = strtok(NULL, " ");
            std::string seq_num = token;
            token = strtok(NULL, " ");
            uint64_t value = atoi(token);
            readValueMap[std::make_pair(fname, atoi(seq_num.c_str()))] = value;
            //std::cout << "read value: " << fname << " " << seq_num << " " << value << "\n";
        } else if (line.find("B: ") != std::string::npos) {
            line = line.substr(line.find(":")+2);

            std::strcpy(action, line.c_str());
            char* token = strtok(action, " ");

            std::string fname1 = token;
            token = strtok(NULL, " ");
            std::string seq_num1 = token;
            token = strtok(NULL, " ");
            std::string fname2 = token;
            token = strtok(NULL, " ");
            std::string seq_num2 = token;
            preActions[std::make_pair(fname2, atoi(seq_num2.c_str()))].insert(std::make_pair(fname1, atoi(seq_num1.c_str())));
            //std::cout << "Pre action: " << fname2 << " " << seq_num2 << " " << fname1 << " " << seq_num1 << "\n";
        }
    }

}

void Executor::set_parameters() {
    solverPath = getenv("solver");
    formulaFile = getenv("formulaFile");
    startTime = endTime = 0;
    std::cout << "Solver path: " << solverPath << "\n";
    std::cout << "Formula file: " << formulaFile << "\n";
}

void Executor::begin_solver() {
    solver->start();
}


void Executor::printSolutionValue() {
    std::cout << "Solution Value: \n";
    for (std::map<std::string, std::string>::iterator it = solutionValues.begin();
            it != solutionValues.end(); ++it) {
        std::cout << it->first << " " << it->second << "\n";
    }
}

void Executor::generateSolutionFile() {
    std::string inputName = "Input" + util::stringValueOf(inputIndex++);
    std::ofstream outfile(inputName, std::ios::app);
    for (std::map<std::string, std::string>::iterator it = solutionValues.begin();
            it != solutionValues.end(); ++it) {
        std::string name = it->first;
        std::string val = it->second;
        if (name.at(0) == 'B' && name.find("B_") != std::string::npos) {
            name = name.substr(2);
            char action[100];
            std::strcpy(action, name.c_str());
            char* token = strtok(action, "_-");
            std::string fname1 = token;
            token = strtok(NULL, "_-");
            std::string seq_num1 = token;
            token = strtok(NULL, "_-");
            std::string fname2 = token;
            token = strtok(NULL, "_-");
            std::string seq_num2 = token;
            outfile << "B: " << fname1 << " " << seq_num1 << " " << fname2 << " " << seq_num2 << "\n";
        } else if (name.at(0) == 'R' && name.find("RF_") != std::string::npos) {
            name = name.substr(3);
            char action[100];
            std::strcpy(action, name.c_str());
            char* token = strtok(action, "_-");
            std::string fname1 = token;
            token = strtok(NULL, "_-");
            std::string seq_num1 = token;
            token = strtok(NULL, "_-");
            std::string fname2 = token;
            token = strtok(NULL, "_-");
            std::string seq_num2 = token;
            uint64_t  val;
            for (std::map<std::string, Thread*>::iterator tit = threadMap.begin();
                    tit != threadMap.end(); ++tit) {
                if (tit->second->getName() == fname2) {
                    std::vector<Action*> list = tit->second->getActionList();
                    RWAction* write = dynamic_cast<RWAction*>(list[util::intValueOf(seq_num2)]);
                    val = write->get_value();
                    break ;
                }
            }

            outfile << "RF: " << fname1 << " " << seq_num1 << " " << val << "\n";
        }
    }

    outfile.flush();
    outfile.close();
}
