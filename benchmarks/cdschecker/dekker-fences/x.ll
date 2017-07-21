; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { i8 }
%"struct.std::__1::atomic.0" = type { %"struct.std::__1::__atomic_base.1" }
%"struct.std::__1::__atomic_base.1" = type { %"struct.std::__1::__atomic_base.2" }
%"struct.std::__1::__atomic_base.2" = type { i32 }
%"class.checker::ModelChecker" = type { i32, %"class.std::__1::vector", %"class.checker::Executor"*, %"class.std::__1::vector.32", %"class.std::__1::vector.32", double }
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %"class.checker::Schedule"**, %"class.checker::Schedule"**, %"class.std::__1::__compressed_pair.27" }
%"class.checker::Schedule" = type { %"class.std::__1::map", %"class.std::__1::map.7", %"class.std::__1::map.18", %struct._opaque_pthread_mutex_t }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair.4" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.4" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"struct.std::__1::__compressed_pair_elem.5" = type { i64 }
%"class.std::__1::map.7" = type { %"class.std::__1::__tree.8" }
%"class.std::__1::__tree.8" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.9", %"class.std::__1::__compressed_pair.13" }
%"class.std::__1::__compressed_pair.9" = type { %"struct.std::__1::__compressed_pair_elem" }
%"class.std::__1::__compressed_pair.13" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"class.std::__1::map.18" = type { %"class.std::__1::__tree.19" }
%"class.std::__1::__tree.19" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.20", %"class.std::__1::__compressed_pair.24" }
%"class.std::__1::__compressed_pair.20" = type { %"struct.std::__1::__compressed_pair_elem" }
%"class.std::__1::__compressed_pair.24" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::__compressed_pair.27" = type { %"struct.std::__1::__compressed_pair_elem.28" }
%"struct.std::__1::__compressed_pair_elem.28" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
%"class.std::__1::vector.32" = type { %"class.std::__1::__vector_base.33" }
%"class.std::__1::__vector_base.33" = type { %"class.std::__1::map"*, %"class.std::__1::map"*, %"class.std::__1::__compressed_pair.34" }
%"class.std::__1::__compressed_pair.34" = type { %"struct.std::__1::__compressed_pair_elem.35" }
%"struct.std::__1::__compressed_pair_elem.35" = type { %"class.std::__1::map"* }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::__vector_base_common" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@flag0 = global %"struct.std::__1::atomic" zeroinitializer, align 1
@flag1 = global %"struct.std::__1::atomic" zeroinitializer, align 1
@turn = global %"struct.std::__1::atomic.0" zeroinitializer, align 4
@var = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"p0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z2p0v() #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !clap !2
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag0, i64 0, i32 0, i32 0), i64 2, i8 1, i32 2), !clap !3
  call void @checker_preFence(i32 7), !clap !4
  fence seq_cst, !clap !5
  %0 = call i8 @checker_preAtomicLoad_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag1, i64 0, i32 0, i32 0), i64 6, i32 2), !clap !6
  call void @checker_addUses_1(i64 8, i64 6)
  %1 = and i8 %0, 1, !clap !7
  call void @checker_addUses_1(i64 9, i64 8)
  %tobool.i10 = icmp eq i8 %1, 0, !clap !8
  call void @checker_addUses_1(i64 10, i64 9)
  call void @checker_currentBB(i64 10)
  br i1 %tobool.i10, label %while.end6, label %while.body.preheader, !clap !9

while.body.preheader:                             ; preds = %entry
  call void @checker_trackDynInfo(i64 10)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 11)
  br label %while.body, !clap !10

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  call void @checker_trackDynInfo(i64 11)
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic.0", %"struct.std::__1::atomic.0"* @turn, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !11
  call void @checker_addUses_1(i64 13, i64 12)
  %2 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 13, i32 2), !clap !12
  call void @checker_addUses_1(i64 15, i64 13)
  %cmp = icmp eq i32 %2, 0, !clap !13
  call void @checker_addUses_1(i64 16, i64 15)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 16)
  br i1 %cmp, label %if.else, label %if.then, !clap !14

if.then:                                          ; preds = %while.body
  call void @checker_trackDynInfo(i64 16)
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag0, i64 0, i32 0, i32 0), i64 17, i8 0, i32 2), !clap !15
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 19)
  br label %while.cond2, !clap !16

while.cond2:                                      ; preds = %while.body5, %if.then
  call void @checker_trackDynInfo(i64 24)
  call void @checker_trackDynInfo(i64 19)
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic.0", %"struct.std::__1::atomic.0"* @turn, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !17
  call void @checker_addUses_1(i64 21, i64 20)
  %3 = call i32 @checker_preAtomicLoad_int(i8* %myCast1, i64 21, i32 2), !clap !18
  call void @checker_addUses_1(i64 23, i64 21)
  %cmp4 = icmp eq i32 %3, 0, !clap !19
  call void @checker_addUses_1(i64 24, i64 23)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 24)
  br i1 %cmp4, label %while.end, label %while.body5, !clap !20

