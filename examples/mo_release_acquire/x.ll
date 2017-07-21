; ModuleID = 'x.bc'
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
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !clap !2
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 24) #10, !clap !3
  call void @checker_endFunc()
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call, i8 0, i64 24, i32 8, i1 false) #11, !clap !4
  call void @checker_addUses_1(i64 4, i64 2)
  store i8 10, i8* %call, align 8, !tbaa !5, !clap !8
  call void @checker_addUses_1(i64 5, i64 2)
  %0 = getelementptr inbounds i8, i8* %call, i64 1, !clap !9
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 1, i1 false) #11, !clap !10
  call void @checker_addUses_1(i64 7, i64 2)
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %call, i64 6, !clap !11
  call void @checker_addUses_1(i64 8, i64 7)
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !5, !clap !12
  store i32 42, i32* @data, align 4, !tbaa !13, !clap !15
  call void @checker_addUses_1(i64 10, i64 2)
  %1 = ptrtoint i8* %call to i64, !clap !16
  %myCast = bitcast i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) to i8*, !clap !17
  call void @checker_addUses_2(i64 12, i64 11, i64 10)
  call void @checker_preAtomicStore_double(i8* %myCast, i64 12, i64 %1, i32 5), !clap !18
  call void @checker_addUses_1(i64 13, i64 10)
  tail call void @checker_thread_end(), !clap !19
  call void @checker_currentBB(i64 15)
  ret void, !clap !20
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
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !clap !21
  call void @checker_currentBB(i64 17)
  br label %while.cond, !clap !22

while.cond:                                       ; preds = %while.cond, %entry
  call void @checker_trackDynInfo(i64 17)
  %myCast = bitcast i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) to i8*, !clap !23
  call void @checker_addUses_1(i64 19, i64 18)
  %0 = call i64 @checker_preAtomicLoad_double(i8* %myCast, i64 19, i32 4), !clap !24
  call void @checker_addUses_1(i64 21, i64 19)
  %lnot = icmp eq i64 %0, 0, !clap !25
  call void @checker_addUses_1(i64 22, i64 21)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 22)
  br i1 %lnot, label %while.cond, label %while.end, !clap !26

while.end:                                        ; preds = %while.cond
  call void @checker_trackDynInfo(i64 22)
  %1 = load i32, i32* @data, align 4, !tbaa !13, !clap !27
  call void @checker_addUses_1(i64 24, i64 23)
  %lnot1 = icmp eq i32 %1, 42, !clap !28
  call void @checker_addUses_1(i64 25, i64 24)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 25)
  br i1 %lnot1, label %cond.end, label %cond.true, !prof !29, !clap !30

cond.true:                                        ; preds = %while.end
  call void @checker_trackDynInfo(i64 25)
  call void @checker_beginFunc()
  tail call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #12, !clap !31
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 27)
  unreachable, !clap !32

cond.end:                                         ; preds = %while.end
  call void @checker_trackDynInfo(i64 25)
  tail call void @checker_thread_end(), !clap !33
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 29)
  ret void, !clap !34
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readnone ssp uwtable
define void @_Z4testv() local_unnamed_addr #6 {
entry:
  call void @checker_currentBB(i64 30)
  ret void, !clap !35
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define void @_Z4testi(i32 %x) local_unnamed_addr #7 {
entry:
  call void @checker_currentBB(i64 31)
  ret void, !clap !36
}

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8, !clap !37
  %b = alloca %"class.std::__1::thread", align 8, !clap !38
  tail call void @checker_generateExecutor(), !clap !39
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !clap !40
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 24) #10, !clap !41
  call void @checker_endFunc()
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call, i8 0, i64 24, i32 8, i1 false) #11, !clap !42
  call void @checker_addUses_1(i64 38, i64 36)
  store i8 2, i8* %call, align 8, !tbaa !5, !clap !43
  call void @checker_addUses_1(i64 39, i64 36)
  %0 = getelementptr inbounds i8, i8* %call, i64 1, !clap !44
  call void @checker_addUses_1(i64 40, i64 39)
  store i8 72, i8* %0, align 1, !clap !45
  call void @checker_addUses_1(i64 41, i64 36)
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %call, i64 2, !clap !46
  call void @checker_addUses_1(i64 42, i64 41)
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !5, !clap !47
  call void @checker_addUses_1(i64 43, i64 36)
  %1 = ptrtoint i8* %call to i64, !clap !48
  %myCast = bitcast i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) to i8*, !clap !49
  call void @checker_addUses_2(i64 45, i64 44, i64 43)
  call void @checker_preAtomicStore_double(i8* %myCast, i64 45, i64 %1, i32 7), !clap !50
  call void @checker_addUses_1(i64 46, i64 43)
  call void @checker_addUses_1(i64 47, i64 32)
  %2 = bitcast %"class.std::__1::thread"* %a to i8*, !clap !51
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #11, !clap !52
  call void @checker_addUses_1(i64 49, i64 32)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z8producerv), !clap !53
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 50, i64 33)
  %3 = bitcast %"class.std::__1::thread"* %b to i8*, !clap !54
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11, !clap !55
  call void @checker_addUses_1(i64 52, i64 33)
  call void @checker_currentBB(i64 52)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z8consumerv)
          to label %invoke.cont2 unwind label %lpad1, !clap !56

