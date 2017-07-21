#include <set>
#include <iostream>
#include <fstream>
#include <sstream>
#include <thread>
#include <sys/types.h>
#include <unistd.h>

#include "Executor.h"
#include "checker.hpp"
#include "Instrument.h"

//using namespace checker;

//# define DEBUG

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

void checker_preNonAtomicLoad_char(void* addr, char val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic checker_preLoad!\n";
# endif
        return ;
    }
#ifdef DEBUG
    std::cout << "In non-atomic checker_preLoad: " << addr << " " << val << "!\n";
# endif

    std::stringstream ss;
    ss << "non_atomic_load_char: " << addr << " " << val << "\n";
    updateTrace(ss.str());
}

int checker_preNonAtomicLoad_int(void* addr) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        std::cout << "Skip an int non-atomic checker_preLoad!\n";
# endif
        return 1;
    }
# ifdef DEBUG
    std::cout << "In non-atomic checker_preLoad: " << addr << "!\n";
# endif
    
    std::stringstream ss;
    ss << "non_atomic_load_int: " << addr; // << " " << exe << "\n";
    updateTrace(ss.str());
    return 1;
}

void checker_preNonAtomicLoad_double(void* addr, int val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic checker_preLoad!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic checker_preLoad: " << addr << " " << val << "!\n";
# endif

    std::stringstream ss;
    ss << "non_atomic_load_double: " <<  addr << " " << val << "\n";
    updateTrace(ss.str());
}

char checker_preAtomicLoad_char(void* addr, uint64_t clapNum, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_preLoad: " << addr << " " << order << " " << clapNum << "!\n";
# endif

    int64_t retV = exe->execute_pre_read_action(getThreadName(std::this_thread::get_id()), addr, order, clapNum);
    return retV;
}

int checker_preAtomicLoad_int(void* addr, uint64_t clapNum, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_preLoad: " << addr << " " << order << " " << clapNum << "!\n";
# endif

    int64_t retV = exe->execute_pre_read_action(getThreadName(std::this_thread::get_id()), addr, order, clapNum);
    return retV;
}

int64_t checker_preAtomicLoad_double(int64_t * addr, uint64_t clapNum, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_preLoad: " << addr << " " << order << " " << clapNum << "!\n";
# endif

    int64_t retV = exe->execute_pre_read_action(getThreadName(std::this_thread::get_id()), addr, order, clapNum);
    return retV;
}

void checker_postAtomicLoad_char(void* addr, char val, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_postLoad char: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_post_read_action(getThreadName(std::this_thread::get_id()), addr, order, val);
    return ;

}


void checker_postAtomicLoad_int(void* addr, int val, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_postLoad int: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_post_read_action(getThreadName(std::this_thread::get_id()), addr, order, val);
    return ;

}

void checker_postAtomicLoad_double(void* addr, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_postLoad double: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_post_read_action(getThreadName(std::this_thread::get_id()), addr, order, val);
    return ;

}

void checker_preNonAtomicStore_char(void* addr, uint64_t clapNum, char val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic checker_preStore!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic checker_preStore: " << addr << " " << val << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "non_atomic_store_char: " << addr << " " << val << "\n";
    updateTrace(ss.str());*/

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), clapNum, addr, 2, val);
}

void checker_preNonAtomicStore_int(void* addr, uint64_t clapNum, int val) {
    std::cout << "qqqqqqqqqqqqqqqqqqq: " << addr << " " << val << "\n";
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        std::cout << "Skip a non-atomic checker_preStore!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic checker_preStore: " << addr << " " << val << "!\n";
# endif

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), clapNum, addr, 2, val);

}

void checker_preNonAtomicStore_double(void* addr, uint64_t clapNum, double val) {
    if (sharedAddresses.find(addr) == sharedAddresses.end()) {
# ifdef DEBUG
        ;//std::cout << "Skip a non-atomic checker_preStore!\n";
# endif
        return ;
    }
# ifdef DEBUG
    std::cout << "In non-atomic checker_preStore: " << addr << " " << val << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "non_atomic_store_double: " << addr << " " << val << "\n";
    updateTrace(ss.str());*/

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), clapNum, addr, 2, val);
}

void checker_preAtomicStore_char(void* addr, uint64_t clapNum, char val, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_preStore: " << addr << " " << val << " " << order << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "atomic_store_char: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());*/
    exe->execute_write_action(getThreadName(std::this_thread::get_id()), clapNum, addr, order, val);
}

