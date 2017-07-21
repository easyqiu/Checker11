; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%class.spinning_barrier = type { i32, %"struct.std::__1::atomic", %"struct.std::__1::atomic" }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i32 }
%"class.checker::ModelChecker" = type { i32, %"class.std::__1::vector", %"class.checker::Executor"*, %"class.std::__1::vector.19", double }
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %"class.checker::Schedule"**, %"class.checker::Schedule"**, %"class.std::__1::__compressed_pair.14" }
%"class.checker::Schedule" = type { %"class.std::__1::map", %"class.std::__1::map.5", %struct._opaque_pthread_mutex_t }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair.2" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.2" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.3" = type { i64 }
%"class.std::__1::map.5" = type { %"class.std::__1::__tree.6" }
%"class.std::__1::__tree.6" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.7", %"class.std::__1::__compressed_pair.11" }
%"class.std::__1::__compressed_pair.7" = type { %"struct.std::__1::__compressed_pair_elem" }
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::__compressed_pair.14" = type { %"struct.std::__1::__compressed_pair_elem.15" }
%"struct.std::__1::__compressed_pair_elem.15" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
%"class.std::__1::vector.19" = type { %"class.std::__1::__vector_base.20" }
%"class.std::__1::__vector_base.20" = type { %"class.std::__1::map"*, %"class.std::__1::map"*, %"class.std::__1::__compressed_pair.21" }
%"class.std::__1::__compressed_pair.21" = type { %"struct.std::__1::__compressed_pair_elem.22" }
%"struct.std::__1::__compressed_pair_elem.22" = type { %"class.std::__1::map"* }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::__vector_base_common" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@barr = local_unnamed_addr global %class.spinning_barrier* null, align 8
@var = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"threadA\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"threadB\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"var = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"nwait: %d, %d, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z7threadAv() #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !clap !2
  store i32 1, i32* @var, align 4, !tbaa !3, !clap !7
  %0 = load %class.spinning_barrier*, %class.spinning_barrier** @barr, align 8, !tbaa !8, !clap !10
  call void @checker_addUses_1(i64 4, i64 3)
  %__a_.i.i = getelementptr inbounds %class.spinning_barrier, %class.spinning_barrier* %0, i64 0, i32 2, i32 0, i32 0, i32 0, !clap !11
  call void @checker_addUses_1(i64 5, i64 4)
  %myCast = bitcast i32* %__a_.i.i to i8*, !clap !12
  call void @checker_addUses_1(i64 6, i64 5)
  %1 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 6, i32 7), !clap !13
  call void @checker_addUses_1(i64 7, i64 4)
  call void @checker_addUses_1(i64 8, i64 3)
  %__a_.i15.i = getelementptr inbounds %class.spinning_barrier, %class.spinning_barrier* %0, i64 0, i32 1, i32 0, i32 0, i32 0, !clap !14
  call void @checker_addUses_1(i64 9, i64 8)
  %myCast1 = bitcast i32* %__a_.i15.i to i8*, !clap !15
  call void @checker_addUses_1(i64 10, i64 9)
  %2 = call i32 @checker_preAtomicLoad_int(i8* %myCast1, i64 10, i32 7), !clap !16
  call void @checker_addUses_1(i64 11, i64 8)
  call void @checker_addUses_1(i64 12, i64 3)
  %n_.i = getelementptr inbounds %class.spinning_barrier, %class.spinning_barrier* %0, i64 0, i32 0, !clap !17
  call void @checker_addUses_1(i64 13, i64 12)
  %3 = load i32, i32* %n_.i, align 4, !tbaa !18, !clap !21
  call void @checker_addUses_3(i64 14, i64 10, i64 13, i64 6)
  %call3.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %2, i32 %3, i32 %1), !clap !22
  call void @checker_addUses_1(i64 15, i64 8)
  %myCast2 = bitcast i32* %__a_.i15.i to i8*, !clap !23
  call void @checker_addUses_1(i64 16, i64 15)
  %4 = call i32 @checker_preRMW_Add_32(i8* %myCast2, i32 1, i32 7, i64 16), !clap !24
  call void @checker_addUses_1(i64 17, i64 8)
  call void @checker_addUses_1(i64 18, i64 12)
  %5 = load i32, i32* %n_.i, align 4, !tbaa !18, !clap !25
  call void @checker_addUses_1(i64 19, i64 18)
  %sub.i = add i32 %5, -1, !clap !26
  call void @checker_addUses_2(i64 20, i64 16, i64 19)
  %cmp.i = icmp eq i32 %4, %sub.i, !clap !27
  call void @checker_addUses_1(i64 21, i64 20)
  call void @checker_currentBB(i64 21)
  br i1 %cmp.i, label %if.then.i, label %while.cond.i.preheader, !clap !28

while.cond.i.preheader:                           ; preds = %entry
  call void @checker_trackDynInfo(i64 21)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 22)
  br label %while.cond.i, !clap !29

