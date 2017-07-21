; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i32 }
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
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
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::__compressed_pair.14" = type { %"struct.std::__1::__compressed_pair_elem.15" }
%"struct.std::__1::__compressed_pair_elem.15" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
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
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.20" }
%"class.std::__1::__compressed_pair.20" = type { %"struct.std::__1::__compressed_pair_elem.21" }
%"struct.std::__1::__compressed_pair_elem.21" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.22, [23 x i8] }
%union.anon.22 = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@data1 = global i32 0, align 4
@data2 = global i32 0, align 4
@x = global %"struct.std::__1::atomic" zeroinitializer, align 4
@y = global %"struct.std::__1::atomic" zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"data: %d, %d\0A\00", align 1
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ERROR!\0A\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Generate a model checker: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z2f1v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !clap !2
  tail call void @checker_shared(i8* bitcast (i32* @data1 to i8*)), !clap !3
  tail call void @checker_shared(i8* bitcast (i32* @data2 to i8*)), !clap !4
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !5
  call void @checker_addUses_1(i64 5, i64 4)
  %0 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 5, i32 2), !clap !6
  call void @checker_addUses_1(i64 7, i64 5)
  store i32 %0, i32* @data1, align 4, !tbaa !7, !clap !11
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !12
  call void @checker_addUses_1(i64 9, i64 8)
  call void @checker_preAtomicStore_int(i8* %myCast1, i64 9, i32 1, i32 2), !clap !13
  tail call void @checker_thread_end(), !clap !14
  call void @checker_currentBB(i64 12)
  ret void, !clap !15
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

declare void @checker_shared(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z2f2v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !clap !16
  tail call void @checker_shared(i8* bitcast (i32* @data1 to i8*)), !clap !17
  tail call void @checker_shared(i8* bitcast (i32* @data2 to i8*)), !clap !18
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !19
  call void @checker_addUses_1(i64 17, i64 16)
  %0 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 17, i32 2), !clap !20
  call void @checker_addUses_1(i64 19, i64 17)
  store i32 %0, i32* @data2, align 4, !tbaa !7, !clap !21
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !22
  call void @checker_addUses_1(i64 21, i64 20)
  call void @checker_preAtomicStore_int(i8* %myCast1, i64 21, i32 1, i32 2), !clap !23
  tail call void @checker_thread_end(), !clap !24
  call void @checker_currentBB(i64 24)
  ret void, !clap !25
}

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8, !clap !26
  %b = alloca %"class.std::__1::thread", align 8, !clap !27
  tail call void @checker_generateExecutor(), !clap !28
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !clap !29
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !30
  call void @checker_addUses_1(i64 30, i64 29)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 30, i32 0, i32 7), !clap !31
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !32
  call void @checker_addUses_1(i64 33, i64 32)
  call void @checker_preAtomicStore_int(i8* %myCast1, i64 33, i32 0, i32 7), !clap !33
  call void @checker_addUses_1(i64 35, i64 25)
  %0 = bitcast %"class.std::__1::thread"* %a to i8*, !clap !34
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #9, !clap !35
  call void @checker_addUses_1(i64 37, i64 25)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2f1v), !clap !36
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 38, i64 26)
  %1 = bitcast %"class.std::__1::thread"* %b to i8*, !clap !37
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #9, !clap !38
  call void @checker_addUses_1(i64 40, i64 26)
  call void @checker_currentBB(i64 40)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad, !clap !39

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 41, i64 25)
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !clap !40
  call void @checker_addUses_1(i64 42, i64 41)
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !41, !clap !43
  call void @checker_addUses_1(i64 43, i64 42)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont5 unwind label %lpad4, !clap !44

invoke.cont5:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 44, i64 26)
  %__t_.i35 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !clap !45
  call void @checker_addUses_1(i64 45, i64 44)
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i35, align 8, !tbaa !41, !clap !46
  call void @checker_addUses_1(i64 46, i64 45)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont10 unwind label %lpad4, !clap !47

invoke.cont10:                                    ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 47, i64 41)
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !41, !clap !48
  call void @checker_addUses_1(i64 48, i64 47)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %4)
          to label %invoke.cont15 unwind label %lpad4, !clap !49

invoke.cont15:                                    ; preds = %invoke.cont10
  call void @checker_addUses_1(i64 49, i64 44)
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i35, align 8, !tbaa !41, !clap !50
  call void @checker_addUses_1(i64 50, i64 49)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %5)
          to label %invoke.cont20 unwind label %lpad4, !clap !51

invoke.cont20:                                    ; preds = %invoke.cont15
  call void @checker_addUses_1(i64 51, i64 25)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont21 unwind label %lpad4, !clap !52

invoke.cont21:                                    ; preds = %invoke.cont20
  call void @checker_addUses_1(i64 52, i64 26)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont22 unwind label %lpad4, !clap !53

invoke.cont22:                                    ; preds = %invoke.cont21
  %6 = load i32, i32* @data1, align 4, !tbaa !7, !clap !54
  %7 = load i32, i32* @data2, align 4, !tbaa !7, !clap !55
  call void @checker_addUses_2(i64 55, i64 53, i64 54)
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %6, i32 %7), !clap !56
  %8 = load i32, i32* @data1, align 4, !tbaa !7, !clap !57
  call void @checker_addUses_1(i64 57, i64 56)
  %cmp = icmp eq i32 %8, 1, !clap !58
  %9 = load i32, i32* @data2, align 4, !clap !59
  call void @checker_addUses_1(i64 59, i64 58)
  %cmp25 = icmp eq i32 %9, 1, !clap !60
  call void @checker_addUses_2(i64 60, i64 57, i64 59)
  %or.cond = and i1 %cmp, %cmp25, !clap !61
  call void @checker_addUses_1(i64 61, i64 60)
  br i1 %or.cond, label %if.end, label %if.then, !clap !62

if.then:                                          ; preds = %invoke.cont22
  call void @checker_trackDynInfo(i64 61)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 62)
  %call1.i32 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 7)
          to label %if.end unwind label %lpad4, !clap !63

