; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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

@x = global %"struct.std::__1::atomic" zeroinitializer, align 4
@y = global %"struct.std::__1::atomic" zeroinitializer, align 4
@z = global %"struct.std::__1::atomic" zeroinitializer, align 4
@data1 = local_unnamed_addr global i32 0, align 4
@data2 = local_unnamed_addr global i32 0, align 4
@data3 = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"r3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"r4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"r6\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"data: %d, %d, %d\0A\00", align 1
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"Error: signal %d:\0A\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"Generate a model checker: \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@str = private unnamed_addr constant [32 x i8] c"Main thread: creating 2 threads\00"
@str.16 = private unnamed_addr constant [6 x i8] c"Begin\00"
@str.17 = private unnamed_addr constant [24 x i8] c"Main thread is finished\00"

; Function Attrs: ssp uwtable
define void @_Z2r1v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !clap !2
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !3
  call void @checker_addUses_1(i64 3, i64 2)
  %0 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 3, i32 2), !clap !4
  call void @checker_addUses_1(i64 5, i64 3)
  store i32 %0, i32* @data1, align 4, !tbaa !5, !clap !9
  tail call void @checker_thread_end(), !clap !10
  call void @checker_currentBB(i64 7)
  ret void, !clap !11
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z2r2v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !clap !12
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !13
  call void @checker_addUses_1(i64 10, i64 9)
  %0 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 10, i32 2), !clap !14
  call void @checker_addUses_1(i64 12, i64 10)
  store i32 %0, i32* @data2, align 4, !tbaa !5, !clap !15
  tail call void @checker_thread_end(), !clap !16
  call void @checker_currentBB(i64 14)
  ret void, !clap !17
}

; Function Attrs: ssp uwtable
define void @_Z2r3v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !clap !18
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @z, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !19
  call void @checker_addUses_1(i64 17, i64 16)
  %0 = call i32 @checker_preAtomicLoad_int(i8* %myCast, i64 17, i32 2), !clap !20
  call void @checker_addUses_1(i64 19, i64 17)
  store i32 %0, i32* @data3, align 4, !tbaa !5, !clap !21
  tail call void @checker_thread_end(), !clap !22
  call void @checker_currentBB(i64 21)
  ret void, !clap !23
}

; Function Attrs: ssp uwtable
define void @_Z2r4v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !clap !24
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !25
  call void @checker_addUses_1(i64 24, i64 23)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 24, i32 1, i32 2), !clap !26
  tail call void @checker_thread_end(), !clap !27
  call void @checker_currentBB(i64 27)
  ret void, !clap !28
}

; Function Attrs: ssp uwtable
define void @_Z2r5v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)), !clap !29
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !30
  call void @checker_addUses_1(i64 30, i64 29)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 30, i32 1, i32 2), !clap !31
  tail call void @checker_thread_end(), !clap !32
  call void @checker_currentBB(i64 33)
  ret void, !clap !33
}

; Function Attrs: ssp uwtable
define void @_Z2r6v() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)), !clap !34
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @z, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !35
  call void @checker_addUses_1(i64 36, i64 35)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 36, i32 1, i32 2), !clap !36
  tail call void @checker_thread_end(), !clap !37
  call void @checker_currentBB(i64 39)
  ret void, !clap !38
}

; Function Attrs: ssp uwtable
define i32 @_Z9user_mainiPPc(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %t1 = alloca %"class.std::__1::thread", align 8, !clap !39
  %t2 = alloca %"class.std::__1::thread", align 8, !clap !40
  %t3 = alloca %"class.std::__1::thread", align 8, !clap !41
  %t4 = alloca %"class.std::__1::thread", align 8, !clap !42
  %t5 = alloca %"class.std::__1::thread", align 8, !clap !43
  %t6 = alloca %"class.std::__1::thread", align 8, !clap !44
  tail call void @checker_generateExecutor(), !clap !45
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !clap !46
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @z, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !47
  call void @checker_addUses_1(i64 49, i64 48)
  call void @checker_preAtomicStore_int(i8* %myCast, i64 49, i32 0, i32 7), !clap !48
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !49
  call void @checker_addUses_1(i64 52, i64 51)
  call void @checker_preAtomicStore_int(i8* %myCast1, i64 52, i32 0, i32 7), !clap !50
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !51
  call void @checker_addUses_1(i64 55, i64 54)
  call void @checker_preAtomicStore_int(i8* %myCast2, i64 55, i32 0, i32 7), !clap !52
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str, i64 0, i64 0)), !clap !53
  call void @checker_addUses_1(i64 58, i64 40)
  %0 = bitcast %"class.std::__1::thread"* %t1 to i8*, !clap !54
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10, !clap !55
  call void @checker_addUses_1(i64 60, i64 40)
  call void @checker_beginFunc()
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t1, void ()* nonnull @_Z2r1v), !clap !56
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 61, i64 41)
  %1 = bitcast %"class.std::__1::thread"* %t2 to i8*, !clap !57
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #10, !clap !58
  call void @checker_addUses_1(i64 63, i64 41)
  call void @checker_currentBB(i64 63)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t2, void ()* nonnull @_Z2r2v)
          to label %invoke.cont unwind label %lpad, !clap !59

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 64, i64 42)
  %2 = bitcast %"class.std::__1::thread"* %t3 to i8*, !clap !60
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #10, !clap !61
  call void @checker_addUses_1(i64 66, i64 42)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t3, void ()* nonnull @_Z2r3v)
          to label %invoke.cont5 unwind label %lpad4, !clap !62

invoke.cont5:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 67, i64 43)
  %3 = bitcast %"class.std::__1::thread"* %t4 to i8*, !clap !63
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #10, !clap !64
  call void @checker_addUses_1(i64 69, i64 43)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t4, void ()* nonnull @_Z2r4v)
          to label %invoke.cont7 unwind label %lpad6, !clap !65

invoke.cont7:                                     ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 70, i64 44)
  %4 = bitcast %"class.std::__1::thread"* %t5 to i8*, !clap !66
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #10, !clap !67
  call void @checker_addUses_1(i64 72, i64 44)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t5, void ()* nonnull @_Z2r5v)
          to label %invoke.cont9 unwind label %lpad8, !clap !68

invoke.cont9:                                     ; preds = %invoke.cont7
  call void @checker_addUses_1(i64 73, i64 45)
  %5 = bitcast %"class.std::__1::thread"* %t6 to i8*, !clap !69
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #10, !clap !70
  call void @checker_addUses_1(i64 75, i64 45)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t6, void ()* nonnull @_Z2r6v)
          to label %invoke.cont11 unwind label %lpad10, !clap !71

invoke.cont11:                                    ; preds = %invoke.cont9
  call void @checker_addUses_1(i64 76, i64 40)
  %__t_.i103 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t1, i64 0, i32 0, !clap !72
  call void @checker_addUses_1(i64 77, i64 76)
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i103, align 8, !tbaa !73, !clap !75
  call void @checker_addUses_1(i64 78, i64 77)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %6)
          to label %invoke.cont15 unwind label %lpad14, !clap !76

invoke.cont15:                                    ; preds = %invoke.cont11
  call void @checker_addUses_1(i64 79, i64 41)
  %__t_.i102 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t2, i64 0, i32 0, !clap !77
  call void @checker_addUses_1(i64 80, i64 79)
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i102, align 8, !tbaa !73, !clap !78
  call void @checker_addUses_1(i64 81, i64 80)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %7)
          to label %invoke.cont20 unwind label %lpad14, !clap !79

invoke.cont20:                                    ; preds = %invoke.cont15
  call void @checker_addUses_1(i64 82, i64 42)
  %__t_.i101 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t3, i64 0, i32 0, !clap !80
  call void @checker_addUses_1(i64 83, i64 82)
  %8 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i101, align 8, !tbaa !73, !clap !81
  call void @checker_addUses_1(i64 84, i64 83)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %8)
          to label %invoke.cont25 unwind label %lpad14, !clap !82

invoke.cont25:                                    ; preds = %invoke.cont20
  call void @checker_addUses_1(i64 85, i64 43)
  %__t_.i100 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t4, i64 0, i32 0, !clap !83
  call void @checker_addUses_1(i64 86, i64 85)
  %9 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i100, align 8, !tbaa !73, !clap !84
  call void @checker_addUses_1(i64 87, i64 86)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %9)
          to label %invoke.cont30 unwind label %lpad14, !clap !85

invoke.cont30:                                    ; preds = %invoke.cont25
  call void @checker_addUses_1(i64 88, i64 44)
  %__t_.i99 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t5, i64 0, i32 0, !clap !86
  call void @checker_addUses_1(i64 89, i64 88)
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i99, align 8, !tbaa !73, !clap !87
  call void @checker_addUses_1(i64 90, i64 89)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %10)
          to label %invoke.cont35 unwind label %lpad14, !clap !88

invoke.cont35:                                    ; preds = %invoke.cont30
  call void @checker_addUses_1(i64 91, i64 45)
  %__t_.i98 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t6, i64 0, i32 0, !clap !89
  call void @checker_addUses_1(i64 92, i64 91)
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i98, align 8, !tbaa !73, !clap !90
  call void @checker_addUses_1(i64 93, i64 92)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %11)
          to label %invoke.cont40 unwind label %lpad14, !clap !91

