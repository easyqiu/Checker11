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

#include "ConstraintModelGenerator.h"
#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Solver.h"
#include "Util.h"
#include "Schedule.h"
#include "ModelChecker.h"
//#include "Parameters.h"

#define MAX_LINE_SIZE 100

using namespace checker;
using namespace std;

Solver::Solver(Executor* exe) {
    this->exe = exe;
    z3solver = new Z3Solver(exe);
    //formulaFile = "formulaFile";
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
    std::map<std::string, Thread*> tMap = exe->getThreadMap();
    //std::cout << "In collect data: " << tMap.size() << "\n";
    for (std::map<std::string, Thread*>::iterator it = tMap.begin();
            it != tMap.end(); ++it) {
        std::string name = it->first;
        Thread* thread = it->second;

        std::vector<Action*> actionList = thread->getActionList();
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

                case ATOMIC_CMP_XCHG:
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
                case ATOMIC_LOCK:
                    break;
                case ATOMIC_UNLOCK: {
                    std::string loc = action->get_location_str();
                    LockAction *cur = dynamic_cast<LockAction *>(action);
                    Thread *thread = action->get_thread();
                    std::vector<Action *> list = thread->getActionList();
                    Action *lock = list[cur->get_pairedNum()];
                    assert(dynamic_cast<LockAction *>(lock));
                    lockset[loc].push_back(std::make_pair(
                            dynamic_cast<LockAction *>(lock), dynamic_cast<LockAction *>(action)));
                    std::cout << "lock pair: " << lock->get_uniq_name() << " " << action->get_uniq_name() << "\n";
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

// generate a schedule which enforces 'read' reads value 'val'.
bool Solver::generateSchedule(RWAction *read, int64_t val) {

    z3solver->clearFormula();
    std::cout << "checking: read:val " << read->get_uniq_name() << " " << val << "\n";
    map<RWAction *, int64_t> enforcePairs;
    if (read != NULL) {
        enforcePairs[read] = val;
        set<Action*> mhbList = (read->get_thread()->getReachabilityMap(read->get_seq_number()));//[read->get_seq_number()];
        //set<Action *> mhbList = identifyMHBRelation(read);
        //set<Action*> list = identifyMHBRelation(write);
        //mhbList.insert(list.begin(), list.end());
        std::cout << "mhbList: " << mhbList.size() << "\n";
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
                std::cout << "Indentify inconsistency!\n";
                return false;
            }

            enforcePairs[r] = readVal;
            //std::cout << "enforce: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
        }

        std::map<std::string, Thread*> tMap = exe->getThreadMap();
        std::map <std::pair<std::string, int>, int64_t> readMap = exe->getCurSch()->getReadValueMap();
        //std::cout << "curSch: " << exe->getCurSch() << " " << readMap.size() << "\n";
        for (std::map<std::pair<std::string, int>, int64_t>::iterator it = readMap.begin();
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
            assert(r != NULL);
            if (enforcePairs.find(r) != enforcePairs.end() &&
                    enforcePairs[r] != it->second) {
                std::cout << "Indentify inconsistency!\n";
                return false;
            }

            enforcePairs[r] = it->second;
            //std::cout << "enforce11: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
        }

    } else { // check the consistency of the original execution
        map<string, Thread*> tMap = exe->getThreadMap();
        for (map<string, Thread*>::iterator it = tMap.begin();
                it != tMap.end(); ++it) {
            Thread* thr = it->second;
            vector<Action*> aList = thr->getActionList();
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

    if (checkFairness(enforcePairs) == false)
        return false;

    exe->getSolutionValues().clear();
    exe->set_formulaFile(getenv("formulaFile") + util::stringValueOf(exe->get_inputIndex()));
    exe->set_inputIndex(exe->get_inputIndex()+1);

    exe->resetSolver();
    //z3solver->openOutputFile();
    //z3solver->resetDeclaredVars();

    cmg = new ConstModelGen(exe, this, z3solver);
    cmg->addBasicConstraints();
    cmg->addMOConstraints();
    cmg->addSCConstraints();
    cmg->addLockConstraints();

    std::set<std::string> enforcedRFs;
    bool flag = cmg->addRWRelations(enforcePairs, enforcedRFs);
    std::cout << "here!\n";
    if (!flag) {// identify inconsistency
        z3solver->solve(false);
        delete cmg;
        return false;
    }

    std::cout << "here1!\n";
    cmg->enforceConsistentConstraint();
    std::cout << "here2!\n";

    z3solver->solve(true);
    std::cout << "here3!\n";
    //exe->printSolutionValue();
    if (read != NULL && cmg->getConsistency()) {
        std::vector<RWAction*> reads;
        reads.push_back(read);
        exe->generateSolutionFile(reads, enforcePairs, enforcedRFs);
    }

    std::cout << "here4!\n";
    bool retFlag = cmg->getConsistency();
    delete  cmg;

    return retFlag;
}

void Solver::generateModel() {

    //z3solver->clearFormula();
    Schedule* curSch = exe->getCurSch();
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
            for (vector<RWAction*>::iterator wIt = writeList.begin();
                    wIt != writeList.end(); ++wIt) {
                RWAction* write = *wIt;

                if (read == write) continue ;

                if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number())))
                    continue ;

                int64_t readVal = read->get_value();
                if (dynamic_cast<RMWAction*>(read))
                    readVal = dynamic_cast<RMWAction*>(read)->getReadValue();

                int64_t writeVal = write->get_value();
                if (dynamic_cast<RMWAction*>(write))
                    writeVal = dynamic_cast<RMWAction*>(write)->getWriteValue();

                if (readVal == writeVal)
                    continue ;

                std::cout << "Generating: " << read->get_uniq_name() << " " << write->get_uniq_name() << " "
                          << readVal << " " << writeVal << "\n";
                //std::cout << "B name: " << read->get_binary_rel_name(write) << "\n";
                generateSchedule(read, writeVal);
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

    map <std::pair<std::string, int>, int64_t> pairs;
    for (map<RWAction *, int64_t>::iterator it = enforcePairs.begin();
         it != enforcePairs.end(); ++it) {
        pairs[std::make_pair(it->first->get_thread()->getName(), it->first->get_seq_number())] = it->second;
    }

    return exe->checkFairness(pairs);
}

bool beginCheckingFailedSch = false;
bool Solver::generateSchedule2(std::vector<RWAction*> reads, std::vector<int64_t> vals,
                std::set<RWAction*> prefix, map<pair<string, int>, int64_t > fMap) {

    z3solver->clearFormula();

    std::cout << "checking: read:val\n";
    for (unsigned i=0; i<reads.size(); ++i) {
        std::cout << i << ": " << reads[i]->get_uniq_name() << " : " << vals[i] << "\n";
    }


    std::cout << "prefix & reads: " << prefix.size() << " " << reads.size() << "\n";
    map<RWAction *, int64_t> enforcePairs;
    for (set<RWAction*>::iterator it = prefix.begin(); it != prefix.end(); ++it) {
        RWAction* r = *it;
        int64_t readVal = r->get_value();
        if (dynamic_cast<RMWAction *>(r))
            readVal = dynamic_cast<RMWAction *>(r)->getReadValue();
        enforcePairs[r] =  readVal;
        std::cout << "enforce1: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
    }

    for (unsigned i=0; i<reads.size(); ++i) {
        RWAction* read = reads[i];
        int64_t val = vals[i];
        enforcePairs[read] = val;
        std::cout << "enforce0: " << read << " " << read->get_uniq_name() << " " << val << " " << "\n";
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
                std::cout << "Indentify inconsistency!\n";
                return false;
            }

            enforcePairs[r] = readVal;
            std::cout << "enforce2: " << r << " " << r->get_uniq_name() << " " << enforcePairs[r] << " " << "\n";
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

    if (false && !beginCheckingFailedSch) {
        std::map<std::string, Thread *> tMap = exe->getThreadMap();
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
        }
    }

    std::cout << "ccc1\n";
    if (checkFairness(enforcePairs) == false)
        return false;

    std::cout << "ccc2\n";
    exe->getSolutionValues().clear();
    exe->set_formulaFile(getenv("formulaFile") + util::stringValueOf(exe->get_inputIndex()));
    exe->set_inputIndex(exe->get_inputIndex()+1);

    std::cout << "ccc3\n";
    exe->resetSolver();
    //z3solver->openOutputFile();
    //z3solver->resetDeclaredVars();

    cmg = new ConstModelGen(exe, this, z3solver);
    cmg->addBasicConstraints();
    cmg->addMOConstraints();
    cmg->addSCConstraints();
    cmg->addLockConstraints();

    std::cout << "ccc4\n";
    std::set<std::string> enforcedRFs;
    bool flag = cmg->addRWRelations(enforcePairs, enforcedRFs);
    if (!flag) {// identify inconsistency
        std::cout << "Identify inconsistency2!\n";
        z3solver->solve(false);
        exe->getChecker()->addCheckSatFailedSchs(fMap);
        delete cmg;
        return false;
    }

    std::cout << "ccc5\n";
    cmg->enforceConsistentConstraint();

    bool consistency = cmg->getConsistency();
    bool success = z3solver->solve(true);
    //exe->printSolutionValue();
    std::cout << "ccc6\n";
    if (consistency) {
        if (success)
            exe->generateSolutionFile(reads, enforcePairs, enforcedRFs);
        else {
            std::cout << "test1\n";
            std::cout << exe << " " << exe->getChecker() << " " << fMap.size() << "\n";
            exe->getChecker()->addCheckSatFailedSchs(fMap);
            std::cout << "test2\n";
        }
    } else {
        exe->getChecker()->addFailedCheck(fMap);
        std::cout << "add a failed check: \n";
        for (map<pair<string, int>, int64_t >::iterator it = fMap.begin();
                it != fMap.end(); ++it) {
            std::cout <<it->first.first << " " << it->first.second << " "  << it->second << "\n";
        }
    }

    std::cout << "ccc7\n";
    delete  cmg;

    return consistency && success;
}

