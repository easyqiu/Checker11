#include <set>
#include <iostream>
#include <fstream>
#include <sstream>
#include <thread>
#include <sys/types.h>
#include <unistd.h>

#include "Executor.h"
#include "checker.hpp"

using namespace checker;

# define DEBUG

std::set<void*> sharedAddresses; 
Executor* exe;
ModelChecker* modelChecker;

extern "C" {

std::string getThreadName(std::thread::id id) {
    std::stringstream ss;
    ss << id;
    return ss.str();
}

void updateTrace(std::string content) {
    std::string name = getThreadName(std::this_thread::get_id());
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

char preAtomicLoad_char(void* addr, int order) {
# ifdef DEBUG
    std::cout << "In atomic preLoad: " << addr << " " << order << "!\n";
# endif

    int retV = exe->execute_pre_read_action(getThreadName(std::this_thread::get_id()), addr, order);
    return retV;
}

int preAtomicLoad_int(void* addr, int order) {
# ifdef DEBUG
    std::cout << "In atomic preLoad: " << addr << " " << order << "!\n";
# endif

    int retV = exe->execute_pre_read_action(getThreadName(std::this_thread::get_id()), addr, order);
    return retV;
}

uint64_t preAtomicLoad_double(void* addr, int order) {
# ifdef DEBUG
    std::cout << "In atomic preLoad: " << addr << " " << order << "!\n";
# endif

    int retV = exe->execute_pre_read_action(getThreadName(std::this_thread::get_id()), addr, order);
    return retV;
}

void postAtomicLoad_char(void* addr, char val, int order) {
# ifdef DEBUG
    std::cout << "In atomic postLoad char: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_post_read_action(getThreadName(std::this_thread::get_id()), addr, order, val);
    return ;

}


void postAtomicLoad_int(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In atomic postLoad int: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_post_read_action(getThreadName(std::this_thread::get_id()), addr, order, val);
    return ;

}

void postAtomicLoad_double(void* addr, uint64_t val, int order) {
# ifdef DEBUG
    std::cout << "In atomic postLoad double: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_post_read_action(getThreadName(std::this_thread::get_id()), addr, order, val);
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
    
    /*std::stringstream ss;
    ss << "non_atomic_store_char: " << addr << " " << val << "\n";
    updateTrace(ss.str());*/

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), addr, 2, val);
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

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), addr, 2, val);

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
    
    /*std::stringstream ss;
    ss << "non_atomic_store_double: " << addr << " " << val << "\n";
    updateTrace(ss.str());*/

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), addr, 2, val);
}

void preAtomicStore_char(void* addr, char val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preStore: " << addr << " " << val << " " << order << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "atomic_store_char: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());*/
    exe->execute_write_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

void preAtomicStore_int(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preStore: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

void preAtomicStore_double(void* addr, uint64_t val, int order) {
# ifdef DEBUG
    std::cout << "In atomic preStore double: " << addr << " " << val << " " << order << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "atomic_store_double: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());*/

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

void preLock(void* addr) {
# ifdef DEBUG
    std::cout << "In preLock: " << addr << "!\n";
# endif

    exe->execute_lock_action(getThreadName(std::this_thread::get_id()), addr);
}

void preTryLock(void* addr) {
# ifdef DEBUG
    std::cout << "In preTryLock: " << addr << "!\n";
# endif

    exe->execute_tryLock_action(getThreadName(std::this_thread::get_id()), addr);
}

void preUnlock(void* addr) {
# ifdef DEBUG
    std::cout << "In preUnlock: " << addr << "!\n";
# endif

    exe->execute_unLock_action(getThreadName(std::this_thread::get_id()), addr);
}

void preFence(int order) {
# ifdef DEBUG
    std::cout << "In atomic preFence: " << order << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "fence: " << order << "\n";
    updateTrace(ss.str());*/
    exe->execute_fence_action(getThreadName(std::this_thread::get_id()), order);
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

int8_t preCmpXchg_8(void* addr, int8_t expect,
        int8_t newVal, int successOrdering, int failureOrdering) {
    return preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering);
}

int16_t preCmpXchg_16(void* addr, int16_t expect,
        int16_t newVal, int successOrdering, int failureOrdering) {
    return preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering);
}

int32_t preCmpXchg_32(void* addr, int32_t expect,
        int32_t newVal, int successOrdering, int failureOrdering) {
    return preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering);
}

