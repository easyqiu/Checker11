#include <iostream>
#include <thread>
#include <sys/types.h>
#include <unistd.h>

//#include "Executor.h"
#include "Types.h"

using namespace checker;

extern ModelChecker* modelChecker;
//Executor* exe;

//namespace checker {
    extern "C" void preNonAtomicLoad_char(void *addr, char val);
    extern "C" int preNonAtomicLoad_int(void *addr);
    extern "C" void preNonAtomicLoad_double(void *addr, int val);
    extern "C" char preAtomicLoad_char(void *addr, int order);
    extern "C" int preAtomicLoad_int(void *addr, int order);
    extern "C" uint64_t preAtomicLoad_double(void *addr, int order);
    extern "C" void preNonAtomicStore_char(void *addr, char val);
    extern "C" void preNonAtomicStore_int(void *addr, int val);
    extern "C" void preNonAtomicStore_double(void *addr, double val);
    extern "C" void preAtomicStore_char(void *addr, char val, int order);
    extern "C" void preAtomicStore_int(void *addr, int val, int order);
    extern "C" void preAtomicStore_double(void *addr, uint64_t val, int order);
    extern "C" void postAtomicLoad_char(void *addr, char val, int order);
    extern "C" void postAtomicLoad_int(void *addr, int val, int order);
    extern "C" void postAtomicLoad_double(void *addr, uint64_t val, int order);
    extern "C" void preLock(void *addr);
    extern "C" void preTryLock(void *addr);
    extern "C" void preUnlock(void *addr);

    extern "C" bool preCmpXchg_8(void *addr, int8_t expect,
                                            int8_t newVal, int successOrdering, int failureOrdering);
    extern "C" bool preCmpXchg_16(void *addr, int16_t expect,
                                              int16_t newVal, int successOrdering, int failureOrdering);
    extern "C" bool preCmpXchg_32(void *addr, int32_t expect,
                                              int32_t newVal, int successOrdering, int failureOrdering);
    extern "C" bool preCmpXchg_64(void *addr, int64_t expect,
                                              int64_t newVal, int successOrdering, int failureOrdering);

    extern "C" int8_t preRMW_Xchg_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Xchg_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Xchg_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Xchg_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_Add_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Add_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Add_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Add_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_Sub_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Sub_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Sub_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Sub_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_And_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_And_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_And_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_And_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_Nand_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Nand_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Nand_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Nand_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_Or_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Or_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Or_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Or_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_Xor_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Xor_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Xor_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Xor_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_Max_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Max_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Max_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Max_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_Min_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_Min_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_Min_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_Min_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_UMax_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_UMax_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_UMax_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_UMax_64(void *addr, int64_t val, int order);

    extern "C" int8_t preRMW_UMin_8(void *addr, int8_t val, int order);
    extern "C" int16_t preRMW_UMin_16(void *addr, int16_t val, int order);
    extern "C" int32_t preRMW_UMin_32(void *addr, int32_t val, int order);
    extern "C" int64_t preRMW_UMin_64(void *addr, int64_t val, int order);

    extern "C" void preFence(int order);
    extern "C" void checker_generateExecutor();
    extern "C" void checker_thread_create(std::thread::id id1);
    extern "C" void checker_thread_join(std::thread::id id1);
    extern "C" void checker_thread_begin(char *name);
    extern "C" void checker_thread_end();
    extern "C" void checker_thread_join(std::thread::id id);
    extern "C" void checker_solver();

    extern "C" void myPrintf_64(int64_t x);
    extern "C" void myPrintf_32(int32_t x);
    extern "C" void myPrintf_8(int8_t x);
    extern "C" void myPrintf_1(bool x);
    extern "C" void myPrintf_81(int8_1 x);
//}
