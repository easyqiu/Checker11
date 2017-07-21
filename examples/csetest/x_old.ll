; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i32 }
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

@a = global %"struct.std::__1::atomic" zeroinitializer, align 4
@b = global %"struct.std::__1::atomic" zeroinitializer, align 4
@c = global %"struct.std::__1::atomic" zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"r1=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"r2=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"r4=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Generate a model checker: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@str = private unnamed_addr constant [32 x i8] c"Main thread: creating 2 threads\00"
@str.12 = private unnamed_addr constant [24 x i8] c"Main thread is finished\00"

; Function Attrs: ssp uwtable
define void @_Z1rv() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !clap !2
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !3
  %myInsert = insertelement <1 x i64> undef, i64 2, i64 0
  call void @addUses_1(i64 3, <1 x i64> %myInsert)
  %0 = call i32 @preAtomicLoad_int(i8* %myCast, i64 0, i32 2), !clap !4
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !5
  %myInsert4 = insertelement <1 x i64> undef, i64 4, i64 0
  call void @addUses_1(i64 5, <1 x i64> %myInsert4)
  %1 = call i32 @preAtomicLoad_int(i8* %myCast1, i64 0, i32 2), !clap !6
  %myInsert5 = insertelement <2 x i64> undef, i64 3, i64 0
  %myInsert6 = insertelement <2 x i64> %myInsert5, i64 5, i64 1
  call void @addUses_2(i64 6, <2 x i64> %myInsert6)
  %cmp = icmp eq i32 %0, %1, !clap !7
  %myInsert7 = insertelement <1 x i64> undef, i64 6, i64 0
  call void @addUses_1(i64 7, <1 x i64> %myInsert7)
  br i1 %cmp, label %if.then, label %if.end4, !clap !8

if.then:                                          ; preds = %entry
  call void @trackDynInfo(i64 7)
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !9
  %myInsert8 = insertelement <1 x i64> undef, i64 8, i64 0
  call void @addUses_1(i64 9, <1 x i64> %myInsert8)
  call void @preAtomicStore_int(i8* %myCast2, i32 2, i32 2), !clap !10
  store atomic i32 2, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !clap !11
  %myInsert9 = insertelement <1 x i64> undef, i64 3, i64 0
  call void @addUses_1(i64 11, <1 x i64> %myInsert9)
  %cmp2 = icmp eq i32 %0, 1, !clap !12
  %myInsert10 = insertelement <1 x i64> undef, i64 11, i64 0
  call void @addUses_1(i64 12, <1 x i64> %myInsert10)
  br i1 %cmp2, label %if.then3, label %if.end4, !clap !13

if.then3:                                         ; preds = %if.then
  call void @trackDynInfo(i64 12)
  %myCast3 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !14
  %myInsert11 = insertelement <1 x i64> undef, i64 13, i64 0
  call void @addUses_1(i64 14, <1 x i64> %myInsert11)
  call void @preAtomicStore_int(i8* %myCast3, i32 2, i32 2), !clap !15
  store atomic i32 2, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !clap !16
  br label %if.end4, !clap !17

if.end4:                                          ; preds = %if.then, %if.then3, %entry
  call void @trackDynInfo(i64 7)
  %myInsert12 = insertelement <1 x i64> undef, i64 3, i64 0
  call void @addUses_1(i64 17, <1 x i64> %myInsert12)
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %0), !clap !18
  %myInsert13 = insertelement <1 x i64> undef, i64 5, i64 0
  call void @addUses_1(i64 18, <1 x i64> %myInsert13)
  %call6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %1), !clap !19
  tail call void @checker_thread_end(), !clap !20
  ret void, !clap !21
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define void @_Z1sv() #0 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !clap !22
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !23
  %myInsert = insertelement <1 x i64> undef, i64 22, i64 0
  call void @addUses_1(i64 23, <1 x i64> %myInsert)
  %0 = call i32 @preAtomicLoad_int(i8* %myCast, i64 0, i32 2), !clap !24
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !25
  %myInsert2 = insertelement <2 x i64> undef, i64 24, i64 0
  %myInsert3 = insertelement <2 x i64> %myInsert2, i64 23, i64 1
  call void @addUses_2(i64 25, <2 x i64> %myInsert3)
  call void @preAtomicStore_int(i8* %myCast1, i32 %0, i32 2), !clap !26
  %myInsert4 = insertelement <1 x i64> undef, i64 23, i64 0
  call void @addUses_1(i64 26, <1 x i64> %myInsert4)
  store atomic i32 %0, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !clap !27
  %myInsert5 = insertelement <1 x i64> undef, i64 23, i64 0
  call void @addUses_1(i64 27, <1 x i64> %myInsert5)
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %0), !clap !28
  tail call void @checker_thread_end(), !clap !29
  ret void, !clap !30
}

; Function Attrs: ssp uwtable
define i32 @_Z9user_mainiPPc(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %t1 = alloca %"class.std::__1::thread", align 8, !clap !31
  %t2 = alloca %"class.std::__1::thread", align 8, !clap !32
  tail call void @checker_generateExecutor(), !clap !33
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !clap !34
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !35
  %myInsert = insertelement <1 x i64> undef, i64 34, i64 0
  call void @addUses_1(i64 35, <1 x i64> %myInsert)
  call void @preAtomicStore_int(i8* %myCast, i32 0, i32 7), !clap !36
  store atomic i32 0, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !clap !37
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !38
  %myInsert3 = insertelement <1 x i64> undef, i64 37, i64 0
  call void @addUses_1(i64 38, <1 x i64> %myInsert3)
  call void @preAtomicStore_int(i8* %myCast1, i32 1, i32 7), !clap !39
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !clap !40
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @c, i64 0, i32 0, i32 0, i32 0) to i8*, !clap !41
  %myInsert4 = insertelement <1 x i64> undef, i64 40, i64 0
  call void @addUses_1(i64 41, <1 x i64> %myInsert4)
  call void @preAtomicStore_int(i8* %myCast2, i32 0, i32 7), !clap !42
  store atomic i32 0, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @c, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !clap !43
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str, i64 0, i64 0)), !clap !44
  %myInsert5 = insertelement <1 x i64> undef, i64 30, i64 0
  call void @addUses_1(i64 44, <1 x i64> %myInsert5)
  %0 = bitcast %"class.std::__1::thread"* %t1 to i8*, !clap !45
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #9
  %myInsert6 = insertelement <1 x i64> undef, i64 30, i64 0
  call void @addUses_1(i64 45, <1 x i64> %myInsert6)
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t1, void ()* nonnull @_Z1rv), !clap !46
  %myInsert7 = insertelement <1 x i64> undef, i64 31, i64 0
  call void @addUses_1(i64 46, <1 x i64> %myInsert7)
  %1 = bitcast %"class.std::__1::thread"* %t2 to i8*, !clap !47
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #9
  %myInsert8 = insertelement <1 x i64> undef, i64 31, i64 0
  call void @addUses_1(i64 47, <1 x i64> %myInsert8)
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t2, void ()* nonnull @_Z1sv)
          to label %invoke.cont unwind label %lpad, !clap !48

invoke.cont:                                      ; preds = %entry
  %myInsert9 = insertelement <1 x i64> undef, i64 30, i64 0
  call void @addUses_1(i64 48, <1 x i64> %myInsert9)
  %__t_.i33 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t1, i64 0, i32 0, !clap !49
  %myInsert10 = insertelement <1 x i64> undef, i64 48, i64 0
  call void @addUses_1(i64 49, <1 x i64> %myInsert10)
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i33, align 8, !tbaa !50, !clap !54
  %myInsert11 = insertelement <1 x i64> undef, i64 49, i64 0
  call void @addUses_1(i64 50, <1 x i64> %myInsert11)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont7 unwind label %lpad6, !clap !55

invoke.cont7:                                     ; preds = %invoke.cont
  %myInsert12 = insertelement <1 x i64> undef, i64 31, i64 0
  call void @addUses_1(i64 51, <1 x i64> %myInsert12)
  %__t_.i32 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t2, i64 0, i32 0, !clap !56
  %myInsert13 = insertelement <1 x i64> undef, i64 51, i64 0
  call void @addUses_1(i64 52, <1 x i64> %myInsert13)
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i32, align 8, !tbaa !50, !clap !57
  %myInsert14 = insertelement <1 x i64> undef, i64 52, i64 0
  call void @addUses_1(i64 53, <1 x i64> %myInsert14)
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont12 unwind label %lpad6, !clap !58

invoke.cont12:                                    ; preds = %invoke.cont7
  %myInsert15 = insertelement <1 x i64> undef, i64 48, i64 0
  call void @addUses_1(i64 54, <1 x i64> %myInsert15)
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i33, align 8, !tbaa !50, !clap !59
  %myInsert16 = insertelement <1 x i64> undef, i64 54, i64 0
  call void @addUses_1(i64 55, <1 x i64> %myInsert16)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %4)
          to label %invoke.cont17 unwind label %lpad6, !clap !60

invoke.cont17:                                    ; preds = %invoke.cont12
  %myInsert17 = insertelement <1 x i64> undef, i64 51, i64 0
  call void @addUses_1(i64 56, <1 x i64> %myInsert17)
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i32, align 8, !tbaa !50, !clap !61
  %myInsert18 = insertelement <1 x i64> undef, i64 56, i64 0
  call void @addUses_1(i64 57, <1 x i64> %myInsert18)
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %5)
          to label %invoke.cont22 unwind label %lpad6, !clap !62

invoke.cont22:                                    ; preds = %invoke.cont17
  %myInsert19 = insertelement <1 x i64> undef, i64 30, i64 0
  call void @addUses_1(i64 58, <1 x i64> %myInsert19)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t1)
          to label %invoke.cont23 unwind label %lpad6, !clap !63

invoke.cont23:                                    ; preds = %invoke.cont22
  %myInsert20 = insertelement <1 x i64> undef, i64 31, i64 0
  call void @addUses_1(i64 59, <1 x i64> %myInsert20)
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t2)
          to label %invoke.cont24 unwind label %lpad6, !clap !64

invoke.cont24:                                    ; preds = %invoke.cont23
  %puts34 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.12, i64 0, i64 0)), !clap !65
  invoke void @checker_thread_end()
          to label %invoke.cont27 unwind label %lpad6, !clap !66

invoke.cont27:                                    ; preds = %invoke.cont24
  invoke void @checker_solver()
          to label %invoke.cont28 unwind label %lpad6, !clap !67

invoke.cont28:                                    ; preds = %invoke.cont27
  %myInsert21 = insertelement <1 x i64> undef, i64 31, i64 0
  call void @addUses_1(i64 63, <1 x i64> %myInsert21)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #9, !clap !68
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #9
  %myInsert22 = insertelement <1 x i64> undef, i64 30, i64 0
  call void @addUses_1(i64 64, <1 x i64> %myInsert22)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #9, !clap !69
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #9
  ret i32 0, !clap !70

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !71
  %myInsert23 = insertelement <1 x i64> undef, i64 66, i64 0
  call void @addUses_1(i64 67, <1 x i64> %myInsert23)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !72
  %myInsert24 = insertelement <1 x i64> undef, i64 66, i64 0
  call void @addUses_1(i64 68, <1 x i64> %myInsert24)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !73
  br label %ehcleanup, !clap !74

lpad6:                                            ; preds = %invoke.cont27, %invoke.cont24, %invoke.cont23, %invoke.cont22, %invoke.cont17, %invoke.cont12, %invoke.cont7, %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !75
  %myInsert25 = insertelement <1 x i64> undef, i64 70, i64 0
  call void @addUses_1(i64 71, <1 x i64> %myInsert25)
  %10 = extractvalue { i8*, i32 } %9, 0, !clap !76
  %myInsert26 = insertelement <1 x i64> undef, i64 70, i64 0
  call void @addUses_1(i64 72, <1 x i64> %myInsert26)
  %11 = extractvalue { i8*, i32 } %9, 1, !clap !77
  %myInsert27 = insertelement <1 x i64> undef, i64 31, i64 0
  call void @addUses_1(i64 73, <1 x i64> %myInsert27)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #9, !clap !78
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #9
  br label %ehcleanup, !clap !79

