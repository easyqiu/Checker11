; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i32 }
%"class.std::__1::mutex" = type { %struct._opaque_pthread_mutex_t }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.checker::ModelChecker" = type { i32, %"class.std::__1::vector", %"class.checker::Executor"* }
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
%"class.std::__1::__compressed_pair.14" = type { %"struct.std::__1::__compressed_pair_elem.15" }
%"struct.std::__1::__compressed_pair_elem.15" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::__vector_base_common" = type { i8 }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.19" }
%"class.std::__1::__compressed_pair.19" = type { %"struct.std::__1::__compressed_pair_elem.20" }
%"struct.std::__1::__compressed_pair_elem.20" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.21, [23 x i8] }
%union.anon.21 = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@g_num = local_unnamed_addr global i32 0, align 4
@x = global %"struct.std::__1::atomic" zeroinitializer, align 4
@r1 = local_unnamed_addr global i32 0, align 4
@x_mutex = global %"class.std::__1::mutex" { %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer } }, align 8
@__dso_handle = external global i8
@.str = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"r1=%d\0A\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Generate a model checker: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_example.cpp, i8* null }]

; Function Attrs: nounwind
declare void @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"*) unnamed_addr #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z2f1v() #2 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !clap !2
  call void @checker_beginFunc()
  tail call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* nonnull @x_mutex), !clap !3
  call void @checker_endFunc()
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !4
  call void @checker_addUses_1(i64 4, i64 3)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 4, i32 1, i32 2), !clap !5
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !6
  call void @checker_addUses_1(i64 7, i64 6)
  call void @checker_preAtomicStore_int(i8* %myCast1, i64 7, i32 2, i32 2), !clap !7
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !8
  call void @checker_addUses_1(i64 10, i64 9)
  call void @checker_preAtomicStore_int(i8* %myCast2, i64 10, i32 3, i32 2), !clap !9
  %myCast3 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !10
  call void @checker_addUses_1(i64 13, i64 12)
  call void @checker_preAtomicStore_int(i8* %myCast3, i64 13, i32 4, i32 2), !clap !11
  call void @checker_beginFunc()
  tail call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* nonnull @x_mutex) #1, !clap !12
  call void @checker_endFunc()
  tail call void @checker_thread_end(), !clap !13
  call void @checker_currentBB(i64 17)
  ret void, !clap !14
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #3

declare void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"*) local_unnamed_addr #0

declare void @checker_thread_end() local_unnamed_addr #3

; Function Attrs: ssp uwtable
define void @_Z2f2v() #2 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !clap !15
  call void @checker_beginFunc()
  tail call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* nonnull @x_mutex), !clap !16
  call void @checker_endFunc()
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !17
  call void @checker_addUses_1(i64 21, i64 20)
  %0 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 21, i32 2), !clap !18
  call void @checker_addUses_1(i64 23, i64 21)
  store i32 %0, i32* @r1, align 4, !tbaa !19, !clap !23
  call void @checker_beginFunc()
  tail call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* nonnull @x_mutex) #1, !clap !24
  call void @checker_endFunc()
  tail call void @checker_thread_end(), !clap !25
  call void @checker_currentBB(i64 26)
  ret void, !clap !26
}

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %t1 = alloca %"class.std::__1::thread", align 8, !clap !27
  %t2 = alloca %"class.std::__1::thread", align 8, !clap !28
  tail call void @checker_generateExecutor(), !clap !29
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !clap !30
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !31
  call void @checker_addUses_1(i64 32, i64 31)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 32, i32 0, i32 7), !clap !32
  call void @checker_addUses_1(i64 34, i64 27)
  %0 = bitcast %"class.std::__1::thread"* %t1 to i8*, !clap !33
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #1, !clap !34
  call void @checker_addUses_1(i64 36, i64 27)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t1, void ()* nonnull @_Z2f1v), !clap !35
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 37, i64 28)
  %1 = bitcast %"class.std::__1::thread"* %t2 to i8*, !clap !36
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #1, !clap !37
  call void @checker_addUses_1(i64 39, i64 28)
  call void @checker_currentBB(i64 39)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t2, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad, !clap !38

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 40, i64 27)
  %__t_.i30 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t1, i64 0, i32 0, !clap !39
  call void @checker_addUses_1(i64 41, i64 40)
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i30, align 8, !tbaa !40, !clap !42
  call void @checker_addUses_1(i64 42, i64 41)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont4 unwind label %lpad3, !clap !43

invoke.cont4:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 43, i64 28)
  %__t_.i29 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t2, i64 0, i32 0, !clap !44
  call void @checker_addUses_1(i64 44, i64 43)
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i29, align 8, !tbaa !40, !clap !45
  call void @checker_addUses_1(i64 45, i64 44)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont9 unwind label %lpad3, !clap !46

invoke.cont9:                                     ; preds = %invoke.cont4
  call void @checker_addUses_1(i64 46, i64 40)
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i30, align 8, !tbaa !40, !clap !47
  call void @checker_addUses_1(i64 47, i64 46)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %4)
          to label %invoke.cont14 unwind label %lpad3, !clap !48

invoke.cont14:                                    ; preds = %invoke.cont9
  call void @checker_addUses_1(i64 48, i64 43)
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i29, align 8, !tbaa !40, !clap !49
  call void @checker_addUses_1(i64 49, i64 48)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %5)
          to label %invoke.cont19 unwind label %lpad3, !clap !50

invoke.cont19:                                    ; preds = %invoke.cont14
  call void @checker_addUses_1(i64 50, i64 27)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t1)
          to label %invoke.cont20 unwind label %lpad3, !clap !51

invoke.cont20:                                    ; preds = %invoke.cont19
  call void @checker_addUses_1(i64 51, i64 28)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t2)
          to label %invoke.cont21 unwind label %lpad3, !clap !52

invoke.cont21:                                    ; preds = %invoke.cont20
  %6 = load i32, i32* @r1, align 4, !tbaa !19, !clap !53
  call void @checker_addUses_1(i64 53, i64 52)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %6), !clap !54
  invoke void @checker_thread_end()
          to label %invoke.cont24 unwind label %lpad3, !clap !55

invoke.cont24:                                    ; preds = %invoke.cont21
  invoke void @checker_solver()
          to label %invoke.cont25 unwind label %lpad3, !clap !56

invoke.cont25:                                    ; preds = %invoke.cont24
  call void @checker_addUses_1(i64 56, i64 28)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #1, !clap !57
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #1, !clap !58
  call void @checker_addUses_1(i64 58, i64 27)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #1, !clap !59
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #1, !clap !60
  ret i32 0, !clap !61

lpad:                                             ; preds = %entry
  %7 = landingpad { i8*, i32 }
          cleanup, !clap !62
  call void @checker_addUses_1(i64 62, i64 61)
  %8 = extractvalue { i8*, i32 } %7, 0, !clap !63
  call void @checker_addUses_1(i64 63, i64 61)
  %9 = extractvalue { i8*, i32 } %7, 1, !clap !64
  br label %ehcleanup, !clap !65

lpad3:                                            ; preds = %invoke.cont24, %invoke.cont21, %invoke.cont20, %invoke.cont19, %invoke.cont14, %invoke.cont9, %invoke.cont4, %invoke.cont
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !66
  call void @checker_addUses_1(i64 66, i64 65)
  %11 = extractvalue { i8*, i32 } %10, 0, !clap !67
  call void @checker_addUses_1(i64 67, i64 65)
  %12 = extractvalue { i8*, i32 } %10, 1, !clap !68
  call void @checker_addUses_1(i64 68, i64 28)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #1, !clap !69
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #1, !clap !70
  br label %ehcleanup, !clap !71

