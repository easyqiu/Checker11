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

    class Action;

    class Schedule {
    public:
        Schedule() {
            std::cout << "Create a Schedule: " << this << "\n";
            pthread_mutex_init(&preActionsLock, NULL);
            clearData();
            index = -1;
            parentIndex = -1;
            consistentConstraint = "";
        };

        void updateReadValueMap(std::pair<std::string, int> fs, std::string context, std::pair<int64_t, std::string> item);
        void updateReadValueMap2(std::pair<std::string, int> fs, std::string context, std::pair<int64_t, std::string> item);
        std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >& getReadValueMap() { return readValueMap; }
        void updatePreAction(std::pair<std::string, int> action1, std::pair<std::string, int> action2);
        bool checkPreAction(Action* action);
        void deletePreAction(std::map<std::string, int> maxIndex);
        void deletePreAction2();
        void updatePreAction2(std::string action1, std::string action2);
        bool checkPreAction2(Action* action);
        //bool checkPreFence(std::pair<std::string, int> action);
        void eraseAction(std::pair<std::string, int> action);
        void eraseAction2(std::string action);
        //bool getRFValue(std::pair<std::string, int> action, int64_t &val);
        bool getRFValue2(std::string actionContext, std::string &readContext, std::pair<int64_t, std::string> &item);
        void clearData();
        bool inPrefix(std::pair<std::string, int> action);
        bool inPrefix2(std::string contex);
        void updatePrefix(std::string threadName, int prefix);
        std::map<std::string, int >& getPrefixMap();
        std::map<std::string, int64_t> getPrefixContexts() { return prefixContexts; }
        void addPrefixContext(std::string context, int64_t val) {
            prefixContexts[context] = val;
            remainContexts.insert(context);
        }
        void setActionMap(std::string action1, std::pair<std::string, int> action2);
        void setActionMap2(std::pair<std::string, int> action2, std::string action1);
        const std::map<std::string, std::pair<std::string, int> >& getActionMap();
        const std::map<std::pair<std::string, int>, std::string >& getActionMap2();

        void setConsistentConstraint(std::string constraint) {
            //std::cout << "setting in sch: " << this << " " << constraint << "\n";
            consistentConstraint = constraint;
        }
        std::string getConsistentConstraint() {
            //std::cout << "getting in sch: " << this << " !" << consistentConstraint << "!\n";
            return consistentConstraint;
        }

        void setCommonDeclare(std::string constraint) { commonDeclare = constraint; }
        std::string getCommonDeclare() { return commonDeclare; }

        void setIndex(int ind) { index = ind; }
        int getIndex() { return  index; }
        void setParentIndex(int ind) { parentIndex = ind; }
        int getParentIndex() { return parentIndex; }

        void print();

    private:
        int index;
        int parentIndex;
        /** record the read values each read in the prefix should read: (fName, seq_num)->value*/
        std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > > readValueMap;
        std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > > readValueMap2;
        std::map<std::string, int> prefixMap;
        std::map<std::string, int64_t> prefixContexts;
        std::set<std::string> remainContexts;

        /** map pair (tid, seq_num)(of action A) -> vector<(tid, seq_num)>, representing all seq_numbers of the actions
         which happens-before action A */
        std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > > preActions;
        std::map<std::string, std::set<std::string> > preActions2;
        std::set<std::string> erasedActions;

        std::map<std::string, std::pair<std::string, int> > actionMap;
        std::map<std::pair<std::string, int>, std::string> actionMap2;
        pthread_mutex_t preActionsLock;

        // for generated constraints;
        std::string consistentConstraint;
        std::string commonDeclare;

    };
}

#endif //INSTRUMENT_SCHEDULE_H_H
