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

#define CWH // control the whole program

using namespace checker;
using namespace util;

Executor::Executor() {
    //readPrefix("Input2");

    set_parameters();
    solver = new Solver(this);
    bugFixMode = true;
    firstThread = true;
    inputIndex = 0;
    Schedule* newSch = new Schedule();
    setCurSch(newSch);
    //std::cout << "Generate a new Executor: " << this << " " << curSch << "\n";
    pthread_mutex_init(&lockForThreadMap, NULL);
    pthread_mutex_init(&lock, NULL);
    pthread_cond_init(&cond, NULL);
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
    if (threadsName.find(name) == threadsName.end()) {
        threadsName[name] = 0;
    } else {
        threadsName[name]++;
        name = name + util::stringValueOf(threadsName[name]);
    }

    Thread* thread = new Thread(this, tid, name);

    threadMap[tid] = thread;

    /*std::stringstream ss;
    ss << "add thread: " << tid << "\n";
    std::cout << ss.str();*/

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
    /*std::stringstream ss;
    ss << "get thread: " << tid << "\n";
    std::cout << ss.str();*/
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
    //std::cout << ss.str();
    //ss.str("");
    //Thread* thread1 = threadMap[tid1];
    Thread* thread1 = getThread(tid1);
    Thread* thread2 = getThread(tid2);
    Action* action = new Action(this, thread1, THREAD_CREATE, tid1, tid2);
    thread1->addAction(action);
    threadCreateMap[tid2] = tid1;
    ss << "\ncreate: " << tid1 << " " << tid2 << " " << thread2 << "\n";
    //std::cout << ss.str();

    //pthread_cond_signal(&cond);

    //ss.str("");
    if (thread2 != NULL && thread2->getActionList().size() != 0) {
        addCreatePoint(action, thread2->getActionList()[0]);
        ss << "\nccc1: " << action << " " << threadCreatePoints[action] << " " << thread2->getActionList().size() << "\n";
    } else {
        addCreatePoint(action);
        ss << "\nccc2: " << action << " " << tid1 << " " << tid2 << "\n";
    }
    //std::cout << ss.str();

    pthread_mutex_unlock(&lock);
}

void Executor::execute_thread_begin_action(std::string tid, std::string name) {
    while ( !firstThread && threadCreateMap.find(tid) == threadCreateMap.end()) {
        usleep(1000);
        std::cout << "Waitting for create thread " << tid << "\n";
        //pthread_cond_wait(&cond, &lock);
    }

    pthread_mutex_lock(&lock);
    std::stringstream ss;
    ss << "BBB: " << this << " " << &lock << " " << tid << "\n";
    //std::cout << ss.str();
    //ss.str("");
    //std::cout << "in thread_begin_action: " << this << " " << tid << " " << name << " ~" << threadMap.size() << "~~\n";
    Thread* thread = addThread(tid, name);

    /*while (threadCreateMap.find(tid) == threadCreateMap.end()) {
        usleep(1000);
        std::cout << "Waitting for create thread " << tid << "\n";
        pthread_cond_wait(&cond, &lock);
    }*/

    if (!firstThread)
        thread->updateBuffer(getThread(threadCreateMap[tid])->getBuffers());
    firstThread = false;

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

    //std::cout << ss.str();
    pthread_mutex_unlock(&lock);

    //curSch->eraseAction(std::make_pair(name, action->get_seq_number()));
}

void Executor::execute_thread_end_action(std::string tid) {
    pthread_mutex_lock(&lock);
    //Thread* thread = threadMap[tid];
    Thread* thread = getThread(tid);
    assert(thread != NULL);
    Action* action = new Action(this, thread, THREAD_FINISH, tid);
    thread->addAction(action);
    //thread->printTrace();

    for (std::map<Action*, Action*>::iterator it = threadJoinPoints.begin();
            it != threadJoinPoints.end(); ++it) {
        Action* pAction = it->first;
        if (pAction->get_id2() == tid) {
        //if (threadCreateMap[tid] == it->first->get_tid()) {
            threadJoinPoints[pAction] = action;
            break ;
        }
    }
    pthread_mutex_unlock(&lock);
}

void Executor::execute_thread_join_action(std::string tid1, std::string tid2) {
    pthread_mutex_lock(&lock);
    Thread* thread = getThread(tid1);
    Action* action = new Action(this, thread, THREAD_JOIN, tid1, tid2);
    thread->addAction(action);

    Thread* childThr = getThread(tid2);
    if (childThr == NULL) {
        addJoinPoint(action, NULL);
    } else
        addJoinPoint(action, childThr->getActionList().back());
    pthread_mutex_unlock(&lock);
}

int Executor::execute_pre_read_action(std::string tid, void* addr, int mo) {
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:90");
    Thread* thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    //if (thread == NULL)
    //    return -1;
    assert(thread != NULL);
    RWAction* action = new RWAction(this, thread, ATOMIC_READ, mo, addr, false);

    //assert(threadMap.find(tid) != threadMap.end() && "Should create the thread!");
    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting read!\n";
    }

    /*if (readValueMap.find(currentPair) == readValueMap.end()
        return 0xff;
    else {
        return readValueMap[currentPair];
    }*/

#ifdef CWH
    uint64_t expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << "\n";
    action->set_value(expectedVal);
    return expectedVal;
#else
    return curSch->getRFValue(currentPair);
#endif
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
    std::cout << "Set value: " << action->get_action_str() << " " << action->get_value() << "\n";
}


