#include <iostream>
#include <string>
#include <map>

#include "Thread.h"
//#include "Action.h"

static memory_order to_mo(int i) {
    switch (i) {
        case 1:
            return memory_order_relaxed;
        case 4:
            return memory_order_acquire;
        case 5:
            return memory_order_release;
        case 6:
            return memory_order_acq_rel;
        case 7:
            return memory_order_seq_cst;
        default:
            return memory_order_relaxed;
    }
}

class Executor {
public:
    
    Executor() {std::cout << "Generate a new Executor\n";}

    void addThread(std::string tid);

    int execute_pre_read_action(std::string tid, void* addr, int mo);

    void execute_post_read_action(std::string tid, void* addr, int mo, uint64_t val);

    void execute_write_action(std::string tid, void* addr, int mo, int val);

private:
    std::map<std::string, Thread*> threadMap;

};

