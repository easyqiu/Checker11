//
// Created by aser on 6/12/17.
//

#include <iostream>
#include <set>
#include <string>
#include <map>
#include <pthread.h>

#ifndef INSTRUMENT_SCHEDULE_H_H
#define INSTRUMENT_SCHEDULE_H_H

namespace checker {


    class Schedule {
    public:
        Schedule() {
            //std::cout << "Create a Schedule: " << this << "\n";
            pthread_mutex_init(&preActionsLock, NULL);
            clearData();
        };

        void updateReadValueMap(std::pair<std::string, int> fs, int64_t val);
        std::map <std::pair<std::string, int>, int64_t> getReadValueMap() { return readValueMap; }
        void updatePreAction(std::pair<std::string, int> action1, std::pair<std::string, int> action2);
        bool checkPreAction(std::pair<std::string, int> action);
        //bool checkPreFence(std::pair<std::string, int> action);
        void eraseAction(std::pair<std::string, int> action);
        int64_t getRFValue(std::pair<std::string, int> action);
        void clearData();
        bool inPrefix(std::pair<std::string, int> action);
        void updatePrefix(std::string threadName, int prefix);
        std::map<std::string, int> getPrefixMap();
        void print();

    private:
        /** record the read values each read in the prefix should read: (fName, seq_num)->value*/
        std::map <std::pair<std::string, int>, int64_t> readValueMap;
        std::map<std::string, int> prefixMap;

        /** map pair (tid, seq_num)(of action A) -> vector<(tid, seq_num)>, representing all seq_numbers of the actions
         which happens-before action A */
        std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > > preActions;
        pthread_mutex_t preActionsLock;

    };
}

#endif //INSTRUMENT_SCHEDULE_H_H