int64_t preCmpXchg_64(void* addr, int64_t expect,
        int64_t newVal, int successOrdering, int failureOrdering) {
    return exe->execute_pre_rmw_xchg_action(getThreadName(std::this_thread::get_id()), addr, successOrdering,
            failureOrdering, expect, newVal);
}

int8_t preRMW_Xchg_8(void* addr, int8_t val, int order) {
    return preRMW_And_64(addr, val, order);
}

int16_t preRMW_Xchg_16(void* addr, int16_t val, int order) {
    return preRMW_And_64(addr, val, order);
}

int32_t preRMW_Xchg_32(void* addr, int32_t val, int order) {
    return preRMW_And_64(addr, val, order);
}

int64_t preRMW_Xchg_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_xchg: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_xchg_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_Add_8(void* addr, int8_t val, int order) {
    return preRMW_Add_64(addr, val, order);
}

int16_t preRMW_Add_16(void* addr, int16_t val, int order) {
    return preRMW_Add_64(addr, val, order);
}

int32_t preRMW_Add_32(void* addr, int32_t val, int order) {
    return preRMW_Add_64(addr, val, order);
}

int64_t preRMW_Add_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_add: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_add_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_Sub_8(void* addr, int8_t val, int order) {
    return preRMW_Sub_64(addr, val, order);
}

int16_t preRMW_Sub_16(void* addr, int16_t val, int order) {
    return preRMW_Sub_64(addr, val, order);
}

int32_t preRMW_Sub_32(void* addr, int32_t val, int order) {
    return preRMW_Sub_64(addr, val, order);
}

int64_t preRMW_Sub_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_sub: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_sub_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_And_8(void* addr, int8_t val, int order) {
    return preRMW_And_64(addr, val, order);
}

int16_t preRMW_And_16(void* addr, int16_t val, int order) {
    return preRMW_And_64(addr, val, order);
}

int32_t preRMW_And_32(void* addr, int32_t val, int order) {
    return preRMW_And_64(addr, val, order);
}

int64_t preRMW_And_64(void* addr, int64_t val, int order) {
# ifdef DEFBUG
    std::cout << "In rmw_and: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_and_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_Nand_8(void* addr, int8_t val, int order) {
    return preRMW_Nand_64(addr, val, order);
}

int16_t preRMW_Nand_16(void* addr, int16_t val, int order) {
    return preRMW_Nand_64(addr, val, order);
}

int32_t preRMW_Nand_32(void* addr, int32_t val, int order) {
    return preRMW_Nand_64(addr, val, order);
}

int64_t preRMW_Nand_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_nand: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_nand_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_Or_8(void* addr, int8_t val, int order) {
    return preRMW_Or_64(addr, val, order);
}

int16_t preRMW_Or_16(void* addr, int16_t val, int order) {
    return preRMW_Or_64(addr, val, order);
}

int32_t preRMW_Or_32(void* addr, int32_t val, int order) {
    return preRMW_Or_64(addr, val, order);
}

int64_t preRMW_Or_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_or: " << addr << " " << val << " " << order << "\n";
# endif 
    
    return exe->execute_pre_rmw_or_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_Xor_8(void* addr, int8_t val, int order) {
    return preRMW_Xor_64(addr, val, order);
}

int16_t preRMW_Xor_16(void* addr, int16_t val, int order) {
    return preRMW_Xor_64(addr, val, order);
}