while.body5:                                      ; preds = %while.cond2
  call void @checker_trackDynInfo(i64 24)
  call void @checker_pre_yield(), !clap !21
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 26)
  %call.i1.i7 = invoke i32 @sched_yield()
          to label %while.cond2 unwind label %terminate.lpad.i8, !clap !22

terminate.lpad.i8:                                ; preds = %while.body5
  %4 = landingpad { i8*, i32 }
          catch i8* null, !clap !23
  call void @checker_addUses_1(i64 28, i64 27)
  %5 = extractvalue { i8*, i32 } %4, 0, !clap !24
  call void @checker_addUses_1(i64 29, i64 28)
  tail call void @__clang_call_terminate(i8* %5) #9, !clap !25
  unreachable, !clap !26

while.end:                                        ; preds = %while.cond2
  call void @checker_trackDynInfo(i64 24)
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag0, i64 0, i32 0, i32 0), i64 31, i8 1, i32 2), !clap !27
  call void @checker_preFence(i32 7), !clap !28
  fence seq_cst, !clap !29
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 35)
  br label %while.cond.backedge, !clap !30

while.cond.backedge:                              ; preds = %while.end, %if.else
  call void @checker_trackDynInfo(i64 16)
  call void @checker_trackDynInfo(i64 16)
  %6 = call i8 @checker_preAtomicLoad_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag1, i64 0, i32 0, i32 0), i64 36, i32 2), !clap !31
  call void @checker_addUses_1(i64 38, i64 36)
  %7 = and i8 %6, 1, !clap !32
  call void @checker_addUses_1(i64 39, i64 38)
  %tobool.i = icmp eq i8 %7, 0, !clap !33
  call void @checker_addUses_1(i64 40, i64 39)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 40)
  br i1 %tobool.i, label %while.end6.loopexit, label %while.body, !clap !34

if.else:                                          ; preds = %while.body
  call void @checker_trackDynInfo(i64 16)
  call void @checker_pre_yield(), !clap !35
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 42)
  %call.i1.i = invoke i32 @sched_yield()
          to label %while.cond.backedge unwind label %terminate.lpad.i, !clap !36

terminate.lpad.i:                                 ; preds = %if.else
  %8 = landingpad { i8*, i32 }
          catch i8* null, !clap !37
  call void @checker_addUses_1(i64 44, i64 43)
  %9 = extractvalue { i8*, i32 } %8, 0, !clap !38
  call void @checker_addUses_1(i64 45, i64 44)
  tail call void @__clang_call_terminate(i8* %9) #9, !clap !39
  unreachable, !clap !40

while.end6.loopexit:                              ; preds = %while.cond.backedge
  call void @checker_trackDynInfo(i64 40)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 47)
  br label %while.end6, !clap !41

while.end6:                                       ; preds = %while.end6.loopexit, %entry
  call void @checker_trackDynInfo(i64 10)
  call void @checker_preFence(i32 4), !clap !42
  fence acquire, !clap !43
  store i32 1, i32* @var, align 4, !tbaa !44, !clap !48
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic.0", %"struct.std::__1::atomic.0"* @turn, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !49
  call void @checker_addUses_1(i64 52, i64 51)
  call void @checker_preAtomicStore_int(i8* %myCast2, i64 52, i32 1, i32 2), !clap !50
  call void @checker_preFence(i32 5), !clap !51
  fence release, !clap !52
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag0, i64 0, i32 0, i32 0), i64 56, i8 0, i32 2), !clap !53
  tail call void @checker_thread_end(), !clap !54
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 59)
  ret void, !clap !55
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z2p1v() #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !clap !56
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag1, i64 0, i32 0, i32 0), i64 61, i8 1, i32 2), !clap !57
  call void @checker_preFence(i32 7), !clap !58
  fence seq_cst, !clap !59
  %0 = call i8 @checker_preAtomicLoad_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag0, i64 0, i32 0, i32 0), i64 65, i32 2), !clap !60
  call void @checker_addUses_1(i64 67, i64 65)
  %1 = and i8 %0, 1, !clap !61
  call void @checker_addUses_1(i64 68, i64 67)
  %tobool.i10 = icmp eq i8 %1, 0, !clap !62
  call void @checker_addUses_1(i64 69, i64 68)
  call void @checker_currentBB(i64 69)
  br i1 %tobool.i10, label %while.end6, label %while.body.preheader, !clap !63

while.body.preheader:                             ; preds = %entry
  call void @checker_trackDynInfo(i64 69)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 70)
  br label %while.body, !clap !64

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  call void @checker_trackDynInfo(i64 70)
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic.0", %"struct.std::__1::atomic.0"* @turn, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !65
  call void @checker_addUses_1(i64 72, i64 71)
  %2 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 72, i32 2), !clap !66
  call void @checker_addUses_1(i64 74, i64 72)
  %cmp = icmp eq i32 %2, 1, !clap !67
  call void @checker_addUses_1(i64 75, i64 74)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 75)
  br i1 %cmp, label %if.else, label %if.then, !clap !68

