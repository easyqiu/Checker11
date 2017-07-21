; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { i32*, i32*, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { i32* }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.1" }
%"struct.std::__1::__atomic_base.1" = type { i32 }
%"class.checker::ModelChecker" = type { i32, %"class.std::__1::vector.2", %"class.checker::Executor"*, %"class.std::__1::vector.26", double }
%"class.std::__1::vector.2" = type { %"class.std::__1::__vector_base.3" }
%"class.std::__1::__vector_base.3" = type { %"class.checker::Schedule"**, %"class.checker::Schedule"**, %"class.std::__1::__compressed_pair.21" }
%"class.checker::Schedule" = type { %"class.std::__1::map", %"class.std::__1::map.12", %struct._opaque_pthread_mutex_t }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.4", %"class.std::__1::__compressed_pair.9" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair.4" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"struct.std::__1::__compressed_pair_elem.5" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.9" = type { %"struct.std::__1::__compressed_pair_elem.10" }
%"struct.std::__1::__compressed_pair_elem.10" = type { i64 }
%"class.std::__1::map.12" = type { %"class.std::__1::__tree.13" }
%"class.std::__1::__tree.13" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.14", %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::__compressed_pair.14" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"class.std::__1::__compressed_pair.18" = type { %"struct.std::__1::__compressed_pair_elem.10" }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::__compressed_pair.21" = type { %"struct.std::__1::__compressed_pair_elem.22" }
%"struct.std::__1::__compressed_pair_elem.22" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
%"class.std::__1::vector.26" = type { %"class.std::__1::__vector_base.27" }
%"class.std::__1::__vector_base.27" = type { %"class.std::__1::map"*, %"class.std::__1::map"*, %"class.std::__1::__compressed_pair.28" }
%"class.std::__1::__compressed_pair.28" = type { %"struct.std::__1::__compressed_pair_elem.29" }
%"struct.std::__1::__compressed_pair_elem.29" = type { %"class.std::__1::map"* }
%"class.std::__1::__vector_base_common" = type { i8 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::__1::__libcpp_refstring" = type { i8* }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@data = global %"class.std::__1::vector" zeroinitializer, align 8
@__dso_handle = external global i8
@flag = global %"struct.std::__1::atomic" zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"thread1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"thread2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"thread3\00", align 1
@__func__._Z8thread_3v = private unnamed_addr constant [9 x i8] c"thread_3\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"data.at(0) == 42\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@.str.6 = private unnamed_addr constant [68 x i8] c"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size\00", align 1
@_ZTISt12length_error = external constant i8*
@_ZTVSt12length_error = external unnamed_addr constant { [5 x i8*] }, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_example.cpp, i8* null }]

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev(%"class.std::__1::vector"* %this) unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %__begin_.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 0, !clap !2
  call void @checker_addUses_1(i64 2, i64 1)
  %0 = load i32*, i32** %__begin_.i.i, align 8, !tbaa !3, !clap !9
  call void @checker_addUses_1(i64 3, i64 2)
  %cmp.i.i = icmp eq i32* %0, null, !clap !10
  call void @checker_addUses_1(i64 4, i64 3)
  call void @checker_currentBB(i64 4)
  br i1 %cmp.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev.exit, label %if.then.i.i, !clap !11

if.then.i.i:                                      ; preds = %entry
  call void @checker_trackDynInfo(i64 4)
  call void @checker_addUses_1(i64 5, i64 2)
  %1 = ptrtoint i32* %0 to i64, !clap !12
  %__end_.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 1, !clap !13
  call void @checker_addUses_1(i64 7, i64 6)
  %2 = bitcast i32** %__end_.i.i.i.i to i64*, !clap !14
  call void @checker_addUses_2(i64 8, i64 5, i64 7)
  store i64 %1, i64* %2, align 8, !tbaa !15, !clap !16
  call void @checker_addUses_1(i64 9, i64 2)
  %.cast.i.i = bitcast i32* %0 to i8*, !clap !17
  call void @checker_addUses_1(i64 10, i64 9)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %.cast.i.i) #12, !clap !18
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 11)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev.exit, !clap !19

_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev.exit:    ; preds = %entry, %if.then.i.i
  call void @checker_trackDynInfo(i64 4)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 12)
  ret void, !clap !20
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z8thread_1v() #2 {
entry:
  %ref.tmp = alloca i32, align 4, !clap !21
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !clap !22
  call void @checker_addUses_1(i64 15, i64 13)
  %0 = bitcast i32* %ref.tmp to i8*, !clap !23
  call void @llvm.lifetime.start(i64 4, i8* nonnull %0) #1, !clap !24
  call void @checker_addUses_1(i64 17, i64 13)
  store i32 42, i32* %ref.tmp, align 4, !tbaa !25, !clap !27
  %1 = load i32*, i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 1), align 8, !tbaa !15, !clap !28
  %2 = load i32*, i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 2, i32 0, i32 0), align 8, !tbaa !29, !clap !30
  call void @checker_addUses_2(i64 20, i64 18, i64 19)
  %cmp.i = icmp ult i32* %1, %2, !clap !31
  call void @checker_addUses_1(i64 21, i64 20)
  call void @checker_currentBB(i64 21)
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !clap !32

if.then.i:                                        ; preds = %entry
  call void @checker_trackDynInfo(i64 21)
  call void @checker_addUses_1(i64 22, i64 18)
  store i32 42, i32* %1, align 4, !tbaa !25, !clap !33
  call void @checker_addUses_1(i64 23, i64 18)
  %incdec.ptr.i = getelementptr inbounds i32, i32* %1, i64 1, !clap !34
  call void @checker_addUses_1(i64 24, i64 23)
  store i32* %incdec.ptr.i, i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 1), align 8, !tbaa !15, !clap !35
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 25)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi.exit, !clap !36

if.else.i:                                        ; preds = %entry
  call void @checker_trackDynInfo(i64 21)
  call void @checker_addUses_1(i64 26, i64 13)
  call void @checker_beginFunc()
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_(%"class.std::__1::vector"* nonnull @data, i32* nonnull dereferenceable(4) %ref.tmp), !clap !37
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 27)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi.exit, !clap !38

_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi.exit: ; preds = %if.then.i, %if.else.i
  call void @checker_trackDynInfo(i64 21)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %0) #1, !clap !39
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !40
  call void @checker_addUses_1(i64 30, i64 29)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 30, i32 1, i32 5), !clap !41
  call void @checker_thread_end(), !clap !42
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 33)
  ret void, !clap !43
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

declare void @checker_thread_end() local_unnamed_addr #3

; Function Attrs: ssp uwtable
define void @_Z8thread_2v() #2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !clap !44
  call void @checker_currentBB(i64 35)
  br label %while.cond, !clap !45

while.cond:                                       ; preds = %while.body, %entry
  call void @checker_trackDynInfo(i64 42)
  call void @checker_trackDynInfo(i64 35)
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !46
  call void @checker_addUses_1(i64 37, i64 36)
  %0 = call i1 @checker_preCmpXchg_32(i8* %myCast, i32 1, i32 2, i32 6, i32 2, i64 37), !clap !47
  %myInsert = insertvalue { i32, i1 } undef, i32 1, 0, !clap !48
  call void @checker_addUses_2(i64 39, i64 38, i64 37)
  %myInsert1 = insertvalue { i32, i1 } %myInsert, i1 %0, 1, !clap !49
  call void @checker_addUses_1(i64 41, i64 39)
  %1 = extractvalue { i32, i1 } %myInsert1, 1, !clap !50
  call void @checker_addUses_1(i64 42, i64 41)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 42)
  br i1 %1, label %while.end, label %while.body, !clap !51