void Executor::execute_write_action(std::string tid, void* addr, int mo, uint64_t val) {
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:123");
    Thread *thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    Action *action = new RWAction(this, thread, ATOMIC_WRITE, mo, addr, true, val);

    thread->addAction(action);
    updateBuffer(addr, val);

    //while (thread->pause(action) == true) { std::cout << "2222\n"; }
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting write!\n";
    }
}

int64_t Executor::execute_pre_cmp_xchg_action(std::string tid, void *addr, int mo1, int mo2,
                                            int64_t expectV, int64_t newVal) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_XCHG, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_xchg!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_xchg_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_XCHG, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_xchg!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_add_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_ADD, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_add!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal+val);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_sub_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_SUB, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_sub!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal-val);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_and_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_AND, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_and!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal & val);
    return expectedVal;
}

int64_t Executor::execute_pre_rmw_nand_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_NAND, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_nand!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(~(expectedVal & val));
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_or_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_OR, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_or!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal | val);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_xor_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_XOR, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_xor!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal ^ val);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_max_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_MAX, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_max!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal > val ? expectedVal : val);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_umax_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_UMAX, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_umax!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal > val ? expectedVal : val);
    return expectedVal;

}


int64_t Executor::execute_pre_rmw_min_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_MIN, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_min!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal < val ? expectedVal : val);
    return expectedVal;

}

int64_t Executor::execute_pre_rmw_umin_action(std::string tid, void *addr, int mo, int64_t val) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_UMIN, mo, addr, val);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting rmw_umin!\n";
    }

    int expectedVal;
    std::map <std::pair<std::string, int>, uint64_t> readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];
        thread->fetchExpectVal(addr, expectedVal);
    } else {
        expectedVal = thread->getValue(addr);
    }

    std::cout << "\nexpect value: " << currentPair.first << " " << currentPair.second << " " << expectedVal << " !" << val << "!\n";
    action->setReadValue(expectedVal);
    action->setWriteValue(expectedVal < val ? expectedVal : val);
    return expectedVal;

}


void Executor::execute_lock_action(std::string tid, void *addr) {
    Thread* thread = getThread(tid);
    Action *action = new LockAction(this, thread, ATOMIC_LOCK, addr);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting lock!\n";
    }
}

void Executor::execute_tryLock_action(std::string tid, void *addr) {
    Thread* thread = getThread(tid);
    Action *action = new LockAction(this, thread, ATOMIC_TRYLOCK, addr);

    thread->addAction(action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting try_lock!\n";
    }
}

void Executor::execute_unLock_action(std::string tid, void *addr) {
    Thread* thread = getThread(tid);
    LockAction *action = new LockAction(this, thread, ATOMIC_UNLOCK, addr);
    thread->addAction(action);

    // set the paired num for lock/unlock/trylock
    for (std::vector<Action*>::reverse_iterator it = thread->getActionList().rbegin();
            it != thread->getActionList().rend(); ++it) {
        Action* a = *it;
        if (dynamic_cast<LockAction*>(a) == NULL) continue ;

        LockAction* lockAction = dynamic_cast<LockAction*>(a);
        if (lockAction->get_type() == ATOMIC_LOCK || lockAction->get_type() == ATOMIC_TRYLOCK) {
            if (lockAction->get_location() == addr) {
                lockAction->set_pairedNum(action->get_seq_number());
                action->set_pairedNum(lockAction->get_seq_number());
                break ;
            }
        }

    }

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(currentPair) == false/* && i--*/) {
        usleep(1000);
        std::cout << "waiting unlock!\n";
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

void Executor::generateSolutionFile(std::map<RWAction *, uint64_t> enforcePairs) {
    if (solutionValues.size() == 0)
        return ;

    std::set<std::string> enforcedRFs;
    for (std::map<RWAction*, uint64_t >::iterator it = enforcePairs.begin();
            it != enforcePairs.end(); ++it) {
        enforcedRFs.insert(it->first->get_uniq_name());
    }

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
            if (val != "1") continue ;

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

            if (enforcedRFs.find(fname1+"-"+seq_num1) == enforcedRFs.end())
                continue ;

            for (std::map<std::string, Thread*>::iterator tit = threadMap.begin();
                    tit != threadMap.end(); ++tit) {
                if (tit->second->getName() == fname2) {
                    std::vector<Action*> list = tit->second->getActionList();
                    Action* action = list[util::intValueOf(seq_num2)];
                    std::cout << "action: " << fname2 << " " << seq_num2 << " " << action->get_action_str() << "\n";
                    RWAction* write = dynamic_cast<RWAction*>(list[util::intValueOf(seq_num2)]);
                    //std::cout << "write: " << write << "\n";

                    uint64_t writeVal = write->get_value();
                    if (dynamic_cast<RMWAction*>(write))
                        writeVal = dynamic_cast<RMWAction*>(write)->getWriteValue();

                    val = writeVal;
                    break ;
                }
            }

            //outfile << "RF: " << fname1 << " " << seq_num1 << " " << val << "\n";
            std::cout << "RF: " << fname1 << " " << seq_num1 << " " << val << "\n";
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
    //std::cout << "pppppp: " << sch << "\n";
    //sch->print();
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

void Executor::updateBuffer(void* loc, uint64_t val) {
    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
            it != threadMap.end(); ++it) {
        Thread* thread = it->second;

        thread->updateBuffer(loc, val);
    }
}

Action* Executor::getAction(std::string tid, int seq_num) {
    Thread* thread = getThread(tid);
    return thread->getActionList()[seq_num];
}