ehcleanup:                                        ; preds = %lpad6, %lpad
  %ehselector.slot.0 = phi i32 [ %11, %lpad6 ], [ %8, %lpad ], !clap !80
  %exn.slot.0 = phi i8* [ %10, %lpad6 ], [ %7, %lpad ], !clap !81
  %myInsert28 = insertelement <1 x i64> undef, i64 30, i64 0
  call void @addUses_1(i64 77, <1 x i64> %myInsert28)
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #9, !clap !82
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #9
  %myInsert29 = insertelement <1 x i64> undef, i64 76, i64 0
  call void @addUses_1(i64 78, <1 x i64> %myInsert29)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !clap !83
  %myInsert30 = insertelement <2 x i64> undef, i64 78, i64 0
  %myInsert31 = insertelement <2 x i64> %myInsert30, i64 75, i64 1
  call void @addUses_2(i64 79, <2 x i64> %myInsert31)
  %lpad.val30 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !clap !84
  %myInsert32 = insertelement <1 x i64> undef, i64 79, i64 0
  call void @addUses_1(i64 80, <1 x i64> %myInsert32)
  resume { i8*, i32 } %lpad.val30, !clap !85
}

declare void @checker_generateExecutor() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #3

; Function Attrs: norecurse ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8, !clap !86
  %call = tail call i8* @_Znwm(i64 40) #10, !clap !87
  %myInsert = insertelement <1 x i64> undef, i64 82, i64 0
  call void @addUses_1(i64 83, <1 x i64> %myInsert)
  %schList.i.i = getelementptr inbounds i8, i8* %call, i64 8, !clap !88
  tail call void @llvm.memset.p0i8.i64(i8* %schList.i.i, i8 0, i64 24, i32 8, i1 false) #9
  %myInsert1 = insertelement <1 x i64> undef, i64 82, i64 0
  call void @addUses_1(i64 84, <1 x i64> %myInsert1)
  %test.i.i = bitcast i8* %call to i32*, !clap !89
  %myInsert2 = insertelement <1 x i64> undef, i64 84, i64 0
  call void @addUses_1(i64 85, <1 x i64> %myInsert2)
  store i32 3, i32* %test.i.i, align 8, !tbaa !90, !clap !94
  %call1.i7.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 26)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !95

invoke.cont.i.i:                                  ; preds = %entry
  %myInsert3 = insertelement <2 x i64> undef, i64 86, i64 0
  %myInsert4 = insertelement <2 x i64> %myInsert3, i64 82, i64 1
  call void @addUses_2(i64 87, <2 x i64> %myInsert4)
  %call3.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i7.i.i, i8* nonnull %call)
          to label %invoke.cont2.i.i unwind label %lpad.i.i, !clap !96

invoke.cont2.i.i:                                 ; preds = %invoke.cont.i.i
  %myInsert5 = insertelement <1 x i64> undef, i64 87, i64 0
  call void @addUses_1(i64 88, <1 x i64> %myInsert5)
  %call1.i9.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call3.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1)
          to label %invoke.cont unwind label %lpad.i.i, !clap !97

lpad.i.i:                                         ; preds = %invoke.cont2.i.i, %invoke.cont.i.i, %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !clap !98
  %myInsert6 = insertelement <1 x i64> undef, i64 83, i64 0
  call void @addUses_1(i64 90, <1 x i64> %myInsert6)
  %__begin_.i.i.i.i.i = bitcast i8* %schList.i.i to %"class.checker::Schedule"***, !clap !99
  %myInsert7 = insertelement <1 x i64> undef, i64 90, i64 0
  call void @addUses_1(i64 91, <1 x i64> %myInsert7)
  %1 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.i, align 8, !tbaa !100, !clap !103
  %myInsert8 = insertelement <1 x i64> undef, i64 91, i64 0
  call void @addUses_1(i64 92, <1 x i64> %myInsert8)
  %cmp.i.i.i.i.i = icmp eq %"class.checker::Schedule"** %1, null, !clap !104
  %myInsert9 = insertelement <1 x i64> undef, i64 92, i64 0
  call void @addUses_1(i64 93, <1 x i64> %myInsert9)
  br i1 %cmp.i.i.i.i.i, label %lpad.body, label %if.then.i.i.i.i.i, !clap !105

if.then.i.i.i.i.i:                                ; preds = %lpad.i.i
  call void @trackDynInfo(i64 93)
  %myInsert10 = insertelement <1 x i64> undef, i64 91, i64 0
  call void @addUses_1(i64 94, <1 x i64> %myInsert10)
  %2 = ptrtoint %"class.checker::Schedule"** %1 to i64, !clap !106
  %myInsert11 = insertelement <1 x i64> undef, i64 82, i64 0
  call void @addUses_1(i64 95, <1 x i64> %myInsert11)
  %__end_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call, i64 16, !clap !107
  %myInsert12 = insertelement <1 x i64> undef, i64 95, i64 0
  call void @addUses_1(i64 96, <1 x i64> %myInsert12)
  %3 = bitcast i8* %__end_.i.i.i.i.i.i.i to i64*, !clap !108
  %myInsert13 = insertelement <2 x i64> undef, i64 94, i64 0
  %myInsert14 = insertelement <2 x i64> %myInsert13, i64 96, i64 1
  call void @addUses_2(i64 97, <2 x i64> %myInsert14)
  store i64 %2, i64* %3, align 8, !tbaa !109, !clap !110
  %myInsert15 = insertelement <1 x i64> undef, i64 91, i64 0
  call void @addUses_1(i64 98, <1 x i64> %myInsert15)
  %.cast.i.i.i.i.i = bitcast %"class.checker::Schedule"** %1 to i8*, !clap !111
  %myInsert16 = insertelement <1 x i64> undef, i64 98, i64 0
  call void @addUses_1(i64 99, <1 x i64> %myInsert16)
  tail call void @_ZdlPv(i8* %.cast.i.i.i.i.i) #11, !clap !112
  br label %lpad.body, !clap !113

invoke.cont:                                      ; preds = %invoke.cont2.i.i
  %myInsert17 = insertelement <1 x i64> undef, i64 82, i64 0
  call void @addUses_1(i64 101, <1 x i64> %myInsert17)
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !tbaa !50, !clap !114
  %call1 = tail call i32 @_Z9user_mainiPPc(i32 undef, i8** undef), !clap !115
  %myInsert18 = insertelement <1 x i64> undef, i64 81, i64 0
  call void @addUses_1(i64 103, <1 x i64> %myInsert18)
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*, !clap !116
  %myInsert19 = insertelement <1 x i64> undef, i64 81, i64 0
  call void @addUses_1(i64 104, <1 x i64> %myInsert19)
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1, !clap !117
  %myInsert20 = insertelement <1 x i64> undef, i64 104, i64 0
  call void @addUses_1(i64 105, <1 x i64> %myInsert20)
  %5 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*, !clap !118
  %myInsert21 = insertelement <1 x i64> undef, i64 104, i64 0
  call void @addUses_1(i64 106, <1 x i64> %myInsert21)
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**, !clap !119
  %myInsert22 = insertelement <1 x i64> undef, i64 81, i64 0
  call void @addUses_1(i64 107, <1 x i64> %myInsert22)
  %7 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**, !clap !120
  %myInsert23 = insertelement <1 x i64> undef, i64 81, i64 0
  call void @addUses_1(i64 108, <1 x i64> %myInsert23)
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0, !clap !121
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9
  %8 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !50, !clap !122
  %myInsert24 = insertelement <1 x i64> undef, i64 109, i64 0
  call void @addUses_1(i64 110, <1 x i64> %myInsert24)
  %schList.i19 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, !clap !123
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !124
  %myInsert25 = insertelement <1 x i64> undef, i64 109, i64 0
  call void @addUses_1(i64 111, <1 x i64> %myInsert25)
  %__end_.i16.i.i.i20 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, i32 0, i32 1, !clap !127
  %myInsert26 = insertelement <1 x i64> undef, i64 111, i64 0
  call void @addUses_1(i64 112, <1 x i64> %myInsert26)
  %9 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i20 to i64*, !clap !128
  %myInsert27 = insertelement <1 x i64> undef, i64 112, i64 0
  call void @addUses_1(i64 113, <1 x i64> %myInsert27)
  %10 = load i64, i64* %9, align 8, !tbaa !109, !noalias !124, !clap !129
  %myInsert28 = insertelement <1 x i64> undef, i64 110, i64 0
  call void @addUses_1(i64 114, <1 x i64> %myInsert28)
  %11 = bitcast %"class.std::__1::vector"* %schList.i19 to i64*, !clap !130
  %myInsert29 = insertelement <1 x i64> undef, i64 114, i64 0
  call void @addUses_1(i64 115, <1 x i64> %myInsert29)
  %12 = load i64, i64* %11, align 8, !tbaa !100, !noalias !124, !clap !131
  %myInsert30 = insertelement <2 x i64> undef, i64 113, i64 0
  %myInsert31 = insertelement <2 x i64> %myInsert30, i64 115, i64 1
  call void @addUses_2(i64 116, <2 x i64> %myInsert31)
  %sub.ptr.sub.i.i.i.i21 = sub i64 %10, %12, !clap !132
  %myInsert32 = insertelement <1 x i64> undef, i64 116, i64 0
  call void @addUses_1(i64 117, <1 x i64> %myInsert32)
  %sub.ptr.div.i.i.i.i22 = ashr exact i64 %sub.ptr.sub.i.i.i.i21, 3, !clap !133
  %myInsert33 = insertelement <1 x i64> undef, i64 117, i64 0
  call void @addUses_1(i64 118, <1 x i64> %myInsert33)
  %cmp.i.i.i23 = icmp eq i64 %sub.ptr.div.i.i.i.i22, 0, !clap !134
  %myInsert34 = insertelement <1 x i64> undef, i64 118, i64 0
  call void @addUses_1(i64 119, <1 x i64> %myInsert34)
  br i1 %cmp.i.i.i23, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !clap !135

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  call void @trackDynInfo(i64 119)
  br label %if.then.i.i.i, !clap !136

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  call void @trackDynInfo(i64 172)
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !clap !137

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  call void @trackDynInfo(i64 119)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9
  br label %while.end, !clap !138

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i25 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i22, %if.then.i.i.i.preheader ], !clap !139
  %sub.ptr.sub.i.i.i.i24 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i21, %if.then.i.i.i.preheader ], !clap !140
  %13 = phi i64 [ %25, %while.body ], [ %12, %if.then.i.i.i.preheader ], !clap !141
  call void @trackDynInfo(i64 120)
  %myInsert35 = insertelement <1 x i64> undef, i64 123, i64 0
  call void @addUses_1(i64 126, <1 x i64> %myInsert35)
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i25, 2305843009213693951, !clap !142
  %myInsert36 = insertelement <1 x i64> undef, i64 126, i64 0
  call void @addUses_1(i64 127, <1 x i64> %myInsert36)
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !clap !143

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  call void @trackDynInfo(i64 127)
  %myInsert37 = insertelement <1 x i64> undef, i64 81, i64 0
  call void @addUses_1(i64 128, <1 x i64> %myInsert37)
  %14 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !clap !144
  %myInsert38 = insertelement <1 x i64> undef, i64 128, i64 0
  call void @addUses_1(i64 129, <1 x i64> %myInsert38)
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %14) #12
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !clap !145

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !clap !146

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  call void @trackDynInfo(i64 127)
  %myInsert39 = insertelement <1 x i64> undef, i64 124, i64 0
  call void @addUses_1(i64 131, <1 x i64> %myInsert39)
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i24) #10, !clap !147
  %myInsert40 = insertelement <1 x i64> undef, i64 131, i64 0
  call void @addUses_1(i64 132, <1 x i64> %myInsert40)
  %15 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !clap !148
  %myInsert41 = insertelement <2 x i64> undef, i64 131, i64 0
  %myInsert42 = insertelement <2 x i64> %myInsert41, i64 106, i64 1
  call void @addUses_2(i64 133, <2 x i64> %myInsert42)
  store i8* %call.i.i.i.i15.i.i.i, i8** %6, align 8, !tbaa !109, !alias.scope !124, !clap !149
  %myInsert43 = insertelement <2 x i64> undef, i64 131, i64 0
  %myInsert44 = insertelement <2 x i64> %myInsert43, i64 107, i64 1
  call void @addUses_2(i64 134, <2 x i64> %myInsert44)
  store i8* %call.i.i.i.i15.i.i.i, i8** %7, align 8, !tbaa !100, !alias.scope !124, !clap !150
  %myInsert45 = insertelement <2 x i64> undef, i64 132, i64 0
  %myInsert46 = insertelement <2 x i64> %myInsert45, i64 123, i64 1
  call void @addUses_2(i64 135, <2 x i64> %myInsert46)
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div.i.i.i.i25, !clap !151
  %myInsert47 = insertelement <2 x i64> undef, i64 135, i64 0
  %myInsert48 = insertelement <2 x i64> %myInsert47, i64 108, i64 1
  call void @addUses_2(i64 136, <2 x i64> %myInsert48)
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !tbaa !50, !alias.scope !124, !clap !152
  %myInsert49 = insertelement <1 x i64> undef, i64 124, i64 0
  call void @addUses_1(i64 137, <1 x i64> %myInsert49)
  %cmp.i.i.i.i.i7 = icmp sgt i64 %sub.ptr.sub.i.i.i.i24, 0, !clap !153
  %myInsert50 = insertelement <1 x i64> undef, i64 131, i64 0
  call void @addUses_1(i64 138, <1 x i64> %myInsert50)
  %16 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !clap !154
  %myInsert51 = insertelement <1 x i64> undef, i64 137, i64 0
  call void @addUses_1(i64 139, <1 x i64> %myInsert51)
  br i1 %cmp.i.i.i.i.i7, label %if.then.i.i.i.i.i8, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !155