while.body:                                       ; preds = %while.cond
  call void @checker_trackDynInfo(i64 42)
  call void @checker_pre_yield(), !clap !52
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 44)
  %call.i1.i = invoke i32 @sched_yield()
          to label %while.cond unwind label %terminate.lpad.i, !clap !53

terminate.lpad.i:                                 ; preds = %while.body
  %2 = landingpad { i8*, i32 }
          catch i8* null, !clap !54
  call void @checker_addUses_1(i64 46, i64 45)
  %3 = extractvalue { i8*, i32 } %2, 0, !clap !55
  call void @checker_addUses_1(i64 47, i64 46)
  tail call void @__clang_call_terminate(i8* %3) #13, !clap !56
  unreachable, !clap !57

while.end:                                        ; preds = %while.cond
  call void @checker_trackDynInfo(i64 42)
  tail call void @checker_thread_end(), !clap !58
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 50)
  ret void, !clap !59
}

; Function Attrs: ssp uwtable
define void @_Z8thread_3v() #2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !clap !60
  call void @checker_currentBB(i64 52)
  br label %while.cond, !clap !61

while.cond:                                       ; preds = %while.body, %entry
  call void @checker_trackDynInfo(i64 57)
  call void @checker_trackDynInfo(i64 52)
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !62
  call void @checker_addUses_1(i64 54, i64 53)
  %0 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 54, i32 4), !clap !63
  call void @checker_addUses_1(i64 56, i64 54)
  %cmp = icmp slt i32 %0, 2, !clap !64
  call void @checker_addUses_1(i64 57, i64 56)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 57)
  br i1 %cmp, label %while.body, label %while.end, !clap !65

while.body:                                       ; preds = %while.cond
  call void @checker_trackDynInfo(i64 57)
  call void @checker_pre_yield(), !clap !66
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 59)
  %call.i1.i = invoke i32 @sched_yield()
          to label %while.cond unwind label %terminate.lpad.i, !clap !67

terminate.lpad.i:                                 ; preds = %while.body
  %1 = landingpad { i8*, i32 }
          catch i8* null, !clap !68
  call void @checker_addUses_1(i64 61, i64 60)
  %2 = extractvalue { i8*, i32 } %1, 0, !clap !69
  call void @checker_addUses_1(i64 62, i64 61)
  tail call void @__clang_call_terminate(i8* %2) #13, !clap !70
  unreachable, !clap !71

while.end:                                        ; preds = %while.cond
  call void @checker_trackDynInfo(i64 57)
  %3 = load i64, i64* bitcast (i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 1) to i64*), align 8, !tbaa !15, !clap !72
  %4 = load i64, i64* bitcast (%"class.std::__1::vector"* @data to i64*), align 8, !tbaa !3, !clap !73
  call void @checker_addUses_2(i64 66, i64 64, i64 65)
  %cmp.i = icmp eq i64 %3, %4, !clap !74
  call void @checker_addUses_1(i64 67, i64 66)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 67)
  br i1 %cmp.i, label %if.then.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit, !clap !75

if.then.i:                                        ; preds = %while.end
  call void @checker_trackDynInfo(i64 67)
  call void @checker_beginFunc()
  tail call void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv(%"class.std::__1::__vector_base_common"* bitcast (%"class.std::__1::vector"* @data to %"class.std::__1::__vector_base_common"*)) #14, !clap !76
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 69)
  unreachable, !clap !77

_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit:   ; preds = %while.end
  call void @checker_trackDynInfo(i64 67)
  call void @checker_addUses_1(i64 70, i64 65)
  %5 = inttoptr i64 %4 to i32*, !clap !78
  call void @checker_addUses_1(i64 71, i64 70)
  %6 = load i32, i32* %5, align 4, !tbaa !25, !clap !79
  call void @checker_addUses_1(i64 72, i64 71)
  %lnot = icmp eq i32 %6, 42, !clap !80
  call void @checker_addUses_1(i64 73, i64 72)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 73)
  br i1 %lnot, label %cond.end, label %cond.true, !prof !81, !clap !82

cond.true:                                        ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit
  call void @checker_trackDynInfo(i64 73)
  call void @checker_beginFunc()
  tail call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._Z8thread_3v, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #14, !clap !83
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 75)
  unreachable, !clap !84

cond.end:                                         ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit
  call void @checker_trackDynInfo(i64 73)
  tail call void @checker_thread_end(), !clap !85
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 77)
  ret void, !clap !86
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8, !clap !87
  %b = alloca %"class.std::__1::thread", align 8, !clap !88
  %c = alloca %"class.std::__1::thread", align 8, !clap !89
  tail call void @checker_generateExecutor(), !clap !90
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !clap !91
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !92
  call void @checker_addUses_1(i64 84, i64 83)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 84, i32 0, i32 7), !clap !93
  call void @checker_addUses_1(i64 86, i64 78)
  %0 = bitcast %"class.std::__1::thread"* %a to i8*, !clap !94
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #1, !clap !95
  call void @checker_addUses_1(i64 88, i64 78)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z8thread_1v), !clap !96
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 89, i64 79)
  %1 = bitcast %"class.std::__1::thread"* %b to i8*, !clap !97
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #1, !clap !98
  call void @checker_currentBB(i64 91)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z8thread_2v)
          to label %invoke.cont unwind label %lpad, !clap !99

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 92, i64 80)
  %2 = bitcast %"class.std::__1::thread"* %c to i8*, !clap !100
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #1, !clap !101
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %c, void ()* nonnull @_Z8thread_3v)
          to label %invoke.cont2 unwind label %lpad1, !clap !102

invoke.cont2:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 95, i64 78)
  %__t_.i45 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !clap !103
  call void @checker_addUses_1(i64 96, i64 95)
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i45, align 8, !tbaa !29, !clap !104
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont6 unwind label %lpad5, !clap !105

invoke.cont6:                                     ; preds = %invoke.cont2
  call void @checker_addUses_1(i64 98, i64 79)
  %__t_.i44 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !clap !106
  call void @checker_addUses_1(i64 99, i64 98)
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i44, align 8, !tbaa !29, !clap !107
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %4)
          to label %invoke.cont11 unwind label %lpad5, !clap !108

invoke.cont11:                                    ; preds = %invoke.cont6
  call void @checker_addUses_1(i64 101, i64 80)
  %__t_.i43 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %c, i64 0, i32 0, !clap !109
  call void @checker_addUses_1(i64 102, i64 101)
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i43, align 8, !tbaa !29, !clap !110
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %5)
          to label %invoke.cont16 unwind label %lpad5, !clap !111

invoke.cont16:                                    ; preds = %invoke.cont11
  call void @checker_addUses_1(i64 104, i64 95)
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i45, align 8, !tbaa !29, !clap !112
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %6)
          to label %invoke.cont21 unwind label %lpad5, !clap !113

