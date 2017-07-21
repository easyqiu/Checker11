//
// Created by aser on 6/12/17.
//

#include <iostream>
#include <vector>
#include <string>
#include <map>

#include "Schedule.h"

#ifndef INSTRUMENT_MODELCHECKER_H
#define INSTRUMENT_MODELCHECKER_H

namespace checker {
    class Executor;
    class Schedule;

    class ModelChecker {
    public:
        ModelChecker();

        void setExecutor(Executor* exe) { this->exe = exe; }
        int getTest() { return test; }
        void addSch(Schedule* sch/*, std::vector<Schedule*> it = NULL*/) {
            //if (it == NULL)
                schList.push_back(sch);
            /*else
                schList.insert(it, sch);*/
        }
        std::vector<Schedule*> getSchList() { return schList; }
        void eraseSch() { schList.erase(schList.begin()); }

        void addToSolverTime(double addedTime) {
            solverTime += addedTime;
        }

        double getSolverTime() { return solverTime; }

        void addFailedCheck(std::map<std::pair<std::string, int>, int64_t> newMap) {
            failedChecks.push_back(newMap);
            std::cout << "add a failed check2: \n";
        }

        std::vector<std::map<std::pair<std::string, int>, int64_t> > getFailedChecks() {
            //std::cout << "Get failed check11: " << failedChecks.size() << "\n";
            return failedChecks;
        }

        void addCheckSatFailedSchs(std::map<std::pair<std::string, int>, int64_t > newMap);

        void clearCheckSatFailedSchs() { checkSatFailedSchs.clear(); }

        std::vector<std::map<std::pair<std::string, int>, int64_t> > getCheckSatFailedSchs() {
            return checkSatFailedSchs;
        };

    private:
        int test;
        std::vector<Schedule*> schList;
        Executor* exe;
        std::vector<std::map<std::pair<std::string, int>, int64_t> > failedChecks;
        std::vector<std::map<std::pair<std::string, int>, int64_t> > checkSatFailedSchs;


        // for statistics
        double solverTime;
    };

}

#endif //INSTRUMENT_MODELCHECKER_H