lpad:                                             ; preds = %entry
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !64
  call void @checker_addUses_1(i64 64, i64 63)
  %11 = extractvalue { i8*, i32 } %10, 0, !clap !65
  call void @checker_addUses_1(i64 65, i64 63)
  %12 = extractvalue { i8*, i32 } %10, 1, !clap !66
  br label %ehcleanup, !clap !67

lpad4:                                            ; preds = %if.then, %invoke.cont28, %if.end, %invoke.cont21, %invoke.cont20, %invoke.cont15, %invoke.cont10, %invoke.cont5, %invoke.cont
  %13 = landingpad { i8*, i32 }
          cleanup, !clap !68
  call void @checker_addUses_1(i64 68, i64 67)
  %14 = extractvalue { i8*, i32 } %13, 0, !clap !69
  call void @checker_addUses_1(i64 69, i64 67)
  %15 = extractvalue { i8*, i32 } %13, 1, !clap !70
  call void @checker_addUses_1(i64 70, i64 26)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #9, !clap !71
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #9, !clap !72
  br label %ehcleanup, !clap !73

if.end:                                           ; preds = %if.then, %invoke.cont22
  call void @checker_trackDynInfo(i64 61)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 73)
  invoke void @checker_thread_end()
          to label %invoke.cont28 unwind label %lpad4, !clap !74

invoke.cont28:                                    ; preds = %if.end
  invoke void @checker_solver()
          to label %invoke.cont29 unwind label %lpad4, !clap !75

invoke.cont29:                                    ; preds = %invoke.cont28
  call void @checker_addUses_1(i64 75, i64 26)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #9, !clap !76
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #9, !clap !77
  call void @checker_addUses_1(i64 77, i64 25)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #9, !clap !78
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #9, !clap !79
  ret i32 0, !clap !80

ehcleanup:                                        ; preds = %lpad4, %lpad
  %ehselector.slot.0 = phi i32 [ %15, %lpad4 ], [ %12, %lpad ], !clap !81
  %exn.slot.0 = phi i8* [ %14, %lpad4 ], [ %11, %lpad ], !clap !82
  call void @checker_handlePHI_2(i64 81, i64 68, i64 72, i64 64, i64 66)
  call void @checker_handlePHI_2(i64 80, i64 69, i64 72, i64 65, i64 66)
  call void @checker_addUses_1(i64 82, i64 25)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #9, !clap !83
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #9, !clap !84
  call void @checker_addUses_1(i64 84, i64 81)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !clap !85
  call void @checker_addUses_2(i64 85, i64 84, i64 80)
  %lpad.val31 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !clap !86
  call void @checker_addUses_1(i64 86, i64 85)
  resume { i8*, i32 } %lpad.val31, !clap !87
}

declare void @checker_generateExecutor() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !88
  %call = tail call i8* @_Znwm(i64 40) #10, !clap !89
  %schList.i.i = getelementptr inbounds i8, i8* %call, i64 8, !clap !90
  tail call void @llvm.memset.p0i8.i64(i8* %schList.i.i, i8 0, i64 24, i32 8, i1 false) #9, !clap !91
  %test.i.i = bitcast i8* %call to i32*, !clap !92
  store i32 3, i32* %test.i.i, align 8, !tbaa !93, !clap !96
  %call1.i7.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 26)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !97

invoke.cont.i.i:                                  ; preds = %entry
  %call3.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i7.i.i, i8* nonnull %call)
          to label %invoke.cont2.i.i unwind label %lpad.i.i, !clap !98

invoke.cont2.i.i:                                 ; preds = %invoke.cont.i.i
  %call1.i9.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call3.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1)
          to label %invoke.cont unwind label %lpad.i.i, !clap !99

lpad.i.i:                                         ; preds = %invoke.cont2.i.i, %invoke.cont.i.i, %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !clap !100
  %__begin_.i.i.i.i.i = bitcast i8* %schList.i.i to %"class.checker::Schedule"***, !clap !101
  %1 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.i, align 8, !tbaa !102, !clap !105
  %cmp.i.i.i.i.i = icmp eq %"class.checker::Schedule"** %1, null, !clap !106
  br i1 %cmp.i.i.i.i.i, label %lpad.body, label %if.then.i.i.i.i.i, !clap !107

if.then.i.i.i.i.i:                                ; preds = %lpad.i.i
  %2 = ptrtoint %"class.checker::Schedule"** %1 to i64, !clap !108
  %__end_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call, i64 16, !clap !109
  %3 = bitcast i8* %__end_.i.i.i.i.i.i.i to i64*, !clap !110
  store i64 %2, i64* %3, align 8, !tbaa !111, !clap !112
  %.cast.i.i.i.i.i = bitcast %"class.checker::Schedule"** %1 to i8*, !clap !113
  tail call void @_ZdlPv(i8* %.cast.i.i.i.i.i) #11, !clap !114
  br label %lpad.body, !clap !115

invoke.cont:                                      ; preds = %invoke.cont2.i.i
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !41, !clap !116
  %call1 = tail call i32 @user_main(), !clap !117
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !118
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !119
  %5 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !120
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !121
  %7 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !122
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !123
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9, !clap !124
  %8 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !41, !clap !125
  %schList.i17 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, !clap !126
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !127, !clap !130
  %__end_.i16.i.i.i18 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, i32 0, i32 1, !clap !131
  %9 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i18 to i64*, !clap !132
  %10 = load i64, i64* %9, align 8, !tbaa !111, !noalias !127, !clap !133
  %11 = bitcast %"class.std::__1::vector"* %schList.i17 to i64*, !clap !134
  %12 = load i64, i64* %11, align 8, !tbaa !102, !noalias !127, !clap !135
  %sub.ptr.sub.i.i.i.i19 = sub i64 %10, %12, !clap !136
  %sub.ptr.div.i.i.i.i20 = ashr exact i64 %sub.ptr.sub.i.i.i.i19, 3, !clap !137
  %cmp.i.i.i21 = icmp eq i64 %sub.ptr.div.i.i.i.i20, 0, !clap !138
  br i1 %cmp.i.i.i21, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !139

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !140

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !141

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9, !clap !142
  br label %while.end, !clap !143

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i23 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i20, %if.then.i.i.i.preheader ], !clap !144
  %sub.ptr.sub.i.i.i.i22 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i19, %if.then.i.i.i.preheader ], !clap !145
  %13 = phi i64 [ %25, %while.body ], [ %12, %if.then.i.i.i.preheader ], !clap !146
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i23, 2305843009213693951, !clap !147
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !148

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %14 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !149
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %14) #12
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !150

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !151

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i22) #10, !clap !152
  %15 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !153
  store i8* %call.i.i.i.i15.i.i.i, i8** %6, align 8, !tbaa !111, !alias.scope !127, !clap !154
  store i8* %call.i.i.i.i15.i.i.i, i8** %7, align 8, !tbaa !102, !alias.scope !127, !clap !155
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div.i.i.i.i23, !clap !156
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !41, !alias.scope !127, !clap !157
  %cmp.i.i.i.i.i5 = icmp sgt i64 %sub.ptr.sub.i.i.i.i22, 0, !clap !158
  %16 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !159
  br i1 %cmp.i.i.i.i.i5, label %if.then.i.i.i.i.i6, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !160

