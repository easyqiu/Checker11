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
#include "Schedule.h"
//#include "Action.h"
//#include "Types.h"


namespace  checker {
    class Action;

    class ConstModelGen {
    protected:
        Z3Solver z3solver;
        double numMO; //number of memory order constraints
        double numRW; //number of read-write constraints
        double numLO; //number of locking order constraints
        double numPO; //number of partial order synchronization constraints
        double numPC; //number of path constraints
        double numUnkownVars; //number of unknown variables
        Executor* exe;

    private:
        std::vector<Action *> getWritesForRead(Action readop, std::vector<Action> writeset);

    public:
        ConstModelGen(Executor* exe) { this->exe = exe; }

        void createZ3Solver();  //creates an instance of the z3 solver
        void addMemoryOrderConstraints(std::map<std::string, std::vector<Action *> > operationsByThread);

        void addReadWriteConstraints(std::map<std::string, std::vector<Action> > readset, std::map<std::string,
                std::vector<Action> > writeset, std::map<std::string, std::vector<Action *> > operationsByThread);

        void addPathConstraints(std::vector<Action> pathset);

        void addLockingConstraints(std::map<std::string, std::vector<Action> > lockpairset);

        void addForkStartConstraints(std::map<std::string, std::vector<Action> > forkset,
                                     std::map<std::string, Action> startset);

        void addJoinExitConstraints(std::map<std::string, std::vector<Action> > joinset,
                                    std::map<std::string, Action> exitset);

        void addWaitSignalConstraints(std::map<std::string, std::vector<Action> > waitset,
                                      std::map<std::string, std::vector<Action> > signalset);

        //void addAvisoConstraints(std::map<std::string, std::vector<Action*> > operationsByThread, AvisoEventVector fulltrace);
        void openOutputFile(); //opens a file used to store the generated model
        bool solve();   //tries to solve the model and returns true if the model has a solution
        bool solveWithSolution(std::vector<std::string> solution,
                               bool invertBugCond);   //solve the model with the bug condition inverted and a solution, in order to find the buggy constraints
        void closeSolver();  //close the output file and the pipes, and kills the process running z3
        void resetSolver();  //resets the data structures in z3solver
    };
}

#endif //INSTRUMENT_CONSTRAINTMODELGENERATOR_H