if.then:                                          ; preds = %while.body
  call void @checker_trackDynInfo(i64 75)
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag1, i64 0, i32 0, i32 0), i64 76, i8 0, i32 2), !clap !69
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 78)
  br label %while.cond2, !clap !70

while.cond2:                                      ; preds = %while.body5, %if.then
  call void @checker_trackDynInfo(i64 83)
  call void @checker_trackDynInfo(i64 78)
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic.0", %"struct.std::__1::atomic.0"* @turn, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !71
  call void @checker_addUses_1(i64 80, i64 79)
  %3 = call i32 @checker_preAtomicLoad_int(i8* %myCast1, i64 80, i32 2), !clap !72
  call void @checker_addUses_1(i64 82, i64 80)
  %cmp4 = icmp eq i32 %3, 1, !clap !73
  call void @checker_addUses_1(i64 83, i64 82)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 83)
  br i1 %cmp4, label %while.end, label %while.body5, !clap !74

while.body5:                                      ; preds = %while.cond2
  call void @checker_trackDynInfo(i64 83)
  call void @checker_pre_yield(), !clap !75
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 85)
  %call.i1.i7 = invoke i32 @sched_yield()
          to label %while.cond2 unwind label %terminate.lpad.i8, !clap !76

terminate.lpad.i8:                                ; preds = %while.body5
  %4 = landingpad { i8*, i32 }
          catch i8* null, !clap !77
  call void @checker_addUses_1(i64 87, i64 86)
  %5 = extractvalue { i8*, i32 } %4, 0, !clap !78
  call void @checker_addUses_1(i64 88, i64 87)
  tail call void @__clang_call_terminate(i8* %5) #9, !clap !79
  unreachable, !clap !80

while.end:                                        ; preds = %while.cond2
  call void @checker_trackDynInfo(i64 83)
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag1, i64 0, i32 0, i32 0), i64 90, i8 1, i32 2), !clap !81
  call void @checker_preFence(i32 7), !clap !82
  fence seq_cst, !clap !83
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 94)
  br label %while.cond.backedge, !clap !84

while.cond.backedge:                              ; preds = %while.end, %if.else
  call void @checker_trackDynInfo(i64 75)
  call void @checker_trackDynInfo(i64 75)
  %6 = call i8 @checker_preAtomicLoad_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag0, i64 0, i32 0, i32 0), i64 95, i32 2), !clap !85
  call void @checker_addUses_1(i64 97, i64 95)
  %7 = and i8 %6, 1, !clap !86
  call void @checker_addUses_1(i64 98, i64 97)
  %tobool.i = icmp eq i8 %7, 0, !clap !87
  call void @checker_addUses_1(i64 99, i64 98)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 99)
  br i1 %tobool.i, label %while.end6.loopexit, label %while.body, !clap !88

if.else:                                          ; preds = %while.body
  call void @checker_trackDynInfo(i64 75)
  call void @checker_pre_yield(), !clap !89
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 101)
  %call.i1.i = invoke i32 @sched_yield()
          to label %while.cond.backedge unwind label %terminate.lpad.i, !clap !90

terminate.lpad.i:                                 ; preds = %if.else
  %8 = landingpad { i8*, i32 }
          catch i8* null, !clap !91
  call void @checker_addUses_1(i64 103, i64 102)
  %9 = extractvalue { i8*, i32 } %8, 0, !clap !92
  call void @checker_addUses_1(i64 104, i64 103)
  tail call void @__clang_call_terminate(i8* %9) #9, !clap !93
  unreachable, !clap !94

while.end6.loopexit:                              ; preds = %while.cond.backedge
  call void @checker_trackDynInfo(i64 99)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 106)
  br label %while.end6, !clap !95