if.then.i.i.i.i.i6:                               ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i22, 3, !clap !161
  %17 = inttoptr i64 %13 to i8*, !clap !162
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %17, i64 %sub.ptr.sub.i.i.i.i22, i32 8, i1 false) #9, !clap !163
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div6.i.i.i.i.i, !clap !164
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !41, !alias.scope !127, !clap !165
  %18 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !166
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !167

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !168
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !169
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !102, !alias.scope !127, !clap !170
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !171
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !172

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %19 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !173
  %20 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !174
  store i64 %20, i64* %5, align 8, !tbaa !111, !alias.scope !127, !clap !175
  call void @_ZdlPv(i8* %19) #11, !clap !176
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !177

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !178

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i6, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %18, %if.then.i.i.i.i.i6 ], [ %16, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !179
  %tobool12 = icmp eq i64 %.ph, %16, !clap !180
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #11, !clap !181
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9, !clap !182
  br i1 %tobool12, label %while.end.loopexit, label %while.body, !clap !183

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !clap !184
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9, !clap !185
  %21 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !41, !clap !186
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, !clap !187
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !127, !clap !188
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, i32 0, i32 1, !clap !189
  %22 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !190
  %23 = load i64, i64* %22, align 8, !tbaa !111, !noalias !127, !clap !191
  %24 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !192
  %25 = load i64, i64* %24, align 8, !tbaa !102, !noalias !127, !clap !193
  %sub.ptr.sub.i.i.i.i = sub i64 %23, %25, !clap !194
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !195
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !196
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !197

lpad.body:                                        ; preds = %lpad.i.i, %if.then.i.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call) #11, !clap !198
  resume { i8*, i32 } %0, !clap !199

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !200

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !201
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #7 {
  call void @checker_beginFunc()
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #9, !clap !202
  call void @checker_endFunc()
  call void @checker_beginFunc()
  tail call void @_ZSt9terminatev() #13, !clap !203
  call void @checker_endFunc()
  call void @checker_currentBB(i64 193)
  unreachable, !clap !204
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8, !clap !205
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8, !clap !206
  call void @checker_addUses_1(i64 196, i64 195)
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0, !clap !207
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #9, !clap !208
  call void @checker_addUses_1(i64 198, i64 195)
  call void @checker_currentBB(i64 198)
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad, !clap !209

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 199, i64 196)
  %1 = load i8, i8* %0, align 8, !tbaa !210, !range !213, !clap !214
  call void @checker_addUses_1(i64 200, i64 199)
  %tobool.i = icmp eq i8 %1, 0, !clap !215
  call void @checker_addUses_1(i64 201, i64 200)
  br i1 %tobool.i, label %if.end28, label %if.then, !clap !216

if.then:                                          ; preds = %invoke.cont
  call void @checker_trackDynInfo(i64 201)
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !217
  call void @checker_addUses_1(i64 203, i64 202)
  %vtable.i.i = load i8*, i8** %2, align 8, !tbaa !218, !clap !220
  call void @checker_addUses_1(i64 204, i64 203)
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !clap !221
  call void @checker_addUses_1(i64 205, i64 204)
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !clap !222
  call void @checker_addUses_1(i64 206, i64 205)
  %vbase.offset.i.i = load i64, i64* %3, align 8, !clap !223
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !224
  call void @checker_addUses_2(i64 208, i64 207, i64 206)
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i, !clap !225
  call void @checker_addUses_1(i64 209, i64 208)
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40, !clap !226
  call void @checker_addUses_1(i64 210, i64 209)
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**, !clap !227
  call void @checker_addUses_1(i64 211, i64 210)
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !tbaa !228, !clap !231
  call void @checker_addUses_1(i64 212, i64 208)
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*, !clap !232
  call void @checker_addUses_1(i64 213, i64 208)
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8, !clap !233
  call void @checker_addUses_1(i64 214, i64 213)
  %8 = bitcast i8* %__fmtflags_.i to i32*, !clap !234
  call void @checker_addUses_1(i64 215, i64 214)
  %9 = load i32, i32* %8, align 8, !tbaa !235, !clap !236
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len, !clap !237
  call void @checker_addUses_1(i64 217, i64 208)
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144, !clap !238
  call void @checker_addUses_1(i64 218, i64 217)
  %10 = bitcast i8* %__fill_.i to i32*, !clap !239
  call void @checker_addUses_1(i64 219, i64 218)
  %11 = load i32, i32* %10, align 8, !tbaa !240, !clap !242
  call void @checker_addUses_1(i64 220, i64 219)
  %cmp.i.i = icmp eq i32 %11, -1, !clap !243
  call void @checker_addUses_1(i64 221, i64 220)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 221)
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16, !clap !244

if.then.i:                                        ; preds = %if.then
  call void @checker_trackDynInfo(i64 221)
  call void @checker_addUses_1(i64 222, i64 194)
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*, !clap !245
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #9, !clap !246
  call void @checker_addUses_2(i64 224, i64 194, i64 212)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 224)
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3, !clap !247

.noexc:                                           ; preds = %if.then.i
  call void @checker_addUses_1(i64 225, i64 194)
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !248

