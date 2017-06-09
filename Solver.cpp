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

#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Solver.h"

#define MAX_LINE_SIZE 100

using namespace checker;
using namespace std;

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
    for (std::map<std::string, Thread *>::iterator it = exe->getThreadMap().begin();
            it != exe->getThreadMap().end(); ++it) {
        std::string name = it->first;
        Thread *thread = it->second;
        for (std::vector<Action *>::iterator it2 = thread->getActionList().begin();
             it2 != thread->getActionList().end(); ++it2) {
            Action *action = *it2;

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
                    readset[action->get_location_str()].push_back(action);
                    break;
                case ATOMIC_WRITE:
                    writeset[action->get_location_str()].push_back(action);
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

void Solver::start() {
    collectData();
}