invoke.cont21:                                    ; preds = %invoke.cont16
  call void @checker_addUses_1(i64 106, i64 98)
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i44, align 8, !tbaa !29, !clap !114
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %7)
          to label %invoke.cont26 unwind label %lpad5, !clap !115

invoke.cont26:                                    ; preds = %invoke.cont21
  call void @checker_addUses_1(i64 108, i64 101)
  %8 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i43, align 8, !tbaa !29, !clap !116
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %8)
          to label %invoke.cont31 unwind label %lpad5, !clap !117

invoke.cont31:                                    ; preds = %invoke.cont26
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont32 unwind label %lpad5, !clap !118

invoke.cont32:                                    ; preds = %invoke.cont31
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont33 unwind label %lpad5, !clap !119

invoke.cont33:                                    ; preds = %invoke.cont32
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %c)
          to label %invoke.cont34 unwind label %lpad5, !clap !120

invoke.cont34:                                    ; preds = %invoke.cont33
  invoke void @checker_thread_end()
          to label %invoke.cont35 unwind label %lpad5, !clap !121

invoke.cont35:                                    ; preds = %invoke.cont34
  invoke void @checker_solver()
          to label %invoke.cont36 unwind label %lpad5, !clap !122

invoke.cont36:                                    ; preds = %invoke.cont35
  call void @checker_addUses_1(i64 115, i64 80)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %c) #1, !clap !123
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #1, !clap !124
  call void @checker_addUses_1(i64 117, i64 79)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #1, !clap !125
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #1, !clap !126
  call void @checker_addUses_1(i64 119, i64 78)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #1, !clap !127
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #1, !clap !128
  ret i32 0, !clap !129

lpad:                                             ; preds = %entry
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !130
  call void @checker_addUses_1(i64 123, i64 122)
  %10 = extractvalue { i8*, i32 } %9, 0, !clap !131
  call void @checker_addUses_1(i64 124, i64 122)
  %11 = extractvalue { i8*, i32 } %9, 1, !clap !132
  br label %ehcleanup38, !clap !133

lpad1:                                            ; preds = %invoke.cont
  %12 = landingpad { i8*, i32 }
          cleanup, !clap !134
  call void @checker_addUses_1(i64 127, i64 126)
  %13 = extractvalue { i8*, i32 } %12, 0, !clap !135
  call void @checker_addUses_1(i64 128, i64 126)
  %14 = extractvalue { i8*, i32 } %12, 1, !clap !136
  br label %ehcleanup, !clap !137

lpad5:                                            ; preds = %invoke.cont35, %invoke.cont34, %invoke.cont33, %invoke.cont32, %invoke.cont31, %invoke.cont26, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont6, %invoke.cont2
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !138
  call void @checker_addUses_1(i64 131, i64 130)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !139
  call void @checker_addUses_1(i64 132, i64 130)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !140
  call void @checker_addUses_1(i64 133, i64 80)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %c) #1, !clap !141
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #1, !clap !142
  br label %ehcleanup, !clap !143

ehcleanup:                                        ; preds = %lpad5, %lpad1
  %ehselector.slot.0 = phi i32 [ %17, %lpad5 ], [ %14, %lpad1 ], !clap !144
  %exn.slot.0 = phi i8* [ %16, %lpad5 ], [ %13, %lpad1 ], !clap !145
  call void @checker_handlePHI_2(i64 137, i64 131, i64 135, i64 127, i64 129)
  call void @checker_handlePHI_2(i64 136, i64 132, i64 135, i64 128, i64 129)
  call void @checker_addUses_1(i64 138, i64 79)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #1, !clap !146
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #1, !clap !147
  br label %ehcleanup38, !clap !148

ehcleanup38:                                      ; preds = %ehcleanup, %lpad
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %11, %lpad ], !clap !149
  %exn.slot.1 = phi i8* [ %exn.slot.0, %ehcleanup ], [ %10, %lpad ], !clap !150
  call void @checker_handlePHI_2(i64 142, i64 137, i64 140, i64 123, i64 125)
  call void @checker_handlePHI_2(i64 141, i64 136, i64 140, i64 124, i64 125)
  call void @checker_addUses_1(i64 143, i64 78)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #1, !clap !151
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #1, !clap !152
  call void @checker_addUses_1(i64 145, i64 142)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0, !clap !153
  call void @checker_addUses_2(i64 146, i64 145, i64 141)
  %lpad.val40 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1, !clap !154
  call void @checker_addUses_1(i64 147, i64 146)
  resume { i8*, i32 } %lpad.val40, !clap !155
}

declare void @checker_generateExecutor() local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #3

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #3

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #3

declare void @checker_solver() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #6

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector.2", align 8, !clap !156
  %call = tail call i8* @_Znwm(i64 72) #15, !clap !157
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*, !clap !158
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !159

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !29, !clap !160
  %call1 = tail call i32 @user_main(), !clap !161
  %1 = bitcast %"class.std::__1::vector.2"* %ref.tmp to i8*, !clap !162
  %__end_.i = getelementptr inbounds %"class.std::__1::vector.2", %"class.std::__1::vector.2"* %ref.tmp, i64 0, i32 0, i32 1, !clap !163
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !164
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !165
  %4 = bitcast %"class.std::__1::vector.2"* %ref.tmp to i8**, !clap !166
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector.2", %"class.std::__1::vector.2"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !167
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #1, !clap !168
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !29, !clap !169
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, !clap !170
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !171, !clap !174
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1, !clap !175
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*, !clap !176
  %7 = load i64, i64* %6, align 8, !tbaa !177, !noalias !171, !clap !180
  %8 = bitcast %"class.std::__1::vector.2"* %schList.i15 to i64*, !clap !181
  %9 = load i64, i64* %8, align 8, !tbaa !182, !noalias !171, !clap !183
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9, !clap !184
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3, !clap !185
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0, !clap !186
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !187

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !188

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !189

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #1, !clap !190
  br label %while.end, !clap !191

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ], !clap !192
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ], !clap !193
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ], !clap !194
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951, !clap !195
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !196

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector.2"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !197
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #14
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !198

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !199

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #15, !clap !200
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !201
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !177, !alias.scope !171, !clap !202
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !182, !alias.scope !171, !clap !203
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21, !clap !204
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !171, !clap !205
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0, !clap !206
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !207
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !208

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3, !clap !209
  %14 = inttoptr i64 %10 to i8*, !clap !210
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #1, !clap !211
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i, !clap !212
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !29, !alias.scope !171, !clap !213
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !214
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !215

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !216
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector.2", %"class.std::__1::vector.2"* %ref.tmp, i64 0, i32 0, i32 0, !clap !217
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !182, !alias.scope !171, !clap !218
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !219
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !220

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !221
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !222
  store i64 %17, i64* %2, align 8, !tbaa !177, !alias.scope !171, !clap !223
  call void @_ZdlPv(i8* %16) #12, !clap !224
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !225

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !226

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !227
  %tobool10 = icmp eq i64 %.ph, %13, !clap !228
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #12, !clap !229
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #1, !clap !230
  br i1 %tobool10, label %while.end.loopexit, label %while.body, !clap !231

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !clap !232
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #1, !clap !233
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !29, !clap !234
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, !clap !235
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !171, !clap !236
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1, !clap !237
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !238
  %20 = load i64, i64* %19, align 8, !tbaa !177, !noalias !171, !clap !239
  %21 = bitcast %"class.std::__1::vector.2"* %schList.i to i64*, !clap !240
  %22 = load i64, i64* %21, align 8, !tbaa !182, !noalias !171, !clap !241
  %sub.ptr.sub.i.i.i.i = sub i64 %20, %22, !clap !242
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !243
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !244
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !245

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup, !clap !246
  tail call void @_ZdlPv(i8* nonnull %call) #12, !clap !247
  resume { i8*, i32 } %23, !clap !248

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !249

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !250
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #8