invoke.cont40:                                    ; preds = %invoke.cont35
  call void @checker_addUses_1(i64 94, i64 76)
  %12 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i103, align 8, !tbaa !73, !clap !92
  call void @checker_addUses_1(i64 95, i64 94)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %12)
          to label %invoke.cont45 unwind label %lpad14, !clap !93

invoke.cont45:                                    ; preds = %invoke.cont40
  call void @checker_addUses_1(i64 96, i64 79)
  %13 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i102, align 8, !tbaa !73, !clap !94
  call void @checker_addUses_1(i64 97, i64 96)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %13)
          to label %invoke.cont50 unwind label %lpad14, !clap !95

invoke.cont50:                                    ; preds = %invoke.cont45
  call void @checker_addUses_1(i64 98, i64 82)
  %14 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i101, align 8, !tbaa !73, !clap !96
  call void @checker_addUses_1(i64 99, i64 98)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %14)
          to label %invoke.cont55 unwind label %lpad14, !clap !97

invoke.cont55:                                    ; preds = %invoke.cont50
  call void @checker_addUses_1(i64 100, i64 85)
  %15 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i100, align 8, !tbaa !73, !clap !98
  call void @checker_addUses_1(i64 101, i64 100)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %15)
          to label %invoke.cont60 unwind label %lpad14, !clap !99

invoke.cont60:                                    ; preds = %invoke.cont55
  call void @checker_addUses_1(i64 102, i64 88)
  %16 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i99, align 8, !tbaa !73, !clap !100
  call void @checker_addUses_1(i64 103, i64 102)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %16)
          to label %invoke.cont65 unwind label %lpad14, !clap !101

invoke.cont65:                                    ; preds = %invoke.cont60
  call void @checker_addUses_1(i64 104, i64 91)
  %17 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i98, align 8, !tbaa !73, !clap !102
  call void @checker_addUses_1(i64 105, i64 104)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %17)
          to label %invoke.cont70 unwind label %lpad14, !clap !103

invoke.cont70:                                    ; preds = %invoke.cont65
  call void @checker_addUses_1(i64 106, i64 40)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t1)
          to label %invoke.cont71 unwind label %lpad14, !clap !104

invoke.cont71:                                    ; preds = %invoke.cont70
  call void @checker_addUses_1(i64 107, i64 41)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t2)
          to label %invoke.cont72 unwind label %lpad14, !clap !105

invoke.cont72:                                    ; preds = %invoke.cont71
  call void @checker_addUses_1(i64 108, i64 42)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t3)
          to label %invoke.cont73 unwind label %lpad14, !clap !106

invoke.cont73:                                    ; preds = %invoke.cont72
  call void @checker_addUses_1(i64 109, i64 43)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t4)
          to label %invoke.cont74 unwind label %lpad14, !clap !107

invoke.cont74:                                    ; preds = %invoke.cont73
  call void @checker_addUses_1(i64 110, i64 44)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t5)
          to label %invoke.cont75 unwind label %lpad14, !clap !108

invoke.cont75:                                    ; preds = %invoke.cont74
  call void @checker_addUses_1(i64 111, i64 45)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t6)
          to label %invoke.cont76 unwind label %lpad14, !clap !109

invoke.cont76:                                    ; preds = %invoke.cont75
  %puts108 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.17, i64 0, i64 0)), !clap !110
  %18 = load i32, i32* @data1, align 4, !tbaa !5, !clap !111
  %19 = load i32, i32* @data2, align 4, !tbaa !5, !clap !112
  %20 = load i32, i32* @data3, align 4, !tbaa !5, !clap !113
  call void @checker_addUses_3(i64 116, i64 113, i64 114, i64 115)
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %18, i32 %19, i32 %20), !clap !114
  invoke void @checker_thread_end()
          to label %invoke.cont81 unwind label %lpad14, !clap !115

invoke.cont81:                                    ; preds = %invoke.cont76
  invoke void @checker_solver()
          to label %invoke.cont82 unwind label %lpad14, !clap !116

invoke.cont82:                                    ; preds = %invoke.cont81
  call void @checker_addUses_1(i64 119, i64 45)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t6) #10, !clap !117
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #10, !clap !118
  call void @checker_addUses_1(i64 121, i64 44)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t5) #10, !clap !119
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #10, !clap !120
  call void @checker_addUses_1(i64 123, i64 43)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t4) #10, !clap !121
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #10, !clap !122
  call void @checker_addUses_1(i64 125, i64 42)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t3) #10, !clap !123
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #10, !clap !124
  call void @checker_addUses_1(i64 127, i64 41)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #10, !clap !125
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !clap !126
  call void @checker_addUses_1(i64 129, i64 40)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #10, !clap !127
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !clap !128
  ret i32 0, !clap !129

lpad:                                             ; preds = %entry
  %21 = landingpad { i8*, i32 }
          cleanup, !clap !130
  call void @checker_addUses_1(i64 133, i64 132)
  %22 = extractvalue { i8*, i32 } %21, 0, !clap !131
  call void @checker_addUses_1(i64 134, i64 132)
  %23 = extractvalue { i8*, i32 } %21, 1, !clap !132
  br label %ehcleanup90, !clap !133

lpad4:                                            ; preds = %invoke.cont
  %24 = landingpad { i8*, i32 }
          cleanup, !clap !134
  call void @checker_addUses_1(i64 137, i64 136)
  %25 = extractvalue { i8*, i32 } %24, 0, !clap !135
  call void @checker_addUses_1(i64 138, i64 136)
  %26 = extractvalue { i8*, i32 } %24, 1, !clap !136
  br label %ehcleanup88, !clap !137

lpad6:                                            ; preds = %invoke.cont5
  %27 = landingpad { i8*, i32 }
          cleanup, !clap !138
  call void @checker_addUses_1(i64 141, i64 140)
  %28 = extractvalue { i8*, i32 } %27, 0, !clap !139
  call void @checker_addUses_1(i64 142, i64 140)
  %29 = extractvalue { i8*, i32 } %27, 1, !clap !140
  br label %ehcleanup86, !clap !141

lpad8:                                            ; preds = %invoke.cont7
  %30 = landingpad { i8*, i32 }
          cleanup, !clap !142
  call void @checker_addUses_1(i64 145, i64 144)
  %31 = extractvalue { i8*, i32 } %30, 0, !clap !143
  call void @checker_addUses_1(i64 146, i64 144)
  %32 = extractvalue { i8*, i32 } %30, 1, !clap !144
  br label %ehcleanup84, !clap !145

lpad10:                                           ; preds = %invoke.cont9
  %33 = landingpad { i8*, i32 }
          cleanup, !clap !146
  call void @checker_addUses_1(i64 149, i64 148)
  %34 = extractvalue { i8*, i32 } %33, 0, !clap !147
  call void @checker_addUses_1(i64 150, i64 148)
  %35 = extractvalue { i8*, i32 } %33, 1, !clap !148
  br label %ehcleanup, !clap !149

lpad14:                                           ; preds = %invoke.cont81, %invoke.cont76, %invoke.cont75, %invoke.cont74, %invoke.cont73, %invoke.cont72, %invoke.cont71, %invoke.cont70, %invoke.cont65, %invoke.cont60, %invoke.cont55, %invoke.cont50, %invoke.cont45, %invoke.cont40, %invoke.cont35, %invoke.cont30, %invoke.cont25, %invoke.cont20, %invoke.cont15, %invoke.cont11
  %36 = landingpad { i8*, i32 }
          cleanup, !clap !150
  call void @checker_addUses_1(i64 153, i64 152)
  %37 = extractvalue { i8*, i32 } %36, 0, !clap !151
  call void @checker_addUses_1(i64 154, i64 152)
  %38 = extractvalue { i8*, i32 } %36, 1, !clap !152
  call void @checker_addUses_1(i64 155, i64 45)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t6) #10, !clap !153
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #10, !clap !154
  br label %ehcleanup, !clap !155

ehcleanup:                                        ; preds = %lpad14, %lpad10
  %ehselector.slot.0 = phi i32 [ %38, %lpad14 ], [ %35, %lpad10 ], !clap !156
  %exn.slot.0 = phi i8* [ %37, %lpad14 ], [ %34, %lpad10 ], !clap !157
  call void @checker_handlePHI_2(i64 159, i64 153, i64 157, i64 149, i64 151)
  call void @checker_handlePHI_2(i64 158, i64 154, i64 157, i64 150, i64 151)
  call void @checker_addUses_1(i64 160, i64 44)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t5) #10, !clap !158
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #10, !clap !159
  br label %ehcleanup84, !clap !160

ehcleanup84:                                      ; preds = %ehcleanup, %lpad8
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %32, %lpad8 ], !clap !161
  %exn.slot.1 = phi i8* [ %exn.slot.0, %ehcleanup ], [ %31, %lpad8 ], !clap !162
  call void @checker_handlePHI_2(i64 164, i64 159, i64 162, i64 145, i64 147)
  call void @checker_handlePHI_2(i64 163, i64 158, i64 162, i64 146, i64 147)
  call void @checker_addUses_1(i64 165, i64 43)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t4) #10, !clap !163
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #10, !clap !164
  br label %ehcleanup86, !clap !165

