; ModuleID = 'example.bc'
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
  %__begin_.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 0
  %0 = load i32*, i32** %__begin_.i.i, align 8, !tbaa !2
  %cmp.i.i = icmp eq i32* %0, null
  br i1 %cmp.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %1 = ptrtoint i32* %0 to i64
  %__end_.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 1
  %2 = bitcast i32** %__end_.i.i.i.i to i64*
  store i64 %1, i64* %2, align 8, !tbaa !8
  %.cast.i.i = bitcast i32* %0 to i8*
  tail call void @_ZdlPv(i8* %.cast.i.i) #12
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev.exit:    ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z8thread_1v() #2 {
entry:
  %ref.tmp = alloca i32, align 4
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %0 = bitcast i32* %ref.tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %0) #1
  store i32 42, i32* %ref.tmp, align 4, !tbaa !9
  %1 = load i32*, i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 1), align 8, !tbaa !8
  %2 = load i32*, i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 2, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i = icmp ult i32* %1, %2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  store i32 42, i32* %1, align 4, !tbaa !9
  %incdec.ptr.i = getelementptr inbounds i32, i32* %1, i64 1
  store i32* %incdec.ptr.i, i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 1), align 8, !tbaa !8
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi.exit

if.else.i:                                        ; preds = %entry
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_(%"class.std::__1::vector"* nonnull @data, i32* nonnull dereferenceable(4) %ref.tmp)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi.exit: ; preds = %if.then.i, %if.else.i
  call void @llvm.lifetime.end(i64 4, i8* nonnull %0) #1
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0) release, align 4
  call void @checker_thread_end()
  ret void
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
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = cmpxchg i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0), i32 1, i32 2 acq_rel monotonic
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call.i1.i = invoke i32 @sched_yield()
          to label %while.cond unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %while.body
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  tail call void @__clang_call_terminate(i8* %3) #13
  unreachable

while.end:                                        ; preds = %while.cond
  tail call void @checker_thread_end()
  ret void
}

; Function Attrs: ssp uwtable
define void @_Z8thread_3v() #2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0) acquire, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call.i1.i = invoke i32 @sched_yield()
          to label %while.cond unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %while.body
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  tail call void @__clang_call_terminate(i8* %2) #13
  unreachable

while.end:                                        ; preds = %while.cond
  %3 = load i64, i64* bitcast (i32** getelementptr inbounds (%"class.std::__1::vector", %"class.std::__1::vector"* @data, i64 0, i32 0, i32 1) to i64*), align 8, !tbaa !8
  %4 = load i64, i64* bitcast (%"class.std::__1::vector"* @data to i64*), align 8, !tbaa !2
  %cmp.i = icmp eq i64 %3, %4
  br i1 %cmp.i, label %if.then.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit

if.then.i:                                        ; preds = %while.end
  tail call void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv(%"class.std::__1::__vector_base_common"* bitcast (%"class.std::__1::vector"* @data to %"class.std::__1::__vector_base_common"*)) #14
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit:   ; preds = %while.end
  %5 = inttoptr i64 %4 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !9
  %lnot = icmp eq i32 %6, 42
  br i1 %lnot, label %cond.end, label %cond.true, !prof !12

cond.true:                                        ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._Z8thread_3v, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #14
  unreachable

cond.end:                                         ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm.exit
  tail call void @checker_thread_end()
  ret void
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  %c = alloca %"class.std::__1::thread", align 8
  tail call void @checker_generateExecutor()
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store atomic i32 0, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @flag, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4
  %0 = bitcast %"class.std::__1::thread"* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #1
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z8thread_1v)
  %1 = bitcast %"class.std::__1::thread"* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #1
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z8thread_2v)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = bitcast %"class.std::__1::thread"* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #1
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %c, void ()* nonnull @_Z8thread_3v)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %__t_.i45 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i45, align 8, !tbaa !11
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont2
  %__t_.i44 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i44, align 8, !tbaa !11
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %4)
          to label %invoke.cont11 unwind label %lpad5

