//
// Created by aser on 6/12/17.
//

#include <iostream>
#include <vector>

#ifndef INSTRUMENT_MODELCHECKER_H
#define INSTRUMENT_MODELCHECKER_H

namespace checker {
    class Executor;
    class Schedule;

    class ModelChecker {
    public:
        ModelChecker() {
            test = 3;
            std::cout << "Generate a model checker: " << this << "\n";
        }

        void setExecutor(Executor* exe) { this->exe = exe; }
        int getTest() { return test; }
        void addSch(Schedule* sch) { schList.push_back(sch); }
        std::vector<Schedule*> getSchList() { return schList; }
        void eraseSch() { schList.erase(schList.begin()); }

    private:
        int test;
        std::vector<Schedule*> schList;
        Executor* exe;
    };

}

#endif //INSTRUMENT_MODELCHECKER_H