ehcleanup86:                                      ; preds = %ehcleanup84, %lpad6
  %ehselector.slot.2 = phi i32 [ %ehselector.slot.1, %ehcleanup84 ], [ %29, %lpad6 ], !clap !166
  %exn.slot.2 = phi i8* [ %exn.slot.1, %ehcleanup84 ], [ %28, %lpad6 ], !clap !167
  call void @checker_handlePHI_2(i64 169, i64 164, i64 167, i64 141, i64 143)
  call void @checker_handlePHI_2(i64 168, i64 163, i64 167, i64 142, i64 143)
  call void @checker_addUses_1(i64 170, i64 42)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t3) #10, !clap !168
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #10, !clap !169
  br label %ehcleanup88, !clap !170

ehcleanup88:                                      ; preds = %ehcleanup86, %lpad4
  %ehselector.slot.3 = phi i32 [ %ehselector.slot.2, %ehcleanup86 ], [ %26, %lpad4 ], !clap !171
  %exn.slot.3 = phi i8* [ %exn.slot.2, %ehcleanup86 ], [ %25, %lpad4 ], !clap !172
  call void @checker_handlePHI_2(i64 174, i64 169, i64 172, i64 137, i64 139)
  call void @checker_handlePHI_2(i64 173, i64 168, i64 172, i64 138, i64 139)
  call void @checker_addUses_1(i64 175, i64 41)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #10, !clap !173
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !clap !174
  br label %ehcleanup90, !clap !175

ehcleanup90:                                      ; preds = %ehcleanup88, %lpad
  %ehselector.slot.4 = phi i32 [ %ehselector.slot.3, %ehcleanup88 ], [ %23, %lpad ], !clap !176
  %exn.slot.4 = phi i8* [ %exn.slot.3, %ehcleanup88 ], [ %22, %lpad ], !clap !177
  call void @checker_handlePHI_2(i64 179, i64 174, i64 177, i64 133, i64 135)
  call void @checker_handlePHI_2(i64 178, i64 173, i64 177, i64 134, i64 135)
  call void @checker_addUses_1(i64 180, i64 40)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #10, !clap !178
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !clap !179
  call void @checker_addUses_1(i64 182, i64 179)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.4, 0, !clap !180
  call void @checker_addUses_2(i64 183, i64 182, i64 178)
  %lpad.val92 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.4, 1, !clap !181
  call void @checker_addUses_1(i64 184, i64 183)
  resume { i8*, i32 } %lpad.val92, !clap !182
}

declare void @checker_generateExecutor() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: noreturn ssp uwtable
define void @_Z7handleri(i32 %sig) #4 {
entry:
  %array = alloca [10 x i8*], align 16, !clap !183
  call void @checker_addUses_1(i64 186, i64 185)
  %0 = bitcast [10 x i8*]* %array to i8*, !clap !184
  call void @llvm.lifetime.start(i64 80, i8* nonnull %0) #10, !clap !185
  call void @checker_addUses_1(i64 188, i64 185)
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %array, i64 0, i64 0, !clap !186
  call void @checker_addUses_1(i64 189, i64 188)
  call void @checker_beginFunc()
  %call = call i32 @backtrace(i8** nonnull %arraydecay, i32 10), !clap !187
  call void @checker_endFunc()
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !73, !clap !188
  call void @checker_addUses_1(i64 191, i64 190)
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %sig), !clap !189
  call void @checker_addUses_2(i64 192, i64 188, i64 189)
  call void @checker_beginFunc()
  call void @backtrace_symbols_fd(i8** nonnull %arraydecay, i32 %call, i32 2), !clap !190
  call void @checker_endFunc()
  call void @checker_beginFunc()
  call void @exit(i32 1) #11, !clap !191
  call void @checker_endFunc()
  call void @checker_currentBB(i64 194)
  unreachable, !clap !192
}

declare i32 @backtrace(i8**, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

declare void @backtrace_symbols_fd(i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: norecurse ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !193
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @str.16, i64 0, i64 0)), !clap !194
  %call1 = tail call void (i32)* @signal(i32 11, void (i32)* nonnull @_Z7handleri), !clap !195
  %call2 = tail call i8* @_Znwm(i64 40) #12, !clap !196
  %schList.i.i = getelementptr inbounds i8, i8* %call2, i64 8, !clap !197
  tail call void @llvm.memset.p0i8.i64(i8* %schList.i.i, i8 0, i64 24, i32 8, i1 false) #10, !clap !198
  %test.i.i = bitcast i8* %call2 to i32*, !clap !199
  store i32 3, i32* %test.i.i, align 8, !tbaa !200, !clap !203
  %call1.i7.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i64 26)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !204

invoke.cont.i.i:                                  ; preds = %entry
  %call3.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i7.i.i, i8* nonnull %call2)
          to label %invoke.cont2.i.i unwind label %lpad.i.i, !clap !205

invoke.cont2.i.i:                                 ; preds = %invoke.cont.i.i
  %call1.i9.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call3.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1)
          to label %invoke.cont unwind label %lpad.i.i, !clap !206

lpad.i.i:                                         ; preds = %invoke.cont2.i.i, %invoke.cont.i.i, %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !clap !207
  %__begin_.i.i.i.i.i = bitcast i8* %schList.i.i to %"class.checker::Schedule"***, !clap !208
  %1 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.i, align 8, !tbaa !209, !clap !212
  %cmp.i.i.i.i.i = icmp eq %"class.checker::Schedule"** %1, null, !clap !213
  br i1 %cmp.i.i.i.i.i, label %lpad.body, label %if.then.i.i.i.i.i, !clap !214

if.then.i.i.i.i.i:                                ; preds = %lpad.i.i
  %2 = ptrtoint %"class.checker::Schedule"** %1 to i64, !clap !215
  %__end_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call2, i64 16, !clap !216
  %3 = bitcast i8* %__end_.i.i.i.i.i.i.i to i64*, !clap !217
  store i64 %2, i64* %3, align 8, !tbaa !218, !clap !219
  %.cast.i.i.i.i.i = bitcast %"class.checker::Schedule"** %1 to i8*, !clap !220
  tail call void @_ZdlPv(i8* %.cast.i.i.i.i.i) #13, !clap !221
  br label %lpad.body, !clap !222

invoke.cont:                                      ; preds = %invoke.cont2.i.i
  store i8* %call2, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !73, !clap !223
  %call3 = tail call i32 @_Z9user_mainiPPc(i32 undef, i8** undef), !clap !224
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !225
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !226
  %5 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !227
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !228
  %7 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !229
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !230
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !clap !231
  %8 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !73, !clap !232
  %schList.i21 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, !clap !233
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !234, !clap !237
  %__end_.i16.i.i.i22 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, i32 0, i32 1, !clap !238
  %9 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i22 to i64*, !clap !239
  %10 = load i64, i64* %9, align 8, !tbaa !218, !noalias !234, !clap !240
  %11 = bitcast %"class.std::__1::vector"* %schList.i21 to i64*, !clap !241
  %12 = load i64, i64* %11, align 8, !tbaa !209, !noalias !234, !clap !242
  %sub.ptr.sub.i.i.i.i23 = sub i64 %10, %12, !clap !243
  %sub.ptr.div.i.i.i.i24 = ashr exact i64 %sub.ptr.sub.i.i.i.i23, 3, !clap !244
  %cmp.i.i.i25 = icmp eq i64 %sub.ptr.div.i.i.i.i24, 0, !clap !245
  br i1 %cmp.i.i.i25, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !246

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !clap !247

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !248

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !clap !249
  br label %while.end, !clap !250

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i27 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i24, %if.then.i.i.i.preheader ], !clap !251
  %sub.ptr.sub.i.i.i.i26 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i23, %if.then.i.i.i.preheader ], !clap !252
  %13 = phi i64 [ %25, %while.body ], [ %12, %if.then.i.i.i.preheader ], !clap !253
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i27, 2305843009213693951, !clap !254
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !255

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %14 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !256
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %14) #11
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !257

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !258

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i26) #12, !clap !259
  %15 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !260
  store i8* %call.i.i.i.i15.i.i.i, i8** %6, align 8, !tbaa !218, !alias.scope !234, !clap !261
  store i8* %call.i.i.i.i15.i.i.i, i8** %7, align 8, !tbaa !209, !alias.scope !234, !clap !262
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div.i.i.i.i27, !clap !263
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !73, !alias.scope !234, !clap !264
  %cmp.i.i.i.i.i9 = icmp sgt i64 %sub.ptr.sub.i.i.i.i26, 0, !clap !265
  %16 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !266
  br i1 %cmp.i.i.i.i.i9, label %if.then.i.i.i.i.i10, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !267

if.then.i.i.i.i.i10:                              ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i26, 3, !clap !268
  %17 = inttoptr i64 %13 to i8*, !clap !269
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %17, i64 %sub.ptr.sub.i.i.i.i26, i32 8, i1 false) #10, !clap !270
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div6.i.i.i.i.i, !clap !271
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !73, !alias.scope !234, !clap !272
  %18 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !273
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !274

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !275
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !276
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !209, !alias.scope !234, !clap !277
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !278
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !279

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %19 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !280
  %20 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !281
  store i64 %20, i64* %5, align 8, !tbaa !218, !alias.scope !234, !clap !282
  call void @_ZdlPv(i8* %19) #13, !clap !283
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !284

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !285

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i10, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %18, %if.then.i.i.i.i.i10 ], [ %16, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !286
  %tobool16 = icmp eq i64 %.ph, %16, !clap !287
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #13, !clap !288
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !clap !289
  br i1 %tobool16, label %while.end.loopexit, label %while.body, !clap !290

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call5 = tail call i32 @_Z9user_mainiPPc(i32 undef, i8** undef), !clap !291
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !clap !292
  %21 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !73, !clap !293
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, !clap !294
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !234, !clap !295
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, i32 0, i32 1, !clap !296
  %22 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !297
  %23 = load i64, i64* %22, align 8, !tbaa !218, !noalias !234, !clap !298
  %24 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !299
  %25 = load i64, i64* %24, align 8, !tbaa !209, !noalias !234, !clap !300
  %sub.ptr.sub.i.i.i.i = sub i64 %23, %25, !clap !301
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !302
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !303
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !304

lpad.body:                                        ; preds = %lpad.i.i, %if.then.i.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call2) #13, !clap !305
  resume { i8*, i32 } %0, !clap !306

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !clap !307

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !clap !308
}

declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #1

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #9 {
  call void @checker_beginFunc()
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #10, !clap !309
  call void @checker_endFunc()
  call void @checker_beginFunc()
  tail call void @_ZSt9terminatev() #14, !clap !310
  call void @checker_endFunc()
  call void @checker_currentBB(i64 303)
  unreachable, !clap !311
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8, !clap !312
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8, !clap !313
  call void @checker_addUses_1(i64 306, i64 305)
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0, !clap !314
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #10, !clap !315
  call void @checker_addUses_1(i64 308, i64 305)
  call void @checker_currentBB(i64 308)
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad, !clap !316

invoke.cont:                                      ; preds = %entry
  call void @checker_addUses_1(i64 309, i64 306)
  %1 = load i8, i8* %0, align 8, !tbaa !317, !range !320, !clap !321
  call void @checker_addUses_1(i64 310, i64 309)
  %tobool.i = icmp eq i8 %1, 0, !clap !322
  call void @checker_addUses_1(i64 311, i64 310)
  br i1 %tobool.i, label %if.end28, label %if.then, !clap !323

if.then:                                          ; preds = %invoke.cont
  call void @checker_trackDynInfo(i64 311)
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !324
  call void @checker_addUses_1(i64 313, i64 312)
  %vtable.i.i = load i8*, i8** %2, align 8, !tbaa !325, !clap !327
  call void @checker_addUses_1(i64 314, i64 313)
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !clap !328
  call void @checker_addUses_1(i64 315, i64 314)
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !clap !329
  call void @checker_addUses_1(i64 316, i64 315)
  %vbase.offset.i.i = load i64, i64* %3, align 8, !clap !330
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !331
  call void @checker_addUses_2(i64 318, i64 317, i64 316)
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i, !clap !332
  call void @checker_addUses_1(i64 319, i64 318)
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40, !clap !333
  call void @checker_addUses_1(i64 320, i64 319)
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**, !clap !334
  call void @checker_addUses_1(i64 321, i64 320)
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !tbaa !335, !clap !338
  call void @checker_addUses_1(i64 322, i64 318)
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*, !clap !339
  call void @checker_addUses_1(i64 323, i64 318)
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8, !clap !340
  call void @checker_addUses_1(i64 324, i64 323)
  %8 = bitcast i8* %__fmtflags_.i to i32*, !clap !341
  call void @checker_addUses_1(i64 325, i64 324)
  %9 = load i32, i32* %8, align 8, !tbaa !342, !clap !343
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len, !clap !344
  call void @checker_addUses_1(i64 327, i64 318)
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144, !clap !345
  call void @checker_addUses_1(i64 328, i64 327)
  %10 = bitcast i8* %__fill_.i to i32*, !clap !346
  call void @checker_addUses_1(i64 329, i64 328)
  %11 = load i32, i32* %10, align 8, !tbaa !347, !clap !349
  call void @checker_addUses_1(i64 330, i64 329)
  %cmp.i.i = icmp eq i32 %11, -1, !clap !350
  call void @checker_addUses_1(i64 331, i64 330)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 331)
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16, !clap !351

if.then.i:                                        ; preds = %if.then
  call void @checker_trackDynInfo(i64 331)
  call void @checker_addUses_1(i64 332, i64 304)
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*, !clap !352
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #10, !clap !353
  call void @checker_addUses_2(i64 334, i64 304, i64 322)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 334)
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3, !clap !354

.noexc:                                           ; preds = %if.then.i
  call void @checker_addUses_1(i64 335, i64 304)
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !355

invoke.cont.i.i:                                  ; preds = %.noexc
  call void @checker_addUses_1(i64 336, i64 335)
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !clap !356
  call void @checker_addUses_1(i64 337, i64 335)
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***, !clap !357
  call void @checker_addUses_1(i64 338, i64 337)
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !tbaa !325, !clap !358
  call void @checker_addUses_1(i64 339, i64 338)
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !clap !359
  call void @checker_addUses_1(i64 340, i64 339)
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !clap !360
  call void @checker_addUses_2(i64 341, i64 336, i64 340)
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !clap !361

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null, !clap !362
  call void @checker_addUses_1(i64 343, i64 304)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10, !clap !363
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10, !clap !364
  br label %ehcleanup, !clap !365

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @checker_addUses_1(i64 346, i64 304)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10, !clap !366
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10, !clap !367
  call void @checker_addUses_1(i64 348, i64 341)
  %conv.i = sext i8 %call.i6.i.i to i32, !clap !368
  call void @checker_addUses_2(i64 349, i64 348, i64 328)
  store i32 %conv.i, i32* %10, align 8, !tbaa !347, !clap !369
  br label %invoke.cont16, !clap !370

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ], !clap !371
  call void @checker_trackDynInfo(i64 331)
  call void @checker_handlePHI_2(i64 351, i64 348, i64 350, i64 329, i64 331)
  call void @checker_addUses_1(i64 352, i64 351)
  %conv6.i = trunc i32 %17 to i8, !clap !372
  call void @checker_addUses_1(i64 353, i64 325)
  %and = and i32 %9, 176, !clap !373
  call void @checker_addUses_1(i64 354, i64 353)
  %cmp = icmp eq i32 %and, 32, !clap !374
  call void @checker_addUses_2(i64 355, i64 354, i64 326)
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str, !clap !375
  call void @checker_addUses_5(i64 356, i64 321, i64 355, i64 326, i64 322, i64 352)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 356)
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3, !clap !376

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @checker_addUses_1(i64 357, i64 356)
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null, !clap !377
  call void @checker_addUses_1(i64 358, i64 357)
  br i1 %cmp.i, label %if.then22, label %if.end28, !clap !378

if.then22:                                        ; preds = %invoke.cont18
  call void @checker_trackDynInfo(i64 358)
  call void @checker_addUses_1(i64 359, i64 312)
  %vtable23 = load i8*, i8** %2, align 8, !tbaa !325, !clap !379
  call void @checker_addUses_1(i64 360, i64 359)
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24, !clap !380
  call void @checker_addUses_1(i64 361, i64 360)
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*, !clap !381
  call void @checker_addUses_1(i64 362, i64 361)
  %vbase.offset25 = load i64, i64* %18, align 8, !clap !382
  call void @checker_addUses_2(i64 363, i64 317, i64 362)
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25, !clap !383
  call void @checker_addUses_1(i64 364, i64 363)
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*, !clap !384
  call void @checker_addUses_1(i64 365, i64 363)
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32, !clap !385
  call void @checker_addUses_1(i64 366, i64 365)
  %20 = bitcast i8* %__rdstate_.i.i to i32*, !clap !386
  call void @checker_addUses_1(i64 367, i64 366)
  %21 = load i32, i32* %20, align 8, !tbaa !387, !clap !388
  call void @checker_addUses_1(i64 368, i64 367)
  %or.i.i = or i32 %21, 5, !clap !389
  call void @checker_addUses_2(i64 369, i64 364, i64 368)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 369)
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1, !clap !390

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null, !clap !391
  call void @checker_addUses_1(i64 371, i64 370)
  %23 = extractvalue { i8*, i32 } %22, 0, !clap !392
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !393
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !394
  br label %catch, !clap !395

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null, !clap !396
  br label %ehcleanup, !clap !397

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null, !clap !398
  br label %ehcleanup, !clap !399

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @checker_trackDynInfo(i64 311)
  call void @checker_addUses_1(i64 379, i64 305)
  call void @checker_beginFunc()
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10, !clap !400
  call void @checker_endFunc()
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10, !clap !401
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 381)
  br label %try.cont, !clap !402

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ], !clap !403
  call void @checker_trackDynInfo(i64 331)
  call void @checker_handlePHI_3(i64 382, i64 375, i64 376, i64 377, i64 378, i64 342, i64 345)
  call void @checker_addUses_1(i64 383, i64 382)
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0, !clap !404
  call void @checker_addUses_1(i64 384, i64 305)
  call void @checker_beginFunc()
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10, !clap !405
  call void @checker_endFunc()
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10, !clap !406
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 386)
  br label %catch, !clap !407

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ], !clap !408
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ], !clap !409
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ], !clap !410
  call void @checker_handlePHI_2(i64 389, i64 383, i64 386, i64 371, i64 374)
  call void @checker_handlePHI_2(i64 388, i64 312, i64 386, i64 372, i64 374)
  call void @checker_handlePHI_2(i64 387, i64 317, i64 386, i64 373, i64 374)
  call void @checker_addUses_1(i64 390, i64 389)
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #10, !clap !411
  call void @checker_addUses_1(i64 391, i64 388)
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !tbaa !325, !clap !412
  call void @checker_addUses_1(i64 392, i64 391)
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24, !clap !413
  call void @checker_addUses_1(i64 393, i64 392)
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*, !clap !414
  call void @checker_addUses_1(i64 394, i64 393)
  %vbase.offset32 = load i64, i64* %28, align 8, !clap !415
  call void @checker_addUses_2(i64 395, i64 387, i64 394)
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32, !clap !416
  call void @checker_addUses_1(i64 396, i64 395)
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*, !clap !417
  call void @checker_addUses_1(i64 397, i64 396)
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34, !clap !418

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch(), !clap !419
  br label %try.cont, !clap !420

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os, !clap !421

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup, !clap !422
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad, !clap !423

