//
// Created by aser on 6/8/17.
//

#ifndef INSTRUMENT_SOLVER_H
#define INSTRUMENT_SOLVER_H

#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <set>

//using namespace std;
//#include "Parameters.h"

namespace  checker {
    class Executor;
    class Thread;
    class Action;
    class ConstModelGen;
    class Z3Solver;

    class Solver {
    public:
        Solver(Executor* exe);

        void parseTrace();
        void parse_constraints(std::string filename);
        void collectData();
        void generateSWRelations();
        void start();

    private:
        Executor* exe;
        ConstModelGen* cmg;
        Z3Solver* z3solver;
        std::map<std::string, std::vector<Action*> > readset;
        std::map<std::string, std::vector<Action*> > writeset;
        std::map<Action*, Action*> swRelations;
    };
}

#endif //INSTRUMENT_SOLVER_H