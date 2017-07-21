; ModuleID = 'example.bc'
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
@__func__._Z9user_mainiPPc = private unnamed_addr constant [10 x i8] c"user_main\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@str = private unnamed_addr constant [7 x i8] c"resize\00"

; Function Attrs: ssp uwtable
define i32 @_Z9user_mainiPPc(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %t = alloca %"class.std::__1::thread", align 8
  tail call void @checker_generateExecutor()
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %call = tail call %struct.Deque* @create()
  store %struct.Deque* %call, %struct.Deque** @q, align 8, !tbaa !2
  %0 = bitcast %"class.std::__1::thread"* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t, void ()* nonnull @_ZL4taskv)
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t, i64 0, i32 0
  %1 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !2
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !2
  invoke void @push(%struct.Deque* %2, i32 1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %3 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !2
  invoke void @push(%struct.Deque* %3, i32 2)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont3
  %4 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !2
  invoke void @push(%struct.Deque* %4, i32 4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  %5 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !2
  %call7 = invoke i32 @take(%struct.Deque* %5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont5
  store i32 %call7, i32* @b, align 4, !tbaa !6
  %6 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !2
  %call9 = invoke i32 @take(%struct.Deque* %6)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  store i32 %call9, i32* @c, align 4, !tbaa !6
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !2
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %7)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %invoke.cont8
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont14
  %8 = load i32, i32* @a, align 4, !tbaa !6
  %switch.tableidx = add i32 %8, 1
  %9 = icmp ult i32 %switch.tableidx, 6
  br i1 %9, label %switch.lookup, label %if.end

lpad:                                             ; preds = %invoke.cont14, %invoke.cont8, %invoke.cont6, %invoke.cont5, %invoke.cont4, %invoke.cont3, %invoke.cont, %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

switch.lookup:                                    ; preds = %invoke.cont15
  %switch.cast = zext i32 %switch.tableidx to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 3
  %switch.downshift = lshr i48 1099528470529, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  br label %if.end

if.end:                                           ; preds = %invoke.cont15, %switch.lookup
  %correct.0 = phi i8 [ %switch.masked, %switch.lookup ], [ 0, %invoke.cont15 ]
  %11 = load i32, i32* @b, align 4, !tbaa !6
  switch i32 %11, label %if.then28 [
    i32 -1, label %if.end29
    i32 4, label %if.end29
    i32 2, label %if.end29
    i32 1, label %if.end29
  ]

if.then28:                                        ; preds = %if.end
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.then28
  %correct.1 = phi i8 [ 0, %if.then28 ], [ %correct.0, %if.end ], [ %correct.0, %if.end ], [ %correct.0, %if.end ], [ %correct.0, %if.end ]
  %cmp36 = icmp eq i32 %8, -1
  %.pre = load i32, i32* @c, align 4
  br i1 %cmp36, label %if.end48, label %switch.early.test

switch.early.test:                                ; preds = %if.end29
  switch i32 %.pre, label %if.then37 [
    i32 4, label %if.end38
    i32 2, label %if.end38
    i32 1, label %if.end38
  ]

if.then37:                                        ; preds = %switch.early.test
  br label %if.end38

if.end38:                                         ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %if.then37
  %correct.2 = phi i8 [ 0, %if.then37 ], [ %correct.1, %switch.early.test ], [ %correct.1, %switch.early.test ], [ %correct.1, %switch.early.test ]
  %cmp41 = icmp ne i32 %11, -1
  %cmp43 = icmp ne i32 %.pre, -1
  %or.cond70 = and i1 %cmp41, %cmp43
  br i1 %or.cond70, label %land.lhs.true44, label %if.end48

land.lhs.true44:                                  ; preds = %if.end38
  %add = add nsw i32 %11, %8
  %add45 = add nsw i32 %add, %.pre
  %cmp46 = icmp eq i32 %add45, 7
  %correct.2. = select i1 %cmp46, i8 %correct.2, i8 0
  br label %if.end48

if.end48:                                         ; preds = %if.end29, %land.lhs.true44, %if.end38
  %correct.3 = phi i8 [ %correct.2, %if.end38 ], [ %correct.2., %land.lhs.true44 ], [ %correct.1, %if.end29 ]
  %12 = and i8 %correct.3, 1
  %tobool = icmp eq i8 %12, 0
  br i1 %tobool, label %if.then49, label %cond.end

if.then49:                                        ; preds = %if.end48
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %11, i32 %.pre)
  invoke void @__assert_rtn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__._Z9user_mainiPPc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #11
          to label %invoke.cont56 unwind label %lpad50

lpad50:                                           ; preds = %invoke.cont57, %cond.end, %if.then49
  %13 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

invoke.cont56:                                    ; preds = %if.then49
  unreachable

cond.end:                                         ; preds = %if.end48
  invoke void @checker_thread_end()
          to label %invoke.cont57 unwind label %lpad50

invoke.cont57:                                    ; preds = %cond.end
  invoke void @checker_solver()
          to label %invoke.cont58 unwind label %lpad50

invoke.cont58:                                    ; preds = %invoke.cont57
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10
  ret i32 0

ehcleanup:                                        ; preds = %lpad50, %lpad
  %.sink76 = phi { i8*, i32 } [ %13, %lpad50 ], [ %10, %lpad ]
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10
  resume { i8*, i32 } %.sink76
}

