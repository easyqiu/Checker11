; ModuleID = 'x.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.Deque = type { i64, i64, i64 }
%"class.checker::ModelChecker" = type { i32, %"class.std::__1::vector", %"class.checker::Executor"*, %"class.std::__1::vector.29", %"class.std::__1::vector.29", double }
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %"class.checker::Schedule"**, %"class.checker::Schedule"**, %"class.std::__1::__compressed_pair.24" }
%"class.checker::Schedule" = type { %"class.std::__1::map", %"class.std::__1::map", %"class.std::__1::map", %struct._opaque_pthread_attr_t }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.1" = type { %"class.std::__1::__thread_specific_ptr" }
%"class.std::__1::__thread_specific_ptr" = type { i64 }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__compressed_pair.24" = type { %"struct.std::__1::__compressed_pair_elem.25" }
%"struct.std::__1::__compressed_pair_elem.25" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
%"class.std::__1::vector.29" = type { %"class.std::__1::__vector_base.30" }
%"class.std::__1::__vector_base.30" = type { %"class.std::__1::map"*, %"class.std::__1::map"*, %"class.std::__1::__compressed_pair.31" }
%"class.std::__1::__compressed_pair.31" = type { %"struct.std::__1::__compressed_pair_elem.32" }
%"struct.std::__1::__compressed_pair_elem.32" = type { %"class.std::__1::map"* }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::__vector_base_common" = type { i8 }
%struct.Array = type { i64, [0 x i32] }

@q = local_unnamed_addr global %struct.Deque* null, align 8
@a = local_unnamed_addr global i32 0, align 4
@b = local_unnamed_addr global i32 0, align 4
@c = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"a=%d b=%d c=%d\0A\00", align 1
@__func__.user_main = private unnamed_addr constant [10 x i8] c"user_main\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@str = private unnamed_addr constant [7 x i8] c"resize\00"

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %t = alloca %"class.std::__1::thread", align 8, !clap !2
  tail call void @checker_generateExecutor(), !clap !3
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !clap !4
  call void @checker_beginFunc()
  %call = tail call %struct.Deque* @create(), !clap !5
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 5, i64 4)
  store %struct.Deque* %call, %struct.Deque** @q, align 8, !tbaa !6, !clap !10
  call void @checker_addUses_1(i64 6, i64 1)
  %0 = bitcast %"class.std::__1::thread"* %t to i8*, !clap !11
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10, !clap !12
  call void @checker_addUses_1(i64 8, i64 1)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t, void ()* nonnull @_ZL4taskv), !clap !13
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 9, i64 1)
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t, i64 0, i32 0, !clap !14
  call void @checker_addUses_1(i64 10, i64 9)
  %1 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !6, !clap !15
  call void @checker_currentBB(i64 11)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %1)
          to label %invoke.cont unwind label %lpad, !clap !16

invoke.cont:                                      ; preds = %entry
  %2 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !6, !clap !17
  invoke void @push(%struct.Deque* %2, i32 1)
          to label %invoke.cont3 unwind label %lpad, !clap !18

invoke.cont3:                                     ; preds = %invoke.cont
  %3 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !6, !clap !19
  invoke void @push(%struct.Deque* %3, i32 2)
          to label %invoke.cont4 unwind label %lpad, !clap !20

invoke.cont4:                                     ; preds = %invoke.cont3
  %4 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !6, !clap !21
  invoke void @push(%struct.Deque* %4, i32 4)
          to label %invoke.cont5 unwind label %lpad, !clap !22

invoke.cont5:                                     ; preds = %invoke.cont4
  %5 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !6, !clap !23
  %call7 = invoke i32 @take(%struct.Deque* %5)
          to label %invoke.cont6 unwind label %lpad, !clap !24

invoke.cont6:                                     ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 20, i64 19)
  store i32 %call7, i32* @b, align 4, !tbaa !25, !clap !27
  %6 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !6, !clap !28
  %call9 = invoke i32 @take(%struct.Deque* %6)
          to label %invoke.cont8 unwind label %lpad, !clap !29

invoke.cont8:                                     ; preds = %invoke.cont6
  call void @checker_addUses_1(i64 23, i64 22)
  store i32 %call9, i32* @c, align 4, !tbaa !25, !clap !30
  call void @checker_addUses_1(i64 24, i64 9)
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !6, !clap !31
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %7)
          to label %invoke.cont14 unwind label %lpad, !clap !32

invoke.cont14:                                    ; preds = %invoke.cont8
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t)
          to label %invoke.cont15 unwind label %lpad, !clap !33

invoke.cont15:                                    ; preds = %invoke.cont14
  %8 = load i32, i32* @a, align 4, !tbaa !25, !clap !34
  call void @checker_addUses_1(i64 28, i64 27)
  %switch.tableidx = add i32 %8, 1, !clap !35
  call void @checker_addUses_1(i64 29, i64 28)
  %9 = icmp ult i32 %switch.tableidx, 6, !clap !36
  call void @checker_addUses_1(i64 30, i64 29)
  br i1 %9, label %switch.lookup, label %if.end, !clap !37

lpad:                                             ; preds = %invoke.cont14, %invoke.cont8, %invoke.cont6, %invoke.cont5, %invoke.cont4, %invoke.cont3, %invoke.cont, %entry
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !38
  br label %ehcleanup, !clap !39

switch.lookup:                                    ; preds = %invoke.cont15
  call void @checker_trackDynInfo(i64 30)
  call void @checker_addUses_1(i64 33, i64 28)
  %switch.cast = zext i32 %switch.tableidx to i48, !clap !40
  call void @checker_addUses_1(i64 34, i64 33)
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 3, !clap !41
  call void @checker_addUses_1(i64 35, i64 34)
  %switch.downshift = lshr i48 1099528470529, %switch.shiftamt, !clap !42
  call void @checker_addUses_1(i64 36, i64 35)
  %switch.masked = trunc i48 %switch.downshift to i8, !clap !43
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 37)
  br label %if.end, !clap !44

if.end:                                           ; preds = %invoke.cont15, %switch.lookup
  %correct.0 = phi i8 [ %switch.masked, %switch.lookup ], [ 0, %invoke.cont15 ], !clap !45
  call void @checker_trackDynInfo(i64 30)
  call void @checker_handlePHI_2(i64 38, i64 36, i64 37, i64 0, i64 30)
  %11 = load i32, i32* @b, align 4, !tbaa !25, !clap !46
  call void @checker_addUses_1(i64 40, i64 39)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 40)
  switch i32 %11, label %if.then28 [
    i32 -1, label %if.end29
    i32 4, label %if.end29
    i32 2, label %if.end29
    i32 1, label %if.end29
  ], !clap !47

if.then28:                                        ; preds = %if.end
  call void @checker_trackDynInfo(i64 40)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 41)
  br label %if.end29, !clap !48

if.end29:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.then28
  %correct.1 = phi i8 [ 0, %if.then28 ], [ %correct.0, %if.end ], [ %correct.0, %if.end ], [ %correct.0, %if.end ], [ %correct.0, %if.end ], !clap !49
  call void @checker_trackDynInfo(i64 40)
  call void @checker_handlePHI_5(i64 42, i64 0, i64 41, i64 38, i64 40, i64 38, i64 40, i64 38, i64 40, i64 38, i64 40)
  call void @checker_addUses_1(i64 43, i64 27)
  %cmp36 = icmp eq i32 %8, -1, !clap !50
  %.pre = load i32, i32* @c, align 4, !clap !51
  call void @checker_addUses_1(i64 45, i64 43)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 45)
  br i1 %cmp36, label %if.end48, label %switch.early.test, !clap !52

switch.early.test:                                ; preds = %if.end29
  call void @checker_trackDynInfo(i64 45)
  call void @checker_addUses_1(i64 46, i64 44)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 46)
  switch i32 %.pre, label %if.then37 [
    i32 4, label %if.end38
    i32 2, label %if.end38
    i32 1, label %if.end38
  ], !clap !53

if.then37:                                        ; preds = %switch.early.test
  call void @checker_trackDynInfo(i64 46)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 47)
  br label %if.end38, !clap !54

if.end38:                                         ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %if.then37
  %correct.2 = phi i8 [ 0, %if.then37 ], [ %correct.1, %switch.early.test ], [ %correct.1, %switch.early.test ], [ %correct.1, %switch.early.test ], !clap !55
  call void @checker_trackDynInfo(i64 46)
  call void @checker_handlePHI_4(i64 48, i64 0, i64 47, i64 42, i64 46, i64 42, i64 46, i64 42, i64 46)
  call void @checker_addUses_1(i64 49, i64 39)
  %cmp41 = icmp ne i32 %11, -1, !clap !56
  call void @checker_addUses_1(i64 50, i64 44)
  %cmp43 = icmp ne i32 %.pre, -1, !clap !57
  call void @checker_addUses_2(i64 51, i64 49, i64 50)
  %or.cond70 = and i1 %cmp41, %cmp43, !clap !58
  call void @checker_addUses_1(i64 52, i64 51)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 52)
  br i1 %or.cond70, label %land.lhs.true44, label %if.end48, !clap !59

land.lhs.true44:                                  ; preds = %if.end38
  call void @checker_trackDynInfo(i64 52)
  call void @checker_addUses_2(i64 53, i64 39, i64 27)
  %add = add nsw i32 %11, %8, !clap !60
  call void @checker_addUses_2(i64 54, i64 53, i64 44)
  %add45 = add nsw i32 %add, %.pre, !clap !61
  call void @checker_addUses_1(i64 55, i64 54)
  %cmp46 = icmp eq i32 %add45, 7, !clap !62
  call void @checker_addUses_2(i64 56, i64 55, i64 48)
  %correct.2. = select i1 %cmp46, i8 %correct.2, i8 0, !clap !63
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 57)
  br label %if.end48, !clap !64

if.end48:                                         ; preds = %if.end29, %land.lhs.true44, %if.end38
  %correct.3 = phi i8 [ %correct.2, %if.end38 ], [ %correct.2., %land.lhs.true44 ], [ %correct.1, %if.end29 ], !clap !65
  call void @checker_trackDynInfo(i64 45)
  call void @checker_handlePHI_3(i64 58, i64 48, i64 52, i64 56, i64 57, i64 42, i64 45)
  call void @checker_addUses_1(i64 59, i64 58)
  %12 = and i8 %correct.3, 1, !clap !66
  call void @checker_addUses_1(i64 60, i64 59)
  %tobool = icmp eq i8 %12, 0, !clap !67
  call void @checker_addUses_1(i64 61, i64 60)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 61)
  br i1 %tobool, label %if.then49, label %cond.end, !clap !68