std::vector<std::vector<int64_t> > Solver::generateValueCombinations2(std::vector<RWAction*> vec) {
    std::vector<std::vector<int64_t> > resultVec;

    std::cout << "reads: " << vec.size() << "\n";
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

    std::map<std::string, Thread*> tMap = exe->getThreadMap();
    for (std::map<std::string, Thread*>::iterator it = tMap.begin();
            it != tMap.end(); ++it) {
        Thread* thread = it->second;
        std::vector<Action*> vec = thread->getActionList();
        for (std::vector<Action*>::iterator it2 = vec.begin();
                it2 != vec.end(); ++it2) {
            if (RWAction* read = dynamic_cast<RWAction*>(*it2)) {
                if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number())))
                    continue ;

                if (read->is_write() == false)
                    reads.push_back(read);
                else if (dynamic_cast<RMWAction*>(read))
                    reads.push_back(read);
                std::cout << "adding read: " << read->get_uniq_name() << "\n";
            }
        }
    }

    std::vector<std::vector<int64_t> > valueSets = generateValueCombinations2(reads);
    std::cout << "valuesets: " << valueSets.size() << "\n";
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

        std::cout << "generating!\n";
        for (std::vector<int64_t>::iterator it2 = v.begin();
                it2 != v.end(); ++it2)
            std::cout << "v: " << reads[it2-v.begin()]->get_uniq_name() << " " << *it2 << "\n";

        //generateSchedule2(reads, v);
    }
}