declare i32 @__gxx_personality_v0(...)

declare void @checker_generateExecutor() local_unnamed_addr #1

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define internal void @_ZL4taskv() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %0 = load %struct.Deque*, %struct.Deque** @q, align 8, !tbaa !2
  %call = tail call i32 @steal(%struct.Deque* %0)
  store i32 %call, i32* @a, align 4, !tbaa !6
  tail call void @checker_thread_end()
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 8) #12
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #12
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  %2 = ptrtoint void ()* %__f to i64
  %3 = bitcast i8* %call4 to i64*
  store i64 %1, i64* %3, align 8, !tbaa !8
  %4 = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %4 to i64*
  store i64 %2, i64* %5, align 8, !tbaa !10
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont3
  %cmp = icmp eq i32 %call.i31, 0
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  tail call void @_ZdlPv(i8* nonnull %call) #13
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #11
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %if.else
  unreachable

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !2
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*
  tail call void @_ZdlPv(i8* %14) #13
  br label %ehcleanup18.thread

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #13
  br label %eh.resume

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10
  tail call void @_ZdlPv(i8* nonnull %call) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { i8*, i32 } %lpad.val20
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
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  %0 = bitcast i8* %__vp to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !2
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !12
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8
  %3 = bitcast i8* %value.i.i.i to void ()**
  %4 = load void ()*, void ()** %3, align 8, !tbaa !2
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !2
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*
  tail call void @_ZdlPv(i8* %6) #13
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #13
  ret i8* null

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup
  %tobool.i.i.i = icmp eq i8* %__vp, null
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  br label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ]
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !2
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*
  tail call void @_ZdlPv(i8* %8) #13
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #13
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30
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
  %ref.tmp = alloca %"class.std::__1::vector", align 8
  %call = tail call i8* @_Znwm(i64 96) #12
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !2
  %call1 = tail call i32 @user_main()
  %1 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #10
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !2
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !15
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !18, !noalias !15
  %8 = bitcast %"class.std::__1::vector"* %schList.i15 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !21, !noalias !15
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #10
  br label %while.end

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ]
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ]
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ]
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #11
          to label %.noexc.i.i.i unwind label %lpad.i.i.i

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #12
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !18, !alias.scope !15
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !21, !alias.scope !15
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !2, !alias.scope !15
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3
  %14 = inttoptr i64 %10 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #10
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !2, !alias.scope !15
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !21, !alias.scope !15
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64
  store i64 %17, i64* %2, align 8, !tbaa !18, !alias.scope !15
  call void @_ZdlPv(i8* %16) #13
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ]
  %tobool10 = icmp eq i64 %.ph, %13
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #13
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #10
  br i1 %tobool10, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main()
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #10
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !2
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !15
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !18, !noalias !15
  %21 = bitcast %"class.std::__1::vector"* %schList.i to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !21, !noalias !15
  %sub.ptr.sub.i.i.i.i = sub i64 %20, %22
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* nonnull %call) #13
  resume { i8*, i32 } %23

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0
}

declare void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"*) unnamed_addr #1