while.end6:                                       ; preds = %while.end6.loopexit, %entry
  call void @checker_trackDynInfo(i64 69)
  call void @checker_preFence(i32 4), !clap !96
  fence acquire, !clap !97
  store i32 2, i32* @var, align 4, !tbaa !44, !clap !98
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic.0", %"struct.std::__1::atomic.0"* @turn, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !99
  call void @checker_addUses_1(i64 111, i64 110)
  call void @checker_preAtomicStore_int(i8* %myCast2, i64 111, i32 0, i32 2), !clap !100
  call void @checker_preFence(i32 5), !clap !101
  fence release, !clap !102
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag1, i64 0, i32 0, i32 0), i64 115, i8 0, i32 2), !clap !103
  tail call void @checker_thread_end(), !clap !104
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 118)
  ret void, !clap !105
}

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8, !clap !106
  %b = alloca %"class.std::__1::thread", align 8, !clap !107
  tail call void @checker_generateExecutor(), !clap !108
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !clap !109
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag0, i64 0, i32 0, i32 0), i64 123, i8 0, i32 7), !clap !110
  call void @checker_preAtomicStore_char(i8* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag1, i64 0, i32 0, i32 0), i64 125, i8 0, i32 7), !clap !111
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic.0", %"struct.std::__1::atomic.0"* @turn, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !112
  call void @checker_addUses_1(i64 128, i64 127)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 128, i32 0, i32 7), !clap !113
  call void @checker_addUses_1(i64 130, i64 119)
  %0 = bitcast %"class.std::__1::thread"* %a to i8*, !clap !114
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10, !clap !115
  call void @checker_addUses_1(i64 132, i64 119)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2p0v), !clap !116
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 133, i64 120)
  %1 = bitcast %"class.std::__1::thread"* %b to i8*, !clap !117
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #10, !clap !118
  call void @checker_currentBB(i64 135)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2p1v)
          to label %invoke.cont unwind label %lpad, !clap !119

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 136, i64 119)
  %__t_.i30 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !clap !120
  call void @checker_addUses_1(i64 137, i64 136)
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i30, align 8, !tbaa !121, !clap !123
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont6 unwind label %lpad5, !clap !124

invoke.cont6:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 139, i64 120)
  %__t_.i29 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !clap !125
  call void @checker_addUses_1(i64 140, i64 139)
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i29, align 8, !tbaa !121, !clap !126
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont11 unwind label %lpad5, !clap !127

invoke.cont11:                                    ; preds = %invoke.cont6
  call void @checker_addUses_1(i64 142, i64 136)
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i30, align 8, !tbaa !121, !clap !128
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %4)
          to label %invoke.cont16 unwind label %lpad5, !clap !129

invoke.cont16:                                    ; preds = %invoke.cont11
  call void @checker_addUses_1(i64 144, i64 139)
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i29, align 8, !tbaa !121, !clap !130
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %5)
          to label %invoke.cont21 unwind label %lpad5, !clap !131

invoke.cont21:                                    ; preds = %invoke.cont16
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont22 unwind label %lpad5, !clap !132

invoke.cont22:                                    ; preds = %invoke.cont21
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont23 unwind label %lpad5, !clap !133

invoke.cont23:                                    ; preds = %invoke.cont22
  invoke void @checker_thread_end()
          to label %invoke.cont24 unwind label %lpad5, !clap !134

invoke.cont24:                                    ; preds = %invoke.cont23
  invoke void @checker_solver()
          to label %invoke.cont25 unwind label %lpad5, !clap !135

invoke.cont25:                                    ; preds = %invoke.cont24
  call void @checker_addUses_1(i64 150, i64 120)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10, !clap !136
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !clap !137
  call void @checker_addUses_1(i64 152, i64 119)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10, !clap !138
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !clap !139
  ret i32 0, !clap !140

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !141
  call void @checker_addUses_1(i64 156, i64 155)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !142
  call void @checker_addUses_1(i64 157, i64 155)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !143
  br label %ehcleanup, !clap !144

lpad5:                                            ; preds = %invoke.cont24, %invoke.cont23, %invoke.cont22, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont6, %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !145
  call void @checker_addUses_1(i64 160, i64 159)
  %10 = extractvalue { i8*, i32 } %9, 0, !clap !146
  call void @checker_addUses_1(i64 161, i64 159)
  %11 = extractvalue { i8*, i32 } %9, 1, !clap !147
  call void @checker_addUses_1(i64 162, i64 120)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10, !clap !148
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !clap !149
  br label %ehcleanup, !clap !150

ehcleanup:                                        ; preds = %lpad5, %lpad
  %ehselector.slot.0 = phi i32 [ %11, %lpad5 ], [ %8, %lpad ], !clap !151
  %exn.slot.0 = phi i8* [ %10, %lpad5 ], [ %7, %lpad ], !clap !152
  call void @checker_handlePHI_2(i64 166, i64 160, i64 164, i64 156, i64 158)
  call void @checker_handlePHI_2(i64 165, i64 161, i64 164, i64 157, i64 158)
  call void @checker_addUses_1(i64 167, i64 119)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10, !clap !153
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !clap !154
  call void @checker_addUses_1(i64 169, i64 166)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !clap !155
  call void @checker_addUses_2(i64 170, i64 169, i64 165)
  %lpad.val27 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !clap !156
  call void @checker_addUses_1(i64 171, i64 170)
  resume { i8*, i32 } %lpad.val27, !clap !157
}

