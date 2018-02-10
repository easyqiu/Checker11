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
    class RMWAction;
    class LockAction;
    class ConstModelGen;
    class Z3Solver;

    class Solver {
    public:
        Solver(Executor* exe);
        ~Solver();

        void parseTrace();
        void parse_constraints(std::string filename);
        bool isConsistent();

        std::vector<std::vector<RWAction*> > generateCombinations(std::vector<std::vector<RWAction*> > vec);
        std::vector<std::vector<int64_t> > generateValueCombinations(std::vector<std::set<int64_t> > vec);
        std::vector<std::vector<int64_t> > generateValueCombinations2(std::vector<RWAction*> vec);
        void generateModel();
        void generateModel2(); // handle redundancy
        void generateModel3(); // handle redundancy
        void collectData();
        //void generateSWRelations();
        void addSWPair(Action* a, Action* b);
        std::map<Action*, Action*>& getSWPairs() { return swPairs; }
        std::string enforceBRelation(Action* a1, Action* a2, int val);
        std::string enforceRFRelation(Action* a1, Action* a2, int val);
        void enforceRW(RWAction* read, int64_t val);
        bool generateSchedule(RWAction* read, int64_t val, std::set<RWAction*> commonPrefix);
        bool generateSchedule2(std::vector<RWAction*> reads, std::vector<int64_t> vals,
                               std::set<RWAction*> prefix, std::set<RWAction*> commonPrefix,
                               std::map<std::pair<std::string, int>, int64_t > fMap);
        bool checkFairness(std::map<RWAction *, int64_t> enforcePairs);

        std::set<Action*> identifyMHBRelation(Action* action);
        std::set<Action*> identifyMHARelation(Action* action);

        std::map<std::string, std::vector<RWAction*> >& getReadSet() { return readset; }
        std::map<std::string, std::vector<RWAction*> >& getWriteSet() { return writeset; }
        std::set<FenceAction*>& getFenceSet() { return fenceset; }
        std::vector<RWAction*>& getWriteSet(std::string str);
        std::map<std::string, std::vector<std::pair<LockAction*, LockAction*> > >& getLockset() { return lockset; }
        std::set<Action*>& getSCActions() { return scActions; }

        void start();
        Z3Solver* getSolver() { return z3solver; }

        void setConsistentConstraint(std::string constraint) {
            commonCSConstraint = constraint;
            //std::cout << "setting in solver: " << this << " !" << commonCSConstraint << "!\n";
            //getConsistentConstraint();
        }

        std::string getConsistentConstraint() {
            //std::cout << "getting in solver: " << this << " !" << commonCSConstraint << "!\n";
            return  commonCSConstraint;
        }

        void setCommonDeclare(std::string constraint) {
            commonDeclare = constraint;
        }

        std::string getCommonDeclare() { return commonDeclare; }

        int checkMHB(Action* a1, Action* a2);
        void constructMHBLists();
        std::set<std::vector<Action*> >& getMHBList() { return mhbLists; }

    private:
        Executor* exe;
        ConstModelGen* cmg;
        Z3Solver* z3solver;
        std::map<std::string, std::vector<RWAction*> > readset;
        std::map<std::string, std::vector<RWAction*> > writeset;
        std::map<std::string, std::vector<std::pair<LockAction*, LockAction*> > > lockset;
        std::set<std::vector<Action*> > mhbLists;

        std::set<Action*> scActions;
        std::set<FenceAction*> fenceset;
        std::map<Action*, Action*> swPairs;

        std::string commonDeclare;
        std::string commonCSConstraint;
    };
}

#endif //INSTRUMENT_SOLVER_H