if.then.i:                                        ; preds = %entry
  call void @checker_trackDynInfo(i64 21)
  call void @checker_addUses_1(i64 23, i64 8)
  %myCast3 = bitcast i32* %__a_.i15.i to i8*, !clap !30
  call void @checker_addUses_1(i64 24, i64 23)
  call void @checker_preAtomicStore_int(i8* %myCast3, i64 24, i32 0, i32 7), !clap !31
  call void @checker_addUses_1(i64 25, i64 8)
  call void @checker_addUses_1(i64 26, i64 4)
  %myCast4 = bitcast i32* %__a_.i.i to i8*, !clap !32
  call void @checker_addUses_1(i64 27, i64 26)
  %6 = call i32 @checker_preRMW_Add_32(i8* %myCast4, i32 1, i32 7, i64 27), !clap !33
  call void @checker_addUses_1(i64 28, i64 4)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 29)
  br label %_ZN16spinning_barrier4waitEv.exit, !clap !34

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.body.i
  call void @checker_trackDynInfo(i64 22)
  call void @checker_addUses_1(i64 30, i64 4)
  %myCast5 = bitcast i32* %__a_.i.i to i8*, !clap !35
  call void @checker_addUses_1(i64 31, i64 30)
  %7 = call i32 @checker_preAtomicLoad_int(i8* %myCast5, i64 31, i32 7), !clap !36
  call void @checker_addUses_1(i64 32, i64 4)
  call void @checker_addUses_2(i64 33, i64 31, i64 6)
  %cmp12.i = icmp eq i32 %7, %1, !clap !37
  call void @checker_addUses_1(i64 34, i64 33)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 34)
  br i1 %cmp12.i, label %while.body.i, label %_ZN16spinning_barrier4waitEv.exit.loopexit, !clap !38

while.body.i:                                     ; preds = %while.cond.i
  call void @checker_trackDynInfo(i64 34)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 35)
  %call.i1.i.i = invoke i32 @sched_yield()
          to label %while.cond.i unwind label %terminate.lpad.i.i, !clap !39

terminate.lpad.i.i:                               ; preds = %while.body.i
  %8 = landingpad { i8*, i32 }
          catch i8* null, !clap !40
  call void @checker_addUses_1(i64 37, i64 36)
  %9 = extractvalue { i8*, i32 } %8, 0, !clap !41
  call void @checker_addUses_1(i64 38, i64 37)
  tail call void @__clang_call_terminate(i8* %9) #9, !clap !42
  unreachable, !clap !43

_ZN16spinning_barrier4waitEv.exit.loopexit:       ; preds = %while.cond.i
  call void @checker_trackDynInfo(i64 34)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 40)
  br label %_ZN16spinning_barrier4waitEv.exit, !clap !44

_ZN16spinning_barrier4waitEv.exit:                ; preds = %_ZN16spinning_barrier4waitEv.exit.loopexit, %if.then.i
  call void @checker_trackDynInfo(i64 21)
  tail call void @checker_thread_end(), !clap !45
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 42)
  ret void, !clap !46
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z7threadBv() #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !clap !47
  %0 = load %class.spinning_barrier*, %class.spinning_barrier** @barr, align 8, !tbaa !8, !clap !48
  call void @checker_addUses_1(i64 45, i64 44)
  %__a_.i.i = getelementptr inbounds %class.spinning_barrier, %class.spinning_barrier* %0, i64 0, i32 2, i32 0, i32 0, i32 0, !clap !49
  call void @checker_addUses_1(i64 46, i64 45)
  %myCast = bitcast i32* %__a_.i.i to i8*, !clap !50
  call void @checker_addUses_1(i64 47, i64 46)
  %1 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 47, i32 7), !clap !51
  call void @checker_addUses_1(i64 48, i64 45)
  call void @checker_addUses_1(i64 49, i64 44)
  %__a_.i15.i = getelementptr inbounds %class.spinning_barrier, %class.spinning_barrier* %0, i64 0, i32 1, i32 0, i32 0, i32 0, !clap !52
  call void @checker_addUses_1(i64 50, i64 49)
  %myCast1 = bitcast i32* %__a_.i15.i to i8*, !clap !53
  call void @checker_addUses_1(i64 51, i64 50)
  %2 = call i32 @checker_preAtomicLoad_int(i8* %myCast1, i64 51, i32 7), !clap !54
  call void @checker_addUses_1(i64 52, i64 49)
  call void @checker_addUses_1(i64 53, i64 44)
  %n_.i = getelementptr inbounds %class.spinning_barrier, %class.spinning_barrier* %0, i64 0, i32 0, !clap !55
  call void @checker_addUses_1(i64 54, i64 53)
  %3 = load i32, i32* %n_.i, align 4, !tbaa !18, !clap !56
  call void @checker_addUses_3(i64 55, i64 51, i64 54, i64 47)
  %call3.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %2, i32 %3, i32 %1), !clap !57
  call void @checker_addUses_1(i64 56, i64 49)
  %myCast2 = bitcast i32* %__a_.i15.i to i8*, !clap !58
  call void @checker_addUses_1(i64 57, i64 56)
  %4 = call i32 @checker_preRMW_Add_32(i8* %myCast2, i32 1, i32 7, i64 57), !clap !59
  call void @checker_addUses_1(i64 58, i64 49)
  call void @checker_addUses_1(i64 59, i64 53)
  %5 = load i32, i32* %n_.i, align 4, !tbaa !18, !clap !60
  call void @checker_addUses_1(i64 60, i64 59)
  %sub.i = add i32 %5, -1, !clap !61
  call void @checker_addUses_2(i64 61, i64 57, i64 60)
  %cmp.i = icmp eq i32 %4, %sub.i, !clap !62
  call void @checker_addUses_1(i64 62, i64 61)
  call void @checker_currentBB(i64 62)
  br i1 %cmp.i, label %if.then.i, label %while.cond.i.preheader, !clap !63

