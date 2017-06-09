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

namespace  checker {
    class Executor;
    class Thread;
    class Action;

    class Solver {
    public:
        Solver(Executor* exe) {
            this->exe = exe;
        }

        void parseTrace();
        void parse_constraints(std::string filename);
        void collectData();
        void start();

    private:
        Executor* exe;
        std::map<std::string, std::vector<Action*> > readset;
        std::map<std::string, std::vector<Action*> > writeset;

    };
}

#endif //INSTRUMENT_SOLVER_H