declare i32 @user_main() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind ssp uwtable
define noalias %struct.Deque* @create() local_unnamed_addr #8 {
entry:
  %call = tail call i8* @calloc(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.Deque*
  %call1 = tail call i8* @calloc(i64 1, i64 16)
  %array = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %array to i64*
  %2 = ptrtoint i8* %call1 to i64
  store atomic i64 %2, i64* %1 monotonic, align 8
  %top = bitcast i8* %call to i64*
  store atomic i64 0, i64* %top monotonic, align 8
  %bottom = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %bottom to i64*
  store atomic i64 0, i64* %3 monotonic, align 8
  %size = bitcast i8* %call1 to i64*
  store atomic i64 2, i64* %size monotonic, align 8
  ret %struct.Deque* %0
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @take(%struct.Deque* nocapture %q) local_unnamed_addr #9 {
entry:
  %bottom = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1
  %0 = load atomic i64, i64* %bottom monotonic, align 8
  %sub = add i64 %0, -1
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2
  %1 = load atomic i64, i64* %array monotonic, align 8
  %2 = inttoptr i64 %1 to %struct.Array*
  store atomic i64 %sub, i64* %bottom monotonic, align 8
  fence seq_cst
  %top = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0
  %3 = load atomic i64, i64* %top monotonic, align 8
  %cmp = icmp ugt i64 %3, %sub
  br i1 %cmp, label %if.end18.sink.split, label %if.then

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.Array, %struct.Array* %2, i64 0, i32 0
  %4 = load atomic i64, i64* %size monotonic, align 8
  %rem = urem i64 %sub, %4
  %arrayidx = getelementptr inbounds %struct.Array, %struct.Array* %2, i64 0, i32 1, i64 %rem
  %5 = load atomic i32, i32* %arrayidx monotonic, align 4
  %cmp6 = icmp eq i64 %3, %sub
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.then
  %6 = cmpxchg i64* %top, i64 %sub, i64 %0 seq_cst monotonic
  %7 = extractvalue { i64, i1 } %6, 1
  %x.0 = select i1 %7, i32 %5, i32 -1
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %entry, %if.then7
  %x.1.ph = phi i32 [ %x.0, %if.then7 ], [ -1, %entry ]
  store atomic i64 %0, i64* %bottom monotonic, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.then
  %x.1 = phi i32 [ %5, %if.then ], [ %x.1.ph, %if.end18.sink.split ]
  ret i32 %x.1
}

; Function Attrs: nounwind ssp uwtable
define void @resize(%struct.Deque* nocapture %q) local_unnamed_addr #8 {
entry:
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2
  %0 = load atomic i64, i64* %array monotonic, align 8
  %1 = inttoptr i64 %0 to %struct.Array*
  %size1 = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 0
  %2 = load atomic i64, i64* %size1 monotonic, align 8
  %shl = shl i64 %2, 1
  %mul = shl i64 %2, 3
  %add = add i64 %mul, 8
  %call = tail call i8* @calloc(i64 1, i64 %add)
  %top3 = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0
  %3 = load atomic i64, i64* %top3 monotonic, align 8
  %bottom5 = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1
  %4 = load atomic i64, i64* %bottom5 monotonic, align 8
  %size7 = bitcast i8* %call to i64*
  store atomic i64 %shl, i64* %size7 monotonic, align 8
  %cmp35 = icmp ugt i64 %4, %3
  br i1 %cmp35, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buffer = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %buffer to [0 x i32]*
  %6 = sub i64 %4, %3
  %7 = add i64 %4, -1
  %xtraiter = and i64 %6, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol.preheader

for.body.prol.preheader:                          ; preds = %for.body.lr.ph
  br label %for.body.prol

for.body.prol:                                    ; preds = %for.body.prol.preheader
  %rem.prol = urem i64 %3, %shl
  %arrayidx.prol = getelementptr inbounds [0 x i32], [0 x i32]* %5, i64 0, i64 %rem.prol
  %rem10.prol = urem i64 %3, %2
  %arrayidx11.prol = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 1, i64 %rem10.prol
  %8 = load atomic i32, i32* %arrayidx11.prol monotonic, align 4
  store atomic i32 %8, i32* %arrayidx.prol monotonic, align 4
  %inc.prol = add nuw i64 %3, 1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.lr.ph, %for.body.prol
  %i.036.unr = phi i64 [ %3, %for.body.lr.ph ], [ %inc.prol, %for.body.prol ]
  %9 = icmp eq i64 %7, %3
  br i1 %9, label %for.end.loopexit, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.prol.loopexit
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %i.036 = phi i64 [ %i.036.unr, %for.body.lr.ph.new ], [ %inc.1, %for.body ]
  %rem = urem i64 %i.036, %shl
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %5, i64 0, i64 %rem
  %rem10 = urem i64 %i.036, %2
  %arrayidx11 = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 1, i64 %rem10
  %10 = load atomic i32, i32* %arrayidx11 monotonic, align 4
  store atomic i32 %10, i32* %arrayidx monotonic, align 4
  %inc = add nuw i64 %i.036, 1
  %rem.1 = urem i64 %inc, %shl
  %arrayidx.1 = getelementptr inbounds [0 x i32], [0 x i32]* %5, i64 0, i64 %rem.1
  %rem10.1 = urem i64 %inc, %2
  %arrayidx11.1 = getelementptr inbounds %struct.Array, %struct.Array* %1, i64 0, i32 1, i64 %rem10.1
  %11 = load atomic i32, i32* %arrayidx11.1 monotonic, align 4
  store atomic i32 %11, i32* %arrayidx.1 monotonic, align 4
  %inc.1 = add i64 %i.036, 2
  %exitcond.1 = icmp eq i64 %inc.1, %4
  br i1 %exitcond.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body.prol.loopexit, %for.end.loopexit.unr-lcssa
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %12 = ptrtoint i8* %call to i64
  store atomic i64 %12, i64* %array monotonic, align 8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #10