while.cond.i.preheader:                           ; preds = %entry
  call void @checker_trackDynInfo(i64 62)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 63)
  br label %while.cond.i, !clap !64

if.then.i:                                        ; preds = %entry
  call void @checker_trackDynInfo(i64 62)
  call void @checker_addUses_1(i64 64, i64 49)
  %myCast3 = bitcast i32* %__a_.i15.i to i8*, !clap !65
  call void @checker_addUses_1(i64 65, i64 64)
  call void @checker_preAtomicStore_int(i8* %myCast3, i64 65, i32 0, i32 7), !clap !66
  call void @checker_addUses_1(i64 66, i64 49)
  call void @checker_addUses_1(i64 67, i64 45)
  %myCast4 = bitcast i32* %__a_.i.i to i8*, !clap !67
  call void @checker_addUses_1(i64 68, i64 67)
  %6 = call i32 @checker_preRMW_Add_32(i8* %myCast4, i32 1, i32 7, i64 68), !clap !68
  call void @checker_addUses_1(i64 69, i64 45)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 70)
  br label %_ZN16spinning_barrier4waitEv.exit, !clap !69

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.body.i
  call void @checker_trackDynInfo(i64 63)
  call void @checker_addUses_1(i64 71, i64 45)
  %myCast5 = bitcast i32* %__a_.i.i to i8*, !clap !70
  call void @checker_addUses_1(i64 72, i64 71)
  %7 = call i32 @checker_preAtomicLoad_int(i8* %myCast5, i64 72, i32 7), !clap !71
  call void @checker_addUses_1(i64 73, i64 45)
  call void @checker_addUses_2(i64 74, i64 72, i64 47)
  %cmp12.i = icmp eq i32 %7, %1, !clap !72
  call void @checker_addUses_1(i64 75, i64 74)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 75)
  br i1 %cmp12.i, label %while.body.i, label %_ZN16spinning_barrier4waitEv.exit.loopexit, !clap !73

while.body.i:                                     ; preds = %while.cond.i
  call void @checker_trackDynInfo(i64 75)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 76)
  %call.i1.i.i = invoke i32 @sched_yield()
          to label %while.cond.i unwind label %terminate.lpad.i.i, !clap !74

terminate.lpad.i.i:                               ; preds = %while.body.i
  %8 = landingpad { i8*, i32 }
          catch i8* null, !clap !75
  call void @checker_addUses_1(i64 78, i64 77)
  %9 = extractvalue { i8*, i32 } %8, 0, !clap !76
  call void @checker_addUses_1(i64 79, i64 78)
  tail call void @__clang_call_terminate(i8* %9) #9, !clap !77
  unreachable, !clap !78

_ZN16spinning_barrier4waitEv.exit.loopexit:       ; preds = %while.cond.i
  call void @checker_trackDynInfo(i64 75)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 81)
  br label %_ZN16spinning_barrier4waitEv.exit, !clap !79

_ZN16spinning_barrier4waitEv.exit:                ; preds = %_ZN16spinning_barrier4waitEv.exit.loopexit, %if.then.i
  call void @checker_trackDynInfo(i64 62)
  %10 = load i32, i32* @var, align 4, !tbaa !3, !clap !80
  call void @checker_addUses_1(i64 83, i64 82)
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %10), !clap !81
  tail call void @checker_thread_end(), !clap !82
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 85)
  ret void, !clap !83
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
invoke.cont:
  %a = alloca %"class.std::__1::thread", align 8, !clap !84
  %b = alloca %"class.std::__1::thread", align 8, !clap !85
  tail call void @checker_generateExecutor(), !clap !86
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !clap !87
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 12) #10, !clap !88
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 91, i64 90)
  %n_.i.i = bitcast i8* %call to i32*, !clap !89
  call void @checker_addUses_1(i64 92, i64 91)
  store i32 2, i32* %n_.i.i, align 4, !tbaa !18, !clap !90
  call void @checker_addUses_1(i64 93, i64 90)
  %__a_.i.i.i.i = getelementptr inbounds i8, i8* %call, i64 4, !clap !91
  call void @checker_addUses_1(i64 94, i64 93)
  %0 = bitcast i8* %__a_.i.i.i.i to i32*, !clap !92
  call void @checker_addUses_1(i64 95, i64 94)
  %myCast = bitcast i32* %0 to i8*, !clap !93
  call void @checker_addUses_1(i64 96, i64 95)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 96, i32 0, i32 7), !clap !94
  call void @checker_addUses_1(i64 97, i64 94)
  call void @checker_addUses_1(i64 98, i64 90)
  %__a_.i.i5.i.i = getelementptr inbounds i8, i8* %call, i64 8, !clap !95
  call void @checker_addUses_1(i64 99, i64 98)
  %1 = bitcast i8* %__a_.i.i5.i.i to i32*, !clap !96
  call void @checker_addUses_1(i64 100, i64 99)
  %myCast1 = bitcast i32* %1 to i8*, !clap !97
  call void @checker_addUses_1(i64 101, i64 100)
  call void @checker_preAtomicStore_int(i8* %myCast1, i64 101, i32 0, i32 7), !clap !98
  call void @checker_addUses_1(i64 102, i64 99)
  call void @checker_addUses_1(i64 103, i64 90)
  store i8* %call, i8** bitcast (%class.spinning_barrier** @barr to i8**), align 8, !tbaa !8, !clap !99
  call void @checker_addUses_1(i64 104, i64 86)
  %2 = bitcast %"class.std::__1::thread"* %a to i8*, !clap !100
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #11, !clap !101
  call void @checker_addUses_1(i64 106, i64 86)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z7threadAv), !clap !102
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 107, i64 87)
  %3 = bitcast %"class.std::__1::thread"* %b to i8*, !clap !103
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11, !clap !104
  call void @checker_addUses_1(i64 109, i64 87)
  call void @checker_currentBB(i64 109)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z7threadBv)
          to label %invoke.cont2 unwind label %lpad1, !clap !105

