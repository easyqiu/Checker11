//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include <iostream>
#include <set>

#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/GenericDomTree.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
using namespace llvm;

#define DEBUG_TYPE "MyInstrument"

//STATISTIC(HelloCounter, "Counts number of functions greeted");
STATISTIC(ModuleCounter, "Counts number of modules greeted");
STATISTIC(InstCounter, "Counts number of instructions greeted");

namespace {
  class codeInstr : public ModulePass {
    std::map<std::string, Function*> myFunctions;
    std::map<std::string, int> orderToInt = {{"not_atomic", 0}, {"unordered", 1}, {"monotonic", 2}, 
        {"consume", 3}, {"acquire", 4}, {"release", 5}, {"acq_rel", 6}, {"seq_cst", 7}};
    
    BasicBlock::iterator BBIt; 
    
    void addSpecialFunctions(Module &M) {
      // parameter types
      std::vector<Type*> paramTypes;
      //PointerType* pType = PointerType::get(Type::getInt8PtrTy(inst->getContext()), 0);
      
      // add store function "preStore"
      PointerType* pType = Type::getInt8PtrTy(M.getContext());
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      FunctionType *FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *storeF_char = Function::Create(FT, Function::ExternalLinkage, "checker_preNonAtomicStore_char", &M);
      myFunctions["checker_preNonAtomicStore_char"] = storeF_char; 

      paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *printF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_myPrintf_64", &M);
      myFunctions["checker_myPrintf_64"] = printF_64;
      
      paramTypes.clear();
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *printF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_myPrintf_32", &M);
      myFunctions["checker_myPrintf_32"] = printF_32;
      
      paramTypes.clear();
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *printF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_myPrintf_8", &M);
      myFunctions["checker_myPrintf_8"] = printF_8;
      
      paramTypes.clear();
      std::vector<Type*> typess;
      typess.push_back(Type::getInt8Ty(M.getContext()));
      typess.push_back(Type::getInt1Ty(M.getContext()));
      StructType* ssType = StructType::get(M.getContext(), typess);
      paramTypes.push_back(ssType);
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *printF_81 = Function::Create(FT, Function::ExternalLinkage, "checker_myPrintf_81", &M);
      myFunctions["checker_myPrintf_81"] = printF_81;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt1Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *printF_1 = Function::Create(FT, Function::ExternalLinkage, "checker_myPrintf_1", &M);
      myFunctions["checker_myPrintf_1"] = printF_1;
      //std::cerr << "printfffff: \n";
      //printF_1->dump();

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *storeF_int = Function::Create(FT, Function::ExternalLinkage, "checker_preNonAtomicStore_int", &M);
      myFunctions["checker_preNonAtomicStore_int"] = storeF_int;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *storeF_double = Function::Create(FT, Function::ExternalLinkage, "checker_preNonAtomicStore_double", &M);
      myFunctions["checker_preNonAtomicStore_double"] = storeF_double;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *atomicStoreF_char = Function::Create(FT, Function::ExternalLinkage, "checker_preAtomicStore_char", &M);
      myFunctions["checker_preAtomicStore_char"] = atomicStoreF_char; 

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *atomicStoreF_int = Function::Create(FT, Function::ExternalLinkage, "checker_preAtomicStore_int", &M);
      myFunctions["checker_preAtomicStore_int"] = atomicStoreF_int; 
      std::cerr << "add a function: preStore\n";
      //storeF->dump();

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *atomicStoreF_double = Function::Create(FT, Function::ExternalLinkage, "checker_preAtomicStore_double", &M);
      myFunctions["checker_preAtomicStore_double"] = atomicStoreF_double;

      // add load function "preLoad"
      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt8Ty(M.getContext()), paramTypes, false);
      Function *loadF_char = Function::Create(FT, Function::ExternalLinkage, "checker_preNonAtomicLoad_char", &M);
      myFunctions["checker_preNonAtomicLoad_char"] = loadF_char;
      
      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt32Ty(M.getContext()), paramTypes, false);
      Function *loadF_int = Function::Create(FT, Function::ExternalLinkage, "checker_preNonAtomicLoad_int", &M);
      myFunctions["checker_preNonAtomicLoad_int"] = loadF_int;

      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt64Ty(M.getContext()), paramTypes, false);
      Function *loadF_double = Function::Create(FT, Function::ExternalLinkage, "checker_preNonAtomicLoad_double", &M);
      myFunctions["checker_preNonAtomicLoad_double"] = loadF_double;
      
      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext())); // for clap number
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt8Ty(M.getContext()), paramTypes, false);
      Function *atomicLoadF_char = Function::Create(FT, Function::ExternalLinkage, "checker_preAtomicLoad_char", &M);
      myFunctions["checker_preAtomicLoad_char"] = atomicLoadF_char;
      
      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt32Ty(M.getContext()), paramTypes, false);
      Function *atomicLoadF_int = Function::Create(FT, Function::ExternalLinkage, "checker_preAtomicLoad_int", &M);
      myFunctions["checker_preAtomicLoad_int"] = atomicLoadF_int;

      paramTypes.clear();
      //PointerType* pType_64 = Type::getInt64PtrTy(M.getContext());
      paramTypes.push_back(pType);
      //paramTypes.push_back(pType_64);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt64Ty(M.getContext()), paramTypes, false);
      Function *atomicLoadF_double = Function::Create(FT, Function::ExternalLinkage, "checker_preAtomicLoad_double", &M);
      myFunctions["checker_preAtomicLoad_double"] = atomicLoadF_double;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *postAtomicLoadF_char = Function::Create(FT, Function::ExternalLinkage, "checker_postAtomicLoad_char", &M);
      myFunctions["checker_postAtomicLoad_char"] = postAtomicLoadF_char;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *postAtomicLoadF_int = Function::Create(FT, Function::ExternalLinkage, "checker_postAtomicLoad_int", &M);
      myFunctions["checker_postAtomicLoad_int"] = postAtomicLoadF_int;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *postAtomicLoadF_double = Function::Create(FT, Function::ExternalLinkage, "checker_postAtomicLoad_double", &M);
      myFunctions["checker_postAtomicLoad_double"] = postAtomicLoadF_double;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *fenceF = Function::Create(FT, Function::ExternalLinkage, "checker_preFence", &M);
      myFunctions["checker_preFence"] = fenceF;

      paramTypes.clear();
      paramTypes.push_back(pType);
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *tryLockF = Function::Create(FT, Function::ExternalLinkage, "checker_preTryLock", &M);
      myFunctions["checker_preTryLock"] = tryLockF;

      paramTypes.clear();
      paramTypes.push_back(pType);
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *lockF = Function::Create(FT, Function::ExternalLinkage, "checker_preLock", &M);
      myFunctions["checker_preLock"] = lockF;

      paramTypes.clear();
      paramTypes.push_back(pType);
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *unLockF = Function::Create(FT, Function::ExternalLinkage, "checker_preUnlock", &M);
      myFunctions["checker_preUnlock"] = unLockF;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt8PtrTy(M.getContext()));
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      std::vector<Type*> types;
      types.push_back(Type::getInt64Ty(M.getContext()));
      types.push_back(Type::getInt1Ty(M.getContext()));
      //StructType* sType = StructType::get(M.getContext(), types);
      //FT = FunctionType::get(sType, paramTypes, false);
      FT = FunctionType::get(Type::getInt1Ty(M.getContext()), paramTypes, false);
      Function* cmpXchgIntF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preCmpXchg_8", &M);
      myFunctions["checker_preCmpXchg_8"] = cmpXchgIntF_8;
      //std::cerr << "yyyyyyyyyyyyyyyyyyyyyyyyyyy\n";
      //cmpXchgIntF_8->dump();
      //cmpXchgIntF_8->getFunctionType()->getReturnType()->dump();

      paramTypes.clear();
      paramTypes.push_back(Type::getInt8PtrTy(M.getContext()));
      paramTypes.push_back(Type::getInt16Ty(M.getContext()));
      paramTypes.push_back(Type::getInt16Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      types.clear();
      types.push_back(Type::getInt64Ty(M.getContext()));
      types.push_back(Type::getInt1Ty(M.getContext()));
      //StructType* sType = StructType::get(M.getContext(), types);
      FT = FunctionType::get(Type::getInt1Ty(M.getContext()), paramTypes, false);
      Function* cmpXchgIntF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preCmpXchg_16", &M);
      myFunctions["checker_preCmpXchg_16"] = cmpXchgIntF_16;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt8PtrTy(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      types.clear();
      types.push_back(Type::getInt64Ty(M.getContext()));
      types.push_back(Type::getInt1Ty(M.getContext()));
      //sType = StructType::get(M.getContext(), types);
      FT = FunctionType::get(Type::getInt1Ty(M.getContext()), paramTypes, false);
      Function* cmpXchgIntF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preCmpXchg_32", &M);
      myFunctions["checker_preCmpXchg_32"] = cmpXchgIntF_32;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt8PtrTy(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      types.clear();
      types.push_back(Type::getInt64Ty(M.getContext()));
      types.push_back(Type::getInt1Ty(M.getContext()));
      //sType = StructType::get(M.getContext(), types);
      FT = FunctionType::get(Type::getInt1Ty(M.getContext()), paramTypes, false);
      Function* cmpXchgIntF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preCmpXchg_64", &M);
      myFunctions["checker_preCmpXchg_64"] = cmpXchgIntF_64;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt8Ty(M.getContext()), paramTypes, false);
      Function *rmwXchgF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xchg_8", &M);
      myFunctions["checker_preRMW_Xchg_8"] = rmwXchgF_8;
      Function *rmwAddF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Add_8", &M);
      myFunctions["checker_preRMW_Add_8"] = rmwAddF_8;
      Function *rmwSubF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Sub_8", &M);
      myFunctions["checker_preRMW_Sub_8"] = rmwSubF_8;
      Function *rmwAndF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_And_8", &M);
      myFunctions["checker_preRMW_And_8"] = rmwAndF_8;
      Function *rmwNandF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Nand_8", &M);
      myFunctions["checker_preRMW_Nand_8"] = rmwNandF_8;
      Function *rmwOrF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Or_8", &M);
      myFunctions["checker_preRMW_Or_8"] = rmwOrF_8;
      Function *rmwXorF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xor_8", &M);
      myFunctions["checker_preRMW_Xor_8"] = rmwXorF_8;
      Function *rmwMaxF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Max_8", &M);
      myFunctions["checker_preRMW_Max_8"] = rmwMaxF_8;
      Function *rmwMinF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Min_8", &M);
      myFunctions["checker_preRMW_Min_8"] = rmwMinF_8;
      Function *rmwUMaxF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMax_8", &M);
      myFunctions["checker_preRMW_UMax_8"] = rmwUMaxF_8;
      Function *rmwUMinF_8 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMin_8", &M);
      myFunctions["checker_preRMW_UMin_8"] = rmwUMinF_8;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt16Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt16Ty(M.getContext()), paramTypes, false);
      Function *rmwXchgF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xchg_16", &M);
      myFunctions["checker_preRMW_Xchg_16"] = rmwXchgF_16;
      Function *rmwAddF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Add_16", &M);
      myFunctions["checker_preRMW_Add_16"] = rmwAddF_16;
      Function *rmwSubF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Sub_16", &M);
      myFunctions["checker_preRMW_Sub_16"] = rmwSubF_16;
      Function *rmwAndF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_And_16", &M);
      myFunctions["checker_preRMW_And_16"] = rmwAndF_16;
      Function *rmwNandF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Nand_16", &M);
      myFunctions["checker_preRMW_Nand_16"] = rmwNandF_16;
      Function *rmwOrF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Or_16", &M);
      myFunctions["checker_preRMW_Or_16"] = rmwOrF_16;
      Function *rmwXorF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xor_16", &M);
      myFunctions["checker_preRMW_Xor_16"] = rmwXorF_16;
      Function *rmwMaxF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Max_16", &M);
      myFunctions["checker_preRMW_Max_16"] = rmwMaxF_16;
      Function *rmwMinF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Min_16", &M);
      myFunctions["checker_preRMW_Min_16"] = rmwMinF_16;
      Function *rmwUMaxF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMax_16", &M);
      myFunctions["checker_preRMW_UMax_16"] = rmwUMaxF_16;
      Function *rmwUMinF_16 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMin_16", &M);
      myFunctions["checker_preRMW_UMin_16"] = rmwUMinF_16;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt32Ty(M.getContext()), paramTypes, false);
      Function *rmwXchgF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xchg_32", &M);
      myFunctions["checker_preRMW_Xchg_32"] = rmwXchgF_32;
      Function *rmwAddF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Add_32", &M);
      myFunctions["checker_preRMW_Add_32"] = rmwAddF_32;
      Function *rmwSubF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Sub_32", &M);
      myFunctions["checker_preRMW_Sub_32"] = rmwSubF_32;
      Function *rmwAndF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_And_32", &M);
      myFunctions["checker_preRMW_And_32"] = rmwAndF_32;
      Function *rmwNandF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Nand_32", &M);
      myFunctions["checker_preRMW_Nand_32"] = rmwNandF_32;
      Function *rmwOrF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Or_32", &M);
      myFunctions["checker_preRMW_Or_32"] = rmwOrF_32;
      Function *rmwXorF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xor_32", &M);
      myFunctions["checker_preRMW_Xor_32"] = rmwXorF_32;
      Function *rmwMaxF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Max_32", &M);
      myFunctions["checker_preRMW_Max_32"] = rmwMaxF_32;
      Function *rmwMinF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Min_32", &M);
      myFunctions["checker_preRMW_Min_32"] = rmwMinF_32;
      Function *rmwUMaxF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMax_32", &M);
      myFunctions["checker_preRMW_UMax_32"] = rmwUMaxF_32;
      Function *rmwUMinF_32 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMin_32", &M);
      myFunctions["checker_preRMW_UMin_32"] = rmwUMinF_32;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt64Ty(M.getContext()), paramTypes, false);
      Function *rmwXchgF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xchg_64", &M);
      myFunctions["checker_preRMW_Xchg_64"] = rmwXchgF_64;
      Function *rmwAddF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Add_64", &M);
      myFunctions["checker_preRMW_Add_64"] = rmwAddF_64;
      Function *rmwSubF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Sub_64", &M);
      myFunctions["checker_preRMW_Sub_64"] = rmwSubF_64;
      Function *rmwAndF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_And_64", &M);
      myFunctions["checker_preRMW_And_64"] = rmwAndF_64;
      Function *rmwNandF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Nand_64", &M);
      myFunctions["checker_preRMW_Nand_64"] = rmwNandF_64;
      Function *rmwOrF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Or_64", &M);
      myFunctions["checker_preRMW_Or_64"] = rmwOrF_64;
      Function *rmwXorF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Xor_64", &M);
      myFunctions["checker_preRMW_Xor_64"] = rmwXorF_64;
      Function *rmwMaxF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Max_64", &M);
      myFunctions["checker_preRMW_Max_64"] = rmwMaxF_64;
      Function *rmwMinF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_Min_64", &M);
      myFunctions["checker_preRMW_Min_64"] = rmwMinF_64;
      Function *rmwUMaxF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMax_64", &M);
      myFunctions["checker_preRMW_UMax_64"] = rmwUMaxF_64;
      Function *rmwUMinF_64 = Function::Create(FT, Function::ExternalLinkage, "checker_preRMW_UMin_64", &M);
      myFunctions["checker_preRMW_UMin_64"] = rmwUMinF_64;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *trackDynInfo = Function::Create(FT, Function::ExternalLinkage, "checker_trackDynInfo", &M);
      myFunctions["checker_trackDynInfo"] = trackDynInfo;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *trackDynInfo_must = Function::Create(FT, Function::ExternalLinkage, "checker_trackDynInfo_must", &M);
      myFunctions["checker_trackDynInfo_must"] = trackDynInfo_must;


      paramTypes.clear();
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *trackDynInfoEnd = Function::Create(FT, Function::ExternalLinkage, "checker_trackDynInfoEnd", &M);
      myFunctions["checker_trackDynInfoEnd"] = trackDynInfoEnd;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *currentBB = Function::Create(FT, Function::ExternalLinkage, "checker_currentBB", &M);
      myFunctions["checker_currentBB"] = currentBB;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 2));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 2));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_2 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_2", &M);
      myFunctions["checker_handlePHI_2"] = handlePHI_2;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 3));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 3));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_3 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_3", &M);
      myFunctions["checker_handlePHI_3"] = handlePHI_3;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 4));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 4));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_4 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_4", &M);
      myFunctions["checker_handlePHI_4"] = handlePHI_4;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 5));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 5));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_5 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_5", &M);
      myFunctions["checker_handlePHI_5"] = handlePHI_5;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 6));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 6));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_6 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_6", &M);
      myFunctions["checker_handlePHI_6"] = handlePHI_6;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 7));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 7));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_7 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_7", &M);
      myFunctions["checker_handlePHI_7"] = handlePHI_7;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 8));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 8));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_8 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_8", &M);
      myFunctions["checker_handlePHI_8"] = handlePHI_8;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 9));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 9));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_9 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_9", &M);
      myFunctions["checker_handlePHI_9"] = handlePHI_9;

      /*paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 10));
      paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 10));*/
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *handlePHI_10 = Function::Create(FT, Function::ExternalLinkage, "checker_handlePHI_10", &M);
      myFunctions["checker_handlePHI_10"] = handlePHI_10;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //SmallSet<Value*, 10> sset;
      //paramTypes.push_back(sset);
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 1));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_1 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_1", &M);
      myFunctions["checker_addUses_1"] = addUses_1;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 2));
      //paramTypes.push_back(Type::getInt64PtrTy(M.getContext()));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_2 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_2", &M);
      myFunctions["checker_addUses_2"] = addUses_2;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 3));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_3 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_3", &M);
      myFunctions["checker_addUses_3"] = addUses_3;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 4));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_4 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_4", &M);
      myFunctions["checker_addUses_4"] = addUses_4;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 5));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_5 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_5", &M);
      myFunctions["checker_addUses_5"] = addUses_5;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 6));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_6 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_6", &M);
      myFunctions["checker_addUses_6"] = addUses_6;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 7));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_7 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_7", &M);
      myFunctions["checker_addUses_7"] = addUses_7;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 8));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_8 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_8", &M);
      myFunctions["checker_addUses_8"] = addUses_8;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 9));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_9 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_9", &M);
      myFunctions["checker_addUses_9"] = addUses_9;

      //paramTypes.clear();
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 10));
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *addUses_10 = Function::Create(FT, Function::ExternalLinkage, "checker_addUses_10", &M);
      myFunctions["checker_addUses_10"] = addUses_10;

      paramTypes.clear();
      //paramTypes.push_back(ArrayType::get(Type::getInt8Ty(M.getContext()), 101));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *beginFunc = Function::Create(FT, Function::ExternalLinkage, "checker_beginFunc", &M);
      myFunctions["checker_beginFunc"] = beginFunc;
      paramTypes.clear();
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *endFunc = Function::Create(FT, Function::ExternalLinkage, "checker_endFunc", &M);
      myFunctions["checker_endFunc"] = endFunc;

      paramTypes.clear();
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *preYield = Function::Create(FT, Function::ExternalLinkage, "checker_pre_yield", &M);
      myFunctions["checker_pre_yield"] = preYield;
    }

    void instrLockCalls(CallInst* inst) {
      Function* calledFunc = inst->getCalledFunction();

        std::string name = calledFunc->getName().str();
        /*if (name.find("checker_shared") != std::string::npos) {
            sharedValues.insert(inst->getOperand(0)->stripPointerCasts());
            std::cerr << "shared value: " << dyn_cast<BitCastInst>(inst->getOperand(0)) << "\n";
            inst->getOperand(0)->dump();
            inst->getOperand(0)->stripPointerCasts()->dump();
            //inst->getOperand(0)->stripPointerCasts()->dump();
        }*/

        if (name.find("mutex") == std::string::npos)
            return ;

        std::vector<Value*> params;
        Value* param = inst->getOperand(0);
        if (param->getType() != Type::getInt8PtrTy(inst->getContext())) {
            BitCastInst* castInst = new BitCastInst(param, Type::getInt8PtrTy(inst->getContext()), "myCast", inst);
            param = castInst;
        }
        params.push_back(param);

        Function* func;
        if (name.find("try_lock") != std::string::npos) {
            func = myFunctions["checker_preTryLock"];
        } else if (name.find("unlock") != std::string::npos) {
            func = myFunctions["checker_preUnlock"];
            //std::cerr << "in unlock!\n";
        } else if (name.find("lock") != std::string::npos) {
            func = myFunctions["checker_preLock"];
        } else {
            return ;
        }

        CallInst::Create(func->getFunctionType(), func, params, "", inst);    
    }

    void instrInvoke(Instruction* inst) {
        if (dyn_cast<InvokeInst>(inst) == NULL) return ;

        InvokeInst* invokeI = dyn_cast<InvokeInst>(inst);
        Function* func = invokeI->getCalledFunction();
        if (func == NULL) {
            errs() << "Not handle indirect calls!\n";
            return ;
        }
        if (func->isIntrinsic()) {
            //errs() << "Is Intrinsic!\n";
            return ;
        }

        std::string name = func->getName().str();
        if (name.find("sched_yield") != std::string::npos) {
            Function* f = myFunctions["checker_pre_yield"];
            std::vector<Value*> params;
            CallInst::Create(f->getFunctionType(), f, params, "", inst);
        }
    }

    void instrCall(Instruction* inst, Instruction* nextI) {
      CallInst* cInst;
      if ((cInst = dyn_cast<CallInst>(inst)) == NULL)
          return ;
      
      Function* func = cInst->getCalledFunction();
      if (func == NULL) {
         errs() << "Not handle indirect calls!\n";
         return ;
      }
      if (func->isIntrinsic()) {
        //errs() << "Is Intrinsic!\n";
        return ;
      }

      //errs() << "Func: " << func->getName().str() << "\n";
      instrLockCalls(cInst);
      std::string name = func->getName().str();
      if (name.find("checker_") != std::string::npos ||
              name.find("printf") != std::string::npos ||
              name.find("puts") != std::string::npos)
          return ;

      while (name.size() < 100) {
        name += " ";
      }

      //Constant* strName = ConstantDataArray::getString(func->getContext(), name);
      //std::cerr << "xxxx: " << name << "\n";

      std::vector<Value*> params;
      //params.push_back(strName);
      
      Function* f = myFunctions["checker_beginFunc"];
      CallInst::Create(f->getFunctionType(), f, params, "", inst);
      f = myFunctions["checker_endFunc"];
      params.clear();
      CallInst::Create(f->getFunctionType(), f, params, "", nextI);

      if (name.find("sched_yield") != std::string::npos) {
          f = myFunctions["checker_pre_yield"];
          params.clear();
          CallInst::Create(f->getFunctionType(), f, params, "", inst);
      }
    }

    void instrNonAtomicLoad(LoadInst* loadI) {
      errs() << "Identify a non-atomic load!\n";
      
      Function* func;
      if (loadI->getType() == Type::getInt8Ty(loadI->getContext())) 
          func = myFunctions["checker_preNonAtomicLoad_char"];
      else if (loadI->getType() == Type::getInt32Ty(loadI->getContext()))
          func = myFunctions["checker_preNonAtomicLoad_int"];
      else if (loadI->getType() == Type::getInt64Ty(loadI->getContext()))
          func = myFunctions["checker_preNonAtomicLoad_double"];
      else {
          loadI->getType()->dump();
          errs() << "Not handle this type for non-atomic load!\n";
          return ;
      }

      std::vector<Value*> params;
      Value* param = loadI->getOperand(0);
      if (param->getType() != Type::getInt8PtrTy(loadI->getContext())) {
          BitCastInst* castInst = new BitCastInst(param, Type::getInt8PtrTy(loadI->getContext()), "myCast", loadI);
          param = castInst;
      }
      //LoadInst* newLoadI = new LoadInst(loadI->getOperand(0), "myLoad", loadI);
      params.push_back(param);
      //params.push_back(loadI);
      CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "", loadI);
      //BasicBlock* pb = loadI->getParent();
      //pb->getInstList().insertAfter(loadI, callI);
      //callI->insertAfter(loadI);
      
      //ReplaceInstWithInst(loadI->getParent()->getInstList(), BBIt, callI);

      std::cerr << "1111\n";
      ICmpInst* icmpI = new ICmpInst(loadI, ICmpInst::ICMP_EQ, callI, loadI);
      Instruction* nextI = &*(++BBIt); BBIt--;
      SelectInst::Create(icmpI, callI, loadI, "mySelect", nextI);

    }

    void instrAtomicLoad(LoadInst* loadI, bool flag) {
      Value* o;
      
      if (flag) {
          std::string order = toIRString(loadI->getOrdering());
          errs() << "Identify an atomic load@@@!: " << order << "\n";
          o = ConstantInt::get( Type::getInt32Ty(loadI->getContext()), orderToInt[order]);
      } else {
          errs() << "Identify an non-atomic load!\n";
          std::cerr << "sssshared: " << sharedValues.size() << "\n";
          for (std::set<Value*>::iterator it = sharedValues.begin();
                  it != sharedValues.end(); ++it) 
              (*it)->dump();

          loadI->getOperand(0)->dump();
          loadI->getOperand(0)->stripPointerCasts()->dump();
          o = ConstantInt::get( Type::getInt32Ty(loadI->getContext()), 2);
          if (sharedValues.find(loadI->getOperand(0)) == sharedValues.end())
              return ;
          std::cerr << "handle non atomic load!\n";
      }
      
      Function* func, *postFunc;// = myFunctions["checker_postAtomicLoad"];
      Type* ty;// = Type::getInt64Ty(loadI->getContext());
      //func = myFunctions["checker_preAtomicLoad"];
      if (loadI->getType() == Type::getInt8Ty(loadI->getContext())) {
          func = myFunctions["checker_preAtomicLoad_char"];
          ty = Type::getInt8Ty(loadI->getContext());
          postFunc = myFunctions["checker_postAtomicLoad_char"];
      } else if (loadI->getType() == Type::getInt32Ty(loadI->getContext())) {
          func = myFunctions["checker_preAtomicLoad_int"];
          ty = Type::getInt32Ty(loadI->getContext());
          postFunc = myFunctions["checker_postAtomicLoad_int"];
      } else if (loadI->getType() == Type::getInt64Ty(loadI->getContext())) {
          func = myFunctions["checker_preAtomicLoad_double"];
          ty = Type::getInt64Ty(loadI->getContext());
          postFunc = myFunctions["checker_postAtomicLoad_double"];
      } else {
          loadI->getType()->dump();
          errs() << "Not handle this type for atomic load!\n";
          return ;
      }

      std::vector<Value*> params;
      Value* param = loadI->getOperand(0);
      if (param->getType() != Type::getInt8PtrTy(loadI->getContext())) {
          BitCastInst* castInst = new BitCastInst(param, Type::getInt8PtrTy(loadI->getContext()), "myCast", loadI);
          param = castInst;
      }
      
      //LoadInst* newLoadI = new LoadInst(loadI->getOperand(0), "myLoad", loadI);
      params.push_back(param);
      params.push_back(ConstantInt::get(Type::getInt64Ty(loadI->getContext()), 0));
      //params.push_back(loadI);
      params.push_back(o);
      CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "", loadI);

      /*for (Module::iterator it = loadI->getParent()->getParent()->getParent()->begin();
              it != loadI->getParent()->getParent()->getParent()->end(); ++it) {
          func = &*it;
          if (func->getName().str().find("test") != std::string::npos)
              break;
      }
      params.clear();
      CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "", loadI);*/

      /*func = myFunctions["checker_myPrintf_64"];
      params.clear();
      params.push_back(callI);
      Instruction* nI = &*(++BBIt); BBIt--;
      CallInst::Create(func->getFunctionType(), func, params, "", nI)->dump();*/
      //std::cerr << "mmmmmmmm\n";
      //callI->dump();
      //param->getType()->dump();
      //exit(0);
      //callI->insertAfter(loadI);
      
      loadI->replaceAllUsesWith(callI);
      
      //loadI->eraseFromParent();
      return ;


      /*std::cerr << "111111\n";
      /////////////////
      SplitBlock(loadI->getParent(), callI);
      /////////////////
      std::cerr << "2222222\n";*/

      Instruction* nextI = &*(++BBIt); BBIt--;
      Instruction* newI = callI;
      /*if (callI->getType() != loadI->getType()) {
         newI = new BitCastInst(callI, loadI->getType(), "myBit", nextI);
      }*/

      Value* defaultV = ConstantInt::get(ty, 0xff);
      LoadInst* newLoadI = new LoadInst(loadI->getPointerOperand(), "newLoad", loadI->isVolatile(), loadI->getAlignment(), loadI->getOrdering(), 
              loadI->getSynchScope(), loadI);

      std::cerr << "2222\n";
      ICmpInst* icmpI = new ICmpInst(nextI, ICmpInst::ICMP_EQ, newI, defaultV);
      //icmpI->dump(), newLoadI->dump(), callI->dump(), loadI->dump();
      //newLoadI->getType()->dump(), newI->getType()->dump();
      SelectInst* selectI = SelectInst::Create(icmpI, newLoadI, newI, "mySelect", nextI);

      //BitCastInst* castI = new BitCastInst(selectI, Type::getInt64Ty(loadI->getContext()), "myBitCast", nextI);
      //ReplaceInstWithValue(loadI->getParent()->getInstList(), BBIt, castI);
      ReplaceInstWithValue(loadI->getParent()->getInstList(), BBIt, selectI);
      
      params.clear();
      params.push_back(param);
      params.push_back(selectI);
      params.push_back(o);
      //std::cerr << "num: " << postFunc << "\n";// postFunc->getFunctionType()->getNumParams() << "\n";
      CallInst::Create(postFunc->getFunctionType(), postFunc, params, "", nextI); // add the post call
    }

    void instrLoad(Instruction* inst) {
      //inst->dump();
      LoadInst* loadI = dyn_cast<LoadInst>(inst);
      if (loadI->isAtomic() == false)
          //instrNonAtomicLoad(loadI);
          instrAtomicLoad(loadI, false);
      else 
          instrAtomicLoad(loadI, true);
    }

    void instrNonAtomicStore(StoreInst* storeI) {
      errs() << "Identify a non-atomic store! \n";

      Function* func;
      Value* v = storeI->getOperand(0);
      //if (v->getType() != Type::getInt32Ty(storeI->getContext()))
      //    return ;

      if (v->getType() == Type::getInt8Ty(storeI->getContext())) 
          return ;//func = myFunctions["checker_preNonAtomicStore_char"];
      else if (v->getType() == Type::getInt32Ty(storeI->getContext()))
          func = myFunctions["checker_preNonAtomicStore_int"];
      else if (v->getType() ==  Type::getInt64Ty(storeI->getContext()))
          return ;//func = myFunctions["checker_preNonAtomicStore_double"];
      else {
          v->getType()->dump();
          errs() << "Not handle this type for non-atomic store!\n";
          return ;
      }

      std::vector<Value*> params;
      Value* param = storeI->getOperand(1);
      if (param->getType() != Type::getInt8PtrTy(storeI->getContext())) {
          BitCastInst* castInst = new BitCastInst(param, Type::getInt8PtrTy(storeI->getContext()), "myCast", storeI);
          param = castInst;
      }
      params.push_back(param);
      params.push_back(ConstantInt::get(Type::getInt64Ty(storeI->getContext()), 0));
      params.push_back(storeI->getOperand(0));
      CallInst::Create(func->getFunctionType(), func, params, "", storeI);
      //ReplaceInstWithInst(storeI->getParent()->getInstList(), BBIt, callI);
    }

    void instrAtomicStore(StoreInst* storeI, bool flag) {
      //errs() << toIRString(storeI->getOrdering()) << "\n";
      std::string order = toIRString(storeI->getOrdering());
      Value* o;
      if (flag) {
          errs() << "Identify an atomic store!: " << order << "\n";
          o = ConstantInt::get( Type::getInt32Ty(storeI->getContext()), orderToInt[order]);
      } else {
          storeI->getOperand(1)->dump();
          if (sharedValues.find(storeI->getOperand(1)) == sharedValues.end())
              return ;
          errs() << "Identify an non-atomic store!: " << order << "\n";
          o = ConstantInt::get( Type::getInt32Ty(storeI->getContext()), 2);
      }


      Function* func;
      Value* v = storeI->getOperand(0);
      if (v->getType() ==  Type::getInt8Ty(storeI->getContext()))
          func = myFunctions["checker_preAtomicStore_char"];
      else if (v->getType() == Type::getInt32Ty(storeI->getContext()))
          func = myFunctions["checker_preAtomicStore_int"];
      else if (v->getType() == Type::getInt64Ty(storeI->getContext()))
          func = myFunctions["checker_preAtomicStore_double"];
      else {
          v->getType()->dump();
          errs() << "Not handle this type for atomic store!\n";
          return ;
      }

      std::vector<Value*> params;
      Value* param = storeI->getOperand(1);
      if (param->getType() != Type::getInt8PtrTy(storeI->getContext())) {
          BitCastInst* castInst = new BitCastInst(param, Type::getInt8PtrTy(storeI->getContext()), "myCast", storeI);
          param = castInst;
      }
      params.push_back(param);
      params.push_back(ConstantInt::get(Type::getInt64Ty(storeI->getContext()), 0));
      params.push_back(storeI->getOperand(0));
      params.push_back(o);
      CallInst::Create(func->getFunctionType(), func, params, "", storeI);
      //ReplaceInstWithInst(storeI->getParent()->getInstList(), BBIt, callI);
    }

    void instrStore(Instruction* inst) {
      StoreInst* storeI = dyn_cast<StoreInst>(inst);
      if (storeI->isAtomic() == false)
          instrAtomicStore(storeI, false);
      else 
          instrAtomicStore(storeI, true);
    }

    void instrFence(Instruction* inst) {
        FenceInst* fenceI = dyn_cast<FenceInst>(inst);
        std::string order = toIRString(fenceI->getOrdering());
        errs() << "Identify a fence!: " << order << "\n";
        Value* o = ConstantInt::get( Type::getInt32Ty(fenceI->getContext()), orderToInt[order]);

        Function* func = myFunctions["checker_preFence"];
        std::vector<Value*> params;
        
        params.push_back(o);
        CallInst::Create(func->getFunctionType(), func, params, "", fenceI);
    }

    void instrCmpXchg(Instruction* inst) {
        AtomicCmpXchgInst* cmpXchgI = dyn_cast<AtomicCmpXchgInst>(inst);
        std::string successOrder = toIRString(cmpXchgI->getSuccessOrdering());
        std::string failureOrder = toIRString(cmpXchgI->getFailureOrdering());
        errs() << "Identify a cmpXchg!: " << successOrder << " " << failureOrder << "\n";

        Value* o1 = ConstantInt::get( Type::getInt32Ty(cmpXchgI->getContext()), orderToInt[successOrder]);
        Value* o2 = ConstantInt::get( Type::getInt32Ty(cmpXchgI->getContext()), orderToInt[failureOrder]);

        int num = getClapNum(inst);
        std::vector<Value*> params;
        Value* v1 = cmpXchgI->getPointerOperand();
        Value* v2 = cmpXchgI->getCompareOperand();
        Value* v3 = cmpXchgI->getNewValOperand();

        //v1->dump(), v2->dump(), v3->dump();

        Function* func;
        //std::cerr << "cmppp//ppppppppppppp: \n";
        //inst->getType()->dump();

        //func = myFunctions["checker_preCmpXchg_64"];
        if (v1->getType() == Type::getInt8PtrTy(cmpXchgI->getContext())) {
            func = myFunctions["checker_preCmpXchg_8"];
        } else if (v1->getType() == Type::getInt16PtrTy(cmpXchgI->getContext())) {
            func = myFunctions["checker_preCmpXchg_16"];
        } else if (v1->getType() == Type::getInt32PtrTy(cmpXchgI->getContext())) {
            func = myFunctions["checker_preCmpXchg_32"];
        } else if (v1->getType() == Type::getInt64PtrTy(cmpXchgI->getContext())) {
            func = myFunctions["checker_preCmpXchg_64"];
        } else {
            assert(false && "Don't handle this type of cmpXchg instruction!\n");
            return ;
        }

        if (v1->getType() != Type::getInt8PtrTy(cmpXchgI->getContext())) {
            BitCastInst* castInst = new BitCastInst(v1, Type::getInt8PtrTy(cmpXchgI->getContext()), "myCast", cmpXchgI);
            v1 = castInst;
        } 

        /*if (v2->getType() != Type::getInt64Ty(cmpXchgI->getContext())) {
            std::cerr << "22233\n";
            v2->dump();
            BitCastInst* castInst = new BitCastInst(v2, Type::getInt64Ty(cmpXchgI->getContext()), "myCast", cmpXchgI);
            std::cerr << "333\n";
            v2 = castInst;
        }

        if (v3->getType() != Type::getInt64Ty(cmpXchgI->getContext())) {
            std::cerr << "333\n";
            BitCastInst* castInst = new BitCastInst(v3, Type::getInt64Ty(cmpXchgI->getContext()), "myCast", cmpXchgI);
            v3 = castInst;
        }*/

        params.push_back(v1);
        params.push_back(v2);
        params.push_back(v3);
        params.push_back(o1);
        params.push_back(o2);
        params.push_back(ConstantInt::get(Type::getInt64Ty(inst->getContext()), num));
        CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "myCmpXchg", cmpXchgI);
        
        /*params.clear();
        params.push_back(callI);
        func = myFunctions["myPrintf_1"];
        CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);*/

        std::vector<Type*> types;
        types.push_back(v2->getType());
        types.push_back(Type::getInt1Ty(inst->getContext()));
        StructType* sType = StructType::get(inst->getContext(), types);
        
        //Value* constV_1 = ConstantInt::get( Type::getInt1Ty(inst->getContext()), 1);
        //ICmpInst* icmpI = new ICmpInst(callI, ICmpInst::ICMP_EQ, callI, constV_1);
        //Instruction* nextI = &*(++BBIt); BBIt--;
        //SelectInst* selectI = SelectInst::Create(icmpI, v3, loadI, "mySelect", nextI);
        /*AllocaInst* sV = new AllocaInst(sType, "myAlloc", cmpXchgI);
        LoadInst* loadI = new LoadInst(sV, "myLoad", cmpXchgI);*/
        std::vector<unsigned int> indx;
        indx.push_back(0);
        
        UndefValue* undefV = UndefValue::get(sType);
        
        /*func = myFunctions["myPrintf_81"];
        params.clear();
        params.push_back(undefV);
        CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);
        
        Value* o = ConstantInt::get( Type::getInt8Ty(loadI->getContext()), 1);*/
        InsertValueInst* insert1 = InsertValueInst::Create(undefV, v2, indx, "myInsert", cmpXchgI);
        /*func = myFunctions["myPrintf_81"];
        params.clear();
        params.push_back(insert1);
        CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);*/

        indx.clear();
        indx.push_back(1);
        //Value* o3 = ConstantInt::get( Type::getInt1Ty(loadI->getContext()), 1);
        InsertValueInst* insert2 = InsertValueInst::Create(insert1, callI, indx, "myInsert", cmpXchgI);
        /*std::vector<Value*> vals;
        vals.push_back(v2);
        vals.push_back(callI);
        Value* constStruct = ConstantStruct::get(sType, vals);*/

        cmpXchgI->replaceAllUsesWith(insert2);
        
        /*Value* retV = callI;
        if (callI->getType() != sType) {
            std::cerr << "types: \n";
            callI->getType()->dump(), sType->dump();
            BitCastInst* castInst = new BitCastInst(callI, sType, "myCast", cmpXchgI);
            retV = castInst;
        }

        func = myFunctions["myPrintf_81"];
        params.clear();
        params.push_back(insert2);
        CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);

        params.clear();
        params.push_back(callI);
        func = myFunctions["myPrintf_1"];
        CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);

        std::cerr << "types: \n";
        callI->getType()->dump();
        cmpXchgI->getType()->dump();
        inst->getType()->dump();*/
        
        /*cmpXchgI->replaceAllUsesWith(callI);

        //CallInst::Create(sType, func, params, "myCmpXchg", cmpXchgI);
        std::vector<unsigned int> indexes;
        indexes.push_back(0);
        ExtractValueInst* eI1 = ExtractValueInst::Create(callI, indexes, "eI1", cmpXchgI);
        eI1->dump();
        if (eI1->getType() == Type::getInt64Ty(cmpXchgI->getContext()))
            func = myFunctions["myPrintf_64"];
        else if (eI1->getType() == Type::getInt32Ty(cmpXchgI->getContext()))
            func = myFunctions["myPrintf_32"];
        else if (eI1->getType() == Type::getInt8Ty(cmpXchgI->getContext()))
            func = myFunctions["myPrintf_8"];

        params.clear();
        params.push_back(eI1);
        func->dump();
        eI1->getType()->dump();
        CallInst* c1 = CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);
        std::cerr << "2222\n";
        c1->dump();
        indexes.clear();
        indexes.push_back(1);
        ExtractValueInst* eI2 = ExtractValueInst::Create(callI, indexes, "eI2", cmpXchgI);
        eI2->dump();
        params.clear();
        params.push_back(eI2);
        func = myFunctions["myPrintf_1"];
        std::cerr << "1111: " << func << "\n";
        func->dump();
        CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);
        
        func = myFunctions["myPrintf_81"];
        params.clear();
        params.push_back(callI);
        CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);*/
    }

    void instrRMW(Instruction* inst) {
        AtomicRMWInst* rmwI = dyn_cast<AtomicRMWInst>(inst);
        AtomicRMWInst::BinOp op = rmwI->getOperation();
        std::string order = toIRString(rmwI->getOrdering());
        Value* o = ConstantInt::get( Type::getInt32Ty(rmwI->getContext()), orderToInt[order]);

        Value* v1 = rmwI->getPointerOperand();
        Value* v2 = rmwI->getValOperand();

        if (v1->getType() != Type::getInt8PtrTy(rmwI->getContext())) {
          BitCastInst* castInst = new BitCastInst(v1, Type::getInt8PtrTy(rmwI->getContext()), "myCast", rmwI);
          v1 = castInst;
        }
        
        int num = getClapNum(inst);
        std::vector<Value*> params;
        params.push_back(v1);
        params.push_back(v2);
        params.push_back(o);
        params.push_back(ConstantInt::get(Type::getInt64Ty(inst->getContext()), num));

        Function* func;
        /*Type* ty;
        if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) {
            func = myFunctions["checker_preAtomicLoad_char"];
            ty = Type::getInt8Ty(rmwI->getContext());
        }*/
        switch (op) {
            case AtomicRMWInst::BinOp::Xchg: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Xchg_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Xchg_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Xchg_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Xchg_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::Add: { 
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Add_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Add_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Add_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Add_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break; 
            }
            case AtomicRMWInst::BinOp::Sub: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Sub_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Sub_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Sub_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Sub_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::And: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_And_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_And_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_And_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_And_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::Nand: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Nand_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Nand_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Nand_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Nand_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::Or: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Or_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Or_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Or_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Or_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::Xor: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Xor_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Xor_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Xor_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Xor_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::Max: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Max_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Max_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Max_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Max_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;                            
            }
            case AtomicRMWInst::BinOp::Min: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_Min_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Min_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Min_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_Min_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::UMax: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_UMax_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_UMax_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_UMax_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_UMax_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            case AtomicRMWInst::BinOp::UMin: {
                if (rmwI->getType() == Type::getInt8Ty(rmwI->getContext())) 
                    func = myFunctions["checker_preRMW_UMin_8"];
                else if (rmwI->getType() == Type::getInt16Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_UMin_16"];
                else if (rmwI->getType() == Type::getInt32Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_UMin_32"];
                else if (rmwI->getType() == Type::getInt64Ty(rmwI->getContext()))
                    func = myFunctions["checker_preRMW_UMin_64"];
                else
                    assert(false && "Do not handle this type!\n");
                break;
            }
            default: {
                inst->dump();
                errs() << "Not handle this type of cmpXchg inst!\n";
                return ;
            }
        }
        CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "", rmwI);
        rmwI->replaceAllUsesWith(callI);
    }

    uint64_t getClapNum(Instruction* inst) {
        //std::cerr << "In getClapNum!\n";
        /*if (CallInst *callI = dyn_cast<CallInst>(inst)) {
            //skip the LLVM intrisic calls
            if (dyn_cast<IntrinsicInst>(callI) != NULL)  return 0; 

            //skip the CLAP function calls
            if (callI->getCalledFunction() == NULL)     return 0;

            if (!strncmp("clap_", callI->getCalledFunction()->getName().data(), 5)) return 0;
        }*/

		
        MDNode *node = inst->getMetadata("clap");
        if (node == NULL) {
            return 0;
		}

        //inst->dump();
        //assert(node && "No Clap num instrumented!");

        //const MDOperand* op = &(node->getOperand(0));
        //const Metadata* meta = op->get();
        //std::cerr << "node: " << node << " " << node->getNumOperands() << " " << node->getOperand(0) << " " << op << " " << meta << " " << dyn_cast<ValueAsMetadata>(meta) << " " << dyn_cast<ConstantAsMetadata>(meta) << "\n" ;
		const Metadata* meta = node->getOperand(0);
        const ValueAsMetadata* data = dyn_cast<ValueAsMetadata>(meta);
        //auto* data = dyn_cast<ValueAsMetadata>(meta);
		/*if (data == 0) {
			return 0;
		}*/

		//std::cerr << "yyyy222: " << meta << " " << isa<ValueAsMetadata>(meta) << " " 
        //    << dynamic_cast<ValueAsMetadata*>(meta) << " " << data << "\n";
		//inst->dump();
        Value* v = data->getValue();
        //std::cerr << "node: " << node << "\n";
        //node->dump();
        //node->getOperand(0)->dump();
        //Value* v = node->getOperand(0);
        ConstantInt* constI = dyn_cast<ConstantInt>(v);
        const uint64_t* num = constI->getValue().getRawData();

        //std::cerr << "num: " << *num << "\n";
        return *num;
    }

    void instrBr(Instruction* inst) {
        BranchInst* brInst = dyn_cast<BranchInst>(inst);
        Value* cmpV = brInst->getOperand(0);
        if (dyn_cast<Instruction>(cmpV)) {
            //Instruction* cmpInst = dyn_cast<Instruction>(cmpV);
            //uint64_t num = 0; //getClapNum(inst);
            BasicBlock* bb = inst->getParent();
            SmallVector<BasicBlock*, 8> bList;
            DT->getDescendants(bb, bList);
            
            std::set<BasicBlock*> controlBBs;
            for (BasicBlock *B : bList) {
                if (B == bb) continue ;

                SmallVector<BasicBlock*, 8> bList2;
                PDT->getDescendants(B, bList2);

                bool flag = false;
                for (BasicBlock *B2 : bList2) {
                    if (B2 == bb) {
                        flag = true;
                        break;
                    }
                }

                if (flag) continue ;
                controlBBs.insert(B);
            }
            
            /*std::cerr << "descendants: " << inst->getParent()->getParent()->getName().str() 
                << " " << DT->getNode(bb) << " " << controlBBs.size() << "\n";
            inst->dump();*/
        }
    }

    void instrInst(Instruction* inst) {
      std::cerr << "handling!\n";
      inst->dump();
      switch (inst->getOpcode()) {
        case Instruction::Call:
            //instrCall(inst);
            break ;
        case Instruction::Invoke:
            instrInvoke(inst);
            break;
        case Instruction::Load:
            instrLoad(inst);
            break;
        case Instruction::Store:
            instrStore(inst);
            break;
        case Instruction::Fence:
            instrFence(inst);
            break;
        case Instruction::AtomicCmpXchg:
            instrCmpXchg(inst);
            break;
        case Instruction::AtomicRMW:
            instrRMW(inst);
            break;
        //case Instruction::Br:
        //    instrBr(inst);
        default: 
            break ;
      }
    }

    void splitBlocks(Function* F) {
        for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
            if (dyn_cast<CallInst>(&*I)) {
                CallInst* callI = dyn_cast<CallInst>(&*I);
                if (callI->getCalledFunction() == NULL)
                    continue ;

                //std::cerr << "ssss: " << (callI->getCalledFunction()->getName()).str() << "\n";
                if (callI->getCalledFunction()->getName().find("checker_preAtomicLoad") == std::string::npos) 
                    continue ;

                I++;
                Instruction* nextI = &*I;
                I--;

                //callI->dump(), nextI->dump();
                assert(nextI->getOpcode() == Instruction::Load);

                IRBuilder<> Builder(nextI);
                LLVMContext theContext;

                Value* defaultV = ConstantInt::get(nextI->getType(), 0xff);
                Value *icmp1 = Builder.CreateICmpEQ(callI, defaultV);

                TerminatorInst *ThenTerm , *ElseTerm ;
                SplitBlockAndInsertIfThenElse(icmp1, nextI, &ThenTerm, &ElseTerm, nullptr);
                //std::cerr << "ssss\n";
                //ThenTerm->dump(), ElseTerm->dump();
                //BasicBlock* elseBB = ElseTerm->getParent();
                //auto loadI = nextI->clone();
                //loadI->dump();
                LoadInst* loadI = dyn_cast<LoadInst>(nextI);

                std::vector<Value*> params;
                Value* param = loadI->getOperand(0);
                if (param->getType() != Type::getInt8PtrTy(loadI->getContext())) {
                    BitCastInst* castInst = new BitCastInst(param, Type::getInt8PtrTy(loadI->getContext()), "myCast", ThenTerm);
                    param = castInst;
                }
                
                params.push_back(param);
                params.push_back(callI);
                std::string order = toIRString(loadI->getOrdering());
                Value* o = ConstantInt::get( Type::getInt32Ty(loadI->getContext()), orderToInt[order]);
                params.push_back(o);

                Function* postFunc;
                if (loadI->getType() == Type::getInt8Ty(loadI->getContext())) {
                    //ty = Type::getInt8Ty(loadI->getContext());
                    postFunc = myFunctions["checker_postAtomicLoad_char"];
                } else if (loadI->getType() == Type::getInt32Ty(loadI->getContext())) {
                    //ty = Type::getInt32Ty(loadI->getContext());
                    postFunc = myFunctions["checker_postAtomicLoad_int"];
                } else if (loadI->getType() == Type::getInt64Ty(loadI->getContext())) {
                    //ty = Type::getInt64Ty(loadI->getContext());
                    postFunc = myFunctions["checker_postAtomicLoad_double"];
                } else {
                    loadI->getType()->dump();
                    errs() << "Not handle this type for atomic load!\n";
                    return ;
                }
                CallInst::Create(postFunc->getFunctionType(), postFunc, params, "", ThenTerm); // add the post call

                LoadInst* newLoadI = new LoadInst(loadI->getPointerOperand(), "newLoad", loadI->isVolatile(), 
                        loadI->getAlignment(), loadI->getOrdering(), 
                        loadI->getSynchScope(), ElseTerm);

                std::cerr << "3333\n";
                ICmpInst* icmpI = new ICmpInst(ElseTerm, ICmpInst::ICMP_EQ, callI, newLoadI);

                BranchInst* branchI = dyn_cast<BranchInst>(ElseTerm);
                /*branchI->setCondition(icmpI);
                branchI->setSuccessor(0, branchI->getSuccessor(0));
                branchI->setSuccessor(1, branchI->getParent());*/

                BranchInst::Create(branchI->getSuccessor(0), branchI->getParent(), icmpI, ElseTerm);
                ElseTerm->eraseFromParent();
                
                break ;  
            }
        }
    }

    void deleteInsts(Function* F) {
        bool flag = true;
        while (flag) {
            flag = false;
            for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
                if (dyn_cast<AtomicRMWInst>(&*I)) {
                    AtomicRMWInst* inst = dyn_cast<AtomicRMWInst>(&*I);
                    std::cerr << "erase1\n";
                    inst->eraseFromParent();
                    flag = true;
                    break;
                } else if (dyn_cast<LoadInst>(&*I)) {
                    LoadInst* inst = dyn_cast<LoadInst>(&*I);
                    if (inst->isAtomic()) {
                        std::cerr << "erase2\n";
                        inst->eraseFromParent();
                        flag = true;
                        break;
                    } else {
                        if (sharedValues.find(inst->getOperand(0)) != sharedValues.end())  {
                            inst->eraseFromParent();
                            flag = true;
                            break;
                        }
                    }
                } else if (dyn_cast<StoreInst>(&*I)) {
                    StoreInst* inst = dyn_cast<StoreInst>(&*I);
                    if (inst->isAtomic()) {
                        /*std::cerr << "delete store: \n";
                        inst->dump();*/
                        std::cerr << "erase3\n";
                        inst->eraseFromParent();
                        flag = true;
                        break;
                    } else {
                        if (sharedValues.find(inst->getOperand(1)) != sharedValues.end())  {
                            inst->eraseFromParent();
                            flag = true;
                            break;
                        }
                    }
                } else if (dyn_cast<AtomicCmpXchgInst>(&*I)) {
                    AtomicCmpXchgInst* inst = dyn_cast<AtomicCmpXchgInst>(&*I);
                    std::cerr << "erase4\n";
                    inst->eraseFromParent();
                    flag = true;
                    break;
                } else if (dyn_cast<CallInst>(&*I)) {
                    CallInst* inst = dyn_cast<CallInst>(&*I);
                    Function* f = inst->getCalledFunction();
                    Value* v = NULL;
                    if (f && (f->getName().str().find("checker_preAtomicLoad_") != std::string::npos ||
                            f->getName().str().find("checker_preAtomicStore_") != std::string::npos)) 
                        v = inst->getOperand(1);
                    else if (f && f->getName().str().find("checker_preRMW") != std::string::npos)
                        v = inst->getOperand(3);
                    else if (f && f->getName().str().find("checker_preCmpXchg_") != std::string::npos)
                        v = inst->getOperand(5);

                    if (v != NULL) {
                        ConstantInt* constI = dyn_cast<ConstantInt>(v);
                        const uint64_t* num = constI->getValue().getRawData();
                        if (*num == 0) {
                            std::cerr << "erase5\n";
                            inst->dump();
                            inst->eraseFromParent();
                            flag = true;
                            break;
                        }
                    }
                }
            }
        }
    }
    
    void instrFunc(Function* func) {
      if (func->hasInternalLinkage())
          return ;

      std::cerr << "begin func: " << func->getName().str() << " " << func->hasInternalLinkage() << "\n";
      for (Function::iterator it = func->begin(); 
              it != func->end(); ++it) {
        if (func->getName().str().find("_DpOT0_") != std::string::npos) continue ;
        //BasicBlock bb = *it;
        for (BBIt = it->begin();
                BBIt != it->end(); ++BBIt) {
            //std::cerr << "ssss: \n";
            Instruction* inst = &*BBIt;
            //inst->dump();
            instrInst(inst);
            //std::cerr << "sss2:\n";
        }
      }

      //deleteInsts(func);
      //splitBlocks(func);
    }

    bool mayControl(BasicBlock* predB, BasicBlock* b) {
        Instruction* termI = predB->getTerminator();
        if (dyn_cast<BranchInst>(termI)) {
            BranchInst* br = dyn_cast<BranchInst>(termI);
            if (br->isUnconditional()) return false;
            
            for (unsigned i=0; i<br->getNumSuccessors(); i++) {
                BasicBlock* nb = br->getSuccessor(i);
                if (nb == b) continue ;
                
                if (PDT->dominates(b, nb))
                    return false;
                else
                    return true;
            }
        }

        if (dyn_cast<SwitchInst>(termI)) {
            SwitchInst* sw = dyn_cast<SwitchInst>(termI);
            for (unsigned i=0; i<sw->getNumSuccessors(); i++) {
                BasicBlock* nb = sw->getSuccessor(i);
                if (nb == b) continue ;
                
                if (PDT->dominates(b, nb))
                    return false;
                else
                    return true;
            }
        }

        return false;
    }

    void instrFunc2(Function* func) {

		if (func == NULL) return ;
        
		//std::cerr << "instrFunc2: " << func << "\n";
		//std::cerr << "xxx: " << func->getName().str() << "\n";
        //func->dump();
        //return ;
        
        DT = &getAnalysis<DominatorTreeWrapperPass>(*func).getDomTree();
        PDT = &getAnalysis<PostDominatorTreeWrapperPass>(*func).getPostDomTree();
        //DT->recalculate(*func);
        if (func && (func->getName().str() == "main" || func->getName().str().find("_DpOT0_") != std::string::npos))
            return ;

        for (Function::iterator it = func->begin(); 
                it != func->end(); ++it) {
            BasicBlock* b = &*it;

            //std::cerr << "bbbbbbb0000: " << func->getName().str() << "\n";
            bool containCheckerLoop = false;
            for (BasicBlock::iterator bIt = b->begin();
                    bIt != b->end(); ++bIt) {
				
                Instruction* inst = &*bIt;
                int num1 = getClapNum(inst);
                if (num1 == 0) continue ;
                std::vector<Value*> params;
                params.push_back(ConstantInt::get(func->getContext(), APInt(64, num1)));
                if (dyn_cast<PHINode>(inst)) {
                    PHINode* phi = dyn_cast<PHINode>(inst);
                    std::vector<uint64_t> values, blocks;
                    for (unsigned i=0; i<phi->getNumOperands(); ++i) {
                        Value* v = phi->getOperand(i);
                        BasicBlock* block = phi->getIncomingBlock(i);
                        Instruction* termI = block->getTerminator();
                        uint64_t tnum = getClapNum(termI);
                        if (dyn_cast<Instruction>(v)) {
                            Instruction* ins = dyn_cast<Instruction>(v);
                            uint64_t num = getClapNum(ins);
                            values.push_back(num);
                            params.push_back(ConstantInt::get(func->getContext(), APInt(64, num)));
                        } else { // add a Load inst
                            values.push_back(0); 
                            params.push_back(ConstantInt::get(func->getContext(), APInt(64, 0)));
                        }
                        blocks.push_back(tnum);
                        params.push_back(ConstantInt::get(func->getContext(), APInt(64, tnum)));
                    }

                    Function* func = NULL;
                    switch(values.size()) {
                        case 2: func = myFunctions["checker_handlePHI_2"]; break ;
                        case 3: func = myFunctions["checker_handlePHI_3"]; break ;
                        case 4: func = myFunctions["checker_handlePHI_4"]; break ;
                        case 5: func = myFunctions["checker_handlePHI_5"]; break ;
                        case 6: func = myFunctions["checker_handlePHI_6"]; break ;
                        case 7: func = myFunctions["checker_handlePHI_7"]; break ;
                        case 8: func = myFunctions["checker_handlePHI_8"]; break ;
                        case 9: func = myFunctions["checker_handlePHI_9"]; break ;
                        case 10: func = myFunctions["checker_handlePHI_10"]; break ;
                        default: assert(false);
                                
                    }
                    
                    Instruction* firstI = b->getFirstNonPHIOrDbg();//&*(b->begin());
                    /*VectorType* vty = VectorType::get(Type::getInt64Ty(func->getContext()), values.size());
                    UndefValue* undefV = UndefValue::get(vty);
                    int index = 0;
                    Value* vs = undefV;
                    Value* indexes = undefV;
                    for (unsigned i=0; i<values.size(); ++i) {
                        Value* ind = ConstantInt::get(func->getContext(), APInt(64, i));
                        Value* v = ConstantInt::get(func->getContext(), APInt(64, values[i]));
                        vs = InsertElementInst::Create(vs, v, ind, "myInsert", firstI);
                        Value* index = ConstantInt::get(func->getContext(), APInt(64, blocks[i]));
                        indexes = InsertElementInst::Create(indexes, index, ind, "myInsert", firstI);
                        //sset.insert(indexV);
                    }

                    params.push_back(vs);
                    params.push_back(indexes);*/
                    CallInst::Create(func->getFunctionType(), func, params, "", firstI);

                    continue ;
                }

                if (InvokeInst* invokeI = dyn_cast<InvokeInst>(inst)) {
                    BasicBlock* destBB = invokeI->getNormalDest();
                    bool flag = true;
                    Instruction* termI;
                    if (DT->getNode(inst->getParent())->getIDom() != NULL) { 
                        BasicBlock* dBB = DT->getNode(inst->getParent())->getIDom()->getBlock();
                        termI = dBB->getTerminator();
                        if (termI->getOpcode() != Instruction::Br && termI->getOpcode() != Instruction::Switch)
                            //continue ;
                            flag = false;
                    } else 
                        flag = false;
                   
                    if (flag) {
                        Function* func = myFunctions["checker_trackDynInfo"];
                        uint64_t num = getClapNum(termI);
                        //exit(0);

                        std::vector<Value*> params;
                        params.push_back(ConstantInt::get(func->getContext(), APInt(64, num)));
                        Instruction* firstI = destBB->getFirstNonPHIOrDbg();//&*(b->begin());
                        if (dyn_cast<LandingPadInst>(firstI)) continue ;

                        CallInst::Create(func->getFunctionType(), func, params, "", firstI);  
                    }
                }

                if (dyn_cast<CallInst>(inst)) {
                    CallInst* callI = dyn_cast<CallInst>(inst);
                    if (dyn_cast<IntrinsicInst>(callI) != NULL)  
                        continue; 
                    if (callI->getCalledFunction() == NULL)     
                        continue;

                    Function* f = callI->getCalledFunction();

					//std::cerr << "yyy555: " << f << "\n";
                    MDNode* temp_N = MDNode::get(inst->getContext(), ConstantAsMetadata::get(ConstantInt::get(inst->getContext(), APInt(64, num1))));
                    std::cerr << "setting clap2: " << num1 << "\n";
                    if (f && f->getName().str().find("checker_preAtomicLoad") != std::string::npos) {
                        std::vector<Value*> ps;
                        ps.push_back(callI->getOperand(0));
                        ps.push_back(ConstantInt::get(Type::getInt64Ty(inst->getContext()), num1));
                        ps.push_back(callI->getOperand(2));
                        CallInst* newI = CallInst::Create(f->getFunctionType(), f, ps, "", inst); 
                        
                        /*llvm::ValueAsMetadata* data = ValueAsMetadata::get(ConstantInt::get(inst->getContext(), APInt(64, num1)));
                        llvm::Metadata* meta = dyn_cast<ValueAsMetadata>(data);
                        llvm::ArrayRef<llvm::Metadata*> elts = {meta};
                        MDNode* md_node = MDNode::get(inst->getContext(), elts);*/
                    
                        newI->setMetadata("clap", temp_N);
                        inst->replaceAllUsesWith(newI);
                        inst = newI;
                        //inst->eraseFromParent();
                        //continue ;
                    } else if (f && f->getName().str().find("checker_preAtomicStore") != std::string::npos) {
                        std::vector<Value*> ps;
                        ps.push_back(callI->getOperand(0));
                        ps.push_back(ConstantInt::get(Type::getInt64Ty(inst->getContext()), num1));
                        ps.push_back(callI->getOperand(2));
                        ps.push_back(callI->getOperand(3));
                        CallInst* newI = CallInst::Create(f->getFunctionType(), f, ps, "", inst); 
                        
                        /*llvm::ValueAsMetadata* data = ValueAsMetadata::get(ConstantInt::get(inst->getContext(), APInt(64, num1)));
                        llvm::Metadata* meta = dyn_cast<ValueAsMetadata>(data);
                        llvm::ArrayRef<llvm::Metadata*> elts = {meta};
                        MDNode* md_node = MDNode::get(inst->getContext(), elts);*/
                        newI->setMetadata("clap", temp_N);
                        inst->replaceAllUsesWith(newI);
                        inst = newI;
                        //inst->eraseFromParent();
                        //continue ;
                    } else if (f && f->getName().str().find("checker_preRMW_") != std::string::npos) {
                        std::vector<Value*> ps;
                        ps.push_back(callI->getOperand(0));
                        ps.push_back(callI->getOperand(1));
                        ps.push_back(callI->getOperand(2));
                        ps.push_back(ConstantInt::get(Type::getInt64Ty(inst->getContext()), num1));
                        CallInst* newI = CallInst::Create(f->getFunctionType(), f, ps, "", inst); 
                        
                        /*llvm::ValueAsMetadata* data = ValueAsMetadata::get(ConstantInt::get(inst->getContext(), APInt(64, num1)));
                        llvm::Metadata* meta = dyn_cast<ValueAsMetadata>(data);
                        std::cerr << "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy: " << data << " " << meta << "\n";
                        llvm::ArrayRef<llvm::Metadata*> elts = {meta};
                        MDNode* md_node = MDNode::get(inst->getContext(), elts);*/
                        newI->setMetadata("clap", temp_N);
                        inst->replaceAllUsesWith(newI);
                        inst = newI;
                    } else if (f && f->getName().str().find("checker_preCmpXchg_") != std::string::npos) {
                        std::vector<Value*> ps;
                        ps.push_back(callI->getOperand(0));
                        ps.push_back(callI->getOperand(1));
                        ps.push_back(callI->getOperand(2));
                        ps.push_back(callI->getOperand(3));
                        ps.push_back(callI->getOperand(4));
                        ps.push_back(ConstantInt::get(Type::getInt64Ty(inst->getContext()), num1));
                        CallInst* newI = CallInst::Create(f->getFunctionType(), f, ps, "", inst); 
                        
                        /*llvm::ValueAsMetadata* data = ValueAsMetadata::get(ConstantInt::get(inst->getContext(), APInt(64, num1)));
                        llvm::Metadata* meta = dyn_cast<ValueAsMetadata>(data);
                        llvm::ArrayRef<llvm::Metadata*> elts = {meta};
                        MDNode* md_node = MDNode::get(inst->getContext(), elts);*/
                        newI->setMetadata("clap", temp_N);
                        inst->replaceAllUsesWith(newI);
                        inst = newI;
                    } else if (f && f->getName().str().find("checker_loop") != std::string::npos) {
                        containCheckerLoop = true;
                    }
                    
                    //instrCall(inst, nextI);
                }

                //std::cerr << "hhhhere!\n";

                unsigned ops = 0;
                //paramTypes.push_back(VectorType::get(Type::getInt64Ty(M.getContext()), 1));
                std::vector<Value*> vs;
                //std::cerr << "add use: " << num1 << "\n";
                //inst->dump();
                for (Use &U : inst->operands()) {
                    Value *v = U.get();
                    if (dyn_cast<Instruction>(v)) {
                        ops++;
                        Instruction* i = dyn_cast<Instruction>(v);
                        int num2 = getClapNum(i);
                        //std::cerr << "num: " << num2 << "\n";
                        if (num2 == 0) continue ;
                        params.push_back(ConstantInt::get(func->getContext(), APInt(64, num2)));
                    }
                }

                //std::cerr << "params size: " << params.size() << " " << vs.size() << " " << ops << "\n";
                if (ops == 0) continue ;

                //VectorType* vty = VectorType::get(Type::getInt64Ty(func->getContext()), ops);
                //SmallSet<Value*, 10> sset;
                /*UndefValue* undefV = UndefValue::get(vty);
                int index = 0;
                Value* createV = undefV;
                for (std::vector<Value*>::iterator vit = vs.begin();
                        vit != vs.end(); ++vit) {
                    Value* indexV = ConstantInt::get(func->getContext(), APInt(64, index++));
                    createV = InsertElementInst::Create(createV, *vit, indexV, "myInsert", inst);
                }
                params.push_back(createV);*/
                //params.push_back(sset);
                Function* addFunc = NULL;
                switch (ops) {
                    case 1: addFunc = myFunctions["checker_addUses_1"]; break;
                    case 2: addFunc = myFunctions["checker_addUses_2"]; break;
                    case 3: addFunc = myFunctions["checker_addUses_3"]; break;
                    case 4: addFunc = myFunctions["checker_addUses_4"]; break;
                    case 5: addFunc = myFunctions["checker_addUses_5"]; break;
                    case 6: addFunc = myFunctions["checker_addUses_6"]; break;
                    case 7: addFunc = myFunctions["checker_addUses_7"]; break;
                    case 8: addFunc = myFunctions["checker_addUses_8"]; break;
                    case 9: addFunc = myFunctions["checker_addUses_9"]; break;
                    case 10: addFunc = myFunctions["checker_addUses_10"]; break;
                    default: assert(false);
                }
                
                /*if (ops == 2) {
                    params.erase(params.end()-1);
                    
                    UndefValue* uV = UndefValue::get(Type::getInt64PtrTy(inst->getContext())->getPointerTo());
                    LoadInst* newLoadI = new LoadInst(uV, "", inst);
                    for (std::vector<Value*>::iterator vit = vs.begin();
                        vit != vs.end(); ++vit) {
                        //std::vector<unsigned int> indx;
                        int i = vit-vs.begin();
                        llvm::ArrayRef<Value*> indx = {ConstantInt::get(func->getContext(), APInt(64, i))};
                        //indx.push_back(vit-vs.begin());
                        std::cerr << "getelemntptr:\n";
                        //uV->dump();
                        //cast<PointerType>(uV->getType()->getScalarType())->getElementType()->dump();
                        Type::getInt64Ty(inst->getContext())->dump();
                        GetElementPtrInst* getInst = GetElementPtrInst::Create(Type::getInt64Ty(inst->getContext()), newLoadI, indx, "", inst);
                        getInst->dump();
                        StoreInst* storeI = new StoreInst(*vit, getInst, inst); 
                    }
                    newLoadI = new LoadInst(uV, "", inst);
                    params.push_back(newLoadI);
                }*/
                //std::cerr << "ssss: " << addFunc->getFunctionType()->getNumParams() << " " << params.size() << "\n";
                CallInst::Create(addFunc->getFunctionType(), addFunc, params, "", inst);   
            }

            //std::cerr << "mmm: " << DT->getNode(b) << "\n";
            //if (DT->getNode(b) == NULL)
            //    b->dump();

            std::vector<uint64_t> nums;
            for (auto it = pred_begin(b), et = pred_end(b); it != et; ++it) {
                BasicBlock* predecessor = *it;
                if (mayControl(predecessor, b)) {
                    uint64_t num = getClapNum(predecessor->getTerminator());
                    nums.push_back(num);
                }

                /*for (BasicBlock::iterator dBBIt = predecessor->begin();
                        dBBIt != predecessor->end(); ++dBBIt) {
                    Instruction* i = &*dBBIt;
                    if (CallInst* c = dyn_cast<CallInst>(i)) {
                        if (c->getCalledFunction() != NULL &&
                                c->getCalledFunction()->getName().str() == "checker_trackDynInfo") {
                            ConstantInt* constI = dyn_cast<ConstantInt>(c->getOperand(0));
                            const uint64_t* num = constI->getValue().getRawData();
                            if (*num > 10000000000 && std::find(nums.begin(), nums.end(), *num) == nums.end())
                                nums.push_back(*num);
                        }
                    }
                }*/
            }
                    

            if (DT->getNode(b) && DT->getNode(b)->getIDom() != NULL) {
                //std::cerr << "mmm3\n";
                bool flag = true;
                BasicBlock* dBB = DT->getNode(b)->getIDom()->getBlock();
                if (PDT->getNode(dBB) && PDT->getNode(dBB)->getIDom() != NULL) {
                    BasicBlock* pdBB = PDT->getNode(dBB)->getIDom()->getBlock();
                    //std::cerr << "ttttttt: " << b << " " << dBB << " " << " " << PDT->getNode(dBB)->getIDom() << " " << pdBB << "\n";
                    //b->dump();
                    //dBB->dump();
                    //if (pdBB != NULL)
                    //    pdBB->dump();
                    
                    if (pdBB == b) {
                        flag = false;
                        //continue ;
                    }
                }

                Instruction* termI = dBB->getTerminator();
                if (termI->getOpcode() != Instruction::Br && termI->getOpcode() != Instruction::Switch)
                    flag = false;

                if (flag == false) {
                    for (BasicBlock::iterator dBBIt = dBB->begin();
                            dBBIt != dBB->end(); ++dBBIt) {
                        Instruction* i = &*dBBIt;
                        if (CallInst* c = dyn_cast<CallInst>(i)) {
							Function* f = c->getCalledFunction();
                            if ( f && f->getName().str() == "checker_trackDynInfo") {
                                ConstantInt* constI = dyn_cast<ConstantInt>(c->getOperand(0));
                                const uint64_t* num = constI->getValue().getRawData();
                                if (std::find(nums.begin(), nums.end(), *num) == nums.end())
                                    nums.push_back(*num);
                            }
                        }
                    }
                } else {
                    uint64_t num = getClapNum(dBB->getTerminator());
                    if (std::find(nums.begin(), nums.end(), num) == nums.end())
                        nums.push_back(num);
                }

                //std::cerr << "checkerloop: " << containCheckerLoop << "\n"; 
                if (containCheckerLoop) {
                    for (auto it = pred_begin(b), et = pred_end(b); it != et; ++it) {
                        BasicBlock* predecessor = *it;
                        //predecessor->dump();
                        for (BasicBlock::iterator bIt = predecessor->begin();
                                bIt != predecessor->end(); ++bIt) {
                            Instruction* inst = &*bIt;
                            if (CallInst* c = dyn_cast<CallInst>(inst)) {
								Function* f = c->getCalledFunction();
                                if (f->getName().str() == "checker_trackDynInfo") {
                                    ConstantInt* constI = dyn_cast<ConstantInt>(c->getOperand(0));
                                    const uint64_t* num = constI->getValue().getRawData();
                                    if (std::find(nums.begin(), nums.end(), *num) == nums.end())
                                        nums.push_back(*num);
                                    //std::cerr << "vvvvv22\n";
                                }
                            }
                        }
            
                    }
                }

                //continue ;
                //std::cerr << "bbbbbbb1: " << dBB << "\n";
                //dBB->getTerminator()->dump();
                //if (flag) {
                for (std::vector<uint64_t>::iterator nIt = nums.begin();
                        nIt != nums.end(); ++nIt) {
                    Function* func = myFunctions["checker_trackDynInfo"];
                    uint64_t num = *nIt;// getClapNum(dBB->getTerminator());

                    std::vector<Value*> params;
                    params.push_back(ConstantInt::get(func->getContext(), APInt(64, num)));
                    Instruction* firstI = b->getFirstNonPHIOrDbg();//&*(b->begin());
                    if (dyn_cast<LandingPadInst>(firstI)) continue ;

                    CallInst::Create(func->getFunctionType(), func, params, "", firstI);  

                    func = myFunctions["checker_trackDynInfoEnd"];
                    params.clear();
                    Instruction* lastI = b->getTerminator();//&*(b->begin());
                    CallInst::Create(func->getFunctionType(), func, params, "", lastI);
                }
            }

            Instruction* insert = b->getFirstNonPHIOrDbg();
            while (dyn_cast<LandingPadInst>(insert) != NULL)
                insert = insert->getNextNode();

            Instruction* terminate = b->getTerminator();
            uint64_t n = getClapNum(terminate);
            Function* func = myFunctions["checker_currentBB"];
            std::vector<Value*> params;
            params.push_back(ConstantInt::get(func->getContext(), APInt(64, n)));
            CallInst::Create(func->getFunctionType(), func, params, "", insert);  

            for (BBIt = it->begin();
                    BBIt != it->end(); ++BBIt) {
                Instruction* inst = &*BBIt;
                if (dyn_cast<CallInst>(inst)) {
                    BBIt++;
                    Instruction* nextI = &*BBIt;
                    BBIt--;
                    instrCall(inst, nextI);
                    //instrInvoke(inst);
                }
            }
        }

        deleteInsts(func);
    }

    int instNum = 0;
    void addIDForInsts(Module &M) {
        ++ModuleCounter;
        //uint64_t clapNum = 0;
        errs() << "TAP_InstrumentInstNumber : ";
        errs().write_escaped(M.getModuleIdentifier()) << '\n';

        LLVMContext &C = M.getContext();
        for (Module::iterator F = M.begin(); F != M.end(); F++) {
            if (F->getName().str().find("_DpOT0_") != std::string::npos) continue ;
            
            if (F->getName().str().find("thread") != std::string::npos || 
                    F->getName().str().length() >= 20) continue ;

            for (Function::iterator B = F->begin(); B != F->end(); B++) {
                for (BasicBlock::iterator I = B->begin(); I != B->end(); I++) {
                    Instruction* inst = &*I; 
                    /*if (CallInst *callI = dyn_cast<CallInst>(I)) {
                        //skip the LLVM intrisic calls
                        if (dyn_cast<IntrinsicInst>(callI) != NULL)  
                            continue; 

                        //skip the CLAP function calls
                        if (callI->getCalledFunction() == NULL)     continue;

                        if (!strncmp("clap_", callI->getCalledFunction()->getName().data(), 5))
                            continue;
                    }*/

                    //assign a unique Metadata number to the instruction
                    //Type *type = IntegerType::get(C, 64);
                    //clapNum = clapNum+1;
                    //ConstantInt *cInt1 = ConstantInt::get(IntegerType::get(C, 64), clapNum);
                    //ConstantInt *cInt = ConstantInt::get(IntegerType::get(C, 64), ++InstCounter);
                    //llvm::ValueAsMetadata* data = ValueAsMetadata::get(cInt1);
                    //llvm::Metadata* meta = dyn_cast<ValueAsMetadata>(data);
                    //llvm::ArrayRef<llvm::Metadata*> elts = {meta};
                    //MDNode* md_node = MDNode::get(C, elts);

                    InstCounter++;
                    instNum++;
                    MDNode* temp_N = MDNode::get(C, ConstantAsMetadata::get(ConstantInt::get(C, APInt(64, instNum))));
                    //MDNode* md_node1 = MDNode::get(C, temp_N);

                    //std::cerr << "MDDDDDDDDDDDDDDDDDDD: " << isa<MDNode>(md_node) << "\n";
                    //md_node->dump();

                    inst->setMetadata("clap", temp_N);

                    std::cerr << "setting clap: " << InstCounter << " " << instNum << "\n";
                    //if (dyn_cast<BranchInst>(&*I)) 
                    //    instrBr(&*I);
                }        
            }
        }

        //InstCounter += (1<<16);
    }

    void identifySharedVars(Module &M) {
        for (Module::iterator it = M.begin(); it != M.end(); ++it) {
            Function* func = &*it;
            for (Function::iterator it1 = func->begin(); it1 != func->end(); ++it1) {
                BasicBlock* BB = &*it1;
                for (BasicBlock::iterator it2 = BB->begin(); it2 != BB->end(); ++it2) {
                    Instruction* inst = &*it2;
                    if (inst->getOpcode() == Instruction::Call) {
                        Function* calledFunc = dyn_cast<CallInst>(inst)->getCalledFunction();
                        if (calledFunc && calledFunc->getName().str().find("checker_shared") != std::string::npos) {
                            std::cerr << "shared:\n";
                            inst->getOperand(0)->stripPointerCasts()->dump();
                            sharedValues.insert(inst->getOperand(0)->stripPointerCasts());
                        }
                    }
                }
            }
        }
    }

    virtual bool runOnModule(Module &M) override {
      //auto &PDT = AM.getResult<PostDominatorTreeAnalysis>(F);

      std::cerr << "Instrument code: begin!\n";
   
      identifySharedVars(M);
      addSpecialFunctions(M);
      std::cerr << "ssssssssssssssss\n";
      for (Module::iterator it = M.begin(); 
              it != M.end(); ++it) {
        Function* func = &*it;

        if (func->isDeclaration()) continue;
        if (func->getName().str().find("thread") != std::string::npos ||
                func->getName().str().size() >= 20) continue ;
        //auto &DT = AU.getResult<DominatorTreeAnalysis>(func);
        //auto *DT = &getAnalysis<DominatorTreeWrapperPass>().getDomTree();
        //const DominatorTree* DT2;

        if (func->getName().str().find("check_") != std::string::npos) {
            //std::cerr << "skip fun: " << func->getName().str() << "\n";
            continue ;
        }
        instrFunc(func);
      }
     
      std::cerr << "ccccccccccccccccccccccccccccccccccccccccccccccccccccc\n";
      addIDForInsts(M);
      std::cerr << "ccccccccccccccccccccccccccccccccccccccccccccccccccccc\n";

      for (Module::iterator it = M.begin();
              it != M.end(); ++it) {
          Function* func = &*it;
          if (func->isDeclaration())    continue ;
          
          if (func->hasInternalLinkage()) continue ;
          
          if (func->getName().str().find("thread") != std::string::npos ||
                  func->getName().str().size() >= 20) continue ;

          //if (func->getName().str().find("f2v") != std::string::npos) continue ;
          std::cerr << "begin func2: " << func->getName().str() << "\n";
          instrFunc2(func);
          std::cerr << "end func2: " << func->getName().str() << "\n";
      }
      
      std::cerr << "Instrument code: end!\n";
      return true;
    }

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
        AU.setPreservesCFG();
        AU.addPreserved<DominatorTreeWrapperPass>();
        //AU.addRequired<DominatorTreeWrapperPass>();
        AU.addRequired<DominatorTreeWrapperPass>();
        AU.addRequired<PostDominatorTreeWrapperPass>();
    }
  
  private:
    DominatorTree* DT;
    PostDominatorTree* PDT;
    std::set<Value*> sharedValues;

  public:
    static char ID; 
    codeInstr() : ModulePass(ID) {}
  };
}

char codeInstr::ID = 0;
static RegisterPass<codeInstr> 
Z("codeInstr", "Instrument code Pass");