invoke.cont2:                                     ; preds = %entry
  call void @checker_addUses_1(i64 53, i64 32)
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !clap !57
  call void @checker_addUses_1(i64 54, i64 53)
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !58, !clap !60
  call void @checker_addUses_1(i64 55, i64 54)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %4)
          to label %invoke.cont6 unwind label %lpad5, !clap !61

invoke.cont6:                                     ; preds = %invoke.cont2
  call void @checker_addUses_1(i64 56, i64 33)
  %__t_.i33 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !clap !62
  call void @checker_addUses_1(i64 57, i64 56)
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i33, align 8, !tbaa !58, !clap !63
  call void @checker_addUses_1(i64 58, i64 57)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %5)
          to label %invoke.cont11 unwind label %lpad5, !clap !64

invoke.cont11:                                    ; preds = %invoke.cont6
  call void @checker_addUses_1(i64 59, i64 53)
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !58, !clap !65
  call void @checker_addUses_1(i64 60, i64 59)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %6)
          to label %invoke.cont16 unwind label %lpad5, !clap !66

invoke.cont16:                                    ; preds = %invoke.cont11
  call void @checker_addUses_1(i64 61, i64 56)
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i33, align 8, !tbaa !58, !clap !67
  call void @checker_addUses_1(i64 62, i64 61)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %7)
          to label %invoke.cont21 unwind label %lpad5, !clap !68

invoke.cont21:                                    ; preds = %invoke.cont16
  call void @checker_addUses_1(i64 63, i64 32)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont22 unwind label %lpad5, !clap !69

invoke.cont22:                                    ; preds = %invoke.cont21
  call void @checker_addUses_1(i64 64, i64 33)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont23 unwind label %lpad5, !clap !70

invoke.cont23:                                    ; preds = %invoke.cont22
  invoke void @checker_thread_end()
          to label %invoke.cont24 unwind label %lpad5, !clap !71

invoke.cont24:                                    ; preds = %invoke.cont23
  invoke void @checker_solver()
          to label %invoke.cont25 unwind label %lpad5, !clap !72

invoke.cont25:                                    ; preds = %invoke.cont24
  call void @checker_addUses_1(i64 67, i64 33)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11, !clap !73
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11, !clap !74
  call void @checker_addUses_1(i64 69, i64 32)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11, !clap !75
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #11, !clap !76
  ret i32 0, !clap !77

lpad1:                                            ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup, !clap !78
  call void @checker_addUses_1(i64 73, i64 72)
  %9 = extractvalue { i8*, i32 } %8, 0, !clap !79
  call void @checker_addUses_1(i64 74, i64 72)
  %10 = extractvalue { i8*, i32 } %8, 1, !clap !80
  br label %ehcleanup, !clap !81