declare void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"*) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #10 {
  call void @checker_beginFunc()
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #1, !clap !251
  call void @checker_endFunc()
  call void @checker_beginFunc()
  tail call void @_ZSt9terminatev() #13, !clap !252
  call void @checker_endFunc()
  call void @checker_currentBB(i64 238)
  unreachable, !clap !253
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare i32 @sched_yield() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #5

declare i8* @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(%"class.std::length_error"*) unnamed_addr #6

declare void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"*, i8*) unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_(%"class.std::__1::vector"* %this, i32* dereferenceable(4) %__x) local_unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 1, !clap !254
  call void @checker_addUses_1(i64 240, i64 239)
  %0 = bitcast i32** %__end_.i to i64*, !clap !255
  call void @checker_addUses_1(i64 241, i64 240)
  %1 = load i64, i64* %0, align 8, !tbaa !15, !clap !256
  %2 = bitcast %"class.std::__1::vector"* %this to i64*, !clap !257
  call void @checker_addUses_1(i64 243, i64 242)
  %3 = load i64, i64* %2, align 8, !tbaa !3, !clap !258
  call void @checker_addUses_2(i64 244, i64 241, i64 243)
  %sub.ptr.sub.i = sub i64 %1, %3, !clap !259
  call void @checker_addUses_1(i64 245, i64 244)
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2, !clap !260
  call void @checker_addUses_1(i64 246, i64 245)
  %add = add nsw i64 %sub.ptr.div.i, 1, !clap !261
  call void @checker_addUses_1(i64 247, i64 246)
  %cmp.i = icmp ugt i64 %add, 4611686018427387903, !clap !262
  call void @checker_addUses_1(i64 248, i64 247)
  call void @checker_currentBB(i64 248)
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !clap !263

if.then.i:                                        ; preds = %entry
  call void @checker_trackDynInfo(i64 248)
  %4 = bitcast %"class.std::__1::vector"* %this to %"class.std::__1::__vector_base_common"*, !clap !264
  call void @checker_addUses_1(i64 250, i64 249)
  call void @checker_beginFunc()
  tail call void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* %4) #14, !clap !265
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 251)
  unreachable, !clap !266

if.end.i:                                         ; preds = %entry
  call void @checker_trackDynInfo(i64 248)
  %__value_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !267
  call void @checker_addUses_1(i64 253, i64 252)
  %5 = bitcast i32** %__value_.i.i.i.i.i.i to i64*, !clap !268
  call void @checker_addUses_1(i64 254, i64 253)
  %6 = load i64, i64* %5, align 8, !tbaa !29, !clap !269
  call void @checker_addUses_2(i64 255, i64 254, i64 243)
  %sub.ptr.sub.i.i.i = sub i64 %6, %3, !clap !270
  call void @checker_addUses_1(i64 256, i64 255)
  %sub.ptr.div.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i, 2, !clap !271
  call void @checker_addUses_1(i64 257, i64 256)
  %cmp3.i = icmp ult i64 %sub.ptr.div.i.i.i, 2305843009213693951, !clap !272
  call void @checker_addUses_1(i64 258, i64 257)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 258)
  br i1 %cmp3.i, label %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit, label %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i, !clap !273

_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit: ; preds = %if.end.i
  call void @checker_trackDynInfo(i64 258)
  call void @checker_addUses_1(i64 259, i64 255)
  %mul.i = ashr exact i64 %sub.ptr.sub.i.i.i, 1, !clap !274
  call void @checker_addUses_2(i64 260, i64 259, i64 246)
  %cmp.i.i.i.i = icmp ult i64 %mul.i, %add, !clap !275
  call void @checker_addUses_3(i64 261, i64 260, i64 246, i64 259)
  %.sroa.speculated.i = select i1 %cmp.i.i.i.i, i64 %add, i64 %mul.i, !clap !276
  call void @checker_addUses_1(i64 262, i64 261)
  %cmp.i.i30 = icmp eq i64 %.sroa.speculated.i, 0, !clap !277
  call void @checker_addUses_1(i64 263, i64 262)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 263)
  br i1 %cmp.i.i30, label %invoke.cont, label %cond.true.i.i, !clap !278

cond.true.i.i:                                    ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit
  call void @checker_trackDynInfo(i64 263)
  call void @checker_addUses_1(i64 264, i64 261)
  %cmp.i.i.i.i31 = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903, !clap !279
  call void @checker_addUses_1(i64 265, i64 264)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 265)
  br i1 %cmp.i.i.i.i31, label %if.then.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i, !clap !280

if.then.i.i.i.i:                                  ; preds = %cond.true.i.i
  call void @checker_trackDynInfo(i64 265)
  call void @checker_beginFunc()
  %exception.i.i.i.i.i = tail call i8* @__cxa_allocate_exception(i64 16) #1, !clap !281
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 267, i64 266)
  %7 = bitcast i8* %exception.i.i.i.i.i to %"class.std::logic_error"*, !clap !282
  call void @checker_addUses_1(i64 268, i64 267)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 268)
  invoke void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* %7, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
          to label %invoke.cont.i.i.i.i.i unwind label %lpad.i.i.i.i.i, !clap !283

invoke.cont.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i
  call void @checker_trackDynInfo(i64 265)
  call void @checker_addUses_1(i64 269, i64 266)
  %8 = bitcast i8* %exception.i.i.i.i.i to i32 (...)***, !clap !284
  call void @checker_addUses_1(i64 270, i64 269)
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %8, align 8, !tbaa !285, !clap !287
  call void @checker_addUses_1(i64 271, i64 266)
  tail call void @__cxa_throw(i8* %exception.i.i.i.i.i, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #14, !clap !288
  unreachable, !clap !289

lpad.i.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !290
  call void @checker_addUses_1(i64 274, i64 266)
  tail call void @__cxa_free_exception(i8* %exception.i.i.i.i.i) #1, !clap !291
  call void @checker_addUses_1(i64 275, i64 273)
  resume { i8*, i32 } %9, !clap !292

_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i: ; preds = %if.end.i, %cond.true.i.i
  %retval.0.i6167 = phi i64 [ %.sroa.speculated.i, %cond.true.i.i ], [ 4611686018427387903, %if.end.i ], !clap !293
  call void @checker_trackDynInfo(i64 258)
  call void @checker_handlePHI_2(i64 276, i64 261, i64 265, i64 0, i64 258)
  call void @checker_addUses_1(i64 277, i64 276)
  %mul.i.i.i.i = shl i64 %retval.0.i6167, 2, !clap !294
  call void @checker_addUses_1(i64 278, i64 277)
  call void @checker_beginFunc()
  %call.i.i.i.i.i = tail call i8* @_Znwm(i64 %mul.i.i.i.i) #15, !clap !295
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 279, i64 278)
  %10 = bitcast i8* %call.i.i.i.i.i to i32*, !clap !296
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 280)
  br label %invoke.cont, !clap !297

