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

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
using namespace llvm;

#define DEBUG_TYPE "MyInstrument"

STATISTIC(HelloCounter, "Counts number of functions greeted");

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
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      FunctionType *FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *storeF_char = Function::Create(FT, Function::ExternalLinkage, "preNonAtomicStore_char", &M);
      myFunctions["preNonAtomicStore_char"] = storeF_char; 
      
      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *storeF_int = Function::Create(FT, Function::ExternalLinkage, "preNonAtomicStore_int", &M);
      myFunctions["preNonAtomicStore_int"] = storeF_int;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *storeF_double = Function::Create(FT, Function::ExternalLinkage, "preNonAtomicStore_double", &M);
      myFunctions["preNonAtomicStore_double"] = storeF_double;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *atomicStoreF_char = Function::Create(FT, Function::ExternalLinkage, "preAtomicStore_char", &M);
      myFunctions["preAtomicStore_char"] = atomicStoreF_char; 

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *atomicStoreF_int = Function::Create(FT, Function::ExternalLinkage, "preAtomicStore_int", &M);
      myFunctions["preAtomicStore_int"] = atomicStoreF_int; 
      std::cerr << "add a function: preStore\n";
      //storeF->dump();

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *atomicStoreF_double = Function::Create(FT, Function::ExternalLinkage, "preAtomicStore_double", &M);
      myFunctions["preAtomicStore_double"] = atomicStoreF_double;

      // add load function "preLoad"
      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt8Ty(M.getContext()), paramTypes, false);
      Function *loadF_char = Function::Create(FT, Function::ExternalLinkage, "preNonAtomicLoad_char", &M);
      myFunctions["preNonAtomicLoad_char"] = loadF_char;
      
      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt32Ty(M.getContext()), paramTypes, false);
      Function *loadF_int = Function::Create(FT, Function::ExternalLinkage, "preNonAtomicLoad_int", &M);
      myFunctions["preNonAtomicLoad_int"] = loadF_int;

      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt64Ty(M.getContext()), paramTypes, false);
      Function *loadF_double = Function::Create(FT, Function::ExternalLinkage, "preNonAtomicLoad_double", &M);
      myFunctions["preNonAtomicLoad_double"] = loadF_double;
      
      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt8Ty(M.getContext()), paramTypes, false);
      Function *atomicLoadF_char = Function::Create(FT, Function::ExternalLinkage, "preAtomicLoad_char", &M);
      myFunctions["preAtomicLoad_char"] = atomicLoadF_char;
      
      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt32Ty(M.getContext()), paramTypes, false);
      Function *atomicLoadF_int = Function::Create(FT, Function::ExternalLinkage, "preAtomicLoad_int", &M);
      myFunctions["preAtomicLoad_int"] = atomicLoadF_int;

      paramTypes.clear();
      paramTypes.push_back(pType);
      //paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getInt64Ty(M.getContext()), paramTypes, false);
      Function *atomicLoadF_double = Function::Create(FT, Function::ExternalLinkage, "preAtomicLoad_double", &M);
      myFunctions["preAtomicLoad_double"] = atomicLoadF_double;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt8Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *postAtomicLoadF_char = Function::Create(FT, Function::ExternalLinkage, "postAtomicLoad_char", &M);
      myFunctions["postAtomicLoad_char"] = postAtomicLoadF_char;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *postAtomicLoadF_int = Function::Create(FT, Function::ExternalLinkage, "postAtomicLoad_int", &M);
      myFunctions["postAtomicLoad_int"] = postAtomicLoadF_int;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt64Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *postAtomicLoadF_double = Function::Create(FT, Function::ExternalLinkage, "postAtomicLoad_double", &M);
      myFunctions["postAtomicLoad_double"] = postAtomicLoadF_double;

      paramTypes.clear();
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *fenceF = Function::Create(FT, Function::ExternalLinkage, "preFence", &M);
      myFunctions["preFence"] = fenceF;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function* cmpXchgIntF = Function::Create(FT, Function::ExternalLinkage, "preCmpXchg_int", &M);
      myFunctions["preCmpXchg_int"] = cmpXchgIntF;

      paramTypes.clear();
      paramTypes.push_back(pType);
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      paramTypes.push_back(Type::getInt32Ty(M.getContext()));
      FT = FunctionType::get(Type::getVoidTy(M.getContext()), paramTypes, false);
      Function *rmwXchgF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Xchg", &M);
      myFunctions["preRMW_Xchg"] = rmwXchgF; 
      Function *rmwAddF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Add", &M);
      myFunctions["preRMW_Add"] = rmwAddF;
      Function *rmwSubF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Sub", &M);
      myFunctions["preRMW_Sub"] = rmwSubF;
      Function *rmwAndF = Function::Create(FT, Function::ExternalLinkage, "preRMW_And", &M);
      myFunctions["preRMW_And"] = rmwAndF;
      Function *rmwNandF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Nand", &M);
      myFunctions["preRMW_Nand"] = rmwNandF;
      Function *rmwOrF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Or", &M);
      myFunctions["preRMW_Or"] = rmwOrF;
      Function *rmwXorF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Xor", &M);
      myFunctions["preRMW_Xor"] = rmwXorF;
      Function *rmwMaxF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Max", &M);
      myFunctions["preRMW_Max"] = rmwMaxF;
      Function *rmwMinF = Function::Create(FT, Function::ExternalLinkage, "preRMW_Min", &M);
      myFunctions["preRMW_Min"] = rmwMinF;
      Function *rmwUMaxF = Function::Create(FT, Function::ExternalLinkage, "preRMW_UMax", &M);
      myFunctions["preRMW_UMax"] = rmwUMaxF;
      Function *rmwUMinF = Function::Create(FT, Function::ExternalLinkage, "preRMW_UMin", &M);
      myFunctions["preRMW_UMin"] = rmwUMinF;
    }

    
    void instrInvoke(Instruction* inst) {
      //inst->dump();
      InvokeInst* invokeInst;
      if ((invokeInst = dyn_cast<InvokeInst>(inst)) == NULL)
          return ;
      Function* func = invokeInst->getCalledFunction();
      if (func == NULL)
          return ;
      //std::cerr << "ffff: " << func << "\n";
      //errs() << "Func: " << func->getName().str() << "\n";
    }

    void instrCall(Instruction* inst) {
      CallInst* cInst;
      if ((cInst = dyn_cast<CallInst>(inst)) == NULL)
          return ;
      
      Function* func = cInst->getCalledFunction();
      errs() << "Func: " << func->getName().str() << "\n";
      if (func->isIntrinsic()) {
        errs() << "Is Intrinsic!\n";
        return ;
      }
    }
    void instrNonAtomicLoad(LoadInst* loadI) {
      errs() << "Identify a non-atomic load!\n";
      
      Function* func;
      if (loadI->getType() == Type::getInt8Ty(loadI->getContext())) 
          func = myFunctions["preNonAtomicLoad_char"];
      else if (loadI->getType() == Type::getInt32Ty(loadI->getContext()))
          func = myFunctions["preNonAtomicLoad_int"];
      else if (loadI->getType() == Type::getInt64Ty(loadI->getContext()))
          func = myFunctions["preNonAtomicLoad_double"];
      else {
          loadI->getType()->dump();
          errs() << "Not handle this type for non-atomic load!\n";
          return ;
      }

      loadI->dump();

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

      ICmpInst* icmpI = new ICmpInst(loadI, ICmpInst::ICMP_EQ, callI, loadI);
      Instruction* nextI = &*(++BBIt); BBIt--;
      SelectInst* selectI = SelectInst::Create(icmpI, callI, loadI, "mySelect", nextI);

    }

    void instrAtomicLoad(LoadInst* loadI) {
      std::string order = toIRString(loadI->getOrdering());
      errs() << "Identify an atomic load!: " << order << "\n";
      Value* o = ConstantInt::get( Type::getInt32Ty(loadI->getContext()), orderToInt[order]);
      
      Function* func, *postFunc;// = myFunctions["postAtomicLoad"];
      Type* ty;// = Type::getInt64Ty(loadI->getContext());
      //func = myFunctions["preAtomicLoad"];
      if (loadI->getType() == Type::getInt8Ty(loadI->getContext())) {
          func = myFunctions["preAtomicLoad_char"];
          ty = Type::getInt8Ty(loadI->getContext());
          postFunc = myFunctions["postAtomicLoad_char"];
      } else if (loadI->getType() == Type::getInt32Ty(loadI->getContext())) {
          func = myFunctions["preAtomicLoad_int"];
          ty = Type::getInt32Ty(loadI->getContext());
          postFunc = myFunctions["postAtomicLoad_int"];
      } else if (loadI->getType() == Type::getInt64Ty(loadI->getContext())) {
          func = myFunctions["preAtomicLoad_double"];
          ty = Type::getInt64Ty(loadI->getContext());
          postFunc = myFunctions["postAtomicLoad_double"];
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
      //params.push_back(loadI);
      params.push_back(o);
      CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "", loadI);
      //callI->insertAfter(loadI);
      loadI->replaceAllUsesWith(callI);
      //loadI->eraseFromParent();
      return ;


      /*std::cout << "111111\n";
      /////////////////
      SplitBlock(loadI->getParent(), callI);
      /////////////////
      std::cout << "2222222\n";*/

      Instruction* nextI = &*(++BBIt); BBIt--;
      Instruction* newI = callI;
      /*if (callI->getType() != loadI->getType()) {
         newI = new BitCastInst(callI, loadI->getType(), "myBit", nextI);
      }*/

      Value* defaultV = ConstantInt::get(ty, 0xff);
      LoadInst* newLoadI = new LoadInst(loadI->getPointerOperand(), "newLoad", loadI->isVolatile(), loadI->getAlignment(), loadI->getOrdering(), 
              loadI->getSynchScope(), loadI);

      ICmpInst* icmpI = new ICmpInst(nextI, ICmpInst::ICMP_EQ, newI, defaultV);
      icmpI->dump(), newLoadI->dump(), callI->dump(), loadI->dump();
      newLoadI->getType()->dump(), newI->getType()->dump();
      SelectInst* selectI = SelectInst::Create(icmpI, newLoadI, newI, "mySelect", nextI);

      //BitCastInst* castI = new BitCastInst(selectI, Type::getInt64Ty(loadI->getContext()), "myBitCast", nextI);
      //ReplaceInstWithValue(loadI->getParent()->getInstList(), BBIt, castI);
      ReplaceInstWithValue(loadI->getParent()->getInstList(), BBIt, selectI);
      
      params.clear();
      params.push_back(param);
      params.push_back(selectI);
      params.push_back(o);
      std::cout << "num: " << postFunc << "\n";// postFunc->getFunctionType()->getNumParams() << "\n";
      CallInst::Create(postFunc->getFunctionType(), postFunc, params, "", nextI); // add the post call
    }

    void instrLoad(Instruction* inst) {
      //inst->dump();
      LoadInst* loadI = dyn_cast<LoadInst>(inst);
      if (loadI->isAtomic() == false)
          ;//instrNonAtomicLoad(loadI);
      else 
          instrAtomicLoad(loadI);
    }

    void instrNonAtomicStore(StoreInst* storeI) {
      errs() << "Identify a non-atomic store! \n";

      Function* func;
      Value* v = storeI->getOperand(0);
      //if (v->getType() != Type::getInt32Ty(storeI->getContext()))
      //    return ;

      if (v->getType() == Type::getInt8Ty(storeI->getContext())) 
          return ;//func = myFunctions["preNonAtomicStore_char"];
      else if (v->getType() == Type::getInt32Ty(storeI->getContext()))
          func = myFunctions["preNonAtomicStore_int"];
      else if (v->getType() ==  Type::getInt64Ty(storeI->getContext()))
          return ;//func = myFunctions["preNonAtomicStore_double"];
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
      params.push_back(storeI->getOperand(0));
      CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "", storeI);
      //ReplaceInstWithInst(storeI->getParent()->getInstList(), BBIt, callI);
    }

    void instrAtomicStore(StoreInst* storeI) {
      //errs() << toIRString(storeI->getOrdering()) << "\n";
      std::string order = toIRString(storeI->getOrdering());
      errs() << "Identify an atomic store!: " << order << "\n";
      Value* o = ConstantInt::get( Type::getInt32Ty(storeI->getContext()), orderToInt[order]);

      Function* func;
      Value* v = storeI->getOperand(0);
      if (v->getType() ==  Type::getInt8Ty(storeI->getContext()))
          func = myFunctions["preAtomicStore_char"];
      else if (v->getType() == Type::getInt32Ty(storeI->getContext()))
          func = myFunctions["preAtomicStore_int"];
      else if (v->getType() == Type::getInt64Ty(storeI->getContext()))
          func = myFunctions["preAtomicStore_double"];
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
      params.push_back(storeI->getOperand(0));
      params.push_back(o);
      CallInst* callI = CallInst::Create(func->getFunctionType(), func, params, "", storeI);
      //ReplaceInstWithInst(storeI->getParent()->getInstList(), BBIt, callI);
    }

    void instrStore(Instruction* inst) {
      StoreInst* storeI = dyn_cast<StoreInst>(inst);
      if (storeI->isAtomic() == false)
          instrNonAtomicStore(storeI);
      else 
          instrAtomicStore(storeI);
    }

    void instrFence(Instruction* inst) {
        FenceInst* fenceI = dyn_cast<FenceInst>(inst);
        std::string order = toIRString(fenceI->getOrdering());
        errs() << "Identify a fence!: " << order << "\n";
        Value* o = ConstantInt::get( Type::getInt32Ty(fenceI->getContext()), orderToInt[order]);

        Function* func = myFunctions["preFence"];
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

        std::vector<Value*> params;
        Value* v1 = cmpXchgI->getPointerOperand();
        Value* v2 = cmpXchgI->getCompareOperand();
        Value* v3 = cmpXchgI->getNewValOperand();

        //v1->dump(), v2->dump(), v3->dump();

        if (v1->getType() != Type::getInt8PtrTy(cmpXchgI->getContext())) {
          BitCastInst* castInst = new BitCastInst(v1, Type::getInt8PtrTy(cmpXchgI->getContext()), "myCast", cmpXchgI);
          v1 = castInst;
        }

        if (v3->getType() == Type::getInt32Ty(cmpXchgI->getContext())) {
            Function* func = myFunctions["preCmpXchg_int"];
            params.push_back(v1);
            params.push_back(v2);
            params.push_back(v3);
            params.push_back(o1);
            params.push_back(o2);
            CallInst::Create(func->getFunctionType(), func, params, "", cmpXchgI);
        } else {
            v3->getType()->dump();
            errs() << "Not handle this type of cmpXchg inst!\n";
            return ;
        }
        
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
        
        std::vector<Value*> params;
        params.push_back(v1);
        params.push_back(v2);
        params.push_back(o);
        switch (op) {
            case AtomicRMWInst::BinOp::Xchg: {
                                             
                                             }
            case AtomicRMWInst::BinOp::Add: { 
                Function* func = myFunctions["preRMW_Add"];
                CallInst::Create(func->getFunctionType(), func, params, "", rmwI);
                break; 
            }
            case AtomicRMWInst::BinOp::Sub: {}
            case AtomicRMWInst::BinOp::And: {}
            case AtomicRMWInst::BinOp::Nand: {}
            case AtomicRMWInst::BinOp::Or: {}
            case AtomicRMWInst::BinOp::Xor: {}
            case AtomicRMWInst::BinOp::Max: {}
            case AtomicRMWInst::BinOp::Min: {}
            case AtomicRMWInst::BinOp::UMax: {}
            case AtomicRMWInst::BinOp::UMin: {}
            default: {
                inst->dump();
                errs() << "Not handle this type of cmpXchg inst!\n";
                return ;
            }
        }
    }

    void instrInst(Instruction* inst) {
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
        default: 
            break ;
      }
    }

    void splitBlocks(Function* F) {
        for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
            if (auto *op = dyn_cast<CallInst>(&*I)) {
                CallInst* callI = dyn_cast<CallInst>(&*I);
                if (callI->getCalledFunction() == NULL)
                    continue ;

                //std::cout << "ssss: " << (callI->getCalledFunction()->getName()).str() << "\n";
                if (callI->getCalledFunction()->getName().find("preAtomicLoad") == std::string::npos) 
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
                std::cout << "ssss\n";
                ThenTerm->dump(), ElseTerm->dump();
                BasicBlock* elseBB = ElseTerm->getParent();
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
                    postFunc = myFunctions["postAtomicLoad_char"];
                } else if (loadI->getType() == Type::getInt32Ty(loadI->getContext())) {
                    //ty = Type::getInt32Ty(loadI->getContext());
                    postFunc = myFunctions["postAtomicLoad_int"];
                } else if (loadI->getType() == Type::getInt64Ty(loadI->getContext())) {
                    //ty = Type::getInt64Ty(loadI->getContext());
                    postFunc = myFunctions["postAtomicLoad_double"];
                } else {
                    loadI->getType()->dump();
                    errs() << "Not handle this type for atomic load!\n";
                    return ;
                }
                CallInst::Create(postFunc->getFunctionType(), postFunc, params, "", ThenTerm); // add the post call

                LoadInst* newLoadI = new LoadInst(loadI->getPointerOperand(), "newLoad", loadI->isVolatile(), 
                        loadI->getAlignment(), loadI->getOrdering(), 
                        loadI->getSynchScope(), ElseTerm);

                ICmpInst* icmpI = new ICmpInst(ElseTerm, ICmpInst::ICMP_EQ, callI, newLoadI);

                BranchInst* branchI = dyn_cast<BranchInst>(ElseTerm);
                /*branchI->setCondition(icmpI);
                branchI->setSuccessor(0, branchI->getSuccessor(0));
                branchI->setSuccessor(1, branchI->getParent());*/

                BranchInst* newTerm = BranchInst::Create(branchI->getSuccessor(0), branchI->getParent(), icmpI, ElseTerm);
                ElseTerm->eraseFromParent();
                
                break ;  
            }
        }
    }
    
    void instrFunc(Function* func) {
      for (Function::iterator it = func->begin(); 
              it != func->end(); ++it) {
        //BasicBlock bb = *it;
        for (BBIt = it->begin();
                BBIt != it->end(); ++BBIt) {
            //std::cout << "ssss: \n";
            Instruction* inst = &*BBIt;
            //inst->dump();
            instrInst(inst);
            //std::cout << "sss2:\n";
        }
      }

      //splitBlocks(func);
    }

    bool runOnModule(Module &M) override {
      std::cout << "Instrument code: begin!\n";
      addSpecialFunctions(M);
      for (Module::iterator it = M.begin(); 
              it != M.end(); ++it) {
        Function* func = &*it;
        if (func->getName().str().find("check_") != std::string::npos) {
            std::cout << "skip fun: " << func->getName().str() << "\n";
            continue ;
        }
        instrFunc(func);
      }
      std::cout << "Instrument code: end!\n";
      return true;
    }
  
  public:
    static char ID; 
    codeInstr() : ModulePass(ID) {}
  };
}

char codeInstr::ID = 0;
static RegisterPass<codeInstr> 
Z("codeInstr", "Instrument code Pass");