invoke.cont11:                                    ; preds = %invoke.cont6
  %__t_.i43 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %c, i64 0, i32 0
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i43, align 8, !tbaa !11
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %5)
          to label %invoke.cont16 unwind label %lpad5

invoke.cont16:                                    ; preds = %invoke.cont11
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i45, align 8, !tbaa !11
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %6)
          to label %invoke.cont21 unwind label %lpad5

invoke.cont21:                                    ; preds = %invoke.cont16
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i44, align 8, !tbaa !11
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %7)
          to label %invoke.cont26 unwind label %lpad5

invoke.cont26:                                    ; preds = %invoke.cont21
  %8 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i43, align 8, !tbaa !11
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %8)
          to label %invoke.cont31 unwind label %lpad5

invoke.cont31:                                    ; preds = %invoke.cont26
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont32 unwind label %lpad5

invoke.cont32:                                    ; preds = %invoke.cont31
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont33 unwind label %lpad5

invoke.cont33:                                    ; preds = %invoke.cont32
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %c)
          to label %invoke.cont34 unwind label %lpad5

invoke.cont34:                                    ; preds = %invoke.cont33
  invoke void @checker_thread_end()
          to label %invoke.cont35 unwind label %lpad5

invoke.cont35:                                    ; preds = %invoke.cont34
  invoke void @checker_solver()
          to label %invoke.cont36 unwind label %lpad5

invoke.cont36:                                    ; preds = %invoke.cont35
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %c) #1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #1
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #1
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #1
  ret i32 0

lpad:                                             ; preds = %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  br label %ehcleanup38

lpad1:                                            ; preds = %invoke.cont
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont35, %invoke.cont34, %invoke.cont33, %invoke.cont32, %invoke.cont31, %invoke.cont26, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont6, %invoke.cont2
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %c) #1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #1
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad5, %lpad1
  %ehselector.slot.0 = phi i32 [ %17, %lpad5 ], [ %14, %lpad1 ]
  %exn.slot.0 = phi i8* [ %16, %lpad5 ], [ %13, %lpad1 ]
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #1
  br label %ehcleanup38

ehcleanup38:                                      ; preds = %ehcleanup, %lpad
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %11, %lpad ]
  %exn.slot.1 = phi i8* [ %exn.slot.0, %ehcleanup ], [ %10, %lpad ]
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #1
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0
  %lpad.val40 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val40
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
  %ref.tmp = alloca %"class.std::__1::vector.2", align 8
  %call = tail call i8* @_Znwm(i64 72) #15
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !11
  %call1 = tail call i32 @user_main()
  %1 = bitcast %"class.std::__1::vector.2"* %ref.tmp to i8*
  %__end_.i = getelementptr inbounds %"class.std::__1::vector.2", %"class.std::__1::vector.2"* %ref.tmp, i64 0, i32 0, i32 1
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**
  %4 = bitcast %"class.std::__1::vector.2"* %ref.tmp to i8**
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector.2", %"class.std::__1::vector.2"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #1
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !11
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !13
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !16, !noalias !13
  %8 = bitcast %"class.std::__1::vector.2"* %schList.i15 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !19, !noalias !13
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #1
  br label %while.end

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ]
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ]
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ]
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector.2"* %ref.tmp to %"class.std::__1::__vector_base_common"*
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #14
          to label %.noexc.i.i.i unwind label %lpad.i.i.i

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #15
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !16, !alias.scope !13
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !19, !alias.scope !13
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !13
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3
  %14 = inttoptr i64 %10 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #1
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !11, !alias.scope !13
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector.2", %"class.std::__1::vector.2"* %ref.tmp, i64 0, i32 0, i32 0
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !19, !alias.scope !13
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64
  store i64 %17, i64* %2, align 8, !tbaa !16, !alias.scope !13
  call void @_ZdlPv(i8* %16) #12
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ]
  %tobool10 = icmp eq i64 %.ph, %13
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #12
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #1
  br i1 %tobool10, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main()
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #1
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !11
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !13
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !16, !noalias !13
  %21 = bitcast %"class.std::__1::vector.2"* %schList.i to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !19, !noalias !13
  %sub.ptr.sub.i.i.i.i = sub i64 %20, %22
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* nonnull %call) #12
  resume { i8*, i32 } %23

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #8

