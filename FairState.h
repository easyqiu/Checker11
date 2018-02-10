//
// Created by aser on 7/10/17.
//

#ifndef INSTRUMENT_FAIRSTATE_H
#define INSTRUMENT_FAIRSTATE_H

namespace checker {
    class FairState{
    public:
        FairState() {}
        ~FairState() {}

        void addContinueEnabledThreads(std::string tid) {
            continueEnabledThreads.insert(tid);
        }

        void setContinueEnabledThreads(std::set<std::string> newSet) {
            continueEnabledThreads = newSet;
        }

        void resetContinueEnabledThreads() {
            continueEnabledThreads.clear();
        }

        std::set<std::string>& getContinueEnabledThreads() {
            return continueEnabledThreads;
        }

        void addDisabledThreads(std::string tid) {
            disabledThreads.insert(tid);
        }

        void setDisabledThreads(std::set<std::string> newSet) {
            disabledThreads = newSet;
        }

        void resetDisabledThreads() {
            disabledThreads.clear();
        }

        std::set<std::string>& getDisabledThreads() {
            return disabledThreads;
        }

        void addScheduledThreads(std::string tid) {
            scheduledThreads.insert(tid);
        }

        void setScheduledThreads(std::set<std::string> newSet) {
            scheduledThreads = newSet;
        }

        void resetScheduledThreads() {
            scheduledThreads.clear();
        }

        std::set<std::string>& getScheduledThreads() {
            return scheduledThreads;
        }

    private:
        std::set<std::string> continueEnabledThreads;
        std::set<std::string> disabledThreads;
        std::set<std::string> scheduledThreads;
    };
}

#endif //INSTRUMENT_FAIRSTATE_H