ehcleanup:                                        ; preds = %lpad3, %lpad
  %ehselector.slot.0 = phi i32 [ %12, %lpad3 ], [ %9, %lpad ], !clap !72
  %exn.slot.0 = phi i8* [ %11, %lpad3 ], [ %8, %lpad ], !clap !73
  call void @checker_handlePHI_2(i64 72, i64 66, i64 70, i64 62, i64 64)
  call void @checker_handlePHI_2(i64 71, i64 67, i64 70, i64 63, i64 64)
  call void @checker_addUses_1(i64 73, i64 27)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #1, !clap !74
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #1, !clap !75
  call void @checker_addUses_1(i64 75, i64 72)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !clap !76
  call void @checker_addUses_2(i64 76, i64 75, i64 71)
  %lpad.val27 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !clap !77
  call void @checker_addUses_1(i64 77, i64 76)
  resume { i8*, i32 } %lpad.val27, !clap !78
}

declare void @checker_generateExecutor() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #3

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #3

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #0

declare void @checker_solver() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !79
  %call = tail call i8* @_Znwm(i64 40) #11, !clap !80
  %schList.i.i = getelementptr inbounds i8, i8* %call, i64 8, !clap !81
  tail call void @llvm.memset.p0i8.i64(i8* %schList.i.i, i8 0, i64 24, i32 8, i1 false) #1, !clap !82
  %test.i.i = bitcast i8* %call to i32*, !clap !83
  store i32 3, i32* %test.i.i, align 8, !tbaa !84, !clap !87
  %call1.i7.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 26)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !88

invoke.cont.i.i:                                  ; preds = %entry
  %call3.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i7.i.i, i8* nonnull %call)
          to label %invoke.cont2.i.i unwind label %lpad.i.i, !clap !89

invoke.cont2.i.i:                                 ; preds = %invoke.cont.i.i
  %call1.i9.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call3.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
          to label %invoke.cont unwind label %lpad.i.i, !clap !90

lpad.i.i:                                         ; preds = %invoke.cont2.i.i, %invoke.cont.i.i, %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !clap !91
  %__begin_.i.i.i.i.i = bitcast i8* %schList.i.i to %"class.checker::Schedule"***, !clap !92
  %1 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.i, align 8, !tbaa !93, !clap !96
  %cmp.i.i.i.i.i = icmp eq %"class.checker::Schedule"** %1, null, !clap !97
  br i1 %cmp.i.i.i.i.i, label %lpad.body, label %if.then.i.i.i.i.i, !clap !98

if.then.i.i.i.i.i:                                ; preds = %lpad.i.i
  %2 = ptrtoint %"class.checker::Schedule"** %1 to i64, !clap !99
  %__end_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call, i64 16, !clap !100
  %3 = bitcast i8* %__end_.i.i.i.i.i.i.i to i64*, !clap !101
  store i64 %2, i64* %3, align 8, !tbaa !102, !clap !103
  %.cast.i.i.i.i.i = bitcast %"class.checker::Schedule"** %1 to i8*, !clap !104
  tail call void @_ZdlPv(i8* %.cast.i.i.i.i.i) #12, !clap !105
  br label %lpad.body, !clap !106

invoke.cont:                                      ; preds = %invoke.cont2.i.i
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !40, !clap !107
  %call1 = tail call i32 @user_main(), !clap !108
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !109
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !110
  %5 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !111
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !112
  %7 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !113
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !114
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #1, !clap !115
  %8 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !40, !clap !116
  %schList.i17 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, !clap !117
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !118, !clap !121
  %__end_.i16.i.i.i18 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, i32 0, i32 1, !clap !122
  %9 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i18 to i64*, !clap !123
  %10 = load i64, i64* %9, align 8, !tbaa !102, !noalias !118, !clap !124
  %11 = bitcast %"class.std::__1::vector"* %schList.i17 to i64*, !clap !125
  %12 = load i64, i64* %11, align 8, !tbaa !93, !noalias !118, !clap !126
  %sub.ptr.sub.i.i.i.i19 = sub i64 %10, %12, !clap !127
  %sub.ptr.div.i.i.i.i20 = ashr exact i64 %sub.ptr.sub.i.i.i.i19, 3, !clap !128
  %cmp.i.i.i21 = icmp eq i64 %sub.ptr.div.i.i.i.i20, 0, !clap !129
  br i1 %cmp.i.i.i21, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !130

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !131

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !132

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #1, !clap !133
  br label %while.end, !clap !134

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i23 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i20, %if.then.i.i.i.preheader ], !clap !135
  %sub.ptr.sub.i.i.i.i22 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i19, %if.then.i.i.i.preheader ], !clap !136
  %13 = phi i64 [ %25, %while.body ], [ %12, %if.then.i.i.i.preheader ], !clap !137
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i23, 2305843009213693951, !clap !138
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !139

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %14 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !140
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %14) #13
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !141

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !142

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i22) #11, !clap !143
  %15 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !144
  store i8* %call.i.i.i.i15.i.i.i, i8** %6, align 8, !tbaa !102, !alias.scope !118, !clap !145
  store i8* %call.i.i.i.i15.i.i.i, i8** %7, align 8, !tbaa !93, !alias.scope !118, !clap !146
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div.i.i.i.i23, !clap !147
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !40, !alias.scope !118, !clap !148
  %cmp.i.i.i.i.i5 = icmp sgt i64 %sub.ptr.sub.i.i.i.i22, 0, !clap !149
  %16 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !150
  br i1 %cmp.i.i.i.i.i5, label %if.then.i.i.i.i.i6, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !151

if.then.i.i.i.i.i6:                               ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i22, 3, !clap !152
  %17 = inttoptr i64 %13 to i8*, !clap !153
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %17, i64 %sub.ptr.sub.i.i.i.i22, i32 8, i1 false) #1, !clap !154
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div6.i.i.i.i.i, !clap !155
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !40, !alias.scope !118, !clap !156
  %18 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !157
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !158

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !159
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !160
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !93, !alias.scope !118, !clap !161
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !162
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !163

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %19 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !164
  %20 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !165
  store i64 %20, i64* %5, align 8, !tbaa !102, !alias.scope !118, !clap !166
  call void @_ZdlPv(i8* %19) #12, !clap !167
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !168

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !169

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i6, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %18, %if.then.i.i.i.i.i6 ], [ %16, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !170
  %tobool12 = icmp eq i64 %.ph, %16, !clap !171
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #12, !clap !172
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #1, !clap !173
  br i1 %tobool12, label %while.end.loopexit, label %while.body, !clap !174

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !clap !175
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #1, !clap !176
  %21 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !40, !clap !177
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, !clap !178
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !118, !clap !179
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, i32 0, i32 1, !clap !180
  %22 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !181
  %23 = load i64, i64* %22, align 8, !tbaa !102, !noalias !118, !clap !182
  %24 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !183
  %25 = load i64, i64* %24, align 8, !tbaa !93, !noalias !118, !clap !184
  %sub.ptr.sub.i.i.i.i = sub i64 %23, %25, !clap !185
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !186
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !187
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !188

lpad.body:                                        ; preds = %lpad.i.i, %if.then.i.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call) #12, !clap !189
  resume { i8*, i32 } %0, !clap !190

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !191

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !192
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #8 {
  call void @checker_beginFunc()
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #1, !clap !193
  call void @checker_endFunc()
  call void @checker_beginFunc()
  tail call void @_ZSt9terminatev() #14, !clap !194
  call void @checker_endFunc()
  call void @checker_currentBB(i64 184)
  unreachable, !clap !195
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) local_unnamed_addr #3

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8, !clap !196
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8, !clap !197
  call void @checker_addUses_1(i64 187, i64 186)
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0, !clap !198
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #1, !clap !199
  call void @checker_addUses_1(i64 189, i64 186)
  call void @checker_currentBB(i64 189)
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad, !clap !200

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 190, i64 187)
  %1 = load i8, i8* %0, align 8, !tbaa !201, !range !204, !clap !205
  call void @checker_addUses_1(i64 191, i64 190)
  %tobool.i = icmp eq i8 %1, 0, !clap !206
  call void @checker_addUses_1(i64 192, i64 191)
  br i1 %tobool.i, label %if.end28, label %if.then, !clap !207