; Function Attrs: nounwind ssp uwtable
define void @push(%struct.Deque* nocapture %q, i32 %x) local_unnamed_addr #8 {
entry:
  %bottom = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1
  %0 = load atomic i64, i64* %bottom monotonic, align 8
  %top = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0
  %1 = load atomic i64, i64* %top acquire, align 8
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2
  %2 = load atomic i64, i64* %array monotonic, align 8
  %3 = inttoptr i64 %2 to %struct.Array*
  %sub = sub i64 %0, %1
  %size = getelementptr inbounds %struct.Array, %struct.Array* %3, i64 0, i32 0
  %4 = load atomic i64, i64* %size monotonic, align 8
  %sub4 = add i64 %4, -1
  %cmp = icmp ugt i64 %sub, %sub4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load atomic i64, i64* %array monotonic, align 8
  %6 = inttoptr i64 %5 to %struct.Array*
  %size1.i = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 0
  %7 = load atomic i64, i64* %size1.i monotonic, align 8
  %shl.i = shl i64 %7, 1
  %mul.i = shl i64 %7, 3
  %add.i = add i64 %mul.i, 8
  %call.i = tail call i8* @calloc(i64 1, i64 %add.i) #10
  %8 = load atomic i64, i64* %top monotonic, align 8
  %9 = load atomic i64, i64* %bottom monotonic, align 8
  %size7.i = bitcast i8* %call.i to i64*
  store atomic i64 %shl.i, i64* %size7.i monotonic, align 8
  %cmp35.i = icmp ugt i64 %9, %8
  br i1 %cmp35.i, label %for.body.lr.ph.i, label %resize.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %buffer.i = getelementptr inbounds i8, i8* %call.i, i64 8
  %10 = bitcast i8* %buffer.i to [0 x i32]*
  %11 = sub i64 %9, %8
  %12 = add i64 %9, -1
  %xtraiter = and i64 %11, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.i.prol.loopexit, label %for.body.i.prol.preheader

for.body.i.prol.preheader:                        ; preds = %for.body.lr.ph.i
  br label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.prol.preheader
  %rem.i.prol = urem i64 %8, %shl.i
  %arrayidx.i.prol = getelementptr inbounds [0 x i32], [0 x i32]* %10, i64 0, i64 %rem.i.prol
  %rem10.i.prol = urem i64 %8, %7
  %arrayidx11.i.prol = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 1, i64 %rem10.i.prol
  %13 = load atomic i32, i32* %arrayidx11.i.prol monotonic, align 4
  store atomic i32 %13, i32* %arrayidx.i.prol monotonic, align 4
  %inc.i.prol = add nuw i64 %8, 1
  br label %for.body.i.prol.loopexit

