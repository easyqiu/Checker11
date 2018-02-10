//
// Created by aser on 6/8/17.
//

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <map>
#include <set>
#include <vector>
#include <stack>
#include <dirent.h>
#include <cassert>
#include <cstring>
#include <algorithm>

#include "ConstraintModelGenerator.h"
#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Solver.h"
#include "Util.h"
#include "Schedule.h"
#include "ModelChecker.h"
#include "checker.hpp"
//#include "Parameters.h"

#define MAX_LINE_SIZE 100
#define SKIPREDUNDANCY true
#define USEMODEL1 true
//#define DEBUG

using namespace checker;
using namespace std;

Solver::Solver(Executor* exe) {
    //std::cout << "hhhh: " << exe << "\n";
    this->exe = exe;
    z3solver = new Z3Solver(exe);
    //std::cout << "In Solver: " << exe->getChecker() << "\n";
    //std::cout << " " << exe->getChecker()->getSolver() << "\n";
    //z3solver = exe->getChecker()->getSolver();
    //formulaFile = "formulaFile";
    commonCSConstraint = "";
    commonDeclare = "";
}

Solver::~Solver() {
    z3solver->closeZ3();
    delete z3solver;
}

void Solver::parse_constraints(string filename) {
    ifstream fin;
    fin.open(filename);

    if (!fin.good()) {
        cerr << " -> Error opening file "<< filename <<".\n";
        fin.close();
        exit(1);
    }

    std::cout << ">> Parsing " << filename << endl;

    while (!fin.eof())
    {
        // read an entire line into memory
        char buf[MAX_LINE_SIZE];
        fin.getline(buf, MAX_LINE_SIZE);
        char* token;
        string event = buf;
        switch (buf[0]) {

        }
    }

    fin.close();
}

void Solver::parseTrace() {
    DIR* dirFile = opendir(".");
    if ( dirFile )
    {
        struct dirent* hFile;
        while (( hFile = readdir( dirFile )) != NULL ) {
            if ( !strcmp( hFile->d_name, "."  )) continue;
            if ( !strcmp( hFile->d_name, ".." )) continue;

            // in linux hidden files all start with '.'
            if (hFile->d_name[0] == '.' ) continue;

            if ( strstr( hFile->d_name, "T_" )) {
                char filename[250];
                strcpy(filename, hFile->d_name);

                //** extract the thread id to serve as key in the map
                string tid = filename;
                tid = tid.substr(tid.find("T")+1,tid.find("_")-1);

                parse_constraints(filename);

            }
        }
        closedir( dirFile );
    }
}

void Solver::collectData() {
    std::map<std::string, Thread*>& tMap = exe->getThreadMap();
    for (std::map<std::string, Thread*>::iterator it = tMap.begin();
            it != tMap.end(); ++it) {
        std::string name = it->first;
        Thread* thread = it->second;

        std::vector<Action*>& actionList = thread->getActionList();
        for (unsigned i=0; i<actionList.size(); ++i) {
            Action *action = actionList[i];

            action_type type = action->get_type();
            switch (type) {
                case MODEL_FIXUP_RELSEQ:
                    break;
                case THREAD_CREATE:
                    break;
                case THREAD_START:
                    break;
                case THREAD_YIELD:
                    break;
                case THREAD_JOIN:
                    break;
                case THREAD_FINISH:
                    break;
                case ATOMIC_UNINIT:
                    break;
                case ATOMIC_READ: {
                    RWAction* rwAction = dynamic_cast<RWAction*>(action);
                    readset[action->get_location_str()].push_back(rwAction);
                    if (rwAction->isSCAction())
                        scActions.insert(action);
                    break;
                }
                case ATOMIC_WRITE: {
                    RWAction* rwAction = dynamic_cast<RWAction*>(action);
                    writeset[action->get_location_str()].push_back(rwAction);
                    if (rwAction->isSCAction())
                        scActions.insert(action);
                    break;
                }
                case ATOMIC_RMW:
                case ATOMIC_FENCE: {
                    FenceAction* fenceAction = dynamic_cast<FenceAction*>(action);
                    fenceset.insert(fenceAction);
                    if (fenceAction->isSCAction())
                        scActions.insert(action);
                    break;
                }

                case ATOMIC_CMP_XCHG: {
                    RWAction* rwAction = dynamic_cast<RWAction*>(action);
                    CmpXchgAction *cmpAction = dynamic_cast<CmpXchgAction *>(action);
                    readset[action->get_location_str()].push_back(rwAction);
                    if (cmpAction->getFlag())
                        writeset[action->get_location_str()].push_back(rwAction);
                    if (cmpAction->isSCAction())
                        scActions.insert(action);
                    break;
                }

                case ATOMIC_RMW_XCHG:
                case ATOMIC_RMW_ADD:
                case ATOMIC_RMW_SUB:
                case ATOMIC_RMW_AND:
                case ATOMIC_RMW_NAND:
                case ATOMIC_RMW_OR:
                case ATOMIC_RMW_XOR:
                case ATOMIC_RMW_MAX:
                case ATOMIC_RMW_MIN:
                case ATOMIC_RMW_UMAX:
                case ATOMIC_RMW_UMIN:
                {
                    RWAction* rmwAction = dynamic_cast<RWAction*>(action);
                    readset[action->get_location_str()].push_back(rmwAction);
                    writeset[action->get_location_str()].push_back(rmwAction);
                    if (rmwAction->isSCAction())
                        scActions.insert(action);
                    break;
                }

                case ATOMIC_RMWR:
                case ATOMIC_RMWC:
                case ATOMIC_INIT:
                    break;
                case ATOMIC_LOCK:
                    scActions.insert(action);
                    break;
                case ATOMIC_UNLOCK: {
                    scActions.insert(action);
                    std::string loc = action->get_location_str();
                    LockAction *cur = dynamic_cast<LockAction *>(action);
                    Thread *thread = action->get_thread();
                    std::vector<Action *>& list = thread->getActionList();
                    Action *lock = list[cur->get_pairedNum()];
                    assert(dynamic_cast<LockAction *>(lock));
                    lockset[loc].push_back(std::make_pair(
                            dynamic_cast<LockAction *>(lock), dynamic_cast<LockAction *>(action)));
                    //std::cout << "lock pair: " << lock->get_uniq_name() << " " << action->get_uniq_name() << "\n";
                    break;
                }
                case ATOMIC_TRYLOCK:
                case ATOMIC_WAIT:
                case ATOMIC_NOTIFY_ONE:
                case ATOMIC_NOTIFY_ALL:
                default:
                    break;
            }
        }
    }
}



// generate the constraints that 'read' reads value 'val'
void Solver::enforceRW(RWAction *read, int64_t val) {
    string addr = read->get_location_str();
    vector<RWAction*> writes = writeset[addr];

    for (vector<RWAction*>::iterator it = writes.begin();
            it != writes.end(); ++it) {
        RWAction* write = *it;
        if (write->get_value() == val) {

        }
    }
}

bool basicFlag = false;
std::string basicConstraint = "";
bool moFlag = false;
std::string moConstraint = "";
bool scFlag = false;
std::string scConstraint = "";
bool lockFlag = false;
std::string lockConstraint = "";
bool consistentFlag = false;
std::string consistentConstraint = "";
std::set<std::string> declaredVars;
// generate a schedule which enforces 'read' reads value 'val'.

