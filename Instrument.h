#include <iostream>
#include <thread>
#include <sys/types.h>
#include <unistd.h>
#include <vector>

//#include "Executor.h"
#include "Types.h"
#include "ModelChecker.h"

using namespace checker;

extern ModelChecker* modelChecker;
//Executor* exe;

//namespace checker {
    extern "C" void checker_preNonAtomicLoad_char(void *addr, char val);
    extern "C" int checker_preNonAtomicLoad_int(void *addr);
    extern "C" void checker_preNonAtomicLoad_double(void *addr, int val);
    extern "C" char checker_preAtomicLoad_char(void *addr, uint64_t clapNum, int order);
    extern "C" int checker_preAtomicLoad_int(void *addr, uint64_t clapNum, int order);
    extern "C" int64_t checker_preAtomicLoad_double(int64_t *addr, uint64_t clapNum, int order);
    extern "C" void checker_preNonAtomicStore_char(void *addr, uint64_t clapNum, char val);
    extern "C" void checker_preNonAtomicStore_int(void *addr, uint64_t clapNum, int val);
    extern "C" void checker_preNonAtomicStore_double(void *addr, uint64_t clapNum, double val);
    extern "C" void checker_preAtomicStore_char(void *addr, uint64_t clapNum, char val, int order);
    extern "C" void checker_preAtomicStore_int(void *addr, uint64_t clapNum, int val, int order);
    extern "C" void checker_preAtomicStore_double(void *addr, uint64_t clapNum, int64_t val, int order);
    extern "C" void checker_postAtomicLoad_char(void *addr, char val, int order);
    extern "C" void checker_postAtomicLoad_int(void *addr, int val, int order);
    extern "C" void checker_postAtomicLoad_double(void *addr, int64_t val, int order);
    extern "C" void checker_preLock(void *addr);
    extern "C" void checker_preTryLock(void *addr);
    extern "C" void checker_preUnlock(void *addr);

    extern "C" bool checker_preCmpXchg_8(void *addr, int8_t expect,
                                            int8_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum);
    extern "C" bool checker_preCmpXchg_16(void *addr, int16_t expect,
                                              int16_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum);
    extern "C" bool checker_preCmpXchg_32(void *addr, int32_t expect,
                                              int32_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum);
    extern "C" bool checker_preCmpXchg_64(void *addr, int64_t expect,
                                              int64_t newVal, int successOrdering, int failureOrdering, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Xchg_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Xchg_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Xchg_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Xchg_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Add_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Add_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Add_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Add_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Sub_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Sub_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Sub_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Sub_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_And_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_And_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_And_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_And_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Nand_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Nand_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Nand_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Nand_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Or_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Or_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Or_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Or_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Xor_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Xor_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Xor_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Xor_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Max_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Max_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Max_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Max_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_Min_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_Min_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_Min_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_Min_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_UMax_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_UMax_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_UMax_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_UMax_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" int8_t checker_preRMW_UMin_8(void *addr, int8_t val, int order, uint64_t clapNum);
    extern "C" int16_t checker_preRMW_UMin_16(void *addr, int16_t val, int order, uint64_t clapNum);
    extern "C" int32_t checker_preRMW_UMin_32(void *addr, int32_t val, int order, uint64_t clapNum);
    extern "C" int64_t checker_preRMW_UMin_64(void *addr, int64_t val, int order, uint64_t clapNum);

    extern "C" void checker_trackDynInfo(uint64_t bid);
    extern "C" void checker_trackDynInfoEnd();
    extern "C" void checker_currentBB(uint64_t bid);
    extern "C" void checker_handlePHI(uint64_t instID, std::vector<uint64_t> vec1, std::vector<uint64_t> vec2);
    extern "C" void checker_handlePHI_2(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2);
    extern "C" void checker_handlePHI_3(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                        uint64_t v3, uint64_t id3);
    extern "C" void checker_handlePHI_4(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                        uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4);
    extern "C" void checker_handlePHI_5(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                        uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5,
                                        uint64_t id5);
    extern "C" void checker_handlePHI_6(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                        uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5,
                                        uint64_t id5, uint64_t v6, uint64_t id6);
    extern "C" void checker_handlePHI_7(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                        uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5,
                                        uint64_t id5, uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7);
    extern "C" void checker_handlePHI_8(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                        uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5,
                                        uint64_t id5, uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7,
                                        uint64_t v8, uint64_t id8);
    extern "C" void checker_handlePHI_9(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                        uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5,
                                        uint64_t id5, uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7,
                                        uint64_t v8, uint64_t id8, uint64_t v9, uint64_t id9);
    extern "C" void checker_handlePHI_10(uint64_t instID, uint64_t v1, uint64_t id1, uint64_t v2, uint64_t id2,
                                         uint64_t v3, uint64_t id3, uint64_t v4, uint64_t id4, uint64_t v5,
                                         uint64_t id5, uint64_t v6, uint64_t id6, uint64_t v7, uint64_t id7,
                                         uint64_t v8, uint64_t id8, uint64_t v9, uint64_t id9, uint64_t v10,
                                         uint64_t id10);

    extern "C" void checker_addUses(uint64_t instID, std::vector<uint64_t> vec);
    extern "C" void checker_addUses_1(uint64_t instID, uint64_t use);
    extern "C" void checker_addUses_2(uint64_t instID, uint64_t use1, uint64_t use2);
    extern "C" void checker_addUses_3(uint64_t instID, uint64_t use1, uint64_t use2, uint64_t use3);
    extern "C" void checker_addUses_4(uint64_t instID, uint64_t use1, uint64_t use2,
                                      uint64_t use3, uint64_t use4);
    extern "C" void checker_addUses_5(uint64_t instID, uint64_t use1, uint64_t use2,
                                      uint64_t use3, uint64_t use4, uint64_t use5);
    extern "C" void checker_addUses_6(uint64_t instID, uint64_t use1, uint64_t use2,
                                      uint64_t use3, uint64_t use4, uint64_t use5, uint64_t use6);
    extern "C" void checker_addUses_7(uint64_t instID, uint64_t use1, uint64_t use2,
                                      uint64_t use3, uint64_t use4, uint64_t use5,
                                      uint64_t use6, uint64_t use7);
    extern "C" void checker_addUses_8(uint64_t instID, uint64_t use1, uint64_t use2,
                                      uint64_t use3, uint64_t use4, uint64_t use5,
                                      uint64_t use6, uint64_t use7, uint64_t use8);
    extern "C" void checker_addUses_9(uint64_t instID, uint64_t use1, uint64_t use2,
                                      uint64_t use3, uint64_t use4, uint64_t use5,
                                      uint64_t use6, uint64_t use7, uint64_t use8,
                                      uint64_t use9);
    extern "C" void checker_addUses_10(uint64_t instID, uint64_t use1, uint64_t use2,
                                       uint64_t use3, uint64_t use4, uint64_t use5,
                                       uint64_t use6, uint64_t use7, uint64_t use8,
                                       uint64_t use9, uint64_t use10);

    extern "C" void checker_preFence(int order);

    extern "C" void checker_beginFunc(/*std::string name*/);
    extern "C" void checker_endFunc();
    extern "C" void checker_generateExecutor();
    extern "C" void checker_thread_create(std::thread::id id1);
    extern "C" void checker_thread_join(std::thread::id id1);
    extern "C" void checker_thread_begin(char *name);
    extern "C" void checker_thread_end();
    extern "C" void checker_pre_yield();
    extern "C" void checker_thread_join(std::thread::id id);
    extern "C" void checker_solver();

    extern "C" void checker_myPrintf_64(int64_t x);
    extern "C" void checker_myPrintf_32(int32_t x);
    extern "C" void checker_myPrintf_8(int8_t x);
    extern "C" void checker_myPrintf_1(bool x);
    extern "C" void checker_myPrintf_81(int8_1 x);

    extern "C" void checker_loop();
    extern "C" void checker_loopDep(int bid);
//}