declare void @checker_generateExecutor() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !158
  %call = tail call i8* @_Znwm(i64 96) #11, !clap !159
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*, !clap !160
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !161

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !121, !clap !162
  %call1 = tail call i32 @user_main(), !clap !163
  %1 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !164
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !165
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !166
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !167
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !168
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !169
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #10, !clap !170
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !121, !clap !171
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, !clap !172
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !173, !clap !176
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1, !clap !177
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*, !clap !178
  %7 = load i64, i64* %6, align 8, !tbaa !179, !noalias !173, !clap !182
  %8 = bitcast %"class.std::__1::vector"* %schList.i15 to i64*, !clap !183
  %9 = load i64, i64* %8, align 8, !tbaa !184, !noalias !173, !clap !185
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9, !clap !186
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3, !clap !187
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0, !clap !188
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !189

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !190

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !191

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #10, !clap !192
  br label %while.end, !clap !193

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ], !clap !194
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ], !clap !195
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ], !clap !196
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951, !clap !197
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !198

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !199
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #12
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !200

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !201

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #11, !clap !202
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !203
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !179, !alias.scope !173, !clap !204
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !184, !alias.scope !173, !clap !205
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21, !clap !206
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !121, !alias.scope !173, !clap !207
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0, !clap !208
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !209
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !210

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3, !clap !211
  %14 = inttoptr i64 %10 to i8*, !clap !212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #10, !clap !213
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i, !clap !214
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !121, !alias.scope !173, !clap !215
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !216
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !217

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !218
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !219
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !184, !alias.scope !173, !clap !220
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !221
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !222

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !223
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !224
  store i64 %17, i64* %2, align 8, !tbaa !179, !alias.scope !173, !clap !225
  call void @_ZdlPv(i8* %16) #13, !clap !226
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !227

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !228

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !229
  %tobool10 = icmp eq i64 %.ph, %13, !clap !230
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #13, !clap !231
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #10, !clap !232
  br i1 %tobool10, label %while.end.loopexit, label %while.body, !clap !233

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !clap !234
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #10, !clap !235
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !121, !clap !236
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, !clap !237
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !173, !clap !238
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1, !clap !239
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !240
  %20 = load i64, i64* %19, align 8, !tbaa !179, !noalias !173, !clap !241
  %21 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !242
  %22 = load i64, i64* %21, align 8, !tbaa !184, !noalias !173, !clap !243
  %sub.ptr.sub.i.i.i.i = sub i64 %20, %22, !clap !244
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !245
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !246
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !247

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup, !clap !248
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !249
  resume { i8*, i32 } %23, !clap !250

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !251

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !252
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #5

declare void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"*) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #7 {
  call void @checker_beginFunc()
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #10, !clap !253
  call void @checker_endFunc()
  call void @checker_beginFunc()
  tail call void @_ZSt9terminatev() #9, !clap !254
  call void @checker_endFunc()
  call void @checker_currentBB(i64 262)
  unreachable, !clap !255
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare i32 @sched_yield() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #11, !clap !256
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 264, i64 263)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !257
  call void @checker_currentBB(i64 265)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !258

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !259

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 267, i64 263)
  %1 = ptrtoint i8* %call to i64, !clap !260
  %2 = ptrtoint void ()* %__f to i64, !clap !261
  call void @checker_addUses_1(i64 269, i64 266)
  %3 = bitcast i8* %call4 to i64*, !clap !262
  call void @checker_addUses_2(i64 270, i64 267, i64 269)
  store i64 %1, i64* %3, align 8, !tbaa !263, !clap !265
  call void @checker_addUses_1(i64 271, i64 266)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !266
  call void @checker_addUses_1(i64 272, i64 271)
  %5 = bitcast i8* %4 to i64*, !clap !267
  call void @checker_addUses_2(i64 273, i64 268, i64 272)
  store i64 %2, i64* %5, align 8, !tbaa !268, !clap !270
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !271
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !272

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 276, i64 275)
  %cmp = icmp eq i32 %call.i31, 0, !clap !273
  call void @checker_addUses_1(i64 277, i64 276)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !274

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 277)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 278)
  ret void, !clap !275

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !276
  call void @checker_addUses_1(i64 280, i64 279)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !277
  call void @checker_addUses_1(i64 281, i64 279)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !278
  call void @checker_addUses_1(i64 282, i64 263)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !279
  br label %eh.resume, !clap !280

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !281
  br label %delete.notnull.i.i.i.i, !clap !282

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 277)
  call void @checker_addUses_1(i64 286, i64 275)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 286)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #12
          to label %invoke.cont16 unwind label %lpad15, !clap !283