if.then:                                          ; preds = %invoke.cont
  call void @checker_trackDynInfo(i64 192)
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !208
  call void @checker_addUses_1(i64 194, i64 193)
  %vtable.i.i = load i8*, i8** %2, align 8, !tbaa !209, !clap !211
  call void @checker_addUses_1(i64 195, i64 194)
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !clap !212
  call void @checker_addUses_1(i64 196, i64 195)
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !clap !213
  call void @checker_addUses_1(i64 197, i64 196)
  %vbase.offset.i.i = load i64, i64* %3, align 8, !clap !214
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !215
  call void @checker_addUses_2(i64 199, i64 198, i64 197)
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i, !clap !216
  call void @checker_addUses_1(i64 200, i64 199)
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40, !clap !217
  call void @checker_addUses_1(i64 201, i64 200)
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**, !clap !218
  call void @checker_addUses_1(i64 202, i64 201)
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !tbaa !219, !clap !222
  call void @checker_addUses_1(i64 203, i64 199)
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*, !clap !223
  call void @checker_addUses_1(i64 204, i64 199)
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8, !clap !224
  call void @checker_addUses_1(i64 205, i64 204)
  %8 = bitcast i8* %__fmtflags_.i to i32*, !clap !225
  call void @checker_addUses_1(i64 206, i64 205)
  %9 = load i32, i32* %8, align 8, !tbaa !226, !clap !227
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len, !clap !228
  call void @checker_addUses_1(i64 208, i64 199)
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144, !clap !229
  call void @checker_addUses_1(i64 209, i64 208)
  %10 = bitcast i8* %__fill_.i to i32*, !clap !230
  call void @checker_addUses_1(i64 210, i64 209)
  %11 = load i32, i32* %10, align 8, !tbaa !231, !clap !233
  call void @checker_addUses_1(i64 211, i64 210)
  %cmp.i.i = icmp eq i32 %11, -1, !clap !234
  call void @checker_addUses_1(i64 212, i64 211)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 212)
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16, !clap !235

if.then.i:                                        ; preds = %if.then
  call void @checker_trackDynInfo(i64 212)
  call void @checker_addUses_1(i64 213, i64 185)
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*, !clap !236
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #1, !clap !237
  call void @checker_addUses_2(i64 215, i64 185, i64 203)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 215)
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3, !clap !238

.noexc:                                           ; preds = %if.then.i
  call void @checker_addUses_1(i64 216, i64 185)
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !239

invoke.cont.i.i:                                  ; preds = %.noexc
  call void @checker_addUses_1(i64 217, i64 216)
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !clap !240
  call void @checker_addUses_1(i64 218, i64 216)
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***, !clap !241
  call void @checker_addUses_1(i64 219, i64 218)
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !tbaa !209, !clap !242
  call void @checker_addUses_1(i64 220, i64 219)
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !clap !243
  call void @checker_addUses_1(i64 221, i64 220)
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !clap !244
  call void @checker_addUses_2(i64 222, i64 217, i64 221)
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !clap !245

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null, !clap !246
  call void @checker_addUses_1(i64 224, i64 185)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #1, !clap !247
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #1, !clap !248
  br label %ehcleanup, !clap !249

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @checker_addUses_1(i64 227, i64 185)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #1, !clap !250
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #1, !clap !251
  call void @checker_addUses_1(i64 229, i64 222)
  %conv.i = sext i8 %call.i6.i.i to i32, !clap !252
  call void @checker_addUses_2(i64 230, i64 229, i64 209)
  store i32 %conv.i, i32* %10, align 8, !tbaa !231, !clap !253
  br label %invoke.cont16, !clap !254

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ], !clap !255
  call void @checker_trackDynInfo(i64 212)
  call void @checker_handlePHI_2(i64 232, i64 229, i64 231, i64 210, i64 212)
  call void @checker_addUses_1(i64 233, i64 232)
  %conv6.i = trunc i32 %17 to i8, !clap !256
  call void @checker_addUses_1(i64 234, i64 206)
  %and = and i32 %9, 176, !clap !257
  call void @checker_addUses_1(i64 235, i64 234)
  %cmp = icmp eq i32 %and, 32, !clap !258
  call void @checker_addUses_2(i64 236, i64 235, i64 207)
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str, !clap !259
  call void @checker_addUses_5(i64 237, i64 202, i64 236, i64 207, i64 203, i64 233)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 237)
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3, !clap !260

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @checker_addUses_1(i64 238, i64 237)
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null, !clap !261
  call void @checker_addUses_1(i64 239, i64 238)
  br i1 %cmp.i, label %if.then22, label %if.end28, !clap !262