if.then.i.i.i.i.i8:                               ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  call void @trackDynInfo(i64 139)
  %myInsert52 = insertelement <1 x i64> undef, i64 124, i64 0
  call void @addUses_1(i64 140, <1 x i64> %myInsert52)
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i24, 3, !clap !156
  %myInsert53 = insertelement <1 x i64> undef, i64 125, i64 0
  call void @addUses_1(i64 141, <1 x i64> %myInsert53)
  %17 = inttoptr i64 %13 to i8*, !clap !157
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %17, i64 %sub.ptr.sub.i.i.i.i24, i32 8, i1 false) #9
  %myInsert54 = insertelement <2 x i64> undef, i64 132, i64 0
  %myInsert55 = insertelement <2 x i64> %myInsert54, i64 140, i64 1
  call void @addUses_2(i64 142, <2 x i64> %myInsert55)
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div6.i.i.i.i.i, !clap !158
  %myInsert56 = insertelement <2 x i64> undef, i64 142, i64 0
  %myInsert57 = insertelement <2 x i64> %myInsert56, i64 104, i64 1
  call void @addUses_2(i64 143, <2 x i64> %myInsert57)
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !tbaa !50, !alias.scope !124, !clap !159
  %myInsert58 = insertelement <1 x i64> undef, i64 142, i64 0
  call void @addUses_1(i64 144, <1 x i64> %myInsert58)
  %18 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !clap !160
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !clap !161

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !clap !162
  %myInsert59 = insertelement <1 x i64> undef, i64 81, i64 0
  call void @addUses_1(i64 147, <1 x i64> %myInsert59)
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0, !clap !163
  %myInsert60 = insertelement <1 x i64> undef, i64 147, i64 0
  call void @addUses_1(i64 148, <1 x i64> %myInsert60)
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !100, !alias.scope !124, !clap !164
  %myInsert61 = insertelement <1 x i64> undef, i64 148, i64 0
  call void @addUses_1(i64 149, <1 x i64> %myInsert61)
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !clap !165
  %myInsert62 = insertelement <1 x i64> undef, i64 149, i64 0
  call void @addUses_1(i64 150, <1 x i64> %myInsert62)
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !clap !166

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  call void @trackDynInfo(i64 150)
  %myInsert63 = insertelement <1 x i64> undef, i64 148, i64 0
  call void @addUses_1(i64 151, <1 x i64> %myInsert63)
  %19 = bitcast %"class.checker::Schedule"** %.pre to i8*, !clap !167
  %myInsert64 = insertelement <1 x i64> undef, i64 148, i64 0
  call void @addUses_1(i64 152, <1 x i64> %myInsert64)
  %20 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !clap !168
  %myInsert65 = insertelement <2 x i64> undef, i64 152, i64 0
  %myInsert66 = insertelement <2 x i64> %myInsert65, i64 105, i64 1
  call void @addUses_2(i64 153, <2 x i64> %myInsert66)
  store i64 %20, i64* %5, align 8, !tbaa !109, !alias.scope !124, !clap !169
  %myInsert67 = insertelement <1 x i64> undef, i64 151, i64 0
  call void @addUses_1(i64 154, <1 x i64> %myInsert67)
  call void @_ZdlPv(i8* %19) #11, !clap !170
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !clap !171

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  call void @trackDynInfo(i64 150)
  %myInsert68 = insertelement <1 x i64> undef, i64 146, i64 0
  call void @addUses_1(i64 156, <1 x i64> %myInsert68)
  resume { i8*, i32 } %lpad.loopexit.split-lp, !clap !172

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i8, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %18, %if.then.i.i.i.i.i8 ], [ %16, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ], !clap !173
  call void @trackDynInfo(i64 139)
  %myInsert69 = insertelement <2 x i64> undef, i64 157, i64 0
  %myInsert70 = insertelement <2 x i64> %myInsert69, i64 138, i64 1
  call void @addUses_2(i64 158, <2 x i64> %myInsert70)
  %tobool14 = icmp eq i64 %.ph, %16, !clap !174
  %myInsert71 = insertelement <1 x i64> undef, i64 131, i64 0
  call void @addUses_1(i64 159, <1 x i64> %myInsert71)
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #11, !clap !175
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9
  %myInsert72 = insertelement <1 x i64> undef, i64 158, i64 0
  call void @addUses_1(i64 160, <1 x i64> %myInsert72)
  br i1 %tobool14, label %while.end.loopexit, label %while.body, !clap !176

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  call void @trackDynInfo(i64 160)
  %call3 = tail call i32 @_Z9user_mainiPPc(i32 undef, i8** undef), !clap !177
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9
  %21 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !tbaa !50, !clap !178
  %myInsert73 = insertelement <1 x i64> undef, i64 162, i64 0
  call void @addUses_1(i64 163, <1 x i64> %myInsert73)
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, !clap !179
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !alias.scope !124
  %myInsert74 = insertelement <1 x i64> undef, i64 162, i64 0
  call void @addUses_1(i64 164, <1 x i64> %myInsert74)
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, i32 0, i32 1, !clap !180
  %myInsert75 = insertelement <1 x i64> undef, i64 164, i64 0
  call void @addUses_1(i64 165, <1 x i64> %myInsert75)
  %22 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !clap !181
  %myInsert76 = insertelement <1 x i64> undef, i64 165, i64 0
  call void @addUses_1(i64 166, <1 x i64> %myInsert76)
  %23 = load i64, i64* %22, align 8, !tbaa !109, !noalias !124, !clap !182
  %myInsert77 = insertelement <1 x i64> undef, i64 163, i64 0
  call void @addUses_1(i64 167, <1 x i64> %myInsert77)
  %24 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !clap !183
  %myInsert78 = insertelement <1 x i64> undef, i64 167, i64 0
  call void @addUses_1(i64 168, <1 x i64> %myInsert78)
  %25 = load i64, i64* %24, align 8, !tbaa !100, !noalias !124, !clap !184
  %myInsert79 = insertelement <2 x i64> undef, i64 166, i64 0
  %myInsert80 = insertelement <2 x i64> %myInsert79, i64 168, i64 1
  call void @addUses_2(i64 169, <2 x i64> %myInsert80)
  %sub.ptr.sub.i.i.i.i = sub i64 %23, %25, !clap !185
  %myInsert81 = insertelement <1 x i64> undef, i64 169, i64 0
  call void @addUses_1(i64 170, <1 x i64> %myInsert81)
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !clap !186
  %myInsert82 = insertelement <1 x i64> undef, i64 170, i64 0
  call void @addUses_1(i64 171, <1 x i64> %myInsert82)
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !clap !187
  %myInsert83 = insertelement <1 x i64> undef, i64 171, i64 0
  call void @addUses_1(i64 172, <1 x i64> %myInsert83)
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !clap !188

lpad.body:                                        ; preds = %lpad.i.i, %if.then.i.i.i.i.i
  call void @trackDynInfo(i64 93)
  %myInsert84 = insertelement <1 x i64> undef, i64 82, i64 0
  call void @addUses_1(i64 173, <1 x i64> %myInsert84)
  tail call void @_ZdlPv(i8* nonnull %call) #11, !clap !189
  %myInsert85 = insertelement <1 x i64> undef, i64 89, i64 0
  call void @addUses_1(i64 174, <1 x i64> %myInsert85)
  resume { i8*, i32 } %0, !clap !190

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  call void @trackDynInfo(i64 160)
  br label %while.end, !clap !191

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  call void @trackDynInfo(i64 119)
  ret i32 0, !clap !192
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #7 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #9, !clap !193
  tail call void @_ZSt9terminatev() #13, !clap !194
  unreachable, !clap !195
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8, !clap !196
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8, !clap !197
  %myInsert = insertelement <1 x i64> undef, i64 181, i64 0
  call void @addUses_1(i64 182, <1 x i64> %myInsert)
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0, !clap !198
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #9
  %myInsert1 = insertelement <1 x i64> undef, i64 181, i64 0
  call void @addUses_1(i64 183, <1 x i64> %myInsert1)
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad, !clap !199

invoke.cont:                                      ; preds = %entry
  %myInsert2 = insertelement <1 x i64> undef, i64 182, i64 0
  call void @addUses_1(i64 184, <1 x i64> %myInsert2)
  %1 = load i8, i8* %0, align 8, !tbaa !200, !range !203, !clap !204
  %myInsert3 = insertelement <1 x i64> undef, i64 184, i64 0
  call void @addUses_1(i64 185, <1 x i64> %myInsert3)
  %tobool.i = icmp eq i8 %1, 0, !clap !205
  %myInsert4 = insertelement <1 x i64> undef, i64 185, i64 0
  call void @addUses_1(i64 186, <1 x i64> %myInsert4)
  br i1 %tobool.i, label %if.end28, label %if.then, !clap !206

if.then:                                          ; preds = %invoke.cont
  call void @trackDynInfo(i64 186)
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !207
  %myInsert5 = insertelement <1 x i64> undef, i64 187, i64 0
  call void @addUses_1(i64 188, <1 x i64> %myInsert5)
  %vtable.i.i = load i8*, i8** %2, align 8, !tbaa !208, !clap !210
  %myInsert6 = insertelement <1 x i64> undef, i64 188, i64 0
  call void @addUses_1(i64 189, <1 x i64> %myInsert6)
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !clap !211
  %myInsert7 = insertelement <1 x i64> undef, i64 189, i64 0
  call void @addUses_1(i64 190, <1 x i64> %myInsert7)
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !clap !212
  %myInsert8 = insertelement <1 x i64> undef, i64 190, i64 0
  call void @addUses_1(i64 191, <1 x i64> %myInsert8)
  %vbase.offset.i.i = load i64, i64* %3, align 8, !clap !213
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !214
  %myInsert9 = insertelement <2 x i64> undef, i64 192, i64 0
  %myInsert10 = insertelement <2 x i64> %myInsert9, i64 191, i64 1
  call void @addUses_2(i64 193, <2 x i64> %myInsert10)
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i, !clap !215
  %myInsert11 = insertelement <1 x i64> undef, i64 193, i64 0
  call void @addUses_1(i64 194, <1 x i64> %myInsert11)
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40, !clap !216
  %myInsert12 = insertelement <1 x i64> undef, i64 194, i64 0
  call void @addUses_1(i64 195, <1 x i64> %myInsert12)
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**, !clap !217
  %myInsert13 = insertelement <1 x i64> undef, i64 195, i64 0
  call void @addUses_1(i64 196, <1 x i64> %myInsert13)
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !tbaa !218, !clap !221
  %myInsert14 = insertelement <1 x i64> undef, i64 193, i64 0
  call void @addUses_1(i64 197, <1 x i64> %myInsert14)
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*, !clap !222
  %myInsert15 = insertelement <1 x i64> undef, i64 193, i64 0
  call void @addUses_1(i64 198, <1 x i64> %myInsert15)
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8, !clap !223
  %myInsert16 = insertelement <1 x i64> undef, i64 198, i64 0
  call void @addUses_1(i64 199, <1 x i64> %myInsert16)
  %8 = bitcast i8* %__fmtflags_.i to i32*, !clap !224
  %myInsert17 = insertelement <1 x i64> undef, i64 199, i64 0
  call void @addUses_1(i64 200, <1 x i64> %myInsert17)
  %9 = load i32, i32* %8, align 8, !tbaa !225, !clap !226
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len, !clap !227
  %myInsert18 = insertelement <1 x i64> undef, i64 193, i64 0
  call void @addUses_1(i64 202, <1 x i64> %myInsert18)
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144, !clap !228
  %myInsert19 = insertelement <1 x i64> undef, i64 202, i64 0
  call void @addUses_1(i64 203, <1 x i64> %myInsert19)
  %10 = bitcast i8* %__fill_.i to i32*, !clap !229
  %myInsert20 = insertelement <1 x i64> undef, i64 203, i64 0
  call void @addUses_1(i64 204, <1 x i64> %myInsert20)
  %11 = load i32, i32* %10, align 8, !tbaa !230, !clap !232
  %myInsert21 = insertelement <1 x i64> undef, i64 204, i64 0
  call void @addUses_1(i64 205, <1 x i64> %myInsert21)
  %cmp.i.i = icmp eq i32 %11, -1, !clap !233
  %myInsert22 = insertelement <1 x i64> undef, i64 205, i64 0
  call void @addUses_1(i64 206, <1 x i64> %myInsert22)
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16, !clap !234

