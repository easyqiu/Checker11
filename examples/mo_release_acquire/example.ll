; ModuleID = 'example.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"class.std::__1::basic_string"* }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.checker::ModelChecker" = type { i32, %"class.std::__1::vector", %"class.checker::Executor"*, %"class.std::__1::vector.29", double }
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %"class.checker::Schedule"**, %"class.checker::Schedule"**, %"class.std::__1::__compressed_pair.24" }
%"class.checker::Schedule" = type { %"class.std::__1::map", %"class.std::__1::map.15", %struct._opaque_pthread_mutex_t }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.7", %"class.std::__1::__compressed_pair.12" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair.7" = type { %"struct.std::__1::__compressed_pair_elem.8" }
%"struct.std::__1::__compressed_pair_elem.8" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.12" = type { %"struct.std::__1::__compressed_pair_elem.13" }
%"struct.std::__1::__compressed_pair_elem.13" = type { i64 }
%"class.std::__1::map.15" = type { %"class.std::__1::__tree.16" }
%"class.std::__1::__tree.16" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.17", %"class.std::__1::__compressed_pair.21" }
%"class.std::__1::__compressed_pair.17" = type { %"struct.std::__1::__compressed_pair_elem.8" }
%"class.std::__1::__compressed_pair.21" = type { %"struct.std::__1::__compressed_pair_elem.13" }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
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
%"class.std::__1::__vector_base_common" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@ptr = global %"struct.std::__1::atomic" zeroinitializer, align 8
@data = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"producer\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"data == 42\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z8producerv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %call = tail call i8* @_Znwm(i64 24) #10
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call, i8 0, i64 24, i32 8, i1 false) #11
  store i8 10, i8* %call, align 8, !tbaa !2
  %0 = getelementptr inbounds i8, i8* %call, i64 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 1, i1 false) #11
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %call, i64 6
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !2
  store i32 42, i32* @data, align 4, !tbaa !5
  %1 = ptrtoint i8* %call to i64
  store atomic i64 %1, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) release, align 8
  tail call void @checker_thread_end()
  ret void
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #4

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define void @_Z8consumerv() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load atomic i64, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) acquire, align 8
  %lnot = icmp eq i64 %0, 0
  br i1 %lnot, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %1 = load i32, i32* @data, align 4, !tbaa !5
  %lnot1 = icmp eq i32 %1, 42
  br i1 %lnot1, label %cond.end, label %cond.true, !prof !7

cond.true:                                        ; preds = %while.end
  tail call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #12
  unreachable

cond.end:                                         ; preds = %while.end
  tail call void @checker_thread_end()
  ret void
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readnone ssp uwtable
define void @_Z4testv() local_unnamed_addr #6 {
entry:
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define void @_Z4testi(i32 %x) local_unnamed_addr #7 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  tail call void @checker_generateExecutor()
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %call = tail call i8* @_Znwm(i64 24) #10
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call, i8 0, i64 24, i32 8, i1 false) #11
  store i8 2, i8* %call, align 8, !tbaa !2
  %0 = getelementptr inbounds i8, i8* %call, i64 1
  store i8 72, i8* %0, align 1
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %call, i64 2
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !2
  %1 = ptrtoint i8* %call to i64
  store atomic i64 %1, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) seq_cst, align 8
  %2 = bitcast %"class.std::__1::thread"* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #11
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z8producerv)
  %3 = bitcast %"class.std::__1::thread"* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z8consumerv)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %entry
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !8
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %4)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont2
  %__t_.i33 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i33, align 8, !tbaa !8
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %5)
          to label %invoke.cont11 unwind label %lpad5

invoke.cont11:                                    ; preds = %invoke.cont6
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !8
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %6)
          to label %invoke.cont16 unwind label %lpad5

invoke.cont16:                                    ; preds = %invoke.cont11
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i33, align 8, !tbaa !8
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %7)
          to label %invoke.cont21 unwind label %lpad5

invoke.cont21:                                    ; preds = %invoke.cont16
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont22 unwind label %lpad5

invoke.cont22:                                    ; preds = %invoke.cont21
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont23 unwind label %lpad5

invoke.cont23:                                    ; preds = %invoke.cont22
  invoke void @checker_thread_end()
          to label %invoke.cont24 unwind label %lpad5

invoke.cont24:                                    ; preds = %invoke.cont23
  invoke void @checker_solver()
          to label %invoke.cont25 unwind label %lpad5

invoke.cont25:                                    ; preds = %invoke.cont24
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #11
  ret i32 0

lpad1:                                            ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont24, %invoke.cont23, %invoke.cont22, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont6, %invoke.cont2
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad5, %lpad1
  %ehselector.slot.0 = phi i32 [ %13, %lpad5 ], [ %10, %lpad1 ]
  %exn.slot.0 = phi i8* [ %12, %lpad5 ], [ %9, %lpad1 ]
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #11
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0
  %lpad.val28 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1
  resume { i8*, i32 } %lpad.val28
}

declare void @checker_generateExecutor() local_unnamed_addr #1

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #8

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #9 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8
  %call = tail call i8* @_Znwm(i64 72) #10
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !8
  %call1 = tail call i32 @user_main()
  %1 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #11
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !8
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !10
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !13, !noalias !10
  %8 = bitcast %"class.std::__1::vector"* %schList.i15 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !16, !noalias !10
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #11
  br label %while.end

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ]
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ]
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ]
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #12
          to label %.noexc.i.i.i unwind label %lpad.i.i.i

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #10
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !13, !alias.scope !10
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !16, !alias.scope !10
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !8, !alias.scope !10
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3
  %14 = inttoptr i64 %10 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #11
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !8, !alias.scope !10
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !16, !alias.scope !10
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64
  store i64 %17, i64* %2, align 8, !tbaa !13, !alias.scope !10
  call void @_ZdlPv(i8* %16) #13
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ]
  %tobool10 = icmp eq i64 %.ph, %13
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #13
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #11
  br i1 %tobool10, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main()
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #11
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !8
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !10
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !13, !noalias !10
  %21 = bitcast %"class.std::__1::vector"* %schList.i to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !16, !noalias !10
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

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 8) #10
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #10
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  %2 = ptrtoint void ()* %__f to i64
  %3 = bitcast i8* %call4 to i64*
  store i64 %1, i64* %3, align 8, !tbaa !17
  %4 = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %4 to i64*
  store i64 %2, i64* %5, align 8, !tbaa !19
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
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #12
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
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !8
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #11
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
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #11
  tail call void @_ZdlPv(i8* nonnull %call) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { i8*, i32 } %lpad.val20
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  %0 = bitcast i8* %__vp to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !8
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !21
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8
  %3 = bitcast i8* %value.i.i.i to void ()**
  %4 = load void ()*, void ()** %3, align 8, !tbaa !8
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !8
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #11
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
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !8
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #11
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

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #5

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #8

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { builtin }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !3, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!12 = distinct !{!12, !"_ZN7checker12ModelChecker10getSchListEv"}
!13 = !{!14, !9, i64 8}
!14 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !9, i64 0, !9, i64 8, !15, i64 16}
!15 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!16 = !{!14, !9, i64 0}
!17 = !{!18, !9, i64 0}
!18 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !9, i64 0}
!19 = !{!20, !9, i64 0}
!20 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !9, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !23, i64 0}
!23 = !{!"long", !3, i64 0}
