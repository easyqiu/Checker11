//
// Created by aser on 6/4/17.
//

#include <assert.h>
#include <fstream>
#include <thread>
#include <vector>
#include <algorithm>
#include <cstring>

#include "Executor.h"
#include "Action.h"
#include "Thread.h"
#include "Solver.h"
#include "Z3Solver.h"
#include "Util.h"
#include "Schedule.h"
#include "checker.hpp"
#include "FairState.h"

#define CWH // control the whole program

#define USLEEP 100
#define UNFAIRNUM 2

using namespace checker;
using namespace util;

Executor::Executor() {
    //readPrefix("Input2");

    set_parameters();
    std::cout << "end set parameters!\n";
    solver = new Solver(this);
    bugFixMode = true;
    firstThread = true;
    inputIndex = 0;

    Schedule* newSch = new Schedule();
    setCurSch(newSch);
    std::cout << "Generate a new Executor: " << this << " " << curSch << "\n";
    pthread_mutex_init(&lockForThreadMap, NULL);
    pthread_mutex_init(&lockForRW, NULL);
    pthread_mutex_init(&lockForBuffer, NULL);
    pthread_mutex_init(&lockForFair, NULL);
    pthread_mutex_init(&lock, NULL);
    pthread_cond_init(&cond, NULL);

    loopDepArray[37].insert(22);
    loopDepArray[17].insert(22);
    loopDepArray[62].insert(6);
    loopDepArray[62].insert(38);
    loopDepArray[99].insert(84);
    loopDepArray[79].insert(84);
    loopDepArray[124].insert(68);
    loopDepArray[124].insert(100);
}

Executor::~Executor() {
    pthread_mutex_destroy(&lock);
    pthread_mutex_destroy(&lockForThreadMap);
    pthread_mutex_destroy(&lockForRW);
    pthread_mutex_destroy(&lockForBuffer);
    pthread_mutex_destroy(&lockForFair);

    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
            it != threadMap.end(); ++it) {
        Thread* thread = it->second;
        delete thread;
    }

    delete solver;
#ifdef DEBUG
    std::cout << "delete curSch1: " << curSch << "\n";
#endif

    if (curSch != NULL)
        delete curSch;
#ifdef DEBUG
    std::cout << "delete curSch2!\n";
#endif
    //std::cout << "End delete Executor!\n";
}

void Executor::setModelChecker(ModelChecker* checker) {
    this->checker = checker;
    if (checker->getSchList().size() != 0) {
        if (curSch != NULL)
            delete curSch;

        setCurSch(checker->getSchList()[0]);
        checker->eraseSch();
//#ifdef DEBUG
        curSch->print();
//#endif
    }
}

void Executor::updatePriority(std::string tid) {

#ifdef DEBUG
    std::cout << "in update priority: " << tid << "\n";
#endif

    pthread_mutex_lock(&lockForFair);
    std::map<std::string, std::set<std::string> > tmpOrder;
    for (std::map<std::string, std::set<std::string> >::iterator it = priorityOrder.begin();
            it != priorityOrder.end(); ++it) {
        if (it->second.find(tid) != it->second.end()) {
            it->second.erase(tid);
#ifdef DEBUG
            std::cout << "erase prio: " << it->first << " " << tid << "\n";
#endif
        }
    }
    //priorityOrder.clear();
    //priorityOrder.insert(tmpOrder.begin(), tmpOrder.end());

    pthread_mutex_unlock(&lockForFair);
}

