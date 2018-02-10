#include <string>
#include <vector>
#include <iostream>

//#include "Action.h"
//#include "Executor.h"

namespace checker {

    class Action;
    class Executor;
    class Buffer;
    class StackFrame;
    class FairState;

    class Thread {
    public:
        Thread(Executor* exe, std::string tid, std::string n);

        ~Thread();

        bool pause(Action *h) {
            return false;
        }

        void setInConsistency(bool flag) { inConsistency = flag; }
        bool getInconsistency() { return inConsistency; }

        /*int getValue(Action *action) {
            return -1;//preFix
        }*/

        void addAction(Action *action, uint64_t clapNum);

        std::vector<Action *>& getActionList();

        std::string getName();

        std::string get_id() { return id; }

        Executor* getExe() { return exe; }

        void clearBuffer(void* loc);
        void updateBuffer(void* loc, int64_t val, std::string context, int order);
        void updateBuffer(std::map<std::string, Buffer*> buffers);

        void fetchExpectVal(std::string context, void* loc, std::pair<int64_t, std::string> item);
        std::pair<int64_t, std::string> getValue(std::string context, void* loc);
        std::pair<int64_t, std::string> getValue2(std::string context, std::string expectContext, void* loc);

        std::map<std::string, Buffer*> getBuffers() { return buffers; }

        void addNewLoad(uint64_t clapNum, Action* action);
        //std::vector<std::pair<uint64_t, int> >  getClapNumMap() { return clapNumToSeqNum; }
        void addClapList(uint64_t clapNum, std::vector<uint64_t > vec);
        //std::vector<std::pair<uint64_t , std::set<uint64_t > > > getClapList() { return clapNumToList; }

        void setTrackedBID(uint64_t bid);
        void clearBID();
        std::set<uint64_t>& getBID();

        void setCurrentBid(uint64_t bid);
        uint64_t getCurrentBid();

        void handlePHI(uint64_t clapNum, std::vector<uint64_t> vec1, std::vector<uint64_t> vec2);

        void updateReachabilityMap(uint64_t clapNum, Action* action);
        void setReachabilityMap(int seqNum, std::set<Action*> vec);
        void addReachabilityMap(int seqNum, std::set<Action*> vec);
        //std::map<int, std::set<Action*> > &getReachabilityMap();
        std::set<Action*> getReachabilityMap(int seqNum);

        void setContext();
        std::string getContext();

        void handleFuncBegin(std::string name);
        void handleFuncEnd();

        FairState* getFairState() { return fairState; }

        std::string printTrace();
        void printReachabilityMap();

    private:
        std::string id;
        std::string name;
        Executor *exe;
        std::string context;
        std::vector<Action *> actionList;
        std::vector<Action *> preFix;
        std::map<std::string, Buffer*> buffers; // loc -> buffer
        bool inConsistency;

        /*uint64_t trackedBID; // the bid that current inst dependents on
        uint64_t currentBID; // the previous bid
        std::set<uint64_t> loadsWithClapNum; //
        std::vector<std::pair<uint64_t, int> > clapNumToSeqNum; // clapNum -> load seq num
        std::vector<std::pair<uint64_t , std::set<uint64_t > > > clapNumToList;*/
        std::map<int, std::set<Action*> > reachabilityMap; // store seq num ->load seq num list
        std::vector<StackFrame*> stack;
        FairState* fairState;

        std::map<std::string, std::pair<int64_t, int> > clapTimes; // for generating fair states

    };
}

