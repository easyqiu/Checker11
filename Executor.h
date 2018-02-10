#include <iostream>
#include <sstream>
#include <string>
#include <map>
#include <vector>
#include <set>
#include <pthread.h>
//#include "Thread.h"
//#include "Action.h"
//#include "Action.h"

#include "Types.h"

namespace  checker {
    class Thread;
    class Solver;
    class Schedule;
    class Action;
    class RWAction;
    class ModelChecker;
    //checker::memory_order;
    //enum action_type;

    class Executor {
    public:

        Executor();
        ~Executor();

        void setModelChecker(ModelChecker* checker);

        ModelChecker* getChecker() { return checker; }

        void readPrefix(std::string name);

        Thread* addThread(std::string tid, std::string name);
        Thread* getThread(std::string tid);
        Thread* getThreadByName(std::string name);
        Action* getAction(std::string tid, int seq_num);

        void addAction(Thread* thread, Action* action, uint64_t clapNum = 0);

        void execute_thread_create_action(std::string id1, std::string id2);

        void execute_thread_begin_action(std::string id, std::string name);

        void execute_thread_end_action(std::string id);

        void execute_thread_yield_action(std::string id);

        void execute_thread_join_action(std::string id1, std::string id2);

        int64_t execute_pre_read_action(std::string tid, void *addr, int mo, uint64_t clapNum);

        void execute_post_read_action(std::string tid, void *addr, int mo, int64_t val);

        void execute_write_action(std::string tid, uint64_t clapNum, void *addr, int mo, int64_t val);


        //bool execute_pre_cmp_xchg_action(std::string tid, void *addr, int mo1, int mo2,
        //                                    int32_t expectV, int32_t newVal);

        bool execute_pre_cmp_xchg_action(std::string tid, void *addr, int mo1, int mo2,
                                            int64_t expectV, int64_t newVal, uint64_t clapNum);

        int64_t execute_pre_rmw_xchg_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_add_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_sub_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_and_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_nand_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_or_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_xor_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_max_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_min_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_umax_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        int64_t execute_pre_rmw_umin_action(std::string tid, void *addr, int mo, int64_t val, uint64_t clapNum);

        void execute_tryLock_action(std::string tid, void *addr);

        void execute_lock_action(std::string tid, void *addr);

        void execute_unLock_action(std::string tid, void *addr);

        void execute_fence_action(std::string tid, int mo);

        std::map<std::string, Thread *>& getThreadMap();

        std::map<std::string, std::string>& getThreadCreateMap() { return threadCreateMap; };

        void begin_solver();

        void set_parameters();

        void set_formulaFile(std::string name) { formulaFile = name; }

        int get_inputIndex() { return inputIndex; }

        void set_inputIndex(int num) { inputIndex = num; }

        bool get_bugFixMode() { return bugFixMode; }
        void set_startTime(time_t t) { startTime = t; }
        time_t get_startTime() { return startTime; }
        void set_endTime(time_t t) { endTime = t; }
        time_t get_endTime() { return endTime; }
        std::string get_solverPath() { return solverPath; }
        std::string get_formulaFile() {
            std::stringstream ss;
            ss << "_" << this ;
            return formulaFile + ss.str();
        }
        void addSolutionValue(std::pair<std::string, std::string> p) {
            //std::cout << "add solution: " << p.first << " " << p.second << "\n";
            solutionValues.insert(p);
        }

        void printSolutionValue();
        void printTrace();
        std::map<std::string,std::string>& getSolutionValues() { return solutionValues; }
        Schedule* generateSolutionFile(std::vector<RWAction*> reads,
                                  std::map<RWAction*, int64_t> enforcePairs,
                                       std::set<std::string> enforcedRFs);
                                        //std::set<std::string> binaryRelations);
        void add_unsat_core(int i) { unsatCore.push_back(i); }
        std::vector<int>& get_unsat_core() { return unsatCore; }
        void resetSolver();
        void scheduleNewExe();
        void setCurSch(Schedule* sch) {
            curSch = sch;
            //std::cout << "set curSch: " << curSch << "\n";
        }
        Schedule* getCurSch() {
            //std::cout << "get sch: " << curSch << "\n";
            return curSch;
        }

        void addCreatePoint(Action* a, Action* b = NULL) {
            threadCreatePoints[a] = b;
        }

        void addJoinPoint(Action* a, Action* b) {
            threadJoinPoints[a] = b;
        }

        std::map<Action*, Action*>& getJoinPoints() { return threadJoinPoints; }

        std::map<Action*, Action*>& getCreatePoints() { return threadCreatePoints; }

        //std::vector<Schedule*> getSchedules() { return schedules; }

        void updateBuffer(std::string tid, void* loc, int64_t val, std::string context, int order);
        void updateLocalBuffer(std::string tid, void* loc, int64_t val, std::string context, int order);

        void updateDefUseList(std::string tid, uint64_t clapNum, std::vector<uint64_t > vec);

        void updateTrackedBID(std::string tid, uint64_t bid);
        void clearTrackedBID(std::string tid);
        void setCurrentBid(std::string tid, uint64_t bid);

        void handlePHI(std::string tid, uint64_t clapNum, std::vector<uint64_t> vec1,
                std::vector<uint64_t> vec2);

        void handleFuncBegin(std::string tid, std::string name);
        void handleFuncEnd(std::string tid);

        bool checkFairness(std::map<std::pair<std::string, int>, int64_t> valueMap);

        void updatePriority(std::string tid);

        void handleLoopDep(int bid, std::string name);

        std::map<int, std::set<int> > &getLoopDepArray() { return loopDepArray; }
        std::map<int, std::vector<Action*> > &getLoopDepActionMap() { return loopDepActionMap; }

    protected:
        std::map<std::string, Thread*> threadMap;
        std::map<std::string, Thread*> threadMapByName;
        pthread_mutex_t lockForThreadMap;
        pthread_mutex_t lockForRW;
        pthread_mutex_t lockForFair;
        pthread_mutex_t lockForBuffer;

        std::map<Action*, Action*> threadCreatePoints;
        std::map<std::string, std::string> threadCreateMap;
        std::map<Action*, Action*> threadJoinPoints;
        std::map<std::string, std::string> threadJoinMap;
        pthread_mutex_t lock;
        pthread_cond_t cond;

        Solver* solver;

        ModelChecker* checker;

        int inputIndex;

        Schedule* curSch;

        /** map pair (tid, seq_num)(of action A) -> vector<(tid, seq_num)>, representing all seq_numbers of the actions
         * which happens-before action A */
        std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > > preActions;

        /** record the read values each read in the prefix should read: (fName, seq_num)->value*/
        std::map<std::pair<std::string, int>, int64_t> readValueMap;


        /** Parameters */
        std::string solverPath;
        std::string formulaFile;
        time_t startTime, endTime;
        std::map<std::string, std::string> solutionValues;
        std::vector<int> unsatCore;
        bool bugFixMode;
        bool firstThread;
        //std::vector<Schedule*> schedules;
        std::map<std::string, int> threadsName;

        // for fair schedule
        std::set<std::string> enabledThreads;
        std::map<std::string, std::set<std::string> > priorityOrder;

        std::map<int, std::set<int> > loopDepArray;
        std::map<int, std::vector<Action*> > loopDepActionMap;


    };
}