void Executor::addAction(Thread* thread, Action* action, uint64_t clapNum) {

#ifdef DEBUG
    std::cout << "before addAction lock: " << thread << " " << action << "\n";
#endif

    pthread_mutex_lock(&lockForFair);
#ifdef DEBUG
    std::cout << "thread: " << thread << " " << action << "\n";
#endif
    assert(thread != NULL);
    assert(action != NULL);
    thread->addAction(action, clapNum);

#ifdef DEBUG
    std::cout << "thread add end: " << thread << " " << action << " " << action->get_type() << " " << action->get_seq_number() << "\n";
    std::cout << "enabled threads: " << enabledThreads.size() << "\n";
    for (std::set<std::string>::iterator it = enabledThreads.begin();
            it != enabledThreads.end(); ++it)
        std::cout << *it << "\n";
#endif

    if (action->get_type() == THREAD_START)
        enabledThreads.insert(thread->get_id());
    else if (action->get_type() == THREAD_FINISH) {
#ifdef DEBUG
        std::cout << "erase enabledThreads: " << action->get_uniq_name() << "\n";
#endif
        enabledThreads.erase(thread->get_id());
    }

    std::map<std::string, std::set<std::string> > tmpOrder;
    for (std::map<std::string, std::set<std::string> >::iterator it = priorityOrder.begin();
            it != priorityOrder.end(); ++it) {
        if (it->second.find(thread->get_id()) != it->second.end()) {
            it->second.erase(thread->get_id());
#ifdef DEBUG
            std::cout << "erase prio: " << it->first << " " << thread->get_id() << "\n";
#endif
        }

    }
    //priorityOrder.clear();
    //priorityOrder.insert(tmpOrder.begin(), tmpOrder.end());


#ifdef DEBUG
    std::stringstream ss;
    ss << "In add action: " << action->get_uniq_name() << "\n";// << " " << action->get_action_str() << "\n";
    std::cout << ss.str();
    ss.str("");
#endif
    if (RWAction* read = dynamic_cast<RWAction*>(action)) {
        //std::cout << "1111: " << thread << " " << action << "\n";
        if (read->is_write() == false || dynamic_cast<RMWAction*>(read)) {
            do {
                //std::cout << "2222: " << thread << " " << action << "\n";
                std::set<std::string> Tset;
                Tset.insert(enabledThreads.begin(), enabledThreads.end());
                for (std::map<std::string, std::set<std::string> >::iterator it = priorityOrder.begin();
                     it != priorityOrder.end(); ++it) {
#ifdef DEBUG
                    ss.str("");
                    ss << it->first << "\n";
                    for (std::set<std::string>::iterator it2 = it->second.begin();
                            it2 != it->second.end(); it2++)
                        ss << *it2 << " ";
                    ss << "\n";
                    std::cout << ss.str();
#endif

                    if (it->first == thread->get_id()) {
                        std::set<std::string> tmpSet;
                        std::set_intersection(it->second.begin(), it->second.end(), enabledThreads.begin(),
                                              enabledThreads.end(), std::inserter(tmpSet, tmpSet.begin()));
                        if (tmpSet.size() != 0)
                            Tset.erase(it->first);
                    }
                }

#ifdef DEBUG
                ss.str("");
                ss << "Tset: " << Tset.size() << " " << enabledThreads.size() << " " << thread->get_id() << "\n";
                for (std::set<std::string>::iterator it = Tset.begin(); it != Tset.end(); ++it) {
                    ss << *it << " ";
                }
                ss << "\n";
                std::cout << ss.str();
#endif

                if (Tset.find(thread->get_id()) != Tset.end() || Tset.size() == 1)
                    break;
                else {

#ifdef DEBUG
                    ss.str("");
                    ss << "pre sleep: " << thread->get_id() << "\n";
                    std::cout << ss.str();
#endif
                    if (dynamic_cast<RWAction*>(action)) {
#ifdef DEBUG
                        std::cout << "Release lockForRW: " << action->get_uniq_name() << "\n";
#endif
                        pthread_mutex_unlock(&lockForRW);
                    }
                    pthread_mutex_unlock(&lockForFair);

                    usleep(USLEEP);

#ifdef  DEBUG
                    ss.str("");
                    if (dynamic_cast<RWAction*>(action))
                        ss << "Waiting enable: " << thread->get_id() << " " << action->get_uniq_name() << "\n";
                    else
                        ss << "Waiting enable: \n";
                    std::cout << ss.str();
#endif

                    if (dynamic_cast<RWAction*>(action)) {
#ifdef DEBUG
                        std::cout << "Acquire lockForRW B: " << action->get_uniq_name() << "\n";
#endif
                        pthread_mutex_lock(&lockForRW);
#ifdef DEBUG
                        std::cout << "Acquire lockForRW E: " << action->get_uniq_name() << "\n";
#endif
                    }

#ifdef DEBUG
                    std::cout << "Acquire lockForFailr B: " << action->get_uniq_name() << "\n";
#endif
                    pthread_mutex_lock(&lockForFair);
#ifdef DEBUG
                    std::cout << "Acquire lockForFailr E: " << action->get_uniq_name() << "\n";
#endif
                    priorityOrder.erase(thread->get_id());
                    //pthread_cond_wait(&cond, &lock);
                }

            } while (true);
        }
    }

    std::set<std::string> disabledSet; // FIXME

    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
            it != threadMap.end(); ++it) {
        Thread* t = it->second;
        FairState* fairState = t->getFairState();

        std::set<std::string> newSet;
        std::set<std::string> &cSet = fairState->getContinueEnabledThreads();
        for (std::set<std::string>::iterator it2 = enabledThreads.begin();
                it2 != enabledThreads.end(); ++it2) {
            if (cSet.find(*it2) != cSet.end())
                newSet.insert(*it2);
        }

        //std::cout << "sss2: " << newSet.size() << "\n";
        //std::set_intersection(enabledThreads.begin(), enabledThreads.end(), fairState->getContinueEnabledThreads().begin(),
        //        fairState->getContinueEnabledThreads().end(), std::inserter(newSet, newSet.begin()));
        t->getFairState()->setContinueEnabledThreads(newSet);
        if (t == thread) {
            newSet = fairState->getDisabledThreads();
            newSet.insert(disabledSet.begin(), disabledSet.end());
            t->getFairState()->setDisabledThreads(newSet);
        }
        t->getFairState()->addScheduledThreads(thread->get_id());
    }

    if (action->get_type() == THREAD_YIELD) {
        //std::cout << "sss5\n";
        std::set<std::string> Hset;
        FairState* fairState = thread->getFairState();
        std::set<std::string>& eSet = fairState->getContinueEnabledThreads();
        std::set<std::string>& dSet = fairState->getDisabledThreads();
        std::set<std::string>& sSet = fairState->getScheduledThreads();

        std::set_union(eSet.begin(), eSet.end(), dSet.begin(), dSet.end(), std::inserter(Hset, Hset.begin()));
        std::set_difference(Hset.begin(), Hset.end(), sSet.begin(), sSet.end(), std::inserter(Hset, Hset.begin()));
        for (std::set<std::string>::iterator it = Hset.begin();
                it != Hset.end(); ++it) {
            if (thread->get_id() == *it) continue;

            priorityOrder[thread->get_id()].insert(*it);

#ifdef DEBUG
            ss.str("");
            ss << "add prio: " << thread->get_id() << " " << *it << "\n";
            std::cout << ss.str();
#endif
        }

        thread->getFairState()->setContinueEnabledThreads(enabledThreads);
        thread->getFairState()->getDisabledThreads().clear();
        thread->getFairState()->getScheduledThreads().clear();
    }
#ifdef DEBUG
    ss.str("");
    ss << "End add action! " << action->get_uniq_name() << "\n";
    std::cout << ss.str();
#endif
    pthread_mutex_unlock(&lockForFair);
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
    thread->handleFuncBegin(name);

    threadMap[tid] = thread;
    threadMapByName[name] = thread;

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
    ss << "get thread B: " << tid << "\n";
    std::cout << ss.str();
    ss << "\nGet Current Thread: " << threadMap.size() << "\n";
    std::cout << ss.str();
    int i = 0;
    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
            it != threadMap.end(); ++it) {
        i++;
        ss << i << " " << it->first << " * ";
    }
    ss << "\n";
    ss << "get thread E: " << this << " " << tid << " " << threadMap.size() << "\n";
    std::cout << ss.str();*/

    if (threadMap.find(tid) == threadMap.end()) {
        pthread_mutex_unlock(&lockForThreadMap);
        return NULL;
    }

    Thread* thread = threadMap[tid];
    pthread_mutex_unlock(&lockForThreadMap);
    return thread;
}

Thread* Executor::getThreadByName(std::string name) {
    assert(threadMapByName.find(name) != threadMapByName.end());

    return threadMapByName[name];
}

