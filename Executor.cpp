//
// Created by aser on 6/4/17.
//

#include <assert.h>
#include <fstream>
#include <thread>

#include "Executor.h"
#include "Action.h"
#include "Thread.h"
#include "Solver.h"
#include "Z3Solver.h"
#include "Util.h"
#include "Schedule.h"
#include "checker.hpp"

using namespace checker;
using namespace util;

Executor::Executor() {
    //readPrefix("Input2");

    set_parameters();
    solver = new Solver(this);
    bugFixMode = true;
    inputIndex = 0;
    Schedule* newSch = new Schedule();
    setCurSch(newSch);
    //std::cout << "Generate a new Executor: " << this << " " << curSch << "\n";
    pthread_mutex_init(&lockForThreadMap, NULL);
    pthread_mutex_init(&lock, NULL);
}

void Executor::setModelChecker(ModelChecker* checker) {
    this->checker = checker;
    if (checker->getSchList().size() != 0) {
        setCurSch(checker->getSchList()[0]);
        checker->eraseSch();
        curSch->print();
    }
}

Thread* Executor::addThread(std::string tid, std::string name) {
    pthread_mutex_lock(&lockForThreadMap);
    Thread* thread = new Thread(this, tid, name);

    threadMap[tid] = thread;

    std::stringstream ss;
    ss << "add thread: " << tid << "\n";
    std::cout << ss.str();

    /*ss << "\n Add Current Thread: " << this << " " << threadMap.size() << "\n";

    ss << threadMap.size() << "\n";
    int i = 0;
    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
         it != threadMap.end(); ++it) {
        i++;
        ss << i << " " << it->first << " * ";
    }
    ss << "\n";

    ss << "in addthread: *" << this << " " << thread->getExe() << " " << tid << "* " << name << " " << thread << "!!!\n";
    std::cout << ss.str();*/

    assert(threadMap.find(tid) != threadMap.end());

    pthread_mutex_unlock(&lockForThreadMap);
    return thread;
}

Thread* Executor::getThread(std::string tid) {
    pthread_mutex_lock(&lockForThreadMap);
    std::stringstream ss;
    ss << "get thread: " << tid << "\n";
    std::cout << ss.str();
    /*ss << "\nGet Current Thread: " << threadMap.size() << "\n";
    int i = 0;
    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
            it != threadMap.end(); ++it) {
        i++;
        ss << i << " " << it->first << " * ";
    }
    ss << "\n";
    ss << "get thread: " << this << " " << tid << " " << threadMap.size() << "\n";
    std::cout << ss.str();*/

    if (threadMap.find(tid) == threadMap.end()) {
        pthread_mutex_unlock(&lockForThreadMap);
        return NULL;
    }

    Thread* thread = threadMap[tid];
    pthread_mutex_unlock(&lockForThreadMap);
    return thread;
}

void Executor::execute_thread_create_action(std::string tid1, std::string tid2) {
    pthread_mutex_lock(&lock);
    std::stringstream ss;
    ss << "AAA: " << this << " " << &lock << " " << tid2 << "\n";
    std::cout << ss.str();
    ss.str("");
    //Thread* thread1 = threadMap[tid1];
    Thread* thread1 = getThread(tid1);
    Thread* thread2 = getThread(tid2);
    Action* action = new Action(this, thread1, THREAD_CREATE, tid1, tid2);
    thread1->addAction(action);
    threadCreateMap[tid2] = tid1;
    ss << "\ncreate: " << tid1 << " " << tid2 << " " << thread2 << "\n";
    //std::cout << ss.str();

    //ss.str("");
    if (thread2 != NULL && thread2->getActionList().size() != 0) {
        addCreatePoint(action, thread2->getActionList()[0]);
        ss << "\nccc1: " << action << " " << threadCreatePoints[action] << " " << thread2->getActionList().size() << "\n";
    } else {
        addCreatePoint(action);
        ss << "\nccc2: " << action << " " << tid1 << " " << tid2 << "\n";
    }
    std::cout << ss.str();
    pthread_mutex_unlock(&lock);
}

