//
// Created by aser on 6/12/17.
//

//#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <set>

using namespace std;

#ifndef INSTRUMENT_MODELCHECKER_H
#define INSTRUMENT_MODELCHECKER_H

namespace checker {
    class Executor;
    class Schedule;
    class Z3Solver;

    class ModelChecker {
    public:
        ModelChecker();
        ~ModelChecker();

        void setExecutor(Executor* exe);
        int getTest() { return test; }
        void addSch(Schedule* sch, Schedule* parentSch);
        std::vector<Schedule*>& getSchList() { return schList; }
        void eraseSch() {
            //Schedule* sch = *(schList.begin());
            schList.erase(schList.begin());
            //delete sch;
        }

        void addToExeTime(double addedTime) {
            executeTime += addedTime;
        }
        void addToSolverTime(double addedTime) {
            solverTime += addedTime;
        }

        double getSolverTime() { return solverTime; }
        double getExeTime() { return executeTime; }

        void addFailedCheck(std::map<std::pair<std::string, int>, int64_t> newMap) {
            failedChecks.push_back(newMap);
            //std::cout << "add a failed check2: " << failedChecks.size() << "\n";
        }

        std::vector<std::map<std::pair<std::string, int>, int64_t> >& getFailedChecks() {
            //std::cout << "Get failed check11: " << failedChecks.size() << "\n";
            return failedChecks;
        }

        void addCheckSatFailedSchs(std::map<std::pair<std::string, int>, int64_t > newMap);

        void clearCheckSatFailedSchs() { checkSatFailedSchs.clear(); }

        std::vector<std::map<std::pair<std::string, int>, int64_t> >& getCheckSatFailedSchs() {
            return checkSatFailedSchs;
        };

        void loadDepInfo();
        bool loadScheduleFromFile();
        void readReachability();

        //Z3Solver* getSolver() { return z3solver; } // ****

        void addGeneratedPrefix(std::map <std::string, int64_t> valueMap, Schedule* sch);
        bool preAddGeneratedPrefix(std::map<std::string, int64_t> currentPrefix, Schedule* parentSch);

    private:
        int test;
        std::vector<Schedule*> schList;
        // map each schdule to its index and parent index <index, parent>
        //std::map<Schedule*, std::pair<int, int> > scheduleInfo;

        Executor* exe;
        std::vector<std::map<std::pair<std::string, int>, int64_t> > failedChecks;
        std::vector<std::map<std::pair<std::string, int>, int64_t> > checkSatFailedSchs;

        std::vector<std::map<std::string, int64_t> > generatedPrefixes;
        std::map<int, int> parentMap;
        std::map<int, std::set<int> > childenMap;

        std::map<int, std::set<int> > reachability; // for static dependency analysis
        std::map<int, std::set<int> > depInfo;

        //Z3Solver* z3solver;

        // for statistics
        double solverTime;
        double executeTime;
    };

}

#endif //INSTRUMENT_MODELCHECKER_H