if.then49:                                        ; preds = %if.end48
  call void @checker_trackDynInfo(i64 61)
  call void @checker_addUses_3(i64 62, i64 27, i64 39, i64 44)
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %11, i32 %.pre), !clap !69
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 63)
  invoke void @__assert_rtn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.user_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #11
          to label %invoke.cont56 unwind label %lpad50, !clap !70

lpad50:                                           ; preds = %invoke.cont57, %cond.end, %if.then49
  %13 = landingpad { i8*, i32 }
          cleanup, !clap !71
  br label %ehcleanup, !clap !72

invoke.cont56:                                    ; preds = %if.then49
  call void @checker_trackDynInfo(i64 61)
  unreachable, !clap !73

cond.end:                                         ; preds = %if.end48
  call void @checker_trackDynInfo(i64 61)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 67)
  invoke void @checker_thread_end()
          to label %invoke.cont57 unwind label %lpad50, !clap !74

invoke.cont57:                                    ; preds = %cond.end
  call void @checker_trackDynInfo(i64 61)
  invoke void @checker_solver()
          to label %invoke.cont58 unwind label %lpad50, !clap !75

invoke.cont58:                                    ; preds = %invoke.cont57
  call void @checker_addUses_1(i64 69, i64 1)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t) #10, !clap !76
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !clap !77
  ret i32 0, !clap !78

ehcleanup:                                        ; preds = %lpad50, %lpad
  %.sink76 = phi { i8*, i32 } [ %13, %lpad50 ], [ %10, %lpad ], !clap !79
  call void @checker_handlePHI_2(i64 72, i64 64, i64 65, i64 31, i64 32)
  call void @checker_addUses_1(i64 73, i64 1)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t) #10, !clap !80
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !clap !81
  call void @checker_addUses_1(i64 75, i64 72)
  resume { i8*, i32 } %.sink76, !clap !82
}

declare i32 @__gxx_personality_v0(...)

declare void @checker_generateExecutor() local_unnamed_addr #1

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define internal void @_ZL4taskv() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !clap !83
  %0 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !6, !clap !84
  call void @checker_addUses_1(i64 78, i64 77)
  call void @checker_beginFunc()
  %call = tail call i32 @steal(%struct.Deque* %0), !clap !85
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 79, i64 78)
  store i32 %call, i32* @a, align 4, !tbaa !25, !clap !86
  tail call void @checker_thread_end(), !clap !87
  call void @checker_currentBB(i64 81)
  ret void, !clap !88
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #12, !clap !89
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 83, i64 82)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !90
  call void @checker_currentBB(i64 84)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !91

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #12
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !92

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 86, i64 82)
  %1 = ptrtoint i8* %call to i64, !clap !93
  %2 = ptrtoint void ()* %__f to i64, !clap !94
  call void @checker_addUses_1(i64 88, i64 85)
  %3 = bitcast i8* %call4 to i64*, !clap !95
  call void @checker_addUses_2(i64 89, i64 86, i64 88)
  store i64 %1, i64* %3, align 8, !tbaa !96, !clap !98
  call void @checker_addUses_1(i64 90, i64 85)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !99
  call void @checker_addUses_1(i64 91, i64 90)
  %5 = bitcast i8* %4 to i64*, !clap !100
  call void @checker_addUses_2(i64 92, i64 87, i64 91)
  store i64 %2, i64* %5, align 8, !tbaa !101, !clap !103
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !104
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !105

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 95, i64 94)
  %cmp = icmp eq i32 %call.i31, 0, !clap !106
  call void @checker_addUses_1(i64 96, i64 95)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !107

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 96)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 97)
  ret void, !clap !108

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !109
  call void @checker_addUses_1(i64 99, i64 98)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !110
  call void @checker_addUses_1(i64 100, i64 98)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !111
  call void @checker_addUses_1(i64 101, i64 82)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !112
  br label %eh.resume, !clap !113

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !114
  br label %delete.notnull.i.i.i.i, !clap !115

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 96)
  call void @checker_addUses_1(i64 105, i64 94)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 105)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #11
          to label %invoke.cont16 unwind label %lpad15, !clap !116

invoke.cont16:                                    ; preds = %if.else
  call void @checker_trackDynInfo(i64 96)
  unreachable, !clap !117

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !118
  br label %delete.notnull.i.i.i.i, !clap !119

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !120
  call void @checker_handlePHI_2(i64 109, i64 107, i64 108, i64 103, i64 104)
  call void @checker_addUses_1(i64 110, i64 109)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !121
  call void @checker_addUses_1(i64 111, i64 109)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !122
  call void @checker_addUses_1(i64 112, i64 85)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !123
  call void @checker_addUses_1(i64 113, i64 112)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !6, !clap !124
  call void @checker_addUses_1(i64 114, i64 112)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !6, !clap !125
  call void @checker_addUses_1(i64 115, i64 113)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !126
  call void @checker_addUses_1(i64 116, i64 115)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !127

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 116)
  call void @checker_addUses_1(i64 117, i64 113)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10, !clap !128
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 118, i64 113)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !129
  call void @checker_addUses_1(i64 119, i64 118)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #13, !clap !130
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 120)
  br label %ehcleanup18.thread, !clap !131

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 116)
  call void @checker_addUses_1(i64 121, i64 85)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #13, !clap !132
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 122)
  br label %eh.resume, !clap !133

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !134
  call void @checker_addUses_1(i64 124, i64 123)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !135
  call void @checker_addUses_1(i64 125, i64 123)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !136
  call void @checker_addUses_1(i64 126, i64 83)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10, !clap !137
  call void @checker_addUses_1(i64 127, i64 82)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !138
  br label %eh.resume, !clap !139

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !140
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !141
  call void @checker_handlePHI_3(i64 130, i64 99, i64 102, i64 124, i64 128, i64 110, i64 122)
  call void @checker_handlePHI_3(i64 129, i64 100, i64 102, i64 125, i64 128, i64 111, i64 122)
  call void @checker_addUses_1(i64 131, i64 130)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !142
  call void @checker_addUses_2(i64 132, i64 131, i64 129)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !143
  call void @checker_addUses_1(i64 133, i64 132)
  resume { i8*, i32 } %lpad.val20, !clap !144
}

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #4

declare void @checker_thread_end() local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #5

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 134)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !145

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !146
  %0 = bitcast i8* %__vp to i8**, !clap !147
  call void @checker_addUses_1(i64 137, i64 136)
  %1 = load i8*, i8** %0, align 8, !tbaa !6, !clap !148
  call void @checker_addUses_1(i64 138, i64 135)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !6, !clap !149
  call void @checker_addUses_1(i64 139, i64 134)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !150
  call void @checker_addUses_1(i64 140, i64 139)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !151, !clap !154
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !155

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !156
  call void @checker_addUses_1(i64 143, i64 142)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !157
  call void @checker_addUses_1(i64 144, i64 143)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !6, !clap !158
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !159

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 146, i64 135)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !6, !clap !160
  call void @checker_addUses_1(i64 147, i64 135)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !6, !clap !161
  call void @checker_addUses_1(i64 148, i64 146)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !162
  call void @checker_addUses_1(i64 149, i64 148)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !163

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 149)
  call void @checker_addUses_1(i64 150, i64 146)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10, !clap !164
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 151, i64 146)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !165
  call void @checker_addUses_1(i64 152, i64 151)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #13, !clap !166
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 153)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !167

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 149)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !168
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 155)
  ret i8* null, !clap !169

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !170
  br label %delete.notnull.i.i.i.i, !clap !171

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !172
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !173
  call void @checker_addUses_1(i64 160, i64 159)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !174

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 160)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !175
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 162)
  br label %delete.notnull.i.i.i.i, !clap !176

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !177
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !178
  call void @checker_handlePHI_2(i64 164, i64 158, i64 162, i64 156, i64 157)
  call void @checker_handlePHI_2(i64 163, i64 161, i64 162, i64 135, i64 157)
  call void @checker_addUses_1(i64 165, i64 163)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !6, !clap !179
  call void @checker_addUses_1(i64 166, i64 163)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !6, !clap !180
  call void @checker_addUses_1(i64 167, i64 165)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !181
  call void @checker_addUses_1(i64 168, i64 167)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !182

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 168)
  call void @checker_addUses_1(i64 169, i64 165)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10, !clap !183
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 170, i64 165)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !184
  call void @checker_addUses_1(i64 171, i64 170)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #13, !clap !185
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 172)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !186

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 168)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !187
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 174)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !188

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !189
  call void @checker_handlePHI_2(i64 175, i64 158, i64 160, i64 164, i64 174)
  call void @checker_addUses_1(i64 176, i64 175)
  resume { i8*, i32 } %lpad.phi30, !clap !190
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !191
  %call = tail call i8* @_Znwm(i64 96) #12, !clap !192
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*, !clap !193
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !194

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !6, !clap !195
  %call1 = tail call i32 @user_main(), !clap !196
  %1 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !197
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !198
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !199
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !200
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !201
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !202
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #10, !clap !203
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !6, !clap !204
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, !clap !205
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !206, !clap !209
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1, !clap !210
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*, !clap !211
  %7 = load i64, i64* %6, align 8, !tbaa !212, !noalias !206, !clap !215
  %8 = bitcast %"class.std::__1::vector"* %schList.i15 to i64*, !clap !216
  %9 = load i64, i64* %8, align 8, !tbaa !217, !noalias !206, !clap !218
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9, !clap !219
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3, !clap !220
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0, !clap !221
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !222

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !223

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !224

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #10, !clap !225
  br label %while.end, !clap !226

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ], !clap !227
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ], !clap !228
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ], !clap !229
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951, !clap !230
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !231

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !232
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #11
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !233

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !234

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #12, !clap !235
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !236
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !212, !alias.scope !206, !clap !237
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !217, !alias.scope !206, !clap !238
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21, !clap !239
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !6, !alias.scope !206, !clap !240
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0, !clap !241
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !242
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !243

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3, !clap !244
  %14 = inttoptr i64 %10 to i8*, !clap !245
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #10, !clap !246
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i, !clap !247
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !6, !alias.scope !206, !clap !248
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !249
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !250

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !251
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !252
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !217, !alias.scope !206, !clap !253
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !254
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !255

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !256
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !257
  store i64 %17, i64* %2, align 8, !tbaa !212, !alias.scope !206, !clap !258
  call void @_ZdlPv(i8* %16) #13, !clap !259
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !260

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !261

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !262
  %tobool10 = icmp eq i64 %.ph, %13, !clap !263
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #13, !clap !264
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #10, !clap !265
  br i1 %tobool10, label %while.end.loopexit, label %while.body, !clap !266

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !clap !267
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #10, !clap !268
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !6, !clap !269
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, !clap !270
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !206, !clap !271
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1, !clap !272
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !273
  %20 = load i64, i64* %19, align 8, !tbaa !212, !noalias !206, !clap !274
  %21 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !275
  %22 = load i64, i64* %21, align 8, !tbaa !217, !noalias !206, !clap !276
  %sub.ptr.sub.i.i.i.i = sub i64 %20, %22, !clap !277
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !278
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !279
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !280

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup, !clap !281
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !282
  resume { i8*, i32 } %23, !clap !283

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !284

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !285
}