if.then.i:                                        ; preds = %if.then
  call void @trackDynInfo(i64 206)
  %myInsert23 = insertelement <1 x i64> undef, i64 180, i64 0
  call void @addUses_1(i64 207, <1 x i64> %myInsert23)
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*, !clap !235
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #9
  %myInsert24 = insertelement <2 x i64> undef, i64 180, i64 0
  %myInsert25 = insertelement <2 x i64> %myInsert24, i64 197, i64 1
  call void @addUses_2(i64 208, <2 x i64> %myInsert25)
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3, !clap !236

.noexc:                                           ; preds = %if.then.i
  %myInsert26 = insertelement <1 x i64> undef, i64 180, i64 0
  call void @addUses_1(i64 209, <1 x i64> %myInsert26)
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !clap !237

invoke.cont.i.i:                                  ; preds = %.noexc
  %myInsert27 = insertelement <1 x i64> undef, i64 209, i64 0
  call void @addUses_1(i64 210, <1 x i64> %myInsert27)
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !clap !238
  %myInsert28 = insertelement <1 x i64> undef, i64 209, i64 0
  call void @addUses_1(i64 211, <1 x i64> %myInsert28)
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***, !clap !239
  %myInsert29 = insertelement <1 x i64> undef, i64 211, i64 0
  call void @addUses_1(i64 212, <1 x i64> %myInsert29)
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !tbaa !208, !clap !240
  %myInsert30 = insertelement <1 x i64> undef, i64 212, i64 0
  call void @addUses_1(i64 213, <1 x i64> %myInsert30)
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !clap !241
  %myInsert31 = insertelement <1 x i64> undef, i64 213, i64 0
  call void @addUses_1(i64 214, <1 x i64> %myInsert31)
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !clap !242
  %myInsert32 = insertelement <2 x i64> undef, i64 210, i64 0
  %myInsert33 = insertelement <2 x i64> %myInsert32, i64 214, i64 1
  call void @addUses_2(i64 215, <2 x i64> %myInsert33)
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !clap !243

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null, !clap !244
  %myInsert34 = insertelement <1 x i64> undef, i64 180, i64 0
  call void @addUses_1(i64 217, <1 x i64> %myInsert34)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #9, !clap !245
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #9
  br label %ehcleanup, !clap !246

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  %myInsert35 = insertelement <1 x i64> undef, i64 180, i64 0
  call void @addUses_1(i64 219, <1 x i64> %myInsert35)
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #9, !clap !247
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #9
  %myInsert36 = insertelement <1 x i64> undef, i64 215, i64 0
  call void @addUses_1(i64 220, <1 x i64> %myInsert36)
  %conv.i = sext i8 %call.i6.i.i to i32, !clap !248
  %myInsert37 = insertelement <2 x i64> undef, i64 220, i64 0
  %myInsert38 = insertelement <2 x i64> %myInsert37, i64 203, i64 1
  call void @addUses_2(i64 221, <2 x i64> %myInsert38)
  store i32 %conv.i, i32* %10, align 8, !tbaa !230, !clap !249
  br label %invoke.cont16, !clap !250

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ], !clap !251
  call void @trackDynInfo(i64 206)
  %myInsert39 = insertelement <1 x i64> undef, i64 223, i64 0
  call void @addUses_1(i64 224, <1 x i64> %myInsert39)
  %conv6.i = trunc i32 %17 to i8, !clap !252
  %myInsert40 = insertelement <1 x i64> undef, i64 200, i64 0
  call void @addUses_1(i64 225, <1 x i64> %myInsert40)
  %and = and i32 %9, 176, !clap !253
  %myInsert41 = insertelement <1 x i64> undef, i64 225, i64 0
  call void @addUses_1(i64 226, <1 x i64> %myInsert41)
  %cmp = icmp eq i32 %and, 32, !clap !254
  %myInsert42 = insertelement <2 x i64> undef, i64 226, i64 0
  %myInsert43 = insertelement <2 x i64> %myInsert42, i64 201, i64 1
  call void @addUses_2(i64 227, <2 x i64> %myInsert43)
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str, !clap !255
  %myInsert44 = insertelement <5 x i64> undef, i64 196, i64 0
  %myInsert45 = insertelement <5 x i64> %myInsert44, i64 227, i64 1
  %myInsert46 = insertelement <5 x i64> %myInsert45, i64 201, i64 2
  %myInsert47 = insertelement <5 x i64> %myInsert46, i64 197, i64 3
  %myInsert48 = insertelement <5 x i64> %myInsert47, i64 224, i64 4
  call void @addUses_5(i64 228, <5 x i64> %myInsert48)
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3, !clap !256

invoke.cont18:                                    ; preds = %invoke.cont16
  %myInsert49 = insertelement <1 x i64> undef, i64 228, i64 0
  call void @addUses_1(i64 229, <1 x i64> %myInsert49)
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null, !clap !257
  %myInsert50 = insertelement <1 x i64> undef, i64 229, i64 0
  call void @addUses_1(i64 230, <1 x i64> %myInsert50)
  br i1 %cmp.i, label %if.then22, label %if.end28, !clap !258

if.then22:                                        ; preds = %invoke.cont18
  call void @trackDynInfo(i64 230)
  %myInsert51 = insertelement <1 x i64> undef, i64 187, i64 0
  call void @addUses_1(i64 231, <1 x i64> %myInsert51)
  %vtable23 = load i8*, i8** %2, align 8, !tbaa !208, !clap !259
  %myInsert52 = insertelement <1 x i64> undef, i64 231, i64 0
  call void @addUses_1(i64 232, <1 x i64> %myInsert52)
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24, !clap !260
  %myInsert53 = insertelement <1 x i64> undef, i64 232, i64 0
  call void @addUses_1(i64 233, <1 x i64> %myInsert53)
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*, !clap !261
  %myInsert54 = insertelement <1 x i64> undef, i64 233, i64 0
  call void @addUses_1(i64 234, <1 x i64> %myInsert54)
  %vbase.offset25 = load i64, i64* %18, align 8, !clap !262
  %myInsert55 = insertelement <2 x i64> undef, i64 192, i64 0
  %myInsert56 = insertelement <2 x i64> %myInsert55, i64 234, i64 1
  call void @addUses_2(i64 235, <2 x i64> %myInsert56)
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25, !clap !263
  %myInsert57 = insertelement <1 x i64> undef, i64 235, i64 0
  call void @addUses_1(i64 236, <1 x i64> %myInsert57)
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*, !clap !264
  %myInsert58 = insertelement <1 x i64> undef, i64 235, i64 0
  call void @addUses_1(i64 237, <1 x i64> %myInsert58)
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32, !clap !265
  %myInsert59 = insertelement <1 x i64> undef, i64 237, i64 0
  call void @addUses_1(i64 238, <1 x i64> %myInsert59)
  %20 = bitcast i8* %__rdstate_.i.i to i32*, !clap !266
  %myInsert60 = insertelement <1 x i64> undef, i64 238, i64 0
  call void @addUses_1(i64 239, <1 x i64> %myInsert60)
  %21 = load i32, i32* %20, align 8, !tbaa !267, !clap !268
  %myInsert61 = insertelement <1 x i64> undef, i64 239, i64 0
  call void @addUses_1(i64 240, <1 x i64> %myInsert61)
  %or.i.i = or i32 %21, 5, !clap !269
  %myInsert62 = insertelement <2 x i64> undef, i64 236, i64 0
  %myInsert63 = insertelement <2 x i64> %myInsert62, i64 240, i64 1
  call void @addUses_2(i64 241, <2 x i64> %myInsert63)
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1, !clap !270

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null, !clap !271
  %myInsert64 = insertelement <1 x i64> undef, i64 242, i64 0
  call void @addUses_1(i64 243, <1 x i64> %myInsert64)
  %23 = extractvalue { i8*, i32 } %22, 0, !clap !272
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !clap !273
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !clap !274
  br label %catch, !clap !275

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null, !clap !276
  br label %ehcleanup, !clap !277

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null, !clap !278
  br label %ehcleanup, !clap !279

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @trackDynInfo(i64 186)
  %myInsert65 = insertelement <1 x i64> undef, i64 181, i64 0
  call void @addUses_1(i64 251, <1 x i64> %myInsert65)
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #9, !clap !280
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #9
  br label %try.cont, !clap !281

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ], !clap !282
  call void @trackDynInfo(i64 206)
  %myInsert66 = insertelement <1 x i64> undef, i64 253, i64 0
  call void @addUses_1(i64 254, <1 x i64> %myInsert66)
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0, !clap !283
  %myInsert67 = insertelement <1 x i64> undef, i64 181, i64 0
  call void @addUses_1(i64 255, <1 x i64> %myInsert67)
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #9, !clap !284
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #9
  br label %catch, !clap !285

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ], !clap !286
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ], !clap !287
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ], !clap !288
  %myInsert68 = insertelement <1 x i64> undef, i64 259, i64 0
  call void @addUses_1(i64 260, <1 x i64> %myInsert68)
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #9, !clap !289
  %myInsert69 = insertelement <1 x i64> undef, i64 258, i64 0
  call void @addUses_1(i64 261, <1 x i64> %myInsert69)
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !tbaa !208, !clap !290
  %myInsert70 = insertelement <1 x i64> undef, i64 261, i64 0
  call void @addUses_1(i64 262, <1 x i64> %myInsert70)
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24, !clap !291
  %myInsert71 = insertelement <1 x i64> undef, i64 262, i64 0
  call void @addUses_1(i64 263, <1 x i64> %myInsert71)
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*, !clap !292
  %myInsert72 = insertelement <1 x i64> undef, i64 263, i64 0
  call void @addUses_1(i64 264, <1 x i64> %myInsert72)
  %vbase.offset32 = load i64, i64* %28, align 8, !clap !293
  %myInsert73 = insertelement <2 x i64> undef, i64 257, i64 0
  %myInsert74 = insertelement <2 x i64> %myInsert73, i64 264, i64 1
  call void @addUses_2(i64 265, <2 x i64> %myInsert74)
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32, !clap !294
  %myInsert75 = insertelement <1 x i64> undef, i64 265, i64 0
  call void @addUses_1(i64 266, <1 x i64> %myInsert75)
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*, !clap !295
  %myInsert76 = insertelement <1 x i64> undef, i64 266, i64 0
  call void @addUses_1(i64 267, <1 x i64> %myInsert76)
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34, !clap !296

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch(), !clap !297
  br label %try.cont, !clap !298

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os, !clap !299

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup, !clap !300
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad, !clap !301

eh.resume:                                        ; preds = %lpad34
  %myInsert77 = insertelement <1 x i64> undef, i64 271, i64 0
  call void @addUses_1(i64 273, <1 x i64> %myInsert77)
  resume { i8*, i32 } %30, !clap !302

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null, !clap !303
  %myInsert78 = insertelement <1 x i64> undef, i64 274, i64 0
  call void @addUses_1(i64 275, <1 x i64> %myInsert78)
  %32 = extractvalue { i8*, i32 } %31, 0, !clap !304
  %myInsert79 = insertelement <1 x i64> undef, i64 275, i64 0
  call void @addUses_1(i64 276, <1 x i64> %myInsert79)
  call void @__clang_call_terminate(i8* %32) #13, !clap !305
  unreachable, !clap !306
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8, !clap !307
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null, !clap !308
  %myInsert = insertelement <1 x i64> undef, i64 279, i64 0
  call void @addUses_1(i64 280, <1 x i64> %myInsert)
  br i1 %cmp, label %return, label %if.end, !clap !309