eh.resume:                                        ; preds = %lpad34
  call void @checker_addUses_1(i64 403, i64 401)
  resume { i8*, i32 } %30, !clap !424

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null, !clap !425
  call void @checker_addUses_1(i64 405, i64 404)
  %32 = extractvalue { i8*, i32 } %31, 0, !clap !426
  call void @checker_addUses_1(i64 406, i64 405)
  call void @__clang_call_terminate(i8* %32) #14, !clap !427
  unreachable, !clap !428
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8, !clap !429
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null, !clap !430
  call void @checker_addUses_1(i64 410, i64 409)
  call void @checker_currentBB(i64 410)
  br i1 %cmp, label %return, label %if.end, !clap !431

if.end:                                           ; preds = %entry
  call void @checker_trackDynInfo(i64 410)
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64, !clap !432
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64, !clap !433
  call void @checker_addUses_2(i64 413, i64 411, i64 412)
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !clap !434
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3, !clap !435
  call void @checker_addUses_1(i64 415, i64 414)
  %0 = load i64, i64* %__width_.i, align 8, !tbaa !436, !clap !437
  call void @checker_addUses_2(i64 416, i64 415, i64 413)
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub, !clap !438
  call void @checker_addUses_2(i64 417, i64 415, i64 413)
  %sub = sub nsw i64 %0, %sub.ptr.sub, !clap !439
  call void @checker_addUses_2(i64 418, i64 416, i64 417)
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0, !clap !440
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64, !clap !441
  call void @checker_addUses_2(i64 420, i64 419, i64 412)
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast, !clap !442
  call void @checker_addUses_1(i64 421, i64 420)
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !clap !443
  call void @checker_addUses_1(i64 422, i64 421)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 422)
  br i1 %cmp7, label %if.then8, label %if.end15, !clap !444

if.then8:                                         ; preds = %if.end
  call void @checker_trackDynInfo(i64 422)
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !445
  call void @checker_addUses_1(i64 424, i64 423)
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !tbaa !325, !clap !446
  call void @checker_addUses_1(i64 425, i64 424)
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12, !clap !447
  call void @checker_addUses_1(i64 426, i64 425)
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8, !clap !448
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6), !clap !449
  call void @checker_addUses_2(i64 428, i64 427, i64 420)
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6, !clap !450
  call void @checker_addUses_1(i64 429, i64 428)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 429)
  br i1 %cmp11, label %if.end15, label %return, !clap !451

if.end15:                                         ; preds = %if.then8, %if.end
  call void @checker_trackDynInfo(i64 422)
  call void @checker_addUses_1(i64 430, i64 418)
  %cmp16 = icmp sgt i64 %__ns.0, 0, !clap !452
  call void @checker_addUses_1(i64 431, i64 430)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 431)
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26, !clap !453

if.end.i.i.i:                                     ; preds = %if.end15
  call void @checker_trackDynInfo(i64 431)
  call void @checker_addUses_1(i64 432, i64 408)
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*, !clap !454
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #10, !clap !455
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #10, !clap !456
  call void @checker_addUses_1(i64 435, i64 418)
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23, !clap !457
  call void @checker_addUses_1(i64 436, i64 435)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 436)
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i, !clap !458

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  call void @checker_trackDynInfo(i64 436)
  call void @checker_addUses_1(i64 437, i64 418)
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16, !clap !459
  call void @checker_addUses_1(i64 438, i64 437)
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16, !clap !460
  call void @checker_addUses_1(i64 439, i64 438)
  call void @checker_beginFunc()
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #12, !clap !461
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 440, i64 408)
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !462
  call void @checker_addUses_2(i64 441, i64 439, i64 440)
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !463, !clap !465
  call void @checker_addUses_1(i64 442, i64 438)
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1, !clap !466
  call void @checker_addUses_1(i64 443, i64 408)
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !clap !467
  call void @checker_addUses_2(i64 444, i64 442, i64 443)
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !468, !clap !469
  call void @checker_addUses_1(i64 445, i64 408)
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !clap !470
  call void @checker_addUses_2(i64 446, i64 418, i64 445)
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !tbaa !471, !clap !472
  call void @checker_addUses_1(i64 447, i64 408)
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !473
  call void @checker_addUses_1(i64 448, i64 447)
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0, !clap !474
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 449)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !475

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @checker_trackDynInfo(i64 436)
  call void @checker_addUses_1(i64 450, i64 418)
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8, !clap !476
  call void @checker_addUses_1(i64 451, i64 450)
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1, !clap !477
  call void @checker_addUses_2(i64 452, i64 451, i64 432)
  store i8 %conv.i.i.i.i, i8* %3, align 8, !tbaa !478, !clap !479
  call void @checker_addUses_1(i64 453, i64 408)
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !480
  call void @checker_addUses_1(i64 454, i64 453)
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0, !clap !481
  call void @checker_addUses_1(i64 455, i64 408)
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !482
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 456)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !483

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !484
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ], !clap !485
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !486
  call void @checker_trackDynInfo(i64 436)
  call void @checker_handlePHI_2(i64 459, i64 439, i64 449, i64 454, i64 456)
  call void @checker_handlePHI_2(i64 458, i64 440, i64 449, i64 455, i64 456)
  call void @checker_handlePHI_2(i64 457, i64 448, i64 449, i64 454, i64 456)
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #10, !clap !487
  call void @checker_addUses_2(i64 461, i64 459, i64 418)
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0, !clap !488
  call void @checker_addUses_1(i64 462, i64 461)
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !478, !clap !489
  call void @checker_addUses_1(i64 463, i64 432)
  %4 = load i8, i8* %3, align 8, !tbaa !478, !clap !490
  call void @checker_addUses_1(i64 464, i64 463)
  %5 = and i8 %4, 1, !clap !491
  call void @checker_addUses_1(i64 465, i64 464)
  %tobool.i.i.i = icmp eq i8 %5, 0, !clap !492
  call void @checker_addUses_1(i64 466, i64 458)
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !clap !493
  call void @checker_addUses_3(i64 467, i64 465, i64 457, i64 466)
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6, !clap !494
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !495
  call void @checker_addUses_1(i64 469, i64 468)
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !tbaa !325, !clap !496
  call void @checker_addUses_1(i64 470, i64 469)
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12, !clap !497
  call void @checker_addUses_1(i64 471, i64 470)
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8, !clap !498
  call void @checker_addUses_3(i64 472, i64 467, i64 418, i64 471)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 472)
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad, !clap !499

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  call void @checker_addUses_2(i64 473, i64 472, i64 418)
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0, !clap !500
  call void @checker_addUses_1(i64 474, i64 432)
  %9 = load i8, i8* %3, align 8, !tbaa !478, !clap !501
  call void @checker_addUses_1(i64 475, i64 474)
  %10 = and i8 %9, 1, !clap !502
  call void @checker_addUses_1(i64 476, i64 475)
  %tobool.i.i.i89 = icmp eq i8 %10, 0, !clap !503
  call void @checker_addUses_1(i64 477, i64 476)
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i, !clap !504

if.then.i.i:                                      ; preds = %invoke.cont
  call void @checker_trackDynInfo(i64 477)
  call void @checker_addUses_1(i64 478, i64 458)
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !463, !clap !505
  call void @checker_addUses_1(i64 479, i64 478)
  call void @checker_beginFunc()
  call void @_ZdlPv(i8* %11) #13, !clap !506
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 480)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, !clap !507

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @checker_trackDynInfo(i64 477)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10, !clap !508
  call void @checker_addUses_1(i64 482, i64 473)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 482)
  br i1 %cmp21, label %if.end26, label %return, !clap !509

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup, !clap !510
  call void @checker_addUses_1(i64 484, i64 432)
  %13 = load i8, i8* %3, align 8, !tbaa !478, !clap !511
  call void @checker_addUses_1(i64 485, i64 484)
  %14 = and i8 %13, 1, !clap !512
  call void @checker_addUses_1(i64 486, i64 485)
  %tobool.i.i.i92 = icmp eq i8 %14, 0, !clap !513
  call void @checker_addUses_1(i64 487, i64 486)
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94, !clap !514

if.then.i.i94:                                    ; preds = %lpad
  call void @checker_trackDynInfo(i64 487)
  call void @checker_addUses_1(i64 488, i64 458)
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !463, !clap !515
  call void @checker_addUses_1(i64 489, i64 488)
  call void @checker_beginFunc()
  call void @_ZdlPv(i8* %15) #13, !clap !516
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 490)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, !clap !517

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @checker_trackDynInfo(i64 487)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10, !clap !518
  call void @checker_addUses_1(i64 492, i64 483)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 492)
  resume { i8*, i32 } %12, !clap !519

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  call void @checker_trackDynInfo(i64 431)
  call void @checker_addUses_2(i64 493, i64 411, i64 419)
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4, !clap !520
  call void @checker_addUses_1(i64 494, i64 493)
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !clap !521
  call void @checker_addUses_1(i64 495, i64 494)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 495)
  br i1 %cmp30, label %if.then31, label %if.end38, !clap !522