void Executor::execute_thread_begin_action(std::string tid, std::string name) {
    pthread_mutex_lock(&lock);
    std::stringstream ss;
    ss << "BBB: " << this << " " << &lock << " " << tid << "\n";
    std::cout << ss.str();
    ss.str("");
    //std::cout << "in thread_begin_action: " << this << " " << tid << " " << name << " ~" << threadMap.size() << "~~\n";
    Thread* thread = addThread(tid, name);

    Action* action;
    action = new Action(this, thread, THREAD_START, name);
    thread->addAction(action);

    ss << "\nbbbb0: " << tid << " " << thread << "\n";
    for (std::map<Action*, Action*>::iterator it = threadCreatePoints.begin();
            it != threadCreatePoints.end(); ++it) {
        Action* pAction = it->first;

        ss << pAction->get_id1() << " " << pAction->get_id2() << "\n";
        if (pAction->get_id2() == tid) {
            threadCreatePoints[pAction] = action;
            ss << "bbb: " << pAction << " " << action << "\n";
            break ;
        }
    }
    std::cout << ss.str();
    pthread_mutex_unlock(&lock);

    //curSch->eraseAction(std::make_pair(name, action->get_seq_number()));
}

void Executor::execute_thread_end_action(std::string tid) {
    //Thread* thread = threadMap[tid];
    std::cout << "111: " << tid << "\n";
    Thread* thread = getThread(tid);
    std::cout << "222: " << thread << "\n";
    assert(thread != NULL);
    std::cout << "333\n";
    Action* action = new Action(this, thread, THREAD_FINISH, tid);
    std::cout << "444\n";
    thread->addAction(action);
    //thread->printTrace();

    std::cout << "555\n";
    for (std::map<Action*, Action*>::iterator it = threadJoinPoints.begin();
            it != threadJoinPoints.end(); ++it) {
        if (threadCreateMap[tid] == it->first->get_tid()) {
            threadJoinPoints[it->first] = thread->getActionList().back();
            break ;
        }
    }
}

void Executor::execute_thread_join_action(std::string tid1, std::string tid2) {
    Thread* thread = getThread(tid1);
    Action* action = new Action(this, thread, THREAD_JOIN, tid1, tid2);
    thread->addAction(action);

    Thread* childThr = getThread(tid2);
    std::cout << "ttt: " << tid2 << " " << childThr << "\n";
    if (childThr == NULL) {
        addJoinPoint(action, NULL);
    } else
        addJoinPoint(action, childThr->getActionList().back());
}

int Executor::execute_pre_read_action(std::string tid, void* addr, int mo) {
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:90");
    Thread* thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    Action* action = new RWAction(this, thread, ATOMIC_READ, mo, addr, false);

    //assert(threadMap.find(tid) != threadMap.end() && "Should create the thread!");
    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    //std::cout << "current action: " << readValueMap.size() << " " << currentPair.first << " " << currentPair.second << "\n";
    //while (preActions[currentPair].size() != 0) {}
    //int i = 100;
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting read!\n";
    }

    /*if (readValueMap.find(currentPair) == readValueMap.end()
        return 0xff;
    else {
        return readValueMap[currentPair];
    }*/

    return curSch->getRFValue(currentPair);
}

void Executor::execute_post_read_action(std::string tid, void* addr, int mo, uint64_t val) {
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:114");
    //Action* action = new Action(ATOMIC_READ, mo, addr);
    Thread* thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    RWAction* action = dynamic_cast<RWAction*>(thread->getActionList().back());
    assert(action != 0);
    action->set_value(val);
}


void Executor::execute_write_action(std::string tid, void* addr, int mo, uint64_t val) {
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:123");
    Thread *thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    Action *action = new RWAction(this, thread, ATOMIC_WRITE, mo, addr, true, val);

    thread->addAction(action);
    //while (thread->pause(action) == true) { std::cout << "2222\n"; }
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting write!\n";
    }

}


void Executor::execute_fence_action(std::string tid, int mo) {
    Thread* thread = getThread(tid);
    Action *action = new FenceAction(this, thread, ATOMIC_FENCE, mo);
    thread->addAction(action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting fence!\n";
    }
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
    //scheduleNewExe();
}