if.end:                                           ; preds = %entry
  call void @trackDynInfo(i64 280)
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64, !clap !310
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64, !clap !311
  %myInsert1 = insertelement <2 x i64> undef, i64 281, i64 0
  %myInsert2 = insertelement <2 x i64> %myInsert1, i64 282, i64 1
  call void @addUses_2(i64 283, <2 x i64> %myInsert2)
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !clap !312
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3, !clap !313
  %myInsert3 = insertelement <1 x i64> undef, i64 284, i64 0
  call void @addUses_1(i64 285, <1 x i64> %myInsert3)
  %0 = load i64, i64* %__width_.i, align 8, !tbaa !314, !clap !315
  %myInsert4 = insertelement <2 x i64> undef, i64 285, i64 0
  %myInsert5 = insertelement <2 x i64> %myInsert4, i64 283, i64 1
  call void @addUses_2(i64 286, <2 x i64> %myInsert5)
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub, !clap !316
  %myInsert6 = insertelement <2 x i64> undef, i64 285, i64 0
  %myInsert7 = insertelement <2 x i64> %myInsert6, i64 283, i64 1
  call void @addUses_2(i64 287, <2 x i64> %myInsert7)
  %sub = sub nsw i64 %0, %sub.ptr.sub, !clap !317
  %myInsert8 = insertelement <2 x i64> undef, i64 286, i64 0
  %myInsert9 = insertelement <2 x i64> %myInsert8, i64 287, i64 1
  call void @addUses_2(i64 288, <2 x i64> %myInsert9)
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0, !clap !318
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64, !clap !319
  %myInsert10 = insertelement <2 x i64> undef, i64 289, i64 0
  %myInsert11 = insertelement <2 x i64> %myInsert10, i64 282, i64 1
  call void @addUses_2(i64 290, <2 x i64> %myInsert11)
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast, !clap !320
  %myInsert12 = insertelement <1 x i64> undef, i64 290, i64 0
  call void @addUses_1(i64 291, <1 x i64> %myInsert12)
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !clap !321
  %myInsert13 = insertelement <1 x i64> undef, i64 291, i64 0
  call void @addUses_1(i64 292, <1 x i64> %myInsert13)
  br i1 %cmp7, label %if.then8, label %if.end15, !clap !322

if.then8:                                         ; preds = %if.end
  call void @trackDynInfo(i64 292)
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !323
  %myInsert14 = insertelement <1 x i64> undef, i64 293, i64 0
  call void @addUses_1(i64 294, <1 x i64> %myInsert14)
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !tbaa !208, !clap !324
  %myInsert15 = insertelement <1 x i64> undef, i64 294, i64 0
  call void @addUses_1(i64 295, <1 x i64> %myInsert15)
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12, !clap !325
  %myInsert16 = insertelement <1 x i64> undef, i64 295, i64 0
  call void @addUses_1(i64 296, <1 x i64> %myInsert16)
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8, !clap !326
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6)
  %myInsert17 = insertelement <2 x i64> undef, i64 290, i64 0
  call void @addUses_2(i64 297, <2 x i64> %myInsert17)
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6, !clap !327
  %myInsert18 = insertelement <1 x i64> undef, i64 297, i64 0
  call void @addUses_1(i64 298, <1 x i64> %myInsert18)
  br i1 %cmp11, label %if.end15, label %return, !clap !328

if.end15:                                         ; preds = %if.then8, %if.end
  call void @trackDynInfo(i64 292)
  %myInsert19 = insertelement <1 x i64> undef, i64 288, i64 0
  call void @addUses_1(i64 299, <1 x i64> %myInsert19)
  %cmp16 = icmp sgt i64 %__ns.0, 0, !clap !329
  %myInsert20 = insertelement <1 x i64> undef, i64 299, i64 0
  call void @addUses_1(i64 300, <1 x i64> %myInsert20)
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26, !clap !330

if.end.i.i.i:                                     ; preds = %if.end15
  call void @trackDynInfo(i64 300)
  %myInsert21 = insertelement <1 x i64> undef, i64 278, i64 0
  call void @addUses_1(i64 301, <1 x i64> %myInsert21)
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*, !clap !331
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #9
  %myInsert22 = insertelement <1 x i64> undef, i64 288, i64 0
  call void @addUses_1(i64 302, <1 x i64> %myInsert22)
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23, !clap !332
  %myInsert23 = insertelement <1 x i64> undef, i64 302, i64 0
  call void @addUses_1(i64 303, <1 x i64> %myInsert23)
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i, !clap !333

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  call void @trackDynInfo(i64 303)
  %myInsert24 = insertelement <1 x i64> undef, i64 288, i64 0
  call void @addUses_1(i64 304, <1 x i64> %myInsert24)
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16, !clap !334
  %myInsert25 = insertelement <1 x i64> undef, i64 304, i64 0
  call void @addUses_1(i64 305, <1 x i64> %myInsert25)
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16, !clap !335
  %myInsert26 = insertelement <1 x i64> undef, i64 305, i64 0
  call void @addUses_1(i64 306, <1 x i64> %myInsert26)
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #10, !clap !336
  %myInsert27 = insertelement <1 x i64> undef, i64 278, i64 0
  call void @addUses_1(i64 307, <1 x i64> %myInsert27)
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !337
  %myInsert28 = insertelement <2 x i64> undef, i64 306, i64 0
  %myInsert29 = insertelement <2 x i64> %myInsert28, i64 307, i64 1
  call void @addUses_2(i64 308, <2 x i64> %myInsert29)
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !338, !clap !340
  %myInsert30 = insertelement <1 x i64> undef, i64 305, i64 0
  call void @addUses_1(i64 309, <1 x i64> %myInsert30)
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1, !clap !341
  %myInsert31 = insertelement <1 x i64> undef, i64 278, i64 0
  call void @addUses_1(i64 310, <1 x i64> %myInsert31)
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !clap !342
  %myInsert32 = insertelement <2 x i64> undef, i64 309, i64 0
  %myInsert33 = insertelement <2 x i64> %myInsert32, i64 310, i64 1
  call void @addUses_2(i64 311, <2 x i64> %myInsert33)
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !343, !clap !344
  %myInsert34 = insertelement <1 x i64> undef, i64 278, i64 0
  call void @addUses_1(i64 312, <1 x i64> %myInsert34)
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !clap !345
  %myInsert35 = insertelement <2 x i64> undef, i64 288, i64 0
  %myInsert36 = insertelement <2 x i64> %myInsert35, i64 312, i64 1
  call void @addUses_2(i64 313, <2 x i64> %myInsert36)
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !tbaa !346, !clap !347
  %myInsert37 = insertelement <1 x i64> undef, i64 278, i64 0
  call void @addUses_1(i64 314, <1 x i64> %myInsert37)
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !348
  %myInsert38 = insertelement <1 x i64> undef, i64 314, i64 0
  call void @addUses_1(i64 315, <1 x i64> %myInsert38)
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0, !clap !349
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !350

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @trackDynInfo(i64 303)
  %myInsert39 = insertelement <1 x i64> undef, i64 288, i64 0
  call void @addUses_1(i64 317, <1 x i64> %myInsert39)
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8, !clap !351
  %myInsert40 = insertelement <1 x i64> undef, i64 317, i64 0
  call void @addUses_1(i64 318, <1 x i64> %myInsert40)
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1, !clap !352
  %myInsert41 = insertelement <2 x i64> undef, i64 318, i64 0
  %myInsert42 = insertelement <2 x i64> %myInsert41, i64 301, i64 1
  call void @addUses_2(i64 319, <2 x i64> %myInsert42)
  store i8 %conv.i.i.i.i, i8* %3, align 8, !tbaa !353, !clap !354
  %myInsert43 = insertelement <1 x i64> undef, i64 278, i64 0
  call void @addUses_1(i64 320, <1 x i64> %myInsert43)
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !clap !355
  %myInsert44 = insertelement <1 x i64> undef, i64 320, i64 0
  call void @addUses_1(i64 321, <1 x i64> %myInsert44)
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0, !clap !356
  %myInsert45 = insertelement <1 x i64> undef, i64 278, i64 0
  call void @addUses_1(i64 322, <1 x i64> %myInsert45)
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !clap !357
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !clap !358

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !359
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ], !clap !360
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !clap !361
  call void @trackDynInfo(i64 303)
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #9
  %myInsert46 = insertelement <2 x i64> undef, i64 326, i64 0
  %myInsert47 = insertelement <2 x i64> %myInsert46, i64 288, i64 1
  call void @addUses_2(i64 327, <2 x i64> %myInsert47)
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0, !clap !362
  %myInsert48 = insertelement <1 x i64> undef, i64 327, i64 0
  call void @addUses_1(i64 328, <1 x i64> %myInsert48)
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !353, !clap !363
  %myInsert49 = insertelement <1 x i64> undef, i64 301, i64 0
  call void @addUses_1(i64 329, <1 x i64> %myInsert49)
  %4 = load i8, i8* %3, align 8, !tbaa !353, !clap !364
  %myInsert50 = insertelement <1 x i64> undef, i64 329, i64 0
  call void @addUses_1(i64 330, <1 x i64> %myInsert50)
  %5 = and i8 %4, 1, !clap !365
  %myInsert51 = insertelement <1 x i64> undef, i64 330, i64 0
  call void @addUses_1(i64 331, <1 x i64> %myInsert51)
  %tobool.i.i.i = icmp eq i8 %5, 0, !clap !366
  %myInsert52 = insertelement <1 x i64> undef, i64 325, i64 0
  call void @addUses_1(i64 332, <1 x i64> %myInsert52)
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !clap !367
  %myInsert53 = insertelement <3 x i64> undef, i64 331, i64 0
  %myInsert54 = insertelement <3 x i64> %myInsert53, i64 324, i64 1
  %myInsert55 = insertelement <3 x i64> %myInsert54, i64 332, i64 2
  call void @addUses_3(i64 333, <3 x i64> %myInsert55)
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6, !clap !368
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !369
  %myInsert56 = insertelement <1 x i64> undef, i64 334, i64 0
  call void @addUses_1(i64 335, <1 x i64> %myInsert56)
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !tbaa !208, !clap !370
  %myInsert57 = insertelement <1 x i64> undef, i64 335, i64 0
  call void @addUses_1(i64 336, <1 x i64> %myInsert57)
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12, !clap !371
  %myInsert58 = insertelement <1 x i64> undef, i64 336, i64 0
  call void @addUses_1(i64 337, <1 x i64> %myInsert58)
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8, !clap !372
  %myInsert59 = insertelement <3 x i64> undef, i64 333, i64 0
  %myInsert60 = insertelement <3 x i64> %myInsert59, i64 288, i64 1
  %myInsert61 = insertelement <3 x i64> %myInsert60, i64 337, i64 2
  call void @addUses_3(i64 338, <3 x i64> %myInsert61)
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad, !clap !373

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %myInsert62 = insertelement <2 x i64> undef, i64 338, i64 0
  %myInsert63 = insertelement <2 x i64> %myInsert62, i64 288, i64 1
  call void @addUses_2(i64 339, <2 x i64> %myInsert63)
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0, !clap !374
  %myInsert64 = insertelement <1 x i64> undef, i64 301, i64 0
  call void @addUses_1(i64 340, <1 x i64> %myInsert64)
  %9 = load i8, i8* %3, align 8, !tbaa !353, !clap !375
  %myInsert65 = insertelement <1 x i64> undef, i64 340, i64 0
  call void @addUses_1(i64 341, <1 x i64> %myInsert65)
  %10 = and i8 %9, 1, !clap !376
  %myInsert66 = insertelement <1 x i64> undef, i64 341, i64 0
  call void @addUses_1(i64 342, <1 x i64> %myInsert66)
  %tobool.i.i.i89 = icmp eq i8 %10, 0, !clap !377
  %myInsert67 = insertelement <1 x i64> undef, i64 342, i64 0
  call void @addUses_1(i64 343, <1 x i64> %myInsert67)
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i, !clap !378

if.then.i.i:                                      ; preds = %invoke.cont
  call void @trackDynInfo(i64 343)
  %myInsert68 = insertelement <1 x i64> undef, i64 325, i64 0
  call void @addUses_1(i64 344, <1 x i64> %myInsert68)
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !338, !clap !379
  %myInsert69 = insertelement <1 x i64> undef, i64 344, i64 0
  call void @addUses_1(i64 345, <1 x i64> %myInsert69)
  call void @_ZdlPv(i8* %11) #11, !clap !380
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, !clap !381

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @trackDynInfo(i64 343)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #9
  %myInsert70 = insertelement <1 x i64> undef, i64 339, i64 0
  call void @addUses_1(i64 347, <1 x i64> %myInsert70)
  br i1 %cmp21, label %if.end26, label %return, !clap !382

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup, !clap !383
  %myInsert71 = insertelement <1 x i64> undef, i64 301, i64 0
  call void @addUses_1(i64 349, <1 x i64> %myInsert71)
  %13 = load i8, i8* %3, align 8, !tbaa !353, !clap !384
  %myInsert72 = insertelement <1 x i64> undef, i64 349, i64 0
  call void @addUses_1(i64 350, <1 x i64> %myInsert72)
  %14 = and i8 %13, 1, !clap !385
  %myInsert73 = insertelement <1 x i64> undef, i64 350, i64 0
  call void @addUses_1(i64 351, <1 x i64> %myInsert73)
  %tobool.i.i.i92 = icmp eq i8 %14, 0, !clap !386
  %myInsert74 = insertelement <1 x i64> undef, i64 351, i64 0
  call void @addUses_1(i64 352, <1 x i64> %myInsert74)
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94, !clap !387