invoke.cont.i.i:                                  ; preds = %.noexc
  call void @checker_addUses_1(i64 226, i64 225)
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !clap !249
  call void @checker_addUses_1(i64 227, i64 225)
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***, !clap !250
  call void @checker_addUses_1(i64 228, i64 227)
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !tbaa !218, !clap !251
  call void @checker_addUses_1(i64 229, i64 228)
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !clap !252
  call void @checker_addUses_1(i64 230, i64 229)
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !clap !253
  call void @checker_addUses_2(i64 231, i64 226, i64 230)
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !clap !254

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null, !clap !255
  call void @checker_addUses_1(i64 233, i64 194)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #9, !clap !256
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #9, !clap !257
  br label %ehcleanup, !clap !258

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @checker_addUses_1(i64 236, i64 194)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #9, !clap !259
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #9, !clap !260
  call void @checker_addUses_1(i64 238, i64 231)
  %conv.i = sext i8 %call.i6.i.i to i32, !clap !261
  call void @checker_addUses_2(i64 239, i64 238, i64 218)
  store i32 %conv.i, i32* %10, align 8, !tbaa !240, !clap !262
  br label %invoke.cont16, !clap !263

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ], !clap !264
  call void @checker_trackDynInfo(i64 221)
  call void @checker_handlePHI_2(i64 241, i64 238, i64 240, i64 219, i64 221)
  call void @checker_addUses_1(i64 242, i64 241)
  %conv6.i = trunc i32 %17 to i8, !clap !265
  call void @checker_addUses_1(i64 243, i64 215)
  %and = and i32 %9, 176, !clap !266
  call void @checker_addUses_1(i64 244, i64 243)
  %cmp = icmp eq i32 %and, 32, !clap !267
  call void @checker_addUses_2(i64 245, i64 244, i64 216)
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str, !clap !268
  call void @checker_addUses_5(i64 246, i64 211, i64 245, i64 216, i64 212, i64 242)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 246)
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3, !clap !269

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @checker_addUses_1(i64 247, i64 246)
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null, !clap !270
  call void @checker_addUses_1(i64 248, i64 247)
  br i1 %cmp.i, label %if.then22, label %if.end28, !clap !271

if.then22:                                        ; preds = %invoke.cont18
  call void @checker_trackDynInfo(i64 248)
  call void @checker_addUses_1(i64 249, i64 202)
  %vtable23 = load i8*, i8** %2, align 8, !tbaa !218, !clap !272
  call void @checker_addUses_1(i64 250, i64 249)
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24, !clap !273
  call void @checker_addUses_1(i64 251, i64 250)
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*, !clap !274
  call void @checker_addUses_1(i64 252, i64 251)
  %vbase.offset25 = load i64, i64* %18, align 8, !clap !275
  call void @checker_addUses_2(i64 253, i64 207, i64 252)
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25, !clap !276
  call void @checker_addUses_1(i64 254, i64 253)
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*, !clap !277
  call void @checker_addUses_1(i64 255, i64 253)
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32, !clap !278
  call void @checker_addUses_1(i64 256, i64 255)
  %20 = bitcast i8* %__rdstate_.i.i to i32*, !clap !279
  call void @checker_addUses_1(i64 257, i64 256)
  %21 = load i32, i32* %20, align 8, !tbaa !280, !clap !281
  call void @checker_addUses_1(i64 258, i64 257)
  %or.i.i = or i32 %21, 5, !clap !282
  call void @checker_addUses_2(i64 259, i64 254, i64 258)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 259)
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1, !clap !283

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null, !clap !284
  call void @checker_addUses_1(i64 261, i64 260)
  %23 = extractvalue { i8*, i32 } %22, 0, !clap !285
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !286
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !287
  br label %catch, !clap !288

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null, !clap !289
  br label %ehcleanup, !clap !290

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null, !clap !291
  br label %ehcleanup, !clap !292

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @checker_trackDynInfo(i64 201)
  call void @checker_addUses_1(i64 269, i64 195)
  call void @checker_beginFunc()
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #9, !clap !293
  call void @checker_endFunc()
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #9, !clap !294
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 271)
  br label %try.cont, !clap !295

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ], !clap !296
  call void @checker_trackDynInfo(i64 221)
  call void @checker_handlePHI_3(i64 272, i64 265, i64 266, i64 267, i64 268, i64 232, i64 235)
  call void @checker_addUses_1(i64 273, i64 272)
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0, !clap !297
  call void @checker_addUses_1(i64 274, i64 195)
  call void @checker_beginFunc()
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #9, !clap !298
  call void @checker_endFunc()
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #9, !clap !299
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 276)
  br label %catch, !clap !300

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ], !clap !301
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ], !clap !302
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ], !clap !303
  call void @checker_handlePHI_2(i64 279, i64 273, i64 276, i64 261, i64 264)
  call void @checker_handlePHI_2(i64 278, i64 202, i64 276, i64 262, i64 264)
  call void @checker_handlePHI_2(i64 277, i64 207, i64 276, i64 263, i64 264)
  call void @checker_addUses_1(i64 280, i64 279)
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #9, !clap !304
  call void @checker_addUses_1(i64 281, i64 278)
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !tbaa !218, !clap !305
  call void @checker_addUses_1(i64 282, i64 281)
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24, !clap !306
  call void @checker_addUses_1(i64 283, i64 282)
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*, !clap !307
  call void @checker_addUses_1(i64 284, i64 283)
  %vbase.offset32 = load i64, i64* %28, align 8, !clap !308
  call void @checker_addUses_2(i64 285, i64 277, i64 284)
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32, !clap !309
  call void @checker_addUses_1(i64 286, i64 285)
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*, !clap !310
  call void @checker_addUses_1(i64 287, i64 286)
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34, !clap !311

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch(), !clap !312
  br label %try.cont, !clap !313

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os, !clap !314

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup, !clap !315
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad, !clap !316

