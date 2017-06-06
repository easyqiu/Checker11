#include <set>
#include <iostream>
#include <fstream>
#include <sstream>
#include <thread>
#include <sys/types.h>
#include <unistd.h>

#include "Executor.h"

# define DEBUG

std::set<void*> sharedAddresses; 
Executor* exe;

extern "C" {

std::string getThreadName() {
    std::thread::id id = std::this_thread::get_id();
    std::stringstream ss;
    ss << id;
    return ss.str();
}

void updateTrace(std::string content) {
    std::string name = getThreadName();
    std::ofstream outfile(name, std::ios::app);
    outfile << content;
    outfile.flush();
    outfile.close();
}

void preNonAtomicLoad_char(void* addr, char val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic preLoad!\n";
# endif
        return ;
    }
#ifdef DEBUG
    std::cout << "In non-atomic preLoad: " << addr << " " << val << "!\n";
# endif

    std::stringstream ss;
    ss << "non_atomic_load_char: " << addr << " " << val << "\n";
    updateTrace(ss.str());
}

int preNonAtomicLoad_int(void* addr) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic preLoad!\n";
# endif
        return 1;
    }
# ifdef DEBUG
    std::cout << "In non-atomic preLoad: " << addr << "!\n";
# endif
    
    std::stringstream ss;
    ss << "non_atomic_load_int: " << addr; // << " " << exe << "\n";
    updateTrace(ss.str());
    return 1;
}

void preNonAtomicLoad_double(void* addr, int val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic preLoad!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic preLoad: " << addr << " " << val << "!\n";
# endif

    std::stringstream ss;
    ss << "non_atomic_load_double: " << addr << " " << val << "\n";
    updateTrace(ss.str());
}

