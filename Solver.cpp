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

#include "ConstraintModelGenerator.h"
#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Solver.h"
#include "Util.h"
#include "Schedule.h"
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
                case ATOMIC_READ:
                    readset[action->get_location_str()].push_back(dynamic_cast<RWAction*>(action));
                    break;
                case ATOMIC_WRITE:
                    writeset[action->get_location_str()].push_back(dynamic_cast<RWAction*>(action));
                    break;
                case ATOMIC_RMW:
                case ATOMIC_FENCE:
                    fenceset.insert(dynamic_cast<FenceAction*>(action));
                    break;
                case ATOMIC_RMWR:
                case ATOMIC_RMWC:
                case ATOMIC_INIT:
                case ATOMIC_LOCK:
                case ATOMIC_UNLOCK:
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
void Solver::enforceRW(RWAction *read, uint64_t val) {
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
void Solver::generateSchedule(RWAction *read, uint64_t val) {
    exe->getSolutionValues().clear();
    exe->set_formulaFile(getenv("formulaFile") + util::stringValueOf(exe->get_inputIndex()));
    exe->set_inputIndex(exe->get_inputIndex()+1);

    std::cout << "111\n";
    exe->resetSolver();
    //z3solver->openOutputFile();
    //z3solver->resetDeclaredVars();
    cmg = new ConstModelGen(exe, this, z3solver);

    cmg->addBinaryConstraints();
    cmg->addMOConstraints();

    std::cout << "222\n";
    map<RWAction *, uint64_t> enforcePairs;
    if (read != NULL) {
        set<Action *> mhbList = identifyMHBRelation(read);
        //set<Action*> list = identifyMHBRelation(write);
        //mhbList.insert(list.begin(), list.end());
        for (set<Action *>::iterator it = mhbList.begin();
             it != mhbList.end(); ++it) {
            Action *action = *it;
            RWAction *r = dynamic_cast<RWAction *>(action);
            if (r == NULL || r->is_write() == true)
                continue;

            if (r != read)
                enforcePairs[r] = r->get_value();
            else
                enforcePairs[r] = val;
            //std::cout << "enfore: " << r << " " << enforcePairs[r] << " " << r->get_mo_constraint() << "\n";
        }
    } else { // check the consistency of the original execution
        map<string, Thread*> tMap = exe->getThreadMap();
        std::cout << "tMap: " << tMap.size() << "\n";
        for (map<string, Thread*>::iterator it = tMap.begin();
                it != tMap.end(); ++it) {
            Thread* thr = it->second;
            std::cout << "thread: " << thr << "\n";
            vector<Action*> aList = thr->getActionList();
            std::cout << "Thread: " << thr << " " << aList.size() << "\n";
            for (vector<Action*>::iterator it2 = aList.begin();
                    it2 != aList.end(); ++it2) {
                Action* action = *it2;
                std::cout << "mmm\n";
                if (dynamic_cast<RWAction*>(action) == NULL) continue ;

                RWAction* r = dynamic_cast<RWAction*>(action);
                if (r->is_write()) continue ;

                enforcePairs[r] = r->get_value();
            }
            std::cout << "333\n";
        }
    }

    cmg->addRWRelations(enforcePairs);
    cmg->enforeceConsistentConstraint();

    z3solver->solve();
    //exe->printSolutionValue();
    exe->generateSolutionFile();
    delete  cmg;
}

void Solver::generateModel() {

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
                if (curSch->inPrefix(std::make_pair(thread->getName(), read->get_seq_number())))
                    continue ;
                if (read->get_value() == write->get_value())
                    continue ;

                std::cout << "Generating: " << read << " " << write << " " << read->get_action_str() << " " << write->get_action_str() << "\n";
                //std::cout << "B name: " << read->get_binary_rel_name(write) << "\n";
                generateSchedule(read, write->get_value());
            }
        }
    }
}

void Solver::addSWPair(Action *a, Action *b) {
    swPairs[a] = b;
}

bool Solver::isConsistent() {
    generateSchedule(NULL, 0);
    if (exe->getSolutionValues().size() == 0) {
        std::cout << "Note: Generate an inconsistent execution!\n";
        return false;
    }

    return true;
}

void Solver::start() {
    collectData();

    //z3solver->openOutputFile();
    //cmg = new ConstModelGen(exe, this, z3solver);

    if (isConsistent())
        generateModel();
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
    set<Action*> mhbList;
    mhbList.insert(action);

    Thread* thread = action->get_thread();
    //Thread* thread = action->get_thread();
    vector<Action*> actionList = thread->getActionList();

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

}