map<std::pair<std::string, int>, int64_t> pairs;
std::map<std::string, int64_t > prefix;
double checkTime = 0;
double cTime = 0, prepareTime = 0, lastPart_time = 0;
double prepareTime1 = 0, prepareTime2 = 0, prepareTime3 = 0, prepareTime4 = 0;
double generateScheduleTime = 0, generateSolutionTime = 0;
bool Solver::generateSchedule(RWAction *read, int64_t val, std::set<RWAction*> commonPrefix) {

    //std::cout << "In generateSchedule!\n";
    z3solver->clearFormula();
    pairs.clear();
    prefix.clear();
#ifdef DEBUG
    std::cout << "checking: read:val " << read->get_uniq_name() << " " << val << "\n";
#endif
    map<RWAction *, int64_t> enforcePairs;
    if (read != NULL) {
        enforcePairs[read] = val;
        set<Action*> mhbList = (read->get_thread()->getReachabilityMap(read->get_seq_number()));//[read->get_seq_number()];
        //set<Action *> mhbList = identifyMHBRelation(read);
        //set<Action*> list = identifyMHBRelation(write);
        //mhbList.insert(list.begin(), list.end());
#ifdef DEBUG
        std::cout << "mhbList: " << mhbList.size() << "\n";
#endif
        for (set<Action *>::iterator it = mhbList.begin();
             it != mhbList.end(); ++it) {
            Action *action = *it;
            RWAction *r = dynamic_cast<RWAction *>(action);
            if (r == NULL || r->is_write() == true)
                continue;

            int64_t readVal = r->get_value();
            if (dynamic_cast<RMWAction*>(r))
                readVal = dynamic_cast<RMWAction*>(r)->getReadValue();

            if (r == read)
                readVal = val;
            if (enforcePairs.find(r) != enforcePairs.end() &&
                    enforcePairs[r] != readVal) {
#ifdef DEBUG
                std::cout << "Indentify inconsistency1!: " << r->get_uniq_name() << "\n";
#endif
                return false;
            }

            enforcePairs[r] = readVal;
#ifdef DEBUG
            std::cout << "enforce: " << r << " " << r->get_uniq_name() << " " << r->getReadFromContext() << " " << enforcePairs[r] << " " << "\n";
#endif
        }

        map<std::string, int64_t > preContexts = exe->getCurSch()->getPrefixContexts();
        for (map<string, int64_t >::iterator it = preContexts.begin();
                it != preContexts.end(); ++it) {
            string context = it->first;
            Thread* t = exe->getThreadByName(context.substr(0, context.find("*")));
            RWAction* r;
            bool flag = false;
            for (vector<Action*>::iterator it1 = t->getActionList().begin();
                 it1 != t->getActionList().end(); ++it1) {
                Action* tmp = *it1;
                if (dynamic_cast<RWAction*>(tmp) && tmp->getContextName() == context) {
                    //assert(dynamic_cast<RWAction*>(tmp));
                    r = dynamic_cast<RWAction*>(tmp);
                    flag = true;
                    break;
                }
            }

            if (!flag) {
                std::cout << "enforce error: " << context << "\n";
            } else
                std::cout << "enforce context: " << context << "\n";
            assert(flag);

            int64_t val;
            if (RMWAction* tmp = dynamic_cast<RMWAction*>(r))
                val = tmp->getReadValue();
            else
                val = r->get_value();

            if (enforcePairs.find(r) != enforcePairs.end() &&
                    enforcePairs[r] != val) {
                std::cout << "Inconsistency from enforce pair!\n";
                return false;
            }

            enforcePairs[r] = val;
#ifdef DEBUG
            std::cout << "enforce4: " << r << " " << r->get_uniq_name() << " " << r->getContextName() << " " << r->getReadFromContext() << " " << enforcePairs[r] << " " << "\n";
#endif

            mhbList = (r->get_thread()->getReachabilityMap(r->get_seq_number()));//[read->get_seq_number()];
#ifdef DEBUG
            std::cout << "mhbList: " << mhbList.size() << "\n";
#endif
            set<Action*> newList = mhbList;
            //while (newList.size() != 0) {
                for (set<Action *>::iterator it = newList.begin();
                     it != newList.end(); ++it) {
                    Action *action = *it;
                    RWAction *r2 = dynamic_cast<RWAction *>(action);
                    if (r2 == NULL || r2->is_write() == true)
                        continue;

                    int64_t readVal = r2->get_value();
                    if (dynamic_cast<RMWAction *>(r2))
                        readVal = dynamic_cast<RMWAction *>(r2)->getReadValue();

                    if (r2 == read) {
                        if (readVal != val) {
                            std::cout << "Identify inconsistency here1!\n";
                            return false;
                        }
                        readVal = val;
                    }

                    if (enforcePairs.find(r2) != enforcePairs.end() &&
                        enforcePairs[r2] != readVal) {
#ifdef DEBUG
                        std::cout << "Indentify inconsistency1: " << r2->get_uniq_name() << "\n";
#endif
                        return false;
                    }

                    if (r2 == read && readVal != val) {
                        std::cout << "Identify inconsistency here2!\n";
                        return false;
                    }

                    enforcePairs[r2] = readVal;
#ifdef DEBUG
                    std::cout << "enforce44: " << r2 << " " << r2->get_uniq_name() << " " << r2->getContextName() << " "
                              << r2->getReadFromContext() << " " << enforcePairs[r2] << " " << "\n";
#endif
                    if (enforcePairs.find(r2) == enforcePairs.end())
                        newList.insert(action);
                }
            //}


        }

        /*map<string, int> &pre = exe->getCurSch()->getPrefixMap();
        std::map <std::pair<std::string, int>, std::pair<std::string, int64_t> >& readMap = exe->getCurSch()->getReadValueMap();
        for (std::map<string, int>::iterator it = pre.begin();
                it != pre.end(); ++it) {
            string context = readMap[make_pair(it->first, it->second)].first;
            Thread* t = exe->getThreadByName(it->first);

            RWAction* r;
            bool flag = false;
            if (t->getActionList().size() > it->second) {
                Action* a = t->getActionList()[it->second];
                if (a->getContextName() == context) {
                    r = dynamic_cast<RWAction*>(a);
                    flag = true;
                }
            }

            if (!flag) {
                for (vector<Action*>::iterator it1 = t->getActionList().begin();
                        it1 != t->getActionList().end(); ++it1) {
                    Action* tmp = *it1;
                    if (dynamic_cast<RWAction*>(tmp) && tmp->getContextName() == context) {
                        //assert(dynamic_cast<RWAction*>(tmp));
                        r = dynamic_cast<RWAction*>(tmp);
                        flag = true;
                        break;
                    }
                }
            }

            if (!flag) {
                std::cout << "enforce error: " << it->first << " " << it->second << "\n";
            }
            assert(flag);

            int64_t val;
            if (RMWAction* tmp = dynamic_cast<RMWAction*>(r))
                val = tmp->getReadValue();
            else
                val = r->get_value();

            if (enforcePairs.find(r) != enforcePairs.end() &&
                    enforcePairs[r] != val) {
                std::cout << "Inconsistency from enforce pair!\n";
                return false;
            }

            enforcePairs[r] = val;
#ifdef DEBUG
            std::cout << "enforce4: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
#endif

        }*/

        /*std::map<std::string, Thread*>& tMap = exe->getThreadMap();
        std::map <std::pair<std::string, int>, std::pair<std::string, int64_t> >& readMap = exe->getCurSch()->getReadValueMap();
        //std::cout << "curSch: " << exe->getCurSch() << " " << readMap.size() << "\n";
        for (std::map<std::pair<std::string, int>, std::pair<std::string, int64_t> >::iterator it = readMap.begin();
                it != readMap.end(); ++it) {
            Thread* thread = NULL;
            for (std::map<std::string, Thread*>::iterator tIt = tMap.begin();
                    tIt != tMap.end(); ++tIt) {
                if (tIt->second->getName() == it->first.first) {
                    thread = tIt->second;
                    break ;
                }
            }

            assert(thread != NULL && "No expected thread is identified!\n");

            Action* action = exe->getAction(thread->get_id(), it->first.second);
            RWAction* r = dynamic_cast<RWAction*>(action);

            if (r != NULL && r->getContextName() == it->second.first) {
                if (enforcePairs.find(r) != enforcePairs.end() &&
                    enforcePairs[r] != it->second.second) {
#ifdef DEBUG
                    std::cout << "Indentify inconsistency2!\n";
#endif
                    return false;
                }

                enforcePairs[r] = it->second.second;
#ifdef DEBUG
                std::cout << "enforce11: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
#endif
            } else {
                std::vector<Action*> &actions = thread->getActionList();
                for (std::vector<Action*>::iterator it1 = actions.begin();
                        it1 != actions.end(); ++it1) {
                    Action* tmp = *it1;
                    if (tmp->getContextName() == it->second.first) {
                        assert(dynamic_cast<RWAction*>(tmp));

                        r = dynamic_cast<RWAction*>(tmp);
                        if (enforcePairs.find(r) != enforcePairs.end() &&
                            enforcePairs[r] != it->second.second) {
#ifdef DEBUG
                            std::cout << "Indentify inconsistency3!\n";
#endif
                            return false;
                        }

                        enforcePairs[r] = it->second.second;
#ifdef DEBUG
                        std::cout << "enforce22: " << r << " " << r->get_uniq_name() << " " << it->second.second << " " << "\n";
#endif
                        break ;
                    }
                }
            }
        }*/

    } else { // check the consistency of the original execution
        map<string, Thread*>& tMap = exe->getThreadMap();
        for (map<string, Thread*>::iterator it = tMap.begin();
                it != tMap.end(); ++it) {
            Thread* thr = it->second;
            vector<Action*>& aList = thr->getActionList();
            for (vector<Action*>::iterator it2 = aList.begin();
                    it2 != aList.end(); ++it2) {
                Action* action = *it2;
                if (dynamic_cast<RWAction*>(action) == NULL) continue ;

                RWAction* r = dynamic_cast<RWAction*>(action);
                if (r->is_write()) continue ;

                //std::cout << "enforcing: " << r->get_action_str() << " " << r->get_value() << "\n";
                int64_t readVal = r->get_value();
                if (dynamic_cast<RMWAction*>(r))
                    readVal = dynamic_cast<RMWAction*>(r)->getReadValue();
                enforcePairs[r] = readVal;
            }
        }
    }

#ifdef DEBUG
    std::cout << "enforcePairs: " << enforcePairs.size() << "\n";
#endif

    if (checkFairness(enforcePairs) == false)
        return false;

    exe->getSolutionValues().clear();
    exe->set_formulaFile(getenv("formulaFile") + util::stringValueOf(exe->get_inputIndex()));
    exe->set_inputIndex(exe->get_inputIndex()+1);

    exe->resetSolver();
    //z3solver->openOutputFile();
    //z3solver->resetDeclaredVars();

    cmg = new ConstModelGen(exe, this, z3solver);

    double bTime = clock();
    if (basicFlag == false) {
        basicFlag = true;
        double bTime = clock();
        cmg->setFirst();
        basicConstraint = cmg->addBasicConstraints();
        prepareTime1 += clock() - bTime;
        std::cout << "### Basic Prepare Time: " <<
                  prepareTime1 / double(CLOCKS_PER_SEC) << " " <<
                  (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    } else
        z3solver->setDeclaredVars(declaredVars);
    if (basicConstraint != "")
        z3solver->writeLineZ3(basicConstraint);

    if (moFlag == false) {
        moFlag = true;
        double bTime = clock();
        moConstraint = cmg->addMOConstraints();
        prepareTime2 += clock() - bTime;
        std::cout << "### MO Prepare Time: " <<
                  prepareTime2 / double(CLOCKS_PER_SEC) << " " <<
                  (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    }
    if (moConstraint != "")
        z3solver->writeLineZ3(moConstraint);

    if (scFlag == false) {
        scFlag = true;
        double bTime = clock();
        scConstraint = cmg->addSCConstraints();
        prepareTime3 += clock() - bTime;
        std::cout << "### SC Prepare Time: " <<
                  prepareTime3 / double(CLOCKS_PER_SEC) << " " <<
                  (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    }
    if (scConstraint != "")
        z3solver->writeLineZ3(scConstraint);

    if (lockFlag == false) {
        lockFlag = true;
        lockConstraint = cmg->addLockConstraints();
    }
    if (lockConstraint != "")
        z3solver->writeLineZ3(lockConstraint);

    if (consistentFlag == false) {
        consistentFlag = true;
        double bTime = clock();
        //std::set<RWAction*> prefix;
        consistentConstraint = cmg->enforceConsistentConstraint(commonPrefix);
        prepareTime4 += clock() - bTime;
        std::cout << "### Consistent Prepare Time: " <<
                  prepareTime4 / double(CLOCKS_PER_SEC) << " " <<
                  (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
        declaredVars = z3solver->getDeclaredVars();
    }
    if (consistentConstraint != "")
        z3solver->writeLineZ3(consistentConstraint);

    prepareTime += clock() - bTime;
    std::cout << "### Prepare Time: " <<
              prepareTime / double(CLOCKS_PER_SEC) << " " <<
              (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    cmg->addFenceConstraints();

    std::set<std::string> enforcedRFs;//, binaryRelations;
    cmg->setPrefix(commonPrefix);

    bTime = clock();
    bool flag = cmg->addRWRelations(enforcePairs, enforcedRFs);
    cTime += clock() - bTime;
    std::cout << "### RWConstraint construct Time: " << cTime / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    if (!flag) {// identify inconsistency
#ifdef DEBUG
        std::cout << "Identify inconsistency2!\n";
#endif

        z3solver->solve(false);
        delete cmg;
        return false;
    }

    bTime = clock();
    z3solver->solve(true);
    //exe->printSolutionValue();
    if (read != NULL && cmg->getConsistency()) {
        std::vector<RWAction*> reads;
        reads.push_back(read);
        double t = clock();
        Schedule* sch = exe->generateSolutionFile(reads, enforcePairs, enforcedRFs);
        generateSolutionTime += clock() - t;
        std::cout << "### Generate Solution time: " <<
                      generateSolutionTime / double(CLOCKS_PER_SEC) << " " << (clock()-t) / double(CLOCKS_PER_SEC) << "\n";

        if (sch && USEMODEL1 && SKIPREDUNDANCY) {
            double time = clock();
            exe->getChecker()->addGeneratedPrefix(prefix, exe->getCurSch());
            checkTime += clock() - time;
            std::cout << "### Check redundancy time: " <<
                      checkTime / double(CLOCKS_PER_SEC) << " " << (clock()-time) / double(CLOCKS_PER_SEC) << "\n";
        }
    }

    bool retFlag = cmg->getConsistency();
    delete  cmg;

    lastPart_time += clock() - bTime;
    std::cout << "### Last Part time: " <<
              lastPart_time / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    return retFlag;
}

void Solver::generateModel() {

    basicFlag = moFlag = scFlag = lockFlag = consistentFlag = false;
    //z3solver->clearFormula();

    std::set<RWAction*> commonPrefix;
    Schedule* curSch = exe->getCurSch();
    /*std::map<std::string, Thread*>& tMap = exe->getThreadMap();
    for (std::map<std::string, Thread*>::iterator it = tMap.begin();
            it != tMap.end(); ++it) {
        Thread* thread = it->second;
        std::vector<Action*>& vec = thread->getActionList();
        for (std::vector<Action*>::iterator it2 = vec.begin();
                it2 != vec.end(); ++it2) {
            if (RWAction* read = dynamic_cast<RWAction*>(*it2)) {
                if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number()))) {
#ifdef DEBUG
                    std::cout << "add prefix1: " << read->get_uniq_name() << "\n";
#endif
                    if (read->is_write() == false || dynamic_cast<RMWAction*>(read)) {
                        commonPrefix.insert(read);
                        std::cout << "commonPrefix: " << read->get_uniq_name() << "\n";
                    }

                    continue;
                }
            }
        }

        //std::cout << "vec1: " << reads.size() << " " << prefix.size() << "\n";
    }*/

    for (std::map<string, vector<RWAction*> >::iterator it = readset.begin();
            it != readset.end(); ++it) {
        string addr = it->first;
        vector<RWAction*> readList = it->second;
        vector<RWAction*> writeList = writeset[addr];

        if (writeList.size() < 2)
            continue ;

        for (vector<RWAction*>::iterator rIt = readList.begin();
             rIt != readList.end(); ++rIt) {
            RWAction* read = *rIt;
            Thread* thread = read->get_thread();
            std::set<int64_t> handledVal;
            for (vector<RWAction*>::iterator wIt = writeList.begin();
                    wIt != writeList.end(); ++wIt) {
                RWAction* write = *wIt;

                if (read == write) continue ;

                //if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number())))
                if (curSch->inPrefix2(read->getContextName()))
                    continue ;

                int64_t readVal = read->get_value();
                if (dynamic_cast<RMWAction*>(read))
                    readVal = dynamic_cast<RMWAction*>(read)->getReadValue();

                int64_t writeVal = write->get_value();
                if (dynamic_cast<RMWAction*>(write))
                    writeVal = dynamic_cast<RMWAction*>(write)->getWriteValue();

                if (readVal == writeVal)
                    continue ;

                if (handledVal.find(writeVal) != handledVal.end())
                    continue ;
                handledVal.insert(writeVal);

#ifdef DEBUG
                std::cout << "Generating: " << read->get_uniq_name() << " " << write->get_uniq_name() << " "
                          << readVal << " " << writeVal << "\n";
#endif
                //std::cout << "B name: " << read->get_binary_rel_name(write) << "\n";
                double bTime = clock();
                generateSchedule(read, writeVal, commonPrefix);

                generateScheduleTime += clock() - bTime;
                std::cout << "### Generate Schedule Time: " << generateScheduleTime / double(CLOCKS_PER_SEC) << " " <<
                          (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

            }
        }
    }
}

std::vector<std::vector<RWAction*> > Solver::generateCombinations(std::vector<std::vector<RWAction*> > vec) {
    //std::cout << "size: " << vec.size() << "\n";
    std::vector<std::vector<RWAction*> > resultVec;
    if (vec.size() == 0)
        return  resultVec;

    if (vec.size() == 1) {
        for (std::vector<RWAction*>::iterator it = vec[0].begin();
                it != vec[0].end(); ++it) {
            std::vector<RWAction*> v;
            v.push_back(*it);
            resultVec.push_back(v);
        }

        return resultVec;
    }

    std::vector<std::vector<RWAction*> > newVec;
    for (std::vector<std::vector<RWAction*> >::iterator it = vec.begin()+1; it != vec.end(); ++it)
        newVec.push_back(*it);

    //std::copy(++vec.begin(), vec.end(), newVec.begin());
    std::vector<std::vector<RWAction*> > tmpVec = generateCombinations(newVec);

    for (std::vector<RWAction*>::iterator it = vec[0].begin();
            it != vec[0].end(); ++it) {
        for (std::vector<std::vector<RWAction*> >::iterator it2 = tmpVec.begin();
                it2 != tmpVec.end(); ++it2) {
            std::vector<RWAction*> v = *it2;
            v.insert(v.begin(), *it);
            //v.push_back(*it);
            resultVec.push_back(v);
        }
    }

    return resultVec;
}

std::vector<std::vector<int64_t> > Solver::generateValueCombinations(std::vector<std::set<int64_t> > vec) {
    std::vector<std::vector<int64_t > > resultVec;
    if (vec.size() == 0)
        return resultVec;

    if (vec.size() == 1) {
        for (std::set<int64_t>::iterator it = vec[0].begin();
                it != vec[0].end(); ++it) {
            std::vector<int64_t > v;
            v.push_back(*it);
            resultVec.push_back(v);
        }

        return resultVec;
    }

    std::vector<std::set<int64_t > > newVec;

    for (std::vector<std::set<int64_t> >::iterator it = vec.begin()+1; it != vec.end(); ++it)
        newVec.push_back(*it);
    //std::copy(++vec.begin(), vec.end(), newVec.begin());
    std::vector<std::vector<int64_t > > tmpVec = generateValueCombinations(newVec);

    for (std::set<int64_t >::iterator it = vec[0].begin();
            it != vec[0].end(); ++it) {
        for (std::vector<std::vector<int64_t> >::iterator it2 = tmpVec.begin();
                it2 != tmpVec.end(); ++it2) {
            std::vector<int64_t> v = *it2;
            v.insert(v.begin(), *it);
            resultVec.push_back(v);
        }
    }

    return resultVec;
}

bool Solver::checkFairness(map<RWAction *, int64_t> enforcePairs) {

    for (map<RWAction *, int64_t>::iterator it = enforcePairs.begin();
         it != enforcePairs.end(); ++it) {
        //std::cout << "eee: " << it->first->get_uniq_name() << " " << it->first->get_thread()->getName() << " " << it->first->get_seq_number() << "\n";
        pairs[std::make_pair(it->first->get_thread()->getName(), it->first->get_seq_number())] = it->second;
        prefix[it->first->getContextName()] = it->second;
    }

    bool flag = exe->checkFairness(pairs);
    if (flag && USEMODEL1 && SKIPREDUNDANCY) {
        map<string, int64_t > prefixContexts = exe->getCurSch()->getPrefixContexts();
        prefix.insert(prefixContexts.begin(), prefixContexts.end());

        flag = exe->getChecker()->preAddGeneratedPrefix(prefix, exe->getCurSch());
#ifdef DEBUG
        std::cout << "SKIP: " << flag << "\n";
#endif
    }

    return flag;
}

bool beginCheckingFailedSch = false;
bool Solver::generateSchedule2(std::vector<RWAction*> reads, std::vector<int64_t> vals,
                std::set<RWAction*> prefix, std::set<RWAction*> commonPrefix, map<pair<string, int>, int64_t > fMap) {

    z3solver->clearFormula();
    pairs.clear();
    prefix.clear();

#ifdef DEBUG
    std::cout << "checking: read:val\n";
    for (unsigned i=0; i<reads.size(); ++i) {
        std::cout << i << ": " << reads[i]->get_uniq_name() << " : " << vals[i] << "\n";
    }

    std::cout << "prefix & reads: " << prefix.size() << " " << reads.size() << "\n";
#endif
    map<RWAction *, int64_t> enforcePairs;
    for (set<RWAction*>::iterator it = prefix.begin(); it != prefix.end(); ++it) {
        RWAction* r = *it;
        int64_t readVal = r->get_value();
        if (dynamic_cast<RMWAction *>(r))
            readVal = dynamic_cast<RMWAction *>(r)->getReadValue();
        enforcePairs[r] =  readVal;
#ifdef DEBUG
        std::cout << "enforce1: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
#endif
    }

    for (unsigned i=0; i<reads.size(); ++i) {
        RWAction* read = reads[i];
        int64_t val = vals[i];
        enforcePairs[read] = val;
#ifdef DEBUG
        std::cout << "i: " << i << "\n";
        std::cout << "enforce0: " << read << " " << read->get_uniq_name() << " " << val << " " << "\n";
#endif
        //set<Action *> mhbList = identifyMHBRelation(read);
        set<Action*> mhbList = (read->get_thread()->getReachabilityMap(read->get_seq_number()));//[read->get_seq_number()];
        //set<Action*> list = identifyMHBRelation(write);
        //mhbList.insert(list.begin(), list.end());
        for (set<Action *>::iterator it = mhbList.begin();
             it != mhbList.end(); ++it) {
            Action *action = *it;
            RWAction *r = dynamic_cast<RWAction *>(action);
            if (r == NULL || r->is_write() == true)
                continue;

            int64_t readVal = r->get_value();
            if (dynamic_cast<RMWAction *>(r))
                readVal = dynamic_cast<RMWAction *>(r)->getReadValue();

            //RWAction* tmpAction = NULL; //std::find(reads.begin(), reads.end(), r);
            if (std::find(reads.begin(), reads.end(), r) != reads.end())
                readVal = vals[std::find(reads.begin(), reads.end(), r) - reads.begin()];

            if (enforcePairs.find(r) != enforcePairs.end() &&
                    enforcePairs[r] != readVal) {
#ifdef DEBUG
                std::cout << "Indentify inconsistency4!\n";
#endif
                return false;
            }

            enforcePairs[r] = readVal;
#ifdef DEBUG
            std::cout << "enforce2: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
#endif
        }

        /*std::map<std::string, Thread *> tMap = exe->getThreadMap();
        std::map<std::pair<std::string, int>, int64_t> readMap = exe->getCurSch()->getReadValueMap();

        std::cout << "readMap: " << exe->getCurSch() << " " << readMap.size() << "\n";
        for (std::map<std::pair<std::string, int>, int64_t>::iterator it = readMap.begin();
             it != readMap.end(); ++it) {
            Thread *thread = exe->getThreadByName(it->first.first);
            assert(thread != NULL && "No expected thread is identified!\n");

            Action *action = exe->getAction(thread->get_id(), it->first.second);
            std::cout << "get action: " << action << " " << thread->getActionList().size() << " "
                      << it->first.first << " " << it->first.second << "\n";
            RWAction *r = dynamic_cast<RWAction *>(action);
            assert(r != NULL);

            if (enforcePairs.find(r) != enforcePairs.end() &&
                    enforcePairs[r] != it->second) {
                std::cout << "Indentify inconsistency!\n";
                return false;
            }

            enforcePairs[r] = it->second;
            std::cout << "enforce3: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
        }*/
    }

    if (false && !beginCheckingFailedSch) { // FIXME
        std::map<std::string, Thread *>& tMap = exe->getThreadMap();
        std::map<std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >& readMap = exe->getCurSch()->getReadValueMap();

#ifdef DEBUG
        std::cout << "readMap: " << exe->getCurSch() << " " << readMap.size() << "\n";
#endif
        for (std::map<std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator it = readMap.begin();
             it != readMap.end(); ++it) {
            Thread *thread = exe->getThreadByName(it->first.first);
            assert(thread != NULL && "No expected thread is identified!\n");

            Action *action = exe->getAction(thread->get_id(), it->first.second);
#ifdef DEBUG
            std::cout << "get action: " << action << " " << thread->getActionList().size() << " "
                      << it->first.first << " " << it->first.second << "\n";
#endif
            RWAction *r = dynamic_cast<RWAction *>(action);
            assert(r != NULL);

            if (enforcePairs.find(r) != enforcePairs.end() &&
                enforcePairs[r] != it->second.second.first) {
#ifdef DEBUG
                std::cout << "Indentify inconsistency5!\n";
#endif
                return false;
            }

            enforcePairs[r] = it->second.second.first;
#ifdef DEBUG
            std::cout << "enforce3: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
#endif
        }
    }

    if (checkFairness(enforcePairs) == false)
        return false;

    exe->getSolutionValues().clear();
    exe->set_formulaFile(getenv("formulaFile") + util::stringValueOf(exe->get_inputIndex()));
    exe->set_inputIndex(exe->get_inputIndex()+1);

    exe->resetSolver();
    //z3solver->openOutputFile();
    //z3solver->resetDeclaredVars();

    cmg = new ConstModelGen(exe, this, z3solver);

    /*cmg->addBasicConstraints();
    cmg->addMOConstraints();
    cmg->addSCConstraints();
    cmg->addLockConstraints();
    cmg->addFenceConstraints();
    cmg->enforceConsistentConstraint();*/

    double bTime = clock();

    if (basicFlag == false) {
        basicFlag = true;
        double bTime = clock();
        basicConstraint = cmg->addBasicConstraints();
        prepareTime1 += clock() - bTime;
        std::cout << "### Basic Prepare Time: " << prepareTime1 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
        cmg->setFirst();
    } else
        z3solver->setDeclaredVars(declaredVars);
    if (basicConstraint != "")
        z3solver->writeLineZ3(basicConstraint);

    if (moFlag == false) {
        moFlag = true;
        double bTime = clock();
        moConstraint = cmg->addMOConstraints();
        prepareTime2 += clock() - bTime;
        std::cout << "### MO Prepare Time: " << prepareTime2 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    }
    if (moConstraint != "")
        z3solver->writeLineZ3(moConstraint);

    if (scFlag == false) {
        scFlag = true;
        double bTime = clock();
        scConstraint = cmg->addSCConstraints();
        prepareTime3 += clock() - bTime;
        std::cout << "### SC Prepare Time: " << prepareTime3 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
    }
    if (scConstraint != "")
        z3solver->writeLineZ3(scConstraint);

    if (lockFlag == false) {
        lockFlag = true;
        lockConstraint = cmg->addLockConstraints();
    }
    if (lockConstraint != "")
        z3solver->writeLineZ3(lockConstraint);

    if (consistentFlag == false) {
        consistentFlag = true;
        double bTime = clock();
        consistentConstraint = cmg->enforceConsistentConstraint(commonPrefix);
        prepareTime4 += clock() - bTime;
        std::cout << "### Consistent Prepare Time: " << prepareTime4 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";
        declaredVars = z3solver->getDeclaredVars();
    }
    if (consistentConstraint != "")
        z3solver->writeLineZ3(consistentConstraint);

    prepareTime += clock() - bTime;
    std::cout << "### Prepare Time: " << prepareTime / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    std::set<std::string> enforcedRFs;
    cmg->setPrefix(commonPrefix);

    bTime = clock();
    bool flag = cmg->addRWRelations(enforcePairs, enforcedRFs);
    cTime += clock() - bTime;
    std::cout << "### RWConstraint construct Time: " << cTime / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    if (!flag) {// identify inconsistency
#ifdef DEBUG
        std::cout << "Identify inconsistency2!\n";
#endif
        z3solver->solve(false);
        exe->getChecker()->addCheckSatFailedSchs(fMap);
        delete cmg;
        return false;
    }

    bool consistency = cmg->getConsistency();
    bool success = z3solver->solve(true);
    //exe->printSolutionValue();
    if (consistency) {
        if (success) {
            reads.insert(reads.begin(), prefix.begin(), prefix.end());
            exe->generateSolutionFile(reads, enforcePairs, enforcedRFs);
        } else {
#ifdef DEBUG
            std::cout << "fMap: " << exe << " " << exe->getChecker() << " " << fMap.size() << "\n";
#endif
            exe->getChecker()->addCheckSatFailedSchs(fMap);
        }
    } else {
        exe->getChecker()->addFailedCheck(fMap);
#ifdef DEBUG
        std::cout << "add a failed check: \n";
        for (map<pair<string, int>, int64_t >::iterator it = fMap.begin();
                it != fMap.end(); ++it) {
            std::cout <<it->first.first << " " << it->first.second << " "  << it->second << "\n";
        }
#endif
    }

    delete  cmg;

    return consistency && success;
}

std::vector<std::vector<int64_t> > Solver::generateValueCombinations2(std::vector<RWAction*> vec) {
    std::vector<std::vector<int64_t> > resultVec;

    //std::cout << "reads: " << vec.size() << "\n";
    if (vec.size() == 0)
        return resultVec;

    if (vec.size() == 1) {
        RWAction* read = vec[0];
        std::vector<RWAction*> writeList = writeset[read->get_location_str()];
        std::set<int64_t> addedValue;
        for (std::vector<RWAction*>::iterator it = writeList.begin();
             it != writeList.end(); ++it) {
            RWAction* write = *it;

            int64_t writeVal = write->get_value();
            if (dynamic_cast<RMWAction*>(write))
                writeVal = dynamic_cast<RMWAction*>(write)->getWriteValue();

            if (addedValue.find(writeVal) != addedValue.end())
                continue ;
            addedValue.insert(writeVal);

            std::vector<int64_t> values;
            values.push_back(writeVal);
            resultVec.push_back(values);
        }

        return resultVec;
    }

    std::vector<RWAction*> newVec;
    for (std::vector<RWAction*>::iterator it = vec.begin()+1; it != vec.end(); ++it)
        newVec.push_back(*it);
    std::vector<std::vector<int64_t > > tmpVec = generateValueCombinations2(newVec);

    RWAction* read = vec[0];
    std::vector<RWAction*> writeList = writeset[read->get_location_str()];
    std::set<int64_t> addedValue;
    for (std::vector<RWAction*>::iterator it = writeList.begin();
         it != writeList.end(); ++it) {
        RWAction* write = *it;

        int64_t writeVal = write->get_value();
        if (dynamic_cast<RMWAction*>(write))
            writeVal = dynamic_cast<RMWAction*>(write)->getWriteValue();

        if (addedValue.find(writeVal) != addedValue.end())
            continue ;
        addedValue.insert(writeVal);

        for (std::vector<std::vector<int64_t> >::iterator it2 = tmpVec.begin();
                it2 != tmpVec.end(); ++it2) {
            std::vector<int64_t> v = *it2;
            v.insert(v.begin(), writeVal);
            resultVec.push_back(v);
        }
    }

    return resultVec;

}

void Solver::generateModel3() {
    Schedule* curSch = exe->getCurSch();
    std::vector<RWAction*> reads;

    std::map<std::string, Thread*>& tMap = exe->getThreadMap();
    for (std::map<std::string, Thread*>::iterator it = tMap.begin();
            it != tMap.end(); ++it) {
        Thread* thread = it->second;
        std::vector<Action*>& vec = thread->getActionList();
        for (std::vector<Action*>::iterator it2 = vec.begin();
                it2 != vec.end(); ++it2) {
            if (RWAction* read = dynamic_cast<RWAction*>(*it2)) {
                if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number())))
                    continue ;

                if (read->is_write() == false)
                    reads.push_back(read);
                else if (dynamic_cast<RMWAction*>(read))
                    reads.push_back(read);
#ifdef DEBUG
                std::cout << "adding read: " << read->get_uniq_name() << "\n";
#endif
            }
        }
    }

    std::vector<std::vector<int64_t> > valueSets = generateValueCombinations2(reads);
#ifdef DEBUG
    std::cout << "valuesets: " << valueSets.size() << "\n";
#endif
    for (std::vector<vector<int64_t > >::iterator it = valueSets.begin();
         it != valueSets.end(); ++it) {
        vector<int64_t> v = *it;
        bool flag = false;
        for (unsigned i = 0; i<v.size(); ++i) {
            int64_t readVal = reads[i]->get_value();
            if (dynamic_cast<RMWAction*>(reads[i]))
                readVal = dynamic_cast<RMWAction*>(reads[i])->getReadValue();

            if (v[i] != readVal) {
                flag = true;
                break;
            }
        }

        if (!flag) continue ;

#ifdef DEBUG
        std::cout << "generating!\n";
        for (std::vector<int64_t>::iterator it2 = v.begin();
                it2 != v.end(); ++it2)
            std::cout << "v: " << reads[it2-v.begin()]->get_uniq_name() << " " << *it2 << "\n";
#endif
        //generateSchedule2(reads, v);
    }
}

double gTime = 0;
//vector<map<pair<string, int>, int64_t> > failedChecks;
void Solver::generateModel2() {

    basicFlag = moFlag = scFlag = lockFlag = consistentFlag = false;
    std::vector<std::vector<std::vector<RWAction*> > > checkVecs;
    std::vector<std::set<RWAction*> > prefixes;
    Schedule* curSch = exe->getCurSch();

    std::vector<std::vector<RWAction*> > vecs;
    std::map<std::string, Thread*>& tMap = exe->getThreadMap();
#ifdef DEBUG
    std::cout << "In generateModel2!: " << tMap.size() << "\n";
#endif
    //std::cout << "curSch: " << exe->getCurSch() << "\n";
    std::set<RWAction*> consideredReads;
    std::set<RWAction*> prefix;
    for (std::map<std::string, Thread*>::iterator it = tMap.begin();
            it != tMap.end(); ++it) {
        Thread* thread = it->second;
        std::vector<Action*>& vec = thread->getActionList();
        std::vector<RWAction*> reads;
        for (std::vector<Action*>::iterator it2 = vec.begin();
                it2 != vec.end(); ++it2) {
            if (RWAction* read = dynamic_cast<RWAction*>(*it2)) {
                if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number()))) {
#ifdef DEBUG
                    std::cout << "add prefix1: " << read->get_uniq_name() << "\n";
#endif
                    if (read->is_write() == false || dynamic_cast<RMWAction*>(read)) {
                        consideredReads.insert(read);
                        prefix.insert(read);
                    }

                    continue;
                }

                if (read->is_write() == false) {
                    reads.push_back(read);
                    consideredReads.insert(read);
                    break;
                } else if (dynamic_cast<RMWAction*>(read)) {
                    reads.push_back(read);
                    consideredReads.insert(read);
                    break;
                }
            }
        }
        if (reads.size() != 0)
            vecs.push_back(reads);

        //std::cout << "vec1: " << reads.size() << " " << prefix.size() << "\n";
    }

    std::set<RWAction*> commonPrefix;
    commonPrefix.insert(prefix.begin(), prefix.end());
    while (vecs.size() != 0) {
        checkVecs.push_back(vecs);
        prefixes.push_back(prefix);
        /*std::cout << "prefix:\n";
        for (std::set<RWAction*>::iterator it = prefix.begin(); it != prefix.end(); ++it)
            std::cout << (*it)->get_uniq_name() << "\n";*/

        vecs.clear(), prefix.clear();

        for (std::map<std::string, Thread*>::iterator it = tMap.begin();
             it != tMap.end(); ++it) {
            Thread* thread = it->second;
            std::vector<Action*>& vec = thread->getActionList();
            std::vector<RWAction*> reads;
            for (std::vector<Action*>::iterator it2 = vec.begin();
                 it2 != vec.end(); ++it2) {
                if (RWAction* read = dynamic_cast<RWAction*>(*it2)) {
                    if (consideredReads.find(read) != consideredReads.end()) {
                        prefix.insert(read);
#ifdef DEBUG
                        std::cout << "add prefix2: " << read->get_uniq_name() << "\n";
#endif
                        assert(read->is_write() == false || dynamic_cast<RMWAction*>(read));
                        continue ;
                    }

                    if (read->is_write() == false) {
                        reads.push_back(read);
                        //std::cout << "add read: " << read->get_uniq_name() << "\n";
                        consideredReads.insert(read);
                        break;
                    } else if (dynamic_cast<RMWAction*>(read)) {
                        reads.push_back(read);
                        //std::cout << "add read: " << read->get_uniq_name() << "\n";
                        consideredReads.insert(read);
                        break;
                    }
                }
            }
            if (reads.size() != 0)
                vecs.push_back(reads);

            //std::cout << "vec2: " << thread->getName() << " " << reads.size() << " " << prefix.size() << "\n";
        }
    }

    int num = exe->getChecker()->getCheckSatFailedSchs().size();
    for (std::vector<std::vector<std::vector<RWAction*> > >::iterator cIt = checkVecs.begin();
            cIt != checkVecs.end(); ++cIt) {
        vecs = *cIt;

        std::vector<std::vector<RWAction *> > vecSets = generateCombinations(vecs);
        //std::cout << "vecset: " << vecSets.size() << "\n";
        for (std::vector<std::vector<RWAction *> >::iterator it = vecSets.begin();
             it != vecSets.end(); ++it) {
            std::vector<RWAction *> vec = *it;
            std::vector<std::set<int64_t> > valuesVec;
            for (std::vector<RWAction *>::iterator it2 = vec.begin();
                 it2 != vec.end(); ++it2) {
                RWAction *read = *it2;
#ifdef DEBUG
                std::cout << "For: " << read->get_uniq_name() << "\n";
#endif
                std::vector<RWAction *> writeList = writeset[read->get_location_str()];
                std::set<int64_t> values;
                for (std::vector<RWAction *>::iterator it3 = writeList.begin();
                     it3 != writeList.end(); ++it3) {
                    RWAction *write = *it3;
                    if (read == write) continue ;
                    if (read->get_thread() == write->get_thread() &&
                            read->get_seq_number() <= write->get_seq_number())
                        continue ;

                    int64_t writeVal = write->get_value();
                    if (RMWAction* tmp = dynamic_cast<RMWAction *>(write)) {
                        writeVal = tmp->getWriteValue();
                        /*for (std::vector<RWAction*>::iterator it4 = writeList.begin();
                                it4 != writeList.end(); ++it4) {
                            RWAction* rwAction = *it4;
                            if (rwAction->get_thread() == write->get_thread() &&
                                    rwAction->get_seq_number() >= write->get_seq_number() ||
                                    rwAction->get_thread() == read->get_thread() &&
                                    rwAction->get_seq_number() >= read->get_seq_number() )
                                continue ;

                            if (rwAction->get_thread() == write->get_thread()) {
                                bool flag = true;
                                std::vector<Action*> &list = rwAction->get_thread()->getActionList();
                                for (unsigned i=rwAction->get_seq_number()+1;
                                        i<write->get_seq_number(); ++i) {
                                    Action* a = list[i];
                                    if (dynamic_cast<RWAction*>(a)) {
                                        flag = false;
                                        break;
                                    }
                                }
                                if (!flag) continue ;
                            }

                            int64_t oldValue = rwAction->get_value();
                            if (RMWAction* tmp2 = dynamic_cast<RMWAction*>(rwAction)) {
                                oldValue = tmp2->getReadValue();
                            }
                            int64_t writeVal2 = tmp->computeWriteValue(oldValue);
                            std::cout << "add value2: " << rwAction->get_uniq_name() << " " << oldValue << " " << writeVal2 << "\n";
                            values.insert(writeVal2);
                        }*/
                        values.insert(tmp->getReadValue());
#ifdef DEBUG
                        std::cout << "add value2: " << write->get_uniq_name() << " " << tmp->getReadValue() << "\n";
#endif
                    }
                    values.insert(writeVal);
#ifdef DEBUG
                    std::cout << "add value1: " << write->get_uniq_name() << " " << writeVal << "\n";
#endif
                }

                if (values.size() != 0)
                    valuesVec.push_back(values);
            }

            //std::cout << "valuesVec: " << valuesVec.size() << "\n";
            std::vector<vector<int64_t> > valueSets = generateValueCombinations(valuesVec);
            //std::cout << "valueSet: " << valueSets.size() << "\n";
            for (std::vector<vector<int64_t> >::iterator it2 = valueSets.begin();
                 it2 != valueSets.end(); ++it2) {
                vector<int64_t> v = *it2;
                bool flag = false;
                for (unsigned i = 0; i < v.size(); ++i) {
                    int64_t readVal = vec[i]->get_value();
                    if (dynamic_cast<RMWAction *>(vec[i]))
                        readVal = dynamic_cast<RMWAction *>(vec[i])->getReadValue();

                    if (v[i] != readVal) {
                        flag = true;
                        break;
                    }
                }

                if (!flag) continue;

                /*std::cout << "Generating: " << it2 - valueSets.begin() << " " << v.size() << "\n";
                for (std::vector<int64_t>::iterator it3 = v.begin();
                     it3 != v.end(); ++it3)
                    std::cout << "v: " << vec[it3 - v.begin()]->get_uniq_name() << " " << *it3 << "\n";*/

                map<pair<string, int>, int64_t > fMap;
                int i = 0;
                for (vector<RWAction*>::iterator vIt = vec.begin();
                     vIt != vec.end(); ++vIt) {
                    RWAction* action = *vIt;
                    fMap[make_pair(action->get_thread()->getName(), action->get_seq_number())] = v[i++];
                    //std::cout << "fMap: " << action->get_thread()->getName() << " " << action->get_seq_number() << " " << v[i-1] << "\n";
                }

                for (set<RWAction*>::iterator vIt = prefixes[cIt-checkVecs.begin()].begin();
                     vIt != prefixes[cIt-checkVecs.begin()].end(); ++vIt) {
                    RWAction* r = *vIt;
                    int64_t readVal = r->get_value();
                    if (dynamic_cast<RMWAction *>(r))
                        readVal = dynamic_cast<RMWAction *>(r)->getReadValue();
                    fMap[make_pair(r->get_thread()->getName(), r->get_seq_number())] = readVal;
                    //std::cout << "fMap: " << r->get_thread()->getName() << " " << r->get_seq_number() << " " << readVal << "\n";
                }

                bool continueFlag = true;
                vector<map<pair<string, int>, int64_t > >& failedChecks = exe->getChecker()->getFailedChecks();
                for (vector<map<pair<string, int>, int64_t > >::iterator fIt = failedChecks.begin();
                        fIt != failedChecks.end(); ++fIt) {
                    map<pair<string, int>, int64_t > fMap2 = *fIt;
                    bool checkFlag = false;
                    for (map<pair<string, int>, int64_t >::iterator vIt = fMap2.begin();
                            vIt != fMap2.end(); ++vIt) {
                        if (fMap.find(vIt->first) == fMap.end() ||
                                fMap[vIt->first] != vIt->second) {
                            checkFlag = true;
                            break;
                        }
                    }
                    if (checkFlag == false) {
                        continueFlag = false;
#ifdef DEBUG
                        std::cout << "Skip an inconsistent check!\n";
#endif
                        for (unsigned i = 0; i<vec.size(); ++i) {
                            std::cout << vec[i]->get_uniq_name() << " " << v[i] << "\n";
                        }
                    }
                }

                if (continueFlag == false)
                    continue ;

                double bTime = clock();
                bool f = generateSchedule2(vec, v, prefixes[cIt-checkVecs.begin()], commonPrefix, fMap);
                gTime += clock() - bTime;
                std::cout << "### Generate Schedule Time: " << gTime / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

                /*if (f == false) {
                    exe->getChecker()->addFailedCheck(fMap);
                }*/
            }
        }
    }

    vector<map<pair<string, int>, int64_t > > newFailedSchs;
    vector<map<pair<string, int>, int64_t > > &checkSatFailedSchs = exe->getChecker()->getCheckSatFailedSchs();
#ifdef DEBUG
    std::cout << "Checking previous unsat schedules: " << checkSatFailedSchs.size() << "\n";
#endif
    beginCheckingFailedSch = true;
    int i = 0;
    for (vector<map<pair<string, int>, int64_t > >::iterator it = checkSatFailedSchs.begin();
            it != checkSatFailedSchs.end(); ++it) {
        map<pair<string, int>, int64_t > fMap = *it;

        if (++i>num) {
            newFailedSchs.push_back(fMap);
            continue ;
        }

        std::vector<RWAction*> vec;
        vector<int64_t> v;
        bool success = true;
        std::set<Thread*> stopThreads;
#ifdef DEBUG
        std::cout << "Checking fMap: " << fMap.size() << "\n";
#endif
        for (map<pair<string, int>, int64_t >::iterator it2 = fMap.begin();
                it2 != fMap.end(); ++it2) {
            Thread* thread = exe->getThreadByName(it2->first.first);
            if (thread == NULL || thread->getActionList().size() <= it2->first.second) {
                success = false;
                break;
            }

            Action* action = thread->getActionList()[it2->first.second];
            int64_t val = it2->second;
            if (RWAction* rwAction = dynamic_cast<RWAction*>(action)) {
                if (rwAction->is_write() && dynamic_cast<RMWAction*>(rwAction) == NULL) {
                    success = false;
                    break ;
                }

                int64_t readVal = rwAction->get_value();
                if (RMWAction* rmwAction = dynamic_cast<RMWAction*>(rwAction))
                    readVal = rmwAction->getReadValue();

                if (readVal != val) {
                    if (stopThreads.find(thread) == stopThreads.end())
                        stopThreads.insert(thread);
                    else {
                        success = false;
                        break;
                    }
                }

                vec.push_back(rwAction);
                v.push_back(val);
            } else  {
                success = false;
                break ;
            }
        }

        if (!success) {
            newFailedSchs.push_back(fMap);
            continue;
        }

#ifdef DEBUG
        std::cout << "Pre check!\n";
#endif
        std::set<RWAction*> prefix;

        map<pair<string, int>, int64_t > fMap2;
        std::set<RWAction*> prefixSet;
        bool f = generateSchedule2(vec, v, prefix, prefixSet, fMap2);

        if (!f)
             newFailedSchs.push_back(fMap);
        else
            std::cout << "Find a new Schedule!\n";
    }
    beginCheckingFailedSch = false;

    exe->getChecker()->clearCheckSatFailedSchs();
#ifdef DEBUG
    std::cout << "set new failed sch: " << newFailedSchs.size() << " " << exe->getChecker()->getCheckSatFailedSchs().size() << "\n";
#endif
    for (vector<map<pair<string, int>, int64_t > >::iterator it = newFailedSchs.begin();
            it != newFailedSchs.end(); ++it)
        exe->getChecker()->addCheckSatFailedSchs(*it);
#ifdef DEBUG
    std::cout << "In generateModel2 End!\n";
#endif
}

