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
    cmg->addBinaryConstraints();
    cmg->addSWConstraints(swRelations);

    set<Action*> mhbList = identifyMHBRelation(read);
    //set<Action*> list = identifyMHBRelation(write);
    //mhbList.insert(list.begin(), list.end());
    map<RWAction*, uint64_t> enforcePairs;
    for (set<Action*>::iterator it = mhbList.begin();
            it != mhbList.end(); ++it) {
        Action* action = *it;
        RWAction* r = dynamic_cast<RWAction*>(action);
        if (r == NULL || r->is_write() == true)
            continue ;

        if (r != read)
            enforcePairs[r] = r->get_value();
        else
            enforcePairs[r] = val;
    }

    cmg->addRWRelations(enforcePairs);
    z3solver->solve();
    exe->printSolutionValue();
    exe->generateSolutionFile();

}

void Solver::generateModel() {

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
            for (vector<RWAction*>::iterator wIt = writeList.begin();
                    wIt != writeList.end(); ++wIt) {
                RWAction* write = *wIt;
                if (read->get_value() == write->get_value())
                    continue ;
                std::cout << "Generating: " << read->get_action_str() << " " << write->get_value() << "\n";
                generateSchedule(read, write->get_value());
            }
        }
    }
}

void Solver::generateSWRelations() {

}

void Solver::start() {
    collectData();

    z3solver->openOutputFile();
    cmg = new ConstModelGen(exe, this, z3solver);

    generateSWRelations();
    generateModel();
}

set<Action*> Solver::identifyMHBRelation(Action *action) {
    set<Action*> mhbList;

    mhbList.insert(action);
    Thread* thread = action->get_thread();
    vector<Action*> actionList = thread->getActionList();

    for (vector<Action*>::iterator it = actionList.begin();
            it != actionList.end(); ++it) {

        Action* curAction = *it;
        if (curAction == action)
            break ;
        mhbList.insert(curAction);
    }

    map<Thread*, Thread*> createMap = exe->getThreadCreateMap();
    if (createMap.find(thread) != createMap.end()) {
        Thread* parentThread = createMap[thread];
        Action* lastAction = parentThread->getActionList().back();
        set<Action*> list = identifyMHBRelation(lastAction);
        mhbList.insert(list.begin(), list.end());
    }

    return mhbList;
}

std::string Solver::enforceBRelation(Action *a1, Action *a2, int val) {

}