declare void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"*) unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind ssp uwtable
define noalias %struct.Deque* @create() local_unnamed_addr #8 {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @calloc(i64 1, i64 24), !clap !286
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 266, i64 265)
  %0 = bitcast i8* %call to %struct.Deque*, !clap !287
  call void @checker_beginFunc()
  %call1 = tail call i8* @calloc(i64 1, i64 16), !clap !288
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 268, i64 265)
  %array = getelementptr inbounds i8, i8* %call, i64 16, !clap !289
  call void @checker_addUses_1(i64 269, i64 268)
  %1 = bitcast i8* %array to i64*, !clap !290
  call void @checker_addUses_1(i64 270, i64 267)
  %2 = ptrtoint i8* %call1 to i64, !clap !291
  call void @checker_addUses_1(i64 271, i64 269)
  %myCast = bitcast i64* %1 to i8*, !clap !292
  call void @checker_addUses_2(i64 272, i64 271, i64 270)
  call void @checker_preAtomicStore_double(i8* %myCast, i64 272, i64 %2, i32 2), !clap !293
  call void @checker_addUses_2(i64 273, i64 270, i64 269)
  call void @checker_addUses_1(i64 274, i64 265)
  %top = bitcast i8* %call to i64*, !clap !294
  call void @checker_addUses_1(i64 275, i64 274)
  %myCast1 = bitcast i64* %top to i8*, !clap !295
  call void @checker_addUses_1(i64 276, i64 275)
  call void @checker_preAtomicStore_double(i8* %myCast1, i64 276, i64 0, i32 2), !clap !296
  call void @checker_addUses_1(i64 277, i64 274)
  call void @checker_addUses_1(i64 278, i64 265)
  %bottom = getelementptr inbounds i8, i8* %call, i64 8, !clap !297
  call void @checker_addUses_1(i64 279, i64 278)
  %3 = bitcast i8* %bottom to i64*, !clap !298
  call void @checker_addUses_1(i64 280, i64 279)
  %myCast2 = bitcast i64* %3 to i8*, !clap !299
  call void @checker_addUses_1(i64 281, i64 280)
  call void @checker_preAtomicStore_double(i8* %myCast2, i64 281, i64 0, i32 2), !clap !300
  call void @checker_addUses_1(i64 282, i64 279)
  call void @checker_addUses_1(i64 283, i64 267)
  %size = bitcast i8* %call1 to i64*, !clap !301
  call void @checker_addUses_1(i64 284, i64 283)
  %myCast3 = bitcast i64* %size to i8*, !clap !302
  call void @checker_addUses_1(i64 285, i64 284)
  call void @checker_preAtomicStore_double(i8* %myCast3, i64 285, i64 2, i32 2), !clap !303
  call void @checker_addUses_1(i64 286, i64 283)
  call void @checker_addUses_1(i64 287, i64 266)
  call void @checker_currentBB(i64 287)
  ret %struct.Deque* %0, !clap !304
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @take(%struct.Deque* nocapture %q) local_unnamed_addr #9 {
entry:
  %bottom = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1, !clap !305
  call void @checker_addUses_1(i64 289, i64 288)
  %myCast = bitcast i64* %bottom to i8*, !clap !306
  call void @checker_addUses_1(i64 290, i64 289)
  %0 = call i64 @checker_preAtomicLoad_double(i8* %myCast, i64 290, i32 2), !clap !307
  call void @checker_addUses_1(i64 291, i64 288)
  call void @checker_addUses_1(i64 292, i64 290)
  %sub = add i64 %0, -1, !clap !308
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2, !clap !309
  call void @checker_addUses_1(i64 294, i64 293)
  %myCast1 = bitcast i64* %array to i8*, !clap !310
  call void @checker_addUses_1(i64 295, i64 294)
  %1 = call i64 @checker_preAtomicLoad_double(i8* %myCast1, i64 295, i32 2), !clap !311
  call void @checker_addUses_1(i64 296, i64 293)
  call void @checker_addUses_1(i64 297, i64 295)
  %2 = inttoptr i64 %1 to %struct.Array*, !clap !312
  call void @checker_addUses_1(i64 298, i64 288)
  %myCast2 = bitcast i64* %bottom to i8*, !clap !313
  call void @checker_addUses_2(i64 299, i64 298, i64 292)
  call void @checker_preAtomicStore_double(i8* %myCast2, i64 299, i64 %sub, i32 2), !clap !314
  call void @checker_addUses_2(i64 300, i64 292, i64 288)
  call void @checker_preFence(i32 7), !clap !315
  fence seq_cst, !clap !316
  %top = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0, !clap !317
  call void @checker_addUses_1(i64 304, i64 303)
  %myCast3 = bitcast i64* %top to i8*, !clap !318
  call void @checker_addUses_1(i64 305, i64 304)
  %3 = call i64 @checker_preAtomicLoad_double(i8* %myCast3, i64 305, i32 2), !clap !319
  call void @checker_addUses_1(i64 306, i64 303)
  call void @checker_addUses_2(i64 307, i64 305, i64 292)
  %cmp = icmp ugt i64 %3, %sub, !clap !320
  call void @checker_addUses_1(i64 308, i64 307)
  call void @checker_currentBB(i64 308)
  br i1 %cmp, label %if.end18.sink.split, label %if.then, !clap !321

if.then:                                          ; preds = %entry
  call void @checker_trackDynInfo(i64 308)
  call void @checker_addUses_1(i64 309, i64 297)
  %size = getelementptr inbounds %struct.Array, %struct.Array* %2, i64 0, i32 0, !clap !322
  call void @checker_addUses_1(i64 310, i64 309)
  %myCast4 = bitcast i64* %size to i8*, !clap !323
  call void @checker_addUses_1(i64 311, i64 310)
  %4 = call i64 @checker_preAtomicLoad_double(i8* %myCast4, i64 311, i32 2), !clap !324
  call void @checker_addUses_1(i64 312, i64 309)
  call void @checker_addUses_2(i64 313, i64 292, i64 311)
  %rem = urem i64 %sub, %4, !clap !325
  call void @checker_addUses_2(i64 314, i64 297, i64 313)
  %arrayidx = getelementptr inbounds %struct.Array, %struct.Array* %2, i64 0, i32 1, i64 %rem, !clap !326
  call void @checker_addUses_1(i64 315, i64 314)
  %myCast5 = bitcast i32* %arrayidx to i8*, !clap !327
  call void @checker_addUses_1(i64 316, i64 315)
  %5 = call i32 @checker_preAtomicLoad_int(i8* %myCast5, i64 316, i32 2), !clap !328
  call void @checker_addUses_1(i64 317, i64 314)
  call void @checker_addUses_2(i64 318, i64 305, i64 292)
  %cmp6 = icmp eq i64 %3, %sub, !clap !329
  call void @checker_addUses_1(i64 319, i64 318)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 319)
  br i1 %cmp6, label %if.then7, label %if.end18, !clap !330

if.then7:                                         ; preds = %if.then
  call void @checker_trackDynInfo(i64 319)
  call void @checker_addUses_1(i64 320, i64 303)
  %myCast6 = bitcast i64* %top to i8*, !clap !331
  call void @checker_addUses_3(i64 321, i64 320, i64 292, i64 290)
  %6 = call i1 @checker_preCmpXchg_64(i8* %myCast6, i64 %sub, i64 %0, i32 7, i32 2, i64 321), !clap !332
  call void @checker_addUses_1(i64 322, i64 292)
  %myInsert = insertvalue { i64, i1 } undef, i64 %sub, 0, !clap !333
  call void @checker_addUses_2(i64 323, i64 322, i64 321)
  %myInsert7 = insertvalue { i64, i1 } %myInsert, i1 %6, 1, !clap !334
  call void @checker_addUses_3(i64 324, i64 303, i64 292, i64 290)
  call void @checker_addUses_1(i64 325, i64 323)
  %7 = extractvalue { i64, i1 } %myInsert7, 1, !clap !335
  call void @checker_addUses_2(i64 326, i64 325, i64 316)
  %x.0 = select i1 %7, i32 %5, i32 -1, !clap !336
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 327)
  br label %if.end18.sink.split, !clap !337

if.end18.sink.split:                              ; preds = %entry, %if.then7
  %x.1.ph = phi i32 [ %x.0, %if.then7 ], [ -1, %entry ], !clap !338
  call void @checker_trackDynInfo(i64 308)
  call void @checker_handlePHI_2(i64 328, i64 326, i64 327, i64 0, i64 308)
  call void @checker_addUses_1(i64 329, i64 288)
  %myCast8 = bitcast i64* %bottom to i8*, !clap !339
  call void @checker_addUses_2(i64 330, i64 329, i64 290)
  call void @checker_preAtomicStore_double(i8* %myCast8, i64 330, i64 %0, i32 2), !clap !340
  call void @checker_addUses_2(i64 331, i64 290, i64 288)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 332)
  br label %if.end18, !clap !341