eh.resume:                                        ; preds = %lpad34
  call void @checker_addUses_1(i64 293, i64 291)
  resume { i8*, i32 } %30, !clap !317

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null, !clap !318
  call void @checker_addUses_1(i64 295, i64 294)
  %32 = extractvalue { i8*, i32 } %31, 0, !clap !319
  call void @checker_addUses_1(i64 296, i64 295)
  call void @__clang_call_terminate(i8* %32) #13, !clap !320
  unreachable, !clap !321
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8, !clap !322
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null, !clap !323
  call void @checker_addUses_1(i64 300, i64 299)
  call void @checker_currentBB(i64 300)
  br i1 %cmp, label %return, label %if.end, !clap !324

if.end:                                           ; preds = %entry
  call void @checker_trackDynInfo(i64 300)
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64, !clap !325
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64, !clap !326
  call void @checker_addUses_2(i64 303, i64 301, i64 302)
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !clap !327
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3, !clap !328
  call void @checker_addUses_1(i64 305, i64 304)
  %0 = load i64, i64* %__width_.i, align 8, !tbaa !329, !clap !330
  call void @checker_addUses_2(i64 306, i64 305, i64 303)
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub, !clap !331
  call void @checker_addUses_2(i64 307, i64 305, i64 303)
  %sub = sub nsw i64 %0, %sub.ptr.sub, !clap !332
  call void @checker_addUses_2(i64 308, i64 306, i64 307)
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0, !clap !333
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64, !clap !334
  call void @checker_addUses_2(i64 310, i64 309, i64 302)
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast, !clap !335
  call void @checker_addUses_1(i64 311, i64 310)
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !clap !336
  call void @checker_addUses_1(i64 312, i64 311)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 312)
  br i1 %cmp7, label %if.then8, label %if.end15, !clap !337

if.then8:                                         ; preds = %if.end
  call void @checker_trackDynInfo(i64 312)
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !338
  call void @checker_addUses_1(i64 314, i64 313)
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !tbaa !218, !clap !339
  call void @checker_addUses_1(i64 315, i64 314)
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12, !clap !340
  call void @checker_addUses_1(i64 316, i64 315)
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8, !clap !341
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6), !clap !342
  call void @checker_addUses_2(i64 318, i64 317, i64 310)
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6, !clap !343
  call void @checker_addUses_1(i64 319, i64 318)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 319)
  br i1 %cmp11, label %if.end15, label %return, !clap !344

if.end15:                                         ; preds = %if.then8, %if.end
  call void @checker_trackDynInfo(i64 312)
  call void @checker_addUses_1(i64 320, i64 308)
  %cmp16 = icmp sgt i64 %__ns.0, 0, !clap !345
  call void @checker_addUses_1(i64 321, i64 320)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 321)
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26, !clap !346

if.end.i.i.i:                                     ; preds = %if.end15
  call void @checker_trackDynInfo(i64 321)
  call void @checker_addUses_1(i64 322, i64 298)
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*, !clap !347
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #9, !clap !348
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #9, !clap !349
  call void @checker_addUses_1(i64 325, i64 308)
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23, !clap !350
  call void @checker_addUses_1(i64 326, i64 325)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 326)
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i, !clap !351

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  call void @checker_trackDynInfo(i64 326)
  call void @checker_addUses_1(i64 327, i64 308)
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16, !clap !352
  call void @checker_addUses_1(i64 328, i64 327)
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16, !clap !353
  call void @checker_addUses_1(i64 329, i64 328)
  call void @checker_beginFunc()
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #10, !clap !354
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 330, i64 298)
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !355
  call void @checker_addUses_2(i64 331, i64 329, i64 330)
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !356, !clap !358
  call void @checker_addUses_1(i64 332, i64 328)
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1, !clap !359
  call void @checker_addUses_1(i64 333, i64 298)
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !clap !360
  call void @checker_addUses_2(i64 334, i64 332, i64 333)
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !361, !clap !362
  call void @checker_addUses_1(i64 335, i64 298)
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !clap !363
  call void @checker_addUses_2(i64 336, i64 308, i64 335)
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !tbaa !364, !clap !365
  call void @checker_addUses_1(i64 337, i64 298)
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !366
  call void @checker_addUses_1(i64 338, i64 337)
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0, !clap !367
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 339)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !368

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @checker_trackDynInfo(i64 326)
  call void @checker_addUses_1(i64 340, i64 308)
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8, !clap !369
  call void @checker_addUses_1(i64 341, i64 340)
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1, !clap !370
  call void @checker_addUses_2(i64 342, i64 341, i64 322)
  store i8 %conv.i.i.i.i, i8* %3, align 8, !tbaa !371, !clap !372
  call void @checker_addUses_1(i64 343, i64 298)
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !373
  call void @checker_addUses_1(i64 344, i64 343)
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0, !clap !374
  call void @checker_addUses_1(i64 345, i64 298)
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !375
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 346)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !376

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !377
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ], !clap !378
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !379
  call void @checker_trackDynInfo(i64 326)
  call void @checker_handlePHI_2(i64 349, i64 329, i64 339, i64 344, i64 346)
  call void @checker_handlePHI_2(i64 348, i64 330, i64 339, i64 345, i64 346)
  call void @checker_handlePHI_2(i64 347, i64 338, i64 339, i64 344, i64 346)
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #9, !clap !380
  call void @checker_addUses_2(i64 351, i64 349, i64 308)
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0, !clap !381
  call void @checker_addUses_1(i64 352, i64 351)
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !371, !clap !382
  call void @checker_addUses_1(i64 353, i64 322)
  %4 = load i8, i8* %3, align 8, !tbaa !371, !clap !383
  call void @checker_addUses_1(i64 354, i64 353)
  %5 = and i8 %4, 1, !clap !384
  call void @checker_addUses_1(i64 355, i64 354)
  %tobool.i.i.i = icmp eq i8 %5, 0, !clap !385
  call void @checker_addUses_1(i64 356, i64 348)
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !clap !386
  call void @checker_addUses_3(i64 357, i64 355, i64 347, i64 356)
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6, !clap !387
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !388
  call void @checker_addUses_1(i64 359, i64 358)
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !tbaa !218, !clap !389
  call void @checker_addUses_1(i64 360, i64 359)
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12, !clap !390
  call void @checker_addUses_1(i64 361, i64 360)
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8, !clap !391
  call void @checker_addUses_3(i64 362, i64 357, i64 308, i64 361)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 362)
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad, !clap !392

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  call void @checker_addUses_2(i64 363, i64 362, i64 308)
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0, !clap !393
  call void @checker_addUses_1(i64 364, i64 322)
  %9 = load i8, i8* %3, align 8, !tbaa !371, !clap !394
  call void @checker_addUses_1(i64 365, i64 364)
  %10 = and i8 %9, 1, !clap !395
  call void @checker_addUses_1(i64 366, i64 365)
  %tobool.i.i.i89 = icmp eq i8 %10, 0, !clap !396
  call void @checker_addUses_1(i64 367, i64 366)
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i, !clap !397

