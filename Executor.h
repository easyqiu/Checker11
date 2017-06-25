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
        ~Executor() {
            pthread_mutex_destroy(&lock);
            pthread_mutex_destroy(&lockForThreadMap);
        }

        void setModelChecker(ModelChecker* checker);

        ModelChecker* getChecker() { return checker; }

        void readPrefix(std::string name);

        Thread* addThread(std::string tid, std::string name);
        Thread* getThread(std::string tid);
        Action* getAction(std::string tid, int seq_num);

        void execute_thread_create_action(std::string id1, std::string id2);

        void execute_thread_begin_action(std::string id, std::string name);

        void execute_thread_end_action(std::string id);

        void execute_thread_join_action(std::string id1, std::string id2);

        int execute_pre_read_action(std::string tid, void *addr, int mo);

        void execute_post_read_action(std::string tid, void *addr, int mo, uint64_t val);

        void execute_write_action(std::string tid, void *addr, int mo, uint64_t val);


        bool execute_pre_cmp_xchg_action(std::string tid, void *addr, int mo1, int mo2,
                                            int32_t expectV, int32_t newVal);

        bool execute_pre_cmp_xchg_action(std::string tid, void *addr, int mo1, int mo2,
                                            int64_t expectV, int64_t newVal);

        int64_t execute_pre_rmw_xchg_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_add_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_sub_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_and_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_nand_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_or_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_xor_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_max_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_min_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_umax_action(std::string tid, void *addr, int mo, int64_t val);

        int64_t execute_pre_rmw_umin_action(std::string tid, void *addr, int mo, int64_t val);

        void execute_tryLock_action(std::string tid, void *addr);

        void execute_lock_action(std::string tid, void *addr);

        void execute_unLock_action(std::string tid, void *addr);

        void execute_fence_action(std::string tid, int mo);

        std::map<std::string, Thread *> getThreadMap();

        std::map<std::string, std::string> getThreadCreateMap() { return threadCreateMap; };

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
        void addSolutionValue(std::pair<std::string, std::string> p) { solutionValues.insert(p); }
        void printSolutionValue();
        std::map<std::string,std::string> getSolutionValues() { return solutionValues; }
        void generateSolutionFile(std::map<RWAction*, uint64_t> enforcePairs);
        void add_unsat_core(int i) { unsatCore.push_back(i); }
        std::vector<int> get_unsat_core() { return unsatCore; }
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

        std::map<Action*, Action*> getJoinPoints() { return threadJoinPoints; }

        std::map<Action*, Action*> getCreatePoints() { return threadCreatePoints; }

        std::vector<Schedule*> getSchedules() { return schedules; }

        void updateBuffer(std::string, void* loc, uint64_t val);

    protected:
        std::map<std::string, Thread*> threadMap;
        pthread_mutex_t lockForThreadMap;

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
        std::map<std::pair<std::string, int>, uint64_t> readValueMap;


        /** Parameters */
        std::string solverPath;
        std::string formulaFile;
        time_t startTime, endTime;
        std::map<std::string,std::string> solutionValues;
        std::vector<int> unsatCore;
        bool bugFixMode;
        bool firstThread;
        std::vector<Schedule*> schedules;
        std::map<std::string, int> threadsName;
    };
}