invoke.cont2:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 110, i64 86)
  %__t_.i30 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !clap !106
  call void @checker_addUses_1(i64 111, i64 110)
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i30, align 8, !tbaa !8, !clap !107
  call void @checker_addUses_1(i64 112, i64 111)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %4)
          to label %invoke.cont6 unwind label %lpad5, !clap !108

invoke.cont6:                                     ; preds = %invoke.cont2
  call void @checker_addUses_1(i64 113, i64 87)
  %__t_.i29 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !clap !109
  call void @checker_addUses_1(i64 114, i64 113)
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i29, align 8, !tbaa !8, !clap !110
  call void @checker_addUses_1(i64 115, i64 114)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %5)
          to label %invoke.cont11 unwind label %lpad5, !clap !111

invoke.cont11:                                    ; preds = %invoke.cont6
  call void @checker_addUses_1(i64 116, i64 110)
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i30, align 8, !tbaa !8, !clap !112
  call void @checker_addUses_1(i64 117, i64 116)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %6)
          to label %invoke.cont16 unwind label %lpad5, !clap !113

invoke.cont16:                                    ; preds = %invoke.cont11
  call void @checker_addUses_1(i64 118, i64 113)
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i29, align 8, !tbaa !8, !clap !114
  call void @checker_addUses_1(i64 119, i64 118)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %7)
          to label %invoke.cont21 unwind label %lpad5, !clap !115

invoke.cont21:                                    ; preds = %invoke.cont16
  call void @checker_addUses_1(i64 120, i64 87)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont22 unwind label %lpad5, !clap !116

invoke.cont22:                                    ; preds = %invoke.cont21
  call void @checker_addUses_1(i64 121, i64 86)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont23 unwind label %lpad5, !clap !117

invoke.cont23:                                    ; preds = %invoke.cont22
  invoke void @checker_thread_end()
          to label %invoke.cont24 unwind label %lpad5, !clap !118

invoke.cont24:                                    ; preds = %invoke.cont23
  invoke void @checker_solver()
          to label %invoke.cont25 unwind label %lpad5, !clap !119

invoke.cont25:                                    ; preds = %invoke.cont24
  call void @checker_addUses_1(i64 124, i64 87)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11, !clap !120
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11, !clap !121
  call void @checker_addUses_1(i64 126, i64 86)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11, !clap !122
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #11, !clap !123
  ret i32 0, !clap !124

lpad1:                                            ; preds = %invoke.cont
  %8 = landingpad { i8*, i32 }
          cleanup, !clap !125
  call void @checker_addUses_1(i64 130, i64 129)
  %9 = extractvalue { i8*, i32 } %8, 0, !clap !126
  call void @checker_addUses_1(i64 131, i64 129)
  %10 = extractvalue { i8*, i32 } %8, 1, !clap !127
  br label %eh.resume, !clap !128

lpad5:                                            ; preds = %invoke.cont24, %invoke.cont23, %invoke.cont22, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont6, %invoke.cont2
  %11 = landingpad { i8*, i32 }
          cleanup, !clap !129
  call void @checker_addUses_1(i64 134, i64 133)
  %12 = extractvalue { i8*, i32 } %11, 0, !clap !130
  call void @checker_addUses_1(i64 135, i64 133)
  %13 = extractvalue { i8*, i32 } %11, 1, !clap !131
  call void @checker_addUses_1(i64 136, i64 87)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11, !clap !132
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11, !clap !133
  br label %eh.resume, !clap !134