invoke.cont:                                      ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit
  %retval.0.i62 = phi i64 [ %retval.0.i6167, %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i ], [ 0, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit ], !clap !298
  %cond.i.i = phi i32* [ %10, %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i ], [ null, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit ], !clap !299
  call void @checker_trackDynInfo(i64 258)
  call void @checker_handlePHI_2(i64 282, i64 279, i64 280, i64 0, i64 263)
  call void @checker_handlePHI_2(i64 281, i64 276, i64 280, i64 0, i64 263)
  call void @checker_addUses_2(i64 283, i64 282, i64 245)
  %add.ptr.i.i33 = getelementptr inbounds i32, i32* %cond.i.i, i64 %sub.ptr.div.i, !clap !300
  call void @checker_addUses_2(i64 284, i64 282, i64 281)
  %add.ptr5.i.i = getelementptr inbounds i32, i32* %cond.i.i, i64 %retval.0.i62, !clap !301
  call void @checker_addUses_1(i64 285, i64 284)
  %11 = ptrtoint i32* %add.ptr5.i.i to i64, !clap !302
  %12 = load i32, i32* %__x, align 4, !tbaa !25, !clap !303
  call void @checker_addUses_2(i64 287, i64 286, i64 283)
  store i32 %12, i32* %add.ptr.i.i33, align 4, !tbaa !25, !clap !304
  call void @checker_addUses_1(i64 288, i64 283)
  %incdec.ptr = getelementptr inbounds i32, i32* %add.ptr.i.i33, i64 1, !clap !305
  call void @checker_addUses_1(i64 289, i64 288)
  %13 = ptrtoint i32* %incdec.ptr to i64, !clap !306
  call void @checker_addUses_1(i64 290, i64 245)
  %idx.neg.i.i = sub nsw i64 0, %sub.ptr.div.i, !clap !307
  call void @checker_addUses_2(i64 291, i64 283, i64 290)
  %add.ptr.i.i = getelementptr inbounds i32, i32* %add.ptr.i.i33, i64 %idx.neg.i.i, !clap !308
  call void @checker_addUses_1(i64 292, i64 291)
  %14 = ptrtoint i32* %add.ptr.i.i to i64, !clap !309
  call void @checker_addUses_1(i64 293, i64 244)
  %cmp.i.i = icmp sgt i64 %sub.ptr.sub.i, 0, !clap !310
  call void @checker_addUses_1(i64 294, i64 293)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 294)
  br i1 %cmp.i.i, label %if.then.i.i29, label %invoke.cont8, !clap !311

if.then.i.i29:                                    ; preds = %invoke.cont
  call void @checker_trackDynInfo(i64 294)
  call void @checker_addUses_1(i64 295, i64 291)
  %15 = bitcast i32* %add.ptr.i.i to i8*, !clap !312
  call void @checker_addUses_1(i64 296, i64 243)
  %16 = inttoptr i64 %3 to i8*, !clap !313
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %sub.ptr.sub.i, i32 4, i1 false) #1, !clap !314
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 298)
  br label %invoke.cont8, !clap !315

invoke.cont8:                                     ; preds = %if.then.i.i29, %invoke.cont
  call void @checker_trackDynInfo(i64 294)
  call void @checker_addUses_2(i64 299, i64 292, i64 242)
  store i64 %14, i64* %2, align 8, !tbaa !29, !clap !316
  call void @checker_addUses_2(i64 300, i64 289, i64 240)
  store i64 %13, i64* %0, align 8, !tbaa !29, !clap !317
  call void @checker_addUses_2(i64 301, i64 285, i64 253)
  store i64 %11, i64* %5, align 8, !tbaa !29, !clap !318
  call void @checker_addUses_1(i64 302, i64 243)
  %tobool.i.i21 = icmp eq i64 %3, 0, !clap !319
  call void @checker_addUses_1(i64 303, i64 302)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 303)
  br i1 %tobool.i.i21, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev.exit24, label %if.then.i.i23, !clap !320

if.then.i.i23:                                    ; preds = %invoke.cont8
  call void @checker_trackDynInfo(i64 303)
  call void @checker_addUses_1(i64 304, i64 243)
  %17 = inttoptr i64 %3 to i8*, !clap !321
  call void @checker_addUses_1(i64 305, i64 304)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %17) #12, !clap !322
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 306)
  br label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev.exit24, !clap !323

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev.exit24: ; preds = %invoke.cont8, %if.then.i.i23
  call void @checker_trackDynInfo(i64 303)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 307)
  ret void, !clap !324
}

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #15, !clap !325
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 309, i64 308)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !326
  call void @checker_currentBB(i64 310)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !327

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #15
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !328

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 312, i64 308)
  %1 = ptrtoint i8* %call to i64, !clap !329
  %2 = ptrtoint void ()* %__f to i64, !clap !330
  call void @checker_addUses_1(i64 314, i64 311)
  %3 = bitcast i8* %call4 to i64*, !clap !331
  call void @checker_addUses_2(i64 315, i64 312, i64 314)
  store i64 %1, i64* %3, align 8, !tbaa !332, !clap !334
  call void @checker_addUses_1(i64 316, i64 311)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !335
  call void @checker_addUses_1(i64 317, i64 316)
  %5 = bitcast i8* %4 to i64*, !clap !336
  call void @checker_addUses_2(i64 318, i64 313, i64 317)
  store i64 %2, i64* %5, align 8, !tbaa !337, !clap !339
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !340
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !341

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 321, i64 320)
  %cmp = icmp eq i32 %call.i31, 0, !clap !342
  call void @checker_addUses_1(i64 322, i64 321)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !343

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 322)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 323)
  ret void, !clap !344

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !345
  call void @checker_addUses_1(i64 325, i64 324)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !346
  call void @checker_addUses_1(i64 326, i64 324)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !347
  call void @checker_addUses_1(i64 327, i64 308)
  tail call void @_ZdlPv(i8* nonnull %call) #12, !clap !348
  br label %eh.resume, !clap !349

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !350
  br label %delete.notnull.i.i.i.i, !clap !351

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 322)
  call void @checker_addUses_1(i64 331, i64 320)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 331)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #14
          to label %invoke.cont16 unwind label %lpad15, !clap !352