int32_t preRMW_Xor_32(void* addr, int32_t val, int order) {
    return preRMW_Xor_64(addr, val, order);
}

int64_t preRMW_Xor_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_xor: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_xor_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_Max_8(void* addr, int8_t val, int order) {
    return preRMW_Max_64(addr, val, order);
}

int16_t preRMW_Max_16(void* addr, int16_t val, int order) {
    return preRMW_Max_64(addr, val, order);
}

int32_t preRMW_Max_32(void* addr, int32_t val, int order) {
    return preRMW_Max_64(addr, val, order);
}

int64_t preRMW_Max_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_max: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_max_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_Min_8(void* addr, int8_t val, int order) {
    return preRMW_Min_64(addr, val, order);
}

int16_t preRMW_Min_16(void* addr, int16_t val, int order) {
    return preRMW_Min_64(addr, val, order);
}

int32_t preRMW_Min_32(void* addr, int32_t val, int order) {
    return preRMW_Min_64(addr, val, order);
}

int64_t preRMW_Min_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_min: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_min_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_UMax_8(void* addr, int8_t val, int order) {
    return preRMW_UMax_64(addr, val, order);
}

int16_t preRMW_UMax_16(void* addr, int16_t val, int order) {
    return preRMW_UMax_64(addr, val, order);
}

int32_t preRMW_UMax_32(void* addr, int32_t val, int order) {
    return preRMW_UMax_64(addr, val, order);
}

int64_t preRMW_UMax_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_umax: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_umax_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

int8_t preRMW_UMin_8(void* addr, int8_t val, int order) {
    return preRMW_UMin_64(addr, val, order);
}

int16_t preRMW_UMin_16(void* addr, int16_t val, int order) {
    return preRMW_UMin_64(addr, val, order);
}

int32_t preRMW_UMin_32(void* addr, int32_t val, int order) {
    return preRMW_UMin_64(addr, val, order);
}

int64_t preRMW_UMin_64(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In rmw_umin: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_umin_action(getThreadName(std::this_thread::get_id()), addr, order, val);
}

void checker_shared(void* addr) {
# ifdef DEBUG
    std::cout << "In checker_shared_int: " << addr << "\n";
# endif
    sharedAddresses.insert(addr);
}

void checker_generateExecutor() {
    exe = new Executor();
    std::cerr << "initialize executor: " << exe << "\n";
    modelChecker->setExecutor(exe);
    exe->setModelChecker(modelChecker);
    //std::cerr << "end initialize\n";
}

void checker_thread_create(std::thread::id id2) {
    std::thread::id id1 = std::this_thread::get_id();

# ifdef DEBUG
    std::stringstream ss;
    ss << "\nIn checker_thread_create: " << id1 << " " << id2 << "\n";
    std::cout << ss.str();
# endif

    exe->execute_thread_create_action(getThreadName(id1), getThreadName(id2));
}

void checker_thread_join(std::thread::id id2) {
    std::thread::id id1 = std::this_thread::get_id();
    exe->execute_thread_join_action(getThreadName(id1), getThreadName(id2));
}


void checker_thread_begin(char *name) {
    std::thread::id id = std::this_thread::get_id();

# ifdef DEBUG
    std::stringstream ss;
    ss << "\nIn checker_thread_begin: " << id << "\n";
    std::cout << ss.str();
# endif

    exe->execute_thread_begin_action(getThreadName(id), name);
}

void checker_thread_end() {

# ifdef DEBUG
    std::cout << "In checker_thread_end\n";
# endif

    exe->execute_thread_end_action(getThreadName(std::this_thread::get_id()));
    //std::cout << "end thread!\n";
}

void checker_solver() {
    //std::cout << "begin checker_solver\n";
    exe->begin_solver();
    //std::cout << "delete exe: " << exe << "\n";
    delete exe;
    //std::cout << "end checker_solver!\n";
}
}