if.then.i.i:                                      ; preds = %invoke.cont
  call void @checker_trackDynInfo(i64 367)
  call void @checker_addUses_1(i64 368, i64 348)
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !356, !clap !398
  call void @checker_addUses_1(i64 369, i64 368)
  call void @checker_beginFunc()
  call void @_ZdlPv(i8* %11) #11, !clap !399
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 370)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, !clap !400

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @checker_trackDynInfo(i64 367)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #9, !clap !401
  call void @checker_addUses_1(i64 372, i64 363)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 372)
  br i1 %cmp21, label %if.end26, label %return, !clap !402

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup, !clap !403
  call void @checker_addUses_1(i64 374, i64 322)
  %13 = load i8, i8* %3, align 8, !tbaa !371, !clap !404
  call void @checker_addUses_1(i64 375, i64 374)
  %14 = and i8 %13, 1, !clap !405
  call void @checker_addUses_1(i64 376, i64 375)
  %tobool.i.i.i92 = icmp eq i8 %14, 0, !clap !406
  call void @checker_addUses_1(i64 377, i64 376)
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94, !clap !407

if.then.i.i94:                                    ; preds = %lpad
  call void @checker_trackDynInfo(i64 377)
  call void @checker_addUses_1(i64 378, i64 348)
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !356, !clap !408
  call void @checker_addUses_1(i64 379, i64 378)
  call void @checker_beginFunc()
  call void @_ZdlPv(i8* %15) #11, !clap !409
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 380)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, !clap !410

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @checker_trackDynInfo(i64 377)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #9, !clap !411
  call void @checker_addUses_1(i64 382, i64 373)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 382)
  resume { i8*, i32 } %12, !clap !412

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  call void @checker_trackDynInfo(i64 321)
  call void @checker_addUses_2(i64 383, i64 301, i64 309)
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4, !clap !413
  call void @checker_addUses_1(i64 384, i64 383)
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !clap !414
  call void @checker_addUses_1(i64 385, i64 384)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 385)
  br i1 %cmp30, label %if.then31, label %if.end38, !clap !415

if.then31:                                        ; preds = %if.end26
  call void @checker_trackDynInfo(i64 385)
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !416
  call void @checker_addUses_1(i64 387, i64 386)
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !tbaa !218, !clap !417
  call void @checker_addUses_1(i64 388, i64 387)
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !clap !418
  call void @checker_addUses_1(i64 389, i64 388)
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !clap !419
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29), !clap !420
  call void @checker_addUses_2(i64 391, i64 390, i64 383)
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29, !clap !421
  call void @checker_addUses_1(i64 392, i64 391)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 392)
  br i1 %cmp34, label %if.end38, label %return, !clap !422

if.end38:                                         ; preds = %if.then31, %if.end26
  call void @checker_trackDynInfo(i64 385)
  call void @checker_addUses_1(i64 393, i64 304)
  store i64 0, i64* %__width_.i, align 8, !tbaa !329, !clap !423
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 394)
  br label %return, !clap !424

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ], !clap !425
  call void @checker_trackDynInfo(i64 300)
  call void @checker_handlePHI_5(i64 395, i64 0, i64 300, i64 0, i64 394, i64 0, i64 372, i64 0, i64 319, i64 0, i64 392)
  call void @checker_addUses_1(i64 396, i64 395)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 396)
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2, !clap !426
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #3

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #3

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #10, !clap !427
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 398, i64 397)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !428
  call void @checker_addUses_1(i64 399, i64 398)
  call void @checker_currentBB(i64 399)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !429

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #10
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !430

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 401, i64 397)
  %1 = ptrtoint i8* %call to i64, !clap !431
  %2 = ptrtoint void ()* %__f to i64, !clap !432
  call void @checker_addUses_1(i64 403, i64 400)
  %3 = bitcast i8* %call4 to i64*, !clap !433
  call void @checker_addUses_2(i64 404, i64 401, i64 403)
  store i64 %1, i64* %3, align 8, !tbaa !434, !clap !436
  call void @checker_addUses_1(i64 405, i64 400)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !437
  call void @checker_addUses_1(i64 406, i64 405)
  %5 = bitcast i8* %4 to i64*, !clap !438
  call void @checker_addUses_2(i64 407, i64 402, i64 406)
  store i64 %2, i64* %5, align 8, !tbaa !439, !clap !441
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !442
  call void @checker_addUses_2(i64 409, i64 408, i64 400)
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !443

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 410, i64 409)
  %cmp = icmp eq i32 %call.i31, 0, !clap !444
  call void @checker_addUses_1(i64 411, i64 410)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !445

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 411)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 412)
  ret void, !clap !446

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !447
  call void @checker_addUses_1(i64 414, i64 413)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !448
  call void @checker_addUses_1(i64 415, i64 413)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !449
  call void @checker_addUses_1(i64 416, i64 397)
  tail call void @_ZdlPv(i8* nonnull %call) #11, !clap !450
  br label %eh.resume, !clap !451

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !452
  br label %delete.notnull.i.i.i.i, !clap !453

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 411)
  call void @checker_addUses_1(i64 420, i64 409)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 420)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #12
          to label %invoke.cont16 unwind label %lpad15, !clap !454