invoke.cont16:                                    ; preds = %if.else
  call void @checker_trackDynInfo(i64 277)
  unreachable, !clap !284

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !285
  br label %delete.notnull.i.i.i.i, !clap !286

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !287
  call void @checker_handlePHI_2(i64 290, i64 288, i64 289, i64 284, i64 285)
  call void @checker_addUses_1(i64 291, i64 290)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !288
  call void @checker_addUses_1(i64 292, i64 290)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !289
  call void @checker_addUses_1(i64 293, i64 266)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !290
  call void @checker_addUses_1(i64 294, i64 293)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !121, !clap !291
  call void @checker_addUses_1(i64 295, i64 293)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !121, !clap !292
  call void @checker_addUses_1(i64 296, i64 294)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !293
  call void @checker_addUses_1(i64 297, i64 296)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !294

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 297)
  call void @checker_addUses_1(i64 298, i64 294)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10, !clap !295
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 299, i64 294)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !296
  call void @checker_addUses_1(i64 300, i64 299)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #13, !clap !297
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 301)
  br label %ehcleanup18.thread, !clap !298

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 297)
  call void @checker_addUses_1(i64 302, i64 266)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #13, !clap !299
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 303)
  br label %eh.resume, !clap !300

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !301
  call void @checker_addUses_1(i64 305, i64 304)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !302
  call void @checker_addUses_1(i64 306, i64 304)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !303
  call void @checker_addUses_1(i64 307, i64 264)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10, !clap !304
  call void @checker_addUses_1(i64 308, i64 263)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !305
  br label %eh.resume, !clap !306

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !307
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !308
  call void @checker_handlePHI_3(i64 311, i64 280, i64 283, i64 305, i64 309, i64 291, i64 303)
  call void @checker_handlePHI_3(i64 310, i64 281, i64 283, i64 306, i64 309, i64 292, i64 303)
  call void @checker_addUses_1(i64 312, i64 311)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !309
  call void @checker_addUses_2(i64 313, i64 312, i64 310)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !310
  call void @checker_addUses_1(i64 314, i64 313)
  resume { i8*, i32 } %lpad.val20, !clap !311
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 315)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !312

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !313
  %0 = bitcast i8* %__vp to i8**, !clap !314
  call void @checker_addUses_1(i64 318, i64 317)
  %1 = load i8*, i8** %0, align 8, !tbaa !121, !clap !315
  call void @checker_addUses_1(i64 319, i64 316)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !121, !clap !316
  call void @checker_addUses_1(i64 320, i64 315)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !317
  call void @checker_addUses_1(i64 321, i64 320)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !318, !clap !321
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !322

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !323
  call void @checker_addUses_1(i64 324, i64 323)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !324
  call void @checker_addUses_1(i64 325, i64 324)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !121, !clap !325
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !326

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 327, i64 316)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !121, !clap !327
  call void @checker_addUses_1(i64 328, i64 316)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !121, !clap !328
  call void @checker_addUses_1(i64 329, i64 327)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !329
  call void @checker_addUses_1(i64 330, i64 329)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !330

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 330)
  call void @checker_addUses_1(i64 331, i64 327)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10, !clap !331
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 332, i64 327)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !332
  call void @checker_addUses_1(i64 333, i64 332)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #13, !clap !333
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 334)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !334

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 330)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !335
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 336)
  ret i8* null, !clap !336

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !337
  br label %delete.notnull.i.i.i.i, !clap !338

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !339
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !340
  call void @checker_addUses_1(i64 341, i64 340)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !341

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 341)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !342
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 343)
  br label %delete.notnull.i.i.i.i, !clap !343

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !344
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !345
  call void @checker_handlePHI_2(i64 345, i64 339, i64 343, i64 337, i64 338)
  call void @checker_handlePHI_2(i64 344, i64 342, i64 343, i64 316, i64 338)
  call void @checker_addUses_1(i64 346, i64 344)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !121, !clap !346
  call void @checker_addUses_1(i64 347, i64 344)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !121, !clap !347
  call void @checker_addUses_1(i64 348, i64 346)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !348
  call void @checker_addUses_1(i64 349, i64 348)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !349

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 349)
  call void @checker_addUses_1(i64 350, i64 346)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10, !clap !350
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 351, i64 346)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !351
  call void @checker_addUses_1(i64 352, i64 351)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #13, !clap !352
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 353)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !353

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 349)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !354
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 355)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !355

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !356
  call void @checker_handlePHI_2(i64 356, i64 339, i64 341, i64 345, i64 355)
  call void @checker_addUses_1(i64 357, i64 356)
  resume { i8*, i32 } %lpad.phi30, !clap !357
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #8

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

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
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{i64 1}
!3 = !{i64 2}
!4 = !{i64 4}
!5 = !{i64 5}
!6 = !{i64 6}
!7 = !{i64 8}
!8 = !{i64 9}
!9 = !{i64 10}
!10 = !{i64 11}
!11 = !{i64 12}
!12 = !{i64 13}
!13 = !{i64 15}
!14 = !{i64 16}
!15 = !{i64 17}
!16 = !{i64 19}
!17 = !{i64 20}
!18 = !{i64 21}
!19 = !{i64 23}
!20 = !{i64 24}
!21 = !{i64 25}
!22 = !{i64 26}
!23 = !{i64 27}
!24 = !{i64 28}
!25 = !{i64 29}
!26 = !{i64 30}
!27 = !{i64 31}
!28 = !{i64 33}
!29 = !{i64 34}
!30 = !{i64 35}
!31 = !{i64 36}
!32 = !{i64 38}
!33 = !{i64 39}
!34 = !{i64 40}
!35 = !{i64 41}
!36 = !{i64 42}
!37 = !{i64 43}
!38 = !{i64 44}
!39 = !{i64 45}
!40 = !{i64 46}
!41 = !{i64 47}
!42 = !{i64 48}
!43 = !{i64 49}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{i64 50}
!49 = !{i64 51}
!50 = !{i64 52}
!51 = !{i64 54}
!52 = !{i64 55}
!53 = !{i64 56}
!54 = !{i64 58}
!55 = !{i64 59}
!56 = !{i64 60}
!57 = !{i64 61}
!58 = !{i64 63}
!59 = !{i64 64}
!60 = !{i64 65}
!61 = !{i64 67}
!62 = !{i64 68}
!63 = !{i64 69}
!64 = !{i64 70}
!65 = !{i64 71}
!66 = !{i64 72}
!67 = !{i64 74}
!68 = !{i64 75}
!69 = !{i64 76}
!70 = !{i64 78}
!71 = !{i64 79}
!72 = !{i64 80}
!73 = !{i64 82}
!74 = !{i64 83}
!75 = !{i64 84}
!76 = !{i64 85}
!77 = !{i64 86}
!78 = !{i64 87}
!79 = !{i64 88}
!80 = !{i64 89}
!81 = !{i64 90}
!82 = !{i64 92}
!83 = !{i64 93}
!84 = !{i64 94}
!85 = !{i64 95}
!86 = !{i64 97}
!87 = !{i64 98}
!88 = !{i64 99}
!89 = !{i64 100}
!90 = !{i64 101}
!91 = !{i64 102}
!92 = !{i64 103}
!93 = !{i64 104}
!94 = !{i64 105}
!95 = !{i64 106}
!96 = !{i64 107}
!97 = !{i64 108}
!98 = !{i64 109}
!99 = !{i64 110}
!100 = !{i64 111}
!101 = !{i64 113}
!102 = !{i64 114}
!103 = !{i64 115}
!104 = !{i64 117}
!105 = !{i64 118}
!106 = !{i64 119}
!107 = !{i64 120}
!108 = !{i64 121}
!109 = !{i64 122}
!110 = !{i64 123}
!111 = !{i64 125}
!112 = !{i64 127}
!113 = !{i64 128}
!114 = !{i64 130}
!115 = !{i64 131}
!116 = !{i64 132}
!117 = !{i64 133}
!118 = !{i64 134}
!119 = !{i64 135}
!120 = !{i64 136}
!121 = !{!122, !122, i64 0}
!122 = !{!"any pointer", !46, i64 0}
!123 = !{i64 137}
!124 = !{i64 138}
!125 = !{i64 139}
!126 = !{i64 140}
!127 = !{i64 141}
!128 = !{i64 142}
!129 = !{i64 143}
!130 = !{i64 144}
!131 = !{i64 145}
!132 = !{i64 146}
!133 = !{i64 147}
!134 = !{i64 148}
!135 = !{i64 149}
!136 = !{i64 150}
!137 = !{i64 151}
!138 = !{i64 152}
!139 = !{i64 153}
!140 = !{i64 154}
!141 = !{i64 155}
!142 = !{i64 156}
!143 = !{i64 157}
!144 = !{i64 158}
!145 = !{i64 159}
!146 = !{i64 160}
!147 = !{i64 161}
!148 = !{i64 162}
!149 = !{i64 163}
!150 = !{i64 164}
!151 = !{i64 165}
!152 = !{i64 166}
!153 = !{i64 167}
!154 = !{i64 168}
!155 = !{i64 169}
!156 = !{i64 170}
!157 = !{i64 171}
!158 = !{i64 172}
!159 = !{i64 173}
!160 = !{i64 174}
!161 = !{i64 175}
!162 = !{i64 176}
!163 = !{i64 177}
!164 = !{i64 178}
!165 = !{i64 179}
!166 = !{i64 180}
!167 = !{i64 181}
!168 = !{i64 182}
!169 = !{i64 183}
!170 = !{i64 184}
!171 = !{i64 185}
!172 = !{i64 186}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!175 = distinct !{!175, !"_ZN7checker12ModelChecker10getSchListEv"}
!176 = !{i64 187}
!177 = !{i64 188}
!178 = !{i64 189}
!179 = !{!180, !122, i64 8}
!180 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !122, i64 0, !122, i64 8, !181, i64 16}
!181 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!182 = !{i64 190}
!183 = !{i64 191}
!184 = !{!180, !122, i64 0}
!185 = !{i64 192}
!186 = !{i64 193}
!187 = !{i64 194}
!188 = !{i64 195}
!189 = !{i64 196}
!190 = !{i64 197}
!191 = !{i64 198}
!192 = !{i64 199}
!193 = !{i64 200}
!194 = !{i64 201}
!195 = !{i64 202}
!196 = !{i64 203}
!197 = !{i64 204}
!198 = !{i64 205}
!199 = !{i64 206}
!200 = !{i64 207}
!201 = !{i64 208}
!202 = !{i64 209}
!203 = !{i64 210}
!204 = !{i64 211}
!205 = !{i64 212}
!206 = !{i64 213}
!207 = !{i64 214}
!208 = !{i64 215}
!209 = !{i64 216}
!210 = !{i64 217}
!211 = !{i64 218}
!212 = !{i64 219}
!213 = !{i64 220}
!214 = !{i64 221}
!215 = !{i64 222}
!216 = !{i64 223}
!217 = !{i64 224}
!218 = !{i64 225}
!219 = !{i64 226}
!220 = !{i64 227}
!221 = !{i64 228}
!222 = !{i64 229}
!223 = !{i64 230}
!224 = !{i64 231}
!225 = !{i64 232}
!226 = !{i64 233}
!227 = !{i64 234}
!228 = !{i64 235}
!229 = !{i64 236}
!230 = !{i64 237}
!231 = !{i64 238}
!232 = !{i64 239}
!233 = !{i64 240}
!234 = !{i64 241}
!235 = !{i64 242}
!236 = !{i64 243}
!237 = !{i64 244}
!238 = !{i64 245}
!239 = !{i64 246}
!240 = !{i64 247}
!241 = !{i64 248}
!242 = !{i64 249}
!243 = !{i64 250}
!244 = !{i64 251}
!245 = !{i64 252}
!246 = !{i64 253}
!247 = !{i64 254}
!248 = !{i64 255}
!249 = !{i64 256}
!250 = !{i64 257}
!251 = !{i64 258}
!252 = !{i64 259}
!253 = !{i64 260}
!254 = !{i64 261}
!255 = !{i64 262}
!256 = !{i64 263}
!257 = !{i64 264}
!258 = !{i64 265}
!259 = !{i64 266}
!260 = !{i64 267}
!261 = !{i64 268}
!262 = !{i64 269}
!263 = !{!264, !122, i64 0}
!264 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !122, i64 0}
!265 = !{i64 270}
!266 = !{i64 271}
!267 = !{i64 272}
!268 = !{!269, !122, i64 0}
!269 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !122, i64 0}
!270 = !{i64 273}
!271 = !{i64 274}
!272 = !{i64 275}
!273 = !{i64 276}
!274 = !{i64 277}
!275 = !{i64 278}
!276 = !{i64 279}
!277 = !{i64 280}
!278 = !{i64 281}
!279 = !{i64 282}
!280 = !{i64 283}
!281 = !{i64 284}
!282 = !{i64 285}
!283 = !{i64 286}
!284 = !{i64 287}
!285 = !{i64 288}
!286 = !{i64 289}
!287 = !{i64 290}
!288 = !{i64 291}
!289 = !{i64 292}
!290 = !{i64 293}
!291 = !{i64 294}
!292 = !{i64 295}
!293 = !{i64 296}
!294 = !{i64 297}
!295 = !{i64 298}
!296 = !{i64 299}
!297 = !{i64 300}
!298 = !{i64 301}
!299 = !{i64 302}
!300 = !{i64 303}
!301 = !{i64 304}
!302 = !{i64 305}
!303 = !{i64 306}
!304 = !{i64 307}
!305 = !{i64 308}
!306 = !{i64 309}
!307 = !{i64 310}
!308 = !{i64 311}
!309 = !{i64 312}
!310 = !{i64 313}
!311 = !{i64 314}
!312 = !{i64 315}
!313 = !{i64 316}
!314 = !{i64 317}
!315 = !{i64 318}
!316 = !{i64 319}
!317 = !{i64 320}
!318 = !{!319, !320, i64 0}
!319 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !320, i64 0}
!320 = !{!"long", !46, i64 0}
!321 = !{i64 321}
!322 = !{i64 322}
!323 = !{i64 323}
!324 = !{i64 324}
!325 = !{i64 325}
!326 = !{i64 326}
!327 = !{i64 327}
!328 = !{i64 328}
!329 = !{i64 329}
!330 = !{i64 330}
!331 = !{i64 331}
!332 = !{i64 332}
!333 = !{i64 333}
!334 = !{i64 334}
!335 = !{i64 335}
!336 = !{i64 336}
!337 = !{i64 337}
!338 = !{i64 338}
!339 = !{i64 339}
!340 = !{i64 340}
!341 = !{i64 341}
!342 = !{i64 342}
!343 = !{i64 343}
!344 = !{i64 344}
!345 = !{i64 345}
!346 = !{i64 346}
!347 = !{i64 347}
!348 = !{i64 348}
!349 = !{i64 349}
!350 = !{i64 350}
!351 = !{i64 351}
!352 = !{i64 352}
!353 = !{i64 353}
!354 = !{i64 354}
!355 = !{i64 355}
!356 = !{i64 356}
!357 = !{i64 357}