void Executor::execute_thread_create_action(std::string tid1, std::string tid2) {
    pthread_mutex_lock(&lock);
    std::stringstream ss;
    //ss << "AAA: " << this << " " << &lock << " " << tid2 << "\n";
    //std::cout << ss.str();
    //ss.str("");
    //Thread* thread1 = threadMap[tid1];
    Thread* thread1 = getThread(tid1);
    Thread* thread2 = getThread(tid2);
    Action* action = new Action(this, thread1, THREAD_CREATE, tid1, tid2);
    //thread1->addAction(action);
    addAction(thread1, action);
    threadCreateMap[tid2] = tid1;
    //ss << "\ncreate: " << tid1 << " " << tid2 << " " << thread2 << "\n";
    //std::cout << ss.str();

    //pthread_cond_signal(&cond);

    //ss.str("");
    if (thread2 != NULL && thread2->getActionList().size() != 0) {
        addCreatePoint(action, thread2->getActionList()[0]);
        //ss << "\nccc1: " << action << " " << threadCreatePoints[action] << " " << thread2->getActionList().size() << "\n";
    } else {
        addCreatePoint(action);
        //ss << "\nccc2: " << action << " " << tid1 << " " << tid2 << "\n";
    }
    //std::cout << ss.str();

    curSch->eraseAction(std::make_pair(thread1->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lock);
}

void Executor::execute_thread_begin_action(std::string tid, std::string name) {
    while ( !firstThread && threadCreateMap.find(tid) == threadCreateMap.end()) {
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "Waitting for create thread " << tid << "\n";
#endif
        //pthread_cond_wait(&cond, &lock);
    }

#ifdef DEBUG
    std::cout << "before enter lock: thread create " << tid << "\n";
#endif

    pthread_mutex_lock(&lock);
    std::stringstream ss;
    ss << "BBB: " << this << " " << &lock << " " << tid << "\n";
    //std::cout << ss.str();
    //ss.str("");
#ifdef DEBUG
    std::cout << "in thread_begin_action: " << this << " " << tid << " " << name << " ~" << threadMap.size() << "~~\n";
#endif

    Thread* thread = addThread(tid, name);

    /*while (threadCreateMap.find(tid) == threadCreateMap.end()) {
        usleep(USLEEP);
        std::cout << "Waitting for create thread " << tid << "\n";
        pthread_cond_wait(&cond, &lock);
    }*/

    if (!firstThread) {
        pthread_mutex_lock(&lockForBuffer);
        thread->updateBuffer(getThread(threadCreateMap[tid])->getBuffers());
        pthread_mutex_unlock(&lockForBuffer);
    }
    firstThread = false;

    Action* action;
    action = new Action(this, thread, THREAD_START, name);
    //thread->addAction(action);
    //std::cout << "thread_begin_action: " << thread << " " << action << "\n";
    addAction(thread, action);

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

#ifdef DEBUG
    std::cout << ss.str();
#endif
    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());

    pthread_mutex_unlock(&lock);

    //curSch->eraseAction(std::make_pair(name, action->get_seq_number()));
}

void Executor::execute_thread_end_action(std::string tid) {
#ifdef DEBUG
    std::cout << "Thread_end_action: " << tid << "\n";
#endif
    pthread_mutex_lock(&lock);
    //Thread* thread = threadMap[tid];
    Thread* thread = getThread(tid);
    assert(thread != NULL);
    Action* action = new Action(this, thread, THREAD_FINISH, tid);
    //thread->addAction(action);
    addAction(thread, action);
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
    thread->handleFuncEnd();
    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());

    pthread_mutex_unlock(&lock);
}

void Executor::execute_thread_yield_action(std::string tid) {

#ifdef DEBUG
    std::cout << "Begin thread yield!\n";
#endif
    pthread_mutex_lock(&lock);
#ifdef DEBUG
    std::cout << "In thread yield!\n";
#endif
    Thread* thread = getThread(tid);
    Action* action = new Action(this, thread, THREAD_YIELD, tid);

    addAction(thread, action);
    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());

    pthread_mutex_unlock(&lock);
#ifdef DEBUG
    std::cout << "End thread yield!\n";
#endif
}

void Executor::execute_thread_join_action(std::string tid1, std::string tid2) {
    pthread_mutex_lock(&lock);
    Thread* thread = getThread(tid1);
    Action* action = new Action(this, thread, THREAD_JOIN, tid1, tid2);
    //thread->addAction(action);
    addAction(thread, action);

    Thread* childThr = getThread(tid2);
    if (childThr == NULL) {
        addJoinPoint(action, NULL);
    } else
        addJoinPoint(action, childThr->getActionList().back());
    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lock);
}

double read_time = 0;
int64_t Executor::execute_pre_read_action(std::string tid, void* addr, int mo, uint64_t clapNum) {
    double bTime = clock();
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:90");
    Thread* thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    //if (thread == NULL)
    //    return -1;
    assert(thread != NULL);
    RWAction* action = new RWAction(this, thread, ATOMIC_READ, mo, addr, false);

#ifdef DEBUG
    std::cout << "In read action: " << tid << "\n";
#endif
    //assert(threadMap.find(tid) != threadMap.end() && "Should create the thread!");
    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->updateReachabilityMap(clapNum, action);
    thread->addNewLoad(clapNum, action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting read: " << tid << " " << action->get_uniq_name() << "\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    /*if (readValueMap.find(currentPair) == readValueMap.end()
        return 0xff;
    else {
        return readValueMap[currentPair];
    }*/

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
#ifdef DEBUG
    std::cout << "In pre_read action: " << action->get_uniq_name() << "\n";
#endif
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    //if (curSch->getRFValue(currentPair, expectedVal)) {
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {

        /*int64_t tmp = thread->getValue(readContext, addr);
        std::cout << "before fetch: " << addr << " " << action->get_uniq_name() << " " <<
                  action->getContextName() << " " << expectedVal << " " << readContext << " " << tmp << "\n";

        expectedVal = tmp;
        assert(expectedVal == tmp);*/

        /*std::pair<int64_t, std::string> tmpVal = thread->getValue(action->getContextName(), addr);
        if (tmpVal.second == expectedVal.second)
            expectedVal.first = tmpVal.first;*/
#ifdef DEBUG
        std::stringstream ss;
        ss << "fetch expect value: " << action->getContextName() << " " <<
                  action->get_uniq_name() << " " << addr << " " << expectedVal.first << " " << expectedVal.second << "\n";
        std::cout << ss.str();
#endif

        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        //pthread_mutex_unlock(&lockForRW);
        expectedVal = thread->getValue(action->getContextName(), addr);
        //pthread_mutex_lock(&lockForRW);
    }

#ifdef DEBUG
    std::stringstream ss;
    ss << "\nRead expect value: " << action->get_uniq_name() << " " << addr << " " << expectedVal.first << " " << expectedVal.second << "\n";
    std::cout << ss.str();
#endif

    action->set_value(expectedVal.first, expectedVal.second);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);

#ifdef DEBUG
    ss.str("");
    ss << "End: " << tid << " " << action->get_uniq_name() << "\n";
    std::cout << ss.str();
#endif

    double tmp = clock() - bTime;
    read_time += tmp;
    //std::cout << "### Read Time: " << read_time / double(CLOCKS_PER_SEC) << " " << tmp / double(CLOCKS_PER_SEC) << "\n";
    return expectedVal.first;
}

void Executor::execute_post_read_action(std::string tid, void* addr, int mo, int64_t val) {
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:114");
    //Action* action = new Action(ATOMIC_READ, mo, addr);
    Thread* thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    RWAction* action = dynamic_cast<RWAction*>(thread->getActionList().back());
    assert(action != 0);
    action->set_value(val);
#ifdef DEBUG
    std::cout << "Set value: " << action->get_action_str() << " " << action->get_value() << "\n";
#endif
}