invoke.cont16:                                    ; preds = %if.else
  call void @checker_trackDynInfo(i64 322)
  unreachable, !clap !353

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !354
  br label %delete.notnull.i.i.i.i, !clap !355

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !356
  call void @checker_handlePHI_2(i64 335, i64 333, i64 334, i64 329, i64 330)
  call void @checker_addUses_1(i64 336, i64 335)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !357
  call void @checker_addUses_1(i64 337, i64 335)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !358
  call void @checker_addUses_1(i64 338, i64 311)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !359
  call void @checker_addUses_1(i64 339, i64 338)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !29, !clap !360
  call void @checker_addUses_1(i64 340, i64 338)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !29, !clap !361
  call void @checker_addUses_1(i64 341, i64 339)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !362
  call void @checker_addUses_1(i64 342, i64 341)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !363

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 342)
  call void @checker_addUses_1(i64 343, i64 339)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #1, !clap !364
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 344, i64 339)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !365
  call void @checker_addUses_1(i64 345, i64 344)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #12, !clap !366
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 346)
  br label %ehcleanup18.thread, !clap !367

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 342)
  call void @checker_addUses_1(i64 347, i64 311)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #12, !clap !368
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 348)
  br label %eh.resume, !clap !369

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !370
  call void @checker_addUses_1(i64 350, i64 349)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !371
  call void @checker_addUses_1(i64 351, i64 349)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !372
  call void @checker_addUses_1(i64 352, i64 309)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #1, !clap !373
  call void @checker_addUses_1(i64 353, i64 308)
  tail call void @_ZdlPv(i8* nonnull %call) #12, !clap !374
  br label %eh.resume, !clap !375

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !376
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !377
  call void @checker_handlePHI_3(i64 356, i64 325, i64 328, i64 350, i64 354, i64 336, i64 348)
  call void @checker_handlePHI_3(i64 355, i64 326, i64 328, i64 351, i64 354, i64 337, i64 348)
  call void @checker_addUses_1(i64 357, i64 356)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !378
  call void @checker_addUses_2(i64 358, i64 357, i64 355)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !379
  call void @checker_addUses_1(i64 359, i64 358)
  resume { i8*, i32 } %lpad.val20, !clap !380
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 360)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !381

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !382
  %0 = bitcast i8* %__vp to i8**, !clap !383
  call void @checker_addUses_1(i64 363, i64 362)
  %1 = load i8*, i8** %0, align 8, !tbaa !29, !clap !384
  call void @checker_addUses_1(i64 364, i64 361)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !29, !clap !385
  call void @checker_addUses_1(i64 365, i64 360)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !386
  call void @checker_addUses_1(i64 366, i64 365)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !387, !clap !390
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !391

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !392
  call void @checker_addUses_1(i64 369, i64 368)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !393
  call void @checker_addUses_1(i64 370, i64 369)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !29, !clap !394
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !395

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 372, i64 361)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !29, !clap !396
  call void @checker_addUses_1(i64 373, i64 361)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !29, !clap !397
  call void @checker_addUses_1(i64 374, i64 372)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !398
  call void @checker_addUses_1(i64 375, i64 374)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !399

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 375)
  call void @checker_addUses_1(i64 376, i64 372)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #1, !clap !400
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 377, i64 372)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !401
  call void @checker_addUses_1(i64 378, i64 377)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #12, !clap !402
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 379)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !403

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 375)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !clap !404
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 381)
  ret i8* null, !clap !405

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !406
  br label %delete.notnull.i.i.i.i, !clap !407

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !408
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !409
  call void @checker_addUses_1(i64 386, i64 385)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !410

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 386)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !411
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 388)
  br label %delete.notnull.i.i.i.i, !clap !412

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !413
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !414
  call void @checker_handlePHI_2(i64 390, i64 384, i64 388, i64 382, i64 383)
  call void @checker_handlePHI_2(i64 389, i64 387, i64 388, i64 361, i64 383)
  call void @checker_addUses_1(i64 391, i64 389)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !29, !clap !415
  call void @checker_addUses_1(i64 392, i64 389)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !29, !clap !416
  call void @checker_addUses_1(i64 393, i64 391)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !417
  call void @checker_addUses_1(i64 394, i64 393)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !418

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 394)
  call void @checker_addUses_1(i64 395, i64 391)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #1, !clap !419
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 396, i64 391)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !420
  call void @checker_addUses_1(i64 397, i64 396)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #12, !clap !421
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 398)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !422

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 394)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !clap !423
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 400)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !424

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !425
  call void @checker_handlePHI_2(i64 401, i64 384, i64 386, i64 390, i64 400)
  call void @checker_addUses_1(i64 402, i64 401)
  resume { i8*, i32 } %lpad.phi30, !clap !426
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #5

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #3

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #3

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define internal void @_GLOBAL__sub_I_example.cpp() #11 section "__TEXT,__StaticInit,regular,pure_instructions" personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%"class.std::__1::vector"* @data to i8*), i8 0, i64 24, i32 8, i1 false) #1, !clap !427
  call void @checker_beginFunc()
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__1::vector"*)* @_ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::vector"* @data to i8*), i8* nonnull @__dso_handle) #1, !clap !428
  call void @checker_endFunc()
  call void @checker_currentBB(i64 405)
  ret void, !clap !429
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare void @checker_preNonAtomicStore_char(i8*, i64, i8)

declare void @checker_myPrintf_64(i64)

declare void @checker_myPrintf_32(i32)

declare void @checker_myPrintf_8(i8)

declare void @checker_myPrintf_81({ i8, i1 })

declare void @checker_myPrintf_1(i1)

declare void @checker_preNonAtomicStore_int(i8*, i64, i32)

declare void @checker_preNonAtomicStore_double(i8*, i64, i64)

declare void @checker_preAtomicStore_char(i8*, i64, i8, i32)

declare void @checker_preAtomicStore_int(i8*, i64, i32, i32)

declare void @checker_preAtomicStore_double(i8*, i64, i64, i32)

declare i8 @checker_preNonAtomicLoad_char(i8*)

declare i32 @checker_preNonAtomicLoad_int(i8*)

declare i64 @checker_preNonAtomicLoad_double(i8*)

declare i8 @checker_preAtomicLoad_char(i8*, i64, i32)

declare i32 @checker_preAtomicLoad_int(i8*, i64, i32)

declare i64 @checker_preAtomicLoad_double(i8*, i64, i32)

declare void @checker_postAtomicLoad_char(i8*, i8, i32)

declare void @checker_postAtomicLoad_int(i8*, i32, i32)

declare void @checker_postAtomicLoad_double(i8*, i64, i32)

declare void @checker_preFence(i32)

declare void @checker_preTryLock(i8*)

declare void @checker_preLock(i8*)

declare void @checker_preUnlock(i8*)

declare i1 @checker_preCmpXchg_8(i8*, i8, i8, i32, i32, i64)

declare i1 @checker_preCmpXchg_16(i8*, i16, i16, i32, i32, i64)

declare i1 @checker_preCmpXchg_32(i8*, i32, i32, i32, i32, i64)

declare i1 @checker_preCmpXchg_64(i8*, i64, i64, i32, i32, i64)

declare i8 @checker_preRMW_Xchg_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_Add_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_Sub_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_And_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_Nand_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_Or_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_Xor_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_Max_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_Min_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_UMax_8(i8*, i8, i32, i64)

declare i8 @checker_preRMW_UMin_8(i8*, i8, i32, i64)

declare i16 @checker_preRMW_Xchg_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_Add_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_Sub_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_And_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_Nand_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_Or_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_Xor_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_Max_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_Min_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_UMax_16(i8*, i16, i32, i64)

declare i16 @checker_preRMW_UMin_16(i8*, i16, i32, i64)

declare i32 @checker_preRMW_Xchg_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_Add_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_Sub_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_And_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_Nand_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_Or_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_Xor_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_Max_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_Min_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_UMax_32(i8*, i32, i32, i64)