if.then.i.i94:                                    ; preds = %lpad
  call void @trackDynInfo(i64 352)
  %myInsert75 = insertelement <1 x i64> undef, i64 325, i64 0
  call void @addUses_1(i64 353, <1 x i64> %myInsert75)
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !338, !clap !388
  %myInsert76 = insertelement <1 x i64> undef, i64 353, i64 0
  call void @addUses_1(i64 354, <1 x i64> %myInsert76)
  call void @_ZdlPv(i8* %15) #11, !clap !389
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, !clap !390

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @trackDynInfo(i64 352)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #9
  %myInsert77 = insertelement <1 x i64> undef, i64 348, i64 0
  call void @addUses_1(i64 356, <1 x i64> %myInsert77)
  resume { i8*, i32 } %12, !clap !391

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  call void @trackDynInfo(i64 300)
  %myInsert78 = insertelement <2 x i64> undef, i64 281, i64 0
  %myInsert79 = insertelement <2 x i64> %myInsert78, i64 289, i64 1
  call void @addUses_2(i64 357, <2 x i64> %myInsert79)
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4, !clap !392
  %myInsert80 = insertelement <1 x i64> undef, i64 357, i64 0
  call void @addUses_1(i64 358, <1 x i64> %myInsert80)
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !clap !393
  %myInsert81 = insertelement <1 x i64> undef, i64 358, i64 0
  call void @addUses_1(i64 359, <1 x i64> %myInsert81)
  br i1 %cmp30, label %if.then31, label %if.end38, !clap !394

if.then31:                                        ; preds = %if.end26
  call void @trackDynInfo(i64 359)
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !clap !395
  %myInsert82 = insertelement <1 x i64> undef, i64 360, i64 0
  call void @addUses_1(i64 361, <1 x i64> %myInsert82)
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !tbaa !208, !clap !396
  %myInsert83 = insertelement <1 x i64> undef, i64 361, i64 0
  call void @addUses_1(i64 362, <1 x i64> %myInsert83)
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !clap !397
  %myInsert84 = insertelement <1 x i64> undef, i64 362, i64 0
  call void @addUses_1(i64 363, <1 x i64> %myInsert84)
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !clap !398
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29)
  %myInsert85 = insertelement <2 x i64> undef, i64 357, i64 0
  call void @addUses_2(i64 364, <2 x i64> %myInsert85)
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29, !clap !399
  %myInsert86 = insertelement <1 x i64> undef, i64 364, i64 0
  call void @addUses_1(i64 365, <1 x i64> %myInsert86)
  br i1 %cmp34, label %if.end38, label %return, !clap !400

if.end38:                                         ; preds = %if.then31, %if.end26
  call void @trackDynInfo(i64 359)
  %myInsert87 = insertelement <1 x i64> undef, i64 284, i64 0
  call void @addUses_1(i64 366, <1 x i64> %myInsert87)
  store i64 0, i64* %__width_.i, align 8, !tbaa !314, !clap !401
  br label %return, !clap !402

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ], !clap !403
  call void @trackDynInfo(i64 280)
  %myInsert88 = insertelement <1 x i64> undef, i64 368, i64 0
  call void @addUses_1(i64 369, <1 x i64> %myInsert88)
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2, !clap !404
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #3

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #3

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #8

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 8) #10, !clap !405
  %myInsert = insertelement <1 x i64> undef, i64 370, i64 0
  call void @addUses_1(i64 371, <1 x i64> %myInsert)
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !clap !406
  %myInsert1 = insertelement <1 x i64> undef, i64 371, i64 0
  call void @addUses_1(i64 372, <1 x i64> %myInsert1)
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !clap !407

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #10
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !clap !408

invoke.cont3:                                     ; preds = %invoke.cont
  %myInsert2 = insertelement <1 x i64> undef, i64 370, i64 0
  call void @addUses_1(i64 374, <1 x i64> %myInsert2)
  %1 = ptrtoint i8* %call to i64, !clap !409
  %2 = ptrtoint void ()* %__f to i64, !clap !410
  %myInsert3 = insertelement <1 x i64> undef, i64 373, i64 0
  call void @addUses_1(i64 376, <1 x i64> %myInsert3)
  %3 = bitcast i8* %call4 to i64*, !clap !411
  %myInsert4 = insertelement <2 x i64> undef, i64 374, i64 0
  %myInsert5 = insertelement <2 x i64> %myInsert4, i64 376, i64 1
  call void @addUses_2(i64 377, <2 x i64> %myInsert5)
  store i64 %1, i64* %3, align 8, !tbaa !412, !clap !414
  %myInsert6 = insertelement <1 x i64> undef, i64 373, i64 0
  call void @addUses_1(i64 378, <1 x i64> %myInsert6)
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !clap !415
  %myInsert7 = insertelement <1 x i64> undef, i64 378, i64 0
  call void @addUses_1(i64 379, <1 x i64> %myInsert7)
  %5 = bitcast i8* %4 to i64*, !clap !416
  %myInsert8 = insertelement <2 x i64> undef, i64 375, i64 0
  %myInsert9 = insertelement <2 x i64> %myInsert8, i64 379, i64 1
  call void @addUses_2(i64 380, <2 x i64> %myInsert9)
  store i64 %2, i64* %5, align 8, !tbaa !417, !clap !419
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !clap !420
  %myInsert10 = insertelement <2 x i64> undef, i64 381, i64 0
  %myInsert11 = insertelement <2 x i64> %myInsert10, i64 373, i64 1
  call void @addUses_2(i64 382, <2 x i64> %myInsert11)
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !clap !421

invoke.cont12:                                    ; preds = %invoke.cont3
  %myInsert12 = insertelement <1 x i64> undef, i64 382, i64 0
  call void @addUses_1(i64 383, <1 x i64> %myInsert12)
  %cmp = icmp eq i32 %call.i31, 0, !clap !422
  %myInsert13 = insertelement <1 x i64> undef, i64 383, i64 0
  call void @addUses_1(i64 384, <1 x i64> %myInsert13)
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !clap !423

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  call void @trackDynInfo(i64 384)
  ret void, !clap !424

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !clap !425
  %myInsert14 = insertelement <1 x i64> undef, i64 386, i64 0
  call void @addUses_1(i64 387, <1 x i64> %myInsert14)
  %7 = extractvalue { i8*, i32 } %6, 0, !clap !426
  %myInsert15 = insertelement <1 x i64> undef, i64 386, i64 0
  call void @addUses_1(i64 388, <1 x i64> %myInsert15)
  %8 = extractvalue { i8*, i32 } %6, 1, !clap !427
  %myInsert16 = insertelement <1 x i64> undef, i64 370, i64 0
  call void @addUses_1(i64 389, <1 x i64> %myInsert16)
  tail call void @_ZdlPv(i8* nonnull %call) #11, !clap !428
  br label %eh.resume, !clap !429

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !clap !430
  br label %delete.notnull.i.i.i.i, !clap !431

if.else:                                          ; preds = %invoke.cont12
  call void @trackDynInfo(i64 384)
  %myInsert17 = insertelement <1 x i64> undef, i64 382, i64 0
  call void @addUses_1(i64 393, <1 x i64> %myInsert17)
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0)) #12
          to label %invoke.cont16 unwind label %lpad15, !clap !432

invoke.cont16:                                    ; preds = %if.else
  unreachable, !clap !433

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !clap !434
  br label %delete.notnull.i.i.i.i, !clap !435

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ], !clap !436
  %myInsert18 = insertelement <1 x i64> undef, i64 397, i64 0
  call void @addUses_1(i64 398, <1 x i64> %myInsert18)
  %11 = extractvalue { i8*, i32 } %.sink24, 0, !clap !437
  %myInsert19 = insertelement <1 x i64> undef, i64 397, i64 0
  call void @addUses_1(i64 399, <1 x i64> %myInsert19)
  %12 = extractvalue { i8*, i32 } %.sink24, 1, !clap !438
  %myInsert20 = insertelement <1 x i64> undef, i64 373, i64 0
  call void @addUses_1(i64 400, <1 x i64> %myInsert20)
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !clap !439
  %myInsert21 = insertelement <1 x i64> undef, i64 400, i64 0
  call void @addUses_1(i64 401, <1 x i64> %myInsert21)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !50, !clap !440
  %myInsert22 = insertelement <1 x i64> undef, i64 400, i64 0
  call void @addUses_1(i64 402, <1 x i64> %myInsert22)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !50, !clap !441
  %myInsert23 = insertelement <1 x i64> undef, i64 401, i64 0
  call void @addUses_1(i64 403, <1 x i64> %myInsert23)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !clap !442
  %myInsert24 = insertelement <1 x i64> undef, i64 403, i64 0
  call void @addUses_1(i64 404, <1 x i64> %myInsert24)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !443

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @trackDynInfo(i64 404)
  %myInsert25 = insertelement <1 x i64> undef, i64 401, i64 0
  call void @addUses_1(i64 405, <1 x i64> %myInsert25)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #9, !clap !444
  %myInsert26 = insertelement <1 x i64> undef, i64 401, i64 0
  call void @addUses_1(i64 406, <1 x i64> %myInsert26)
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !clap !445
  %myInsert27 = insertelement <1 x i64> undef, i64 406, i64 0
  call void @addUses_1(i64 407, <1 x i64> %myInsert27)
  tail call void @_ZdlPv(i8* %14) #11, !clap !446
  br label %ehcleanup18.thread, !clap !447

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @trackDynInfo(i64 404)
  %myInsert28 = insertelement <1 x i64> undef, i64 373, i64 0
  call void @addUses_1(i64 409, <1 x i64> %myInsert28)
  tail call void @_ZdlPv(i8* nonnull %call4) #11, !clap !448
  br label %eh.resume, !clap !449

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !clap !450
  %myInsert29 = insertelement <1 x i64> undef, i64 411, i64 0
  call void @addUses_1(i64 412, <1 x i64> %myInsert29)
  %16 = extractvalue { i8*, i32 } %15, 0, !clap !451
  %myInsert30 = insertelement <1 x i64> undef, i64 411, i64 0
  call void @addUses_1(i64 413, <1 x i64> %myInsert30)
  %17 = extractvalue { i8*, i32 } %15, 1, !clap !452
  %myInsert31 = insertelement <1 x i64> undef, i64 371, i64 0
  call void @addUses_1(i64 414, <1 x i64> %myInsert31)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #9, !clap !453
  %myInsert32 = insertelement <1 x i64> undef, i64 370, i64 0
  call void @addUses_1(i64 415, <1 x i64> %myInsert32)
  tail call void @_ZdlPv(i8* nonnull %call) #11, !clap !454
  br label %eh.resume, !clap !455

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ], !clap !456
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ], !clap !457
  %myInsert33 = insertelement <1 x i64> undef, i64 418, i64 0
  call void @addUses_1(i64 419, <1 x i64> %myInsert33)
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !clap !458
  %myInsert34 = insertelement <2 x i64> undef, i64 419, i64 0
  %myInsert35 = insertelement <2 x i64> %myInsert34, i64 417, i64 1
  call void @addUses_2(i64 420, <2 x i64> %myInsert35)
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !clap !459
  %myInsert36 = insertelement <1 x i64> undef, i64 420, i64 0
  call void @addUses_1(i64 421, <1 x i64> %myInsert36)
  resume { i8*, i32 } %lpad.val20, !clap !460
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !clap !461

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !462
  %0 = bitcast i8* %__vp to i8**, !clap !463
  %myInsert = insertelement <1 x i64> undef, i64 424, i64 0
  call void @addUses_1(i64 425, <1 x i64> %myInsert)
  %1 = load i8*, i8** %0, align 8, !tbaa !50, !clap !464
  %myInsert1 = insertelement <1 x i64> undef, i64 423, i64 0
  call void @addUses_1(i64 426, <1 x i64> %myInsert1)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !50, !clap !465
  %myInsert2 = insertelement <1 x i64> undef, i64 422, i64 0
  call void @addUses_1(i64 427, <1 x i64> %myInsert2)
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !clap !466
  %myInsert3 = insertelement <1 x i64> undef, i64 427, i64 0
  call void @addUses_1(i64 428, <1 x i64> %myInsert3)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !467, !clap !469
  %myInsert4 = insertelement <2 x i64> undef, i64 428, i64 0
  %myInsert5 = insertelement <2 x i64> %myInsert4, i64 425, i64 1
  call void @addUses_2(i64 429, <2 x i64> %myInsert5)
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !clap !470

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !clap !471
  %myInsert6 = insertelement <1 x i64> undef, i64 430, i64 0
  call void @addUses_1(i64 431, <1 x i64> %myInsert6)
  %3 = bitcast i8* %value.i.i.i to void ()**, !clap !472
  %myInsert7 = insertelement <1 x i64> undef, i64 431, i64 0
  call void @addUses_1(i64 432, <1 x i64> %myInsert7)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !50, !clap !473
  %myInsert8 = insertelement <1 x i64> undef, i64 432, i64 0
  call void @addUses_1(i64 433, <1 x i64> %myInsert8)
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !clap !474

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  %myInsert9 = insertelement <1 x i64> undef, i64 423, i64 0
  call void @addUses_1(i64 434, <1 x i64> %myInsert9)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !50, !clap !475
  %myInsert10 = insertelement <1 x i64> undef, i64 423, i64 0
  call void @addUses_1(i64 435, <1 x i64> %myInsert10)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !50, !clap !476
  %myInsert11 = insertelement <1 x i64> undef, i64 434, i64 0
  call void @addUses_1(i64 436, <1 x i64> %myInsert11)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !clap !477
  %myInsert12 = insertelement <1 x i64> undef, i64 436, i64 0
  call void @addUses_1(i64 437, <1 x i64> %myInsert12)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !clap !478

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  call void @trackDynInfo(i64 437)
  %myInsert13 = insertelement <1 x i64> undef, i64 434, i64 0
  call void @addUses_1(i64 438, <1 x i64> %myInsert13)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #9, !clap !479
  %myInsert14 = insertelement <1 x i64> undef, i64 434, i64 0
  call void @addUses_1(i64 439, <1 x i64> %myInsert14)
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !clap !480
  %myInsert15 = insertelement <1 x i64> undef, i64 439, i64 0
  call void @addUses_1(i64 440, <1 x i64> %myInsert15)
  tail call void @_ZdlPv(i8* %6) #11, !clap !481
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !clap !482

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  call void @trackDynInfo(i64 437)
  tail call void @_ZdlPv(i8* nonnull %__vp) #11, !clap !483
  ret i8* null, !clap !484

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !clap !485
  br label %delete.notnull.i.i.i.i, !clap !486

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !clap !487
  %tobool.i.i.i = icmp eq i8* %__vp, null, !clap !488
  %myInsert16 = insertelement <1 x i64> undef, i64 447, i64 0
  call void @addUses_1(i64 448, <1 x i64> %myInsert16)
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !clap !489

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  call void @trackDynInfo(i64 448)
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !clap !490
  br label %delete.notnull.i.i.i.i, !clap !491

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !clap !492
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ], !clap !493
  %myInsert17 = insertelement <1 x i64> undef, i64 451, i64 0
  call void @addUses_1(i64 453, <1 x i64> %myInsert17)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !50, !clap !494
  %myInsert18 = insertelement <1 x i64> undef, i64 451, i64 0
  call void @addUses_1(i64 454, <1 x i64> %myInsert18)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !50, !clap !495
  %myInsert19 = insertelement <1 x i64> undef, i64 453, i64 0
  call void @addUses_1(i64 455, <1 x i64> %myInsert19)
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !clap !496
  %myInsert20 = insertelement <1 x i64> undef, i64 455, i64 0
  call void @addUses_1(i64 456, <1 x i64> %myInsert20)
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !clap !497

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  call void @trackDynInfo(i64 456)
  %myInsert21 = insertelement <1 x i64> undef, i64 453, i64 0
  call void @addUses_1(i64 457, <1 x i64> %myInsert21)
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #9, !clap !498
  %myInsert22 = insertelement <1 x i64> undef, i64 453, i64 0
  call void @addUses_1(i64 458, <1 x i64> %myInsert22)
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !clap !499
  %myInsert23 = insertelement <1 x i64> undef, i64 458, i64 0
  call void @addUses_1(i64 459, <1 x i64> %myInsert23)
  tail call void @_ZdlPv(i8* %8) #11, !clap !500
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !clap !501

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  call void @trackDynInfo(i64 456)
  tail call void @_ZdlPv(i8* nonnull %__vp) #11, !clap !502
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !clap !503

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ], !clap !504
  %myInsert24 = insertelement <1 x i64> undef, i64 463, i64 0
  call void @addUses_1(i64 464, <1 x i64> %myInsert24)
  resume { i8*, i32 } %lpad.phi30, !clap !505
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #8

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #9