if.then22:                                        ; preds = %invoke.cont18
  call void @checker_trackDynInfo(i64 239)
  call void @checker_addUses_1(i64 240, i64 193)
  %vtable23 = load i8*, i8** %2, align 8, !tbaa !209, !clap !263
  call void @checker_addUses_1(i64 241, i64 240)
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24, !clap !264
  call void @checker_addUses_1(i64 242, i64 241)
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*, !clap !265
  call void @checker_addUses_1(i64 243, i64 242)
  %vbase.offset25 = load i64, i64* %18, align 8, !clap !266
  call void @checker_addUses_2(i64 244, i64 198, i64 243)
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25, !clap !267
  call void @checker_addUses_1(i64 245, i64 244)
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*, !clap !268
  call void @checker_addUses_1(i64 246, i64 244)
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32, !clap !269
  call void @checker_addUses_1(i64 247, i64 246)
  %20 = bitcast i8* %__rdstate_.i.i to i32*, !clap !270
  call void @checker_addUses_1(i64 248, i64 247)
  %21 = load i32, i32* %20, align 8, !tbaa !271, !clap !272
  call void @checker_addUses_1(i64 249, i64 248)
  %or.i.i = or i32 %21, 5, !clap !273
  call void @checker_addUses_2(i64 250, i64 245, i64 249)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 250)
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1, !clap !274

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null, !clap !275
  call void @checker_addUses_1(i64 252, i64 251)
  %23 = extractvalue { i8*, i32 } %22, 0, !clap !276
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !277
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !278
  br label %catch, !clap !279

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null, !clap !280
  br label %ehcleanup, !clap !281

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null, !clap !282
  br label %ehcleanup, !clap !283

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @checker_trackDynInfo(i64 192)
  call void @checker_addUses_1(i64 260, i64 186)
  call void @checker_beginFunc()
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #1, !clap !284
  call void @checker_endFunc()
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #1, !clap !285
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 262)
  br label %try.cont, !clap !286

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ], !clap !287
  call void @checker_trackDynInfo(i64 212)
  call void @checker_handlePHI_3(i64 263, i64 256, i64 257, i64 258, i64 259, i64 223, i64 226)
  call void @checker_addUses_1(i64 264, i64 263)
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0, !clap !288
  call void @checker_addUses_1(i64 265, i64 186)
  call void @checker_beginFunc()
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #1, !clap !289
  call void @checker_endFunc()
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #1, !clap !290
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 267)
  br label %catch, !clap !291

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ], !clap !292
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ], !clap !293
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ], !clap !294
  call void @checker_handlePHI_2(i64 270, i64 264, i64 267, i64 252, i64 255)
  call void @checker_handlePHI_2(i64 269, i64 193, i64 267, i64 253, i64 255)
  call void @checker_handlePHI_2(i64 268, i64 198, i64 267, i64 254, i64 255)
  call void @checker_addUses_1(i64 271, i64 270)
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #1, !clap !295
  call void @checker_addUses_1(i64 272, i64 269)
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !tbaa !209, !clap !296
  call void @checker_addUses_1(i64 273, i64 272)
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24, !clap !297
  call void @checker_addUses_1(i64 274, i64 273)
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*, !clap !298
  call void @checker_addUses_1(i64 275, i64 274)
  %vbase.offset32 = load i64, i64* %28, align 8, !clap !299
  call void @checker_addUses_2(i64 276, i64 268, i64 275)
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32, !clap !300
  call void @checker_addUses_1(i64 277, i64 276)
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*, !clap !301
  call void @checker_addUses_1(i64 278, i64 277)
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34, !clap !302

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch(), !clap !303
  br label %try.cont, !clap !304

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os, !clap !305

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup, !clap !306
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad, !clap !307

eh.resume:                                        ; preds = %lpad34
  call void @checker_addUses_1(i64 284, i64 282)
  resume { i8*, i32 } %30, !clap !308

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null, !clap !309
  call void @checker_addUses_1(i64 286, i64 285)
  %32 = extractvalue { i8*, i32 } %31, 0, !clap !310
  call void @checker_addUses_1(i64 287, i64 286)
  call void @__clang_call_terminate(i8* %32) #14, !clap !311
  unreachable, !clap !312
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #3

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8, !clap !313
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null, !clap !314
  call void @checker_addUses_1(i64 291, i64 290)
  call void @checker_currentBB(i64 291)
  br i1 %cmp, label %return, label %if.end, !clap !315

if.end:                                           ; preds = %entry
  call void @checker_trackDynInfo(i64 291)
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64, !clap !316
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64, !clap !317
  call void @checker_addUses_2(i64 294, i64 292, i64 293)
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !clap !318
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3, !clap !319
  call void @checker_addUses_1(i64 296, i64 295)
  %0 = load i64, i64* %__width_.i, align 8, !tbaa !320, !clap !321
  call void @checker_addUses_2(i64 297, i64 296, i64 294)
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub, !clap !322
  call void @checker_addUses_2(i64 298, i64 296, i64 294)
  %sub = sub nsw i64 %0, %sub.ptr.sub, !clap !323
  call void @checker_addUses_2(i64 299, i64 297, i64 298)
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0, !clap !324
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64, !clap !325
  call void @checker_addUses_2(i64 301, i64 300, i64 293)
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast, !clap !326
  call void @checker_addUses_1(i64 302, i64 301)
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !clap !327
  call void @checker_addUses_1(i64 303, i64 302)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 303)
  br i1 %cmp7, label %if.then8, label %if.end15, !clap !328

if.then8:                                         ; preds = %if.end
  call void @checker_trackDynInfo(i64 303)
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !329
  call void @checker_addUses_1(i64 305, i64 304)
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !tbaa !209, !clap !330
  call void @checker_addUses_1(i64 306, i64 305)
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12, !clap !331
  call void @checker_addUses_1(i64 307, i64 306)
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8, !clap !332
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6), !clap !333
  call void @checker_addUses_2(i64 309, i64 308, i64 301)
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6, !clap !334
  call void @checker_addUses_1(i64 310, i64 309)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 310)
  br i1 %cmp11, label %if.end15, label %return, !clap !335

if.end15:                                         ; preds = %if.then8, %if.end
  call void @checker_trackDynInfo(i64 303)
  call void @checker_addUses_1(i64 311, i64 299)
  %cmp16 = icmp sgt i64 %__ns.0, 0, !clap !336
  call void @checker_addUses_1(i64 312, i64 311)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 312)
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26, !clap !337

if.end.i.i.i:                                     ; preds = %if.end15
  call void @checker_trackDynInfo(i64 312)
  call void @checker_addUses_1(i64 313, i64 289)
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*, !clap !338
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #1, !clap !339
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #1, !clap !340
  call void @checker_addUses_1(i64 316, i64 299)
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23, !clap !341
  call void @checker_addUses_1(i64 317, i64 316)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 317)
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i, !clap !342

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  call void @checker_trackDynInfo(i64 317)
  call void @checker_addUses_1(i64 318, i64 299)
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16, !clap !343
  call void @checker_addUses_1(i64 319, i64 318)
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16, !clap !344
  call void @checker_addUses_1(i64 320, i64 319)
  call void @checker_beginFunc()
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #11, !clap !345
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 321, i64 289)
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !346
  call void @checker_addUses_2(i64 322, i64 320, i64 321)
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !347, !clap !349
  call void @checker_addUses_1(i64 323, i64 319)
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1, !clap !350
  call void @checker_addUses_1(i64 324, i64 289)
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !clap !351
  call void @checker_addUses_2(i64 325, i64 323, i64 324)
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !352, !clap !353
  call void @checker_addUses_1(i64 326, i64 289)
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !clap !354
  call void @checker_addUses_2(i64 327, i64 299, i64 326)
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !tbaa !355, !clap !356
  call void @checker_addUses_1(i64 328, i64 289)
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !357
  call void @checker_addUses_1(i64 329, i64 328)
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0, !clap !358
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 330)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !359

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @checker_trackDynInfo(i64 317)
  call void @checker_addUses_1(i64 331, i64 299)
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8, !clap !360
  call void @checker_addUses_1(i64 332, i64 331)
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1, !clap !361
  call void @checker_addUses_2(i64 333, i64 332, i64 313)
  store i8 %conv.i.i.i.i, i8* %3, align 8, !tbaa !362, !clap !363
  call void @checker_addUses_1(i64 334, i64 289)
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !364
  call void @checker_addUses_1(i64 335, i64 334)
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0, !clap !365
  call void @checker_addUses_1(i64 336, i64 289)
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !366
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 337)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !367

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !368
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ], !clap !369
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !370
  call void @checker_trackDynInfo(i64 317)
  call void @checker_handlePHI_2(i64 340, i64 320, i64 330, i64 335, i64 337)
  call void @checker_handlePHI_2(i64 339, i64 321, i64 330, i64 336, i64 337)
  call void @checker_handlePHI_2(i64 338, i64 329, i64 330, i64 335, i64 337)
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #1, !clap !371
  call void @checker_addUses_2(i64 342, i64 340, i64 299)
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0, !clap !372
  call void @checker_addUses_1(i64 343, i64 342)
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !362, !clap !373
  call void @checker_addUses_1(i64 344, i64 313)
  %4 = load i8, i8* %3, align 8, !tbaa !362, !clap !374
  call void @checker_addUses_1(i64 345, i64 344)
  %5 = and i8 %4, 1, !clap !375
  call void @checker_addUses_1(i64 346, i64 345)
  %tobool.i.i.i = icmp eq i8 %5, 0, !clap !376
  call void @checker_addUses_1(i64 347, i64 339)
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !clap !377
  call void @checker_addUses_3(i64 348, i64 346, i64 338, i64 347)
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6, !clap !378
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !379
  call void @checker_addUses_1(i64 350, i64 349)
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !tbaa !209, !clap !380
  call void @checker_addUses_1(i64 351, i64 350)
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12, !clap !381
  call void @checker_addUses_1(i64 352, i64 351)
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8, !clap !382
  call void @checker_addUses_3(i64 353, i64 348, i64 299, i64 352)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 353)
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad, !clap !383

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  call void @checker_addUses_2(i64 354, i64 353, i64 299)
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0, !clap !384
  call void @checker_addUses_1(i64 355, i64 313)
  %9 = load i8, i8* %3, align 8, !tbaa !362, !clap !385
  call void @checker_addUses_1(i64 356, i64 355)
  %10 = and i8 %9, 1, !clap !386
  call void @checker_addUses_1(i64 357, i64 356)
  %tobool.i.i.i89 = icmp eq i8 %10, 0, !clap !387
  call void @checker_addUses_1(i64 358, i64 357)
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i, !clap !388

