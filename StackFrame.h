//
// Created by aser on 7/5/17.
//

#ifndef INSTRUMENT_STACKFRAME_H
#define INSTRUMENT_STACKFRAME_H

#include <string>
#include <vector>
#include <map>
#include <set>

namespace checker {

    class Action;
    class Thread;

    class StackFrame {
    public:
        StackFrame(Thread* thread, std::string name) {
            this->thread = thread;
            funcName = name;
            trackedBID.insert(0);
        }

        void addSeqNum(int num) { seqVec.push_back(num); }
        std::vector<int> getSeqNums() { return seqVec; }

        void setTrackedBID(uint64_t bid) { trackedBID.insert(bid); }

        void clearTrackedBID() {
            trackedBID.clear();
            trackedBID.insert(0);
        }

        std::set<uint64_t> getBID() { return trackedBID; }

        void setCurrentBid(uint64_t bid) { currentBID = bid; }
        uint64_t getCurrentBid() { return  currentBID; }

        void addLoad(uint64_t clapNum, Action* action);

        void updateLoads(uint64_t clapNum, std::vector<uint64_t> vec);
        void updateReachabilityMap(uint64_t clapNum, Action* action);
        void handlePHI(uint64_t clapNum, std::vector<uint64_t> vec1, std::vector<uint64_t> vec2);

    private:
        Thread* thread;
        std::string funcName;
        std::vector<int> seqVec;
        //std::vector<std::pair<uint64_t, int> > loads;
        std::map<uint64_t, Action*> clapToSeq; // for loads
        std::map<uint64_t, std::set<Action*> > clapToLoads;

        std::set<uint64_t> trackedBID; // the bid that current inst dependents on
        uint64_t currentBID; // the previous bid

    };
}

#endif //INSTRUMENT_STACKFRAME_H