//vector<map<pair<string, int>, int64_t> > failedChecks;
void Solver::generateModel2() {

    std::vector<std::vector<std::vector<RWAction*> > > checkVecs;
    std::vector<std::set<RWAction*> > prefixes;
    Schedule* curSch = exe->getCurSch();

    std::vector<std::vector<RWAction*> > vecs;
    std::map<std::string, Thread*> tMap = exe->getThreadMap();
    std::cout << "In generateModel2!: " << tMap.size() << "\n";
    std::cout << "curSch: " << exe->getCurSch() << "\n";
    std::set<RWAction*> consideredReads;
    std::set<RWAction*> prefix;
    for (std::map<std::string, Thread*>::iterator it = tMap.begin();
            it != tMap.end(); ++it) {
        Thread* thread = it->second;
        std::vector<Action*> vec = thread->getActionList();
        std::vector<RWAction*> reads;
        for (std::vector<Action*>::iterator it2 = vec.begin();
                it2 != vec.end(); ++it2) {
            if (RWAction* read = dynamic_cast<RWAction*>(*it2)) {
                if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number()))) {
                    prefix.insert(read);
                    consideredReads.insert(read);
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

        std::cout << "vec1: " << reads.size() << " " << prefix.size() << "\n";
    }

    while (vecs.size() != 0) {
        checkVecs.push_back(vecs);
        prefixes.push_back(prefix);
        vecs.clear(), prefix.clear();

        for (std::map<std::string, Thread*>::iterator it = tMap.begin();
             it != tMap.end(); ++it) {
            Thread* thread = it->second;
            std::vector<Action*> vec = thread->getActionList();
            std::vector<RWAction*> reads;
            for (std::vector<Action*>::iterator it2 = vec.begin();
                 it2 != vec.end(); ++it2) {
                if (RWAction* read = dynamic_cast<RWAction*>(*it2)) {
                    if (consideredReads.find(read) != consideredReads.end()) {
                        prefix.insert(read);
                        std::cout << "add prefix: " << read->get_uniq_name() << "\n";
                        continue ;
                    }

                    if (read->is_write() == false) {
                        reads.push_back(read);
                        std::cout << "add read: " << read->get_uniq_name() << "\n";
                        consideredReads.insert(read);
                        break;
                    } else if (dynamic_cast<RMWAction*>(read)) {
                        reads.push_back(read);
                        std::cout << "add read: " << read->get_uniq_name() << "\n";
                        consideredReads.insert(read);
                        break;
                    }
                }
            }
            if (reads.size() != 0)
                vecs.push_back(reads);

            std::cout << "vec2: " << thread->getName() << " " << reads.size() << " " << prefix.size() << "\n";
        }
    }

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
                std::vector<RWAction *> writeList = writeset[read->get_location_str()];
                std::set<int64_t> values;
                for (std::vector<RWAction *>::iterator it3 = writeList.begin();
                     it3 != writeList.end(); ++it3) {
                    RWAction *write = *it3;
                    if (read == write) continue ;

                    int64_t writeVal = write->get_value();
                    if (dynamic_cast<RMWAction *>(write))
                        writeVal = dynamic_cast<RMWAction *>(write)->getWriteValue();
                    values.insert(writeVal);
                    std::cout << "add value: " << read->get_uniq_name() << " " << writeVal << "\n";
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
                    std::cout << "fMap: " << action->get_thread()->getName() << " " << action->get_seq_number() << " " << v[i-1] << "\n";
                }

                for (set<RWAction*>::iterator vIt = prefixes[cIt-checkVecs.begin()].begin();
                     vIt != prefixes[cIt-checkVecs.begin()].end(); ++vIt) {
                    RWAction* r = *vIt;
                    int64_t readVal = r->get_value();
                    if (dynamic_cast<RMWAction *>(r))
                        readVal = dynamic_cast<RMWAction *>(r)->getReadValue();
                    fMap[make_pair(r->get_thread()->getName(), r->get_seq_number())] = readVal;
                    std::cout << "fMap: " << r->get_thread()->getName() << " " << r->get_seq_number() << " " << readVal << "\n";
                }

                bool continueFlag = true;
                vector<map<pair<string, int>, int64_t > > failedChecks = exe->getChecker()->getFailedChecks();
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
                        std::cout << "Skip an inconsistent check!\n";
                        for (unsigned i = 0; i<vec.size(); ++i) {
                            std::cout << vec[i]->get_uniq_name() << " " << v[i] << "\n";
                        }
                    }
                }

                if (continueFlag == false)
                    continue ;

                bool f = generateSchedule2(vec, v, prefixes[cIt-checkVecs.begin()], fMap);
                /*if (f == false) {
                    exe->getChecker()->addFailedCheck(fMap);
                }*/
            }
        }
    }

    vector<map<pair<string, int>, int64_t > > newFailedSchs;
    vector<map<pair<string, int>, int64_t > > checkSatFailedSchs = exe->getChecker()->getCheckSatFailedSchs();
    std::cout << "Checking previous unsat schedules: " << checkSatFailedSchs.size() << "\n";
    beginCheckingFailedSch = true;
    for (vector<map<pair<string, int>, int64_t > >::iterator it = checkSatFailedSchs.begin();
            it != checkSatFailedSchs.end(); ++it) {
        map<pair<string, int>, int64_t > fMap = *it;

        std::vector<RWAction*> vec;
        vector<int64_t> v;
        bool success = true;
        std::set<Thread*> stopThreads;
        std::cout << "Checking fMap: " << fMap.size() << "\n";
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

        std::cout << "Pre check!\n";
        std::set<RWAction*> prefix;

        map<pair<string, int>, int64_t > fMap2;
        bool f = generateSchedule2(vec, v, prefix, fMap2);

        if (!f)
             newFailedSchs.push_back(fMap);
        else
            std::cout << "Find a new Schedule!\n";
    }
    beginCheckingFailedSch = false;

    exe->getChecker()->clearCheckSatFailedSchs();
    std::cout << "set new failed sch: " << newFailedSchs.size() << " " << exe->getChecker()->getCheckSatFailedSchs().size() << "\n";
    for (vector<map<pair<string, int>, int64_t > >::iterator it = newFailedSchs.begin();
            it != newFailedSchs.end(); ++it)
        exe->getChecker()->addCheckSatFailedSchs(*it);

    std::cout << "In generateModel2 End!\n";
}