double write_time = 0;
void Executor::execute_write_action(std::string tid, uint64_t clapNum, void* addr, int mo, int64_t val) {
    double bTime = clock();
    /*std::cout << "tid: *" << tid << "*\n";
    assert(threadMap.find(tid) != threadMap.end() && "Should create the thread! Executor.cpp:123");
    Thread *thread = threadMap[tid];*/
    Thread* thread = getThread(tid);
    RWAction *action = new RWAction(this, thread, ATOMIC_WRITE, mo, addr, true, val);

#ifdef DEBUG
    std::cout << "In write: " << tid << " " << thread << " " << action << "\n";
#endif
    pthread_mutex_lock(&lockForRW);
    //thread->addAction(action);
#ifdef DEBUG
    std::cout << "Before add action: " << thread << " " << action << "\n";
#endif
    addAction(thread, action, clapNum);
#ifdef DEBUG
    std::cout << "action: " << action->get_uniq_name() << "\n";
#endif
    thread->updateReachabilityMap(clapNum, action);

    //updateBuffer(tid, addr, val, action->getContextName(), mo);

#ifdef DEBUG
    std::stringstream ss;
    ss << "\nWrite value1: " << action->get_uniq_name() << " " << action->getContextName() << " " << addr << " " << val << "!\n";
    std::cout << ss.str();
#endif
    //while (thread->pause(action) == true) { std::cout << "2222\n"; }
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting write: " << action->get_uniq_name() << "\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    updateBuffer(tid, addr, val, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);

    double tmp = clock() - bTime;
    write_time += tmp;
    //std::cout << "### Write Time: " << write_time / double(CLOCKS_PER_SEC) << " " << tmp / double(CLOCKS_PER_SEC) << "\n";
}

bool Executor::execute_pre_cmp_xchg_action(std::string tid, void *addr, int mo1, int mo2,
                                            int64_t expectV, int64_t newVal, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    CmpXchgAction* action = new CmpXchgAction(this, thread, ATOMIC_CMP_XCHG, mo1, mo2, addr, expectV, newVal);

#ifdef DEBUG
    std::cout << "In pre_cmp_xchg_action: " << tid << "\n";
#endif
    pthread_mutex_lock(&lockForRW);
    //thread->addAction(action);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting cmp_xchg!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
#ifdef  DEBUG
        std::cout << "fetch value: " << action->get_uniq_name() << " " << expectedVal.first << " " << expectedVal.second << "\n";
#endif
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::stringstream ss;
    ss << "\nexpect value 64: " << action->get_uniq_name() << " " << addr
              << " " << expectedVal.first << " " << expectedVal.second << " " << expectV << " !" << newVal << "!\n";
    std::cout << ss.str();
#endif

    int64_t val = (expectedVal.first == expectV? newVal : expectedVal.first);
    action->setReadValue(expectedVal.first, expectedVal.second);
    action->setWriteValue(val);
    int64_1 retS;
    retS.val = val;
    if (expectedVal.first == expectV) {
        updateBuffer(tid, addr, newVal, action->getContextName(), mo1);
        action->setFlag(true);
        retS.flag = 1;
    } else {
        //updateLocalBuffer(tid, addr, val, action->getContextName(), mo1);
        action->setFlag(false);
        retS.flag = 0;
    }
    //retS.flag = (expectedVal == expectV? true : false);
    //retS.val = 100;
    //retS.flag = true;
    //std::cout << "ret 64: " << retS.val << " " << retS.flag << "\n";

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
#ifdef DEBUG
    std::cout << "End pre_cmp_xchg_action: " << tid << "\n";
#endif
    return retS.flag;

}

int64_t Executor::execute_pre_rmw_xchg_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_XCHG, mo, addr, val);

    pthread_mutex_lock(&lockForRW);
    //thread->addAction(action);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_xchg!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value rmw_xchg: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " " << expectedVal.second << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first, expectedVal.second);
    action->setWriteValue(val);
    updateBuffer(tid, addr, val, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_add_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_ADD, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_add!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::stringstream ss;
    ss << "\nexpect value rmw_add: " << currentPair.first << " " << currentPair.second <<
       " " << expectedVal.first << " " << expectedVal.second << " !" << val << "! " << clapNum << "\n";
    std::cout << ss.str() << "\n";
#endif

    action->setReadValue(expectedVal.first, expectedVal.second);
    action->setWriteValue(expectedVal.first+val);
    updateBuffer(tid, addr, expectedVal.first+val, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_sub_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_SUB, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_sub!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::stringstream ss;
    ss << "\nexpect value rmw_sub: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " " << expectedVal.second << " !" << val << " " << clapNum << "!\n";
    std::cout << ss.str();
#endif

    action->setReadValue(expectedVal.first);
    action->setWriteValue(expectedVal.first-val);
    updateBuffer(tid, addr, expectedVal.first-val, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_and_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_AND, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_and!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value and: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " " << expectedVal.second << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first);
    action->setWriteValue(expectedVal.first & val);
    updateBuffer(tid, addr, expectedVal.first & val, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;
}

int64_t Executor::execute_pre_rmw_nand_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_NAND, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_nand!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value nand: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " " << expectedVal.second << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first);
    action->setWriteValue(~(expectedVal.first & val));
    updateBuffer(tid, addr, ~(expectedVal.first & val), action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_or_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_OR, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_or!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value or: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " " << expectedVal.second << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first);
    action->setWriteValue(expectedVal.first | val);
    updateBuffer(tid, addr, expectedVal.first | val, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_xor_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_XOR, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_xor!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value xor: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " " << expectedVal.second << " !" << val << "!\n";
#endif
    action->setReadValue(expectedVal.first);
    action->setWriteValue(expectedVal.first ^ val);
    updateBuffer(tid, addr, expectedVal.first ^ val, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_max_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_MAX, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_max!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value max: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first);
    int64_t newVal = (expectedVal.first > val? expectedVal.first : val);
    action->setWriteValue(newVal);
    updateBuffer(tid, addr, newVal, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_umax_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_UMAX, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_umax!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value umax: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " " << expectedVal.second << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first);
    int64_t newVal = (expectedVal.first > val? expectedVal.first : val);
    action->setWriteValue(newVal);
    updateBuffer(tid, addr, newVal, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_min_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_MIN, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_min!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value min: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first);
    int64_t newVal = (expectedVal.first < val? expectedVal.first : val);
    action->setWriteValue(newVal);
    updateBuffer(tid, addr, newVal, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}

int64_t Executor::execute_pre_rmw_umin_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum) {
    Thread* thread = getThread(tid);
    RMWAction* action = new RMWAction(this, thread, ATOMIC_RMW_UMIN, mo, addr, val);

    //thread->addAction(action);
    pthread_mutex_lock(&lockForRW);
    addAction(thread, action, clapNum);
    thread->addNewLoad(clapNum, action);
    thread->updateReachabilityMap(clapNum, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        pthread_mutex_unlock(&lockForRW);
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting rmw_umin!\n";
#endif
        updatePriority(tid);
        pthread_mutex_lock(&lockForRW);
    }

    std::pair<int64_t, std::string> expectedVal;
    std::string readContext;
    /*std::map <std::pair<std::string, int>, int64_t>& readMap = curSch->getReadValueMap();
    if (readMap.find(currentPair) != readMap.end()) {
        expectedVal = readMap[currentPair];*/
    if (curSch->getRFValue2(action->getContextName(), readContext, expectedVal)) {
        thread->fetchExpectVal(action->getContextName(), addr, expectedVal);
    } else {
        expectedVal = thread->getValue(action->getContextName(), addr);
    }

#ifdef DEBUG
    std::cout << "\nexpect value umin: " << currentPair.first << " " << currentPair.second << " "
              << expectedVal.first << " !" << val << "!\n";
#endif

    action->setReadValue(expectedVal.first);
    int64_t newVal = (expectedVal.first < val? expectedVal.first : val);
    action->setWriteValue(newVal);
    updateBuffer(tid, addr, newVal, action->getContextName(), mo);

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
    pthread_mutex_unlock(&lockForRW);
    return expectedVal.first;

}


void Executor::execute_lock_action(std::string tid, void *addr) {
    Thread* thread = getThread(tid);
    Action *action = new LockAction(this, thread, ATOMIC_LOCK, addr);

    //thread->addAction(action);
    addAction(thread, action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting lock!\n";
#endif
    }

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
}

void Executor::execute_tryLock_action(std::string tid, void *addr) {
    Thread* thread = getThread(tid);
    Action *action = new LockAction(this, thread, ATOMIC_TRYLOCK, addr);

    //thread->addAction(action);
    addAction(thread, action);
    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting try_lock!\n";
#endif
    }

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
}