invoke.cont16:                                    ; preds = %if.else
  unreachable, !clap !455

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !456
  br label %delete.notnull.i.i.i.i, !clap !457

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !458
  call void @checker_handlePHI_2(i64 424, i64 422, i64 423, i64 418, i64 419)
  call void @checker_addUses_1(i64 425, i64 424)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !459
  call void @checker_addUses_1(i64 426, i64 424)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !460
  call void @checker_addUses_1(i64 427, i64 400)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !461
  call void @checker_addUses_1(i64 428, i64 427)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !41, !clap !462
  call void @checker_addUses_1(i64 429, i64 427)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !41, !clap !463
  call void @checker_addUses_1(i64 430, i64 428)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !464
  call void @checker_addUses_1(i64 431, i64 430)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !465

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 431)
  call void @checker_addUses_1(i64 432, i64 428)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #9, !clap !466
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 433, i64 428)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !467
  call void @checker_addUses_1(i64 434, i64 433)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #11, !clap !468
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 435)
  br label %ehcleanup18.thread, !clap !469

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 431)
  call void @checker_addUses_1(i64 436, i64 400)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #11, !clap !470
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 437)
  br label %eh.resume, !clap !471

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !472
  call void @checker_addUses_1(i64 439, i64 438)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !473
  call void @checker_addUses_1(i64 440, i64 438)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !474
  call void @checker_addUses_1(i64 441, i64 398)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #9, !clap !475
  call void @checker_addUses_1(i64 442, i64 397)
  tail call void @_ZdlPv(i8* nonnull %call) #11, !clap !476
  br label %eh.resume, !clap !477

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !478
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !479
  call void @checker_handlePHI_3(i64 445, i64 414, i64 417, i64 439, i64 443, i64 425, i64 437)
  call void @checker_handlePHI_3(i64 444, i64 415, i64 417, i64 440, i64 443, i64 426, i64 437)
  call void @checker_addUses_1(i64 446, i64 445)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !480
  call void @checker_addUses_2(i64 447, i64 446, i64 444)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !481
  call void @checker_addUses_1(i64 448, i64 447)
  resume { i8*, i32 } %lpad.val20, !clap !482
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 449)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !483

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !484
  %0 = bitcast i8* %__vp to i8**, !clap !485
  call void @checker_addUses_1(i64 452, i64 451)
  %1 = load i8*, i8** %0, align 8, !tbaa !41, !clap !486
  call void @checker_addUses_1(i64 453, i64 450)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !41, !clap !487
  call void @checker_addUses_1(i64 454, i64 449)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !488
  call void @checker_addUses_1(i64 455, i64 454)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !489, !clap !491
  call void @checker_addUses_2(i64 456, i64 455, i64 452)
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !492

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !493
  call void @checker_addUses_1(i64 458, i64 457)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !494
  call void @checker_addUses_1(i64 459, i64 458)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !41, !clap !495
  call void @checker_addUses_1(i64 460, i64 459)
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !496

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 461, i64 450)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !41, !clap !497
  call void @checker_addUses_1(i64 462, i64 450)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !41, !clap !498
  call void @checker_addUses_1(i64 463, i64 461)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !499
  call void @checker_addUses_1(i64 464, i64 463)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !500

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 464)
  call void @checker_addUses_1(i64 465, i64 461)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #9, !clap !501
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 466, i64 461)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !502
  call void @checker_addUses_1(i64 467, i64 466)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #11, !clap !503
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 468)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !504

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 464)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #11, !clap !505
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 470)
  ret i8* null, !clap !506

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !507
  br label %delete.notnull.i.i.i.i, !clap !508

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !509
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !510
  call void @checker_addUses_1(i64 475, i64 474)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !511

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 475)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !512
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 477)
  br label %delete.notnull.i.i.i.i, !clap !513

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !514
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !515
  call void @checker_handlePHI_2(i64 479, i64 473, i64 477, i64 471, i64 472)
  call void @checker_handlePHI_2(i64 478, i64 476, i64 477, i64 450, i64 472)
  call void @checker_addUses_1(i64 480, i64 478)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !41, !clap !516
  call void @checker_addUses_1(i64 481, i64 478)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !41, !clap !517
  call void @checker_addUses_1(i64 482, i64 480)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !518
  call void @checker_addUses_1(i64 483, i64 482)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !519

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 483)
  call void @checker_addUses_1(i64 484, i64 480)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #9, !clap !520
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 485, i64 480)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !521
  call void @checker_addUses_1(i64 486, i64 485)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #11, !clap !522
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 487)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !523

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 483)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #11, !clap !524
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 489)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !525

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !526
  call void @checker_handlePHI_2(i64 490, i64 473, i64 475, i64 479, i64 489)
  call void @checker_addUses_1(i64 491, i64 490)
  resume { i8*, i32 } %lpad.phi30, !clap !527
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #8

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

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

declare i1 @checker_preCmpXchg_8(i8*, i8, i8, i32, i32)

declare i1 @checker_preCmpXchg_16(i8*, i16, i16, i32, i32)

declare i1 @checker_preCmpXchg_32(i8*, i32, i32, i32, i32)

declare i1 @checker_preCmpXchg_64(i8*, i64, i64, i32, i32)

declare i8 @checker_preRMW_Xchg_8(i8*, i8, i32)

declare i8 @checker_preRMW_Add_8(i8*, i8, i32)

declare i8 @checker_preRMW_Sub_8(i8*, i8, i32)

declare i8 @checker_preRMW_And_8(i8*, i8, i32)

declare i8 @checker_preRMW_Nand_8(i8*, i8, i32)

declare i8 @checker_preRMW_Or_8(i8*, i8, i32)

declare i8 @checker_preRMW_Xor_8(i8*, i8, i32)

declare i8 @checker_preRMW_Max_8(i8*, i8, i32)

declare i8 @checker_preRMW_Min_8(i8*, i8, i32)

declare i8 @checker_preRMW_UMax_8(i8*, i8, i32)