if.then.i.i:                                      ; preds = %invoke.cont
  call void @checker_trackDynInfo(i64 358)
  call void @checker_addUses_1(i64 359, i64 339)
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !347, !clap !389
  call void @checker_addUses_1(i64 360, i64 359)
  call void @checker_beginFunc()
  call void @_ZdlPv(i8* %11) #12, !clap !390
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 361)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, !clap !391

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @checker_trackDynInfo(i64 358)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #1, !clap !392
  call void @checker_addUses_1(i64 363, i64 354)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 363)
  br i1 %cmp21, label %if.end26, label %return, !clap !393

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup, !clap !394
  call void @checker_addUses_1(i64 365, i64 313)
  %13 = load i8, i8* %3, align 8, !tbaa !362, !clap !395
  call void @checker_addUses_1(i64 366, i64 365)
  %14 = and i8 %13, 1, !clap !396
  call void @checker_addUses_1(i64 367, i64 366)
  %tobool.i.i.i92 = icmp eq i8 %14, 0, !clap !397
  call void @checker_addUses_1(i64 368, i64 367)
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94, !clap !398

if.then.i.i94:                                    ; preds = %lpad
  call void @checker_trackDynInfo(i64 368)
  call void @checker_addUses_1(i64 369, i64 339)
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !347, !clap !399
  call void @checker_addUses_1(i64 370, i64 369)
  call void @checker_beginFunc()
  call void @_ZdlPv(i8* %15) #12, !clap !400
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 371)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, !clap !401

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @checker_trackDynInfo(i64 368)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #1, !clap !402
  call void @checker_addUses_1(i64 373, i64 364)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 373)
  resume { i8*, i32 } %12, !clap !403

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  call void @checker_trackDynInfo(i64 312)
  call void @checker_addUses_2(i64 374, i64 292, i64 300)
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4, !clap !404
  call void @checker_addUses_1(i64 375, i64 374)
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !clap !405
  call void @checker_addUses_1(i64 376, i64 375)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 376)
  br i1 %cmp30, label %if.then31, label %if.end38, !clap !406

if.then31:                                        ; preds = %if.end26
  call void @checker_trackDynInfo(i64 376)
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !407
  call void @checker_addUses_1(i64 378, i64 377)
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !tbaa !209, !clap !408
  call void @checker_addUses_1(i64 379, i64 378)
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !clap !409
  call void @checker_addUses_1(i64 380, i64 379)
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !clap !410
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29), !clap !411
  call void @checker_addUses_2(i64 382, i64 381, i64 374)
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29, !clap !412
  call void @checker_addUses_1(i64 383, i64 382)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 383)
  br i1 %cmp34, label %if.end38, label %return, !clap !413

if.end38:                                         ; preds = %if.then31, %if.end26
  call void @checker_trackDynInfo(i64 376)
  call void @checker_addUses_1(i64 384, i64 295)
  store i64 0, i64* %__width_.i, align 8, !tbaa !320, !clap !414
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 385)
  br label %return, !clap !415

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ], !clap !416
  call void @checker_trackDynInfo(i64 291)
  call void @checker_handlePHI_5(i64 386, i64 0, i64 291, i64 0, i64 385, i64 0, i64 363, i64 0, i64 310, i64 0, i64 383)
  call void @checker_addUses_1(i64 387, i64 386)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 387)
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2, !clap !417
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #0

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #0

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #9

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #11, !clap !418
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 389, i64 388)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !419
  call void @checker_addUses_1(i64 390, i64 389)
  call void @checker_currentBB(i64 390)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !420

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !421

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 392, i64 388)
  %1 = ptrtoint i8* %call to i64, !clap !422
  %2 = ptrtoint void ()* %__f to i64, !clap !423
  call void @checker_addUses_1(i64 394, i64 391)
  %3 = bitcast i8* %call4 to i64*, !clap !424
  call void @checker_addUses_2(i64 395, i64 392, i64 394)
  store i64 %1, i64* %3, align 8, !tbaa !425, !clap !427
  call void @checker_addUses_1(i64 396, i64 391)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !428
  call void @checker_addUses_1(i64 397, i64 396)
  %5 = bitcast i8* %4 to i64*, !clap !429
  call void @checker_addUses_2(i64 398, i64 393, i64 397)
  store i64 %2, i64* %5, align 8, !tbaa !430, !clap !432
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !433
  call void @checker_addUses_2(i64 400, i64 399, i64 391)
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !434

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 401, i64 400)
  %cmp = icmp eq i32 %call.i31, 0, !clap !435
  call void @checker_addUses_1(i64 402, i64 401)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !436

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 402)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 403)
  ret void, !clap !437

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !438
  call void @checker_addUses_1(i64 405, i64 404)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !439
  call void @checker_addUses_1(i64 406, i64 404)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !440
  call void @checker_addUses_1(i64 407, i64 388)
  tail call void @_ZdlPv(i8* nonnull %call) #12, !clap !441
  br label %eh.resume, !clap !442

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !443
  br label %delete.notnull.i.i.i.i, !clap !444

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 402)
  call void @checker_addUses_1(i64 411, i64 400)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 411)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #13
          to label %invoke.cont16 unwind label %lpad15, !clap !445

