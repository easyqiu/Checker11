#include <iostream>
#include <string>
#include <map>

//#include "Thread.h"
//#include "Action.h"
//#include "Action.h"

#include <vector>
#include <set>


namespace  checker {
    class Thread;
    class Solver;
    //checker::memory_order;
    //enum action_type;

    class Executor {
    public:

        Executor();

        void readPrefix(std::string name);

        void addThread(std::string tid, std::string name);

        void execute_thread_create_action(std::string id1, std::string id2);

        void execute_thread_begin_action(std::string id, std::string name);

        void execute_thread_end_action(std::string id);

        void execute_thread_join_action(std::string id1, std::string id2);

        int execute_pre_read_action(std::string tid, void *addr, int mo);

        void execute_post_read_action(std::string tid, void *addr, int mo, uint64_t val);

        void execute_write_action(std::string tid, void *addr, int mo, int val);

        std::map<std::string, Thread *> getThreadMap();

        void begin_solver();

    private:
        std::map<std::string, Thread *> threadMap;

        Solver* solver;

        /** map pair (tid, seq_num)(of action A) -> vector<(tid, seq_num)>, representing all seq_numbers of the actions
         * which happens-before action A */
        std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > > preActions;

        /** record the read values each read in the prefix should read: (fName, seq_num)->value*/
        std::map<std::pair<std::string, int>, uint64_t> readValueMap;

    };
}