void Solver::addSWPair(Action *a, Action *b) {
    swPairs[a] = b;
}

/*bool Solver::isConsistent() {
#ifdef DEBUG
    std::cout << "Checking consistency of the current execution!\n";
#endif
    if (generateSchedule(NULL, 0) == false || exe->getSolutionValues().size() == 0) {
        //exe->getChecker()->addSch(exe->getCurSch());
        return false;
    }

    return true;
}*/

void Solver::start() {
    collectData();
    constructMHBLists();
    //std::cout << "cccc: " << readset.size() << " " << writeset.size() << "\n";

    //z3solver->openOutputFile();
    //cmg = new ConstModelGen(exe, this, z3solver);

    //if (isConsistent())
    if (USEMODEL1)
        generateModel();
    else
        generateModel2();
#ifdef DEBUG
    std::cout << "End solver!\n";
#endif
}

//set<Action*> Solver::identifyMHBRelation(Action *action) {
//    set<Action*> mhbList;
//
//    mhbList.insert(action);
//    Thread* thread = action->get_thread();
//    vector<Action*> actionList = thread->getActionList();
//
//    for (vector<Action*>::iterator it = actionList.begin();
//            it != actionList.end(); ++it) {
//
//        Action* curAction = *it;
//        if (curAction == action)
//            break ;
//        mhbList.insert(curAction);
//    }
//
//    map<Thread*, Thread*> createMap = exe->getThreadCreateMap();
//    if (createMap.find(thread) != createMap.end()) {
//        Thread* parentThread = createMap[thread];
//        Action* lastAction = parentThread->getActionList().back();
//        set<Action*> list = identifyMHBRelation(lastAction);
//        mhbList.insert(list.begin(), list.end());
//    }
//
//    return mhbList;
//}