void checker_preAtomicStore_int(void* addr, uint64_t clapNum, int val, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_preStore: " << addr << " " << val << " " << order << "!\n";
# endif

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), clapNum, addr, order, val);
}

void checker_preAtomicStore_double(void* addr, uint64_t clapNum, int64_t val, int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_preStore double: " << addr << " " << val << " " << order << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "atomic_store_double: " << addr << " " << val << " " << order << "\n";
    updateTrace(ss.str());*/

    exe->execute_write_action(getThreadName(std::this_thread::get_id()), clapNum, addr, order, val);
}

void checker_preLock(void* addr) {
# ifdef DEBUG
    std::cout << "In checker_preLock: " << addr << "!\n";
# endif

    exe->execute_lock_action(getThreadName(std::this_thread::get_id()), addr);
}

void checker_preTryLock(void* addr) {
# ifdef DEBUG
    std::cout << "In checker_preTryLock: " << addr << "!\n";
# endif

    exe->execute_tryLock_action(getThreadName(std::this_thread::get_id()), addr);
}

extern void checker_preUnlock(void* addr) {
# ifdef DEBUG
    std::cout << "In checker_preUnlock: " << addr << "!\n";
# endif

    exe->execute_unLock_action(getThreadName(std::this_thread::get_id()), addr);
}

void checker_preFence(int order) {
# ifdef DEBUG
    std::cout << "In atomic checker_preFence: " << order << "!\n";
# endif
    
    /*std::stringstream ss;
    ss << "fence: " << order << "\n";
    updateTrace(ss.str());*/
    exe->execute_fence_action(getThreadName(std::this_thread::get_id()), order);
}



bool checker_preCmpXchg_8(void* addr, int8_t expect,
        int8_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum) {
    return checker_preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering, clapNum);
    /*int8_1 retS_8;
    retS_8.val = retS_64.val;
    retS_8.flag = retS_64.flag;

    std::cout << "flag: " << sizeof(int8_1) << " " << retS_8.flag << "\n";
    return retS_8;*/
}

bool checker_preCmpXchg_16(void* addr, int16_t expect,
        int16_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum) {
    return checker_preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering, clapNum);
    /*int64_1 retS_64 = checker_preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering);
    int16_1 retS_16;
    retS_16.val = retS_64.val;
    retS_16.flag = retS_64.flag;
    return retS_16;*/
}

bool checker_preCmpXchg_32(void* addr, int32_t expect,
        int32_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum) {
    return checker_preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering, clapNum);
    /*int64_1 retS_64 = checker_preCmpXchg_64(addr, expect, newVal, successOrdering, failureOrdering);
    int32_1 retS_32;
    retS_32.val = retS_64.val;
    retS_32.flag = retS_64.flag;
    printf("ret: %d, %d\n", retS_32.val, retS_32.flag);
    return retS_32;*/
    //return exe->execute_pre_cmp_xchg_action(getThreadName(std::this_thread::get_id()), addr, successOrdering,
    //        failureOrdering, expect, newVal);
}

bool checker_preCmpXchg_64(void* addr, int64_t expect,
        int64_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum) {
    return exe->execute_pre_cmp_xchg_action(getThreadName(std::this_thread::get_id()), addr, successOrdering,
            failureOrdering, expect, newVal, clapNum);
}

int8_t checker_preRMW_Xchg_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Xchg_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Xchg_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Xchg_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Xchg_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Xchg_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Xchg_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_xchg: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_xchg_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_Add_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Add_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Add_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Add_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Add_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Add_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Add_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_add: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_add_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_Sub_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Sub_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Sub_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Sub_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Sub_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Sub_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Sub_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_sub: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_sub_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_And_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_And_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_And_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_And_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_And_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_And_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_And_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEFBUG
    std::cout << "In rmw_and: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_and_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_Nand_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Nand_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Nand_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Nand_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Nand_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Nand_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Nand_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_nand: " << addr << " " << val << " " << order << "\n";
# endif

    return exe->execute_pre_rmw_nand_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_Or_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Or_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Or_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Or_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Or_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Or_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Or_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_or: " << addr << " " << val << " " << order << "\n";
# endif 
    
    return exe->execute_pre_rmw_or_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_Xor_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Xor_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Xor_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Xor_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Xor_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Xor_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Xor_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_xor: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_xor_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_Max_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Max_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Max_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Max_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Max_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Max_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Max_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_max: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_max_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_Min_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Min_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_Min_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Min_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_Min_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_Min_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_Min_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_min: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_min_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_UMax_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_UMax_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_UMax_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_UMax_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_UMax_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_UMax_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_UMax_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_umax: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_umax_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}