if.then31:                                        ; preds = %if.end26
  call void @checker_trackDynInfo(i64 495)
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !523
  call void @checker_addUses_1(i64 497, i64 496)
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !tbaa !325, !clap !524
  call void @checker_addUses_1(i64 498, i64 497)
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !clap !525
  call void @checker_addUses_1(i64 499, i64 498)
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !clap !526
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29), !clap !527
  call void @checker_addUses_2(i64 501, i64 500, i64 493)
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29, !clap !528
  call void @checker_addUses_1(i64 502, i64 501)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 502)
  br i1 %cmp34, label %if.end38, label %return, !clap !529

if.end38:                                         ; preds = %if.then31, %if.end26
  call void @checker_trackDynInfo(i64 495)
  call void @checker_addUses_1(i64 503, i64 414)
  store i64 0, i64* %__width_.i, align 8, !tbaa !436, !clap !530
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 504)
  br label %return, !clap !531

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ], !clap !532
  call void @checker_trackDynInfo(i64 410)
  call void @checker_handlePHI_5(i64 505, i64 0, i64 410, i64 0, i64 504, i64 0, i64 482, i64 0, i64 429, i64 0, i64 502)
  call void @checker_addUses_1(i64 506, i64 505)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 506)
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2, !clap !533
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #2

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #2

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_beginFunc()
  %call = tail call i8* @_Znwm(i64 8) #12, !clap !534
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 508, i64 507)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !535
  call void @checker_addUses_1(i64 509, i64 508)
  call void @checker_currentBB(i64 509)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !536

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #12
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !537

invoke.cont3:                                     ; preds = %invoke.cont
  call void @checker_addUses_1(i64 511, i64 507)
  %1 = ptrtoint i8* %call to i64, !clap !538
  %2 = ptrtoint void ()* %__f to i64, !clap !539
  call void @checker_addUses_1(i64 513, i64 510)
  %3 = bitcast i8* %call4 to i64*, !clap !540
  call void @checker_addUses_2(i64 514, i64 511, i64 513)
  store i64 %1, i64* %3, align 8, !tbaa !541, !clap !543
  call void @checker_addUses_1(i64 515, i64 510)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !544
  call void @checker_addUses_1(i64 516, i64 515)
  %5 = bitcast i8* %4 to i64*, !clap !545
  call void @checker_addUses_2(i64 517, i64 512, i64 516)
  store i64 %2, i64* %5, align 8, !tbaa !546, !clap !548
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !549
  call void @checker_addUses_2(i64 519, i64 518, i64 510)
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !550

invoke.cont12:                                    ; preds = %invoke.cont3
  call void @checker_addUses_1(i64 520, i64 519)
  %cmp = icmp eq i32 %call.i31, 0, !clap !551
  call void @checker_addUses_1(i64 521, i64 520)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !552

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 521)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 522)
  ret void, !clap !553

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !554
  call void @checker_addUses_1(i64 524, i64 523)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !555
  call void @checker_addUses_1(i64 525, i64 523)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !556
  call void @checker_addUses_1(i64 526, i64 507)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !557
  br label %eh.resume, !clap !558

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !559
  br label %delete.notnull.i.i.i.i, !clap !560

if.else:                                          ; preds = %invoke.cont12
  call void @checker_trackDynInfo(i64 521)
  call void @checker_addUses_1(i64 530, i64 519)
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 530)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0)) #11
          to label %invoke.cont16 unwind label %lpad15, !clap !561