set<Action*> Solver::identifyMHBRelation(Action *action) {
    set<Action*> mhbList;
    mhbList.insert(action);

    Thread* thread = action->get_thread();
    //Thread* thread = action->get_thread();
    vector<Action*>& actionList = thread->getActionList();

    vector<Thread*> threads;
    for (vector<Action*>::iterator it = actionList.begin();
            it != actionList.end(); ++it) {
        Action* curAction = *it;

        if (curAction == action)
            break ;

        if (curAction->get_type() == THREAD_JOIN) {
            threads.push_back(exe->getThread(curAction->get_id2()));
        }
        mhbList.insert(curAction);
    }

    map<string, string>& createMap = exe->getThreadCreateMap();
    while(createMap.find(thread->get_id()) != createMap.end()) {
        string newId = createMap[thread->get_id()];
        if (newId == "")
            break ;
        Thread* parentThr = exe->getThread(newId);
        vector<Action*>& list = parentThr->getActionList();
        for (vector<Action*>::iterator it = list.begin();
                it != list.end(); ++it) {
            Action* curAction = *it;
            mhbList.insert(curAction);

            if (curAction->get_type() == THREAD_CREATE) {
                if (curAction->get_id2() == thread->get_id())
                    break;
            } else if (curAction->get_type() == THREAD_JOIN) {
                threads.push_back(exe->getThread(curAction->get_id2()));
            }
        }
        thread = parentThr;
    }

    while (threads.size() != 0) {
        Thread* thr = threads[0];
        threads.erase(threads.begin());

        vector<Action*>& list = thr->getActionList();
        for (vector<Action*>::iterator it = list.begin();
                it != list.end(); ++it) {
            Action* curAction = *it;
            mhbList.insert(curAction);
            if (curAction->get_type() == THREAD_JOIN)
                threads.push_back(exe->getThread(curAction->get_id2()));
        }
    }

    return mhbList;
}