declare i8 @checker_preRMW_UMin_8(i8*, i8, i32)

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

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { builtin }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{i64 1}
!3 = !{i64 2}
!4 = !{i64 3}
!5 = !{i64 4}
!6 = !{i64 5}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{i64 7}
!12 = !{i64 8}
!13 = !{i64 9}
!14 = !{i64 11}
!15 = !{i64 12}
!16 = !{i64 13}
!17 = !{i64 14}
!18 = !{i64 15}
!19 = !{i64 16}
!20 = !{i64 17}
!21 = !{i64 19}
!22 = !{i64 20}
!23 = !{i64 21}
!24 = !{i64 23}
!25 = !{i64 24}
!26 = !{i64 25}
!27 = !{i64 26}
!28 = !{i64 27}
!29 = !{i64 28}
!30 = !{i64 29}
!31 = !{i64 30}
!32 = !{i64 32}
!33 = !{i64 33}
!34 = !{i64 35}
!35 = !{i64 36}
!36 = !{i64 37}
!37 = !{i64 38}
!38 = !{i64 39}
!39 = !{i64 40}
!40 = !{i64 41}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !9, i64 0}
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
!84 = !{i64 83}
!85 = !{i64 84}
!86 = !{i64 85}
!87 = !{i64 86}
!88 = !{i64 87}
!89 = !{i64 88}
!90 = !{i64 89}
!91 = !{i64 90}
!92 = !{i64 91}
!93 = !{!94, !8, i64 0}
!94 = !{!"_ZTSN7checker12ModelCheckerE", !8, i64 0, !95, i64 8, !42, i64 32}
!95 = !{!"_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!96 = !{i64 92}
!97 = !{i64 93}
!98 = !{i64 94}
!99 = !{i64 95}
!100 = !{i64 96}
!101 = !{i64 97}
!102 = !{!103, !42, i64 0}
!103 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !42, i64 0, !42, i64 8, !104, i64 16}
!104 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!105 = !{i64 98}
!106 = !{i64 99}
!107 = !{i64 100}
!108 = !{i64 101}
!109 = !{i64 102}
!110 = !{i64 103}
!111 = !{!103, !42, i64 8}
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
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!129 = distinct !{!129, !"_ZN7checker12ModelChecker10getSchListEv"}
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
!201 = !{i64 190}
!202 = !{i64 191}
!203 = !{i64 192}
!204 = !{i64 193}
!205 = !{i64 194}
!206 = !{i64 195}
!207 = !{i64 196}
!208 = !{i64 197}
!209 = !{i64 198}
!210 = !{!211, !212, i64 0}
!211 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !212, i64 0, !9, i64 8}
!212 = !{!"bool", !9, i64 0}
!213 = !{i8 0, i8 2}
!214 = !{i64 199}
!215 = !{i64 200}
!216 = !{i64 201}
!217 = !{i64 202}
!218 = !{!219, !219, i64 0}
!219 = !{!"vtable pointer", !10, i64 0}
!220 = !{i64 203}
!221 = !{i64 204}
!222 = !{i64 205}
!223 = !{i64 206}
!224 = !{i64 207}
!225 = !{i64 208}
!226 = !{i64 209}
!227 = !{i64 210}
!228 = !{!229, !42, i64 40}
!229 = !{!"_ZTSNSt3__18ios_baseE", !8, i64 8, !230, i64 16, !230, i64 24, !8, i64 32, !8, i64 36, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !230, i64 72, !230, i64 80, !42, i64 88, !230, i64 96, !230, i64 104, !42, i64 112, !230, i64 120, !230, i64 128}
!230 = !{!"long", !9, i64 0}
!231 = !{i64 211}
!232 = !{i64 212}
!233 = !{i64 213}
!234 = !{i64 214}
!235 = !{!229, !8, i64 8}
!236 = !{i64 215}
!237 = !{i64 216}
!238 = !{i64 217}
!239 = !{i64 218}
!240 = !{!241, !8, i64 144}
!241 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !42, i64 136, !8, i64 144}
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
!271 = !{i64 248}
!272 = !{i64 249}
!273 = !{i64 250}
!274 = !{i64 251}
!275 = !{i64 252}
!276 = !{i64 253}
!277 = !{i64 254}
!278 = !{i64 255}
!279 = !{i64 256}
!280 = !{!229, !8, i64 32}
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
!320 = !{i64 296}
!321 = !{i64 297}
!322 = !{i64 298}
!323 = !{i64 299}
!324 = !{i64 300}
!325 = !{i64 301}
!326 = !{i64 302}
!327 = !{i64 303}
!328 = !{i64 304}
!329 = !{!229, !230, i64 24}
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
!347 = !{i64 322}
!348 = !{i64 323}
!349 = !{i64 324}
!350 = !{i64 325}
!351 = !{i64 326}
!352 = !{i64 327}
!353 = !{i64 328}
!354 = !{i64 329}
!355 = !{i64 330}
!356 = !{!357, !42, i64 16}
!357 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !230, i64 0, !230, i64 8, !42, i64 16}
!358 = !{i64 331}
!359 = !{i64 332}
!360 = !{i64 333}
!361 = !{!357, !230, i64 0}
!362 = !{i64 334}
!363 = !{i64 335}
!364 = !{!357, !230, i64 8}
!365 = !{i64 336}
!366 = !{i64 337}
!367 = !{i64 338}
!368 = !{i64 339}
!369 = !{i64 340}
!370 = !{i64 341}
!371 = !{!9, !9, i64 0}
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
!425 = !{i64 395}
!426 = !{i64 396}
!427 = !{i64 397}
!428 = !{i64 398}
!429 = !{i64 399}
!430 = !{i64 400}
!431 = !{i64 401}
!432 = !{i64 402}
!433 = !{i64 403}
!434 = !{!435, !42, i64 0}
!435 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !42, i64 0}
!436 = !{i64 404}
!437 = !{i64 405}
!438 = !{i64 406}
!439 = !{!440, !42, i64 0}
!440 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !42, i64 0}
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
!480 = !{i64 446}
!481 = !{i64 447}
!482 = !{i64 448}
!483 = !{i64 449}
!484 = !{i64 450}
!485 = !{i64 451}
!486 = !{i64 452}
!487 = !{i64 453}
!488 = !{i64 454}
!489 = !{!490, !230, i64 0}
!490 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !230, i64 0}
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
!521 = !{i64 485}
!522 = !{i64 486}
!523 = !{i64 487}
!524 = !{i64 488}
!525 = !{i64 489}
!526 = !{i64 490}
!527 = !{i64 491}
