//
// Created by aser on 6/14/17.
//

#ifndef INSTRUMENT_SWRELATION_H
#define INSTRUMENT_SWRELATION_H

#include <set>

using namespace std;

namespace checker {
    class Action;

    class SWRelation {
    public:
        // fromAction --sw--> toAction
        SWRelation(Action* a, Action* b) {
            fromAction = a;
            toAction = b;
        }

        void setHBList(set<Action*> list) { std::cout << "set hblist: " << this << "\n"; hbList = list; }
        void setHAList(set<Action*> list) { std::cout << "set halist: " << this << "\n"; haList = list; }

        set<Action*> getHBList() { return hbList; }
        set<Action*> getHAList() { return haList; }

        Action* getFromAction() { return fromAction; }
        Action* getToAction() { return toAction; }

        void addContained(SWRelation* sw) {
            contained.insert(sw);
        }

        void addContained(set<SWRelation*> swList) {
            contained.insert(swList.begin(), swList.end());
        }

        void setPreCond(std::string cond) { preCond = cond; }
        std::string getPrecond() { return preCond; }
        set<SWRelation*> getContained() { return contained; }

    private:
        Action* fromAction;
        Action* toAction;
        std::string preCond;
        set<SWRelation*> contained; // the swRelations which deduces this

        set<Action*> hbList; // for fromAction
        set<Action*> haList; // for toAction
    };
}

#endif //INSTRUMENT_SWRELATION_H
