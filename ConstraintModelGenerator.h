//
// Created by aser on 6/8/17.
//

#ifndef INSTRUMENT_CONSTRAINTMODELGENERATOR_H
#define INSTRUMENT_CONSTRAINTMODELGENERATOR_H

#include <iostream>
#include <map>
#include <vector>
#include <string>
#include "Z3Solver.h"
//#include "Schedule.h"

namespace  checker {
    class Action;
    class RWAction;
    class Executor;
    class Solver;

    class ConstModelGen {
    protected:
        Z3Solver* z3solver;
        Solver* solver;

        double numB; //number of memory order constraints
        double numRW; //number of read-write constraints
        double numLO; //number of locking order constraints
        double numPO; //number of partial order synchronization constraints
        double numPC; //number of path constraints
        double numUnkownVars; //number of unknown variables
        Executor* exe;

    private:
        //std::vector<Action *> getWritesForRead(Action readop, std::vector<Action> writeset);

    public:
        ConstModelGen(Executor* exe, Solver* s, Z3Solver* solver) {
            this->exe = exe;
            this->solver = s;
            z3solver = solver;
            initialize();
        }

        void initialize();
        void addBinaryConstraints();
        void declareIntVar(std::string name);
        std::string addRFRelation(RWAction* read, RWAction* write, int val);
        std::string addRWRelation(RWAction* read, uint64_t val);
        void addRWRelations(std::map<RWAction*, uint64_t > pairs);
        void addSWConstraints(std::map<Action*, Action*> swRelations);
    };
}

#endif //INSTRUMENT_CONSTRAINTMODELGENERATOR_H