void Executor::execute_unLock_action(std::string tid, void *addr) {
    Thread* thread = getThread(tid);
    LockAction *action = new LockAction(this, thread, ATOMIC_UNLOCK, addr);
    //thread->addAction(action);
    addAction(thread, action);

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
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting unlock!\n";
#endif
    }

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
}

void Executor::execute_fence_action(std::string tid, int mo) {
    Thread* thread = getThread(tid);
    Action *action = new FenceAction(this, thread, ATOMIC_FENCE, mo);
    //thread->addAction(action);
    addAction(thread, action);

    std::pair<std::string, int> currentPair = std::make_pair(thread->getName(), action->get_seq_number());
    while (curSch->checkPreAction(action) == false/* && i--*/) {
        usleep(USLEEP);
#ifdef DEBUG
        std::cout << "waiting fence: " << action->get_uniq_name() << "\n";
#endif
    }

    curSch->eraseAction(std::make_pair(thread->getName(), action->get_seq_number()));
    curSch->eraseAction2(action->getContextName());
}

std::map<std::string, Thread *>& Executor::getThreadMap() {
    return threadMap;
}

void Executor::readPrefix(std::string filename) {
    std::ifstream infile(filename);
    std::string line;
    //std::cout << "Reading Prefix: \n";
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
            int64_t value = atoi(token);
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
#ifdef DEBUG
    std::cout << "Solver path: " << solverPath << "\n";
    std::cout << "Formula file: " << formulaFile << "\n";
#endif
}

void Executor::begin_solver() {
//#ifdef DEBUG
    printTrace();
//#endif

    //std::cout << "2222: " << modelChecker << "\n";
    double bTime = clock();
    solver->start();
    //std::cout << "sover return!\n";
    //scheduleNewExe();
    modelChecker->addToSolverTime(clock() - bTime);
    std::cerr << "### Solver Time: " << modelChecker->getSolverTime() / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    std::cout << "### Solver Time: " << modelChecker->getSolverTime() / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
}

void Executor::printSolutionValue() {
    std::cout << "Solution Value: \n";
    for (std::map<std::string, std::string>::iterator it = solutionValues.begin();
            it != solutionValues.end(); ++it) {
        std::cout << it->first << " " << it->second << "\n";
    }
}

