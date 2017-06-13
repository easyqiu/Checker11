//
// Created by aser on 6/12/17.
//

#include <iostream>
#include <set>
#include <string>
#include <map>

#ifndef INSTRUMENT_SCHEDULE_H_H
#define INSTRUMENT_SCHEDULE_H_H

namespace checker {


    class Schedule {
    public:
        Schedule() { std::cout << "Create a Schedule: " << this << "\n"; };

        void updateReadValueMap(std::pair<std::string, int> fs, uint64_t val);
        void updatePreAction(std::pair<std::string, int> action1, std::pair<std::string, int> action2);
        bool checkPreRead(std::pair<std::string, int> action);
        void eraseAction(std::pair<std::string, int> action);
        uint64_t getRFValue(std::pair<std::string, int> action);
        void clearData();
        bool inPrefix(std::pair<std::string, int> action);

    private:
        /** record the read values each read in the prefix should read: (fName, seq_num)->value*/
        std::map <std::pair<std::string, int>, uint64_t> readValueMap;

        /** map pair (tid, seq_num)(of action A) -> vector<(tid, seq_num)>, representing all seq_numbers of the actions
         which happens-before action A */
        std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > > preActions;

    };
}

#endif //INSTRUMENT_SCHEDULE_H_H