invoke.cont16:                                    ; preds = %if.else
  unreachable, !clap !446

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !447
  br label %delete.notnull.i.i.i.i, !clap !448

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !449
  call void @checker_handlePHI_2(i64 415, i64 413, i64 414, i64 409, i64 410)
  call void @checker_addUses_1(i64 416, i64 415)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !450
  call void @checker_addUses_1(i64 417, i64 415)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !451
  call void @checker_addUses_1(i64 418, i64 391)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !452
  call void @checker_addUses_1(i64 419, i64 418)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !clap !453
  call void @checker_addUses_1(i64 420, i64 418)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !clap !454
  call void @checker_addUses_1(i64 421, i64 419)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !455
  call void @checker_addUses_1(i64 422, i64 421)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !456

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 422)
  call void @checker_addUses_1(i64 423, i64 419)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #1, !clap !457
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 424, i64 419)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !458
  call void @checker_addUses_1(i64 425, i64 424)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #12, !clap !459
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 426)
  br label %ehcleanup18.thread, !clap !460

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 422)
  call void @checker_addUses_1(i64 427, i64 391)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #12, !clap !461
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 428)
  br label %eh.resume, !clap !462

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !463
  call void @checker_addUses_1(i64 430, i64 429)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !464
  call void @checker_addUses_1(i64 431, i64 429)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !465
  call void @checker_addUses_1(i64 432, i64 389)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #1, !clap !466
  call void @checker_addUses_1(i64 433, i64 388)
  tail call void @_ZdlPv(i8* nonnull %call) #12, !clap !467
  br label %eh.resume, !clap !468

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !469
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !470
  call void @checker_handlePHI_3(i64 436, i64 405, i64 408, i64 430, i64 434, i64 416, i64 428)
  call void @checker_handlePHI_3(i64 435, i64 406, i64 408, i64 431, i64 434, i64 417, i64 428)
  call void @checker_addUses_1(i64 437, i64 436)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !471
  call void @checker_addUses_2(i64 438, i64 437, i64 435)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !472
  call void @checker_addUses_1(i64 439, i64 438)
  resume { i8*, i32 } %lpad.val20, !clap !473
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 440)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !474

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !475
  %0 = bitcast i8* %__vp to i8**, !clap !476
  call void @checker_addUses_1(i64 443, i64 442)
  %1 = load i8*, i8** %0, align 8, !tbaa !40, !clap !477
  call void @checker_addUses_1(i64 444, i64 441)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !40, !clap !478
  call void @checker_addUses_1(i64 445, i64 440)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !479
  call void @checker_addUses_1(i64 446, i64 445)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !480, !clap !482
  call void @checker_addUses_2(i64 447, i64 446, i64 443)
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !483

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !484
  call void @checker_addUses_1(i64 449, i64 448)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !485
  call void @checker_addUses_1(i64 450, i64 449)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !40, !clap !486
  call void @checker_addUses_1(i64 451, i64 450)
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !487

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 452, i64 441)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !40, !clap !488
  call void @checker_addUses_1(i64 453, i64 441)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !40, !clap !489
  call void @checker_addUses_1(i64 454, i64 452)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !490
  call void @checker_addUses_1(i64 455, i64 454)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !491

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 455)
  call void @checker_addUses_1(i64 456, i64 452)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #1, !clap !492
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 457, i64 452)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !493
  call void @checker_addUses_1(i64 458, i64 457)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #12, !clap !494
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 459)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !495

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 455)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !clap !496
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 461)
  ret i8* null, !clap !497

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !498
  br label %delete.notnull.i.i.i.i, !clap !499

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !500
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !501
  call void @checker_addUses_1(i64 466, i64 465)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !502

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 466)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !503
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 468)
  br label %delete.notnull.i.i.i.i, !clap !504

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !505
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !506
  call void @checker_handlePHI_2(i64 470, i64 464, i64 468, i64 462, i64 463)
  call void @checker_handlePHI_2(i64 469, i64 467, i64 468, i64 441, i64 463)
  call void @checker_addUses_1(i64 471, i64 469)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !40, !clap !507
  call void @checker_addUses_1(i64 472, i64 469)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !40, !clap !508
  call void @checker_addUses_1(i64 473, i64 471)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !509
  call void @checker_addUses_1(i64 474, i64 473)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !510

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 474)
  call void @checker_addUses_1(i64 475, i64 471)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #1, !clap !511
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 476, i64 471)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !512
  call void @checker_addUses_1(i64 477, i64 476)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #12, !clap !513
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 478)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !514

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 474)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !clap !515
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 480)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !516

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !517
  call void @checker_handlePHI_2(i64 481, i64 464, i64 466, i64 470, i64 480)
  call void @checker_addUses_1(i64 482, i64 481)
  resume { i8*, i32 } %lpad.phi30, !clap !518
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #9

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #3

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #3

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal void @_GLOBAL__sub_I_example.cpp() #10 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @checker_beginFunc()
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__1::mutex"*)* @_ZNSt3__15mutexD1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::mutex"* @x_mutex to i8*), i8* nonnull @__dso_handle) #1, !clap !519
  call void @checker_endFunc()
  call void @checker_currentBB(i64 484)
  ret void, !clap !520
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

declare i16 @checker_preRMW_Xchg_16(i8*, i16, i32)

declare i16 @checker_preRMW_Add_16(i8*, i16, i32)

declare i16 @checker_preRMW_Sub_16(i8*, i16, i32)

declare i16 @checker_preRMW_And_16(i8*, i16, i32)

declare i16 @checker_preRMW_Nand_16(i8*, i16, i32)

declare i16 @checker_preRMW_Or_16(i8*, i16, i32)

declare i16 @checker_preRMW_Xor_16(i8*, i16, i32)

declare i16 @checker_preRMW_Max_16(i8*, i16, i32)

declare i16 @checker_preRMW_Min_16(i8*, i16, i32)

declare i16 @checker_preRMW_UMax_16(i8*, i16, i32)

declare i16 @checker_preRMW_UMin_16(i8*, i16, i32)

declare i32 @checker_preRMW_Xchg_32(i8*, i32, i32)

declare i32 @checker_preRMW_Add_32(i8*, i32, i32)

declare i32 @checker_preRMW_Sub_32(i8*, i32, i32)

declare i32 @checker_preRMW_And_32(i8*, i32, i32)

declare i32 @checker_preRMW_Nand_32(i8*, i32, i32)

declare i32 @checker_preRMW_Or_32(i8*, i32, i32)

declare i32 @checker_preRMW_Xor_32(i8*, i32, i32)

declare i32 @checker_preRMW_Max_32(i8*, i32, i32)

declare i32 @checker_preRMW_Min_32(i8*, i32, i32)

declare i32 @checker_preRMW_UMax_32(i8*, i32, i32)

declare i32 @checker_preRMW_UMin_32(i8*, i32, i32)

declare i64 @checker_preRMW_Xchg_64(i8*, i64, i32)

declare i64 @checker_preRMW_Add_64(i8*, i64, i32)

declare i64 @checker_preRMW_Sub_64(i8*, i64, i32)

declare i64 @checker_preRMW_And_64(i8*, i64, i32)

declare i64 @checker_preRMW_Nand_64(i8*, i64, i32)

declare i64 @checker_preRMW_Or_64(i8*, i64, i32)

declare i64 @checker_preRMW_Xor_64(i8*, i64, i32)

declare i64 @checker_preRMW_Max_64(i8*, i64, i32)

declare i64 @checker_preRMW_Min_64(i8*, i64, i32)

declare i64 @checker_preRMW_UMax_64(i8*, i64, i32)