lpad5:                                            ; preds = %invoke.cont24, %invoke.cont23, %invoke.cont22, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont6, %invoke.cont2
  %11 = landingpad { i8*, i32 }
          cleanup, !clap !82
  call void @checker_addUses_1(i64 77, i64 76)
  %12 = extractvalue { i8*, i32 } %11, 0, !clap !83
  call void @checker_addUses_1(i64 78, i64 76)
  %13 = extractvalue { i8*, i32 } %11, 1, !clap !84
  call void @checker_addUses_1(i64 79, i64 33)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11, !clap !85
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11, !clap !86
  br label %ehcleanup, !clap !87

ehcleanup:                                        ; preds = %lpad5, %lpad1
  %ehselector.slot.0 = phi i32 [ %13, %lpad5 ], [ %10, %lpad1 ], !clap !88
  %exn.slot.0 = phi i8* [ %12, %lpad5 ], [ %9, %lpad1 ], !clap !89
  call void @checker_handlePHI_2(i64 83, i64 77, i64 81, i64 73, i64 75)
  call void @checker_handlePHI_2(i64 82, i64 78, i64 81, i64 74, i64 75)
  call void @checker_addUses_1(i64 84, i64 32)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11, !clap !90
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #11, !clap !91
  call void @checker_addUses_1(i64 86, i64 83)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !clap !92
  call void @checker_addUses_2(i64 87, i64 86, i64 82)
  %lpad.val28 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !clap !93
  call void @checker_addUses_1(i64 88, i64 87)
  resume { i8*, i32 } %lpad.val28, !clap !94
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
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !95
  %call = tail call i8* @_Znwm(i64 72) #10, !clap !96
  %0 = bitcast i8* %call to %"class.checker::ModelChecker"*, !clap !97
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !98

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !58, !clap !99
  %call1 = tail call i32 @user_main(), !clap !100
  %1 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !101
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !102
  %2 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !103
  %3 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !104
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !105
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !106
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #11, !clap !107
  %5 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !58, !clap !108
  %schList.i15 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, !clap !109
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !110, !clap !113
  %__end_.i16.i.i.i16 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %5, i64 0, i32 1, i32 0, i32 1, !clap !114
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i16 to i64*, !clap !115
  %7 = load i64, i64* %6, align 8, !tbaa !116, !noalias !110, !clap !119
  %8 = bitcast %"class.std::__1::vector"* %schList.i15 to i64*, !clap !120
  %9 = load i64, i64* %8, align 8, !tbaa !121, !noalias !110, !clap !122
  %sub.ptr.sub.i.i.i.i17 = sub i64 %7, %9, !clap !123
  %sub.ptr.div.i.i.i.i18 = ashr exact i64 %sub.ptr.sub.i.i.i.i17, 3, !clap !124
  %cmp.i.i.i19 = icmp eq i64 %sub.ptr.div.i.i.i.i18, 0, !clap !125
  br i1 %cmp.i.i.i19, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !126

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !127

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !128

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #11, !clap !129
  br label %while.end, !clap !130

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i21 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i18, %if.then.i.i.i.preheader ], !clap !131
  %sub.ptr.sub.i.i.i.i20 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i17, %if.then.i.i.i.preheader ], !clap !132
  %10 = phi i64 [ %22, %while.body ], [ %9, %if.then.i.i.i.preheader ], !clap !133
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i21, 2305843009213693951, !clap !134
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !135

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %11 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !136
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %11) #12
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !137

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !138

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i20) #10, !clap !139
  %12 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !140
  store i8* %call.i.i.i.i15.i.i.i, i8** %3, align 8, !tbaa !116, !alias.scope !110, !clap !141
  store i8* %call.i.i.i.i15.i.i.i, i8** %4, align 8, !tbaa !121, !alias.scope !110, !clap !142
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div.i.i.i.i21, !clap !143
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !58, !alias.scope !110, !clap !144
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i.i20, 0, !clap !145
  %13 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !146
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !147

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i20, 3, !clap !148
  %14 = inttoptr i64 %10 to i8*, !clap !149
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %14, i64 %sub.ptr.sub.i.i.i.i20, i32 8, i1 false) #11, !clap !150
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %12, i64 %sub.ptr.div6.i.i.i.i.i, !clap !151
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !58, !alias.scope !110, !clap !152
  %15 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !153
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !154

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !155
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !156
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !121, !alias.scope !110, !clap !157
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !158
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !159

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %16 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !160
  %17 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !161
  store i64 %17, i64* %2, align 8, !tbaa !116, !alias.scope !110, !clap !162
  call void @_ZdlPv(i8* %16) #13, !clap !163
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !164

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !165

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %15, %if.then.i.i.i.i.i ], [ %13, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !166
  %tobool10 = icmp eq i64 %.ph, %13, !clap !167
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #13, !clap !168
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1) #11, !clap !169
  br i1 %tobool10, label %while.end.loopexit, label %while.body, !clap !170

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !clap !171
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1) #11, !clap !172
  %18 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !58, !clap !173
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, !clap !174
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 24, i32 8, i1 false), !alias.scope !110, !clap !175
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %18, i64 0, i32 1, i32 0, i32 1, !clap !176
  %19 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !177
  %20 = load i64, i64* %19, align 8, !tbaa !116, !noalias !110, !clap !178
  %21 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !179
  %22 = load i64, i64* %21, align 8, !tbaa !121, !noalias !110, !clap !180
  %sub.ptr.sub.i.i.i.i = sub i64 %20, %22, !clap !181
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !182
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !183
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !184