declare i32 @checker_preRMW_UMin_32(i8*, i32, i32, i64)

declare i64 @checker_preRMW_Xchg_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_Add_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_Sub_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_And_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_Nand_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_Or_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_Xor_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_Max_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_Min_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_UMax_64(i8*, i64, i32, i64)

declare i64 @checker_preRMW_UMin_64(i8*, i64, i32, i64)

declare void @checker_trackDynInfo(i64)

declare void @checker_trackDynInfoEnd()

declare void @checker_currentBB(i64)

declare void @checker_handlePHI_2(i64, i64, i64, i64, i64)

declare void @checker_handlePHI_3(i64, i64, i64, i64, i64, i64, i64)

declare void @checker_handlePHI_4(i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_handlePHI_5(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_handlePHI_6(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_handlePHI_7(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_handlePHI_8(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_handlePHI_9(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_handlePHI_10(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_addUses_1(i64, i64)

declare void @checker_addUses_2(i64, i64, i64)

declare void @checker_addUses_3(i64, i64, i64, i64)

declare void @checker_addUses_4(i64, i64, i64, i64, i64)

declare void @checker_addUses_5(i64, i64, i64, i64, i64, i64)

declare void @checker_addUses_6(i64, i64, i64, i64, i64, i64, i64)

declare void @checker_addUses_7(i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_addUses_8(i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_addUses_9(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_addUses_10(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare void @checker_beginFunc()

declare void @checker_endFunc()

declare void @checker_pre_yield()

attributes #0 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{i64 1}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTSNSt3__113__vector_baseIiNS_9allocatorIiEEEE", !5, i64 0, !5, i64 8, !8, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"_ZTSNSt3__117__compressed_pairIPiNS_9allocatorIiEEEE"}
!9 = !{i64 2}
!10 = !{i64 3}
!11 = !{i64 4}
!12 = !{i64 5}
!13 = !{i64 6}
!14 = !{i64 7}
!15 = !{!4, !5, i64 8}
!16 = !{i64 8}
!17 = !{i64 9}
!18 = !{i64 10}
!19 = !{i64 11}
!20 = !{i64 12}
!21 = !{i64 13}
!22 = !{i64 14}
!23 = !{i64 15}
!24 = !{i64 16}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !6, i64 0}
!27 = !{i64 17}
!28 = !{i64 18}
!29 = !{!5, !5, i64 0}
!30 = !{i64 19}
!31 = !{i64 20}
!32 = !{i64 21}
!33 = !{i64 22}
!34 = !{i64 23}
!35 = !{i64 24}
!36 = !{i64 25}
!37 = !{i64 26}
!38 = !{i64 27}
!39 = !{i64 28}
!40 = !{i64 29}
!41 = !{i64 30}
!42 = !{i64 32}
!43 = !{i64 33}
!44 = !{i64 34}
!45 = !{i64 35}
!46 = !{i64 36}
!47 = !{i64 37}
!48 = !{i64 38}
!49 = !{i64 39}
!50 = !{i64 41}
!51 = !{i64 42}
!52 = !{i64 43}
!53 = !{i64 44}
!54 = !{i64 45}
!55 = !{i64 46}
!56 = !{i64 47}
!57 = !{i64 48}
!58 = !{i64 49}
!59 = !{i64 50}
!60 = !{i64 51}
!61 = !{i64 52}
!62 = !{i64 53}
!63 = !{i64 54}
!64 = !{i64 56}
!65 = !{i64 57}
!66 = !{i64 58}
!67 = !{i64 59}
!68 = !{i64 60}
!69 = !{i64 61}
!70 = !{i64 62}
!71 = !{i64 63}
!72 = !{i64 64}
!73 = !{i64 65}
!74 = !{i64 66}
!75 = !{i64 67}
!76 = !{i64 68}
!77 = !{i64 69}
!78 = !{i64 70}
!79 = !{i64 71}
!80 = !{i64 72}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 73}
!83 = !{i64 74}
!84 = !{i64 75}
!85 = !{i64 76}
!86 = !{i64 77}
!87 = !{i64 78}
!88 = !{i64 79}
!89 = !{i64 80}
!90 = !{i64 81}
!91 = !{i64 82}
!92 = !{i64 83}
!93 = !{i64 84}
!94 = !{i64 86}
!95 = !{i64 87}
!96 = !{i64 88}
!97 = !{i64 89}
!98 = !{i64 90}
!99 = !{i64 91}
!100 = !{i64 92}
!101 = !{i64 93}
!102 = !{i64 94}
!103 = !{i64 95}
!104 = !{i64 96}
!105 = !{i64 97}
!106 = !{i64 98}
!107 = !{i64 99}
!108 = !{i64 100}
!109 = !{i64 101}
!110 = !{i64 102}
!111 = !{i64 103}
!112 = !{i64 104}
!113 = !{i64 105}
!114 = !{i64 106}
!115 = !{i64 107}
!116 = !{i64 108}
!117 = !{i64 109}
!118 = !{i64 110}
!119 = !{i64 111}
!120 = !{i64 112}
!121 = !{i64 113}
!122 = !{i64 114}
!123 = !{i64 115}
!124 = !{i64 116}
!125 = !{i64 117}
!126 = !{i64 118}
!127 = !{i64 119}
!128 = !{i64 120}
!129 = !{i64 121}
!130 = !{i64 122}
!131 = !{i64 123}
!132 = !{i64 124}
!133 = !{i64 125}
!134 = !{i64 126}
!135 = !{i64 127}
!136 = !{i64 128}
!137 = !{i64 129}
!138 = !{i64 130}
!139 = !{i64 131}
!140 = !{i64 132}
!141 = !{i64 133}
!142 = !{i64 134}
!143 = !{i64 135}
!144 = !{i64 136}
!145 = !{i64 137}
!146 = !{i64 138}
!147 = !{i64 139}
!148 = !{i64 140}
!149 = !{i64 141}
!150 = !{i64 142}
!151 = !{i64 143}
!152 = !{i64 144}
!153 = !{i64 145}
!154 = !{i64 146}
!155 = !{i64 147}
!156 = !{i64 148}
!157 = !{i64 149}
!158 = !{i64 150}
!159 = !{i64 151}
!160 = !{i64 152}
!161 = !{i64 153}
!162 = !{i64 154}
!163 = !{i64 155}
!164 = !{i64 156}
!165 = !{i64 157}
!166 = !{i64 158}
!167 = !{i64 159}
!168 = !{i64 160}
!169 = !{i64 161}
!170 = !{i64 162}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!173 = distinct !{!173, !"_ZN7checker12ModelChecker10getSchListEv"}
!174 = !{i64 163}
!175 = !{i64 164}
!176 = !{i64 165}
!177 = !{!178, !5, i64 8}
!178 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !5, i64 0, !5, i64 8, !179, i64 16}
!179 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!180 = !{i64 166}
!181 = !{i64 167}
!182 = !{!178, !5, i64 0}
!183 = !{i64 168}
!184 = !{i64 169}
!185 = !{i64 170}
!186 = !{i64 171}
!187 = !{i64 172}
!188 = !{i64 173}
!189 = !{i64 174}
!190 = !{i64 175}
!191 = !{i64 176}
!192 = !{i64 177}
!193 = !{i64 178}
!194 = !{i64 179}
!195 = !{i64 180}
!196 = !{i64 181}
!197 = !{i64 182}
!198 = !{i64 183}
!199 = !{i64 184}
!200 = !{i64 185}
!201 = !{i64 186}
!202 = !{i64 187}
!203 = !{i64 188}
!204 = !{i64 189}
!205 = !{i64 190}
!206 = !{i64 191}
!207 = !{i64 192}
!208 = !{i64 193}
!209 = !{i64 194}
!210 = !{i64 195}
!211 = !{i64 196}
!212 = !{i64 197}
!213 = !{i64 198}
!214 = !{i64 199}
!215 = !{i64 200}
!216 = !{i64 201}
!217 = !{i64 202}
!218 = !{i64 203}
!219 = !{i64 204}
!220 = !{i64 205}
!221 = !{i64 206}
!222 = !{i64 207}
!223 = !{i64 208}
!224 = !{i64 209}
!225 = !{i64 210}
!226 = !{i64 211}
!227 = !{i64 212}
!228 = !{i64 213}
!229 = !{i64 214}
!230 = !{i64 215}
!231 = !{i64 216}
!232 = !{i64 217}
!233 = !{i64 218}
!234 = !{i64 219}
!235 = !{i64 220}
!236 = !{i64 221}
!237 = !{i64 222}
!238 = !{i64 223}
!239 = !{i64 224}
!240 = !{i64 225}
!241 = !{i64 226}
!242 = !{i64 227}
!243 = !{i64 228}
!244 = !{i64 229}
!245 = !{i64 230}
!246 = !{i64 231}
!247 = !{i64 232}
!248 = !{i64 233}
!249 = !{i64 234}
!250 = !{i64 235}
!251 = !{i64 236}
!252 = !{i64 237}
!253 = !{i64 238}
!254 = !{i64 239}
!255 = !{i64 240}
!256 = !{i64 241}
!257 = !{i64 242}
!258 = !{i64 243}
!259 = !{i64 244}
!260 = !{i64 245}
!261 = !{i64 246}
!262 = !{i64 247}
!263 = !{i64 248}
!264 = !{i64 249}
!265 = !{i64 250}
!266 = !{i64 251}
!267 = !{i64 252}
!268 = !{i64 253}
!269 = !{i64 254}
!270 = !{i64 255}
!271 = !{i64 256}
!272 = !{i64 257}
!273 = !{i64 258}
!274 = !{i64 259}
!275 = !{i64 260}
!276 = !{i64 261}
!277 = !{i64 262}
!278 = !{i64 263}
!279 = !{i64 264}
!280 = !{i64 265}
!281 = !{i64 266}
!282 = !{i64 267}
!283 = !{i64 268}
!284 = !{i64 269}
!285 = !{!286, !286, i64 0}
!286 = !{!"vtable pointer", !7, i64 0}
!287 = !{i64 270}
!288 = !{i64 271}
!289 = !{i64 272}
!290 = !{i64 273}
!291 = !{i64 274}
!292 = !{i64 275}
!293 = !{i64 276}
!294 = !{i64 277}
!295 = !{i64 278}
!296 = !{i64 279}
!297 = !{i64 280}
!298 = !{i64 281}
!299 = !{i64 282}
!300 = !{i64 283}
!301 = !{i64 284}
!302 = !{i64 285}
!303 = !{i64 286}
!304 = !{i64 287}
!305 = !{i64 288}
!306 = !{i64 289}
!307 = !{i64 290}
!308 = !{i64 291}
!309 = !{i64 292}
!310 = !{i64 293}
!311 = !{i64 294}
!312 = !{i64 295}
!313 = !{i64 296}
!314 = !{i64 297}
!315 = !{i64 298}
!316 = !{i64 299}
!317 = !{i64 300}
!318 = !{i64 301}
!319 = !{i64 302}
!320 = !{i64 303}
!321 = !{i64 304}
!322 = !{i64 305}
!323 = !{i64 306}
!324 = !{i64 307}
!325 = !{i64 308}
!326 = !{i64 309}
!327 = !{i64 310}
!328 = !{i64 311}
!329 = !{i64 312}
!330 = !{i64 313}
!331 = !{i64 314}
!332 = !{!333, !5, i64 0}
!333 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !5, i64 0}
!334 = !{i64 315}
!335 = !{i64 316}
!336 = !{i64 317}
!337 = !{!338, !5, i64 0}
!338 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !5, i64 0}
!339 = !{i64 318}
!340 = !{i64 319}
!341 = !{i64 320}
!342 = !{i64 321}
!343 = !{i64 322}
!344 = !{i64 323}
!345 = !{i64 324}
!346 = !{i64 325}
!347 = !{i64 326}
!348 = !{i64 327}
!349 = !{i64 328}
!350 = !{i64 329}
!351 = !{i64 330}
!352 = !{i64 331}
!353 = !{i64 332}
!354 = !{i64 333}
!355 = !{i64 334}
!356 = !{i64 335}
!357 = !{i64 336}
!358 = !{i64 337}
!359 = !{i64 338}
!360 = !{i64 339}
!361 = !{i64 340}
!362 = !{i64 341}
!363 = !{i64 342}
!364 = !{i64 343}
!365 = !{i64 344}
!366 = !{i64 345}
!367 = !{i64 346}
!368 = !{i64 347}
!369 = !{i64 348}
!370 = !{i64 349}
!371 = !{i64 350}
!372 = !{i64 351}
!373 = !{i64 352}
!374 = !{i64 353}
!375 = !{i64 354}
!376 = !{i64 355}
!377 = !{i64 356}
!378 = !{i64 357}
!379 = !{i64 358}
!380 = !{i64 359}
!381 = !{i64 360}
!382 = !{i64 361}
!383 = !{i64 362}
!384 = !{i64 363}
!385 = !{i64 364}
!386 = !{i64 365}
!387 = !{!388, !389, i64 0}
!388 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !389, i64 0}
!389 = !{!"long", !6, i64 0}
!390 = !{i64 366}
!391 = !{i64 367}
!392 = !{i64 368}
!393 = !{i64 369}
!394 = !{i64 370}
!395 = !{i64 371}
!396 = !{i64 372}
!397 = !{i64 373}
!398 = !{i64 374}
!399 = !{i64 375}
!400 = !{i64 376}
!401 = !{i64 377}
!402 = !{i64 378}
!403 = !{i64 379}
!404 = !{i64 380}
!405 = !{i64 381}
!406 = !{i64 382}
!407 = !{i64 383}
!408 = !{i64 384}
!409 = !{i64 385}
!410 = !{i64 386}
!411 = !{i64 387}
!412 = !{i64 388}
!413 = !{i64 389}
!414 = !{i64 390}
!415 = !{i64 391}
!416 = !{i64 392}
!417 = !{i64 393}
!418 = !{i64 394}
!419 = !{i64 395}
!420 = !{i64 396}
!421 = !{i64 397}
!422 = !{i64 398}
!423 = !{i64 399}
!424 = !{i64 400}
!425 = !{i64 401}
!426 = !{i64 402}
!427 = !{i64 403}
!428 = !{i64 404}
!429 = !{i64 405}
