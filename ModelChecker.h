//
// Created by aser on 6/12/17.
//

#include <iostream>
#include <vector>

#include "Schedule.h"

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
        void addSch(Schedule* sch/*, std::vector<Schedule*> it = NULL*/) {
            //if (it == NULL)
                schList.push_back(sch);
            /*else
                schList.insert(it, sch);*/
        }
        std::vector<Schedule*> getSchList() { return schList; }
        void eraseSch() { schList.erase(schList.begin()); }

    private:
        int test;
        std::vector<Schedule*> schList;
        Executor* exe;
    };

}

#endif //INSTRUMENT_MODELCHECKER_H