if.end18:                                         ; preds = %if.end18.sink.split, %if.then
  %x.1 = phi i32 [ %5, %if.then ], [ %x.1.ph, %if.end18.sink.split ], !clap !342
  call void @checker_trackDynInfo(i64 308)
  call void @checker_handlePHI_2(i64 333, i64 316, i64 319, i64 328, i64 332)
  call void @checker_addUses_1(i64 334, i64 333)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 334)
  ret i32 %x.1, !clap !343
}

; Function Attrs: nounwind ssp uwtable
define void @resize(%struct.Deque* nocapture %q) local_unnamed_addr #8 {
entry:
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2, !clap !344
  call void @checker_addUses_1(i64 336, i64 335)
  %myCast = bitcast i64* %array to i8*, !clap !345
  call void @checker_addUses_1(i64 337, i64 336)
  %0 = call i64 @checker_preAtomicLoad_double(i8* %myCast, i64 337, i32 2), !clap !346
  call void @checker_addUses_1(i64 338, i64 335)
  call void @checker_addUses_1(i64 339, i64 337)
  %1 = inttoptr i64 %0 to %struct.Array*, !clap !347
  call void @checker_addUses_1(i64 340, i64 339)
  %size1 = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 0, !clap !348
  call void @checker_addUses_1(i64 341, i64 340)
  %myCast1 = bitcast i64* %size1 to i8*, !clap !349
  call void @checker_addUses_1(i64 342, i64 341)
  %2 = call i64 @checker_preAtomicLoad_double(i8* %myCast1, i64 342, i32 2), !clap !350
  call void @checker_addUses_1(i64 343, i64 340)
  call void @checker_addUses_1(i64 344, i64 342)
  %shl = shl i64 %2, 1, !clap !351
  call void @checker_addUses_1(i64 345, i64 342)
  %mul = shl i64 %2, 3, !clap !352
  call void @checker_addUses_1(i64 346, i64 345)
  %add = add i64 %mul, 8, !clap !353
  call void @checker_addUses_1(i64 347, i64 346)
  call void @checker_beginFunc()
  %call = tail call i8* @calloc(i64 1, i64 %add), !clap !354
  call void @checker_endFunc()
  %top3 = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0, !clap !355
  call void @checker_addUses_1(i64 349, i64 348)
  %myCast2 = bitcast i64* %top3 to i8*, !clap !356
  call void @checker_addUses_1(i64 350, i64 349)
  %3 = call i64 @checker_preAtomicLoad_double(i8* %myCast2, i64 350, i32 2), !clap !357
  call void @checker_addUses_1(i64 351, i64 348)
  %bottom5 = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1, !clap !358
  call void @checker_addUses_1(i64 353, i64 352)
  %myCast3 = bitcast i64* %bottom5 to i8*, !clap !359
  call void @checker_addUses_1(i64 354, i64 353)
  %4 = call i64 @checker_preAtomicLoad_double(i8* %myCast3, i64 354, i32 2), !clap !360
  call void @checker_addUses_1(i64 355, i64 352)
  call void @checker_addUses_1(i64 356, i64 347)
  %size7 = bitcast i8* %call to i64*, !clap !361
  call void @checker_addUses_1(i64 357, i64 356)
  %myCast4 = bitcast i64* %size7 to i8*, !clap !362
  call void @checker_addUses_2(i64 358, i64 357, i64 344)
  call void @checker_preAtomicStore_double(i8* %myCast4, i64 358, i64 %shl, i32 2), !clap !363
  call void @checker_addUses_2(i64 359, i64 344, i64 356)
  call void @checker_addUses_2(i64 360, i64 354, i64 350)
  %cmp35 = icmp ugt i64 %4, %3, !clap !364
  call void @checker_addUses_1(i64 361, i64 360)
  call void @checker_currentBB(i64 361)
  br i1 %cmp35, label %for.body.lr.ph, label %for.end, !clap !365

for.body.lr.ph:                                   ; preds = %entry
  call void @checker_trackDynInfo(i64 361)
  call void @checker_addUses_1(i64 362, i64 347)
  %buffer = getelementptr inbounds i8, i8* %call, i64 8, !clap !366
  call void @checker_addUses_1(i64 363, i64 362)
  %5 = bitcast i8* %buffer to [0 x i32]*, !clap !367
  call void @checker_addUses_2(i64 364, i64 354, i64 350)
  %6 = sub i64 %4, %3, !clap !368
  call void @checker_addUses_1(i64 365, i64 354)
  %7 = add i64 %4, -1, !clap !369
  call void @checker_addUses_1(i64 366, i64 364)
  %xtraiter = and i64 %6, 1, !clap !370
  call void @checker_addUses_1(i64 367, i64 366)
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !clap !371
  call void @checker_addUses_1(i64 368, i64 367)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 368)
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol.preheader, !clap !372

for.body.prol.preheader:                          ; preds = %for.body.lr.ph
  call void @checker_trackDynInfo(i64 368)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 369)
  br label %for.body.prol, !clap !373

for.body.prol:                                    ; preds = %for.body.prol.preheader
  call void @checker_trackDynInfo(i64 369)
  call void @checker_addUses_2(i64 370, i64 350, i64 344)
  %rem.prol = urem i64 %3, %shl, !clap !374
  call void @checker_addUses_2(i64 371, i64 363, i64 370)
  %arrayidx.prol = getelementptr inbounds [0 x i32], [0 x i32]* %5, i64 0, i64 %rem.prol, !clap !375
  call void @checker_addUses_2(i64 372, i64 350, i64 342)
  %rem10.prol = urem i64 %3, %2, !clap !376
  call void @checker_addUses_2(i64 373, i64 339, i64 372)
  %arrayidx11.prol = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 1, i64 %rem10.prol, !clap !377
  call void @checker_addUses_1(i64 374, i64 373)
  %myCast5 = bitcast i32* %arrayidx11.prol to i8*, !clap !378
  call void @checker_addUses_1(i64 375, i64 374)
  %8 = call i32 @checker_preAtomicLoad_int(i8* %myCast5, i64 375, i32 2), !clap !379
  call void @checker_addUses_1(i64 376, i64 373)
  call void @checker_addUses_1(i64 377, i64 371)
  %myCast6 = bitcast i32* %arrayidx.prol to i8*, !clap !380
  call void @checker_addUses_2(i64 378, i64 377, i64 375)
  call void @checker_preAtomicStore_int(i8* %myCast6, i64 378, i32 %8, i32 2), !clap !381
  call void @checker_addUses_2(i64 379, i64 375, i64 371)
  call void @checker_addUses_1(i64 380, i64 350)
  %inc.prol = add nuw i64 %3, 1, !clap !382
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 381)
  br label %for.body.prol.loopexit, !clap !383

for.body.prol.loopexit:                           ; preds = %for.body.lr.ph, %for.body.prol
  %i.036.unr = phi i64 [ %3, %for.body.lr.ph ], [ %inc.prol, %for.body.prol ], !clap !384
  call void @checker_trackDynInfo(i64 368)
  call void @checker_handlePHI_2(i64 382, i64 350, i64 368, i64 380, i64 381)
  call void @checker_addUses_2(i64 383, i64 365, i64 350)
  %9 = icmp eq i64 %7, %3, !clap !385
  call void @checker_addUses_1(i64 384, i64 383)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 384)
  br i1 %9, label %for.end.loopexit, label %for.body.lr.ph.new, !clap !386

for.body.lr.ph.new:                               ; preds = %for.body.prol.loopexit
  call void @checker_trackDynInfo(i64 384)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 385)
  br label %for.body, !clap !387

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %i.036 = phi i64 [ %i.036.unr, %for.body.lr.ph.new ], [ %inc.1, %for.body ], !clap !388
  call void @checker_trackDynInfo(i64 385)
  call void @checker_handlePHI_2(i64 386, i64 382, i64 385, i64 408, i64 410)
  call void @checker_addUses_2(i64 387, i64 386, i64 344)
  %rem = urem i64 %i.036, %shl, !clap !389
  call void @checker_addUses_2(i64 388, i64 363, i64 387)
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %5, i64 0, i64 %rem, !clap !390
  call void @checker_addUses_2(i64 389, i64 386, i64 342)
  %rem10 = urem i64 %i.036, %2, !clap !391
  call void @checker_addUses_2(i64 390, i64 339, i64 389)
  %arrayidx11 = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 1, i64 %rem10, !clap !392
  call void @checker_addUses_1(i64 391, i64 390)
  %myCast7 = bitcast i32* %arrayidx11 to i8*, !clap !393
  call void @checker_addUses_1(i64 392, i64 391)
  %10 = call i32 @checker_preAtomicLoad_int(i8* %myCast7, i64 392, i32 2), !clap !394
  call void @checker_addUses_1(i64 393, i64 390)
  call void @checker_addUses_1(i64 394, i64 388)
  %myCast8 = bitcast i32* %arrayidx to i8*, !clap !395
  call void @checker_addUses_2(i64 395, i64 394, i64 392)
  call void @checker_preAtomicStore_int(i8* %myCast8, i64 395, i32 %10, i32 2), !clap !396
  call void @checker_addUses_2(i64 396, i64 392, i64 388)
  call void @checker_addUses_1(i64 397, i64 386)
  %inc = add nuw i64 %i.036, 1, !clap !397
  call void @checker_addUses_2(i64 398, i64 397, i64 344)
  %rem.1 = urem i64 %inc, %shl, !clap !398
  call void @checker_addUses_2(i64 399, i64 363, i64 398)
  %arrayidx.1 = getelementptr inbounds [0 x i32], [0 x i32]* %5, i64 0, i64 %rem.1, !clap !399
  call void @checker_addUses_2(i64 400, i64 397, i64 342)
  %rem10.1 = urem i64 %inc, %2, !clap !400
  call void @checker_addUses_2(i64 401, i64 339, i64 400)
  %arrayidx11.1 = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 1, i64 %rem10.1, !clap !401
  call void @checker_addUses_1(i64 402, i64 401)
  %myCast9 = bitcast i32* %arrayidx11.1 to i8*, !clap !402
  call void @checker_addUses_1(i64 403, i64 402)
  %11 = call i32 @checker_preAtomicLoad_int(i8* %myCast9, i64 403, i32 2), !clap !403
  call void @checker_addUses_1(i64 404, i64 401)
  call void @checker_addUses_1(i64 405, i64 399)
  %myCast10 = bitcast i32* %arrayidx.1 to i8*, !clap !404
  call void @checker_addUses_2(i64 406, i64 405, i64 403)
  call void @checker_preAtomicStore_int(i8* %myCast10, i64 406, i32 %11, i32 2), !clap !405
  call void @checker_addUses_2(i64 407, i64 403, i64 399)
  call void @checker_addUses_1(i64 408, i64 386)
  %inc.1 = add i64 %i.036, 2, !clap !406
  call void @checker_addUses_2(i64 409, i64 408, i64 354)
  %exitcond.1 = icmp eq i64 %inc.1, %4, !clap !407
  call void @checker_addUses_1(i64 410, i64 409)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 410)
  br i1 %exitcond.1, label %for.end.loopexit.unr-lcssa, label %for.body, !clap !408

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  call void @checker_trackDynInfo(i64 410)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 411)
  br label %for.end.loopexit, !clap !409