lpad:                                             ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup, !clap !185
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !186
  resume { i8*, i32 } %23, !clap !187

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !188

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !189
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
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #10, !clap !190
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 178, i64 177)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !191
  call void @checker_addUses_1(i64 179, i64 178)
  call void @checker_currentBB(i64 179)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !192

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #10
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !193

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 181, i64 177)
  %1 = ptrtoint i8* %call to i64, !clap !194
  %2 = ptrtoint void ()* %__f to i64, !clap !195
  call void @checker_addUses_1(i64 183, i64 180)
  %3 = bitcast i8* %call4 to i64*, !clap !196
  call void @checker_addUses_2(i64 184, i64 181, i64 183)
  store i64 %1, i64* %3, align 8, !tbaa !197, !clap !199
  call void @checker_addUses_1(i64 185, i64 180)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !200
  call void @checker_addUses_1(i64 186, i64 185)
  %5 = bitcast i8* %4 to i64*, !clap !201
  call void @checker_addUses_2(i64 187, i64 182, i64 186)
  store i64 %2, i64* %5, align 8, !tbaa !202, !clap !204
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !205
  call void @checker_addUses_2(i64 189, i64 188, i64 180)
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !206

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 190, i64 189)
  %cmp = icmp eq i32 %call.i31, 0, !clap !207
  call void @checker_addUses_1(i64 191, i64 190)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !208

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 191)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 192)
  ret void, !clap !209

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !210
  call void @checker_addUses_1(i64 194, i64 193)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !211
  call void @checker_addUses_1(i64 195, i64 193)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !212
  call void @checker_addUses_1(i64 196, i64 177)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !213
  br label %eh.resume, !clap !214

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !215
  br label %delete.notnull.i.i.i.i, !clap !216

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 191)
  call void @checker_addUses_1(i64 200, i64 189)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 200)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #12
          to label %invoke.cont16 unwind label %lpad15, !clap !217