eh.resume:                                        ; preds = %lpad1, %lpad5
  %ehselector.slot.0 = phi i32 [ %13, %lpad5 ], [ %10, %lpad1 ], !clap !135
  %exn.slot.0 = phi i8* [ %12, %lpad5 ], [ %9, %lpad1 ], !clap !136
  call void @checker_handlePHI_2(i64 140, i64 134, i64 138, i64 130, i64 132)
  call void @checker_handlePHI_2(i64 139, i64 135, i64 138, i64 131, i64 132)
  call void @checker_addUses_1(i64 141, i64 86)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11, !clap !137
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #11, !clap !138
  call void @checker_addUses_1(i64 143, i64 140)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !clap !139
  call void @checker_addUses_2(i64 144, i64 143, i64 139)
  %lpad.val27 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !clap !140
  call void @checker_addUses_1(i64 145, i64 144)
  resume { i8*, i32 } %lpad.val27, !clap !141
}

declare void @checker_generateExecutor() local_unnamed_addr #1

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !142
  %call = tail call i8* @_Znwm(i64 72) #10, !clap !143
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*, !clap !144
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !145

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !8, !clap !146
  %call1 = tail call i32 @user_main(), !clap !147
  %1 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !148
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !149
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !150
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !151
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !152
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !153
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #11, !clap !154
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !8, !clap !155
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, !clap !156
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !157, !clap !160
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1, !clap !161
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*, !clap !162
  %7 = load i64, i64* %6, align 8, !tbaa !163, !noalias !157, !clap !166
  %8 = bitcast %"class.std::__1::vector"* %schList.i15 to i64*, !clap !167
  %9 = load i64, i64* %8, align 8, !tbaa !168, !noalias !157, !clap !169
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9, !clap !170
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3, !clap !171
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0, !clap !172
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !173

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !174

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !175

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #11, !clap !176
  br label %while.end, !clap !177

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ], !clap !178
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ], !clap !179
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ], !clap !180
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951, !clap !181
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !182

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !183
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #12
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !184

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !185

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #10, !clap !186
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !187
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !163, !alias.scope !157, !clap !188
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !168, !alias.scope !157, !clap !189
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21, !clap !190
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !8, !alias.scope !157, !clap !191
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0, !clap !192
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !193
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !194

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3, !clap !195
  %14 = inttoptr i64 %10 to i8*, !clap !196
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #11, !clap !197
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i, !clap !198
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !8, !alias.scope !157, !clap !199
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !200
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !201

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !202
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !203
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !168, !alias.scope !157, !clap !204
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !205
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !206

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !207
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !208
  store i64 %17, i64* %2, align 8, !tbaa !163, !alias.scope !157, !clap !209
  call void @_ZdlPv(i8* %16) #13, !clap !210
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !211

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !212

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !213
  %tobool10 = icmp eq i64 %.ph, %13, !clap !214
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #13, !clap !215
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #11, !clap !216
  br i1 %tobool10, label %while.end.loopexit, label %while.body, !clap !217

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !clap !218
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #11, !clap !219
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !8, !clap !220
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, !clap !221
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !157, !clap !222
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1, !clap !223
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !224
  %20 = load i64, i64* %19, align 8, !tbaa !163, !noalias !157, !clap !225
  %21 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !226
  %22 = load i64, i64* %21, align 8, !tbaa !168, !noalias !157, !clap !227
  %sub.ptr.sub.i.i.i.i = sub i64 %20, %22, !clap !228
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !229
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !230
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !231

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup, !clap !232
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !233
  resume { i8*, i32 } %23, !clap !234

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !235

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !236
}

declare void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"*) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #7 {
  call void @checker_beginFunc()
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #11, !clap !237
  call void @checker_endFunc()
  call void @checker_beginFunc()
  tail call void @_ZSt9terminatev() #9, !clap !238
  call void @checker_endFunc()
  call void @checker_currentBB(i64 236)
  unreachable, !clap !239
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare i32 @sched_yield() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #10, !clap !240
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 238, i64 237)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !241
  call void @checker_addUses_1(i64 239, i64 238)
  call void @checker_currentBB(i64 239)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !242

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #10
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !243

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 241, i64 237)
  %1 = ptrtoint i8* %call to i64, !clap !244
  %2 = ptrtoint void ()* %__f to i64, !clap !245
  call void @checker_addUses_1(i64 243, i64 240)
  %3 = bitcast i8* %call4 to i64*, !clap !246
  call void @checker_addUses_2(i64 244, i64 241, i64 243)
  store i64 %1, i64* %3, align 8, !tbaa !247, !clap !249
  call void @checker_addUses_1(i64 245, i64 240)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !250
  call void @checker_addUses_1(i64 246, i64 245)
  %5 = bitcast i8* %4 to i64*, !clap !251
  call void @checker_addUses_2(i64 247, i64 242, i64 246)
  store i64 %2, i64* %5, align 8, !tbaa !252, !clap !254
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !255
  call void @checker_addUses_2(i64 249, i64 248, i64 240)
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !256

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 250, i64 249)
  %cmp = icmp eq i32 %call.i31, 0, !clap !257
  call void @checker_addUses_1(i64 251, i64 250)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !258

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 251)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 252)
  ret void, !clap !259

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !260
  call void @checker_addUses_1(i64 254, i64 253)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !261
  call void @checker_addUses_1(i64 255, i64 253)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !262
  call void @checker_addUses_1(i64 256, i64 237)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !263
  br label %eh.resume, !clap !264

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !265
  br label %delete.notnull.i.i.i.i, !clap !266

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 251)
  call void @checker_addUses_1(i64 260, i64 249)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 260)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #12
          to label %invoke.cont16 unwind label %lpad15, !clap !267