for.end.loopexit:                                 ; preds = %for.body.prol.loopexit, %for.end.loopexit.unr-lcssa
  call void @checker_trackDynInfo(i64 384)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 412)
  br label %for.end, !clap !410

for.end:                                          ; preds = %for.end.loopexit, %entry
  call void @checker_trackDynInfo(i64 361)
  call void @checker_addUses_1(i64 413, i64 347)
  %12 = ptrtoint i8* %call to i64, !clap !411
  call void @checker_addUses_1(i64 414, i64 335)
  %myCast11 = bitcast i64* %array to i8*, !clap !412
  call void @checker_addUses_2(i64 415, i64 414, i64 413)
  call void @checker_preAtomicStore_double(i8* %myCast11, i64 415, i64 %12, i32 2), !clap !413
  call void @checker_addUses_2(i64 416, i64 413, i64 335)
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0)), !clap !414
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 418)
  ret void, !clap !415
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #10

; Function Attrs: nounwind ssp uwtable
define void @push(%struct.Deque* nocapture %q, i32 %x) local_unnamed_addr #8 {
entry:
  %bottom = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1, !clap !416
  call void @checker_addUses_1(i64 420, i64 419)
  %myCast = bitcast i64* %bottom to i8*, !clap !417
  call void @checker_addUses_1(i64 421, i64 420)
  %0 = call i64 @checker_preAtomicLoad_double(i8* %myCast, i64 421, i32 2), !clap !418
  call void @checker_addUses_1(i64 422, i64 419)
  %top = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0, !clap !419
  call void @checker_addUses_1(i64 424, i64 423)
  %myCast1 = bitcast i64* %top to i8*, !clap !420
  call void @checker_addUses_1(i64 425, i64 424)
  %1 = call i64 @checker_preAtomicLoad_double(i8* %myCast1, i64 425, i32 4), !clap !421
  call void @checker_addUses_1(i64 426, i64 423)
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2, !clap !422
  call void @checker_addUses_1(i64 428, i64 427)
  %myCast2 = bitcast i64* %array to i8*, !clap !423
  call void @checker_addUses_1(i64 429, i64 428)
  %2 = call i64 @checker_preAtomicLoad_double(i8* %myCast2, i64 429, i32 2), !clap !424
  call void @checker_addUses_1(i64 430, i64 427)
  call void @checker_addUses_1(i64 431, i64 429)
  %3 = inttoptr i64 %2 to %struct.Array*, !clap !425
  call void @checker_addUses_2(i64 432, i64 421, i64 425)
  %sub = sub i64 %0, %1, !clap !426
  call void @checker_addUses_1(i64 433, i64 431)
  %size = getelementptr inbounds %struct.Array, %struct.Array* %3, i64 0, i32 0, !clap !427
  call void @checker_addUses_1(i64 434, i64 433)
  %myCast3 = bitcast i64* %size to i8*, !clap !428
  call void @checker_addUses_1(i64 435, i64 434)
  %4 = call i64 @checker_preAtomicLoad_double(i8* %myCast3, i64 435, i32 2), !clap !429
  call void @checker_addUses_1(i64 436, i64 433)
  call void @checker_addUses_1(i64 437, i64 435)
  %sub4 = add i64 %4, -1, !clap !430
  call void @checker_addUses_2(i64 438, i64 432, i64 437)
  %cmp = icmp ugt i64 %sub, %sub4, !clap !431
  call void @checker_addUses_1(i64 439, i64 438)
  call void @checker_currentBB(i64 439)
  br i1 %cmp, label %if.then, label %if.end, !clap !432

if.then:                                          ; preds = %entry
  call void @checker_trackDynInfo(i64 439)
  call void @checker_addUses_1(i64 440, i64 427)
  %myCast4 = bitcast i64* %array to i8*, !clap !433
  call void @checker_addUses_1(i64 441, i64 440)
  %5 = call i64 @checker_preAtomicLoad_double(i8* %myCast4, i64 441, i32 2), !clap !434
  call void @checker_addUses_1(i64 442, i64 427)
  call void @checker_addUses_1(i64 443, i64 441)
  %6 = inttoptr i64 %5 to %struct.Array*, !clap !435
  call void @checker_addUses_1(i64 444, i64 443)
  %size1.i = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 0, !clap !436
  call void @checker_addUses_1(i64 445, i64 444)
  %myCast5 = bitcast i64* %size1.i to i8*, !clap !437
  call void @checker_addUses_1(i64 446, i64 445)
  %7 = call i64 @checker_preAtomicLoad_double(i8* %myCast5, i64 446, i32 2), !clap !438
  call void @checker_addUses_1(i64 447, i64 444)
  call void @checker_addUses_1(i64 448, i64 446)
  %shl.i = shl i64 %7, 1, !clap !439
  call void @checker_addUses_1(i64 449, i64 446)
  %mul.i = shl i64 %7, 3, !clap !440
  call void @checker_addUses_1(i64 450, i64 449)
  %add.i = add i64 %mul.i, 8, !clap !441
  call void @checker_addUses_1(i64 451, i64 450)
  call void @checker_beginFunc()
  %call.i = tail call i8* @calloc(i64 1, i64 %add.i) #10, !clap !442
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 452, i64 423)
  %myCast6 = bitcast i64* %top to i8*, !clap !443
  call void @checker_addUses_1(i64 453, i64 452)
  %8 = call i64 @checker_preAtomicLoad_double(i8* %myCast6, i64 453, i32 2), !clap !444
  call void @checker_addUses_1(i64 454, i64 423)
  call void @checker_addUses_1(i64 455, i64 419)
  %myCast7 = bitcast i64* %bottom to i8*, !clap !445
  call void @checker_addUses_1(i64 456, i64 455)
  %9 = call i64 @checker_preAtomicLoad_double(i8* %myCast7, i64 456, i32 2), !clap !446
  call void @checker_addUses_1(i64 457, i64 419)
  call void @checker_addUses_1(i64 458, i64 451)
  %size7.i = bitcast i8* %call.i to i64*, !clap !447
  call void @checker_addUses_1(i64 459, i64 458)
  %myCast8 = bitcast i64* %size7.i to i8*, !clap !448
  call void @checker_addUses_2(i64 460, i64 459, i64 448)
  call void @checker_preAtomicStore_double(i8* %myCast8, i64 460, i64 %shl.i, i32 2), !clap !449
  call void @checker_addUses_2(i64 461, i64 448, i64 458)
  call void @checker_addUses_2(i64 462, i64 456, i64 453)
  %cmp35.i = icmp ugt i64 %9, %8, !clap !450
  call void @checker_addUses_1(i64 463, i64 462)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 463)
  br i1 %cmp35.i, label %for.body.lr.ph.i, label %resize.exit, !clap !451

for.body.lr.ph.i:                                 ; preds = %if.then
  call void @checker_trackDynInfo(i64 463)
  call void @checker_addUses_1(i64 464, i64 451)
  %buffer.i = getelementptr inbounds i8, i8* %call.i, i64 8, !clap !452
  call void @checker_addUses_1(i64 465, i64 464)
  %10 = bitcast i8* %buffer.i to [0 x i32]*, !clap !453
  call void @checker_addUses_2(i64 466, i64 456, i64 453)
  %11 = sub i64 %9, %8, !clap !454
  call void @checker_addUses_1(i64 467, i64 456)
  %12 = add i64 %9, -1, !clap !455
  call void @checker_addUses_1(i64 468, i64 466)
  %xtraiter = and i64 %11, 1, !clap !456
  call void @checker_addUses_1(i64 469, i64 468)
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !clap !457
  call void @checker_addUses_1(i64 470, i64 469)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 470)
  br i1 %lcmp.mod, label %for.body.i.prol.loopexit, label %for.body.i.prol.preheader, !clap !458

for.body.i.prol.preheader:                        ; preds = %for.body.lr.ph.i
  call void @checker_trackDynInfo(i64 470)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 471)
  br label %for.body.i.prol, !clap !459

for.body.i.prol:                                  ; preds = %for.body.i.prol.preheader
  call void @checker_trackDynInfo(i64 471)
  call void @checker_addUses_2(i64 472, i64 453, i64 448)
  %rem.i.prol = urem i64 %8, %shl.i, !clap !460
  call void @checker_addUses_2(i64 473, i64 465, i64 472)
  %arrayidx.i.prol = getelementptr inbounds [0 x i32], [0 x i32]* %10, i64 0, i64 %rem.i.prol, !clap !461
  call void @checker_addUses_2(i64 474, i64 453, i64 446)
  %rem10.i.prol = urem i64 %8, %7, !clap !462
  call void @checker_addUses_2(i64 475, i64 443, i64 474)
  %arrayidx11.i.prol = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 1, i64 %rem10.i.prol, !clap !463
  call void @checker_addUses_1(i64 476, i64 475)
  %myCast9 = bitcast i32* %arrayidx11.i.prol to i8*, !clap !464
  call void @checker_addUses_1(i64 477, i64 476)
  %13 = call i32 @checker_preAtomicLoad_int(i8* %myCast9, i64 477, i32 2), !clap !465
  call void @checker_addUses_1(i64 478, i64 475)
  call void @checker_addUses_1(i64 479, i64 473)
  %myCast10 = bitcast i32* %arrayidx.i.prol to i8*, !clap !466
  call void @checker_addUses_2(i64 480, i64 479, i64 477)
  call void @checker_preAtomicStore_int(i8* %myCast10, i64 480, i32 %13, i32 2), !clap !467
  call void @checker_addUses_2(i64 481, i64 477, i64 473)
  call void @checker_addUses_1(i64 482, i64 453)
  %inc.i.prol = add nuw i64 %8, 1, !clap !468
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 483)
  br label %for.body.i.prol.loopexit, !clap !469

