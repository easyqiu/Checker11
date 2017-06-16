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
#include "SWRelation.h"
//#include "Schedule.h"

namespace  checker {
    class Action;
    class RWAction;
    class FenceAction;
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
        //std::map<Action*, Action*> swPairs;
        set<SWRelation*> swRelations;

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
        void addASWRelation();
        void declareIntVar(std::string name);
        std::string addRFRelation(RWAction* read, RWAction* write, int val);
        std::string addRWRelation(RWAction* read, uint64_t val);
        void addRWRelations(std::map<RWAction*, uint64_t > pairs);
        void addSWConstraints();
        void addMOConstraints();

        void enforeFenceAcquire(FenceAction* fence, RWAction* write, RWAction* read,
                                RWAction* firstW, int writeNum);
        void enforeReleaseFence(FenceAction* fence, RWAction* write, RWAction* read,
                                RWAction* firstW, int writeNum);
        void enforeFenceFence(FenceAction* rFence, FenceAction* aFence,
                              RWAction* write, RWAction* read, RWAction* firstW, int writeNum);

        void identifySWFence(RWAction* read, RWAction* write);
        bool isEnforceSWRelation(Action* a, Action* b);
        Action* getRelSeqHead(RWAction* write); // get the head of the release sequence that 'write' belong to

        bool overlap(std::set<Action*> set1, std::set<Action*> set2);
        bool isAcquireFence(FenceAction* action);
        bool isReleaseFence(FenceAction* action);
        bool isAcquire(RWAction* fence);
        bool isRelease(RWAction* fence);
    };
}

#endif //INSTRUMENT_CONSTRAINTMODELGENERATOR_H