for.body.i.prol.loopexit:                         ; preds = %for.body.lr.ph.i, %for.body.i.prol
  %i.036.i.unr = phi i64 [ %8, %for.body.lr.ph.i ], [ %inc.i.prol, %for.body.i.prol ]
  %14 = icmp eq i64 %12, %8
  br i1 %14, label %resize.exit.loopexit, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.i.prol.loopexit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %i.036.i = phi i64 [ %i.036.i.unr, %for.body.lr.ph.i.new ], [ %inc.i.1, %for.body.i ]
  %rem.i = urem i64 %i.036.i, %shl.i
  %arrayidx.i = getelementptr inbounds [0 x i32], [0 x i32]* %10, i64 0, i64 %rem.i
  %rem10.i = urem i64 %i.036.i, %7
  %arrayidx11.i = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 1, i64 %rem10.i
  %15 = load atomic i32, i32* %arrayidx11.i monotonic, align 4
  store atomic i32 %15, i32* %arrayidx.i monotonic, align 4
  %inc.i = add nuw i64 %i.036.i, 1
  %rem.i.1 = urem i64 %inc.i, %shl.i
  %arrayidx.i.1 = getelementptr inbounds [0 x i32], [0 x i32]* %10, i64 0, i64 %rem.i.1
  %rem10.i.1 = urem i64 %inc.i, %7
  %arrayidx11.i.1 = getelementptr inbounds %struct.Array, %struct.Array* %6, i64 0, i32 1, i64 %rem10.i.1
  %16 = load atomic i32, i32* %arrayidx11.i.1 monotonic, align 4
  store atomic i32 %16, i32* %arrayidx.i.1 monotonic, align 4
  %inc.i.1 = add i64 %i.036.i, 2
  %exitcond.i.1 = icmp eq i64 %inc.i.1, %9
  br i1 %exitcond.i.1, label %resize.exit.loopexit.unr-lcssa, label %for.body.i

resize.exit.loopexit.unr-lcssa:                   ; preds = %for.body.i
  br label %resize.exit.loopexit

resize.exit.loopexit:                             ; preds = %for.body.i.prol.loopexit, %resize.exit.loopexit.unr-lcssa
  br label %resize.exit

resize.exit:                                      ; preds = %resize.exit.loopexit, %if.then
  %17 = ptrtoint i8* %call.i to i64
  store atomic i64 %17, i64* %array monotonic, align 8
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0)) #10
  %18 = load atomic i64, i64* %array monotonic, align 8
  %19 = inttoptr i64 %18 to %struct.Array*
  br label %if.end

if.end:                                           ; preds = %resize.exit, %entry
  %a.0 = phi %struct.Array* [ %19, %resize.exit ], [ %3, %entry ]
  %size7 = getelementptr inbounds %struct.Array, %struct.Array* %a.0, i64 0, i32 0
  %20 = load atomic i64, i64* %size7 monotonic, align 8
  %rem = urem i64 %0, %20
  %arrayidx = getelementptr inbounds %struct.Array, %struct.Array* %a.0, i64 0, i32 1, i64 %rem
  store atomic i32 %x, i32* %arrayidx monotonic, align 4
  fence release
  %add = add i64 %0, 1
  store atomic i64 %add, i64* %bottom monotonic, align 8
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @steal(%struct.Deque* nocapture %q) local_unnamed_addr #9 {
entry:
  %top = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 0
  %0 = load atomic i64, i64* %top acquire, align 8
  fence seq_cst
  %bottom = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 1
  %1 = load atomic i64, i64* %bottom acquire, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %array = getelementptr inbounds %struct.Deque, %struct.Deque* %q, i64 0, i32 2
  %2 = load atomic i64, i64* %array monotonic, align 8
  %3 = inttoptr i64 %2 to %struct.Array*
  %size = getelementptr inbounds %struct.Array, %struct.Array* %3, i64 0, i32 0
  %4 = load atomic i64, i64* %size monotonic, align 8
  %rem = urem i64 %0, %4
  %arrayidx = getelementptr inbounds %struct.Array, %struct.Array* %3, i64 0, i32 1, i64 %rem
  %5 = load atomic i32, i32* %arrayidx monotonic, align 4
  %add = add i64 %0, 1
  %6 = cmpxchg i64* %top, i64 %0, i64 %add seq_cst monotonic
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %if.end7, label %cleanup8

if.end7:                                          ; preds = %if.then, %entry
  %x.0 = phi i32 [ %5, %if.then ], [ -1, %entry ]
  br label %cleanup8

cleanup8:                                         ; preds = %if.then, %if.end7
  %retval.1 = phi i32 [ %x.0, %if.end7 ], [ -2, %if.then ]
  ret i32 %retval.1
}

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
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !3, i64 0}
!10 = !{!11, !3, i64 0}
!11 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !3, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !14, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!17 = distinct !{!17, !"_ZN7checker12ModelChecker10getSchListEv"}
!18 = !{!19, !3, i64 8}
!19 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !3, i64 0, !3, i64 8, !20, i64 16}
!20 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!21 = !{!19, !3, i64 0}