int8_t checker_preRMW_UMin_8(void* addr, int8_t val, int order, uint64_t clapNum) {
    return checker_preRMW_UMin_64(addr, val, order, clapNum);
}

int16_t checker_preRMW_UMin_16(void* addr, int16_t val, int order, uint64_t clapNum) {
    return checker_preRMW_UMin_64(addr, val, order, clapNum);
}

int32_t checker_preRMW_UMin_32(void* addr, int32_t val, int order, uint64_t clapNum) {
    return checker_preRMW_UMin_64(addr, val, order, clapNum);
}

int64_t checker_preRMW_UMin_64(void* addr, int64_t val, int order, uint64_t clapNum) {
# ifdef DEBUG
    std::cout << "In rmw_umin: " << addr << " " << val << " " << order << "\n";
# endif
    
    return exe->execute_pre_rmw_umin_action(getThreadName(std::this_thread::get_id()), addr, order, val, clapNum);
}


void checker_trackDynInfo(uint64_t bID) {
    if (exe)
        exe->updateTrackedBID(getThreadName(std::this_thread::get_id()), bID);
}

void checker_trackDynInfoEnd() {
    if (exe)
        exe->clearTrackedBID(getThreadName(std::this_thread::get_id()));
}

void checker_currentBB(uint64_t bid) {
    if (exe)
        exe->setCurrentBid(getThreadName(std::this_thread::get_id()), bid);
}

void checker_handlePHI(uint64_t instID, std::vector<uint64_t> vec1, std::vector<uint64_t> vec2) {
    if (exe)
        exe->handlePHI(getThreadName(std::this_thread::get_id()), instID, vec1, vec2);
}

void checker_handlePHI_2(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2);
    vec2.push_back(id1), vec2.push_back(id2);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_3(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                         uint64_t v3, uint64_t id3) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_4(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                         uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3), vec1.push_back(v4);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3), vec2.push_back(id4);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_5(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                         uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5, uint64_t id5) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3), vec1.push_back(v4), vec1.push_back(v5);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3), vec2.push_back(id4), vec2.push_back(id5);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_6(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                         uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5, uint64_t id5,
                         uint64_t v6, uint64_t id6) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3), vec1.push_back(v4), vec1.push_back(v5),
            vec1.push_back(v6);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3), vec2.push_back(id4), vec2.push_back(id5),
            vec2.push_back(id6);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_7(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                         uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5, uint64_t id5,
                         uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3), vec1.push_back(v4), vec1.push_back(v5),
            vec1.push_back(v6), vec1.push_back(v7);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3), vec2.push_back(id4), vec2.push_back(id5),
            vec2.push_back(id6), vec2.push_back(id7);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_8(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                         uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5, uint64_t id5,
                         uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7, uint64_t v8, uint64_t id8) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3), vec1.push_back(v4), vec1.push_back(v5),
            vec1.push_back(v6), vec1.push_back(v7), vec1.push_back(v8);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3), vec2.push_back(id4), vec2.push_back(id5),
            vec2.push_back(id6), vec2.push_back(id7), vec2.push_back(id8);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_9(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                         uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5, uint64_t id5,
                         uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7, uint64_t v8, uint64_t id8,
                         uint64_t v9, uint64_t id9) {
    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3), vec1.push_back(v4), vec1.push_back(v5),
            vec1.push_back(v6), vec1.push_back(v7), vec1.push_back(v8), vec1.push_back(v9);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3), vec2.push_back(id4), vec2.push_back(id5),
            vec2.push_back(id6), vec2.push_back(id7), vec2.push_back(id8), vec2.push_back(id9);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_handlePHI_10(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                          uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5, uint64_t id5,
                          uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7, uint64_t v8, uint64_t id8,
                          uint64_t v9, uint64_t id9, uint64_t v10, uint64_t id10) {

    std::vector<uint64_t> vec1, vec2;
    vec1.push_back(v1), vec1.push_back(v2), vec1.push_back(v3), vec1.push_back(v4), vec1.push_back(v5),
            vec1.push_back(v6), vec1.push_back(v7), vec1.push_back(v8), vec1.push_back(v9), vec1.push_back(v10);
    vec2.push_back(id1), vec2.push_back(id2), vec2.push_back(id3), vec2.push_back(id4), vec2.push_back(id5),
            vec2.push_back(id6), vec2.push_back(id7), vec2.push_back(id8), vec2.push_back(id9), vec2.push_back(id10);
    if (exe)
        checker_handlePHI(instID, vec1, vec2);
}