declare void @preNonAtomicStore_char(i8*, i8)

declare void @myPrintf_64(i64)

declare void @myPrintf_32(i32)

declare void @myPrintf_8(i8)

declare void @myPrintf_81({ i8, i1 })

declare void @myPrintf_1(i1)

declare void @preNonAtomicStore_int(i8*, i32)

declare void @preNonAtomicStore_double(i8*, i64)

declare void @preAtomicStore_char(i8*, i8, i32)

declare void @preAtomicStore_int(i8*, i32, i32)

declare void @preAtomicStore_double(i8*, i64, i32)

declare i8 @preNonAtomicLoad_char(i8*)

declare i32 @preNonAtomicLoad_int(i8*)

declare i64 @preNonAtomicLoad_double(i8*)

declare i8 @preAtomicLoad_char(i8*, i64, i32)

declare i32 @preAtomicLoad_int(i8*, i64, i32)

declare i64 @preAtomicLoad_double(i8*, i64, i32)

declare void @postAtomicLoad_char(i8*, i8, i32)

declare void @postAtomicLoad_int(i8*, i32, i32)

declare void @postAtomicLoad_double(i8*, i64, i32)

declare void @preFence(i32)

declare void @preTryLock(i8*)

declare void @preLock(i8*)

declare void @preUnlock(i8*)

declare i1 @preCmpXchg_8(i8*, i8, i8, i32, i32)

declare i1 @preCmpXchg_16(i8*, i16, i16, i32, i32)

declare i1 @preCmpXchg_32(i8*, i32, i32, i32, i32)

declare i1 @preCmpXchg_64(i8*, i64, i64, i32, i32)

declare i8 @preRMW_Xchg_8(i8*, i8, i32)

declare i8 @preRMW_Add_8(i8*, i8, i32)

declare i8 @preRMW_Sub_8(i8*, i8, i32)

declare i8 @preRMW_And_8(i8*, i8, i32)

declare i8 @preRMW_Nand_8(i8*, i8, i32)

declare i8 @preRMW_Or_8(i8*, i8, i32)

declare i8 @preRMW_Xor_8(i8*, i8, i32)

declare i8 @preRMW_Max_8(i8*, i8, i32)

declare i8 @preRMW_Min_8(i8*, i8, i32)

declare i8 @preRMW_UMax_8(i8*, i8, i32)

declare i8 @preRMW_UMin_8(i8*, i8, i32)

declare i16 @preRMW_Xchg_16(i8*, i16, i32)

declare i16 @preRMW_Add_16(i8*, i16, i32)

declare i16 @preRMW_Sub_16(i8*, i16, i32)

declare i16 @preRMW_And_16(i8*, i16, i32)

declare i16 @preRMW_Nand_16(i8*, i16, i32)

declare i16 @preRMW_Or_16(i8*, i16, i32)

declare i16 @preRMW_Xor_16(i8*, i16, i32)

declare i16 @preRMW_Max_16(i8*, i16, i32)

declare i16 @preRMW_Min_16(i8*, i16, i32)

declare i16 @preRMW_UMax_16(i8*, i16, i32)

declare i16 @preRMW_UMin_16(i8*, i16, i32)

declare i32 @preRMW_Xchg_32(i8*, i32, i32)

declare i32 @preRMW_Add_32(i8*, i32, i32)

declare i32 @preRMW_Sub_32(i8*, i32, i32)

declare i32 @preRMW_And_32(i8*, i32, i32)

declare i32 @preRMW_Nand_32(i8*, i32, i32)

declare i32 @preRMW_Or_32(i8*, i32, i32)

declare i32 @preRMW_Xor_32(i8*, i32, i32)

declare i32 @preRMW_Max_32(i8*, i32, i32)

declare i32 @preRMW_Min_32(i8*, i32, i32)

declare i32 @preRMW_UMax_32(i8*, i32, i32)

declare i32 @preRMW_UMin_32(i8*, i32, i32)

declare i64 @preRMW_Xchg_64(i8*, i64, i32)

declare i64 @preRMW_Add_64(i8*, i64, i32)

declare i64 @preRMW_Sub_64(i8*, i64, i32)

declare i64 @preRMW_And_64(i8*, i64, i32)

declare i64 @preRMW_Nand_64(i8*, i64, i32)

declare i64 @preRMW_Or_64(i8*, i64, i32)

declare i64 @preRMW_Xor_64(i8*, i64, i32)

declare i64 @preRMW_Max_64(i8*, i64, i32)

declare i64 @preRMW_Min_64(i8*, i64, i32)

declare i64 @preRMW_UMax_64(i8*, i64, i32)

declare i64 @preRMW_UMin_64(i8*, i64, i32)

declare void @trackDynInfo(i64)

declare void @addUses_1(i64, <1 x i64>)

declare void @addUses_2(i64, <2 x i64>)

declare void @addUses_3(i64, <3 x i64>)

declare void @addUses_4(i64, <4 x i64>)

declare void @addUses_5(i64, <5 x i64>)

declare void @addUses_6(i64, <6 x i64>)

declare void @addUses_7(i64, <7 x i64>)

declare void @addUses_8(i64, <8 x i64>)

declare void @addUses_9(i64, <9 x i64>)