void Solver::addSWPair(Action *a, Action *b) {
    swPairs[a] = b;
}

bool Solver::isConsistent() {
    std::cout << "Checking consistency of the current execution!\n";
    if (generateSchedule(NULL, 0) == false || exe->getSolutionValues().size() == 0) {
        std::cout << "Fail!: " << cmg->getConsistency() << "\n";
        //exe->getChecker()->addSch(exe->getCurSch());
        return false;
    }

    std::cout << "Pass!\n";
    return true;
}

void Solver::start() {
    collectData();

    //z3solver->openOutputFile();
    //cmg = new ConstModelGen(exe, this, z3solver);

    //if (isConsistent())
        generateModel2();
    //std::cout << "End solver!\n";
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
    std::cout << "mhb0\n";
    std::cout << "action: " << action->get_uniq_name() << "\n";
    set<Action*> mhbList;
    mhbList.insert(action);

    std::cout << "msss!\n";
    Thread* thread = action->get_thread();
    std::cout << "mhb1: " << thread << "\n";
    //Thread* thread = action->get_thread();
    vector<Action*> actionList = thread->getActionList();

    std::cout << "mhb2\n";
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

    std::cout << "mhb3\n";
    map<string, string> createMap = exe->getThreadCreateMap();
    while(createMap.find(thread->get_id()) != createMap.end()) {
        string newId = createMap[thread->get_id()];
        if (newId == "")
            break ;
        Thread* parentThr = exe->getThread(newId);
        vector<Action*> list = parentThr->getActionList();
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

    std::cout << "mhb4\n";
    while (threads.size() != 0) {
        Thread* thr = threads[0];
        threads.erase(threads.begin());

        vector<Action*> list = thr->getActionList();
        for (vector<Action*>::iterator it = list.begin();
                it != list.end(); ++it) {
            Action* curAction = *it;
            mhbList.insert(curAction);
            if (curAction->get_type() == THREAD_JOIN)
                threads.push_back(exe->getThread(curAction->get_id2()));
        }
    }

    std::cout << "mhb5\n";
    return mhbList;
}


set<Action*> Solver::identifyMHARelation(Action *action) {
    set<Action*> mhaList;
    Thread* thread = action->get_thread();
    vector<Action*> actionList = thread->getActionList();

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

        } else if (curAction == action)
            flag = true;
    }

    while(threads.size() != 0) {
        Thread* thr = threads[0];
        threads.erase(threads.begin());

        vector<Action*> list = thr->getActionList();
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

std::vector<RWAction*> Solver::getWriteSet(std::string str) {
    assert(writeset.find(str) != writeset.end());
    return writeset[str];
}