invoke.cont16:                                    ; preds = %if.else
  unreachable, !clap !218

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !219
  br label %delete.notnull.i.i.i.i, !clap !220

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !221
  call void @checker_handlePHI_2(i64 204, i64 202, i64 203, i64 198, i64 199)
  call void @checker_addUses_1(i64 205, i64 204)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !222
  call void @checker_addUses_1(i64 206, i64 204)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !223
  call void @checker_addUses_1(i64 207, i64 180)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !224
  call void @checker_addUses_1(i64 208, i64 207)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !58, !clap !225
  call void @checker_addUses_1(i64 209, i64 207)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !58, !clap !226
  call void @checker_addUses_1(i64 210, i64 208)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !227
  call void @checker_addUses_1(i64 211, i64 210)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !228

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 211)
  call void @checker_addUses_1(i64 212, i64 208)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #11, !clap !229
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 213, i64 208)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !230
  call void @checker_addUses_1(i64 214, i64 213)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #13, !clap !231
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 215)
  br label %ehcleanup18.thread, !clap !232

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 211)
  call void @checker_addUses_1(i64 216, i64 180)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #13, !clap !233
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 217)
  br label %eh.resume, !clap !234

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !235
  call void @checker_addUses_1(i64 219, i64 218)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !236
  call void @checker_addUses_1(i64 220, i64 218)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !237
  call void @checker_addUses_1(i64 221, i64 178)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #11, !clap !238
  call void @checker_addUses_1(i64 222, i64 177)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !239
  br label %eh.resume, !clap !240

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !241
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !242
  call void @checker_handlePHI_3(i64 225, i64 194, i64 197, i64 219, i64 223, i64 205, i64 217)
  call void @checker_handlePHI_3(i64 224, i64 195, i64 197, i64 220, i64 223, i64 206, i64 217)
  call void @checker_addUses_1(i64 226, i64 225)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !243
  call void @checker_addUses_2(i64 227, i64 226, i64 224)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !244
  call void @checker_addUses_1(i64 228, i64 227)
  resume { i8*, i32 } %lpad.val20, !clap !245
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 229)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !246

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !247
  %0 = bitcast i8* %__vp to i8**, !clap !248
  call void @checker_addUses_1(i64 232, i64 231)
  %1 = load i8*, i8** %0, align 8, !tbaa !58, !clap !249
  call void @checker_addUses_1(i64 233, i64 230)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !58, !clap !250
  call void @checker_addUses_1(i64 234, i64 229)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !251
  call void @checker_addUses_1(i64 235, i64 234)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !252, !clap !255
  call void @checker_addUses_2(i64 236, i64 235, i64 232)
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !256

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !257
  call void @checker_addUses_1(i64 238, i64 237)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !258
  call void @checker_addUses_1(i64 239, i64 238)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !58, !clap !259
  call void @checker_addUses_1(i64 240, i64 239)
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !260

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 241, i64 230)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !58, !clap !261
  call void @checker_addUses_1(i64 242, i64 230)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !58, !clap !262
  call void @checker_addUses_1(i64 243, i64 241)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !263
  call void @checker_addUses_1(i64 244, i64 243)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !264

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 244)
  call void @checker_addUses_1(i64 245, i64 241)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #11, !clap !265
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 246, i64 241)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !266
  call void @checker_addUses_1(i64 247, i64 246)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #13, !clap !267
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 248)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !268

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 244)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !269
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 250)
  ret i8* null, !clap !270

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !271
  br label %delete.notnull.i.i.i.i, !clap !272

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !273
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !274
  call void @checker_addUses_1(i64 255, i64 254)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !275

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 255)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !276
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 257)
  br label %delete.notnull.i.i.i.i, !clap !277

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !278
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !279
  call void @checker_handlePHI_2(i64 259, i64 253, i64 257, i64 251, i64 252)
  call void @checker_handlePHI_2(i64 258, i64 256, i64 257, i64 230, i64 252)
  call void @checker_addUses_1(i64 260, i64 258)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !58, !clap !280
  call void @checker_addUses_1(i64 261, i64 258)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !58, !clap !281
  call void @checker_addUses_1(i64 262, i64 260)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !282
  call void @checker_addUses_1(i64 263, i64 262)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !283

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 263)
  call void @checker_addUses_1(i64 264, i64 260)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #11, !clap !284
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 265, i64 260)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !285
  call void @checker_addUses_1(i64 266, i64 265)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #13, !clap !286
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 267)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !287

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 263)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !288
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 269)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !289

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !290
  call void @checker_handlePHI_2(i64 270, i64 253, i64 255, i64 259, i64 269)
  call void @checker_addUses_1(i64 271, i64 270)
  resume { i8*, i32 } %lpad.phi30, !clap !291
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #5

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #8

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
!2 = !{i64 1}
!3 = !{i64 2}
!4 = !{i64 3}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{i64 4}
!9 = !{i64 5}
!10 = !{i64 6}
!11 = !{i64 7}
!12 = !{i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{i64 9}
!16 = !{i64 10}
!17 = !{i64 11}
!18 = !{i64 12}
!19 = !{i64 14}
!20 = !{i64 15}
!21 = !{i64 16}
!22 = !{i64 17}
!23 = !{i64 18}
!24 = !{i64 19}
!25 = !{i64 21}
!26 = !{i64 22}
!27 = !{i64 23}
!28 = !{i64 24}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 25}
!31 = !{i64 26}
!32 = !{i64 27}
!33 = !{i64 28}
!34 = !{i64 29}
!35 = !{i64 30}
!36 = !{i64 31}
!37 = !{i64 32}
!38 = !{i64 33}
!39 = !{i64 34}
!40 = !{i64 35}
!41 = !{i64 36}
!42 = !{i64 37}
!43 = !{i64 38}
!44 = !{i64 39}
!45 = !{i64 40}
!46 = !{i64 41}
!47 = !{i64 42}
!48 = !{i64 43}
!49 = !{i64 44}
!50 = !{i64 45}
!51 = !{i64 47}
!52 = !{i64 48}
!53 = !{i64 49}
!54 = !{i64 50}
!55 = !{i64 51}
!56 = !{i64 52}
!57 = !{i64 53}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !6, i64 0}
!60 = !{i64 54}
!61 = !{i64 55}
!62 = !{i64 56}
!63 = !{i64 57}
!64 = !{i64 58}
!65 = !{i64 59}
!66 = !{i64 60}
!67 = !{i64 61}
!68 = !{i64 62}
!69 = !{i64 63}
!70 = !{i64 64}
!71 = !{i64 65}
!72 = !{i64 66}
!73 = !{i64 67}
!74 = !{i64 68}
!75 = !{i64 69}
!76 = !{i64 70}
!77 = !{i64 71}
!78 = !{i64 72}
!79 = !{i64 73}
!80 = !{i64 74}
!81 = !{i64 75}
!82 = !{i64 76}
!83 = !{i64 77}
!84 = !{i64 78}
!85 = !{i64 79}
!86 = !{i64 80}
!87 = !{i64 81}
!88 = !{i64 82}
!89 = !{i64 83}
!90 = !{i64 84}
!91 = !{i64 85}
!92 = !{i64 86}
!93 = !{i64 87}
!94 = !{i64 88}
!95 = !{i64 89}
!96 = !{i64 90}
!97 = !{i64 91}
!98 = !{i64 92}
!99 = !{i64 93}
!100 = !{i64 94}
!101 = !{i64 95}
!102 = !{i64 96}
!103 = !{i64 97}
!104 = !{i64 98}
!105 = !{i64 99}
!106 = !{i64 100}
!107 = !{i64 101}
!108 = !{i64 102}
!109 = !{i64 103}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!112 = distinct !{!112, !"_ZN7checker12ModelChecker10getSchListEv"}
!113 = !{i64 104}
!114 = !{i64 105}
!115 = !{i64 106}
!116 = !{!117, !59, i64 8}
!117 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !59, i64 0, !59, i64 8, !118, i64 16}
!118 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!119 = !{i64 107}
!120 = !{i64 108}
!121 = !{!117, !59, i64 0}
!122 = !{i64 109}
!123 = !{i64 110}
!124 = !{i64 111}
!125 = !{i64 112}
!126 = !{i64 113}
!127 = !{i64 114}
!128 = !{i64 115}
!129 = !{i64 116}
!130 = !{i64 117}
!131 = !{i64 118}
!132 = !{i64 119}
!133 = !{i64 120}
!134 = !{i64 121}
!135 = !{i64 122}
!136 = !{i64 123}
!137 = !{i64 124}
!138 = !{i64 125}
!139 = !{i64 126}
!140 = !{i64 127}
!141 = !{i64 128}
!142 = !{i64 129}
!143 = !{i64 130}
!144 = !{i64 131}
!145 = !{i64 132}
!146 = !{i64 133}
!147 = !{i64 134}
!148 = !{i64 135}
!149 = !{i64 136}
!150 = !{i64 137}
!151 = !{i64 138}
!152 = !{i64 139}
!153 = !{i64 140}
!154 = !{i64 141}
!155 = !{i64 142}
!156 = !{i64 143}
!157 = !{i64 144}
!158 = !{i64 145}
!159 = !{i64 146}
!160 = !{i64 147}
!161 = !{i64 148}
!162 = !{i64 149}
!163 = !{i64 150}
!164 = !{i64 151}
!165 = !{i64 152}
!166 = !{i64 153}
!167 = !{i64 154}
!168 = !{i64 155}
!169 = !{i64 156}
!170 = !{i64 157}
!171 = !{i64 158}
!172 = !{i64 159}
!173 = !{i64 160}
!174 = !{i64 161}
!175 = !{i64 162}
!176 = !{i64 163}
!177 = !{i64 164}
!178 = !{i64 165}
!179 = !{i64 166}
!180 = !{i64 167}
!181 = !{i64 168}
!182 = !{i64 169}
!183 = !{i64 170}
!184 = !{i64 171}
!185 = !{i64 172}
!186 = !{i64 173}
!187 = !{i64 174}
!188 = !{i64 175}
!189 = !{i64 176}
!190 = !{i64 177}
!191 = !{i64 178}
!192 = !{i64 179}
!193 = !{i64 180}
!194 = !{i64 181}
!195 = !{i64 182}
!196 = !{i64 183}
!197 = !{!198, !59, i64 0}
!198 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !59, i64 0}
!199 = !{i64 184}
!200 = !{i64 185}
!201 = !{i64 186}
!202 = !{!203, !59, i64 0}
!203 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !59, i64 0}
!204 = !{i64 187}
!205 = !{i64 188}
!206 = !{i64 189}
!207 = !{i64 190}
!208 = !{i64 191}
!209 = !{i64 192}
!210 = !{i64 193}
!211 = !{i64 194}
!212 = !{i64 195}
!213 = !{i64 196}
!214 = !{i64 197}
!215 = !{i64 198}
!216 = !{i64 199}
!217 = !{i64 200}
!218 = !{i64 201}
!219 = !{i64 202}
!220 = !{i64 203}
!221 = !{i64 204}
!222 = !{i64 205}
!223 = !{i64 206}
!224 = !{i64 207}
!225 = !{i64 208}
!226 = !{i64 209}
!227 = !{i64 210}
!228 = !{i64 211}
!229 = !{i64 212}
!230 = !{i64 213}
!231 = !{i64 214}
!232 = !{i64 215}
!233 = !{i64 216}
!234 = !{i64 217}
!235 = !{i64 218}
!236 = !{i64 219}
!237 = !{i64 220}
!238 = !{i64 221}
!239 = !{i64 222}
!240 = !{i64 223}
!241 = !{i64 224}
!242 = !{i64 225}
!243 = !{i64 226}
!244 = !{i64 227}
!245 = !{i64 228}
!246 = !{i64 229}
!247 = !{i64 230}
!248 = !{i64 231}
!249 = !{i64 232}
!250 = !{i64 233}
!251 = !{i64 234}
!252 = !{!253, !254, i64 0}
!253 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !254, i64 0}
!254 = !{!"long", !6, i64 0}
!255 = !{i64 235}
!256 = !{i64 236}
!257 = !{i64 237}
!258 = !{i64 238}
!259 = !{i64 239}
!260 = !{i64 240}
!261 = !{i64 241}
!262 = !{i64 242}
!263 = !{i64 243}
!264 = !{i64 244}
!265 = !{i64 245}
!266 = !{i64 246}
!267 = !{i64 247}
!268 = !{i64 248}
!269 = !{i64 249}
!270 = !{i64 250}
!271 = !{i64 251}
!272 = !{i64 252}
!273 = !{i64 253}
!274 = !{i64 254}
!275 = !{i64 255}
!276 = !{i64 256}
!277 = !{i64 257}
!278 = !{i64 258}
!279 = !{i64 259}
!280 = !{i64 260}
!281 = !{i64 261}
!282 = !{i64 262}
!283 = !{i64 263}
!284 = !{i64 264}
!285 = !{i64 265}
!286 = !{i64 266}
!287 = !{i64 267}
!288 = !{i64 268}
!289 = !{i64 269}
!290 = !{i64 270}
!291 = !{i64 271}