invoke.cont16:                                    ; preds = %if.else
  unreachable, !clap !562

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !563
  br label %delete.notnull.i.i.i.i, !clap !564

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !565
  call void @checker_handlePHI_2(i64 534, i64 532, i64 533, i64 528, i64 529)
  call void @checker_addUses_1(i64 535, i64 534)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !566
  call void @checker_addUses_1(i64 536, i64 534)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !567
  call void @checker_addUses_1(i64 537, i64 510)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !568
  call void @checker_addUses_1(i64 538, i64 537)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !73, !clap !569
  call void @checker_addUses_1(i64 539, i64 537)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !73, !clap !570
  call void @checker_addUses_1(i64 540, i64 538)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !571
  call void @checker_addUses_1(i64 541, i64 540)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !572

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 541)
  call void @checker_addUses_1(i64 542, i64 538)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10, !clap !573
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 543, i64 538)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !574
  call void @checker_addUses_1(i64 544, i64 543)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %14) #13, !clap !575
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 545)
  br label %ehcleanup18.thread, !clap !576

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 541)
  call void @checker_addUses_1(i64 546, i64 510)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %call4) #13, !clap !577
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 547)
  br label %eh.resume, !clap !578

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !579
  call void @checker_addUses_1(i64 549, i64 548)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !580
  call void @checker_addUses_1(i64 550, i64 548)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !581
  call void @checker_addUses_1(i64 551, i64 508)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10, !clap !582
  call void @checker_addUses_1(i64 552, i64 507)
  tail call void @_ZdlPv(i8* nonnull %call) #13, !clap !583
  br label %eh.resume, !clap !584

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !585
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !586
  call void @checker_handlePHI_3(i64 555, i64 524, i64 527, i64 549, i64 553, i64 535, i64 547)
  call void @checker_handlePHI_3(i64 554, i64 525, i64 527, i64 550, i64 553, i64 536, i64 547)
  call void @checker_addUses_1(i64 556, i64 555)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !587
  call void @checker_addUses_2(i64 557, i64 556, i64 554)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !588
  call void @checker_addUses_1(i64 558, i64 557)
  resume { i8*, i32 } %lpad.val20, !clap !589
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  call void @checker_currentBB(i64 559)
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !590

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !591
  %0 = bitcast i8* %__vp to i8**, !clap !592
  call void @checker_addUses_1(i64 562, i64 561)
  %1 = load i8*, i8** %0, align 8, !tbaa !73, !clap !593
  call void @checker_addUses_1(i64 563, i64 560)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !73, !clap !594
  call void @checker_addUses_1(i64 564, i64 559)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !595
  call void @checker_addUses_1(i64 565, i64 564)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !596, !clap !598
  call void @checker_addUses_2(i64 566, i64 565, i64 562)
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !599

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !600
  call void @checker_addUses_1(i64 568, i64 567)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !601
  call void @checker_addUses_1(i64 569, i64 568)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !73, !clap !602
  call void @checker_addUses_1(i64 570, i64 569)
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !603

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  call void @checker_addUses_1(i64 571, i64 560)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !73, !clap !604
  call void @checker_addUses_1(i64 572, i64 560)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !73, !clap !605
  call void @checker_addUses_1(i64 573, i64 571)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !606
  call void @checker_addUses_1(i64 574, i64 573)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !607

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @checker_trackDynInfo(i64 574)
  call void @checker_addUses_1(i64 575, i64 571)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10, !clap !608
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 576, i64 571)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !609
  call void @checker_addUses_1(i64 577, i64 576)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %6) #13, !clap !610
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 578)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !611

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @checker_trackDynInfo(i64 574)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !612
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 580)
  ret i8* null, !clap !613

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !614
  br label %delete.notnull.i.i.i.i, !clap !615

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !616
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !617
  call void @checker_addUses_1(i64 585, i64 584)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !618

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @checker_trackDynInfo(i64 585)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !619
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 587)
  br label %delete.notnull.i.i.i.i, !clap !620

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !621
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !622
  call void @checker_handlePHI_2(i64 589, i64 583, i64 587, i64 581, i64 582)
  call void @checker_handlePHI_2(i64 588, i64 586, i64 587, i64 560, i64 582)
  call void @checker_addUses_1(i64 590, i64 588)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !73, !clap !623
  call void @checker_addUses_1(i64 591, i64 588)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !73, !clap !624
  call void @checker_addUses_1(i64 592, i64 590)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !625
  call void @checker_addUses_1(i64 593, i64 592)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !626

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 593)
  call void @checker_addUses_1(i64 594, i64 590)
  call void @checker_beginFunc()
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10, !clap !627
  call void @checker_endFunc()
  call void @checker_addUses_1(i64 595, i64 590)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !628
  call void @checker_addUses_1(i64 596, i64 595)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* %8) #13, !clap !629
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 597)
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !630

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @checker_trackDynInfo(i64 593)
  call void @checker_beginFunc()
  tail call void @_ZdlPv(i8* nonnull %__vp) #13, !clap !631
  call void @checker_endFunc()
  call void @checker_trackDynInfoEnd()
  call void @checker_currentBB(i64 599)
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !632

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !633
  call void @checker_handlePHI_2(i64 600, i64 583, i64 585, i64 589, i64 599)
  call void @checker_addUses_1(i64 601, i64 600)
  resume { i8*, i32 } %lpad.phi30, !clap !634
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #5

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #10

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

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{i64 1}
!3 = !{i64 2}
!4 = !{i64 3}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{i64 5}
!10 = !{i64 6}
!11 = !{i64 7}
!12 = !{i64 8}
!13 = !{i64 9}
!14 = !{i64 10}
!15 = !{i64 12}
!16 = !{i64 13}
!17 = !{i64 14}
!18 = !{i64 15}
!19 = !{i64 16}
!20 = !{i64 17}
!21 = !{i64 19}
!22 = !{i64 20}
!23 = !{i64 21}
!24 = !{i64 22}
!25 = !{i64 23}
!26 = !{i64 24}
!27 = !{i64 26}
!28 = !{i64 27}
!29 = !{i64 28}
!30 = !{i64 29}
!31 = !{i64 30}
!32 = !{i64 32}
!33 = !{i64 33}
!34 = !{i64 34}
!35 = !{i64 35}
!36 = !{i64 36}
!37 = !{i64 38}
!38 = !{i64 39}
!39 = !{i64 40}
!40 = !{i64 41}
!41 = !{i64 42}
!42 = !{i64 43}
!43 = !{i64 44}
!44 = !{i64 45}
!45 = !{i64 46}
!46 = !{i64 47}
!47 = !{i64 48}
!48 = !{i64 49}
!49 = !{i64 51}
!50 = !{i64 52}
!51 = !{i64 54}
!52 = !{i64 55}
!53 = !{i64 57}
!54 = !{i64 58}
!55 = !{i64 59}
!56 = !{i64 60}
!57 = !{i64 61}
!58 = !{i64 62}
!59 = !{i64 63}
!60 = !{i64 64}
!61 = !{i64 65}
!62 = !{i64 66}
!63 = !{i64 67}
!64 = !{i64 68}
!65 = !{i64 69}
!66 = !{i64 70}
!67 = !{i64 71}
!68 = !{i64 72}
!69 = !{i64 73}
!70 = !{i64 74}
!71 = !{i64 75}
!72 = !{i64 76}
!73 = !{!74, !74, i64 0}
!74 = !{!"any pointer", !7, i64 0}
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
!95 = !{i64 97}
!96 = !{i64 98}
!97 = !{i64 99}
!98 = !{i64 100}
!99 = !{i64 101}
!100 = !{i64 102}
!101 = !{i64 103}
!102 = !{i64 104}
!103 = !{i64 105}
!104 = !{i64 106}
!105 = !{i64 107}
!106 = !{i64 108}
!107 = !{i64 109}
!108 = !{i64 110}
!109 = !{i64 111}
!110 = !{i64 112}
!111 = !{i64 113}
!112 = !{i64 114}
!113 = !{i64 115}
!114 = !{i64 116}
!115 = !{i64 117}
!116 = !{i64 118}
!117 = !{i64 119}
!118 = !{i64 120}
!119 = !{i64 121}
!120 = !{i64 122}
!121 = !{i64 123}
!122 = !{i64 124}
!123 = !{i64 125}
!124 = !{i64 126}
!125 = !{i64 127}
!126 = !{i64 128}
!127 = !{i64 129}
!128 = !{i64 130}
!129 = !{i64 131}
!130 = !{i64 132}
!131 = !{i64 133}
!132 = !{i64 134}
!133 = !{i64 135}
!134 = !{i64 136}
!135 = !{i64 137}
!136 = !{i64 138}
!137 = !{i64 139}
!138 = !{i64 140}
!139 = !{i64 141}
!140 = !{i64 142}
!141 = !{i64 143}
!142 = !{i64 144}
!143 = !{i64 145}
!144 = !{i64 146}
!145 = !{i64 147}
!146 = !{i64 148}
!147 = !{i64 149}
!148 = !{i64 150}
!149 = !{i64 151}
!150 = !{i64 152}
!151 = !{i64 153}
!152 = !{i64 154}
!153 = !{i64 155}
!154 = !{i64 156}
!155 = !{i64 157}
!156 = !{i64 158}
!157 = !{i64 159}
!158 = !{i64 160}
!159 = !{i64 161}
!160 = !{i64 162}
!161 = !{i64 163}
!162 = !{i64 164}
!163 = !{i64 165}
!164 = !{i64 166}
!165 = !{i64 167}
!166 = !{i64 168}
!167 = !{i64 169}
!168 = !{i64 170}
!169 = !{i64 171}
!170 = !{i64 172}
!171 = !{i64 173}
!172 = !{i64 174}
!173 = !{i64 175}
!174 = !{i64 176}
!175 = !{i64 177}
!176 = !{i64 178}
!177 = !{i64 179}
!178 = !{i64 180}
!179 = !{i64 181}
!180 = !{i64 182}
!181 = !{i64 183}
!182 = !{i64 184}
!183 = !{i64 185}
!184 = !{i64 186}
!185 = !{i64 187}
!186 = !{i64 188}
!187 = !{i64 189}
!188 = !{i64 190}
!189 = !{i64 191}
!190 = !{i64 192}
!191 = !{i64 193}
!192 = !{i64 194}
!193 = !{i64 195}
!194 = !{i64 196}
!195 = !{i64 197}
!196 = !{i64 198}
!197 = !{i64 199}
!198 = !{i64 200}
!199 = !{i64 201}
!200 = !{!201, !6, i64 0}
!201 = !{!"_ZTSN7checker12ModelCheckerE", !6, i64 0, !202, i64 8, !74, i64 32}
!202 = !{!"_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!203 = !{i64 202}
!204 = !{i64 203}
!205 = !{i64 204}
!206 = !{i64 205}
!207 = !{i64 206}
!208 = !{i64 207}
!209 = !{!210, !74, i64 0}
!210 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !74, i64 0, !74, i64 8, !211, i64 16}
!211 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!212 = !{i64 208}
!213 = !{i64 209}
!214 = !{i64 210}
!215 = !{i64 211}
!216 = !{i64 212}
!217 = !{i64 213}
!218 = !{!210, !74, i64 8}
!219 = !{i64 214}
!220 = !{i64 215}
!221 = !{i64 216}
!222 = !{i64 217}
!223 = !{i64 218}
!224 = !{i64 219}
!225 = !{i64 220}
!226 = !{i64 221}
!227 = !{i64 222}
!228 = !{i64 223}
!229 = !{i64 224}
!230 = !{i64 225}
!231 = !{i64 226}
!232 = !{i64 227}
!233 = !{i64 228}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!236 = distinct !{!236, !"_ZN7checker12ModelChecker10getSchListEv"}
!237 = !{i64 229}
!238 = !{i64 230}
!239 = !{i64 231}
!240 = !{i64 232}
!241 = !{i64 233}
!242 = !{i64 234}
!243 = !{i64 235}
!244 = !{i64 236}
!245 = !{i64 237}
!246 = !{i64 238}
!247 = !{i64 239}
!248 = !{i64 240}
!249 = !{i64 241}
!250 = !{i64 242}
!251 = !{i64 243}
!252 = !{i64 244}
!253 = !{i64 245}
!254 = !{i64 246}
!255 = !{i64 247}
!256 = !{i64 248}
!257 = !{i64 249}
!258 = !{i64 250}
!259 = !{i64 251}
!260 = !{i64 252}
!261 = !{i64 253}
!262 = !{i64 254}
!263 = !{i64 255}
!264 = !{i64 256}
!265 = !{i64 257}
!266 = !{i64 258}
!267 = !{i64 259}
!268 = !{i64 260}
!269 = !{i64 261}
!270 = !{i64 262}
!271 = !{i64 263}
!272 = !{i64 264}
!273 = !{i64 265}
!274 = !{i64 266}
!275 = !{i64 267}
!276 = !{i64 268}
!277 = !{i64 269}
!278 = !{i64 270}
!279 = !{i64 271}
!280 = !{i64 272}
!281 = !{i64 273}
!282 = !{i64 274}
!283 = !{i64 275}
!284 = !{i64 276}
!285 = !{i64 277}
!286 = !{i64 278}
!287 = !{i64 279}
!288 = !{i64 280}
!289 = !{i64 281}
!290 = !{i64 282}
!291 = !{i64 283}
!292 = !{i64 284}
!293 = !{i64 285}
!294 = !{i64 286}
!295 = !{i64 287}
!296 = !{i64 288}
!297 = !{i64 289}
!298 = !{i64 290}
!299 = !{i64 291}
!300 = !{i64 292}
!301 = !{i64 293}
!302 = !{i64 294}
!303 = !{i64 295}
!304 = !{i64 296}
!305 = !{i64 297}
!306 = !{i64 298}
!307 = !{i64 299}
!308 = !{i64 300}
!309 = !{i64 301}
!310 = !{i64 302}
!311 = !{i64 303}
!312 = !{i64 304}
!313 = !{i64 305}
!314 = !{i64 306}
!315 = !{i64 307}
!316 = !{i64 308}
!317 = !{!318, !319, i64 0}
!318 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !319, i64 0, !7, i64 8}
!319 = !{!"bool", !7, i64 0}
!320 = !{i8 0, i8 2}
!321 = !{i64 309}
!322 = !{i64 310}
!323 = !{i64 311}
!324 = !{i64 312}
!325 = !{!326, !326, i64 0}
!326 = !{!"vtable pointer", !8, i64 0}
!327 = !{i64 313}
!328 = !{i64 314}
!329 = !{i64 315}
!330 = !{i64 316}
!331 = !{i64 317}
!332 = !{i64 318}
!333 = !{i64 319}
!334 = !{i64 320}
!335 = !{!336, !74, i64 40}
!336 = !{!"_ZTSNSt3__18ios_baseE", !6, i64 8, !337, i64 16, !337, i64 24, !6, i64 32, !6, i64 36, !74, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !337, i64 72, !337, i64 80, !74, i64 88, !337, i64 96, !337, i64 104, !74, i64 112, !337, i64 120, !337, i64 128}
!337 = !{!"long", !7, i64 0}
!338 = !{i64 321}
!339 = !{i64 322}
!340 = !{i64 323}
!341 = !{i64 324}
!342 = !{!336, !6, i64 8}
!343 = !{i64 325}
!344 = !{i64 326}
!345 = !{i64 327}
!346 = !{i64 328}
!347 = !{!348, !6, i64 144}
!348 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !74, i64 136, !6, i64 144}
!349 = !{i64 329}
!350 = !{i64 330}
!351 = !{i64 331}
!352 = !{i64 332}
!353 = !{i64 333}
!354 = !{i64 334}
!355 = !{i64 335}
!356 = !{i64 336}
!357 = !{i64 337}
!358 = !{i64 338}
!359 = !{i64 339}
!360 = !{i64 340}
!361 = !{i64 341}
!362 = !{i64 342}
!363 = !{i64 343}
!364 = !{i64 344}
!365 = !{i64 345}
!366 = !{i64 346}
!367 = !{i64 347}
!368 = !{i64 348}
!369 = !{i64 349}
!370 = !{i64 350}
!371 = !{i64 351}
!372 = !{i64 352}
!373 = !{i64 353}
!374 = !{i64 354}
!375 = !{i64 355}
!376 = !{i64 356}
!377 = !{i64 357}
!378 = !{i64 358}
!379 = !{i64 359}
!380 = !{i64 360}
!381 = !{i64 361}
!382 = !{i64 362}
!383 = !{i64 363}
!384 = !{i64 364}
!385 = !{i64 365}
!386 = !{i64 366}
!387 = !{!336, !6, i64 32}
!388 = !{i64 367}
!389 = !{i64 368}
!390 = !{i64 369}
!391 = !{i64 370}
!392 = !{i64 371}
!393 = !{i64 372}
!394 = !{i64 373}
!395 = !{i64 374}
!396 = !{i64 375}
!397 = !{i64 376}
!398 = !{i64 377}
!399 = !{i64 378}
!400 = !{i64 379}
!401 = !{i64 380}
!402 = !{i64 381}
!403 = !{i64 382}
!404 = !{i64 383}
!405 = !{i64 384}
!406 = !{i64 385}
!407 = !{i64 386}
!408 = !{i64 387}
!409 = !{i64 388}
!410 = !{i64 389}
!411 = !{i64 390}
!412 = !{i64 391}
!413 = !{i64 392}
!414 = !{i64 393}
!415 = !{i64 394}
!416 = !{i64 395}
!417 = !{i64 396}
!418 = !{i64 397}
!419 = !{i64 398}
!420 = !{i64 399}
!421 = !{i64 400}
!422 = !{i64 401}
!423 = !{i64 402}
!424 = !{i64 403}
!425 = !{i64 404}
!426 = !{i64 405}
!427 = !{i64 406}
!428 = !{i64 407}
!429 = !{i64 408}
!430 = !{i64 409}
!431 = !{i64 410}
!432 = !{i64 411}
!433 = !{i64 412}
!434 = !{i64 413}
!435 = !{i64 414}
!436 = !{!336, !337, i64 24}
!437 = !{i64 415}
!438 = !{i64 416}
!439 = !{i64 417}
!440 = !{i64 418}
!441 = !{i64 419}
!442 = !{i64 420}
!443 = !{i64 421}
!444 = !{i64 422}
!445 = !{i64 423}
!446 = !{i64 424}
!447 = !{i64 425}
!448 = !{i64 426}
!449 = !{i64 427}
!450 = !{i64 428}
!451 = !{i64 429}
!452 = !{i64 430}
!453 = !{i64 431}
!454 = !{i64 432}
!455 = !{i64 433}
!456 = !{i64 434}
!457 = !{i64 435}
!458 = !{i64 436}
!459 = !{i64 437}
!460 = !{i64 438}
!461 = !{i64 439}
!462 = !{i64 440}
!463 = !{!464, !74, i64 16}
!464 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !337, i64 0, !337, i64 8, !74, i64 16}
!465 = !{i64 441}
!466 = !{i64 442}
!467 = !{i64 443}
!468 = !{!464, !337, i64 0}
!469 = !{i64 444}
!470 = !{i64 445}
!471 = !{!464, !337, i64 8}
!472 = !{i64 446}
!473 = !{i64 447}
!474 = !{i64 448}
!475 = !{i64 449}
!476 = !{i64 450}
!477 = !{i64 451}
!478 = !{!7, !7, i64 0}
!479 = !{i64 452}
!480 = !{i64 453}
!481 = !{i64 454}
!482 = !{i64 455}
!483 = !{i64 456}
!484 = !{i64 457}
!485 = !{i64 458}
!486 = !{i64 459}
!487 = !{i64 460}
!488 = !{i64 461}
!489 = !{i64 462}
!490 = !{i64 463}
!491 = !{i64 464}
!492 = !{i64 465}
!493 = !{i64 466}
!494 = !{i64 467}
!495 = !{i64 468}
!496 = !{i64 469}
!497 = !{i64 470}
!498 = !{i64 471}
!499 = !{i64 472}
!500 = !{i64 473}
!501 = !{i64 474}
!502 = !{i64 475}
!503 = !{i64 476}
!504 = !{i64 477}
!505 = !{i64 478}
!506 = !{i64 479}
!507 = !{i64 480}
!508 = !{i64 481}
!509 = !{i64 482}
!510 = !{i64 483}
!511 = !{i64 484}
!512 = !{i64 485}
!513 = !{i64 486}
!514 = !{i64 487}
!515 = !{i64 488}
!516 = !{i64 489}
!517 = !{i64 490}
!518 = !{i64 491}
!519 = !{i64 492}
!520 = !{i64 493}
!521 = !{i64 494}
!522 = !{i64 495}
!523 = !{i64 496}
!524 = !{i64 497}
!525 = !{i64 498}
!526 = !{i64 499}
!527 = !{i64 500}
!528 = !{i64 501}
!529 = !{i64 502}
!530 = !{i64 503}
!531 = !{i64 504}
!532 = !{i64 505}
!533 = !{i64 506}
!534 = !{i64 507}
!535 = !{i64 508}
!536 = !{i64 509}
!537 = !{i64 510}
!538 = !{i64 511}
!539 = !{i64 512}
!540 = !{i64 513}
!541 = !{!542, !74, i64 0}
!542 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !74, i64 0}
!543 = !{i64 514}
!544 = !{i64 515}
!545 = !{i64 516}
!546 = !{!547, !74, i64 0}
!547 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !74, i64 0}
!548 = !{i64 517}
!549 = !{i64 518}
!550 = !{i64 519}
!551 = !{i64 520}
!552 = !{i64 521}
!553 = !{i64 522}
!554 = !{i64 523}
!555 = !{i64 524}
!556 = !{i64 525}
!557 = !{i64 526}
!558 = !{i64 527}
!559 = !{i64 528}
!560 = !{i64 529}
!561 = !{i64 530}
!562 = !{i64 531}
!563 = !{i64 532}
!564 = !{i64 533}
!565 = !{i64 534}
!566 = !{i64 535}
!567 = !{i64 536}
!568 = !{i64 537}
!569 = !{i64 538}
!570 = !{i64 539}
!571 = !{i64 540}
!572 = !{i64 541}
!573 = !{i64 542}
!574 = !{i64 543}
!575 = !{i64 544}
!576 = !{i64 545}
!577 = !{i64 546}
!578 = !{i64 547}
!579 = !{i64 548}
!580 = !{i64 549}
!581 = !{i64 550}
!582 = !{i64 551}
!583 = !{i64 552}
!584 = !{i64 553}
!585 = !{i64 554}
!586 = !{i64 555}
!587 = !{i64 556}
!588 = !{i64 557}
!589 = !{i64 558}
!590 = !{i64 559}
!591 = !{i64 560}
!592 = !{i64 561}
!593 = !{i64 562}
!594 = !{i64 563}
!595 = !{i64 564}
!596 = !{!597, !337, i64 0}
!597 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !337, i64 0}
!598 = !{i64 565}
!599 = !{i64 566}
!600 = !{i64 567}
!601 = !{i64 568}
!602 = !{i64 569}
!603 = !{i64 570}
!604 = !{i64 571}
!605 = !{i64 572}
!606 = !{i64 573}
!607 = !{i64 574}
!608 = !{i64 575}
!609 = !{i64 576}
!610 = !{i64 577}
!611 = !{i64 578}
!612 = !{i64 579}
!613 = !{i64 580}
!614 = !{i64 581}
!615 = !{i64 582}
!616 = !{i64 583}
!617 = !{i64 584}
!618 = !{i64 585}
!619 = !{i64 586}
!620 = !{i64 587}
!621 = !{i64 588}
!622 = !{i64 589}
!623 = !{i64 590}
!624 = !{i64 591}
!625 = !{i64 592}
!626 = !{i64 593}
!627 = !{i64 594}
!628 = !{i64 595}
!629 = !{i64 596}
!630 = !{i64 597}
!631 = !{i64 598}
!632 = !{i64 599}
!633 = !{i64 600}
!634 = !{i64 601}