double p1 = 0;
double p2 = 0;
double p3 = 0;
Schedule* Executor::generateSolutionFile(std::vector<RWAction*> reads,
                                    std::map<RWAction *, int64_t> enforcePairs,
                                    std::set<std::string> enforcedRFSet) {
                                    //std::set<std::string> binaryRelations) {
    if (solutionValues.size() == 0)
        return NULL;

    double bTime = clock();
    std::set<std::string> enforcedRFs;
    //enforcedRFs.insert(enforcedRFSet.begin(), enforcedRFSet.end());
    /*for (std::set<std::string>::iterator it = enforcedRFSet.begin();
            it != enforcedRFSet.end(); ++it) {
        std::string str = *it;
        str = str.substr(0, str.rfind("_")).substr(3);
        enforcedRFs.insert(str);
        std::cout << "dd: " << str << "\n";
    }*/

    Schedule* sch = new Schedule();
    for (std::map<RWAction*, int64_t >::iterator it = enforcePairs.begin();
            it != enforcePairs.end(); ++it) {
        enforcedRFs.insert(it->first->get_uniq_name());
        sch->addPrefixContext(it->first->getContextName(), it->second);
        //std::cout << "dd1: " << it->first->get_uniq_name() << "\n";
    }

    sch->setConsistentConstraint(solver->getConsistentConstraint());
    sch->setCommonDeclare(solver->getCommonDeclare());
    //std::cout << "setting2: " << solver->getConsistentConstraint() << "\n";
#ifdef DEBUG
    std::cout << "Generate new schedule: " << sch << "\n";
#endif
    //curSch->clearData();

    std::map<std::string, int>& curPrefixMap = curSch->getPrefixMap();
    const std::map<std::string, int> &schPreMap = sch->getPrefixMap();
    for (std::vector<RWAction*>::iterator it = reads.begin();
            it != reads.end(); ++it) {
        RWAction* action = *it;
        /*if (RMWAction* tmp = dynamic_cast<RMWAction*>(action))
            sch->addPrefixContext(action->getContextName(), tmp->getReadValue());
        else
            sch->addPrefixContext(action->getContextName(), action->get_value());*/

        std::string threadName = action->get_thread()->getName();
        int seq = action->get_seq_number();
        if (curPrefixMap.find(threadName) != curPrefixMap.end() &&
                seq < curPrefixMap[threadName])
            seq = curPrefixMap[threadName];

        std::map<std::string, int>& pMap = sch->getPrefixMap();
        if (pMap.find(threadName) == pMap.end() ||
                seq > schPreMap.find(threadName)->second)
            sch->updatePrefix(threadName, seq);
    }

    std::map<std::string, int>& prefixMap = sch->getPrefixMap();
    /*std::cout << "222: " << prefixMap.size() << "\n";
    for (std::map<std::string, int>::iterator it = prefixMap.begin();
            it != prefixMap.end(); ++it) {
        std::cout << "schPrefix: " << it->first << " " << it->second << "\n";
    }*/

    //std::cout << "111: " << sch->getPrefixMap().size() << "\n";
    for (std::map<std::string, int>::iterator it = curPrefixMap.begin();
            it != curPrefixMap.end(); ++it) {
        //std::cout << "curPrefix: " << it->first << " " << it->second << "\n";
        if (prefixMap.find(it->first) == prefixMap.end()) {
            sch->updatePrefix(it->first, it->second);
            //std::cout << "add: " << it->first << " " << it->second << "\n";
        }
    }

    std::map<std::string, int64_t> preContexts = curSch->getPrefixContexts();
    for (std::map<std::string, int64_t>::iterator it = preContexts.begin();
            it != preContexts.end(); ++it) {
        sch->addPrefixContext(it->first, it->second);
    }

    //std::cout << "prefixMap: " << sch->getPrefixMap().size() << " " << curPrefixMap.size() << "\n";
    assert(sch->getPrefixMap().size() >= curPrefixMap.size());

    bool flag = false;
    std::string inputName = "Input" + util::stringValueOf(inputIndex-1);
    //std::ofstream outfile(inputName, std::ios::app);

    std::map<std::string, int> maxIndex;
    bool changed = false;
    unsigned preSize = 0;
    p1 += clock() - bTime;
    std::cout << "### P1 time: " <<
                      p1 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    bTime = clock();
    bool first = true;
    while (preSize != enforcedRFs.size() || changed) {

        preSize = enforcedRFs.size();
        changed = false;
        //std::cout << "preSize: " << preSize << " " << enforcedRFs.size() << "\n";
        for (std::map<std::string, std::string>::iterator it = solutionValues.begin();
             it != solutionValues.end(); ++it) {
            std::string name = it->first;
            std::string val = it->second;
            //std::cout << "handle: " << name << " " << val << "\n";
            if (first && name.at(0) == 'B' && name.find("B_") != std::string::npos) {
                if (val != "1" && val != "0")
                    continue;

                //if (binaryRelations.find(name) == binaryRelations.end())
                //    continue ;

                name = name.substr(2);
                char action[10000];
                std::strcpy(action, name.c_str());
                char *token = strtok(action, "_-");
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
                    int index1 = util::intValueOf(seq_num1);
                    int index2 = util::intValueOf(seq_num2);
                    Action *action1 = threadMapByName[fname1]->getActionList()[index1];
                    Action *action2 = threadMapByName[fname2]->getActionList()[index2];
                    assert(action1 != NULL && action2 != NULL);
                    //std::cout << "actions: " << action1 << " " << action2 << "\n";
                    //assert(dynamic_cast<RWAction*>(action1) && dynamic_cast<RWAction*>(action2));
                    std::cout << "aaa: " << val << " " << action1->getContextName() << " " << action2->getContextName() << "\n";
                    if (val == "1") {
                        sch->updatePreAction(std::make_pair(fname2, index2),
                                             std::make_pair(fname1, index1));
                        sch->updatePreAction2(action2->getContextName(), action1->getContextName());
                        //sch->updatePreAction(std::make_pair(fname2+"*"+action2->getContextName(), index2),
                        //                     std::make_pair(fname1+"*"+action1->getContextName(), index1));
                    } else {
                        sch->updatePreAction(std::make_pair(fname1, index1),
                                             std::make_pair(fname2, index2));
                        sch->updatePreAction2(action1->getContextName(), action2->getContextName());
                        //sch->updatePreAction(std::make_pair(fname1+"*"+action1->getContextName(), index1),
                        //                     std::make_pair(fname2+"*"+action2->getContextName(), index2));
                    }
                    sch->setActionMap(action1->getContextName(), std::make_pair(fname1, index1));
                    sch->setActionMap2(std::make_pair(fname1, index1), action1->getContextName());
                    sch->setActionMap(action2->getContextName(), std::make_pair(fname2, index2));
                    sch->setActionMap2(std::make_pair(fname2, index2), action2->getContextName());
                }
            } else if (name.at(0) == 'R' && name.find("RF_") != std::string::npos) {
                if (val != "1") continue;

                name = name.substr(3);
                char action[10000];
                std::strcpy(action, name.c_str());
                char *token = strtok(action, "_-");
                std::string fname1 = token;
                token = strtok(NULL, "_-");
                std::string seq_num1 = token;
                token = strtok(NULL, "_-");
                std::string fname2 = token;
                token = strtok(NULL, "_-");
                std::string seq_num2 = token;
                //int64_t val;
                std::pair<int64_t, std::string> item;

                /*if (enforcedRFs.find(fname1 + "-" + seq_num1) == enforcedRFs.end() &&
                        (maxIndex.find(fname1) == maxIndex.end() || maxIndex[fname1] <= util::intValueOf(seq_num1)))
                    continue;*/

                bool flag = false;
                for (std::map<std::string, Thread *>::iterator tit = threadMap.begin();
                     tit != threadMap.end(); ++tit) {
                    if (tit->second->getName() == fname2) {
                        std::vector<Action *>& list = tit->second->getActionList();
                        Action *action = list[util::intValueOf(seq_num2)];
                        //std::cout << "action: " << action << " " << fname2 << " " << seq_num2 << " " << action->get_action_str() << "\n";
                        RWAction *write = dynamic_cast<RWAction *>(action);
                        assert(write != NULL);
#ifdef DEBUG
                        std::cout << "write: " << write->get_uniq_name() << " " << write->getContextName() << "\n";
#endif

                        int64_t writeVal = write->get_value();
                        item.second = write->getContextName();
                        if (RMWAction *rmAction = dynamic_cast<RMWAction *>(write)) {
                            enforcedRFs.insert(write->get_uniq_name());
                            //std::map<int, std::set<Action*> > rMap = rmAction->get_thread()->getReachabilityMap();
                            if (enforcedRFs.find(fname1 + "-" + seq_num1) != enforcedRFs.end()) {
                                std::set<Action*> list = rmAction->get_thread()->getReachabilityMap(rmAction->get_seq_number());//rMap[rmAction->get_seq_number()];
#ifdef DEBUG
                                std::cout << "reachbility list1: " << list.size() << "\n";
#endif
                                for (std::set<Action *>::iterator rIt = list.begin(); rIt != list.end(); ++rIt)
                                    enforcedRFs.insert((*rIt)->get_uniq_name());
                            }

                            writeVal = rmAction->getWriteValue();
                            std::cout << "1: " << writeVal << "\n";
                            if (enforcePairs.find(write) != enforcePairs.end()) {
                                if (CmpXchgAction *cmpAction = dynamic_cast<CmpXchgAction *>(rmAction)) {
                                    writeVal = cmpAction->computeWriteValue(enforcePairs[write]);
                                    std::cout << "2: " << writeVal << " " << enforcePairs[write] << "\n";
                                } else {
                                    writeVal = rmAction->computeWriteValue(enforcePairs[write]);
                                    std::cout << "3: " << writeVal << " " << enforcePairs[write] << "\n";
                                }
                            }

                            if (CmpXchgAction *cmpAction = dynamic_cast<CmpXchgAction*>(rmAction)) {
                                if ((std::find(reads.begin(), reads.end(), write) == reads.end() && !cmpAction->getFlag())/* ||
                                        (std::find(reads.begin(), reads.end(), write) != reads.end() &&
                                                cmpAction->get_expectVal() != enforcePairs[write])*/) {
                                        item.second = cmpAction->getReadFromContext();
                                        std::cout << "hhhh: " << item.second << " " << cmpAction->get_uniq_name() << " "
                                                << cmpAction->getReadFromContext() << "\n";
                                } else if (std::find(reads.begin(), reads.end(), write) != reads.end()) {
                                    item.second = (sch->getReadValueMap())[std::make_pair(fname2, util::intValueOf(seq_num2))].second.second;
                                    std::cout << "hhh2: " << item.second << "\n";
                                }
                            }

                        } else {
                            if (enforcedRFs.find(fname1 + "-" + seq_num1) != enforcedRFs.end()) {
                                std::set<Action *> list = write->get_thread()->getReachabilityMap(
                                        write->get_seq_number());//rMap[rmAction->get_seq_number()];
#ifdef DEBUG
                                std::cout << "reachbility list2: " << write->get_uniq_name() << " " << list.size()
                                          << "\n";
#endif
                                for (std::set<Action *>::iterator rIt = list.begin(); rIt != list.end(); ++rIt) {
#ifdef DEBUG
                                    std::cout << "add enforce: " << (*rIt)->get_uniq_name() << "\n";
#endif
                                    enforcedRFs.insert((*rIt)->get_uniq_name());
                                }
                            }
                        }

                        item.first = writeVal;
                        flag = true;
                        std::cout << "Write val: " << writeVal << "\n";

                        int index = util::intValueOf(seq_num2);
                        if (maxIndex.find(fname2) == maxIndex.end()) {
                            maxIndex[fname2] = index;
                            changed = true;
                        } else {
                            if (index > maxIndex[fname2]) {
                                maxIndex[fname2] = index;
                                changed = true;
                            }
                        }
                        break;
                    }
                }

                assert(flag);
                //outfile << "RF: " << fname1 << " " << seq_num1 << " " << val << "\n";

                Action* a = threadMapByName[fname1]->getActionList()[util::intValueOf(seq_num1)];
                if (enforcedRFs.find(fname1 + "-" + seq_num1) == enforcedRFs.end()) {
                    std::cout << "org val: " << a->get_uniq_name() << " " << item.first << "\n";
                    //val = dynamic_cast<RWAction*>(a)->get_value(); // the same value as the current trace
                    sch->updateReadValueMap2(std::make_pair(fname1, util::intValueOf(seq_num1)), a->getContextName(), item);
#ifdef DEBUG
                    std::cout << "RF1: " << fname1 << " " << seq_num1 << " " << item.first << " " << item.second << "\n";
#endif
                } else {
                    sch->updateReadValueMap(std::make_pair(fname1, util::intValueOf(seq_num1)), a->getContextName(), item);
#ifdef DEBUG
                    std::cout << "RF: " << fname1 << " " << seq_num1 << " " << item.first << " " << item.second << "\n";
#endif
                }
            }
        }

        first = false;
    }

    p2 += clock() - bTime;
    std::cout << "### P2 time: " <<
              p2 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    bTime = clock();

    // add the prefix of the current schedule!
    std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >& rfMap = curSch->getReadValueMap();
    std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >& newrfMap = sch->getReadValueMap();
    //sch->getReadValueMap().insert(rfMap.begin(), rfMap.end());
    for (std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator it = newrfMap.begin();
            it != newrfMap.end(); ++it) {
        if (maxIndex.find(it->first.first) == maxIndex.end())
            maxIndex[it->first.first] = it->first.second;
        else
            maxIndex[it->first.first] =
                    it->first.second > maxIndex[it->first.first] ? it->first.second : maxIndex[it->first.first];
    }

    /*for (std::map<std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator it = rfMap.begin();
            it != rfMap.end(); ++it) {
        if (newrfMap.find(it->first) == newrfMap.end()) {
            if (it->first.second < maxIndex[it->first.first]) {
                sch->updateReadValueMap(it->first, it->second.first, it->second.second);
                std::cout << "RF0: " << it->first.first << " " << it->first.second << " "
                          << it->second.second.first << " " << it->second.second.second << "\n";
            }
        }
    }*/

    //sch->deletePreAction(maxIndex);
    sch->deletePreAction2();

    //sch->deletePreAction(sch->getPrefixMap());

    //outfile.flush();
    //outfile.close();
    //std::cout << "pppppp: " << sch << "\n";
    //sch->print();
    //schedules.push_back(sch);
    getChecker()->addSch(sch, getCurSch());

    p3 += clock() - bTime;
    std::cout << "### P3 time: " <<
              p3 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    return sch;
}