invoke.cont16:                                    ; preds = %if.else
  unreachable, !clap !268

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !269
  br label %delete.notnull.i.i.i.i, !clap !270

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !271
  call void @checker_handlePHI_2(i64 264, i64 262, i64 263, i64 258, i64 259)
  call void @checker_addUses_1(i64 265, i64 264)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !272
  call void @checker_addUses_1(i64 266, i64 264)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !273
  call void @checker_addUses_1(i64 267, i64 240)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !274
  call void @checker_addUses_1(i64 268, i64 267)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !8, !clap !275
  call void @checker_addUses_1(i64 269, i64 267)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !8, !clap !276
  call void @checker_addUses_1(i64 270, i64 268)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !277
  call void @checker_addUses_1(i64 271, i64 270)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !278

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 271)
  call void @checker_addUses_1(i64 272, i64 268)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #11, !clap !279
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 273, i64 268)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !280
  call void @checker_addUses_1(i64 274, i64 273)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #13, !clap !281
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 275)
  br label %ehcleanup18.thread, !clap !282

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 271)
  call void @checker_addUses_1(i64 276, i64 240)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #13, !clap !283
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 277)
  br label %eh.resume, !clap !284

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !285
  call void @checker_addUses_1(i64 279, i64 278)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !286
  call void @checker_addUses_1(i64 280, i64 278)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !287
  call void @checker_addUses_1(i64 281, i64 238)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #11, !clap !288
  call void @checker_addUses_1(i64 282, i64 237)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !289
  br label %eh.resume, !clap !290

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !291
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !292
  call void @checker_handlePHI_3(i64 285, i64 254, i64 257, i64 279, i64 283, i64 265, i64 277)
  call void @checker_handlePHI_3(i64 284, i64 255, i64 257, i64 280, i64 283, i64 266, i64 277)
  call void @checker_addUses_1(i64 286, i64 285)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !293
  call void @checker_addUses_2(i64 287, i64 286, i64 284)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !294
  call void @checker_addUses_1(i64 288, i64 287)
  resume { i8*, i32 } %lpad.val20, !clap !295
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 289)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !296

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !297
  %0 = bitcast i8* %__vp to i8**, !clap !298
  call void @checker_addUses_1(i64 292, i64 291)
  %1 = load i8*, i8** %0, align 8, !tbaa !8, !clap !299
  call void @checker_addUses_1(i64 293, i64 290)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !8, !clap !300
  call void @checker_addUses_1(i64 294, i64 289)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !301
  call void @checker_addUses_1(i64 295, i64 294)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !302, !clap !305
  call void @checker_addUses_2(i64 296, i64 295, i64 292)
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !306

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !307
  call void @checker_addUses_1(i64 298, i64 297)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !308
  call void @checker_addUses_1(i64 299, i64 298)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !8, !clap !309
  call void @checker_addUses_1(i64 300, i64 299)
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !310

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 301, i64 290)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !8, !clap !311
  call void @checker_addUses_1(i64 302, i64 290)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !8, !clap !312
  call void @checker_addUses_1(i64 303, i64 301)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !313
  call void @checker_addUses_1(i64 304, i64 303)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !314

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 304)
  call void @checker_addUses_1(i64 305, i64 301)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #11, !clap !315
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 306, i64 301)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !316
  call void @checker_addUses_1(i64 307, i64 306)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #13, !clap !317
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 308)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !318

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 304)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !319
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 310)
  ret i8* null, !clap !320

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !321
  br label %delete.notnull.i.i.i.i, !clap !322

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !323
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !324
  call void @checker_addUses_1(i64 315, i64 314)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !325

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 315)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !326
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 317)
  br label %delete.notnull.i.i.i.i, !clap !327

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !328
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !329
  call void @checker_handlePHI_2(i64 319, i64 313, i64 317, i64 311, i64 312)
  call void @checker_handlePHI_2(i64 318, i64 316, i64 317, i64 290, i64 312)
  call void @checker_addUses_1(i64 320, i64 318)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !8, !clap !330
  call void @checker_addUses_1(i64 321, i64 318)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !8, !clap !331
  call void @checker_addUses_1(i64 322, i64 320)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !332
  call void @checker_addUses_1(i64 323, i64 322)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !333

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 323)
  call void @checker_addUses_1(i64 324, i64 320)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #11, !clap !334
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 325, i64 320)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !335
  call void @checker_addUses_1(i64 326, i64 325)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #13, !clap !336
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 327)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !337

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 323)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !338
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 329)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !339

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !340
  call void @checker_handlePHI_2(i64 330, i64 313, i64 315, i64 319, i64 329)
  call void @checker_addUses_1(i64 331, i64 330)
  resume { i8*, i32 } %lpad.phi30, !clap !341
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #8

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

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

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{i64 1}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i64 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{i64 3}
!11 = !{i64 4}
!12 = !{i64 5}
!13 = !{i64 6}
!14 = !{i64 8}
!15 = !{i64 9}
!16 = !{i64 10}
!17 = !{i64 12}
!18 = !{!19, !4, i64 0}
!19 = !{!"_ZTS16spinning_barrier", !4, i64 0, !20, i64 4, !20, i64 8}
!20 = !{!"_ZTSNSt3__16atomicIjEE"}
!21 = !{i64 13}
!22 = !{i64 14}
!23 = !{i64 15}
!24 = !{i64 16}
!25 = !{i64 18}
!26 = !{i64 19}
!27 = !{i64 20}
!28 = !{i64 21}
!29 = !{i64 22}
!30 = !{i64 23}
!31 = !{i64 24}
!32 = !{i64 26}
!33 = !{i64 27}
!34 = !{i64 29}
!35 = !{i64 30}
!36 = !{i64 31}
!37 = !{i64 33}
!38 = !{i64 34}
!39 = !{i64 35}
!40 = !{i64 36}
!41 = !{i64 37}
!42 = !{i64 38}
!43 = !{i64 39}
!44 = !{i64 40}
!45 = !{i64 41}
!46 = !{i64 42}
!47 = !{i64 43}
!48 = !{i64 44}
!49 = !{i64 45}
!50 = !{i64 46}
!51 = !{i64 47}
!52 = !{i64 49}
!53 = !{i64 50}
!54 = !{i64 51}
!55 = !{i64 53}
!56 = !{i64 54}
!57 = !{i64 55}
!58 = !{i64 56}
!59 = !{i64 57}
!60 = !{i64 59}
!61 = !{i64 60}
!62 = !{i64 61}
!63 = !{i64 62}
!64 = !{i64 63}
!65 = !{i64 64}
!66 = !{i64 65}
!67 = !{i64 67}
!68 = !{i64 68}
!69 = !{i64 70}
!70 = !{i64 71}
!71 = !{i64 72}
!72 = !{i64 74}
!73 = !{i64 75}
!74 = !{i64 76}
!75 = !{i64 77}
!76 = !{i64 78}
!77 = !{i64 79}
!78 = !{i64 80}
!79 = !{i64 81}
!80 = !{i64 82}
!81 = !{i64 83}
!82 = !{i64 84}
!83 = !{i64 85}
!84 = !{i64 86}
!85 = !{i64 87}
!86 = !{i64 88}
!87 = !{i64 89}
!88 = !{i64 90}
!89 = !{i64 91}
!90 = !{i64 92}
!91 = !{i64 93}
!92 = !{i64 94}
!93 = !{i64 95}
!94 = !{i64 96}
!95 = !{i64 98}
!96 = !{i64 99}
!97 = !{i64 100}
!98 = !{i64 101}
!99 = !{i64 103}
!100 = !{i64 104}
!101 = !{i64 105}
!102 = !{i64 106}
!103 = !{i64 107}
!104 = !{i64 108}
!105 = !{i64 109}
!106 = !{i64 110}
!107 = !{i64 111}
!108 = !{i64 112}
!109 = !{i64 113}
!110 = !{i64 114}
!111 = !{i64 115}
!112 = !{i64 116}
!113 = !{i64 117}
!114 = !{i64 118}
!115 = !{i64 119}
!116 = !{i64 120}
!117 = !{i64 121}
!118 = !{i64 122}
!119 = !{i64 123}
!120 = !{i64 124}
!121 = !{i64 125}
!122 = !{i64 126}
!123 = !{i64 127}
!124 = !{i64 128}
!125 = !{i64 129}
!126 = !{i64 130}
!127 = !{i64 131}
!128 = !{i64 132}
!129 = !{i64 133}
!130 = !{i64 134}
!131 = !{i64 135}
!132 = !{i64 136}
!133 = !{i64 137}
!134 = !{i64 138}
!135 = !{i64 139}
!136 = !{i64 140}
!137 = !{i64 141}
!138 = !{i64 142}
!139 = !{i64 143}
!140 = !{i64 144}
!141 = !{i64 145}
!142 = !{i64 146}
!143 = !{i64 147}
!144 = !{i64 148}
!145 = !{i64 149}
!146 = !{i64 150}
!147 = !{i64 151}
!148 = !{i64 152}
!149 = !{i64 153}
!150 = !{i64 154}
!151 = !{i64 155}
!152 = !{i64 156}
!153 = !{i64 157}
!154 = !{i64 158}
!155 = !{i64 159}
!156 = !{i64 160}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!159 = distinct !{!159, !"_ZN7checker12ModelChecker10getSchListEv"}
!160 = !{i64 161}
!161 = !{i64 162}
!162 = !{i64 163}
!163 = !{!164, !9, i64 8}
!164 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !9, i64 0, !9, i64 8, !165, i64 16}
!165 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!166 = !{i64 164}
!167 = !{i64 165}
!168 = !{!164, !9, i64 0}
!169 = !{i64 166}
!170 = !{i64 167}
!171 = !{i64 168}
!172 = !{i64 169}
!173 = !{i64 170}
!174 = !{i64 171}
!175 = !{i64 172}
!176 = !{i64 173}
!177 = !{i64 174}
!178 = !{i64 175}
!179 = !{i64 176}
!180 = !{i64 177}
!181 = !{i64 178}
!182 = !{i64 179}
!183 = !{i64 180}
!184 = !{i64 181}
!185 = !{i64 182}
!186 = !{i64 183}
!187 = !{i64 184}
!188 = !{i64 185}
!189 = !{i64 186}
!190 = !{i64 187}
!191 = !{i64 188}
!192 = !{i64 189}
!193 = !{i64 190}
!194 = !{i64 191}
!195 = !{i64 192}
!196 = !{i64 193}
!197 = !{i64 194}
!198 = !{i64 195}
!199 = !{i64 196}
!200 = !{i64 197}
!201 = !{i64 198}
!202 = !{i64 199}
!203 = !{i64 200}
!204 = !{i64 201}
!205 = !{i64 202}
!206 = !{i64 203}
!207 = !{i64 204}
!208 = !{i64 205}
!209 = !{i64 206}
!210 = !{i64 207}
!211 = !{i64 208}
!212 = !{i64 209}
!213 = !{i64 210}
!214 = !{i64 211}
!215 = !{i64 212}
!216 = !{i64 213}
!217 = !{i64 214}
!218 = !{i64 215}
!219 = !{i64 216}
!220 = !{i64 217}
!221 = !{i64 218}
!222 = !{i64 219}
!223 = !{i64 220}
!224 = !{i64 221}
!225 = !{i64 222}
!226 = !{i64 223}
!227 = !{i64 224}
!228 = !{i64 225}
!229 = !{i64 226}
!230 = !{i64 227}
!231 = !{i64 228}
!232 = !{i64 229}
!233 = !{i64 230}
!234 = !{i64 231}
!235 = !{i64 232}
!236 = !{i64 233}
!237 = !{i64 234}
!238 = !{i64 235}
!239 = !{i64 236}
!240 = !{i64 237}
!241 = !{i64 238}
!242 = !{i64 239}
!243 = !{i64 240}
!244 = !{i64 241}
!245 = !{i64 242}
!246 = !{i64 243}
!247 = !{!248, !9, i64 0}
!248 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !9, i64 0}
!249 = !{i64 244}
!250 = !{i64 245}
!251 = !{i64 246}
!252 = !{!253, !9, i64 0}
!253 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !9, i64 0}
!254 = !{i64 247}
!255 = !{i64 248}
!256 = !{i64 249}
!257 = !{i64 250}
!258 = !{i64 251}
!259 = !{i64 252}
!260 = !{i64 253}
!261 = !{i64 254}
!262 = !{i64 255}
!263 = !{i64 256}
!264 = !{i64 257}
!265 = !{i64 258}
!266 = !{i64 259}
!267 = !{i64 260}
!268 = !{i64 261}
!269 = !{i64 262}
!270 = !{i64 263}
!271 = !{i64 264}
!272 = !{i64 265}
!273 = !{i64 266}
!274 = !{i64 267}
!275 = !{i64 268}
!276 = !{i64 269}
!277 = !{i64 270}
!278 = !{i64 271}
!279 = !{i64 272}
!280 = !{i64 273}
!281 = !{i64 274}
!282 = !{i64 275}
!283 = !{i64 276}
!284 = !{i64 277}
!285 = !{i64 278}
!286 = !{i64 279}
!287 = !{i64 280}
!288 = !{i64 281}
!289 = !{i64 282}
!290 = !{i64 283}
!291 = !{i64 284}
!292 = !{i64 285}
!293 = !{i64 286}
!294 = !{i64 287}
!295 = !{i64 288}
!296 = !{i64 289}
!297 = !{i64 290}
!298 = !{i64 291}
!299 = !{i64 292}
!300 = !{i64 293}
!301 = !{i64 294}
!302 = !{!303, !304, i64 0}
!303 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !304, i64 0}
!304 = !{!"long", !5, i64 0}
!305 = !{i64 295}
!306 = !{i64 296}
!307 = !{i64 297}
!308 = !{i64 298}
!309 = !{i64 299}
!310 = !{i64 300}
!311 = !{i64 301}
!312 = !{i64 302}
!313 = !{i64 303}
!314 = !{i64 304}
!315 = !{i64 305}
!316 = !{i64 306}
!317 = !{i64 307}
!318 = !{i64 308}
!319 = !{i64 309}
!320 = !{i64 310}
!321 = !{i64 311}
!322 = !{i64 312}
!323 = !{i64 313}
!324 = !{i64 314}
!325 = !{i64 315}
!326 = !{i64 316}
!327 = !{i64 317}
!328 = !{i64 318}
!329 = !{i64 319}
!330 = !{i64 320}
!331 = !{i64 321}
!332 = !{i64 322}
!333 = !{i64 323}
!334 = !{i64 324}
!335 = !{i64 325}
!336 = !{i64 326}
!337 = !{i64 327}
!338 = !{i64 328}
!339 = !{i64 329}
!340 = !{i64 330}
!341 = !{i64 331}