declare void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"*) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #10 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #1
  tail call void @_ZSt9terminatev() #13
  unreachable
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
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 1
  %0 = bitcast i32** %__end_.i to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !8
  %2 = bitcast %"class.std::__1::vector"* %this to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !2
  %sub.ptr.sub.i = sub i64 %1, %3
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2
  %add = add nsw i64 %sub.ptr.div.i, 1
  %cmp.i = icmp ugt i64 %add, 4611686018427387903
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %4 = bitcast %"class.std::__1::vector"* %this to %"class.std::__1::__vector_base_common"*
  tail call void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* %4) #14
  unreachable

if.end.i:                                         ; preds = %entry
  %__value_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %this, i64 0, i32 0, i32 2, i32 0, i32 0
  %5 = bitcast i32** %__value_.i.i.i.i.i.i to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !11
  %sub.ptr.sub.i.i.i = sub i64 %6, %3
  %sub.ptr.div.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i, 2
  %cmp3.i = icmp ult i64 %sub.ptr.div.i.i.i, 2305843009213693951
  br i1 %cmp3.i, label %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit, label %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i

_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit: ; preds = %if.end.i
  %mul.i = ashr exact i64 %sub.ptr.sub.i.i.i, 1
  %cmp.i.i.i.i = icmp ult i64 %mul.i, %add
  %.sroa.speculated.i = select i1 %cmp.i.i.i.i, i64 %add, i64 %mul.i
  %cmp.i.i30 = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %cmp.i.i30, label %invoke.cont, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit
  %cmp.i.i.i.i31 = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  br i1 %cmp.i.i.i.i31, label %if.then.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i

if.then.i.i.i.i:                                  ; preds = %cond.true.i.i
  %exception.i.i.i.i.i = tail call i8* @__cxa_allocate_exception(i64 16) #1
  %7 = bitcast i8* %exception.i.i.i.i.i to %"class.std::logic_error"*
  invoke void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* %7, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
          to label %invoke.cont.i.i.i.i.i unwind label %lpad.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i
  %8 = bitcast i8* %exception.i.i.i.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %8, align 8, !tbaa !20
  tail call void @__cxa_throw(i8* %exception.i.i.i.i.i, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #14
  unreachable

lpad.i.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %9 = landingpad { i8*, i32 }
          cleanup
  tail call void @__cxa_free_exception(i8* %exception.i.i.i.i.i) #1
  resume { i8*, i32 } %9

_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i: ; preds = %if.end.i, %cond.true.i.i
  %retval.0.i6167 = phi i64 [ %.sroa.speculated.i, %cond.true.i.i ], [ 4611686018427387903, %if.end.i ]
  %mul.i.i.i.i = shl i64 %retval.0.i6167, 2
  %call.i.i.i.i.i = tail call i8* @_Znwm(i64 %mul.i.i.i.i) #15
  %10 = bitcast i8* %call.i.i.i.i.i to i32*
  br label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit
  %retval.0.i62 = phi i64 [ %retval.0.i6167, %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i ], [ 0, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit ]
  %cond.i.i = phi i32* [ %10, %_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m.exit.i.i ], [ null, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm.exit ]
  %add.ptr.i.i33 = getelementptr inbounds i32, i32* %cond.i.i, i64 %sub.ptr.div.i
  %add.ptr5.i.i = getelementptr inbounds i32, i32* %cond.i.i, i64 %retval.0.i62
  %11 = ptrtoint i32* %add.ptr5.i.i to i64
  %12 = load i32, i32* %__x, align 4, !tbaa !9
  store i32 %12, i32* %add.ptr.i.i33, align 4, !tbaa !9
  %incdec.ptr = getelementptr inbounds i32, i32* %add.ptr.i.i33, i64 1
  %13 = ptrtoint i32* %incdec.ptr to i64
  %idx.neg.i.i = sub nsw i64 0, %sub.ptr.div.i
  %add.ptr.i.i = getelementptr inbounds i32, i32* %add.ptr.i.i33, i64 %idx.neg.i.i
  %14 = ptrtoint i32* %add.ptr.i.i to i64
  %cmp.i.i = icmp sgt i64 %sub.ptr.sub.i, 0
  br i1 %cmp.i.i, label %if.then.i.i29, label %invoke.cont8

if.then.i.i29:                                    ; preds = %invoke.cont
  %15 = bitcast i32* %add.ptr.i.i to i8*
  %16 = inttoptr i64 %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %sub.ptr.sub.i, i32 4, i1 false) #1
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.then.i.i29, %invoke.cont
  store i64 %14, i64* %2, align 8, !tbaa !11
  store i64 %13, i64* %0, align 8, !tbaa !11
  store i64 %11, i64* %5, align 8, !tbaa !11
  %tobool.i.i21 = icmp eq i64 %3, 0
  br i1 %tobool.i.i21, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev.exit24, label %if.then.i.i23