set<Action*> Solver::identifyMHARelation(Action *action) {
    set<Action*> mhaList;
    Thread* thread = action->get_thread();
    vector<Action*>& actionList = thread->getActionList();

    bool flag = false;
    vector<Thread*> threads;
    for (vector<Action*>::iterator it = actionList.begin();
            it != actionList.end(); ++it) {
        Action* curAction = *it;
        if (flag) {
            mhaList.insert(curAction);
            if (curAction->get_type() == THREAD_CREATE) {
                threads.push_back(exe->getThread(curAction->get_id2()));
            }

        } else if (curAction == action) {
            flag = true;
        }
    }

    while(threads.size() != 0) {
        Thread* thr = threads[0];
        threads.erase(threads.begin());

        vector<Action*>& list = thr->getActionList();
        for (vector<Action*>::iterator it = list.begin();
                it != list.end(); ++it) {

            Action* curAction = *it;
            mhaList.insert(curAction);
            if (curAction->get_type() == THREAD_CREATE) {
                threads.push_back(exe->getThread(curAction->get_id2()));
            }
        }
    }

    return mhaList;
}

std::string Solver::enforceBRelation(Action *a1, Action *a2, int val) {
    // FIXME: not implemented
    return "";
}

std::vector<RWAction*>& Solver::getWriteSet(std::string str) {
    assert(writeset.find(str) != writeset.end());
    return writeset[str];
}