void Executor::printSolutionValue() {
    std::cout << "Solution Value: \n";
    for (std::map<std::string, std::string>::iterator it = solutionValues.begin();
            it != solutionValues.end(); ++it) {
        std::cout << it->first << " " << it->second << "\n";
    }
}

void Executor::generateSolutionFile() {
    if (solutionValues.size() == 0)
        return ;

    Schedule* sch = new Schedule();
    std::cout << "Generate new schedule: " << sch << "\n";
    //curSch->clearData();

    bool flag = false;
    std::string inputName = "Input" + util::stringValueOf(inputIndex-1);
    //std::ofstream outfile(inputName, std::ios::app);
    for (std::map<std::string, std::string>::iterator it = solutionValues.begin();
            it != solutionValues.end(); ++it) {
        std::string name = it->first;
        std::string val = it->second;
        //std::cout << "handle: " << name << " " << val << "\n";
        if (name.at(0) == 'B' && name.find("B_") != std::string::npos) {
            if (val != "1" && val != "0")
                continue ;

            name = name.substr(2);
            char action[10000];
            std::strcpy(action, name.c_str());
            char* token = strtok(action, "_-");
            std::string fname1 = token;
            token = strtok(NULL, "_-");
            std::string seq_num1 = token;
            token = strtok(NULL, "_-");
            std::string fname2 = token;
            token = strtok(NULL, "_-");
            std::string seq_num2 = token;
            if (fname1 != fname2) {
                //outfile << "B: " << fname1 << " " << seq_num1 << " " << fname2 << " " << seq_num2 << "\n";
                //std::cout << "B: " << fname1 << " " << seq_num1 << " " << fname2 << " " << seq_num2 << "\n";
                //sch->updatePreAction(std::make_pair(fname1, util::intValueOf(seq_num1)), std::make_pair(fname2, util::intValueOf(seq_num2)));
                if (val == "1")
                    sch->updatePreAction(std::make_pair(fname2, util::intValueOf(seq_num2)), std::make_pair(fname1, util::intValueOf(seq_num1)));
                else
                    sch->updatePreAction(std::make_pair(fname1, util::intValueOf(seq_num1)), std::make_pair(fname2, util::intValueOf(seq_num2)));

            }
        } else if (name.at(0) == 'R' && name.find("RF_") != std::string::npos) {
            name = name.substr(3);
            char action[10000];
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
                    Action* action = list[util::intValueOf(seq_num2)];
                    //std::cout << "action: " << fname2 << " " << seq_num2 << " " << action->get_action_str() << "\n";
                    RWAction* write = dynamic_cast<RWAction*>(list[util::intValueOf(seq_num2)]);
                    //std::cout << "write: " << write << "\n";
                    val = write->get_value();
                    break ;
                }
            }

            //outfile << "RF: " << fname1 << " " << seq_num1 << " " << val << "\n";
            sch->updateReadValueMap(std::make_pair(fname1, util::intValueOf(seq_num1)), val);
        }
    }

    // add the prefix of the current schedule!
    std::map <std::pair<std::string, int>, uint64_t> rfMap = curSch->getReadValueMap();
    sch->getReadValueMap().insert(rfMap.begin(), rfMap.end());
    for (std::map<std::pair<std::string, int>, uint64_t >::iterator it = rfMap.begin();
            it != rfMap.end(); ++it)
        sch->updateReadValueMap(it->first, it->second);

    //outfile.flush();
    //outfile.close();
    schedules.push_back(sch);
    getChecker()->addSch(sch);
}

void Executor::resetSolver() {
    solver->getSolver()->openOutputFile();
    solver->getSolver()->resetDeclaredVars();
    solutionValues.clear();
}

void Executor::scheduleNewExe() {
    if (schedules.size() == 0)
        return ;

    for (std::vector<Schedule*>::iterator it = schedules.begin();
            it != schedules.end(); ++it) {
        //std::cout << "New Schedule: \n";
        Schedule* sch = *it;
        setCurSch(sch);
        //system("./example");
        //std::thread a(user_main);
        //a.join();
    }
}