for.body.i.prol.loopexit:                         ; preds = %for.body.lr.ph.i, %for.body.i.prol
  %i.036.i.unr = phi i64 [ %8, %for.body.lr.ph.i ], [ %inc.i.prol, %for.body.i.prol ], !clap !470
  call void @checker_trackDynInfo(i64 470)
  call void @checker_handlePHI_2(i64 484, i64 453, i64 470, i64 482, i64 483)
  call void @checker_addUses_2(i64 485, i64 467, i64 453)
  %14 = icmp eq i64 %12, %8, !clap !471
  call void @checker_addUses_1(i64 486, i64 485)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 486)
  br i1 %14, label %resize.exit.loopexit, label %for.body.lr.ph.i.new, !clap !472

for.body.lr.ph.i.new:                             ; preds = %for.body.i.prol.loopexit
  call void @checker_trackDynInfo(i64 486)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 487)
  br label %for.body.i, !clap !473

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %i.036.i = phi i64 [ %i.036.i.unr, %for.body.lr.ph.i.new ], [ %inc.i.1, %for.body.i ], !clap !474
  call void @checker_trackDynInfo(i64 487)
  call void @checker_handlePHI_2(i64 488, i64 484, i64 487, i64 510, i64 512)
  call void @checker_addUses_2(i64 489, i64 488, i64 448)
  %rem.i = urem i64 %i.036.i, %shl.i, !clap !475
  call void @checker_addUses_2(i64 490, i64 465, i64 489)
  %arrayidx.i = getelementptr inbounds [0 x i32], [0 x i32]* %10, i64 0, i64 %rem.i, !clap !476
  call void @checker_addUses_2(i64 491, i64 488, i64 446)
  %rem10.i = urem i64 %i.036.i, %7, !clap !477
  call void @checker_addUses_2(i64 492, i64 443, i64 491)
  %arrayidx11.i = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 1, i64 %rem10.i, !clap !478
  call void @checker_addUses_1(i64 493, i64 492)
  %myCast11 = bitcast i32* %arrayidx11.i to i8*, !clap !479
  call void @checker_addUses_1(i64 494, i64 493)
  %15 = call i32 @checker_preAtomicLoad_int(i8* %myCast11, i64 494, i32 2), !clap !480
  call void @checker_addUses_1(i64 495, i64 492)
  call void @checker_addUses_1(i64 496, i64 490)
  %myCast12 = bitcast i32* %arrayidx.i to i8*, !clap !481
  call void @checker_addUses_2(i64 497, i64 496, i64 494)
  call void @checker_preAtomicStore_int(i8* %myCast12, i64 497, i32 %15, i32 2), !clap !482
  call void @checker_addUses_2(i64 498, i64 494, i64 490)
  call void @checker_addUses_1(i64 499, i64 488)
  %inc.i = add nuw i64 %i.036.i, 1, !clap !483
  call void @checker_addUses_2(i64 500, i64 499, i64 448)
  %rem.i.1 = urem i64 %inc.i, %shl.i, !clap !484
  call void @checker_addUses_2(i64 501, i64 465, i64 500)
  %arrayidx.i.1 = getelementptr inbounds [0 x i32], [0 x i32]* %10, i64 0, i64 %rem.i.1, !clap !485
  call void @checker_addUses_2(i64 502, i64 499, i64 446)
  %rem10.i.1 = urem i64 %inc.i, %7, !clap !486
  call void @checker_addUses_2(i64 503, i64 443, i64 502)
  %arrayidx11.i.1 = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 1, i64 %rem10.i.1, !clap !487
  call void @checker_addUses_1(i64 504, i64 503)
  %myCast13 = bitcast i32* %arrayidx11.i.1 to i8*, !clap !488
  call void @checker_addUses_1(i64 505, i64 504)
  %16 = call i32 @checker_preAtomicLoad_int(i8* %myCast13, i64 505, i32 2), !clap !489
  call void @checker_addUses_1(i64 506, i64 503)
  call void @checker_addUses_1(i64 507, i64 501)
  %myCast14 = bitcast i32* %arrayidx.i.1 to i8*, !clap !490
  call void @checker_addUses_2(i64 508, i64 507, i64 505)
  call void @checker_preAtomicStore_int(i8* %myCast14, i64 508, i32 %16, i32 2), !clap !491
  call void @checker_addUses_2(i64 509, i64 505, i64 501)
  call void @checker_addUses_1(i64 510, i64 488)
  %inc.i.1 = add i64 %i.036.i, 2, !clap !492
  call void @checker_addUses_2(i64 511, i64 510, i64 456)
  %exitcond.i.1 = icmp eq i64 %inc.i.1, %9, !clap !493
  call void @checker_addUses_1(i64 512, i64 511)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 512)
  br i1 %exitcond.i.1, label %resize.exit.loopexit.unr-lcssa, label %for.body.i, !clap !494

resize.exit.loopexit.unr-lcssa:                   ; preds = %for.body.i
  call void @checker_trackDynInfo(i64 512)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 513)
  br label %resize.exit.loopexit, !clap !495

resize.exit.loopexit:                             ; preds = %for.body.i.prol.loopexit, %resize.exit.loopexit.unr-lcssa
  call void @checker_trackDynInfo(i64 486)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 514)
  br label %resize.exit, !clap !496

resize.exit:                                      ; preds = %resize.exit.loopexit, %if.then
  call void @checker_trackDynInfo(i64 463)
  call void @checker_addUses_1(i64 515, i64 451)
  %17 = ptrtoint i8* %call.i to i64, !clap !497
  call void @checker_addUses_1(i64 516, i64 427)
  %myCast15 = bitcast i64* %array to i8*, !clap !498
  call void @checker_addUses_2(i64 517, i64 516, i64 515)
  call void @checker_preAtomicStore_double(i8* %myCast15, i64 517, i64 %17, i32 2), !clap !499
  call void @checker_addUses_2(i64 518, i64 515, i64 427)
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0)) #10, !clap !500
  call void @checker_addUses_1(i64 520, i64 427)
  %myCast16 = bitcast i64* %array to i8*, !clap !501
  call void @checker_addUses_1(i64 521, i64 520)
  %18 = call i64 @checker_preAtomicLoad_double(i8* %myCast16, i64 521, i32 2), !clap !502
  call void @checker_addUses_1(i64 522, i64 427)
  call void @checker_addUses_1(i64 523, i64 521)
  %19 = inttoptr i64 %18 to %struct.Array*, !clap !503
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 524)
  br label %if.end, !clap !504

if.end:                                           ; preds = %resize.exit, %entry
  %a.0 = phi %struct.Array* [ %19, %resize.exit ], [ %3, %entry ], !clap !505
  call void @checker_trackDynInfo(i64 439)
  call void @checker_handlePHI_2(i64 525, i64 523, i64 524, i64 431, i64 439)
  call void @checker_addUses_1(i64 526, i64 525)
  %size7 = getelementptr inbounds %struct.Array, %struct.Array* %a.0, i64 0, i32 0, !clap !506
  call void @checker_addUses_1(i64 527, i64 526)
  %myCast17 = bitcast i64* %size7 to i8*, !clap !507
  call void @checker_addUses_1(i64 528, i64 527)
  %20 = call i64 @checker_preAtomicLoad_double(i8* %myCast17, i64 528, i32 2), !clap !508
  call void @checker_addUses_1(i64 529, i64 526)
  call void @checker_addUses_2(i64 530, i64 421, i64 528)
  %rem = urem i64 %0, %20, !clap !509
  call void @checker_addUses_2(i64 531, i64 525, i64 530)
  %arrayidx = getelementptr inbounds %struct.Array, %struct.Array* %a.0, i64 0, i32 1, i64 %rem, !clap !510
  call void @checker_addUses_1(i64 532, i64 531)
  %myCast18 = bitcast i32* %arrayidx to i8*, !clap !511
  call void @checker_addUses_1(i64 533, i64 532)
  call void @checker_preAtomicStore_int(i8* %myCast18, i64 533, i32 %x, i32 2), !clap !512
  call void @checker_addUses_1(i64 534, i64 531)
  call void @checker_preFence(i32 5), !clap !513
  fence release, !clap !514
  call void @checker_addUses_1(i64 537, i64 421)
  %add = add i64 %0, 1, !clap !515
  call void @checker_addUses_1(i64 538, i64 419)
  %myCast19 = bitcast i64* %bottom to i8*, !clap !516
  call void @checker_addUses_2(i64 539, i64 538, i64 537)
  call void @checker_preAtomicStore_double(i8* %myCast19, i64 539, i64 %add, i32 2), !clap !517
  call void @checker_addUses_2(i64 540, i64 537, i64 419)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 541)
  ret void, !clap !518
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @steal(%struct.Deque* nocapture %q) local_unnamed_addr #9 {
entry:
  %top = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0, !clap !519
  call void @checker_addUses_1(i64 543, i64 542)
  %myCast = bitcast i64* %top to i8*, !clap !520
  call void @checker_addUses_1(i64 544, i64 543)
  %0 = call i64 @checker_preAtomicLoad_double(i8* %myCast, i64 544, i32 4), !clap !521
  call void @checker_addUses_1(i64 545, i64 542)
  call void @checker_preFence(i32 7), !clap !522
  fence seq_cst, !clap !523
  %bottom = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1, !clap !524
  call void @checker_addUses_1(i64 549, i64 548)
  %myCast1 = bitcast i64* %bottom to i8*, !clap !525
  call void @checker_addUses_1(i64 550, i64 549)
  %1 = call i64 @checker_preAtomicLoad_double(i8* %myCast1, i64 550, i32 4), !clap !526
  call void @checker_addUses_1(i64 551, i64 548)
  call void @checker_addUses_2(i64 552, i64 544, i64 550)
  %cmp = icmp ult i64 %0, %1, !clap !527
  call void @checker_addUses_1(i64 553, i64 552)
  call void @checker_currentBB(i64 553)
  br i1 %cmp, label %if.then, label %if.end7, !clap !528