void preAtomicLoad_char(void* addr, char val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preLoad: " << addr << " " << val << " " << order << "!\n";
# endif

    std::stringstream ss;
    ss << "atomic_load_char: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

int preAtomicLoad_int(void* addr, int order) {
# ifdef DEBUG
    std::cout << "In atomic preLoad: " << addr << " " << order << "!\n";
# endif

    int retV = exe->execute_pre_read_action(getThreadName(), addr, order);
    std::cout << "retV: " << retV;
    return retV;
}

void preAtomicLoad_double(void* addr, double val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preLoad: " << addr << " " << val << " " << order << "!\n";
# endif
    
    std::stringstream ss;
    ss << "atomic_load_double: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void postAtomicLoad_int(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In atomic postLoad: " << addr << " " << val << " " << order << "!\n";
# endif

    std::stringstream ss;
    ss << "atomic_load_int: " << addr << " " << order << " " << val << "\n";
    updateTrace(ss.str());

    exe->execute_post_read_action(getThreadName(), addr, order, val);
    return ;

}

void preNonAtomicStore_char(void* addr, char val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic preStore!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic preStore: " << addr << " " << val << "!\n";
# endif
    
    std::stringstream ss;
    ss << "non_atomic_store_char: " << addr << " " << val << "\n";
    updateTrace(ss.str());
}

void preNonAtomicStore_int(void* addr, int val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEFBUG
        ;//std::cout << "Skip a non-atomic preStore!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic preStore: " << addr << " " << val << "!\n";
# endif
    
    std::stringstream ss;
    ss << "non_atomic_store_int: " << addr << " " << val << "\n";
    updateTrace(ss.str());

}

void preNonAtomicStore_double(void* addr, double val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic preStore!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic preStore: " << addr << " " << val << "!\n";
# endif
    
    std::stringstream ss;
    ss << "non_atomic_store_double: " << addr << " " << val << "\n";
    updateTrace(ss.str());
}

void preAtomicStore_char(void* addr, char val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preStore: " << addr << " " << val << " " << order << "!\n";
# endif
    
    std::stringstream ss;
    ss << "atomic_store_char: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preAtomicStore_int(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preStore: " << addr << " " << val << " " << order << "!\n";
# endif
    
    std::stringstream ss;
    ss << "atomic_store_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());

    exe->execute_write_action(getThreadName(), addr, order, val);
}

void preAtomicStore_double(void* addr, double val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preStore: " << addr << " " << val << " " << order << "!\n";
# endif
    
    std::stringstream ss;
    ss << "atomic_store_double: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preFence(int order) {
# ifdef DEBUG
    std::cout << "In atomic preFence: " << order << "!\n";
# endif
    
    std::stringstream ss;
    ss << "fence: " << order << "\n";
    updateTrace(ss.str());
}

void preCmpXchg_int(void* addr, int expect, int newVal, int successOrdering, int failureOrdering) {
# ifdef DEBUG
    std::cout << "In cmpXchg: " << addr << " " << expect << " " << newVal 
        << " " << successOrdering << " " << failureOrdering << "\n";
# endif
    
    std::stringstream ss;
    ss << "cmpXchg_int: " << addr << " " << expect << " " << newVal << " " << successOrdering << " " << failureOrdering << "\n";
    updateTrace(ss.str());
}


void preCmpXchg_char(void* addr, char expect, char newVal, int successOrdering, int failureOrdering) {
# ifdef DEBUG
    std::cout << "In cmpXchg: " << addr << " " << expect << " " << newVal 
        << " " << successOrdering << " " << failureOrdering << "\n";
# endif
    
    std::stringstream ss;
    ss << "cmpXchg_char" << addr << " " << expect << " " << newVal << " " << successOrdering << " " << failureOrdering << "\n";
    updateTrace(ss.str());
}

void preCmpXchg_long(void* addr, long expect, long newVal, int successOrdering, int failureOrdering) {
# ifdef DEBUG
    std::cout << "In cmpXchg: " << addr << " " << expect << " " << newVal 
        << " " << successOrdering << " " << failureOrdering << "\n";
# endif
    
    std::stringstream ss;
    ss << "cmpXchg_long: " << addr << " " << expect << " " << newVal << " " << successOrdering << " " << failureOrdering << "\n";
    updateTrace(ss.str());
}

void preCmpXchg_double(void* addr, double expect, double newVal, int successOrdering, int failureOrdering) {
# ifdef DEBUG
    std::cout << "In cmpXchg: " << addr << " " << expect << " " << newVal 
        << " " << successOrdering << " " << failureOrdering << "\n";
# endif
    
    std::stringstream ss;
    ss << "cmpXchg_double: " << addr << " " << expect << " " << newVal << " " << successOrdering << " " << failureOrdering << "\n";
    updateTrace(ss.str());
}

void preRMW_Xchg(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_xchg: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_xchg_int" << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_Add(void* addr, int val, int order) {
# ifdef DEFBUG
    std::cout << "In rmw_add: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_add_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_Sub(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_sub: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_sub_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_And(void* addr, int val, int order) {
# ifdef DEFBUG
    std::cout << "In rmw_and: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_and_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}
void preRMW_Nand(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_nand: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_nand_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_Or(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_or: " << addr << " " << val << " " << order << "\n";
# endif 
    
    std::stringstream ss;
    ss << "rmw_or: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_Xor(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_xor: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_xor_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_Max(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_max: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_max_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_Min(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_min: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_min_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_UMax(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_umax: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_umax_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void preRMW_UMin(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_umin: " << addr << " " << val << " " << order << "\n";
# endif
    
    std::stringstream ss;
    ss << "rmw_umin_int: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());
}

void checker_shared(void* addr) {
# ifdef DEBUG
    std::cout << "In checker_shared_int: " << addr << "\n";
# endif
    sharedAddresses.insert(addr);
}

void thread_begin() {
    exe->addThread(getThreadName());
}

void checker_generateExecutor() {
    exe = new Executor();
    std::cerr << "initialize executor!\n";
}

void checker_thread_create(std::thread::id id1, std::thread::id id2) {
    std::stringstream ss;

    //std::cout << "in thread create!\n";
    ss << id1;
    std::ofstream outfile(ss.str(), std::ios::app);
    ss.str("");
    ss << "thread create: " << id1 << " " << id2 << "\n";
    outfile << ss.str();
    //std::cout << "FFFFFFFF: T" << ss.str() << "T\n";
    outfile.flush();
    outfile.close();
}

void checker_thread_begin(std::thread::id id) {
    std::stringstream ss;
    ss.str("");
    ss << id;
    std::ofstream outfile(ss.str(), std::ios::app);
    ss.str("");
    ss << "thread begin: " << id << "\n";
    outfile << ss.str();
    //std::cout << "RRRRRRRRRRR: Q" << ss.str() << "Q\n";
    outfile.flush();
    outfile.close();
    thread_begin();
}

}