if.then.i.i23:                                    ; preds = %invoke.cont8
  %17 = inttoptr i64 %3 to i8*
  tail call void @_ZdlPv(i8* %17) #12
  br label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev.exit24

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev.exit24: ; preds = %invoke.cont8, %if.then.i.i23
  ret void
}

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 8) #15
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #15
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  %2 = ptrtoint void ()* %__f to i64
  %3 = bitcast i8* %call4 to i64*
  store i64 %1, i64* %3, align 8, !tbaa !22
  %4 = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %4 to i64*
  store i64 %2, i64* %5, align 8, !tbaa !24
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
  tail call void @_ZdlPv(i8* nonnull %call) #12
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #14
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
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !11
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #1
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*
  tail call void @_ZdlPv(i8* %14) #12
  br label %ehcleanup18.thread

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #12
  br label %eh.resume

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #1
  tail call void @_ZdlPv(i8* nonnull %call) #12
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { i8*, i32 } %lpad.val20
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  %0 = bitcast i8* %__vp to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !11
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !26
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8
  %3 = bitcast i8* %value.i.i.i to void ()**
  %4 = load void ()*, void ()** %3, align 8, !tbaa !11
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !11
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #1
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*
  tail call void @_ZdlPv(i8* %6) #12
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #12
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
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !11
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #1
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*
  tail call void @_ZdlPv(i8* %8) #12
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #12
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30
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
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%"class.std::__1::vector"* @data to i8*), i8 0, i64 24, i32 8, i1 false) #1
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__1::vector"*)* @_ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::vector"* @data to i8*), i8* nonnull @__dso_handle) #1
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

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
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTSNSt3__113__vector_baseIiNS_9allocatorIiEEEE", !4, i64 0, !4, i64 8, !7, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"_ZTSNSt3__117__compressed_pairIPiNS_9allocatorIiEEEE"}
!8 = !{!3, !4, i64 8}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!15 = distinct !{!15, !"_ZN7checker12ModelChecker10getSchListEv"}
!16 = !{!17, !4, i64 8}
!17 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !4, i64 0, !4, i64 8, !18, i64 16}
!18 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!19 = !{!17, !4, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !6, i64 0}
!22 = !{!23, !4, i64 0}
!23 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !4, i64 0}
!24 = !{!25, !4, i64 0}
!25 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !4, i64 0}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !28, i64 0}
!28 = !{!"long", !5, i64 0}