if.then:                                          ; preds = %entry
  call void @checker_trackDynInfo(i64 553)
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2, !clap !529
  call void @checker_addUses_1(i64 555, i64 554)
  %myCast2 = bitcast i64* %array to i8*, !clap !530
  call void @checker_addUses_1(i64 556, i64 555)
  %2 = call i64 @checker_preAtomicLoad_double(i8* %myCast2, i64 556, i32 2), !clap !531
  call void @checker_addUses_1(i64 557, i64 554)
  call void @checker_addUses_1(i64 558, i64 556)
  %3 = inttoptr i64 %2 to %struct.Array*, !clap !532
  call void @checker_addUses_1(i64 559, i64 558)
  %size = getelementptr inbounds %struct.Array, %struct.Array* %3, i64 0, i32 0, !clap !533
  call void @checker_addUses_1(i64 560, i64 559)
  %myCast3 = bitcast i64* %size to i8*, !clap !534
  call void @checker_addUses_1(i64 561, i64 560)
  %4 = call i64 @checker_preAtomicLoad_double(i8* %myCast3, i64 561, i32 2), !clap !535
  call void @checker_addUses_1(i64 562, i64 559)
  call void @checker_addUses_2(i64 563, i64 544, i64 561)
  %rem = urem i64 %0, %4, !clap !536
  call void @checker_addUses_2(i64 564, i64 558, i64 563)
  %arrayidx = getelementptr inbounds %struct.Array, %struct.Array* %3, i64 0, i32 1, i64 %rem, !clap !537
  call void @checker_addUses_1(i64 565, i64 564)
  %myCast4 = bitcast i32* %arrayidx to i8*, !clap !538
  call void @checker_addUses_1(i64 566, i64 565)
  %5 = call i32 @checker_preAtomicLoad_int(i8* %myCast4, i64 566, i32 2), !clap !539
  call void @checker_addUses_1(i64 567, i64 564)
  call void @checker_addUses_1(i64 568, i64 544)
  %add = add i64 %0, 1, !clap !540
  call void @checker_addUses_1(i64 569, i64 542)
  %myCast5 = bitcast i64* %top to i8*, !clap !541
  call void @checker_addUses_3(i64 570, i64 569, i64 544, i64 568)
  %6 = call i1 @checker_preCmpXchg_64(i8* %myCast5, i64 %0, i64 %add, i32 7, i32 2, i64 570), !clap !542
  call void @checker_addUses_1(i64 571, i64 544)
  %myInsert = insertvalue { i64, i1 } undef, i64 %0, 0, !clap !543
  call void @checker_addUses_2(i64 572, i64 571, i64 570)
  %myInsert6 = insertvalue { i64, i1 } %myInsert, i1 %6, 1, !clap !544
  call void @checker_addUses_3(i64 573, i64 542, i64 544, i64 568)
  call void @checker_addUses_1(i64 574, i64 572)
  %7 = extractvalue { i64, i1 } %myInsert6, 1, !clap !545
  call void @checker_addUses_1(i64 575, i64 574)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 575)
  br i1 %7, label %if.end7, label %cleanup8, !clap !546

if.end7:                                          ; preds = %if.then, %entry
  %x.0 = phi i32 [ %5, %if.then ], [ -1, %entry ], !clap !547
  call void @checker_trackDynInfo(i64 553)
  call void @checker_handlePHI_2(i64 576, i64 566, i64 575, i64 0, i64 553)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 577)
  br label %cleanup8, !clap !548