declare i64 @checker_preRMW_UMin_64(i8*, i64, i32)

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

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{i64 1}
!3 = !{i64 2}
!4 = !{i64 3}
!5 = !{i64 4}
!6 = !{i64 6}
!7 = !{i64 7}
!8 = !{i64 9}
!9 = !{i64 10}
!10 = !{i64 12}
!11 = !{i64 13}
!12 = !{i64 15}
!13 = !{i64 16}
!14 = !{i64 17}
!15 = !{i64 18}
!16 = !{i64 19}
!17 = !{i64 20}
!18 = !{i64 21}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C++ TBAA"}
!23 = !{i64 23}
!24 = !{i64 24}
!25 = !{i64 25}
!26 = !{i64 26}
!27 = !{i64 27}
!28 = !{i64 28}
!29 = !{i64 29}
!30 = !{i64 30}
!31 = !{i64 31}
!32 = !{i64 32}
!33 = !{i64 34}
!34 = !{i64 35}
!35 = !{i64 36}
!36 = !{i64 37}
!37 = !{i64 38}
!38 = !{i64 39}
!39 = !{i64 40}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !21, i64 0}
!42 = !{i64 41}
!43 = !{i64 42}
!44 = !{i64 43}
!45 = !{i64 44}
!46 = !{i64 45}
!47 = !{i64 46}
!48 = !{i64 47}
!49 = !{i64 48}
!50 = !{i64 49}
!51 = !{i64 50}
!52 = !{i64 51}
!53 = !{i64 52}
!54 = !{i64 53}
!55 = !{i64 54}
!56 = !{i64 55}
!57 = !{i64 56}
!58 = !{i64 57}
!59 = !{i64 58}
!60 = !{i64 59}
!61 = !{i64 60}
!62 = !{i64 61}
!63 = !{i64 62}
!64 = !{i64 63}
!65 = !{i64 64}
!66 = !{i64 65}
!67 = !{i64 66}
!68 = !{i64 67}
!69 = !{i64 68}
!70 = !{i64 69}
!71 = !{i64 70}
!72 = !{i64 71}
!73 = !{i64 72}
!74 = !{i64 73}
!75 = !{i64 74}
!76 = !{i64 75}
!77 = !{i64 76}
!78 = !{i64 77}
!79 = !{i64 78}
!80 = !{i64 79}
!81 = !{i64 80}
!82 = !{i64 81}
!83 = !{i64 82}
!84 = !{!85, !20, i64 0}
!85 = !{!"_ZTSN7checker12ModelCheckerE", !20, i64 0, !86, i64 8, !41, i64 32}
!86 = !{!"_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!87 = !{i64 83}
!88 = !{i64 84}
!89 = !{i64 85}
!90 = !{i64 86}
!91 = !{i64 87}
!92 = !{i64 88}
!93 = !{!94, !41, i64 0}
!94 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !41, i64 0, !41, i64 8, !95, i64 16}
!95 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!96 = !{i64 89}
!97 = !{i64 90}
!98 = !{i64 91}
!99 = !{i64 92}
!100 = !{i64 93}
!101 = !{i64 94}
!102 = !{!94, !41, i64 8}
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
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!120 = distinct !{!120, !"_ZN7checker12ModelChecker10getSchListEv"}
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
!151 = !{i64 140}
!152 = !{i64 141}
!153 = !{i64 142}
!154 = !{i64 143}
!155 = !{i64 144}
!156 = !{i64 145}
!157 = !{i64 146}
!158 = !{i64 147}
!159 = !{i64 148}
!160 = !{i64 149}
!161 = !{i64 150}
!162 = !{i64 151}
!163 = !{i64 152}
!164 = !{i64 153}
!165 = !{i64 154}
!166 = !{i64 155}
!167 = !{i64 156}
!168 = !{i64 157}
!169 = !{i64 158}
!170 = !{i64 159}
!171 = !{i64 160}
!172 = !{i64 161}
!173 = !{i64 162}
!174 = !{i64 163}
!175 = !{i64 164}
!176 = !{i64 165}
!177 = !{i64 166}
!178 = !{i64 167}
!179 = !{i64 168}
!180 = !{i64 169}
!181 = !{i64 170}
!182 = !{i64 171}
!183 = !{i64 172}
!184 = !{i64 173}
!185 = !{i64 174}
!186 = !{i64 175}
!187 = !{i64 176}
!188 = !{i64 177}
!189 = !{i64 178}
!190 = !{i64 179}
!191 = !{i64 180}
!192 = !{i64 181}
!193 = !{i64 182}
!194 = !{i64 183}
!195 = !{i64 184}
!196 = !{i64 185}
!197 = !{i64 186}
!198 = !{i64 187}
!199 = !{i64 188}
!200 = !{i64 189}
!201 = !{!202, !203, i64 0}
!202 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !203, i64 0, !21, i64 8}
!203 = !{!"bool", !21, i64 0}
!204 = !{i8 0, i8 2}
!205 = !{i64 190}
!206 = !{i64 191}
!207 = !{i64 192}
!208 = !{i64 193}
!209 = !{!210, !210, i64 0}
!210 = !{!"vtable pointer", !22, i64 0}
!211 = !{i64 194}
!212 = !{i64 195}
!213 = !{i64 196}
!214 = !{i64 197}
!215 = !{i64 198}
!216 = !{i64 199}
!217 = !{i64 200}
!218 = !{i64 201}
!219 = !{!220, !41, i64 40}
!220 = !{!"_ZTSNSt3__18ios_baseE", !20, i64 8, !221, i64 16, !221, i64 24, !20, i64 32, !20, i64 36, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !221, i64 72, !221, i64 80, !41, i64 88, !221, i64 96, !221, i64 104, !41, i64 112, !221, i64 120, !221, i64 128}
!221 = !{!"long", !21, i64 0}
!222 = !{i64 202}
!223 = !{i64 203}
!224 = !{i64 204}
!225 = !{i64 205}
!226 = !{!220, !20, i64 8}
!227 = !{i64 206}
!228 = !{i64 207}
!229 = !{i64 208}
!230 = !{i64 209}
!231 = !{!232, !20, i64 144}
!232 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !41, i64 136, !20, i64 144}
!233 = !{i64 210}
!234 = !{i64 211}
!235 = !{i64 212}
!236 = !{i64 213}
!237 = !{i64 214}
!238 = !{i64 215}
!239 = !{i64 216}
!240 = !{i64 217}
!241 = !{i64 218}
!242 = !{i64 219}
!243 = !{i64 220}
!244 = !{i64 221}
!245 = !{i64 222}
!246 = !{i64 223}
!247 = !{i64 224}
!248 = !{i64 225}
!249 = !{i64 226}
!250 = !{i64 227}
!251 = !{i64 228}
!252 = !{i64 229}
!253 = !{i64 230}
!254 = !{i64 231}
!255 = !{i64 232}
!256 = !{i64 233}
!257 = !{i64 234}
!258 = !{i64 235}
!259 = !{i64 236}
!260 = !{i64 237}
!261 = !{i64 238}
!262 = !{i64 239}
!263 = !{i64 240}
!264 = !{i64 241}
!265 = !{i64 242}
!266 = !{i64 243}
!267 = !{i64 244}
!268 = !{i64 245}
!269 = !{i64 246}
!270 = !{i64 247}
!271 = !{!220, !20, i64 32}
!272 = !{i64 248}
!273 = !{i64 249}
!274 = !{i64 250}
!275 = !{i64 251}
!276 = !{i64 252}
!277 = !{i64 253}
!278 = !{i64 254}
!279 = !{i64 255}
!280 = !{i64 256}
!281 = !{i64 257}
!282 = !{i64 258}
!283 = !{i64 259}
!284 = !{i64 260}
!285 = !{i64 261}
!286 = !{i64 262}
!287 = !{i64 263}
!288 = !{i64 264}
!289 = !{i64 265}
!290 = !{i64 266}
!291 = !{i64 267}
!292 = !{i64 268}
!293 = !{i64 269}
!294 = !{i64 270}
!295 = !{i64 271}
!296 = !{i64 272}
!297 = !{i64 273}
!298 = !{i64 274}
!299 = !{i64 275}
!300 = !{i64 276}
!301 = !{i64 277}
!302 = !{i64 278}
!303 = !{i64 279}
!304 = !{i64 280}
!305 = !{i64 281}
!306 = !{i64 282}
!307 = !{i64 283}
!308 = !{i64 284}
!309 = !{i64 285}
!310 = !{i64 286}
!311 = !{i64 287}
!312 = !{i64 288}
!313 = !{i64 289}
!314 = !{i64 290}
!315 = !{i64 291}
!316 = !{i64 292}
!317 = !{i64 293}
!318 = !{i64 294}
!319 = !{i64 295}
!320 = !{!220, !221, i64 24}
!321 = !{i64 296}
!322 = !{i64 297}
!323 = !{i64 298}
!324 = !{i64 299}
!325 = !{i64 300}
!326 = !{i64 301}
!327 = !{i64 302}
!328 = !{i64 303}
!329 = !{i64 304}
!330 = !{i64 305}
!331 = !{i64 306}
!332 = !{i64 307}
!333 = !{i64 308}
!334 = !{i64 309}
!335 = !{i64 310}
!336 = !{i64 311}
!337 = !{i64 312}
!338 = !{i64 313}
!339 = !{i64 314}
!340 = !{i64 315}
!341 = !{i64 316}
!342 = !{i64 317}
!343 = !{i64 318}
!344 = !{i64 319}
!345 = !{i64 320}
!346 = !{i64 321}
!347 = !{!348, !41, i64 16}
!348 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !221, i64 0, !221, i64 8, !41, i64 16}
!349 = !{i64 322}
!350 = !{i64 323}
!351 = !{i64 324}
!352 = !{!348, !221, i64 0}
!353 = !{i64 325}
!354 = !{i64 326}
!355 = !{!348, !221, i64 8}
!356 = !{i64 327}
!357 = !{i64 328}
!358 = !{i64 329}
!359 = !{i64 330}
!360 = !{i64 331}
!361 = !{i64 332}
!362 = !{!21, !21, i64 0}
!363 = !{i64 333}
!364 = !{i64 334}
!365 = !{i64 335}
!366 = !{i64 336}
!367 = !{i64 337}
!368 = !{i64 338}
!369 = !{i64 339}
!370 = !{i64 340}
!371 = !{i64 341}
!372 = !{i64 342}
!373 = !{i64 343}
!374 = !{i64 344}
!375 = !{i64 345}
!376 = !{i64 346}
!377 = !{i64 347}
!378 = !{i64 348}
!379 = !{i64 349}
!380 = !{i64 350}
!381 = !{i64 351}
!382 = !{i64 352}
!383 = !{i64 353}
!384 = !{i64 354}
!385 = !{i64 355}
!386 = !{i64 356}
!387 = !{i64 357}
!388 = !{i64 358}
!389 = !{i64 359}
!390 = !{i64 360}
!391 = !{i64 361}
!392 = !{i64 362}
!393 = !{i64 363}
!394 = !{i64 364}
!395 = !{i64 365}
!396 = !{i64 366}
!397 = !{i64 367}
!398 = !{i64 368}
!399 = !{i64 369}
!400 = !{i64 370}
!401 = !{i64 371}
!402 = !{i64 372}
!403 = !{i64 373}
!404 = !{i64 374}
!405 = !{i64 375}
!406 = !{i64 376}
!407 = !{i64 377}
!408 = !{i64 378}
!409 = !{i64 379}
!410 = !{i64 380}
!411 = !{i64 381}
!412 = !{i64 382}
!413 = !{i64 383}
!414 = !{i64 384}
!415 = !{i64 385}
!416 = !{i64 386}
!417 = !{i64 387}
!418 = !{i64 388}
!419 = !{i64 389}
!420 = !{i64 390}
!421 = !{i64 391}
!422 = !{i64 392}
!423 = !{i64 393}
!424 = !{i64 394}
!425 = !{!426, !41, i64 0}
!426 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !41, i64 0}
!427 = !{i64 395}
!428 = !{i64 396}
!429 = !{i64 397}
!430 = !{!431, !41, i64 0}
!431 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !41, i64 0}
!432 = !{i64 398}
!433 = !{i64 399}
!434 = !{i64 400}
!435 = !{i64 401}
!436 = !{i64 402}
!437 = !{i64 403}
!438 = !{i64 404}
!439 = !{i64 405}
!440 = !{i64 406}
!441 = !{i64 407}
!442 = !{i64 408}
!443 = !{i64 409}
!444 = !{i64 410}
!445 = !{i64 411}
!446 = !{i64 412}
!447 = !{i64 413}
!448 = !{i64 414}
!449 = !{i64 415}
!450 = !{i64 416}
!451 = !{i64 417}
!452 = !{i64 418}
!453 = !{i64 419}
!454 = !{i64 420}
!455 = !{i64 421}
!456 = !{i64 422}
!457 = !{i64 423}
!458 = !{i64 424}
!459 = !{i64 425}
!460 = !{i64 426}
!461 = !{i64 427}
!462 = !{i64 428}
!463 = !{i64 429}
!464 = !{i64 430}
!465 = !{i64 431}
!466 = !{i64 432}
!467 = !{i64 433}
!468 = !{i64 434}
!469 = !{i64 435}
!470 = !{i64 436}
!471 = !{i64 437}
!472 = !{i64 438}
!473 = !{i64 439}
!474 = !{i64 440}
!475 = !{i64 441}
!476 = !{i64 442}
!477 = !{i64 443}
!478 = !{i64 444}
!479 = !{i64 445}
!480 = !{!481, !221, i64 0}
!481 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !221, i64 0}
!482 = !{i64 446}
!483 = !{i64 447}
!484 = !{i64 448}
!485 = !{i64 449}
!486 = !{i64 450}
!487 = !{i64 451}
!488 = !{i64 452}
!489 = !{i64 453}
!490 = !{i64 454}
!491 = !{i64 455}
!492 = !{i64 456}
!493 = !{i64 457}
!494 = !{i64 458}
!495 = !{i64 459}
!496 = !{i64 460}
!497 = !{i64 461}
!498 = !{i64 462}
!499 = !{i64 463}
!500 = !{i64 464}
!501 = !{i64 465}
!502 = !{i64 466}
!503 = !{i64 467}
!504 = !{i64 468}
!505 = !{i64 469}
!506 = !{i64 470}
!507 = !{i64 471}
!508 = !{i64 472}
!509 = !{i64 473}
!510 = !{i64 474}
!511 = !{i64 475}
!512 = !{i64 476}
!513 = !{i64 477}
!514 = !{i64 478}
!515 = !{i64 479}
!516 = !{i64 480}
!517 = !{i64 481}
!518 = !{i64 482}
!519 = !{i64 483}
!520 = !{i64 484}
