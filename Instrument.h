#include <iostream>
#include <thread>
#include <sys/types.h>
#include <unistd.h>

#include "Executor.h"

//Executor* exe;

extern "C" void preNonAtomicLoad_char(void* addr, char val);
extern "C" int preNonAtomicLoad_int(void* addr);
extern "C" void preNonAtomicLoad_double(void* addr, int val);
extern "C" void preAtomicLoad_char(void* addr, char val, int order);
extern "C" int preAtomicLoad_int(void* addr, int order);
extern "C" void preAtomicLoad_double(void* addr, double val, int order);
extern "C" void preNonAtomicStore_char(void* addr, char val);
extern "C" void preNonAtomicStore_int(void* addr, int val);
extern "C" void preNonAtomicStore_double(void* addr, double val);
extern "C" void preAtomicStore_char(void* addr, char val, int order);
extern "C" void preAtomicStore_int(void* addr, int val, int order);
extern "C" void preAtomicStore_double(void* addr, double val, int order);
extern "C" void preCmpXchg_int(void* addr, int expect, 
        int newVal, int successOrdering, int failureOrdering);
extern "C" void preCmpXchg_char(void* addr, char expect, 
        char newVal, int successOrdering, int failureOrdering);
extern "C" void preCmpXchg_long(void* addr, long expect, 
        long newVal, int successOrdering, int failureOrdering);
extern "C" void preCmpXchg_double(void* addr, double expect, 
        double newVal, int successOrdering, int failureOrdering);
extern "C" void preRMW_Xchg(void* addr, int val, int order);
extern "C" void preRMW_Add(void* addr, int val, int order);
extern "C" void preRMW_Sub(void* addr, int val, int order);
extern "C" void preRMW_And(void* addr, int val, int order);
extern "C" void preRMW_Nand(void* addr, int val, int order);
extern "C" void preRMW_Or(void* addr, int val, int order);
extern "C" void preRMW_Xor(void* addr, int val, int order);
extern "C" void preRMW_Max(void* addr, int val, int order);
extern "C" void preRMW_Min(void* addr, int val, int order);
extern "C" void preRMW_UMax(void* addr, int val, int order);
extern "C" void preRMW_UMin(void* addr, int val, int order);
extern "C" void preFence(int order);
extern "C" void checker_generateExecutor();
extern "C" void checker_thread_create(std::thread::id id1);
extern "C" void checker_thread_begin(char *name);
extern "C" void checker_thread_end();
extern "C" void checker_thread_join(std::thread::id id);