cleanup8:                                         ; preds = %if.then, %if.end7
  %retval.1 = phi i32 [ %x.0, %if.end7 ], [ -2, %if.then ], !clap !549
  call void @checker_trackDynInfo(i64 553)
  call void @checker_handlePHI_2(i64 578, i64 576, i64 577, i64 0, i64 575)
  call void @checker_addUses_1(i64 579, i64 578)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 579)
  ret i32 %retval.1, !clap !550
}

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
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{i32 1, !"PIC Level", i32 2}
!2 = !{i64 1}
!3 = !{i64 2}
!4 = !{i64 3}
!5 = !{i64 4}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i64 5}
!11 = !{i64 6}
!12 = !{i64 7}
!13 = !{i64 8}
!14 = !{i64 9}
!15 = !{i64 10}
!16 = !{i64 11}
!17 = !{i64 12}
!18 = !{i64 13}
!19 = !{i64 14}
!20 = !{i64 15}
!21 = !{i64 16}
!22 = !{i64 17}
!23 = !{i64 18}
!24 = !{i64 19}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !8, i64 0}
!27 = !{i64 20}
!28 = !{i64 21}
!29 = !{i64 22}
!30 = !{i64 23}
!31 = !{i64 24}
!32 = !{i64 25}
!33 = !{i64 26}
!34 = !{i64 27}
!35 = !{i64 28}
!36 = !{i64 29}
!37 = !{i64 30}
!38 = !{i64 31}
!39 = !{i64 32}
!40 = !{i64 33}
!41 = !{i64 34}
!42 = !{i64 35}
!43 = !{i64 36}
!44 = !{i64 37}
!45 = !{i64 38}
!46 = !{i64 39}
!47 = !{i64 40}
!48 = !{i64 41}
!49 = !{i64 42}
!50 = !{i64 43}
!51 = !{i64 44}
!52 = !{i64 45}
!53 = !{i64 46}
!54 = !{i64 47}
!55 = !{i64 48}
!56 = !{i64 49}
!57 = !{i64 50}
!58 = !{i64 51}
!59 = !{i64 52}
!60 = !{i64 53}
!61 = !{i64 54}
!62 = !{i64 55}
!63 = !{i64 56}
!64 = !{i64 57}
!65 = !{i64 58}
!66 = !{i64 59}
!67 = !{i64 60}
!68 = !{i64 61}
!69 = !{i64 62}
!70 = !{i64 63}
!71 = !{i64 64}
!72 = !{i64 65}
!73 = !{i64 66}
!74 = !{i64 67}
!75 = !{i64 68}
!76 = !{i64 69}
!77 = !{i64 70}
!78 = !{i64 71}
!79 = !{i64 72}
!80 = !{i64 73}
!81 = !{i64 74}
!82 = !{i64 75}
!83 = !{i64 76}
!84 = !{i64 77}
!85 = !{i64 78}
!86 = !{i64 79}
!87 = !{i64 80}
!88 = !{i64 81}
!89 = !{i64 82}
!90 = !{i64 83}
!91 = !{i64 84}
!92 = !{i64 85}
!93 = !{i64 86}
!94 = !{i64 87}
!95 = !{i64 88}
!96 = !{!97, !7, i64 0}
!97 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !7, i64 0}
!98 = !{i64 89}
!99 = !{i64 90}
!100 = !{i64 91}
!101 = !{!102, !7, i64 0}
!102 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !7, i64 0}
!103 = !{i64 92}
!104 = !{i64 93}
!105 = !{i64 94}
!106 = !{i64 95}
!107 = !{i64 96}
!108 = !{i64 97}
!109 = !{i64 98}
!110 = !{i64 99}
!111 = !{i64 100}
!112 = !{i64 101}
!113 = !{i64 102}
!114 = !{i64 103}
!115 = !{i64 104}
!116 = !{i64 105}
!117 = !{i64 106}
!118 = !{i64 107}
!119 = !{i64 108}
!120 = !{i64 109}
!121 = !{i64 110}
!122 = !{i64 111}
!123 = !{i64 112}
!124 = !{i64 113}
!125 = !{i64 114}
!126 = !{i64 115}
!127 = !{i64 116}
!128 = !{i64 117}
!129 = !{i64 118}
!130 = !{i64 119}
!131 = !{i64 120}
!132 = !{i64 121}
!133 = !{i64 122}
!134 = !{i64 123}
!135 = !{i64 124}
!136 = !{i64 125}
!137 = !{i64 126}
!138 = !{i64 127}
!139 = !{i64 128}
!140 = !{i64 129}
!141 = !{i64 130}
!142 = !{i64 131}
!143 = !{i64 132}
!144 = !{i64 133}
!145 = !{i64 134}
!146 = !{i64 135}
!147 = !{i64 136}
!148 = !{i64 137}
!149 = !{i64 138}
!150 = !{i64 139}
!151 = !{!152, !153, i64 0}
!152 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !153, i64 0}
!153 = !{!"long", !8, i64 0}
!154 = !{i64 140}
!155 = !{i64 141}
!156 = !{i64 142}
!157 = !{i64 143}
!158 = !{i64 144}
!159 = !{i64 145}
!160 = !{i64 146}
!161 = !{i64 147}
!162 = !{i64 148}
!163 = !{i64 149}
!164 = !{i64 150}
!165 = !{i64 151}
!166 = !{i64 152}
!167 = !{i64 153}
!168 = !{i64 154}
!169 = !{i64 155}
!170 = !{i64 156}
!171 = !{i64 157}
!172 = !{i64 158}
!173 = !{i64 159}
!174 = !{i64 160}
!175 = !{i64 161}
!176 = !{i64 162}
!177 = !{i64 163}
!178 = !{i64 164}
!179 = !{i64 165}
!180 = !{i64 166}
!181 = !{i64 167}
!182 = !{i64 168}
!183 = !{i64 169}
!184 = !{i64 170}
!185 = !{i64 171}
!186 = !{i64 172}
!187 = !{i64 173}
!188 = !{i64 174}
!189 = !{i64 175}
!190 = !{i64 176}
!191 = !{i64 177}
!192 = !{i64 178}
!193 = !{i64 179}
!194 = !{i64 180}
!195 = !{i64 181}
!196 = !{i64 182}
!197 = !{i64 183}
!198 = !{i64 184}
!199 = !{i64 185}
!200 = !{i64 186}
!201 = !{i64 187}
!202 = !{i64 188}
!203 = !{i64 189}
!204 = !{i64 190}
!205 = !{i64 191}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!208 = distinct !{!208, !"_ZN7checker12ModelChecker10getSchListEv"}
!209 = !{i64 192}
!210 = !{i64 193}
!211 = !{i64 194}
!212 = !{!213, !7, i64 8}
!213 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !7, i64 0, !7, i64 8, !214, i64 16}
!214 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!215 = !{i64 195}
!216 = !{i64 196}
!217 = !{!213, !7, i64 0}
!218 = !{i64 197}
!219 = !{i64 198}
!220 = !{i64 199}
!221 = !{i64 200}
!222 = !{i64 201}
!223 = !{i64 202}
!224 = !{i64 203}
!225 = !{i64 204}
!226 = !{i64 205}
!227 = !{i64 206}
!228 = !{i64 207}
!229 = !{i64 208}
!230 = !{i64 209}
!231 = !{i64 210}
!232 = !{i64 211}
!233 = !{i64 212}
!234 = !{i64 213}
!235 = !{i64 214}
!236 = !{i64 215}
!237 = !{i64 216}
!238 = !{i64 217}
!239 = !{i64 218}
!240 = !{i64 219}
!241 = !{i64 220}
!242 = !{i64 221}
!243 = !{i64 222}
!244 = !{i64 223}
!245 = !{i64 224}
!246 = !{i64 225}
!247 = !{i64 226}
!248 = !{i64 227}
!249 = !{i64 228}
!250 = !{i64 229}
!251 = !{i64 230}
!252 = !{i64 231}
!253 = !{i64 232}
!254 = !{i64 233}
!255 = !{i64 234}
!256 = !{i64 235}
!257 = !{i64 236}
!258 = !{i64 237}
!259 = !{i64 238}
!260 = !{i64 239}
!261 = !{i64 240}
!262 = !{i64 241}
!263 = !{i64 242}
!264 = !{i64 243}
!265 = !{i64 244}
!266 = !{i64 245}
!267 = !{i64 246}
!268 = !{i64 247}
!269 = !{i64 248}
!270 = !{i64 249}
!271 = !{i64 250}
!272 = !{i64 251}
!273 = !{i64 252}
!274 = !{i64 253}
!275 = !{i64 254}
!276 = !{i64 255}
!277 = !{i64 256}
!278 = !{i64 257}
!279 = !{i64 258}
!280 = !{i64 259}
!281 = !{i64 260}
!282 = !{i64 261}
!283 = !{i64 262}
!284 = !{i64 263}
!285 = !{i64 264}
!286 = !{i64 265}
!287 = !{i64 266}
!288 = !{i64 267}
!289 = !{i64 268}
!290 = !{i64 269}
!291 = !{i64 270}
!292 = !{i64 271}
!293 = !{i64 272}
!294 = !{i64 274}
!295 = !{i64 275}
!296 = !{i64 276}
!297 = !{i64 278}
!298 = !{i64 279}
!299 = !{i64 280}
!300 = !{i64 281}
!301 = !{i64 283}
!302 = !{i64 284}
!303 = !{i64 285}
!304 = !{i64 287}
!305 = !{i64 288}
!306 = !{i64 289}
!307 = !{i64 290}
!308 = !{i64 292}
!309 = !{i64 293}
!310 = !{i64 294}
!311 = !{i64 295}
!312 = !{i64 297}
!313 = !{i64 298}
!314 = !{i64 299}
!315 = !{i64 301}
!316 = !{i64 302}
!317 = !{i64 303}
!318 = !{i64 304}
!319 = !{i64 305}
!320 = !{i64 307}
!321 = !{i64 308}
!322 = !{i64 309}
!323 = !{i64 310}
!324 = !{i64 311}
!325 = !{i64 313}
!326 = !{i64 314}
!327 = !{i64 315}
!328 = !{i64 316}
!329 = !{i64 318}
!330 = !{i64 319}
!331 = !{i64 320}
!332 = !{i64 321}
!333 = !{i64 322}
!334 = !{i64 323}
!335 = !{i64 325}
!336 = !{i64 326}
!337 = !{i64 327}
!338 = !{i64 328}
!339 = !{i64 329}
!340 = !{i64 330}
!341 = !{i64 332}
!342 = !{i64 333}
!343 = !{i64 334}
!344 = !{i64 335}
!345 = !{i64 336}
!346 = !{i64 337}
!347 = !{i64 339}
!348 = !{i64 340}
!349 = !{i64 341}
!350 = !{i64 342}
!351 = !{i64 344}
!352 = !{i64 345}
!353 = !{i64 346}
!354 = !{i64 347}
!355 = !{i64 348}
!356 = !{i64 349}
!357 = !{i64 350}
!358 = !{i64 352}
!359 = !{i64 353}
!360 = !{i64 354}
!361 = !{i64 356}
!362 = !{i64 357}
!363 = !{i64 358}
!364 = !{i64 360}
!365 = !{i64 361}
!366 = !{i64 362}
!367 = !{i64 363}
!368 = !{i64 364}
!369 = !{i64 365}
!370 = !{i64 366}
!371 = !{i64 367}
!372 = !{i64 368}
!373 = !{i64 369}
!374 = !{i64 370}
!375 = !{i64 371}
!376 = !{i64 372}
!377 = !{i64 373}
!378 = !{i64 374}
!379 = !{i64 375}
!380 = !{i64 377}
!381 = !{i64 378}
!382 = !{i64 380}
!383 = !{i64 381}
!384 = !{i64 382}
!385 = !{i64 383}
!386 = !{i64 384}
!387 = !{i64 385}
!388 = !{i64 386}
!389 = !{i64 387}
!390 = !{i64 388}
!391 = !{i64 389}
!392 = !{i64 390}
!393 = !{i64 391}
!394 = !{i64 392}
!395 = !{i64 394}
!396 = !{i64 395}
!397 = !{i64 397}
!398 = !{i64 398}
!399 = !{i64 399}
!400 = !{i64 400}
!401 = !{i64 401}
!402 = !{i64 402}
!403 = !{i64 403}
!404 = !{i64 405}
!405 = !{i64 406}
!406 = !{i64 408}
!407 = !{i64 409}
!408 = !{i64 410}
!409 = !{i64 411}
!410 = !{i64 412}
!411 = !{i64 413}
!412 = !{i64 414}
!413 = !{i64 415}
!414 = !{i64 417}
!415 = !{i64 418}
!416 = !{i64 419}
!417 = !{i64 420}
!418 = !{i64 421}
!419 = !{i64 423}
!420 = !{i64 424}
!421 = !{i64 425}
!422 = !{i64 427}
!423 = !{i64 428}
!424 = !{i64 429}
!425 = !{i64 431}
!426 = !{i64 432}
!427 = !{i64 433}
!428 = !{i64 434}
!429 = !{i64 435}
!430 = !{i64 437}
!431 = !{i64 438}
!432 = !{i64 439}
!433 = !{i64 440}
!434 = !{i64 441}
!435 = !{i64 443}
!436 = !{i64 444}
!437 = !{i64 445}
!438 = !{i64 446}
!439 = !{i64 448}
!440 = !{i64 449}
!441 = !{i64 450}
!442 = !{i64 451}
!443 = !{i64 452}
!444 = !{i64 453}
!445 = !{i64 455}
!446 = !{i64 456}
!447 = !{i64 458}
!448 = !{i64 459}
!449 = !{i64 460}
!450 = !{i64 462}
!451 = !{i64 463}
!452 = !{i64 464}
!453 = !{i64 465}
!454 = !{i64 466}
!455 = !{i64 467}
!456 = !{i64 468}
!457 = !{i64 469}
!458 = !{i64 470}
!459 = !{i64 471}
!460 = !{i64 472}
!461 = !{i64 473}
!462 = !{i64 474}
!463 = !{i64 475}
!464 = !{i64 476}
!465 = !{i64 477}
!466 = !{i64 479}
!467 = !{i64 480}
!468 = !{i64 482}
!469 = !{i64 483}
!470 = !{i64 484}
!471 = !{i64 485}
!472 = !{i64 486}
!473 = !{i64 487}
!474 = !{i64 488}
!475 = !{i64 489}
!476 = !{i64 490}
!477 = !{i64 491}
!478 = !{i64 492}
!479 = !{i64 493}
!480 = !{i64 494}
!481 = !{i64 496}
!482 = !{i64 497}
!483 = !{i64 499}
!484 = !{i64 500}
!485 = !{i64 501}
!486 = !{i64 502}
!487 = !{i64 503}
!488 = !{i64 504}
!489 = !{i64 505}
!490 = !{i64 507}
!491 = !{i64 508}
!492 = !{i64 510}
!493 = !{i64 511}
!494 = !{i64 512}
!495 = !{i64 513}
!496 = !{i64 514}
!497 = !{i64 515}
!498 = !{i64 516}
!499 = !{i64 517}
!500 = !{i64 519}
!501 = !{i64 520}
!502 = !{i64 521}
!503 = !{i64 523}
!504 = !{i64 524}
!505 = !{i64 525}
!506 = !{i64 526}
!507 = !{i64 527}
!508 = !{i64 528}
!509 = !{i64 530}
!510 = !{i64 531}
!511 = !{i64 532}
!512 = !{i64 533}
!513 = !{i64 535}
!514 = !{i64 536}
!515 = !{i64 537}
!516 = !{i64 538}
!517 = !{i64 539}
!518 = !{i64 541}
!519 = !{i64 542}
!520 = !{i64 543}
!521 = !{i64 544}
!522 = !{i64 546}
!523 = !{i64 547}
!524 = !{i64 548}
!525 = !{i64 549}
!526 = !{i64 550}
!527 = !{i64 552}
!528 = !{i64 553}
!529 = !{i64 554}
!530 = !{i64 555}
!531 = !{i64 556}
!532 = !{i64 558}
!533 = !{i64 559}
!534 = !{i64 560}
!535 = !{i64 561}
!536 = !{i64 563}
!537 = !{i64 564}
!538 = !{i64 565}
!539 = !{i64 566}
!540 = !{i64 568}
!541 = !{i64 569}
!542 = !{i64 570}
!543 = !{i64 571}
!544 = !{i64 572}
!545 = !{i64 574}
!546 = !{i64 575}
!547 = !{i64 576}
!548 = !{i64 577}
!549 = !{i64 578}
!550 = !{i64 579}