bool Executor::checkFairness(std::map <std::pair<std::string, int>, int64_t> valueMap ) {

    //std::map<std::pair<std::string, int>, int64_t > fMap;
#ifdef DEBUG
    std::cout << "checking fairness: " << valueMap.size() << "\n";
#endif
    std::map<std::pair<std::string, uint64_t>, std::pair<int64_t, int64_t> > numMap;
    for (std::map <std::pair<std::string, int>, int64_t>::iterator it = valueMap.begin();
            it != valueMap.end(); ++it) {
#ifdef DEBUG
        std::cout << it->first.first << " " << it->first.second << " " << it->second << "\n";
#endif
        std::string threadName = it->first.first;
        Thread *thread = threadMapByName[threadName];
        Action *curAction = thread->getActionList()[it->first.second];
        uint64_t clapNum = curAction->getClapNum();
        int64_t value = it->second;

        std::string id = it->first.first + "_" + curAction->get_location_str();
        std::pair<std::string, uint64_t> pair = std::make_pair(id, clapNum);
        if (numMap.find(pair) == numMap.end())
            numMap[pair] = std::make_pair(value, 0);
        else {
            if (numMap[pair].first == value) {
                numMap[pair].second++;
                if (numMap[pair].second >= UNFAIRNUM) {
#ifdef DEBUG
                    std::cout << "Identify an unfair schedule!\n";
#endif
                    return false;
                }
            } else
                numMap[pair] = std::make_pair(value, 0);
        }
    }

    return true;
}