declare void @addUses_10(i64, <10 x i64>)

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
!2 = !{i32 1}
!3 = !{i32 2}
!4 = !{i32 3}
!5 = !{i32 4}
!6 = !{i32 5}
!7 = !{i32 6}
!8 = !{i32 7}
!9 = !{i32 8}
!10 = !{i32 9}
!11 = !{i32 10}
!12 = !{i32 11}
!13 = !{i32 12}
!14 = !{i32 13}
!15 = !{i32 14}
!16 = !{i32 15}
!17 = !{i32 16}
!18 = !{i32 17}
!19 = !{i32 18}
!20 = !{i32 19}
!21 = !{i32 20}
!22 = !{i32 21}
!23 = !{i32 22}
!24 = !{i32 23}
!25 = !{i32 24}
!26 = !{i32 25}
!27 = !{i32 26}
!28 = !{i32 27}
!29 = !{i32 28}
!30 = !{i32 29}
!31 = !{i32 30}
!32 = !{i32 31}
!33 = !{i32 32}
!34 = !{i32 33}
!35 = !{i32 34}
!36 = !{i32 35}
!37 = !{i32 36}
!38 = !{i32 37}
!39 = !{i32 38}
!40 = !{i32 39}
!41 = !{i32 40}
!42 = !{i32 41}
!43 = !{i32 42}
!44 = !{i32 43}
!45 = !{i32 44}
!46 = !{i32 45}
!47 = !{i32 46}
!48 = !{i32 47}
!49 = !{i32 48}
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{i32 49}
!55 = !{i32 50}
!56 = !{i32 51}
!57 = !{i32 52}
!58 = !{i32 53}
!59 = !{i32 54}
!60 = !{i32 55}
!61 = !{i32 56}
!62 = !{i32 57}
!63 = !{i32 58}
!64 = !{i32 59}
!65 = !{i32 60}
!66 = !{i32 61}
!67 = !{i32 62}
!68 = !{i32 63}
!69 = !{i32 64}
!70 = !{i32 65}
!71 = !{i32 66}
!72 = !{i32 67}
!73 = !{i32 68}
!74 = !{i32 69}
!75 = !{i32 70}
!76 = !{i32 71}
!77 = !{i32 72}
!78 = !{i32 73}
!79 = !{i32 74}
!80 = !{i32 75}
!81 = !{i32 76}
!82 = !{i32 77}
!83 = !{i32 78}
!84 = !{i32 79}
!85 = !{i32 80}
!86 = !{i32 81}
!87 = !{i32 82}
!88 = !{i32 83}
!89 = !{i32 84}
!90 = !{!91, !92, i64 0}
!91 = !{!"_ZTSN7checker12ModelCheckerE", !92, i64 0, !93, i64 8, !51, i64 32}
!92 = !{!"int", !52, i64 0}
!93 = !{!"_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!94 = !{i32 85}
!95 = !{i32 86}
!96 = !{i32 87}
!97 = !{i32 88}
!98 = !{i32 89}
!99 = !{i32 90}
!100 = !{!101, !51, i64 0}
!101 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !51, i64 0, !51, i64 8, !102, i64 16}
!102 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!103 = !{i32 91}
!104 = !{i32 92}
!105 = !{i32 93}
!106 = !{i32 94}
!107 = !{i32 95}
!108 = !{i32 96}
!109 = !{!101, !51, i64 8}
!110 = !{i32 97}
!111 = !{i32 98}
!112 = !{i32 99}
!113 = !{i32 100}
!114 = !{i32 101}
!115 = !{i32 102}
!116 = !{i32 103}
!117 = !{i32 104}
!118 = !{i32 105}
!119 = !{i32 106}
!120 = !{i32 107}
!121 = !{i32 108}
!122 = !{i32 109}
!123 = !{i32 110}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!126 = distinct !{!126, !"_ZN7checker12ModelChecker10getSchListEv"}
!127 = !{i32 111}
!128 = !{i32 112}
!129 = !{i32 113}
!130 = !{i32 114}
!131 = !{i32 115}
!132 = !{i32 116}
!133 = !{i32 117}
!134 = !{i32 118}
!135 = !{i32 119}
!136 = !{i32 120}
!137 = !{i32 121}
!138 = !{i32 122}
!139 = !{i32 123}
!140 = !{i32 124}
!141 = !{i32 125}
!142 = !{i32 126}
!143 = !{i32 127}
!144 = !{i32 128}
!145 = !{i32 129}
!146 = !{i32 130}
!147 = !{i32 131}
!148 = !{i32 132}
!149 = !{i32 133}
!150 = !{i32 134}
!151 = !{i32 135}
!152 = !{i32 136}
!153 = !{i32 137}
!154 = !{i32 138}
!155 = !{i32 139}
!156 = !{i32 140}
!157 = !{i32 141}
!158 = !{i32 142}
!159 = !{i32 143}
!160 = !{i32 144}
!161 = !{i32 145}
!162 = !{i32 146}
!163 = !{i32 147}
!164 = !{i32 148}
!165 = !{i32 149}
!166 = !{i32 150}
!167 = !{i32 151}
!168 = !{i32 152}
!169 = !{i32 153}
!170 = !{i32 154}
!171 = !{i32 155}
!172 = !{i32 156}
!173 = !{i32 157}
!174 = !{i32 158}
!175 = !{i32 159}
!176 = !{i32 160}
!177 = !{i32 161}
!178 = !{i32 162}
!179 = !{i32 163}
!180 = !{i32 164}
!181 = !{i32 165}
!182 = !{i32 166}
!183 = !{i32 167}
!184 = !{i32 168}
!185 = !{i32 169}
!186 = !{i32 170}
!187 = !{i32 171}
!188 = !{i32 172}
!189 = !{i32 173}
!190 = !{i32 174}
!191 = !{i32 175}
!192 = !{i32 176}
!193 = !{i32 177}
!194 = !{i32 178}
!195 = !{i32 179}
!196 = !{i32 180}
!197 = !{i32 181}
!198 = !{i32 182}
!199 = !{i32 183}
!200 = !{!201, !202, i64 0}
!201 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !202, i64 0, !52, i64 8}
!202 = !{!"bool", !52, i64 0}
!203 = !{i8 0, i8 2}
!204 = !{i32 184}
!205 = !{i32 185}
!206 = !{i32 186}
!207 = !{i32 187}
!208 = !{!209, !209, i64 0}
!209 = !{!"vtable pointer", !53, i64 0}
!210 = !{i32 188}
!211 = !{i32 189}
!212 = !{i32 190}
!213 = !{i32 191}
!214 = !{i32 192}
!215 = !{i32 193}
!216 = !{i32 194}
!217 = !{i32 195}
!218 = !{!219, !51, i64 40}
!219 = !{!"_ZTSNSt3__18ios_baseE", !92, i64 8, !220, i64 16, !220, i64 24, !92, i64 32, !92, i64 36, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !220, i64 72, !220, i64 80, !51, i64 88, !220, i64 96, !220, i64 104, !51, i64 112, !220, i64 120, !220, i64 128}
!220 = !{!"long", !52, i64 0}
!221 = !{i32 196}
!222 = !{i32 197}
!223 = !{i32 198}
!224 = !{i32 199}
!225 = !{!219, !92, i64 8}
!226 = !{i32 200}
!227 = !{i32 201}
!228 = !{i32 202}
!229 = !{i32 203}
!230 = !{!231, !92, i64 144}
!231 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !51, i64 136, !92, i64 144}
!232 = !{i32 204}
!233 = !{i32 205}
!234 = !{i32 206}
!235 = !{i32 207}
!236 = !{i32 208}
!237 = !{i32 209}
!238 = !{i32 210}
!239 = !{i32 211}
!240 = !{i32 212}
!241 = !{i32 213}
!242 = !{i32 214}
!243 = !{i32 215}
!244 = !{i32 216}
!245 = !{i32 217}
!246 = !{i32 218}
!247 = !{i32 219}
!248 = !{i32 220}
!249 = !{i32 221}
!250 = !{i32 222}
!251 = !{i32 223}
!252 = !{i32 224}
!253 = !{i32 225}
!254 = !{i32 226}
!255 = !{i32 227}
!256 = !{i32 228}
!257 = !{i32 229}
!258 = !{i32 230}
!259 = !{i32 231}
!260 = !{i32 232}
!261 = !{i32 233}
!262 = !{i32 234}
!263 = !{i32 235}
!264 = !{i32 236}
!265 = !{i32 237}
!266 = !{i32 238}
!267 = !{!219, !92, i64 32}
!268 = !{i32 239}
!269 = !{i32 240}
!270 = !{i32 241}
!271 = !{i32 242}
!272 = !{i32 243}
!273 = !{i32 244}
!274 = !{i32 245}
!275 = !{i32 246}
!276 = !{i32 247}
!277 = !{i32 248}
!278 = !{i32 249}
!279 = !{i32 250}
!280 = !{i32 251}
!281 = !{i32 252}
!282 = !{i32 253}
!283 = !{i32 254}
!284 = !{i32 255}
!285 = !{i32 256}
!286 = !{i32 257}
!287 = !{i32 258}
!288 = !{i32 259}
!289 = !{i32 260}
!290 = !{i32 261}
!291 = !{i32 262}
!292 = !{i32 263}
!293 = !{i32 264}
!294 = !{i32 265}
!295 = !{i32 266}
!296 = !{i32 267}
!297 = !{i32 268}
!298 = !{i32 269}
!299 = !{i32 270}
!300 = !{i32 271}
!301 = !{i32 272}
!302 = !{i32 273}
!303 = !{i32 274}
!304 = !{i32 275}
!305 = !{i32 276}
!306 = !{i32 277}
!307 = !{i32 278}
!308 = !{i32 279}
!309 = !{i32 280}
!310 = !{i32 281}
!311 = !{i32 282}
!312 = !{i32 283}
!313 = !{i32 284}
!314 = !{!219, !220, i64 24}
!315 = !{i32 285}
!316 = !{i32 286}
!317 = !{i32 287}
!318 = !{i32 288}
!319 = !{i32 289}
!320 = !{i32 290}
!321 = !{i32 291}
!322 = !{i32 292}
!323 = !{i32 293}
!324 = !{i32 294}
!325 = !{i32 295}
!326 = !{i32 296}
!327 = !{i32 297}
!328 = !{i32 298}
!329 = !{i32 299}
!330 = !{i32 300}
!331 = !{i32 301}
!332 = !{i32 302}
!333 = !{i32 303}
!334 = !{i32 304}
!335 = !{i32 305}
!336 = !{i32 306}
!337 = !{i32 307}
!338 = !{!339, !51, i64 16}
!339 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !220, i64 0, !220, i64 8, !51, i64 16}
!340 = !{i32 308}
!341 = !{i32 309}
!342 = !{i32 310}
!343 = !{!339, !220, i64 0}
!344 = !{i32 311}
!345 = !{i32 312}
!346 = !{!339, !220, i64 8}
!347 = !{i32 313}
!348 = !{i32 314}
!349 = !{i32 315}
!350 = !{i32 316}
!351 = !{i32 317}
!352 = !{i32 318}
!353 = !{!52, !52, i64 0}
!354 = !{i32 319}
!355 = !{i32 320}
!356 = !{i32 321}
!357 = !{i32 322}
!358 = !{i32 323}
!359 = !{i32 324}
!360 = !{i32 325}
!361 = !{i32 326}
!362 = !{i32 327}
!363 = !{i32 328}
!364 = !{i32 329}
!365 = !{i32 330}
!366 = !{i32 331}
!367 = !{i32 332}
!368 = !{i32 333}
!369 = !{i32 334}
!370 = !{i32 335}
!371 = !{i32 336}
!372 = !{i32 337}
!373 = !{i32 338}
!374 = !{i32 339}
!375 = !{i32 340}
!376 = !{i32 341}
!377 = !{i32 342}
!378 = !{i32 343}
!379 = !{i32 344}
!380 = !{i32 345}
!381 = !{i32 346}
!382 = !{i32 347}
!383 = !{i32 348}
!384 = !{i32 349}
!385 = !{i32 350}
!386 = !{i32 351}
!387 = !{i32 352}
!388 = !{i32 353}
!389 = !{i32 354}
!390 = !{i32 355}
!391 = !{i32 356}
!392 = !{i32 357}
!393 = !{i32 358}
!394 = !{i32 359}
!395 = !{i32 360}
!396 = !{i32 361}
!397 = !{i32 362}
!398 = !{i32 363}
!399 = !{i32 364}
!400 = !{i32 365}
!401 = !{i32 366}
!402 = !{i32 367}
!403 = !{i32 368}
!404 = !{i32 369}
!405 = !{i32 370}
!406 = !{i32 371}
!407 = !{i32 372}
!408 = !{i32 373}
!409 = !{i32 374}
!410 = !{i32 375}
!411 = !{i32 376}
!412 = !{!413, !51, i64 0}
!413 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !51, i64 0}
!414 = !{i32 377}
!415 = !{i32 378}
!416 = !{i32 379}
!417 = !{!418, !51, i64 0}
!418 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !51, i64 0}
!419 = !{i32 380}
!420 = !{i32 381}
!421 = !{i32 382}
!422 = !{i32 383}
!423 = !{i32 384}
!424 = !{i32 385}
!425 = !{i32 386}
!426 = !{i32 387}
!427 = !{i32 388}
!428 = !{i32 389}
!429 = !{i32 390}
!430 = !{i32 391}
!431 = !{i32 392}
!432 = !{i32 393}
!433 = !{i32 394}
!434 = !{i32 395}
!435 = !{i32 396}
!436 = !{i32 397}
!437 = !{i32 398}
!438 = !{i32 399}
!439 = !{i32 400}
!440 = !{i32 401}
!441 = !{i32 402}
!442 = !{i32 403}
!443 = !{i32 404}
!444 = !{i32 405}
!445 = !{i32 406}
!446 = !{i32 407}
!447 = !{i32 408}
!448 = !{i32 409}
!449 = !{i32 410}
!450 = !{i32 411}
!451 = !{i32 412}
!452 = !{i32 413}
!453 = !{i32 414}
!454 = !{i32 415}
!455 = !{i32 416}
!456 = !{i32 417}
!457 = !{i32 418}
!458 = !{i32 419}
!459 = !{i32 420}
!460 = !{i32 421}
!461 = !{i32 422}
!462 = !{i32 423}
!463 = !{i32 424}
!464 = !{i32 425}
!465 = !{i32 426}
!466 = !{i32 427}
!467 = !{!468, !220, i64 0}
!468 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !220, i64 0}
!469 = !{i32 428}
!470 = !{i32 429}
!471 = !{i32 430}
!472 = !{i32 431}
!473 = !{i32 432}
!474 = !{i32 433}
!475 = !{i32 434}
!476 = !{i32 435}
!477 = !{i32 436}
!478 = !{i32 437}
!479 = !{i32 438}
!480 = !{i32 439}
!481 = !{i32 440}
!482 = !{i32 441}
!483 = !{i32 442}
!484 = !{i32 443}
!485 = !{i32 444}
!486 = !{i32 445}
!487 = !{i32 446}
!488 = !{i32 447}
!489 = !{i32 448}
!490 = !{i32 449}
!491 = !{i32 450}
!492 = !{i32 451}
!493 = !{i32 452}
!494 = !{i32 453}
!495 = !{i32 454}
!496 = !{i32 455}
!497 = !{i32 456}
!498 = !{i32 457}
!499 = !{i32 458}
!500 = !{i32 459}
!501 = !{i32 460}
!502 = !{i32 461}
!503 = !{i32 462}
!504 = !{i32 463}
!505 = !{i32 464}