map<std::pair<Action*, Action*>, int> checkedMHB;
int Solver::checkMHB(Action* a1, Action* a2) {
    if (checkedMHB.find(make_pair(a1, a2)) != checkedMHB.end())
        return checkedMHB[make_pair(a1, a2)];
    for (set<vector<Action*> >::iterator it = mhbLists.begin();
            it != mhbLists.end(); ++it) {
        vector<Action*> list = *it;
        vector<Action*>::iterator it1, it2;
        it1 = std::find(list.begin(), list.end(), a1);
        it2 = std::find(list.begin(), list.end(), a2);
        if (it1 != list.end() && it2 != list.end()) {
            if (it1 - list.begin() < it2 - list.begin()) {
                checkedMHB[make_pair(a1, a2)] = 1;
                return 1;
            } else {
                checkedMHB[make_pair(a1, a2)] = 0;
                return 0;
            }
        }

    }

    checkedMHB[make_pair(a1, a2)] = -1;
    return -1;
}

void Solver::constructMHBLists() {
    checkedMHB.clear();
    set<pair<vector<Action*>, pair<string, int> > > workList;

    vector<Action*> l;
    workList.insert(make_pair(l, make_pair("main", 0)));

    while (workList.size() != 0) {
        vector<Action*> list = workList.begin()->first;
        std::cout << "name: " << workList.begin()->second.first << "\n";
        Thread* thread = exe->getThreadByName(workList.begin()->second.first);
        int index = workList.begin()->second.second;
        workList.erase(workList.begin());

        for (int i=index; i<thread->getActionList().size(); ++i) {
            Action* action = thread->getActionList()[i];
            list.push_back(action);
            if (action->get_type() == THREAD_CREATE) {
                vector<Action*> newList;
                newList.insert(newList.begin(), list.begin(), list.end());
                Action* beginAction = exe->getCreatePoints()[action];
                Thread* newThread = beginAction->get_thread();
                workList.insert(make_pair(newList, make_pair(newThread->getName(), 0)));
            } else if (action->get_type() == THREAD_FINISH) {
                std::cout << "Thread_finish: " << action->get_uniq_name() << " " << exe->getJoinPoints().size() << "\n";
                bool flag = false;
                for (std::map<Action*, Action*>::iterator it = exe->getJoinPoints().begin();
                        it != exe->getJoinPoints().end(); ++it) {
                    if (it->second == action) {
                        Action *joinAction = it->first;
                        Thread *newThread = joinAction->get_thread();
                        workList.insert(make_pair(list, make_pair(newThread->getName(), joinAction->get_seq_number())));
                        flag = true;
                        break ;
                    }
                }

                if (!flag)
                    mhbLists.insert(list);
            }
        }
    }

    /*std::cout << "mhbLists: \n";
    int i=0;
    for (set<vector<Action*> >::iterator it = mhbLists.begin(); it != mhbLists.end(); ++it) {
        vector<Action*> list = *it;
        std::cout << i++ << " \n";
        for (vector<Action*>::iterator it2 = list.begin(); it2 != list.end(); ++it2) {
            Action* action = *it2;
            action->print();
        }
    }*/
}

