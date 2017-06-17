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
    class RWAction;
    class ConstModelGen;
    class Z3Solver;

    class Solver {
    public:
        Solver(Executor* exe);

        void parseTrace();
        void parse_constraints(std::string filename);
        bool isConsistent();
        void generateModel();
        void collectData();
        //void generateSWRelations();
        void addSWPair(Action* a, Action* b);
        std::map<Action*, Action*> getSWPairs() { return swPairs; }
        std::string enforceBRelation(Action* a1, Action* a2, int val);
        std::string enforceRFRelation(Action* a1, Action* a2, int val);
        void enforceRW(RWAction* read, uint64_t val);
        void generateSchedule(RWAction* read, uint64_t val);
        std::set<Action*> identifyMHBRelation(Action* action);
        std::set<Action*> identifyMHARelation(Action* action);
        std::map<std::string, std::vector<RWAction*> > getReadSet() { return readset; }
        std::map<std::string, std::vector<RWAction*> > getWriteSet() { return writeset; }
        void start();
        Z3Solver* getSolver() { return z3solver; }

    private:
        Executor* exe;
        ConstModelGen* cmg;
        Z3Solver* z3solver;
        std::map<std::string, std::vector<RWAction*> > readset;
        std::map<std::string, std::vector<RWAction*> > writeset;
        std::set<FenceAction*> fenceset;
        std::map<Action*, Action*> swPairs;
    };
}

#endif //INSTRUMENT_SOLVER_H