void checker_addUses(uint64_t instID, std::vector<uint64_t> vec) {
    if (exe) {
        std::stringstream ss;
#ifdef DEBUG
        ss << "checker_addUses: " << instID << " " << vec.size() << " " << vec[0] << "\n";
        std::cout << ss.str();
#endif
        exe->updateDefUseList(getThreadName(std::this_thread::get_id()), instID, vec);
    }
}

void checker_addUses_1(uint64_t instID, uint64_t use1) {
    std::vector<uint64_t> vec;
    vec.push_back(use1);
    //std::cout << "adduses1: " << instID << "\n";
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_2(uint64_t instID, uint64_t use1, uint64_t use2) {
    std::vector<uint64_t> vec;
    vec.push_back(use1);
    vec.push_back(use2);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_3(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_4(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3, uint64_t use4) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3), vec.push_back(use4);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_5(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3,
                       uint64_t use4, uint64_t use5) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3);
    vec.push_back(use4), vec.push_back(use5);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_6(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3, uint64_t use4,
                       uint64_t use5, uint64_t use6) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3), vec.push_back(use4);
    vec.push_back(use5), vec.push_back(use6);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_7(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3, uint64_t use4,
                       uint64_t use5, uint64_t use6, uint64_t use7) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3), vec.push_back(use4), vec.push_back(use5);
    vec.push_back(use6), vec.push_back(use7);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_8(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3, uint64_t use4,
                       uint64_t use5, uint64_t use6, uint64_t use7, uint64_t use8) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3), vec.push_back(use4), vec.push_back(use5);
    vec.push_back(use6), vec.push_back(use7), vec.push_back(use8);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_9(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3, uint64_t use4,
                       uint64_t use5, uint64_t use6, uint64_t use7, uint64_t use8, uint64_t use9) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3), vec.push_back(use4);
    vec.push_back(use5), vec.push_back(use6), vec.push_back(use7), vec.push_back(use8), vec.push_back(use9);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_addUses_10(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3, uint64_t use4, uint64_t use5,
                        uint64_t use6, uint64_t use7, uint64_t use8, uint64_t use9, uint64_t use10) {
    std::vector<uint64_t> vec;
    vec.push_back(use1), vec.push_back(use2), vec.push_back(use3), vec.push_back(use4), vec.push_back(use5);
    vec.push_back(use6), vec.push_back(use7), vec.push_back(use8), vec.push_back(use9), vec.push_back(use10);
    if (exe)
        return checker_addUses(instID, vec);
}

void checker_shared(void* addr) {
# ifdef DEBUG
    std::cout << "In checker_shared_int: " << addr << "\n";
# endif
    sharedAddresses.insert(addr);
}

void checker_generateExecutor() {
    exe = new Executor();
    std::cerr << "Initializing executor: " << exe << "\n";
    modelChecker->setExecutor(exe);
    exe->setModelChecker(modelChecker);
    //std::cerr << "end initialize\n";
}

void checker_beginFunc(/*std::string name*/) {
    std::string name = "";
# ifdef DEBUG
    std::cout << "BeginFunc: " << exe<< "\n";
# endif

    if (exe)
        exe->handleFuncBegin(getThreadName(std::this_thread::get_id()), name);
}

void checker_endFunc() {
    if (exe)
        exe->handleFuncEnd(getThreadName(std::this_thread::get_id()));
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

void checker_pre_yield() {
# ifdef DEBUG
    std::cout << "In thread_yield_action!\n";
# endif

    exe->execute_thread_yield_action(getThreadName(std::this_thread::get_id()));
}

void checker_solver() {
    //std::cout << "begin checker_solver\n";
    exe->begin_solver();
    //std::cout << "delete exe: " << exe << "\n";
    delete exe;
    exe = nullptr;
    //std::cout << "end checker_solver! " << exe << "\n";
}

void checker_myPrintf_64(int64_t x) {
    std::cout << "myPrintf_64: " << x << "\n";
}

void checker_myPrintf_32(int32_t x) {
    std::cout << "myPrintf_32: " << x << "\n";
}

void checker_myPrintf_8(int8_t x) {
    std::cout << "myPrintf_8: " << x << "\n";
}

void checker_myPrintf_81(int8_1 x) {
    std::cout << "myPrintf_811: " << x.val << " " << x.flag << "\n";
}

void checker_myPrintf_1(bool x) {
    //int t = x ? 1 : 0;
    std::cout << "myPrintf_1: " << x << "\n";
    printf("myPrintf_1: %u\n", x);
}


}