/*bool Executor::checkFairness(std::map <std::pair<std::string, int>, int64_t> valueMap ) {
    std::string preThreadName = "";
    Action* preAction = NULL;
    int64_t preValue;
    int num = 0;
    //std::cout << "Check Fairness!: " << valueMap.size() << "\n";
    std::map<std::pair<std::string, int>, int64_t > fMap;
    for (std::map <std::pair<std::string, int>, int64_t>::iterator it = valueMap.begin();
            it != valueMap.end(); ++it) {
        std::string threadName = it->first.first;
        Thread* thread = threadMapByName[threadName];
        //std::cout << "thread name: " << threadName <<  " " << thread << "\n";
        Action* curAction = thread->getActionList()[it->first.second];
        int64_t value = it->second;
        //std::cout << "fair: " << threadName << " " << curAction->get_location_str() << " " << value << "\n";
        if (preAction == NULL) {
            preThreadName = threadName;
            preAction = curAction;
            preValue = value;
            num = 0;
            fMap[it->first] = it->second;
            continue ;
        } else  {
            if (preThreadName == threadName &&
                    preAction->get_location_str() == curAction->get_location_str() &&
                    preValue == value) {
                num++;
                if (num >= UNFAIRNUM) {
                    for (std::map <std::pair<std::string, int>, int64_t>::iterator it2 = fMap.begin();
                         it2 != fMap.end(); ++it2) {
                        std::cout << "xx: " << it2->first.first << " " << it2->first.second << " " << it2->second << "\n";
                    }

                    getChecker()->addFailedCheck(fMap);
                    std::cout << "Identify an unfair schedule!\n";
                    return false;
                }

                fMap[it->first] = it->second;
                continue ;
            } else {
                preThreadName = threadName;
                preAction = curAction;
                preValue = value;
                num = 0;
                fMap.clear();
                fMap[it->first] = it->second;
                continue ;
            }
        }
    }

    return true;
}*/


void Executor::resetSolver() {
    solver->getSolver()->openOutputFile();
    solver->getSolver()->resetDeclaredVars();
    solutionValues.clear();
}

/*void Executor::scheduleNewExe() {
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
}*/

void Executor::updateBuffer(std::string tid, void* loc, int64_t val, std::string context, int order) {
    pthread_mutex_lock(&lockForBuffer);
    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
            it != threadMap.end(); ++it) {
        Thread* thread = it->second;

        if (it->first == tid)
            thread->clearBuffer(loc);

        thread->updateBuffer(loc, val, context, order);
    }
    pthread_mutex_unlock(&lockForBuffer);
}

void Executor::updateLocalBuffer(std::string tid, void* loc, int64_t val, std::string context, int order) {
    pthread_mutex_lock(&lockForBuffer);
    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
            it != threadMap.end(); ++it) {
        Thread* thread = it->second;

        if (it->first == tid) {
            thread->clearBuffer(loc);
            thread->updateBuffer(loc, val, context, order);
            break ;
        }
    }
    pthread_mutex_unlock(&lockForBuffer);
}


void Executor::updateDefUseList(std::string tid, uint64_t clapNum, std::vector<uint64_t > vec) {
    Thread* thread = getThread(tid);
    if (thread)
        thread->addClapList(clapNum, vec);
}

Action* Executor::getAction(std::string tid, int seq_num) {
    Thread* thread = getThread(tid);
    return thread->getActionList()[seq_num];
}

void Executor::updateTrackedBID(std::string tid, uint64_t bid) {
    std::cout << "update bid: " << bid << "\n";
    Thread* thread = getThread(tid);
    if (thread)
        thread->setTrackedBID(bid);
}

void Executor::clearTrackedBID(std::string tid) {
    Thread* thread = getThread(tid);
    if (thread)
        thread->clearBID();
}

void Executor::setCurrentBid(std::string tid, uint64_t bid) {
    Thread* thread = getThread(tid);
    if (thread)
        thread->setCurrentBid(bid);
}

void Executor::handlePHI(std::string tid, uint64_t clapNum,
                         std::vector<uint64_t> vec1, std::vector<uint64_t> vec2) {
    Thread* thread = getThread(tid);
    if (thread)
        thread->handlePHI(clapNum, vec1, vec2);
}

void Executor::handleFuncBegin(std::string tid, std::string name) {
    Thread* thread = getThread(tid);
    //std::cout << "func begin\n";
    if (thread != NULL)
        thread->handleFuncBegin(name);
}

void Executor::handleFuncEnd(std::string tid) {
    Thread* thread = getThread(tid);
    if (thread != NULL)
        thread->handleFuncEnd();
}

void Executor::handleLoopDep(int bid, std::string name) {
    if (loopDepArray.find(bid) == loopDepArray.end())
        return ;

    std::cout << "333\n";
    setCurrentBid(name, bid);
    std::set<int> array = loopDepArray[bid];
    Thread* t = getThread(name);
    if (t)
        return ;

    std::vector<Action*> &aList = t->getActionList();
    int beginIndex = 0;
    std::cout << "444\n";
    setCurrentBid(name, bid);
    std::cout << "666\n";
    setCurrentBid(name, bid);
    if (loopDepActionMap.find(bid) != loopDepActionMap.end() &&
            loopDepActionMap[bid].size() != 0) {
        std::cout << "bbb: " << bid << " " << loopDepActionMap[bid].size() << "\n";
        beginIndex = loopDepActionMap[bid].back()->get_seq_number();
    }

    std::cout << "555\n";
    setCurrentBid(name, bid);
    for (std::vector<Action*>::iterator it = aList.begin();
         it != aList.end(); ++it) {
        Action* action = *it;
        if (action->get_seq_number() <= beginIndex) continue;

        if (array.find(action->getClapNum()) != array.end())
            loopDepActionMap[bid].push_back(action);
    }
    std::cout << "In handleLoopDep: " << bid << " " << loopDepActionMap[bid].size() << "\n";
}

void Executor::printTrace() {
    std::stringstream ss;
    std::cout << "Current Trace: " << threadMap.size() << "\n";
    std::map<std::string, Thread*> threads;
    for (std::map<std::string, Thread*>::iterator it = threadMap.begin();
         it != threadMap.end(); ++it) {
        threads[it->second->getName()] = it->second;
    }
    for (std::map<std::string, Thread*>::iterator it = threads.begin();
            it != threads.end(); ++it) {
        Thread* thread = it->second;
        std::string trace = thread->printTrace();
        //std::cout << "trace: " << it->first << " " << thread->getName() << " " << trace << "\n";
        ss << " " << trace << " ";
    }

    ss << "\n";
    std::cout << "Trace code: " << ss.str() << "\n";

    std::ofstream outfile("Trace", std::ios::app);
    outfile << ss.str();
    outfile.flush();
    outfile.close();
}
