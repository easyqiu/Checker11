; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i32 }
%"class.checker::ModelChecker" = type { i32, %"class.std::__1::vector", %"class.checker::Executor"* }
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %"class.checker::Schedule"**, %"class.checker::Schedule"**, %"class.std::__1::__compressed_pair" }
%"class.checker::Schedule" = type opaque
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::__vector_base_common" = type { i8 }
%"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator" = type { i8 }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.2" }
%"class.std::__1::__compressed_pair.2" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.3" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.4, [23 x i8] }
%union.anon.4 = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.10" }
%"class.std::__1::__compressed_pair.10" = type { %"struct.std::__1::__compressed_pair_elem.11" }
%"struct.std::__1::__compressed_pair_elem.11" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr.13" = type { %"class.std::__1::__compressed_pair.14" }
%"class.std::__1::__compressed_pair.14" = type { %"struct.std::__1::__compressed_pair_elem.15" }
%"struct.std::__1::__compressed_pair_elem.15" = type { %"class.std::__1::tuple"* }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.16" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.16" = type { void ()* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@a = global %"struct.std::__1::atomic" zeroinitializer, align 4, !dbg !0
@b = global %"struct.std::__1::atomic" zeroinitializer, align 4, !dbg !3451
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"r1=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"r2=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"Generate a model checker: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@str = private unnamed_addr constant [32 x i8] c"Main thread: creating 2 threads\00"
@str.11 = private unnamed_addr constant [24 x i8] c"Main thread is finished\00"

; Function Attrs: ssp uwtable
define void @_Z1rv() #0 !dbg !4358 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !4362
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @a, i64 0, metadata !4363, metadata !4371), !dbg !4372
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4370, metadata !4371), !dbg !4374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4375, metadata !4371), !dbg !4380
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*
  %0 = call i32 @preAtomicLoad_int(i8* %myCast, i32 2)
  %1 = icmp eq i32 %0, 255
  br i1 %1, label %2, label %3

; <label>:2:                                      ; preds = %entry
  %myCast4 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @postAtomicLoad_int(i8* %myCast4, i32 %0, i32 2)
  br label %5

; <label>:3:                                      ; preds = %3, %entry
  %newLoad5 = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) monotonic, align 4
  %4 = icmp eq i32 %0, %newLoad5
  br i1 %4, label %5, label %3

; <label>:5:                                      ; preds = %3, %2
  %newLoad = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) monotonic, align 4
  %6 = icmp eq i32 %0, 255
  %mySelect = select i1 %6, i32 %newLoad, i32 %0
  call void @postAtomicLoad_int(i8* %myCast, i32 %mySelect, i32 2)
  tail call void @llvm.dbg.value(metadata i32 %mySelect, i64 0, metadata !4360, metadata !4371), !dbg !4382
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @a, i64 0, metadata !4363, metadata !4371), !dbg !4383
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4370, metadata !4371), !dbg !4385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4375, metadata !4371), !dbg !4386
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*
  %7 = call i32 @preAtomicLoad_int(i8* %myCast1, i32 2)
  %newLoad2 = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) monotonic, align 4
  %8 = icmp eq i32 %7, 255
  %mySelect3 = select i1 %8, i32 %newLoad2, i32 %7
  call void @postAtomicLoad_int(i8* %myCast1, i32 %mySelect3, i32 2)
  tail call void @llvm.dbg.value(metadata i32 %mySelect3, i64 0, metadata !4361, metadata !4371), !dbg !4388
  %call2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %mySelect), !dbg !4389
  %call3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %mySelect3), !dbg !4390
  tail call void @checker_thread_end(), !dbg !4391
  ret void, !dbg !4392
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define void @_Z1sv() #0 !dbg !4393 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !4394
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @a, i64 0, metadata !4395, metadata !4371), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4401, metadata !4371), !dbg !4405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4402, metadata !4371), !dbg !4406
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4407, metadata !4371), !dbg !4413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4412, metadata !4371), !dbg !4415
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast, i32 1, i32 2)
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !dbg !4416
  tail call void @checker_thread_end(), !dbg !4418
  ret void, !dbg !4419
}

; Function Attrs: ssp uwtable
define i32 @_Z9user_mainiPPc(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4420 {
entry:
  %t1 = alloca %"class.std::__1::thread", align 8
  %t2 = alloca %"class.std::__1::thread", align 8
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !4424, metadata !4371), !dbg !4503
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !4425, metadata !4371), !dbg !4504
  tail call void @checker_generateExecutor(), !dbg !4505
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !4506
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @a, i64 0, metadata !4507, metadata !4371), !dbg !4511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4510, metadata !4371), !dbg !4513
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4407, metadata !4371), !dbg !4514
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4412, metadata !4371), !dbg !4516
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast, i32 0, i32 7)
  store atomic i32 0, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @a, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !dbg !4517
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @b, i64 0, metadata !4507, metadata !4371), !dbg !4519
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4510, metadata !4371), !dbg !4522
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4407, metadata !4371), !dbg !4523
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4412, metadata !4371), !dbg !4525
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast1, i32 1, i32 7)
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @b, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !dbg !4526
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str, i64 0, i64 0)), !dbg !4527
  %0 = bitcast %"class.std::__1::thread"* %t1 to i8*, !dbg !4528
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10, !dbg !4528
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4426, metadata !4529), !dbg !4530
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4531, metadata !4371), !dbg !4544
  tail call void @llvm.dbg.value(metadata void ()* @_Z1rv, i64 0, metadata !4542, metadata !4371), !dbg !4546
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t1, void ()* nonnull @_Z1rv), !dbg !4547
  %1 = bitcast %"class.std::__1::thread"* %t2 to i8*, !dbg !4548
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #10, !dbg !4548
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !4531, metadata !4371), !dbg !4549
  call void @llvm.dbg.value(metadata void ()* @_Z1sv, i64 0, metadata !4542, metadata !4371), !dbg !4551
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t2, void ()* nonnull @_Z1sv)
          to label %invoke.cont unwind label %lpad, !dbg !4552

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4426, metadata !4529), !dbg !4530
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4553, metadata !4371), !dbg !4557
  %__t_.i32 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t1, i64 0, i32 0, !dbg !4559
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i32, i64 0, metadata !4560, metadata !4371), !dbg !4567
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i32, align 8, !dbg !4569, !tbaa !4570
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont6 unwind label %lpad5, !dbg !4574

invoke.cont6:                                     ; preds = %invoke.cont
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !4502, metadata !4529), !dbg !4575
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !4553, metadata !4371), !dbg !4576
  %__t_.i31 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t2, i64 0, i32 0, !dbg !4578
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i31, i64 0, metadata !4560, metadata !4371), !dbg !4579
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i31, align 8, !dbg !4581, !tbaa !4570
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont11 unwind label %lpad5, !dbg !4582

invoke.cont11:                                    ; preds = %invoke.cont6
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4426, metadata !4529), !dbg !4530
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4553, metadata !4371), !dbg !4583
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i32, i64 0, metadata !4560, metadata !4371), !dbg !4585
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i32, align 8, !dbg !4587, !tbaa !4570
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %4)
          to label %invoke.cont16 unwind label %lpad5, !dbg !4588

invoke.cont16:                                    ; preds = %invoke.cont11
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !4502, metadata !4529), !dbg !4575
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !4553, metadata !4371), !dbg !4589
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i31, i64 0, metadata !4560, metadata !4371), !dbg !4591
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i31, align 8, !dbg !4593, !tbaa !4570
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %5)
          to label %invoke.cont21 unwind label %lpad5, !dbg !4594

invoke.cont21:                                    ; preds = %invoke.cont16
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t1)
          to label %invoke.cont22 unwind label %lpad5, !dbg !4595

invoke.cont22:                                    ; preds = %invoke.cont21
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t2)
          to label %invoke.cont23 unwind label %lpad5, !dbg !4596

invoke.cont23:                                    ; preds = %invoke.cont22
  %puts33 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.11, i64 0, i64 0)), !dbg !4597
  invoke void @checker_thread_end()
          to label %invoke.cont26 unwind label %lpad5, !dbg !4598

invoke.cont26:                                    ; preds = %invoke.cont23
  invoke void @checker_solver()
          to label %invoke.cont27 unwind label %lpad5, !dbg !4599

invoke.cont27:                                    ; preds = %invoke.cont26
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !4502, metadata !4529), !dbg !4575
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #10, !dbg !4600
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !dbg !4600
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4426, metadata !4529), !dbg !4530
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #10, !dbg !4601
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !dbg !4600
  ret i32 0, !dbg !4600

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !4603
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !4603
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !4603
  br label %ehcleanup, !dbg !4603

lpad5:                                            ; preds = %invoke.cont26, %invoke.cont23, %invoke.cont22, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont6, %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !4604
  %10 = extractvalue { i8*, i32 } %9, 0, !dbg !4604
  %11 = extractvalue { i8*, i32 } %9, 1, !dbg !4604
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !4502, metadata !4529), !dbg !4575
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #10, !dbg !4604
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !dbg !4600
  br label %ehcleanup, !dbg !4604

ehcleanup:                                        ; preds = %lpad5, %lpad
  %ehselector.slot.0 = phi i32 [ %11, %lpad5 ], [ %8, %lpad ]
  %exn.slot.0 = phi i8* [ %10, %lpad5 ], [ %7, %lpad ]
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !4426, metadata !4529), !dbg !4530
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #10, !dbg !4606
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !dbg !4600
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !dbg !4608
  %lpad.val29 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !dbg !4608
  resume { i8*, i32 } %lpad.val29, !dbg !4608
}

declare void @checker_generateExecutor() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #4

; Function Attrs: norecurse ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4610 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !4612, metadata !4371), !dbg !4614
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !4613, metadata !4371), !dbg !4615
  %call = tail call i8* @_Znwm(i64 40) #11, !dbg !4616
  %schList.i.i = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4617
  tail call void @llvm.memset.p0i8.i64(i8* %schList.i.i, i8 0, i64 24, i32 8, i1 false) #10, !dbg !4651
  %test.i.i = bitcast i8* %call to i32*, !dbg !4666
  %myCast = bitcast i32* %test.i.i to i8*
  call void @preNonAtomicStore_int(i8* %myCast, i32 3)
  store i32 3, i32* %test.i.i, align 8, !dbg !4668, !tbaa !4669
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i64 0, metadata !4673, metadata !4371), !dbg !4680
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !4679, metadata !4371), !dbg !4682
  %call1.i7.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 26)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !dbg !4683

invoke.cont.i.i:                                  ; preds = %entry
  %call3.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i7.i.i, i8* nonnull %call)
          to label %invoke.cont2.i.i unwind label %lpad.i.i, !dbg !4685

invoke.cont2.i.i:                                 ; preds = %invoke.cont.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %call3.i.i, i64 0, metadata !4673, metadata !4371), !dbg !4687
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !4679, metadata !4371), !dbg !4690
  %call1.i9.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call3.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1)
          to label %invoke.cont unwind label %lpad.i.i, !dbg !4691

lpad.i.i:                                         ; preds = %invoke.cont2.i.i, %invoke.cont.i.i, %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !dbg !4692
  %__begin_.i.i.i.i.i = bitcast i8* %schList.i.i to %"class.checker::Schedule"***, !dbg !4693
  %1 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.i, align 8, !dbg !4693, !tbaa !4710
  %cmp.i.i.i.i.i = icmp eq %"class.checker::Schedule"** %1, null, !dbg !4713
  br i1 %cmp.i.i.i.i.i, label %lpad.body, label %if.then.i.i.i.i.i, !dbg !4714

if.then.i.i.i.i.i:                                ; preds = %lpad.i.i
  %2 = ptrtoint %"class.checker::Schedule"** %1 to i64, !dbg !4714
  %__end_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call, i64 16, !dbg !4715
  %3 = bitcast i8* %__end_.i.i.i.i.i.i.i to i64*, !dbg !4727
  store i64 %2, i64* %3, align 8, !dbg !4727, !tbaa !4728
  %.cast.i.i.i.i.i = bitcast %"class.checker::Schedule"** %1 to i8*, !dbg !4729
  tail call void @llvm.dbg.value(metadata i8* %.cast.i.i.i.i.i, i64 0, metadata !4730, metadata !4371) #10, !dbg !4734
  tail call void @_ZdlPv(i8* %.cast.i.i.i.i.i) #12, !dbg !4750
  br label %lpad.body, !dbg !4751

invoke.cont:                                      ; preds = %invoke.cont2.i.i
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !dbg !4752, !tbaa !4570
  %call1 = tail call i32 @_Z9user_mainiPPc(i32 undef, i8** undef), !dbg !4754
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1
  %5 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**
  %7 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !4755
  %8 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !dbg !4756, !tbaa !4570
  tail call void @llvm.dbg.value(metadata %"class.checker::ModelChecker"* %8, i64 0, metadata !4757, metadata !4371), !dbg !4760
  %schList.i19 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, !dbg !4762
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4763, metadata !4371), !dbg !4767
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i19, i64 0, metadata !4766, metadata !4371), !dbg !4769
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4770, metadata !4371), !dbg !4776
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i19, i64 0, metadata !4773, metadata !4371), !dbg !4778
  tail call void @llvm.dbg.value(metadata %"class.std::__1::allocator"* undef, i64 0, metadata !4779, metadata !4371), !dbg !4783
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !dbg !4786, !alias.scope !4787
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i19, i64 0, metadata !4790, metadata !4371), !dbg !4794
  %__end_.i16.i.i.i20 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, i32 0, i32 1, !dbg !4796
  %9 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i20 to i64*, !dbg !4796
  %10 = load i64, i64* %9, align 8, !dbg !4796, !tbaa !4728, !noalias !4787
  %11 = bitcast %"class.std::__1::vector"* %schList.i19 to i64*, !dbg !4797
  %12 = load i64, i64* %11, align 8, !dbg !4797, !tbaa !4710, !noalias !4787
  %sub.ptr.sub.i.i.i.i21 = sub i64 %10, %12, !dbg !4798
  %sub.ptr.div.i.i.i.i22 = ashr exact i64 %sub.ptr.sub.i.i.i.i21, 3, !dbg !4798
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i22, i64 0, metadata !4774, metadata !4371), !dbg !4799
  %cmp.i.i.i23 = icmp eq i64 %sub.ptr.div.i.i.i.i22, 0, !dbg !4800
  br i1 %cmp.i.i.i23, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !dbg !4802

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !dbg !4803

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !dbg !4810

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4790, metadata !4371), !dbg !4810
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4708, metadata !4371) #10, !dbg !4813
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4704, metadata !4371) #10, !dbg !4816
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !4755
  br label %while.end, !dbg !4818

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i25 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i22, %if.then.i.i.i.preheader ]
  %sub.ptr.sub.i.i.i.i24 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i21, %if.then.i.i.i.preheader ]
  %13 = phi i64 [ %25, %while.body ], [ %12, %if.then.i.i.i.preheader ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4806, metadata !4371), !dbg !4803
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i25, i64 0, metadata !4807, metadata !4371), !dbg !4819
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i25, 2305843009213693951, !dbg !4820
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !dbg !4822

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %14 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !dbg !4823
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %14) #13
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !dbg !4823

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !dbg !4823

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i25, i64 0, metadata !4824, metadata !4371), !dbg !4828
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i25, i64 0, metadata !4831, metadata !4371), !dbg !4836
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4835, metadata !4371), !dbg !4838
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i.i.i.i24, i64 0, metadata !4839, metadata !4371), !dbg !4842
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i24) #11, !dbg !4844
  %15 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !dbg !4845
  store i8* %call.i.i.i.i15.i.i.i, i8** %6, align 8, !dbg !4846, !tbaa !4728, !alias.scope !4787
  store i8* %call.i.i.i.i15.i.i.i, i8** %7, align 8, !dbg !4847, !tbaa !4710, !alias.scope !4787
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div.i.i.i.i25, !dbg !4848
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !dbg !4849, !tbaa !4570, !alias.scope !4787
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4850, metadata !4371), !dbg !4873
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i25, i64 0, metadata !4860, metadata !4371), !dbg !4875
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"* undef, i64 0, metadata !4863, metadata !4529), !dbg !4876
  tail call void @llvm.dbg.value(metadata %"class.checker::Schedule"*** %__end_.i, i64 0, metadata !2163, metadata !4371) #10, !dbg !4877
  %cmp.i.i.i.i.i7 = icmp sgt i64 %sub.ptr.sub.i.i.i.i24, 0, !dbg !4879
  %16 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !dbg !4881
  br i1 %cmp.i.i.i.i.i7, label %if.then.i.i.i.i.i8, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !dbg !4881

if.then.i.i.i.i.i8:                               ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i24, 3
  %17 = inttoptr i64 %13 to i8*, !dbg !4882
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %17, i64 %sub.ptr.sub.i.i.i.i24, i32 8, i1 false) #10, !dbg !4882
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div6.i.i.i.i.i, !dbg !4884
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !dbg !4884, !tbaa !4570, !alias.scope !4787
  %18 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !dbg !4885
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !dbg !4885

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !dbg !4886
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !4710, !alias.scope !4787
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !dbg !4887
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !dbg !4889

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %19 = bitcast %"class.checker::Schedule"** %.pre to i8*, !dbg !4886
  %20 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !dbg !4889
  store i64 %20, i64* %5, align 8, !dbg !4890, !tbaa !4728, !alias.scope !4787
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4730, metadata !4371) #10, !dbg !4893
  call void @_ZdlPv(i8* %19) #12, !dbg !4897
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !dbg !4898

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !dbg !4899

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i8, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %18, %if.then.i.i.i.i.i8 ], [ %16, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4790, metadata !4371), !dbg !4810
  %tobool14 = icmp eq i64 %.ph, %16, !dbg !4756
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4708, metadata !4371) #10, !dbg !4813
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4704, metadata !4371) #10, !dbg !4816
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i15.i.i.i, i64 0, metadata !4730, metadata !4371) #10, !dbg !4901
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #12, !dbg !4906
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !4755
  br i1 %tobool14, label %while.end.loopexit, label %while.body, !dbg !4818

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @_Z9user_mainiPPc(i32 undef, i8** undef), !dbg !4907
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !4755
  %21 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !dbg !4756, !tbaa !4570
  tail call void @llvm.dbg.value(metadata %"class.checker::ModelChecker"* %21, i64 0, metadata !4757, metadata !4371), !dbg !4760
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, !dbg !4762
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4763, metadata !4371), !dbg !4767
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i, i64 0, metadata !4766, metadata !4371), !dbg !4769
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4770, metadata !4371), !dbg !4776
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i, i64 0, metadata !4773, metadata !4371), !dbg !4778
  tail call void @llvm.dbg.value(metadata %"class.std::__1::allocator"* undef, i64 0, metadata !4779, metadata !4371), !dbg !4783
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !dbg !4786, !alias.scope !4787
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i, i64 0, metadata !4790, metadata !4371), !dbg !4794
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, i32 0, i32 1, !dbg !4796
  %22 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !dbg !4796
  %23 = load i64, i64* %22, align 8, !dbg !4796, !tbaa !4728, !noalias !4787
  %24 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !dbg !4797
  %25 = load i64, i64* %24, align 8, !dbg !4797, !tbaa !4710, !noalias !4787
  %sub.ptr.sub.i.i.i.i = sub i64 %23, %25, !dbg !4798
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !dbg !4798
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i, i64 0, metadata !4774, metadata !4371), !dbg !4799
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !dbg !4800
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !dbg !4802, !llvm.loop !4908

lpad.body:                                        ; preds = %lpad.i.i, %if.then.i.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !4911
  resume { i8*, i32 } %0, !dbg !4913

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !dbg !4914

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !dbg !4914
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #8 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #10
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1424 {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !1739, metadata !4371), !dbg !4915
  tail call void @llvm.dbg.value(metadata i8* %__str, i64 0, metadata !1740, metadata !4371), !dbg !4916
  tail call void @llvm.dbg.value(metadata i64 %__len, i64 0, metadata !1741, metadata !4371), !dbg !4917
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0, !dbg !4918
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #10, !dbg !4918
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad, !dbg !4919

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !1742, metadata !4529), !dbg !4919
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !4920, metadata !4371), !dbg !4924
  %1 = load i8, i8* %0, align 8, !dbg !4927, !tbaa !4928, !range !4931
  %tobool.i = icmp eq i8 %1, 0, !dbg !4927
  br i1 %tobool.i, label %if.end28, label %if.then, !dbg !4932

if.then:                                          ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !4934, metadata !4371), !dbg !4939
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !4937, metadata !4371), !dbg !4943
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !4944, metadata !4371), !dbg !4948
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !4947, metadata !4371), !dbg !4950
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !dbg !4951
  %vtable.i.i = load i8*, i8** %2, align 8, !dbg !4951, !tbaa !4952
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !dbg !4951
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !dbg !4951
  %vbase.offset.i.i = load i64, i64* %3, align 8, !dbg !4951
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !dbg !4951
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i, !dbg !4951
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40, !dbg !4954
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**, !dbg !4954
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !dbg !4954, !tbaa !4965
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*, !dbg !4968
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %7, i64 0, metadata !4969, metadata !4371), !dbg !4972
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8, !dbg !4974
  %8 = bitcast i8* %__fmtflags_.i to i32*, !dbg !4974
  %9 = load i32, i32* %8, align 8, !dbg !4974, !tbaa !4975
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len, !dbg !4976
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144, !dbg !4977
  %10 = bitcast i8* %__fill_.i to i32*, !dbg !4977
  %11 = load i32, i32* %10, align 8, !dbg !4977, !tbaa !4983
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4985, metadata !4371), !dbg !4989
  call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !4988, metadata !4371), !dbg !4992
  %cmp.i.i = icmp eq i32 %11, -1, !dbg !4993
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16, !dbg !4994

if.then.i:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata i8 32, i64 0, metadata !4995, metadata !4371), !dbg !4999
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*, !dbg !5001
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #10, !dbg !5001
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3, !dbg !5001

.noexc:                                           ; preds = %if.then.i
  call void @llvm.dbg.value(metadata %"class.std::__1::locale"* %ref.tmp.i.i, i64 0, metadata !5002, metadata !4371), !dbg !5098
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !dbg !5100

invoke.cont.i.i:                                  ; preds = %.noexc
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !dbg !5101
  call void @llvm.dbg.value(metadata %"class.std::__1::ctype"* %13, i64 0, metadata !5102, metadata !4371), !dbg !5107
  call void @llvm.dbg.value(metadata i8 32, i64 0, metadata !5105, metadata !4371), !dbg !5110
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***, !dbg !5111
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !dbg !5111, !tbaa !4952
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !dbg !5111
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !dbg !5111
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !dbg !5111

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5112
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10, !dbg !5113
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10, !dbg !5115
  br label %ehcleanup

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10, !dbg !5116
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10, !dbg !5115
  %conv.i = sext i8 %call.i6.i.i to i32, !dbg !5118
  %myCast = bitcast i32* %10 to i8*
  call void @preNonAtomicStore_int(i8* %myCast, i32 %conv.i)
  store i32 %conv.i, i32* %10, align 8, !dbg !5119, !tbaa !4983
  br label %invoke.cont16, !dbg !5120

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ], !dbg !5121
  %conv6.i = trunc i32 %17 to i8, !dbg !5121
  %and = and i32 %9, 176, !dbg !5122
  %cmp = icmp eq i32 %and, 32, !dbg !5124
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str, !dbg !5125
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3, !dbg !5126

invoke.cont18:                                    ; preds = %invoke.cont16
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !5127, metadata !4371), !dbg !5131
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null, !dbg !5133
  br i1 %cmp.i, label %if.then22, label %if.end28, !dbg !5134

if.then22:                                        ; preds = %invoke.cont18
  %vtable23 = load i8*, i8** %2, align 8, !dbg !5136, !tbaa !4952
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24, !dbg !5136
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*, !dbg !5136
  %vbase.offset25 = load i64, i64* %18, align 8, !dbg !5136
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25, !dbg !5136
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5137, metadata !4371), !dbg !5142
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*, !dbg !5144
  call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %19, i64 0, metadata !5145, metadata !4371), !dbg !5150
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5148, metadata !4371), !dbg !5152
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32, !dbg !5153
  %20 = bitcast i8* %__rdstate_.i.i to i32*, !dbg !5153
  %21 = load i32, i32* %20, align 8, !dbg !5153, !tbaa !5154
  %or.i.i = or i32 %21, 5, !dbg !5155
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1, !dbg !5156

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5157
  %23 = extractvalue { i8*, i32 } %22, 0, !dbg !5157
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !dbg !5158
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !dbg !5158
  br label %catch, !dbg !5157

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5160
  br label %ehcleanup, !dbg !5160

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5162
  br label %ehcleanup, !dbg !5162

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !1742, metadata !4529), !dbg !4919
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10, !dbg !5164
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10, !dbg !5164
  br label %try.cont, !dbg !5165

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ]
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !1742, metadata !4529), !dbg !4919
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10, !dbg !5166
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10, !dbg !5164
  br label %catch, !dbg !5166

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ], !dbg !5158
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ], !dbg !5158
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ]
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #10, !dbg !5168
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !dbg !5158, !tbaa !4952
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24, !dbg !5158
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*, !dbg !5158
  %vbase.offset32 = load i64, i64* %28, align 8, !dbg !5158
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32, !dbg !5158
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*, !dbg !5158
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34, !dbg !5170

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch(), !dbg !5171
  br label %try.cont, !dbg !5171

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os, !dbg !5172

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup, !dbg !5173
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad, !dbg !5175

eh.resume:                                        ; preds = %lpad34
  resume { i8*, i32 } %30, !dbg !5177

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5178
  %32 = extractvalue { i8*, i32 } %31, 0, !dbg !5178
  call void @__clang_call_terminate(i8* %32) #14, !dbg !5178
  unreachable, !dbg !5178
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !5180 {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5185, metadata !4371), !dbg !5197
  tail call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"* undef, metadata !5185, metadata !4371), !dbg !5197
  tail call void @llvm.dbg.value(metadata i8* %__ob, i64 0, metadata !5186, metadata !4371), !dbg !5198
  tail call void @llvm.dbg.value(metadata i8* %__op, i64 0, metadata !5187, metadata !4371), !dbg !5199
  tail call void @llvm.dbg.value(metadata i8* %__oe, i64 0, metadata !5188, metadata !4371), !dbg !5200
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !5189, metadata !4371), !dbg !5201
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5190, metadata !4371), !dbg !5202
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null, !dbg !5203
  br i1 %cmp, label %return, label %if.end, !dbg !5205

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64, !dbg !5206
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64, !dbg !5206
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5206
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, i64 0, metadata !5191, metadata !4371), !dbg !5207
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !5208, metadata !4371), !dbg !5211
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3, !dbg !5213
  %0 = load i64, i64* %__width_.i, align 8, !dbg !5213, !tbaa !5214
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5192, metadata !4371), !dbg !5215
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub, !dbg !5216
  %sub = sub nsw i64 %0, %sub.ptr.sub, !dbg !5218
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !5192, metadata !4371), !dbg !5215
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0, !dbg !5219
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5192, metadata !4371), !dbg !5215
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64, !dbg !5220
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast, !dbg !5220
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub6, i64 0, metadata !5193, metadata !4371), !dbg !5221
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !dbg !5222
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !5224

if.then8:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5225, metadata !4371), !dbg !5230
  tail call void @llvm.dbg.value(metadata i8* %__ob, i64 0, metadata !5228, metadata !4371), !dbg !5234
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub6, i64 0, metadata !5229, metadata !4371), !dbg !5235
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !5236
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !dbg !5236, !tbaa !4952
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12, !dbg !5236
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8, !dbg !5236
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6), !dbg !5236
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6, !dbg !5237
  br i1 %cmp11, label %if.end15, label %return, !dbg !5238

if.end15:                                         ; preds = %if.then8, %if.end
  %cmp16 = icmp sgt i64 %__ns.0, 0, !dbg !5239
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26, !dbg !5240

if.end.i.i.i:                                     ; preds = %if.end15
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*, !dbg !5241
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #10, !dbg !5241
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5194, metadata !4529), !dbg !5242
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5243, metadata !4371), !dbg !5249
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5246, metadata !4371), !dbg !5251
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5247, metadata !4371), !dbg !5252
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5253, metadata !4371), !dbg !5258
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5256, metadata !4371), !dbg !5260
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5257, metadata !4371), !dbg !5261
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #10, !dbg !5262
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5282, metadata !4371), !dbg !5291
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5285, metadata !4371), !dbg !5294
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5286, metadata !4371), !dbg !5295
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23, !dbg !5296
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i, !dbg !5297

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5298, metadata !4371), !dbg !5301
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16, !dbg !5303
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16, !dbg !5311
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !5312, metadata !4371), !dbg !5316
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !5319, metadata !4371), !dbg !5325
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5324, metadata !4371), !dbg !5327
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !4839, metadata !4371), !dbg !5328
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #11, !dbg !5330
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i.i.i, i64 0, metadata !5287, metadata !4371), !dbg !5331
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5332, metadata !4371), !dbg !5336
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i.i.i, i64 0, metadata !5335, metadata !4371), !dbg !5338
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5339
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !dbg !5340, !tbaa !5341
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5343, metadata !4371), !dbg !5347
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !5346, metadata !4371), !dbg !5349
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1, !dbg !5350
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5351
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !dbg !5352, !tbaa !5353
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5354, metadata !4371), !dbg !5358
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5357, metadata !4371), !dbg !5360
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5361
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !dbg !5362, !tbaa !5363
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5364, metadata !4371) #10, !dbg !5369
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5368, metadata !4371) #10, !dbg !5372
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !5373
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0, !dbg !5389
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !dbg !5390

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5391, metadata !4371), !dbg !5395
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5394, metadata !4371), !dbg !5398
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8, !dbg !5399
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1, !dbg !5399
  store i8 %conv.i.i.i.i, i8* %3, align 8, !dbg !5400, !tbaa !5401
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5402, metadata !4371), !dbg !5405
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !5407
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0, !dbg !5408
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !5287, metadata !4371), !dbg !5331
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !5287, metadata !4371), !dbg !5331
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !5367, metadata !4371) #10, !dbg !5409
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5364, metadata !4371) #10, !dbg !5369
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5368, metadata !4371) #10, !dbg !5372
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5410
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !dbg !5389
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ], !dbg !5410
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ]
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #10, !dbg !5416
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0, !dbg !5417
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i, i64 0, metadata !5418, metadata !4371), !dbg !5422
  store i8 0, i8* %arrayidx.i.i.i, align 1, !dbg !5424, !tbaa !5401
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5194, metadata !4529), !dbg !5242
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5386, metadata !4371), !dbg !5425
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5382, metadata !4371), !dbg !5426
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5427, metadata !4371), !dbg !5430
  %4 = load i8, i8* %3, align 8, !dbg !5432, !tbaa !5401
  %5 = and i8 %4, 1, !dbg !5433
  %tobool.i.i.i = icmp eq i8 %5, 0, !dbg !5434
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5413, metadata !4371), !dbg !5435
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !5410
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5376, metadata !4371), !dbg !5436
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6, !dbg !5437
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5225, metadata !4371), !dbg !5438
  tail call void @llvm.dbg.value(metadata i8* %cond.i.i, i64 0, metadata !5228, metadata !4371), !dbg !5440
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5229, metadata !4371), !dbg !5441
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !5442
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !dbg !5442, !tbaa !4952
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12, !dbg !5442
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8, !dbg !5442
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad, !dbg !5442

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0, !dbg !5443
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5194, metadata !4529), !dbg !5242
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5445, metadata !4371) #10, !dbg !5448
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5451, metadata !4371) #10, !dbg !5454
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5427, metadata !4371) #10, !dbg !5456
  %9 = load i8, i8* %3, align 8, !dbg !5460, !tbaa !5401
  %10 = and i8 %9, 1, !dbg !5461
  %tobool.i.i.i89 = icmp eq i8 %10, 0, !dbg !5462
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i, !dbg !5463

if.then.i.i:                                      ; preds = %invoke.cont
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5464, metadata !4371) #10, !dbg !5467
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !5470, !tbaa !5341
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5471, metadata !4371) #10, !dbg !5476
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5479, metadata !4371) #10, !dbg !5484
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !4730, metadata !4371) #10, !dbg !5486
  call void @_ZdlPv(i8* %11) #12, !dbg !5488
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, !dbg !5489

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10, !dbg !5490
  br i1 %cmp21, label %if.end26, label %return

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup, !dbg !5491
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5194, metadata !4529), !dbg !5242
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5445, metadata !4371) #10, !dbg !5492
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5451, metadata !4371) #10, !dbg !5494
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5427, metadata !4371) #10, !dbg !5496
  %13 = load i8, i8* %3, align 8, !dbg !5498, !tbaa !5401
  %14 = and i8 %13, 1, !dbg !5499
  %tobool.i.i.i92 = icmp eq i8 %14, 0, !dbg !5500
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94, !dbg !5501

if.then.i.i94:                                    ; preds = %lpad
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5464, metadata !4371) #10, !dbg !5502
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !5504, !tbaa !5341
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5471, metadata !4371) #10, !dbg !5505
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5479, metadata !4371) #10, !dbg !5507
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4730, metadata !4371) #10, !dbg !5509
  call void @_ZdlPv(i8* %15) #12, !dbg !5511
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, !dbg !5512

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10, !dbg !5490
  resume { i8*, i32 } %12, !dbg !5513

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5185, metadata !4371), !dbg !5197
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4, !dbg !5515
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub29, i64 0, metadata !5193, metadata !4371), !dbg !5221
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !dbg !5516
  br i1 %cmp30, label %if.then31, label %if.end38, !dbg !5518

if.then31:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5225, metadata !4371), !dbg !5519
  call void @llvm.dbg.value(metadata i8* %__op, i64 0, metadata !5228, metadata !4371), !dbg !5523
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub29, i64 0, metadata !5229, metadata !4371), !dbg !5524
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !5525
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !dbg !5525, !tbaa !4952
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !dbg !5525
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !dbg !5525
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29), !dbg !5525
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29, !dbg !5526
  br i1 %cmp34, label %if.end38, label %return, !dbg !5527

if.end38:                                         ; preds = %if.then31, %if.end26
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !5528, metadata !4371), !dbg !5533
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5531, metadata !4371), !dbg !5535
  store i64 0, i64* %__width_.i, align 8, !dbg !5536, !tbaa !5214
  br label %return, !dbg !5537

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ]
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2, !dbg !5538
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #4

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #4

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #9

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !5540 {
entry:
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %this, i64 0, metadata !5542, metadata !4371), !dbg !5693
  tail call void @llvm.dbg.value(metadata void ()* %__f, i64 0, metadata !5543, metadata !4371), !dbg !5694
  %call = tail call i8* @_Znwm(i64 8) #11, !dbg !5695
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !5695
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !dbg !5696

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5544, metadata !4529), !dbg !5697
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !5698

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5544, metadata !4529), !dbg !5697
  %2 = ptrtoint void ()* %__f to i64, !dbg !5699
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5701, metadata !4371), !dbg !5713
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5712, metadata !4371), !dbg !5713
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5716, metadata !4371), !dbg !5721
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5720, metadata !4371), !dbg !5721
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5723, metadata !4371), !dbg !5748
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5747, metadata !4371), !dbg !5748
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5750, metadata !4371), !dbg !5759
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5758, metadata !4371), !dbg !5759
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5761, metadata !4371), !dbg !5771
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5774, metadata !4371), !dbg !5779
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5782, metadata !4371), !dbg !5786
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !5788, metadata !4371), !dbg !5802
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !5804, metadata !4371), !dbg !5809
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !5811, metadata !4371), !dbg !5821
  %3 = bitcast i8* %call4 to i64*, !dbg !5824
  store i64 %1, i64* %3, align 8, !dbg !5824, !tbaa !5825
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !5827
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5828, metadata !4371), !dbg !5838
  %5 = bitcast i8* %4 to i64*, !dbg !5841
  store i64 %2, i64* %5, align 8, !dbg !5841, !tbaa !5842
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5547, metadata !4529), !dbg !5844
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !dbg !5845
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5547, metadata !4529), !dbg !5844
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_, i64 0, metadata !5846, metadata !4371), !dbg !5857
  tail call void @llvm.dbg.value(metadata i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i64 0, metadata !5855, metadata !4371), !dbg !5859
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !5856, metadata !4371), !dbg !5860
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !dbg !5861

invoke.cont12:                                    ; preds = %invoke.cont3
  tail call void @llvm.dbg.value(metadata i32 %call.i31, i64 0, metadata !5692, metadata !4371), !dbg !5862
  %cmp = icmp eq i32 %call.i31, 0, !dbg !5863
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !dbg !5865

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5547, metadata !4529), !dbg !5844
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5547, metadata !4529), !dbg !5844
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5866, metadata !4371) #10, !dbg !5870
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5873, metadata !4371) #10, !dbg !5876
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5878, metadata !4371) #10, !dbg !5883
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5881, metadata !4371) #10, !dbg !5886
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5882, metadata !4371) #10, !dbg !5887
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5544, metadata !4529), !dbg !5697
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5888, metadata !4371) #10, !dbg !5891
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5894, metadata !4371) #10, !dbg !5897
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5899, metadata !4371) #10, !dbg !5904
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5902, metadata !4371) #10, !dbg !5907
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5903, metadata !4371) #10, !dbg !5908
  ret void, !dbg !5909

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !5910
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !5910
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !5910
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !5911
  br label %eh.resume, !dbg !5911

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !5912
  br label %delete.notnull.i.i.i.i, !dbg !5912

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #13
          to label %invoke.cont16 unwind label %lpad15, !dbg !5914

invoke.cont16:                                    ; preds = %if.else
  unreachable, !dbg !5915

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !5917
  br label %delete.notnull.i.i.i.i, !dbg !5919

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5547, metadata !4529), !dbg !5844
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5866, metadata !4371) #10, !dbg !5921
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5873, metadata !4371) #10, !dbg !5924
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5878, metadata !4371) #10, !dbg !5926
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5881, metadata !4371) #10, !dbg !5928
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5902, metadata !4371) #10, !dbg !5929
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !dbg !5970
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !5979, !tbaa !4570
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !5903, metadata !4371) #10, !dbg !5980
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !5981, !tbaa !4570
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !dbg !5982
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !5984

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !5985, metadata !4371) #10, !dbg !5990
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10, !dbg !5993
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !dbg !5993
  tail call void @_ZdlPv(i8* %14) #12, !dbg !5995
  br label %ehcleanup18.thread, !dbg !5997

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #12, !dbg !5998
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5544, metadata !4529), !dbg !5697
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5888, metadata !4371) #10, !dbg !6000
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5894, metadata !4371) #10, !dbg !6003
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5899, metadata !4371) #10, !dbg !6005
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5902, metadata !4371) #10, !dbg !6007
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !5903, metadata !4371) #10, !dbg !6008
  br label %eh.resume, !dbg !6009

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !6010
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !6010
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !6010
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5544, metadata !4529), !dbg !5697
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5888, metadata !4371) #10, !dbg !6000
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5894, metadata !4371) #10, !dbg !6003
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5899, metadata !4371) #10, !dbg !6005
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5902, metadata !4371) #10, !dbg !6007
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !5903, metadata !4371) #10, !dbg !6008
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !5985, metadata !4371) #10, !dbg !6011
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10, !dbg !6013
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !6014
  br label %eh.resume, !dbg !6015

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !dbg !6016
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !dbg !6016
  resume { i8*, i32 } %lpad.val20, !dbg !6016
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !6017 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %__vp, i64 0, metadata !6021, metadata !4371), !dbg !6023
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6022, metadata !4529), !dbg !6024
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !6025

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6022, metadata !4529), !dbg !6024
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !6026
  %0 = bitcast i8* %__vp to i8**, !dbg !6035
  %1 = load i8*, i8** %0, align 8, !dbg !6035, !tbaa !4570
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !6036, !tbaa !4570
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_specific_ptr"* %call, i64 0, metadata !6037, metadata !4371), !dbg !6074
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !dbg !6077
  %2 = load i64, i64* %__key_.i, align 8, !dbg !6077, !tbaa !6078
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !6080, metadata !4371), !dbg !6086
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !6085, metadata !4371), !dbg !6088
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !dbg !6089

invoke.cont5:                                     ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6022, metadata !4529), !dbg !6024
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !dbg !6090
  %3 = bitcast i8* %value.i.i.i to void ()**, !dbg !6090
  tail call void @llvm.dbg.value(metadata void ()** %3, i64 0, metadata !6122, metadata !4371), !dbg !6128
  %4 = load void ()*, void ()** %3, align 8, !dbg !6131, !tbaa !4570
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !dbg !6132

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6022, metadata !4529), !dbg !6024
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5866, metadata !4371) #10, !dbg !6134
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5873, metadata !4371) #10, !dbg !6136
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5878, metadata !4371) #10, !dbg !6138
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5881, metadata !4371) #10, !dbg !6140
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5902, metadata !4371) #10, !dbg !6141
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !6151, !tbaa !4570
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !5903, metadata !4371) #10, !dbg !6152
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !6153, !tbaa !4570
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !dbg !6154
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !dbg !6155

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !5985, metadata !4371) #10, !dbg !6156
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10, !dbg !6158
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !dbg !6158
  tail call void @_ZdlPv(i8* %6) #12, !dbg !6159
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !dbg !6160

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !6161
  ret i8* null, !dbg !6162

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !dbg !6163
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6022, metadata !4529), !dbg !6024
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5866, metadata !4371) #10, !dbg !6164
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5873, metadata !4371) #10, !dbg !6166
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5878, metadata !4371) #10, !dbg !6168
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5881, metadata !4371) #10, !dbg !6170
  br label %delete.notnull.i.i.i.i, !dbg !6171

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !dbg !6163
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6022, metadata !4529), !dbg !6024
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5866, metadata !4371) #10, !dbg !6164
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5873, metadata !4371) #10, !dbg !6166
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5878, metadata !4371) #10, !dbg !6168
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5881, metadata !4371) #10, !dbg !6170
  %tobool.i.i.i = icmp eq i8* %__vp, null, !dbg !6172
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !dbg !6171

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !6173
  br label %delete.notnull.i.i.i.i, !dbg !6171

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !dbg !6173
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5902, metadata !4371) #10, !dbg !6185
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !6186, !tbaa !4570
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !5903, metadata !4371) #10, !dbg !6187
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !6188, !tbaa !4570
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !6189
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !6190

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !5985, metadata !4371) #10, !dbg !6191
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10, !dbg !6193
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !6193
  tail call void @_ZdlPv(i8* %8) #12, !dbg !6194
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !6195

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !6196
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !6197

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30, !dbg !6198
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #9

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #10

declare void @preNonAtomicStore_char(i8*, i8)

declare void @preNonAtomicStore_int(i8*, i32)

declare void @preNonAtomicStore_double(i8*, i64)

declare void @preAtomicStore_char(i8*, i8, i32)

declare void @preAtomicStore_int(i8*, i32, i32)

declare void @preAtomicStore_double(i8*, i64, i32)

declare i8 @preNonAtomicLoad_char(i8*)

declare i32 @preNonAtomicLoad_int(i8*)

declare i64 @preNonAtomicLoad_double(i8*)

declare i8 @preAtomicLoad_char(i8*, i32)

declare i32 @preAtomicLoad_int(i8*, i32)

declare i64 @preAtomicLoad_double(i8*, i32)

declare void @postAtomicLoad_char(i8*, i8, i32)

declare void @postAtomicLoad_int(i8*, i32, i32)

declare void @postAtomicLoad_double(i8*, i64, i32)

declare void @preFence(i32)

declare void @preCmpXchg_int(i8*, i32, i32, i32, i32)

declare void @preRMW_Xchg(i8*, i32, i32)

declare void @preRMW_Add(i8*, i32, i32)

declare void @preRMW_Sub(i8*, i32, i32)

declare void @preRMW_And(i8*, i32, i32)

declare void @preRMW_Nand(i8*, i32, i32)

declare void @preRMW_Or(i8*, i32, i32)

declare void @preRMW_Xor(i8*, i32, i32)

declare void @preRMW_Max(i8*, i32, i32)

declare void @preRMW_Min(i8*, i32, i32)

declare void @preRMW_UMax(i8*, i32, i32)

declare void @preRMW_UMin(i8*, i32, i32)

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4354, !4355, !4356}
!llvm.ident = !{!4357}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 8, type: !91, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1421, globals: !3450, imports: !3453)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4 = !{!5, !17, !1391, !1396, !1399, !1402, !1405, !1408, !1414}
!5 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!9 = !DINamespace(name: "std", scope: null, file: !8, line: 437)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!12 = !DIEnumerator(name: "memory_order_consume", value: 1)
!13 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!14 = !DIEnumerator(name: "memory_order_release", value: 3)
!15 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!16 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!17 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "event", scope: !19, file: !18, line: 308, size: 32, elements: !1387, identifier: "_ZTSNSt3__18ios_base5eventE")
!18 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ios", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !7, file: !18, line: 231, size: 1088, elements: !20, vtableHolder: !19, identifier: "_ZTSNSt3__18ios_baseE")
!20 = !{!21, !27, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !51, !52, !53, !54, !57, !58, !59, !60, !61, !62, !63, !68, !69, !70, !71, !73, !74, !81, !83, !89, !90, !244, !246, !247, !248, !250, !251, !252, !257, !261, !262, !265, !268, !271, !274, !275, !276, !1325, !1328, !1329, !1333, !1337, !1340, !1343, !1347, !1350, !1353, !1356, !1359, !1360, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1374, !1377, !1378, !1381, !1382, !1385, !1386}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ios_base", scope: !18, file: !18, baseType: !22, size: 64, flags: DIFlagArtificial)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "boolalpha", scope: !19, file: !18, line: 237, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !19, file: !18, line: 236, baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !19, file: !18, line: 238, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !19, file: !18, line: 239, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !19, file: !18, line: 240, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !19, file: !18, line: 241, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !19, file: !18, line: 242, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "oct", scope: !19, file: !18, line: 243, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !19, file: !18, line: 244, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "scientific", scope: !19, file: !18, line: 245, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "showbase", scope: !19, file: !18, line: 246, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "showpoint", scope: !19, file: !18, line: 247, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "showpos", scope: !19, file: !18, line: 248, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2048)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "skipws", scope: !19, file: !18, line: 249, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "unitbuf", scope: !19, file: !18, line: 250, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "uppercase", scope: !19, file: !18, line: 251, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "adjustfield", scope: !19, file: !18, line: 252, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 176)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "basefield", scope: !19, file: !18, line: 253, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 74)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "floatfield", scope: !19, file: !18, line: 254, baseType: !28, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 260)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "badbit", scope: !19, file: !18, line: 257, baseType: !49, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !19, file: !18, line: 256, baseType: !30)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "eofbit", scope: !19, file: !18, line: 258, baseType: !49, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "failbit", scope: !19, file: !18, line: 259, baseType: !49, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "goodbit", scope: !19, file: !18, line: 260, baseType: !49, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "app", scope: !19, file: !18, line: 263, baseType: !55, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "openmode", scope: !19, file: !18, line: 262, baseType: !30)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ate", scope: !19, file: !18, line: 264, baseType: !55, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !19, file: !18, line: 265, baseType: !55, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !19, file: !18, line: 266, baseType: !55, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !19, file: !18, line: 267, baseType: !55, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "trunc", scope: !19, file: !18, line: 268, baseType: !55, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__fmtflags_", scope: !19, file: !18, line: 362, baseType: !29, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__precision_", scope: !19, file: !18, line: 363, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !7, file: !18, line: 229, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !66, line: 51, baseType: !67)
!66 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__width_", scope: !19, file: !18, line: 364, baseType: !64, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__rdstate_", scope: !19, file: !18, line: 365, baseType: !50, size: 32, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__exceptions_", scope: !19, file: !18, line: 366, baseType: !50, size: 32, offset: 288)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__rdbuf_", scope: !19, file: !18, line: 367, baseType: !72, size: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !19, file: !18, line: 368, baseType: !72, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__fn_", scope: !19, file: !18, line: 369, baseType: !75, size: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_callback", scope: !19, file: !18, line: 309, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !17, !80, !26}
!80 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__index_", scope: !19, file: !18, line: 370, baseType: !82, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__event_size_", scope: !19, file: !18, line: 371, baseType: !84, size: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 30, baseType: !86)
!85 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !87, line: 92, baseType: !88)
!87 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!88 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__event_cap_", scope: !19, file: !18, line: 372, baseType: !84, size: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__xindex_", scope: !19, file: !18, line: 376, baseType: !91, flags: DIFlagStaticMember)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !6, line: 1084, size: 32, elements: !92, templateParams: !243, identifier: "_ZTSNSt3__16atomicIiEE")
!92 = !{!93, !228, !232, !235, !240}
!93 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !91, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !95, templateParams: !226, identifier: "_ZTSNSt3__113__atomic_baseIiLb1EEE")
!95 = !{!96, !177, !181, !184, !189, !192, !193, !194, !195, !196, !197, !198, !199, !200, !203, !206, !207, !208, !211, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!96 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !94, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !98, templateParams: !174, identifier: "_ZTSNSt3__113__atomic_baseIiLb0EEE")
!98 = !{!99, !101, !108, !113, !118, !122, !125, !128, !131, !134, !137, !140, !144, !147, !148, !149, !152, !155, !156, !157, !160, !163, !167, !171}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !97, file: !6, line: 893, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !26)
!101 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !97, file: !6, line: 900, type: !102, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !105}
!104 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!108 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !97, file: !6, line: 909, type: !109, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!109 = !DISubroutineType(types: !110)
!110 = !{!104, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!113 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !97, file: !6, line: 912, type: !114, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !26, !117}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !7, file: !6, line: 585, baseType: !5)
!118 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !97, file: !6, line: 916, type: !119, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !121, !26, !117}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!122 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !97, file: !6, line: 920, type: !123, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!123 = !DISubroutineType(types: !124)
!124 = !{!26, !105, !117}
!125 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !97, file: !6, line: 924, type: !126, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!126 = !DISubroutineType(types: !127)
!127 = !{!26, !111, !117}
!128 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EEcviEv", scope: !97, file: !6, line: 928, type: !129, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!129 = !DISubroutineType(types: !130)
!130 = !{!26, !105}
!131 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !97, file: !6, line: 930, type: !132, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!132 = !DISubroutineType(types: !133)
!133 = !{!26, !111}
!134 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !97, file: !6, line: 932, type: !135, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!135 = !DISubroutineType(types: !136)
!136 = !{!26, !116, !26, !117}
!137 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !97, file: !6, line: 935, type: !138, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!138 = !DISubroutineType(types: !139)
!139 = !{!26, !121, !26, !117}
!140 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !97, file: !6, line: 938, type: !141, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!141 = !DISubroutineType(types: !142)
!142 = !{!104, !116, !143, !26, !117, !117}
!143 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!144 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !97, file: !6, line: 943, type: !145, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!145 = !DISubroutineType(types: !146)
!146 = !{!104, !121, !143, !26, !117, !117}
!147 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !97, file: !6, line: 948, type: !141, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!148 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !97, file: !6, line: 953, type: !145, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!149 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !97, file: !6, line: 958, type: !150, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!150 = !DISubroutineType(types: !151)
!151 = !{!104, !116, !143, !26, !117}
!152 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !97, file: !6, line: 962, type: !153, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!153 = !DISubroutineType(types: !154)
!154 = !{!104, !121, !143, !26, !117}
!155 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !97, file: !6, line: 966, type: !150, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!156 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !97, file: !6, line: 970, type: !153, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!157 = !DISubprogram(name: "__atomic_base", scope: !97, file: !6, line: 976, type: !158, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !121}
!160 = !DISubprogram(name: "__atomic_base", scope: !97, file: !6, line: 982, type: !161, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !121, !26}
!163 = !DISubprogram(name: "__atomic_base", scope: !97, file: !6, line: 984, type: !164, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !121, !166}
!166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !112, size: 64)
!167 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !97, file: !6, line: 985, type: !168, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !121, !166}
!170 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !97, size: 64)
!171 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !97, file: !6, line: 986, type: !172, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!172 = !DISubroutineType(types: !173)
!173 = !{!170, !116, !166}
!174 = !{!175, !176}
!175 = !DITemplateTypeParameter(name: "_Tp", type: !26)
!176 = !DITemplateValueParameter(type: !104, value: i8 0)
!177 = !DISubprogram(name: "__atomic_base", scope: !94, file: !6, line: 1008, type: !178, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!181 = !DISubprogram(name: "__atomic_base", scope: !94, file: !6, line: 1010, type: !182, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !180, !26}
!184 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !94, file: !6, line: 1013, type: !185, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true)
!185 = !DISubroutineType(types: !186)
!186 = !{!26, !187, !26, !117}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!188 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!189 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !94, file: !6, line: 1016, type: !190, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true)
!190 = !DISubroutineType(types: !191)
!191 = !{!26, !180, !26, !117}
!192 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !94, file: !6, line: 1019, type: !185, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: true)
!193 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !94, file: !6, line: 1022, type: !190, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true)
!194 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !94, file: !6, line: 1025, type: !185, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true)
!195 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !94, file: !6, line: 1028, type: !190, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true)
!196 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !94, file: !6, line: 1031, type: !185, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: true)
!197 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !94, file: !6, line: 1034, type: !190, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true)
!198 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !94, file: !6, line: 1037, type: !185, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: true)
!199 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !94, file: !6, line: 1040, type: !190, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true)
!200 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEi", scope: !94, file: !6, line: 1044, type: !201, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true)
!201 = !DISubroutineType(types: !202)
!202 = !{!26, !187, !26}
!203 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEi", scope: !94, file: !6, line: 1046, type: !204, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true)
!204 = !DISubroutineType(types: !205)
!205 = !{!26, !180, !26}
!206 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEi", scope: !94, file: !6, line: 1048, type: !201, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true)
!207 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEi", scope: !94, file: !6, line: 1050, type: !204, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: true)
!208 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEv", scope: !94, file: !6, line: 1052, type: !209, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true)
!209 = !DISubroutineType(types: !210)
!210 = !{!26, !187}
!211 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEv", scope: !94, file: !6, line: 1054, type: !212, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true)
!212 = !DISubroutineType(types: !213)
!213 = !{!26, !180}
!214 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEv", scope: !94, file: !6, line: 1056, type: !209, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true)
!215 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEv", scope: !94, file: !6, line: 1058, type: !212, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true)
!216 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEpLEi", scope: !94, file: !6, line: 1060, type: !201, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: true)
!217 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEpLEi", scope: !94, file: !6, line: 1062, type: !204, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true)
!218 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmIEi", scope: !94, file: !6, line: 1064, type: !201, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true)
!219 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmIEi", scope: !94, file: !6, line: 1066, type: !204, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true)
!220 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEaNEi", scope: !94, file: !6, line: 1068, type: !201, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true)
!221 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEaNEi", scope: !94, file: !6, line: 1070, type: !204, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true)
!222 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEoREi", scope: !94, file: !6, line: 1072, type: !201, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: true)
!223 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEoREi", scope: !94, file: !6, line: 1074, type: !204, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true)
!224 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEeOEi", scope: !94, file: !6, line: 1076, type: !201, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true)
!225 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEeOEi", scope: !94, file: !6, line: 1078, type: !204, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true)
!226 = !{!175, !227}
!227 = !DITemplateValueParameter(type: !104, value: i8 1)
!228 = !DISubprogram(name: "atomic", scope: !91, file: !6, line: 1089, type: !229, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!232 = !DISubprogram(name: "atomic", scope: !91, file: !6, line: 1091, type: !233, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !231, !26}
!235 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIiEaSEi", scope: !91, file: !6, line: 1094, type: !236, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true)
!236 = !DISubroutineType(types: !237)
!237 = !{!26, !238, !26}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!239 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !91)
!240 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !91, file: !6, line: 1097, type: !241, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true)
!241 = !DISubroutineType(types: !242)
!242 = !{!26, !231, !26}
!243 = !{!175}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_", scope: !19, file: !18, line: 380, baseType: !245, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_size_", scope: !19, file: !18, line: 381, baseType: !84, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_cap_", scope: !19, file: !18, line: 382, baseType: !84, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_", scope: !19, file: !18, line: 383, baseType: !249, size: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_size_", scope: !19, file: !18, line: 384, baseType: !84, size: 64, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_cap_", scope: !19, file: !18, line: 385, baseType: !84, size: 64, offset: 1024)
!252 = !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !19, file: !18, line: 284, type: !253, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!253 = !DISubroutineType(types: !254)
!254 = !{!29, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!257 = !DISubprogram(name: "flags", linkageName: "_ZNSt3__18ios_base5flagsEj", scope: !19, file: !18, line: 285, type: !258, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!258 = !DISubroutineType(types: !259)
!259 = !{!29, !260, !29}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!261 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEj", scope: !19, file: !18, line: 286, type: !258, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!262 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEjj", scope: !19, file: !18, line: 287, type: !263, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!263 = !DISubroutineType(types: !264)
!264 = !{!29, !260, !29, !29}
!265 = !DISubprogram(name: "unsetf", linkageName: "_ZNSt3__18ios_base6unsetfEj", scope: !19, file: !18, line: 288, type: !266, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !260, !29}
!268 = !DISubprogram(name: "precision", linkageName: "_ZNKSt3__18ios_base9precisionEv", scope: !19, file: !18, line: 290, type: !269, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!269 = !DISubroutineType(types: !270)
!270 = !{!64, !255}
!271 = !DISubprogram(name: "precision", linkageName: "_ZNSt3__18ios_base9precisionEl", scope: !19, file: !18, line: 291, type: !272, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!272 = !DISubroutineType(types: !273)
!273 = !{!64, !260, !64}
!274 = !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !19, file: !18, line: 292, type: !269, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!275 = !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !19, file: !18, line: 293, type: !272, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!276 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__18ios_base5imbueERKNS_6localeE", scope: !19, file: !18, line: 296, type: !277, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !260, !302}
!279 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "locale", scope: !7, file: !280, line: 83, size: 64, elements: !281, identifier: "_ZTSNSt3__16localeE")
!280 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!281 = !{!282, !285, !286, !287, !288, !289, !290, !291, !292, !295, !299, !304, !310, !1203, !1206, !1209, !1212, !1213, !1216, !1220, !1223, !1224, !1227, !1230, !1274, !1278, !1320}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "none", scope: !279, file: !280, line: 93, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "category", scope: !279, file: !280, line: 90, baseType: !26)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "collate", scope: !279, file: !280, line: 94, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !279, file: !280, line: 95, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "monetary", scope: !279, file: !280, line: 96, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "numeric", scope: !279, file: !280, line: 97, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !279, file: !280, line: 98, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !279, file: !280, line: 99, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !279, file: !280, line: 100, baseType: !283, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__locale_", scope: !279, file: !280, line: 136, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__imp", scope: !279, file: !280, line: 135, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__16locale5__impE")
!295 = !DISubprogram(name: "locale", scope: !279, file: !280, line: 103, type: !296, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!299 = !DISubprogram(name: "locale", scope: !279, file: !280, line: 104, type: !300, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !298, !302}
!302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!304 = !DISubprogram(name: "locale", scope: !279, file: !280, line: 105, type: !305, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !298, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!310 = !DISubprogram(name: "locale", scope: !279, file: !280, line: 106, type: !311, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !298, !313}
!313 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !7, file: !316, line: 194, baseType: !317)
!316 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iosfwd", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!317 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !7, file: !318, line: 4038, size: 192, elements: !319, templateParams: !1201, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE")
!318 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!319 = !{!320, !330, !586, !588, !592, !598, !603, !606, !610, !613, !616, !619, !622, !625, !628, !631, !634, !637, !825, !828, !854, !857, !858, !862, !866, !869, !872, !877, !880, !885, !890, !891, !892, !897, !902, !903, !904, !905, !906, !907, !908, !911, !912, !913, !914, !917, !920, !921, !922, !923, !926, !931, !936, !937, !938, !939, !942, !943, !944, !945, !946, !947, !950, !953, !954, !957, !958, !961, !962, !965, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !981, !984, !987, !990, !993, !996, !999, !1002, !1005, !1008, !1011, !1014, !1017, !1020, !1023, !1026, !1029, !1032, !1035, !1038, !1041, !1044, !1047, !1050, !1054, !1057, !1060, !1063, !1064, !1067, !1070, !1073, !1076, !1079, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1110, !1113, !1116, !1119, !1122, !1125, !1128, !1131, !1132, !1133, !1137, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1150, !1153, !1161, !1162, !1163, !1164, !1165, !1166, !1169, !1172, !1175, !1176, !1179, !1182, !1183, !1184, !1187, !1190, !1193, !1196, !1197, !1198, !1199, !1200}
!320 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !317, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__basic_string_common<true>", scope: !7, file: !318, line: 583, size: 8, elements: !322, templateParams: !329, identifier: "_ZTSNSt3__121__basic_string_commonILb1EEE")
!322 = !{!323, !328}
!323 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv", scope: !321, file: !318, line: 561, type: !324, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!328 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_out_of_rangeEv", scope: !321, file: !318, line: 562, type: !324, isLocal: false, isDefinition: false, scopeLine: 562, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!329 = !{!227}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__r_", scope: !317, file: !318, line: 748, baseType: !331, size: 192)
!331 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >", scope: !7, file: !332, line: 2144, size: 192, elements: !333, templateParams: !583, identifier: "_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE")
!332 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!333 = !{!334, !540, !564, !568, !573, !576, !579}
!334 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !331, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>", scope: !7, file: !332, line: 2076, size: 192, elements: !336, templateParams: !536, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE")
!336 = !{!337, !519, !523, !528}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !335, file: !332, line: 2105, baseType: !338, size: 192, flags: DIFlagPrivate)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__rep", scope: !317, file: !318, line: 738, size: 192, elements: !339, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE")
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !318, line: 740, baseType: !341, size: 192)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !318, line: 740, size: 192, elements: !342, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repUt_E")
!342 = !{!343, !498, !512}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__l", scope: !341, file: !318, line: 742, baseType: !344, size: 192)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__long", scope: !317, file: !318, line: 699, size: 192, elements: !345, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE")
!345 = !{!346, !495, !496}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__cap_", scope: !344, file: !318, line: 701, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !317, file: !318, line: 643, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !349, file: !332, line: 1517, baseType: !490)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<char> >", scope: !7, file: !332, line: 1506, size: 8, elements: !350, templateParams: !489, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIcEEEE")
!350 = !{!351, !408, !434, !437, !442, !445, !462, !477, !480, !483, !486}
!351 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !349, file: !332, line: 1540, type: !352, isLocal: false, isDefinition: false, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !406, !348}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !349, file: !332, line: 1511, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !356, file: !332, line: 1031, baseType: !402)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char> >", scope: !7, file: !332, line: 1029, size: 8, elements: !357, templateParams: !358, identifier: "_ZTSNSt3__114__pointer_typeIcNS_9allocatorIcEEEE")
!357 = !{}
!358 = !{!359, !360}
!359 = !DITemplateTypeParameter(name: "_Tp", type: !309)
!360 = !DITemplateTypeParameter(name: "_Dp", type: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !7, file: !332, line: 1759, size: 8, elements: !362, templateParams: !401, identifier: "_ZTSNSt3__19allocatorIcEE")
!362 = !{!363, !367, !376, !382, !392, !395, !398}
!363 = !DISubprogram(name: "allocator", scope: !361, file: !332, line: 1775, type: !364, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!367 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERc", scope: !361, file: !332, line: 1777, type: !368, isLocal: false, isDefinition: false, scopeLine: 1777, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !372, !374}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !361, file: !332, line: 1764, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !361, file: !332, line: 1766, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !309, size: 64)
!376 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERKc", scope: !361, file: !332, line: 1779, type: !377, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !372, !380}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !361, file: !332, line: 1765, baseType: !307)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !361, file: !332, line: 1767, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !308, size: 64)
!382 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !361, file: !332, line: 1781, type: !383, isLocal: false, isDefinition: false, scopeLine: 1781, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!383 = !DISubroutineType(types: !384)
!384 = !{!370, !366, !385, !386}
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !332, line: 1762, baseType: !84)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !387, file: !332, line: 702, baseType: !390)
!387 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<void>", scope: !7, file: !332, line: 698, size: 8, elements: !357, templateParams: !388, identifier: "_ZTSNSt3__19allocatorIvEE")
!388 = !{!389}
!389 = !DITemplateTypeParameter(name: "_Tp", type: null)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!392 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !361, file: !332, line: 1788, type: !393, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !366, !370, !385}
!395 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIcE8max_sizeEv", scope: !361, file: !332, line: 1790, type: !396, isLocal: false, isDefinition: false, scopeLine: 1790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!396 = !DISubroutineType(types: !397)
!397 = !{!385, !372}
!398 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIcE7destroyEPc", scope: !361, file: !332, line: 1853, type: !399, isLocal: false, isDefinition: false, scopeLine: 1853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !366, !370}
!401 = !{!359}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !403, file: !332, line: 1017, baseType: !370)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char>, true>", scope: !404, file: !332, line: 1015, size: 8, elements: !357, templateParams: !405, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeIcNS_9allocatorIcEELb1EEE")
!404 = !DINamespace(name: "__pointer_type_imp", scope: !7, file: !332, line: 1011)
!405 = !{!359, !360, !227}
!406 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !349, file: !332, line: 1508, baseType: !361)
!408 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKv", scope: !349, file: !332, line: 1543, type: !409, isLocal: false, isDefinition: false, scopeLine: 1543, flags: DIFlagPrototyped, isOptimized: true)
!409 = !DISubroutineType(types: !410)
!410 = !{!354, !406, !348, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !349, file: !332, line: 1514, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !413, file: !332, line: 1109, baseType: !417)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_void_pointer<char *, std::__1::allocator<char>, false>", scope: !7, file: !332, line: 1106, size: 8, elements: !357, templateParams: !414, identifier: "_ZTSNSt3__120__const_void_pointerIPcNS_9allocatorIcEELb0EEE")
!414 = !{!415, !416, !176}
!415 = !DITemplateTypeParameter(name: "_Ptr", type: !371)
!416 = !DITemplateTypeParameter(name: "_Alloc", type: !361)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !418, file: !332, line: 974, baseType: !390)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !7, file: !332, line: 967, size: 8, elements: !419, templateParams: !433, identifier: "_ZTSNSt3__114pointer_traitsIPcEE")
!419 = !{!420}
!420 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPcE10pointer_toERc", scope: !418, file: !332, line: 983, type: !421, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true)
!421 = !DISubroutineType(types: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !418, file: !332, line: 969, baseType: !371)
!424 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !427, file: !426, line: 414, baseType: !309)
!426 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<char *>::__nat, char>", scope: !7, file: !426, line: 414, size: 8, elements: !357, templateParams: !428, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPcE5__natEcEE")
!428 = !{!429, !430, !432}
!429 = !DITemplateValueParameter(name: "_Bp", type: !104, value: i8 0)
!430 = !DITemplateTypeParameter(name: "_If", type: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !418, file: !332, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPcE5__natE")
!432 = !DITemplateTypeParameter(name: "_Then", type: !309)
!433 = !{!415}
!434 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !349, file: !332, line: 1548, type: !435, isLocal: false, isDefinition: false, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: true)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !406, !354, !348}
!437 = !DISubprogram(name: "max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_", scope: !349, file: !332, line: 1592, type: !438, isLocal: false, isDefinition: false, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true)
!438 = !DISubroutineType(types: !439)
!439 = !{!348, !440}
!440 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!442 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionERKS2_", scope: !349, file: !332, line: 1597, type: !443, isLocal: false, isDefinition: false, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true)
!443 = !DISubroutineType(types: !444)
!444 = !{!407, !440}
!445 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb1EEE", scope: !349, file: !332, line: 1697, type: !446, isLocal: false, isDefinition: false, scopeLine: 1697, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!446 = !DISubroutineType(types: !447)
!447 = !{!354, !406, !348, !411, !448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !7, file: !426, line: 528, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !7, file: !426, line: 504, size: 8, elements: !450, templateParams: !459, identifier: "_ZTSNSt3__117integral_constantIbLb1EEE")
!450 = !{!451, !453}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !449, file: !426, line: 506, baseType: !452, flags: DIFlagStaticMember, extraData: i1 true)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!453 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb1EEcvbEv", scope: !449, file: !426, line: 510, type: !454, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !449, file: !426, line: 507, baseType: !104)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!459 = !{!460, !461}
!460 = !DITemplateTypeParameter(name: "_Tp", type: !104)
!461 = !DITemplateValueParameter(name: "__v", type: !104, value: i8 1)
!462 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb0EEE", scope: !349, file: !332, line: 1701, type: !463, isLocal: false, isDefinition: false, scopeLine: 1701, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!463 = !DISubroutineType(types: !464)
!464 = !{!354, !406, !348, !411, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !7, file: !426, line: 529, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !7, file: !426, line: 504, size: 8, elements: !467, templateParams: !475, identifier: "_ZTSNSt3__117integral_constantIbLb0EEE")
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !466, file: !426, line: 506, baseType: !452, flags: DIFlagStaticMember, extraData: i1 false)
!469 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb0EEcvbEv", scope: !466, file: !426, line: 510, type: !470, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !466, file: !426, line: 507, baseType: !104)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!475 = !{!460, !476}
!476 = !DITemplateValueParameter(name: "__v", type: !104, value: i8 0)
!477 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_", scope: !349, file: !332, line: 1730, type: !478, isLocal: false, isDefinition: false, scopeLine: 1730, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!478 = !DISubroutineType(types: !479)
!479 = !{!348, !448, !440}
!480 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb0EEERKS2_", scope: !349, file: !332, line: 1733, type: !481, isLocal: false, isDefinition: false, scopeLine: 1733, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!481 = !DISubroutineType(types: !482)
!482 = !{!348, !465, !440}
!483 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb1EEERKS2_", scope: !349, file: !332, line: 1738, type: !484, isLocal: false, isDefinition: false, scopeLine: 1738, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!484 = !DISubroutineType(types: !485)
!485 = !{!407, !448, !440}
!486 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS2_", scope: !349, file: !332, line: 1742, type: !487, isLocal: false, isDefinition: false, scopeLine: 1742, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!487 = !DISubroutineType(types: !488)
!488 = !{!407, !465, !440}
!489 = !{!416}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !491, file: !332, line: 1151, baseType: !494)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<char>, long, true>", scope: !7, file: !332, line: 1149, size: 8, elements: !357, templateParams: !492, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIcEElLb1EEE")
!492 = !{!416, !493, !227}
!493 = !DITemplateTypeParameter(name: "_DiffType", type: !67)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !361, file: !332, line: 1762, baseType: !84)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !344, file: !318, line: 702, baseType: !347, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !344, file: !318, line: 703, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !317, file: !318, line: 647, baseType: !354)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !341, file: !318, line: 743, baseType: !499, size: 192)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__short", scope: !317, file: !318, line: 717, size: 192, elements: !500, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortE")
!500 = !{!501, !508}
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !318, line: 719, baseType: !502, size: 8)
!502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !318, line: 719, size: 8, elements: !503, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortUt_E")
!503 = !{!504, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !502, file: !318, line: 721, baseType: !505, size: 8)
!505 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__lx", scope: !502, file: !318, line: 722, baseType: !507, size: 8)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !317, file: !318, line: 640, baseType: !309)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !499, file: !318, line: 724, baseType: !509, size: 184, offset: 8)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 184, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 23)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !341, file: !318, line: 744, baseType: !513, size: 192)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__raw", scope: !317, file: !318, line: 733, size: 192, elements: !514, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__rawE")
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__words", scope: !513, file: !318, line: 735, baseType: !516, size: 192)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 3)
!519 = !DISubprogram(name: "__compressed_pair_elem", scope: !335, file: !332, line: 2082, type: !520, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !335, file: !332, line: 2101, type: !524, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!524 = !DISubroutineType(types: !525)
!525 = !{!526, !522}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !335, file: !332, line: 2078, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !338, size: 64)
!528 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !335, file: !332, line: 2102, type: !529, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !534}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !335, file: !332, line: 2079, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!536 = !{!537, !538, !539}
!537 = !DITemplateTypeParameter(name: "_Tp", type: !338)
!538 = !DITemplateValueParameter(name: "_Idx", type: !26, value: i32 0)
!539 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !104, value: i8 0)
!540 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !331, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<char>, 1, true>", scope: !7, file: !332, line: 2109, size: 8, elements: !542, templateParams: !560, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEE")
!542 = !{!543, !544, !548, !553}
!543 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !541, baseType: !361, flags: DIFlagPrivate)
!544 = !DISubprogram(name: "__compressed_pair_elem", scope: !541, file: !332, line: 2116, type: !545, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !541, file: !332, line: 2136, type: !549, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !547}
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !541, file: !332, line: 2111, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !361, size: 64)
!553 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !541, file: !332, line: 2137, type: !554, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !558}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !541, file: !332, line: 2112, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !373, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!560 = !{!561, !562, !563}
!561 = !DITemplateTypeParameter(name: "_Tp", type: !361)
!562 = !DITemplateValueParameter(name: "_Idx", type: !26, value: i32 1)
!563 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !104, value: i8 1)
!564 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !331, file: !332, line: 2212, type: !565, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!565 = !DISubroutineType(types: !566)
!566 = !{!526, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!568 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !331, file: !332, line: 2217, type: !569, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!569 = !DISubroutineType(types: !570)
!570 = !{!531, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!573 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !331, file: !332, line: 2222, type: !574, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!574 = !DISubroutineType(types: !575)
!575 = !{!551, !567}
!576 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !331, file: !332, line: 2227, type: !577, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!577 = !DISubroutineType(types: !578)
!578 = !{!556, !571}
!579 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E4swapERS8_", scope: !331, file: !332, line: 2232, type: !580, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !567, !582}
!582 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !331, size: 64)
!583 = !{!584, !585}
!584 = !DITemplateTypeParameter(name: "_T1", type: !338)
!585 = !DITemplateTypeParameter(name: "_T2", type: !361)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !317, file: !318, line: 751, baseType: !587, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!588 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 753, type: !589, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!592 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 756, type: !593, isLocal: false, isDefinition: false, scopeLine: 756, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !591, !595}
!595 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !317, file: !318, line: 641, baseType: !361)
!598 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 763, type: !599, isLocal: false, isDefinition: false, scopeLine: 763, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !591, !601}
!601 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!603 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 764, type: !604, isLocal: false, isDefinition: false, scopeLine: 764, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !591, !601, !595}
!606 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 768, type: !607, isLocal: false, isDefinition: false, scopeLine: 768, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !591, !609}
!609 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !317, size: 64)
!610 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 776, type: !611, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !591, !609, !595}
!613 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 778, type: !614, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !591, !307}
!616 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 780, type: !617, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !591, !307, !557}
!619 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 782, type: !620, isLocal: false, isDefinition: false, scopeLine: 782, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !591, !307, !347}
!622 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 784, type: !623, isLocal: false, isDefinition: false, scopeLine: 784, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !591, !307, !347, !557}
!625 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 786, type: !626, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !591, !347, !309}
!628 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 788, type: !629, isLocal: false, isDefinition: false, scopeLine: 788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !591, !347, !309, !557}
!631 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 789, type: !632, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !591, !601, !347, !347, !557}
!634 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 792, type: !635, isLocal: false, isDefinition: false, scopeLine: 792, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !591, !601, !347, !557}
!637 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 800, type: !638, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !591, !640}
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__self_view", scope: !317, file: !318, line: 638, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::__1::char_traits<char> >", scope: !7, file: !642, line: 184, size: 128, elements: !643, templateParams: !773, identifier: "_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE")
!642 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string_view", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!643 = !{!644, !647, !651, !652, !656, !661, !665, !668, !671, !677, !678, !679, !680, !686, !687, !688, !689, !692, !693, !694, !697, !701, !702, !705, !706, !709, !712, !713, !716, !720, !723, !726, !729, !732, !735, !738, !741, !744, !747, !750, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !641, file: !642, line: 199, baseType: !645, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !642, line: 197, baseType: !84)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !641, file: !642, line: 566, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !641, file: !642, line: 188, baseType: !309)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !641, file: !642, line: 567, baseType: !646, size: 64, offset: 64)
!652 = !DISubprogram(name: "basic_string_view", scope: !641, file: !642, line: 207, type: !653, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!656 = !DISubprogram(name: "basic_string_view", scope: !641, file: !642, line: 210, type: !657, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !655, !659}
!659 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!661 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEaSERKS3_", scope: !641, file: !642, line: 213, type: !662, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!662 = !DISubroutineType(types: !663)
!663 = !{!664, !655, !659}
!664 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !641, size: 64)
!665 = !DISubprogram(name: "basic_string_view", scope: !641, file: !642, line: 216, type: !666, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !655, !307, !646}
!668 = !DISubprogram(name: "basic_string_view", scope: !641, file: !642, line: 225, type: !669, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !655, !307}
!671 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginEv", scope: !641, file: !642, line: 230, type: !672, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!672 = !DISubroutineType(types: !673)
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !641, file: !642, line: 193, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !641, file: !642, line: 190, baseType: !307)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!677 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endEv", scope: !641, file: !642, line: 233, type: !672, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!678 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginEv", scope: !641, file: !642, line: 236, type: !672, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!679 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendEv", scope: !641, file: !642, line: 239, type: !672, isLocal: false, isDefinition: false, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!680 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6rbeginEv", scope: !641, file: !642, line: 242, type: !681, isLocal: false, isDefinition: false, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!681 = !DISubroutineType(types: !682)
!682 = !{!683, !676}
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !641, file: !642, line: 195, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !7, file: !685, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorIPKcEE")
!685 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iterator", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!686 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4rendEv", scope: !641, file: !642, line: 245, type: !681, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!687 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7crbeginEv", scope: !641, file: !642, line: 248, type: !681, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!688 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5crendEv", scope: !641, file: !642, line: 251, type: !681, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!689 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv", scope: !641, file: !642, line: 255, type: !690, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!690 = !DISubroutineType(types: !691)
!691 = !{!646, !676}
!692 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6lengthEv", scope: !641, file: !642, line: 258, type: !690, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!693 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE8max_sizeEv", scope: !641, file: !642, line: 261, type: !690, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!694 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5emptyEv", scope: !641, file: !642, line: 264, type: !695, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!695 = !DISubroutineType(types: !696)
!696 = !{!104, !676}
!697 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEEixEm", scope: !641, file: !642, line: 268, type: !698, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!698 = !DISubroutineType(types: !699)
!699 = !{!700, !676, !646}
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !641, file: !642, line: 192, baseType: !381)
!701 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE2atEm", scope: !641, file: !642, line: 271, type: !698, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!702 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5frontEv", scope: !641, file: !642, line: 279, type: !703, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!703 = !DISubroutineType(types: !704)
!704 = !{!700, !676}
!705 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4backEv", scope: !641, file: !642, line: 285, type: !703, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!706 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv", scope: !641, file: !642, line: 291, type: !707, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!707 = !DISubroutineType(types: !708)
!708 = !{!675, !676}
!709 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_prefixEm", scope: !641, file: !642, line: 295, type: !710, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !655, !646}
!712 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_suffixEm", scope: !641, file: !642, line: 303, type: !710, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!713 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE4swapERS3_", scope: !641, file: !642, line: 310, type: !714, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !655, !664}
!716 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4copyEPcmm", scope: !641, file: !642, line: 322, type: !717, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!717 = !DISubroutineType(types: !718)
!718 = !{!719, !676, !371, !646, !646}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !641, file: !642, line: 197, baseType: !84)
!720 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrEmm", scope: !641, file: !642, line: 332, type: !721, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!721 = !DISubroutineType(types: !722)
!722 = !{!641, !676, !646, !646}
!723 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_", scope: !641, file: !642, line: 339, type: !724, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!724 = !DISubroutineType(types: !725)
!725 = !{!26, !676, !641}
!726 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_", scope: !641, file: !642, line: 349, type: !727, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!727 = !DISubroutineType(types: !728)
!728 = !{!26, !676, !646, !646, !641}
!729 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_mm", scope: !641, file: !642, line: 355, type: !730, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!730 = !DISubroutineType(types: !731)
!731 = !{!26, !676, !646, !646, !641, !646, !646}
!732 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEPKc", scope: !641, file: !642, line: 362, type: !733, isLocal: false, isDefinition: false, scopeLine: 362, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!733 = !DISubroutineType(types: !734)
!734 = !{!26, !676, !307}
!735 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKc", scope: !641, file: !642, line: 368, type: !736, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!736 = !DISubroutineType(types: !737)
!737 = !{!26, !676, !646, !646, !307}
!738 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKcm", scope: !641, file: !642, line: 374, type: !739, isLocal: false, isDefinition: false, scopeLine: 374, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!739 = !DISubroutineType(types: !740)
!740 = !{!26, !676, !646, !646, !307, !646}
!741 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findES3_m", scope: !641, file: !642, line: 381, type: !742, isLocal: false, isDefinition: false, scopeLine: 381, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!742 = !DISubroutineType(types: !743)
!743 = !{!719, !676, !641, !646}
!744 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEcm", scope: !641, file: !642, line: 389, type: !745, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!745 = !DISubroutineType(types: !746)
!746 = !{!719, !676, !309, !646}
!747 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcmm", scope: !641, file: !642, line: 396, type: !748, isLocal: false, isDefinition: false, scopeLine: 396, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!748 = !DISubroutineType(types: !749)
!749 = !{!719, !676, !307, !646, !646}
!750 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcm", scope: !641, file: !642, line: 404, type: !751, isLocal: false, isDefinition: false, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!751 = !DISubroutineType(types: !752)
!752 = !{!719, !676, !307, !646}
!753 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindES3_m", scope: !641, file: !642, line: 413, type: !742, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!754 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEcm", scope: !641, file: !642, line: 421, type: !745, isLocal: false, isDefinition: false, scopeLine: 421, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!755 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcmm", scope: !641, file: !642, line: 428, type: !748, isLocal: false, isDefinition: false, scopeLine: 428, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!756 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcm", scope: !641, file: !642, line: 436, type: !751, isLocal: false, isDefinition: false, scopeLine: 436, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!757 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofES3_m", scope: !641, file: !642, line: 445, type: !742, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!758 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEcm", scope: !641, file: !642, line: 453, type: !745, isLocal: false, isDefinition: false, scopeLine: 453, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!759 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcmm", scope: !641, file: !642, line: 457, type: !748, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!760 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcm", scope: !641, file: !642, line: 465, type: !751, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!761 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofES3_m", scope: !641, file: !642, line: 474, type: !742, isLocal: false, isDefinition: false, scopeLine: 474, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!762 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEcm", scope: !641, file: !642, line: 482, type: !745, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!763 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcmm", scope: !641, file: !642, line: 486, type: !748, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!764 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcm", scope: !641, file: !642, line: 494, type: !751, isLocal: false, isDefinition: false, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!765 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofES3_m", scope: !641, file: !642, line: 503, type: !742, isLocal: false, isDefinition: false, scopeLine: 503, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!766 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEcm", scope: !641, file: !642, line: 511, type: !745, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!767 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcmm", scope: !641, file: !642, line: 518, type: !748, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!768 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcm", scope: !641, file: !642, line: 526, type: !751, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!769 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofES3_m", scope: !641, file: !642, line: 535, type: !742, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!770 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEcm", scope: !641, file: !642, line: 543, type: !745, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!771 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcmm", scope: !641, file: !642, line: 550, type: !748, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!772 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcm", scope: !641, file: !642, line: 558, type: !751, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!773 = !{!774, !775}
!774 = !DITemplateTypeParameter(name: "_CharT", type: !309)
!775 = !DITemplateTypeParameter(name: "_Traits", type: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !7, file: !777, line: 197, size: 8, elements: !778, templateParams: !824, identifier: "_ZTSNSt3__111char_traitsIcEE")
!777 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!778 = !{!779, !786, !789, !790, !794, !797, !800, !804, !805, !808, !812, !815, !818, !821}
!779 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !776, file: !777, line: 206, type: !780, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !782, !784}
!782 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !776, file: !777, line: 199, baseType: !309)
!784 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!786 = !DISubprogram(name: "eq", linkageName: "_ZNSt3__111char_traitsIcE2eqEcc", scope: !776, file: !777, line: 207, type: !787, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true)
!787 = !DISubroutineType(types: !788)
!788 = !{!104, !783, !783}
!789 = !DISubprogram(name: "lt", linkageName: "_ZNSt3__111char_traitsIcE2ltEcc", scope: !776, file: !777, line: 209, type: !787, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true)
!790 = !DISubprogram(name: "compare", linkageName: "_ZNSt3__111char_traitsIcE7compareEPKcS3_m", scope: !776, file: !777, line: 213, type: !791, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true)
!791 = !DISubroutineType(types: !792)
!792 = !{!26, !793, !793, !84}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!794 = !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !776, file: !777, line: 215, type: !795, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true)
!795 = !DISubroutineType(types: !796)
!796 = !{!84, !793}
!797 = !DISubprogram(name: "find", linkageName: "_ZNSt3__111char_traitsIcE4findEPKcmRS2_", scope: !776, file: !777, line: 217, type: !798, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true)
!798 = !DISubroutineType(types: !799)
!799 = !{!793, !793, !84, !784}
!800 = !DISubprogram(name: "move", linkageName: "_ZNSt3__111char_traitsIcE4moveEPcPKcm", scope: !776, file: !777, line: 218, type: !801, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true)
!801 = !DISubroutineType(types: !802)
!802 = !{!803, !803, !793, !84}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!804 = !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !776, file: !777, line: 220, type: !801, isLocal: false, isDefinition: false, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true)
!805 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !776, file: !777, line: 225, type: !806, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true)
!806 = !DISubroutineType(types: !807)
!807 = !{!803, !803, !84, !783}
!808 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt3__111char_traitsIcE7not_eofEi", scope: !776, file: !777, line: 228, type: !809, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !811}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !776, file: !777, line: 200, baseType: !26)
!812 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt3__111char_traitsIcE12to_char_typeEi", scope: !776, file: !777, line: 230, type: !813, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true)
!813 = !DISubroutineType(types: !814)
!814 = !{!783, !811}
!815 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt3__111char_traitsIcE11to_int_typeEc", scope: !776, file: !777, line: 232, type: !816, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true)
!816 = !DISubroutineType(types: !817)
!817 = !{!811, !783}
!818 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !776, file: !777, line: 234, type: !819, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true)
!819 = !DISubroutineType(types: !820)
!820 = !{!104, !811, !811}
!821 = !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !776, file: !777, line: 236, type: !822, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true)
!822 = !DISubroutineType(types: !823)
!823 = !{!811}
!824 = !{!774}
!825 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 802, type: !826, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !591, !640, !557}
!828 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 811, type: !829, isLocal: false, isDefinition: false, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !591, !831}
!831 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !9, file: !832, line: 59, size: 128, elements: !833, templateParams: !852, identifier: "_ZTSSt16initializer_listIcE")
!832 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/initializer_list", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!833 = !{!834, !835, !836, !840, !843, !848, !851}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !831, file: !832, line: 61, baseType: !307, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !831, file: !832, line: 62, baseType: !84, size: 64, offset: 64)
!836 = !DISubprogram(name: "initializer_list", scope: !831, file: !832, line: 66, type: !837, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !839, !307, !84}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!840 = !DISubprogram(name: "initializer_list", scope: !831, file: !832, line: 81, type: !841, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !839}
!843 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIcE4sizeEv", scope: !831, file: !832, line: 85, type: !844, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!844 = !DISubroutineType(types: !845)
!845 = !{!84, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!848 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIcE5beginEv", scope: !831, file: !832, line: 89, type: !849, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!849 = !DISubroutineType(types: !850)
!850 = !{!307, !846}
!851 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIcE3endEv", scope: !831, file: !832, line: 93, type: !849, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!852 = !{!853}
!853 = !DITemplateTypeParameter(name: "_Ep", type: !309)
!854 = !DISubprogram(name: "basic_string", scope: !317, file: !318, line: 813, type: !855, isLocal: false, isDefinition: false, scopeLine: 813, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !591, !831, !557}
!857 = !DISubprogram(name: "~basic_string", scope: !317, file: !318, line: 816, type: !589, isLocal: false, isDefinition: false, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!858 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv", scope: !317, file: !318, line: 819, type: !859, isLocal: false, isDefinition: false, scopeLine: 819, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!859 = !DISubroutineType(types: !860)
!860 = !{!640, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!862 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_", scope: !317, file: !318, line: 821, type: !863, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!863 = !DISubroutineType(types: !864)
!864 = !{!865, !591, !601}
!865 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !317, size: 64)
!866 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEOS5_", scope: !317, file: !318, line: 830, type: !867, isLocal: false, isDefinition: false, scopeLine: 830, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!867 = !DISubroutineType(types: !868)
!868 = !{!865, !591, !609}
!869 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSESt16initializer_listIcE", scope: !317, file: !318, line: 833, type: !870, isLocal: false, isDefinition: false, scopeLine: 833, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!870 = !DISubroutineType(types: !871)
!871 = !{!865, !591, !831}
!872 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc", scope: !317, file: !318, line: 835, type: !873, isLocal: false, isDefinition: false, scopeLine: 835, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!873 = !DISubroutineType(types: !874)
!874 = !{!865, !591, !875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!877 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc", scope: !317, file: !318, line: 836, type: !878, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!878 = !DISubroutineType(types: !879)
!879 = !{!865, !591, !507}
!880 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !317, file: !318, line: 853, type: !881, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!881 = !DISubroutineType(types: !882)
!882 = !{!883, !591}
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !317, file: !318, line: 659, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<char *>", scope: !7, file: !685, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPcEE")
!885 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !317, file: !318, line: 856, type: !886, isLocal: false, isDefinition: false, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!886 = !DISubroutineType(types: !887)
!887 = !{!888, !861}
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !317, file: !318, line: 660, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<const char *>", scope: !7, file: !685, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPKcEE")
!890 = !DISubprogram(name: "end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !317, file: !318, line: 859, type: !881, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!891 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !317, file: !318, line: 862, type: !886, isLocal: false, isDefinition: false, scopeLine: 862, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!892 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !317, file: !318, line: 866, type: !893, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!893 = !DISubroutineType(types: !894)
!894 = !{!895, !591}
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !317, file: !318, line: 662, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<char *> >", scope: !7, file: !685, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPcEEEE")
!897 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !317, file: !318, line: 869, type: !898, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!898 = !DISubroutineType(types: !899)
!899 = !{!900, !861}
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !317, file: !318, line: 663, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<const char *> >", scope: !7, file: !685, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKcEEEE")
!902 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !317, file: !318, line: 872, type: !893, isLocal: false, isDefinition: false, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!903 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !317, file: !318, line: 875, type: !898, isLocal: false, isDefinition: false, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!904 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6cbeginEv", scope: !317, file: !318, line: 879, type: !886, isLocal: false, isDefinition: false, scopeLine: 879, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!905 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4cendEv", scope: !317, file: !318, line: 882, type: !886, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!906 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7crbeginEv", scope: !317, file: !318, line: 885, type: !898, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!907 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5crendEv", scope: !317, file: !318, line: 888, type: !898, isLocal: false, isDefinition: false, scopeLine: 888, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!908 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !317, file: !318, line: 891, type: !909, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!909 = !DISubroutineType(types: !910)
!910 = !{!347, !861}
!911 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv", scope: !317, file: !318, line: 893, type: !909, isLocal: false, isDefinition: false, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!912 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv", scope: !317, file: !318, line: 894, type: !909, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!913 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv", scope: !317, file: !318, line: 895, type: !909, isLocal: false, isDefinition: false, scopeLine: 895, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!914 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc", scope: !317, file: !318, line: 899, type: !915, isLocal: false, isDefinition: false, scopeLine: 899, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !591, !347, !507}
!917 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm", scope: !317, file: !318, line: 900, type: !918, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !591, !347}
!920 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm", scope: !317, file: !318, line: 902, type: !918, isLocal: false, isDefinition: false, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!921 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13shrink_to_fitEv", scope: !317, file: !318, line: 904, type: !589, isLocal: false, isDefinition: false, scopeLine: 904, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!922 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearEv", scope: !317, file: !318, line: 906, type: !589, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!923 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyEv", scope: !317, file: !318, line: 907, type: !924, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!924 = !DISubroutineType(types: !925)
!925 = !{!104, !861}
!926 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !317, file: !318, line: 909, type: !927, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!927 = !DISubroutineType(types: !928)
!928 = !{!929, !861, !347}
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !317, file: !318, line: 646, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !876, size: 64)
!931 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !317, file: !318, line: 910, type: !932, isLocal: false, isDefinition: false, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!932 = !DISubroutineType(types: !933)
!933 = !{!934, !591, !347}
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !317, file: !318, line: 645, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !507, size: 64)
!936 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !317, file: !318, line: 912, type: !927, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!937 = !DISubprogram(name: "at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !317, file: !318, line: 913, type: !932, isLocal: false, isDefinition: false, scopeLine: 913, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!938 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLERKS5_", scope: !317, file: !318, line: 915, type: !863, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!939 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLENS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 916, type: !940, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!940 = !DISubroutineType(types: !941)
!941 = !{!865, !591, !640}
!942 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEPKc", scope: !317, file: !318, line: 917, type: !873, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!943 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc", scope: !317, file: !318, line: 918, type: !878, isLocal: false, isDefinition: false, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!944 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLESt16initializer_listIcE", scope: !317, file: !318, line: 920, type: !870, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!945 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_", scope: !317, file: !318, line: 924, type: !863, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!946 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendENS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 926, type: !940, isLocal: false, isDefinition: false, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!947 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm", scope: !317, file: !318, line: 927, type: !948, isLocal: false, isDefinition: false, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!948 = !DISubroutineType(types: !949)
!949 = !{!865, !591, !601, !347, !347}
!950 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm", scope: !317, file: !318, line: 936, type: !951, isLocal: false, isDefinition: false, scopeLine: 936, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!951 = !DISubroutineType(types: !952)
!952 = !{!865, !591, !875, !347}
!953 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc", scope: !317, file: !318, line: 937, type: !873, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!954 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc", scope: !317, file: !318, line: 938, type: !955, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!955 = !DISubroutineType(types: !956)
!956 = !{!865, !591, !347, !507}
!957 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendESt16initializer_listIcE", scope: !317, file: !318, line: 971, type: !870, isLocal: false, isDefinition: false, scopeLine: 971, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!958 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc", scope: !317, file: !318, line: 974, type: !959, isLocal: false, isDefinition: false, scopeLine: 974, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !591, !507}
!961 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backEv", scope: !317, file: !318, line: 976, type: !589, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!962 = !DISubprogram(name: "front", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !317, file: !318, line: 977, type: !963, isLocal: false, isDefinition: false, scopeLine: 977, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!963 = !DISubroutineType(types: !964)
!964 = !{!934, !591}
!965 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !317, file: !318, line: 978, type: !966, isLocal: false, isDefinition: false, scopeLine: 978, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!966 = !DISubroutineType(types: !967)
!967 = !{!929, !861}
!968 = !DISubprogram(name: "back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !317, file: !318, line: 979, type: !963, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!969 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !317, file: !318, line: 980, type: !966, isLocal: false, isDefinition: false, scopeLine: 980, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!970 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignENS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 983, type: !940, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!971 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_", scope: !317, file: !318, line: 985, type: !863, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!972 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEOS5_", scope: !317, file: !318, line: 988, type: !867, isLocal: false, isDefinition: false, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!973 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_mm", scope: !317, file: !318, line: 992, type: !948, isLocal: false, isDefinition: false, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!974 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm", scope: !317, file: !318, line: 1001, type: !951, isLocal: false, isDefinition: false, scopeLine: 1001, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!975 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc", scope: !317, file: !318, line: 1002, type: !873, isLocal: false, isDefinition: false, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!976 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEmc", scope: !317, file: !318, line: 1003, type: !955, isLocal: false, isDefinition: false, scopeLine: 1003, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!977 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignESt16initializer_listIcE", scope: !317, file: !318, line: 1024, type: !870, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!978 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_", scope: !317, file: !318, line: 1028, type: !979, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!979 = !DISubroutineType(types: !980)
!980 = !{!865, !591, !347, !601}
!981 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmNS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 1030, type: !982, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!982 = !DISubroutineType(types: !983)
!983 = !{!865, !591, !347, !640}
!984 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_mm", scope: !317, file: !318, line: 1039, type: !985, isLocal: false, isDefinition: false, scopeLine: 1039, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!985 = !DISubroutineType(types: !986)
!986 = !{!865, !591, !347, !601, !347, !347}
!987 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm", scope: !317, file: !318, line: 1040, type: !988, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!988 = !DISubroutineType(types: !989)
!989 = !{!865, !591, !347, !875, !347}
!990 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc", scope: !317, file: !318, line: 1041, type: !991, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!991 = !DISubroutineType(types: !992)
!992 = !{!865, !591, !347, !875}
!993 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmmc", scope: !317, file: !318, line: 1042, type: !994, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!994 = !DISubroutineType(types: !995)
!995 = !{!865, !591, !347, !347, !507}
!996 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc", scope: !317, file: !318, line: 1043, type: !997, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!997 = !DISubroutineType(types: !998)
!998 = !{!883, !591, !888, !507}
!999 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEmc", scope: !317, file: !318, line: 1045, type: !1000, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!883, !591, !888, !347, !507}
!1002 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEESt16initializer_listIcE", scope: !317, file: !318, line: 1066, type: !1003, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!883, !591, !888, !831}
!1005 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm", scope: !317, file: !318, line: 1070, type: !1006, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!865, !591, !347, !347}
!1008 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEE", scope: !317, file: !318, line: 1072, type: !1009, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!883, !591, !888}
!1011 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEES9_", scope: !317, file: !318, line: 1074, type: !1012, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!883, !591, !888, !888}
!1014 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_", scope: !317, file: !318, line: 1077, type: !1015, isLocal: false, isDefinition: false, scopeLine: 1077, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!865, !591, !347, !347, !601}
!1017 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmNS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 1079, type: !1018, isLocal: false, isDefinition: false, scopeLine: 1079, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!865, !591, !347, !347, !640}
!1020 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_mm", scope: !317, file: !318, line: 1080, type: !1021, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!865, !591, !347, !347, !601, !347, !347}
!1023 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm", scope: !317, file: !318, line: 1089, type: !1024, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!865, !591, !347, !347, !875, !347}
!1026 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKc", scope: !317, file: !318, line: 1090, type: !1027, isLocal: false, isDefinition: false, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!865, !591, !347, !347, !875}
!1029 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmmc", scope: !317, file: !318, line: 1091, type: !1030, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!865, !591, !347, !347, !347, !507}
!1032 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_RKS5_", scope: !317, file: !318, line: 1093, type: !1033, isLocal: false, isDefinition: false, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!865, !591, !888, !888, !601}
!1035 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_NS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 1095, type: !1036, isLocal: false, isDefinition: false, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!865, !591, !888, !888, !640}
!1038 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_m", scope: !317, file: !318, line: 1097, type: !1039, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!865, !591, !888, !888, !875, !347}
!1041 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_", scope: !317, file: !318, line: 1099, type: !1042, isLocal: false, isDefinition: false, scopeLine: 1099, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!865, !591, !888, !888, !875}
!1044 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_mc", scope: !317, file: !318, line: 1101, type: !1045, isLocal: false, isDefinition: false, scopeLine: 1101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!865, !591, !888, !888, !347, !507}
!1047 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_St16initializer_listIcE", scope: !317, file: !318, line: 1112, type: !1048, isLocal: false, isDefinition: false, scopeLine: 1112, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!865, !591, !888, !888, !831}
!1050 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm", scope: !317, file: !318, line: 1116, type: !1051, isLocal: false, isDefinition: false, scopeLine: 1116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!347, !861, !1053, !347, !347}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!1054 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrEmm", scope: !317, file: !318, line: 1118, type: !1055, isLocal: false, isDefinition: false, scopeLine: 1118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!317, !861, !347, !347}
!1057 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4swapERS5_", scope: !317, file: !318, line: 1121, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !591, !865}
!1060 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv", scope: !317, file: !318, line: 1130, type: !1061, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!875, !861}
!1063 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !317, file: !318, line: 1132, type: !1061, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1064 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv", scope: !317, file: !318, line: 1139, type: !1065, isLocal: false, isDefinition: false, scopeLine: 1139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!597, !861}
!1067 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findERKS5_m", scope: !317, file: !318, line: 1142, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!347, !861, !601, !347}
!1070 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findENS_17basic_string_viewIcS2_EEm", scope: !317, file: !318, line: 1144, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!347, !861, !640, !347}
!1073 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcmm", scope: !317, file: !318, line: 1145, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!347, !861, !875, !347, !347}
!1076 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcm", scope: !317, file: !318, line: 1147, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!347, !861, !875, !347}
!1079 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm", scope: !317, file: !318, line: 1148, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!347, !861, !507, !347}
!1082 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindERKS5_m", scope: !317, file: !318, line: 1151, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1083 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindENS_17basic_string_viewIcS2_EEm", scope: !317, file: !318, line: 1153, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1084 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcmm", scope: !317, file: !318, line: 1154, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1085 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcm", scope: !317, file: !318, line: 1156, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1086 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm", scope: !317, file: !318, line: 1157, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1087 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofERKS5_m", scope: !317, file: !318, line: 1160, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1088 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofENS_17basic_string_viewIcS2_EEm", scope: !317, file: !318, line: 1162, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1089 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcmm", scope: !317, file: !318, line: 1163, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1090 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcm", scope: !317, file: !318, line: 1165, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1091 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEcm", scope: !317, file: !318, line: 1167, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1092 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofERKS5_m", scope: !317, file: !318, line: 1170, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1093 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofENS_17basic_string_viewIcS2_EEm", scope: !317, file: !318, line: 1172, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1094 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcmm", scope: !317, file: !318, line: 1173, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1095 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcm", scope: !317, file: !318, line: 1175, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1096 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEcm", scope: !317, file: !318, line: 1177, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1097 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofERKS5_m", scope: !317, file: !318, line: 1180, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1180, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1098 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofENS_17basic_string_viewIcS2_EEm", scope: !317, file: !318, line: 1182, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1099 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcmm", scope: !317, file: !318, line: 1183, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1100 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcm", scope: !317, file: !318, line: 1185, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1101 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEcm", scope: !317, file: !318, line: 1187, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1102 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofERKS5_m", scope: !317, file: !318, line: 1190, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1103 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofENS_17basic_string_viewIcS2_EEm", scope: !317, file: !318, line: 1192, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1104 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcmm", scope: !317, file: !318, line: 1193, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1105 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcm", scope: !317, file: !318, line: 1195, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1106 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEcm", scope: !317, file: !318, line: 1197, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1107 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_", scope: !317, file: !318, line: 1200, type: !1108, isLocal: false, isDefinition: false, scopeLine: 1200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!26, !861, !601}
!1110 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareENS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 1202, type: !1111, isLocal: false, isDefinition: false, scopeLine: 1202, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!26, !861, !640}
!1113 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmNS_17basic_string_viewIcS2_EE", scope: !317, file: !318, line: 1204, type: !1114, isLocal: false, isDefinition: false, scopeLine: 1204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!26, !861, !347, !347, !640}
!1116 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_", scope: !317, file: !318, line: 1206, type: !1117, isLocal: false, isDefinition: false, scopeLine: 1206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!26, !861, !347, !347, !601}
!1119 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_mm", scope: !317, file: !318, line: 1207, type: !1120, isLocal: false, isDefinition: false, scopeLine: 1207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!26, !861, !347, !347, !601, !347, !347}
!1122 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc", scope: !317, file: !318, line: 1216, type: !1123, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!26, !861, !875}
!1125 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKc", scope: !317, file: !318, line: 1217, type: !1126, isLocal: false, isDefinition: false, scopeLine: 1217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!26, !861, !347, !347, !875}
!1128 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm", scope: !317, file: !318, line: 1218, type: !1129, isLocal: false, isDefinition: false, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!26, !861, !347, !347, !875, !347}
!1131 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12__invariantsEv", scope: !317, file: !318, line: 1220, type: !924, isLocal: false, isDefinition: false, scopeLine: 1220, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1132 = !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !317, file: !318, line: 1223, type: !924, isLocal: false, isDefinition: false, scopeLine: 1223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1133 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !317, file: !318, line: 1237, type: !1134, isLocal: false, isDefinition: false, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1136, !591}
!1136 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !597, size: 64)
!1137 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !317, file: !318, line: 1240, type: !1138, isLocal: false, isDefinition: false, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!595, !861}
!1140 = !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !317, file: !318, line: 1264, type: !918, isLocal: false, isDefinition: false, scopeLine: 1264, flags: DIFlagPrototyped, isOptimized: true)
!1141 = !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !317, file: !318, line: 1272, type: !909, isLocal: false, isDefinition: false, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: true)
!1142 = !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !317, file: !318, line: 1282, type: !918, isLocal: false, isDefinition: false, scopeLine: 1282, flags: DIFlagPrototyped, isOptimized: true)
!1143 = !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !317, file: !318, line: 1285, type: !909, isLocal: false, isDefinition: false, scopeLine: 1285, flags: DIFlagPrototyped, isOptimized: true)
!1144 = !DISubprogram(name: "__set_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm", scope: !317, file: !318, line: 1288, type: !918, isLocal: false, isDefinition: false, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: true)
!1145 = !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !317, file: !318, line: 1292, type: !918, isLocal: false, isDefinition: false, scopeLine: 1292, flags: DIFlagPrototyped, isOptimized: true)
!1146 = !DISubprogram(name: "__get_long_cap", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv", scope: !317, file: !318, line: 1295, type: !909, isLocal: false, isDefinition: false, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: true)
!1147 = !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !317, file: !318, line: 1299, type: !1148, isLocal: false, isDefinition: false, scopeLine: 1299, flags: DIFlagPrototyped, isOptimized: true)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !591, !497}
!1150 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !317, file: !318, line: 1302, type: !1151, isLocal: false, isDefinition: false, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!497, !591}
!1153 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !317, file: !318, line: 1305, type: !1154, isLocal: false, isDefinition: false, scopeLine: 1305, flags: DIFlagPrototyped, isOptimized: true)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!1156, !861}
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !317, file: !318, line: 648, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !349, file: !332, line: 1512, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1159, file: !332, line: 1048, baseType: !379)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<char, char *, std::__1::allocator<char>, true>", scope: !7, file: !332, line: 1046, size: 8, elements: !357, templateParams: !1160, identifier: "_ZTSNSt3__115__const_pointerIcPcNS_9allocatorIcEELb1EEE")
!1160 = !{!359, !415, !416, !227}
!1161 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !317, file: !318, line: 1308, type: !1151, isLocal: false, isDefinition: false, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true)
!1162 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !317, file: !318, line: 1311, type: !1154, isLocal: false, isDefinition: false, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true)
!1163 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !317, file: !318, line: 1314, type: !1151, isLocal: false, isDefinition: false, scopeLine: 1314, flags: DIFlagPrototyped, isOptimized: true)
!1164 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !317, file: !318, line: 1317, type: !1154, isLocal: false, isDefinition: false, scopeLine: 1317, flags: DIFlagPrototyped, isOptimized: true)
!1165 = !DISubprogram(name: "__zero", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv", scope: !317, file: !318, line: 1321, type: !589, isLocal: false, isDefinition: false, scopeLine: 1321, flags: DIFlagPrototyped, isOptimized: true)
!1166 = !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !317, file: !318, line: 1334, type: !1167, isLocal: false, isDefinition: false, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: true)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!347, !347}
!1169 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm", scope: !317, file: !318, line: 1340, type: !1170, isLocal: false, isDefinition: false, scopeLine: 1340, flags: DIFlagPrototyped, isOptimized: true)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !591, !875, !347, !347}
!1172 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !317, file: !318, line: 1342, type: !1173, isLocal: false, isDefinition: false, scopeLine: 1342, flags: DIFlagPrototyped, isOptimized: true)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !591, !875, !347}
!1175 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !317, file: !318, line: 1344, type: !915, isLocal: false, isDefinition: false, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: true)
!1176 = !DISubprogram(name: "__grow_by", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm", scope: !317, file: !318, line: 1364, type: !1177, isLocal: false, isDefinition: false, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: true)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !591, !347, !347, !347, !347, !347, !347}
!1179 = !DISubprogram(name: "__grow_by_and_replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc", scope: !317, file: !318, line: 1366, type: !1180, isLocal: false, isDefinition: false, scopeLine: 1366, flags: DIFlagPrototyped, isOptimized: true)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !591, !347, !347, !347, !347, !347, !347, !875}
!1182 = !DISubprogram(name: "__erase_to_end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endEm", scope: !317, file: !318, line: 1371, type: !918, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: true)
!1183 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_", scope: !317, file: !318, line: 1374, type: !599, isLocal: false, isDefinition: false, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: true)
!1184 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb1EEE", scope: !317, file: !318, line: 1379, type: !1185, isLocal: false, isDefinition: false, scopeLine: 1379, flags: DIFlagPrototyped, isOptimized: true)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !591, !601, !448}
!1187 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb0EEE", scope: !317, file: !318, line: 1406, type: !1188, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: true)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !591, !601, !465}
!1190 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb0EEE", scope: !317, file: !318, line: 1411, type: !1191, isLocal: false, isDefinition: false, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !591, !865, !465}
!1193 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb1EEE", scope: !317, file: !318, line: 1414, type: !1194, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: true)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !591, !865, !448}
!1196 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_", scope: !317, file: !318, line: 1424, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: true)
!1197 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb1EEE", scope: !317, file: !318, line: 1432, type: !1194, isLocal: false, isDefinition: false, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: true)
!1198 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb0EEE", scope: !317, file: !318, line: 1439, type: !1191, isLocal: false, isDefinition: false, scopeLine: 1439, flags: DIFlagPrototyped, isOptimized: true)
!1199 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv", scope: !317, file: !318, line: 1443, type: !589, isLocal: false, isDefinition: false, scopeLine: 1443, flags: DIFlagPrototyped, isOptimized: true)
!1200 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm", scope: !317, file: !318, line: 1444, type: !918, isLocal: false, isDefinition: false, scopeLine: 1444, flags: DIFlagPrototyped, isOptimized: true)
!1201 = !{!774, !775, !1202}
!1202 = !DITemplateTypeParameter(name: "_Allocator", type: !361)
!1203 = !DISubprogram(name: "locale", scope: !279, file: !280, line: 107, type: !1204, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !298, !302, !307, !284}
!1206 = !DISubprogram(name: "locale", scope: !279, file: !280, line: 108, type: !1207, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !298, !302, !313, !284}
!1209 = !DISubprogram(name: "locale", scope: !279, file: !280, line: 111, type: !1210, isLocal: false, isDefinition: false, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !298, !302, !302, !284}
!1212 = !DISubprogram(name: "~locale", scope: !279, file: !280, line: 113, type: !296, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1213 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16localeaSERKS0_", scope: !279, file: !280, line: 115, type: !1214, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!302, !298, !302}
!1216 = !DISubprogram(name: "name", linkageName: "_ZNKSt3__16locale4nameEv", scope: !279, file: !280, line: 122, type: !1217, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!315, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1220 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt3__16localeeqERKS0_", scope: !279, file: !280, line: 123, type: !1221, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!104, !1219, !302}
!1223 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt3__16localeneERKS0_", scope: !279, file: !280, line: 124, type: !1221, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1224 = !DISubprogram(name: "global", linkageName: "_ZNSt3__16locale6globalERKS0_", scope: !279, file: !280, line: 131, type: !1225, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!279, !302}
!1227 = !DISubprogram(name: "classic", linkageName: "_ZNSt3__16locale7classicEv", scope: !279, file: !280, line: 132, type: !1228, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!302}
!1230 = !DISubprogram(name: "__install_ctor", linkageName: "_ZNSt3__16locale14__install_ctorERKS0_PNS0_5facetEl", scope: !279, file: !280, line: 138, type: !1231, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !298, !302, !1233, !67}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "facet", scope: !279, file: !280, line: 147, size: 128, elements: !1235, vtableHolder: !1237, identifier: "_ZTSNSt3__16locale5facetE")
!1235 = !{!1236, !1266, !1270, !1273}
!1236 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1234, baseType: !1237, flags: DIFlagPublic)
!1237 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count", scope: !7, file: !332, line: 3449, size: 128, elements: !1238, vtableHolder: !1237, identifier: "_ZTSNSt3__114__shared_countE")
!1238 = !{!1239, !1240, !1241, !1247, !1251, !1254, !1255, !1258, !1259, !1262}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$__shared_count", scope: !332, file: !332, baseType: !22, size: 64, flags: DIFlagArtificial)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__shared_owners_", scope: !1237, file: !332, line: 3455, baseType: !67, size: 64, offset: 64, flags: DIFlagProtected)
!1241 = !DISubprogram(name: "__shared_count", scope: !1237, file: !332, line: 3451, type: !1242, isLocal: false, isDefinition: false, scopeLine: 3451, flags: DIFlagPrototyped, isOptimized: true)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1245 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1247 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__shared_countaSERKS0_", scope: !1237, file: !332, line: 3452, type: !1248, isLocal: false, isDefinition: false, scopeLine: 3452, flags: DIFlagPrototyped, isOptimized: true)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1250, !1244, !1245}
!1250 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1237, size: 64)
!1251 = !DISubprogram(name: "~__shared_count", scope: !1237, file: !332, line: 3456, type: !1252, isLocal: false, isDefinition: false, scopeLine: 3456, containingType: !1237, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1244}
!1254 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__114__shared_count16__on_zero_sharedEv", scope: !1237, file: !332, line: 3458, type: !1252, isLocal: false, isDefinition: false, scopeLine: 3458, containingType: !1237, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: true)
!1255 = !DISubprogram(name: "__shared_count", scope: !1237, file: !332, line: 3462, type: !1256, isLocal: false, isDefinition: false, scopeLine: 3462, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1244, !67}
!1258 = !DISubprogram(name: "__add_shared", linkageName: "_ZNSt3__114__shared_count12__add_sharedEv", scope: !1237, file: !332, line: 3471, type: !1252, isLocal: false, isDefinition: false, scopeLine: 3471, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1259 = !DISubprogram(name: "__release_shared", linkageName: "_ZNSt3__114__shared_count16__release_sharedEv", scope: !1237, file: !332, line: 3475, type: !1260, isLocal: false, isDefinition: false, scopeLine: 3475, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!104, !1244}
!1262 = !DISubprogram(name: "use_count", linkageName: "_ZNKSt3__114__shared_count9use_countEv", scope: !1237, file: !332, line: 3484, type: !1263, isLocal: false, isDefinition: false, scopeLine: 3484, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!67, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1266 = !DISubprogram(name: "facet", scope: !1234, file: !280, line: 152, type: !1267, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1269, !84}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1270 = !DISubprogram(name: "~facet", scope: !1234, file: !280, line: 155, type: !1271, isLocal: false, isDefinition: false, scopeLine: 155, containingType: !1234, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1269}
!1273 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__16locale5facet16__on_zero_sharedEv", scope: !1234, file: !280, line: 160, type: !1271, isLocal: false, isDefinition: false, scopeLine: 160, containingType: !1234, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: true)
!1274 = !DISubprogram(name: "__global", linkageName: "_ZNSt3__16locale8__globalEv", scope: !279, file: !280, line: 139, type: !1275, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !279, size: 64)
!1278 = !DISubprogram(name: "has_facet", linkageName: "_ZNKSt3__16locale9has_facetERNS0_2idE", scope: !279, file: !280, line: 140, type: !1279, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!104, !1219, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !279, file: !280, line: 163, size: 128, elements: !1283, identifier: "_ZTSNSt3__16locale2idE")
!1283 = !{!1284, !1302, !1305, !1306, !1310, !1311, !1316, !1317}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "__flag_", scope: !1282, file: !280, line: 165, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "once_flag", scope: !7, file: !1286, line: 571, size: 64, elements: !1287, identifier: "_ZTSNSt3__19once_flagE")
!1286 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/mutex", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1287 = !{!1288, !1289, !1293, !1298}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "__state_", scope: !1285, file: !1286, line: 581, baseType: !88, size: 64, flags: DIFlagPrivate)
!1289 = !DISubprogram(name: "once_flag", scope: !1285, file: !1286, line: 575, type: !1290, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1293 = !DISubprogram(name: "once_flag", scope: !1285, file: !1286, line: 578, type: !1294, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !1292, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1298 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__19once_flagaSERKS0_", scope: !1285, file: !1286, line: 579, type: !1299, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!1301, !1292, !1296}
!1301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1285, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1282, file: !280, line: 166, baseType: !1303, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1304, line: 30, baseType: !26)
!1304 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "__next_id", scope: !1282, file: !280, line: 168, baseType: !1303, flags: DIFlagStaticMember)
!1306 = !DISubprogram(name: "id", scope: !1282, file: !280, line: 170, type: !1307, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1310 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__16locale2id6__initEv", scope: !1282, file: !280, line: 172, type: !1307, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true)
!1311 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16locale2idaSERKS1_", scope: !1282, file: !280, line: 173, type: !1312, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1309, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1316 = !DISubprogram(name: "id", scope: !1282, file: !280, line: 174, type: !1312, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true)
!1317 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__16locale2id5__getEv", scope: !1282, file: !280, line: 176, type: !1318, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!67, !1309}
!1320 = !DISubprogram(name: "use_facet", linkageName: "_ZNKSt3__16locale9use_facetERNS0_2idE", scope: !279, file: !280, line: 141, type: !1321, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!1323, !1219, !1281}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1325 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__18ios_base6getlocEv", scope: !19, file: !18, line: 297, type: !1326, isLocal: false, isDefinition: false, scopeLine: 297, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!279, !255}
!1328 = !DISubprogram(name: "xalloc", linkageName: "_ZNSt3__18ios_base6xallocEv", scope: !19, file: !18, line: 300, type: !24, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1329 = !DISubprogram(name: "iword", linkageName: "_ZNSt3__18ios_base5iwordEi", scope: !19, file: !18, line: 301, type: !1330, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332, !260, !26}
!1332 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !67, size: 64)
!1333 = !DISubprogram(name: "pword", linkageName: "_ZNSt3__18ios_base5pwordEi", scope: !19, file: !18, line: 302, type: !1334, isLocal: false, isDefinition: false, scopeLine: 302, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1336, !260, !26}
!1336 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 64)
!1337 = !DISubprogram(name: "~ios_base", scope: !19, file: !18, line: 305, type: !1338, isLocal: false, isDefinition: false, scopeLine: 305, containingType: !19, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !260}
!1340 = !DISubprogram(name: "register_callback", linkageName: "_ZNSt3__18ios_base17register_callbackEPFvNS0_5eventERS0_iEi", scope: !19, file: !18, line: 310, type: !1341, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !260, !76, !26}
!1343 = !DISubprogram(name: "ios_base", scope: !19, file: !18, line: 313, type: !1344, isLocal: false, isDefinition: false, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !260, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !256, size: 64)
!1347 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__18ios_baseaSERKS0_", scope: !19, file: !18, line: 314, type: !1348, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!80, !260, !1346}
!1350 = !DISubprogram(name: "sync_with_stdio", linkageName: "_ZNSt3__18ios_base15sync_with_stdioEb", scope: !19, file: !18, line: 317, type: !1351, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!104, !104}
!1353 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__18ios_base7rdstateEv", scope: !19, file: !18, line: 319, type: !1354, isLocal: false, isDefinition: false, scopeLine: 319, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!50, !255}
!1356 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__18ios_base5clearEj", scope: !19, file: !18, line: 320, type: !1357, isLocal: false, isDefinition: false, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !260, !50}
!1359 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !19, file: !18, line: 321, type: !1357, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1360 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__18ios_base4goodEv", scope: !19, file: !18, line: 323, type: !1361, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!104, !255}
!1363 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__18ios_base3eofEv", scope: !19, file: !18, line: 324, type: !1361, isLocal: false, isDefinition: false, scopeLine: 324, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1364 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__18ios_base4failEv", scope: !19, file: !18, line: 325, type: !1361, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1365 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__18ios_base3badEv", scope: !19, file: !18, line: 326, type: !1361, isLocal: false, isDefinition: false, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1366 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__18ios_base10exceptionsEv", scope: !19, file: !18, line: 328, type: !1354, isLocal: false, isDefinition: false, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1367 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__18ios_base10exceptionsEj", scope: !19, file: !18, line: 329, type: !1357, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1368 = !DISubprogram(name: "__set_badbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv", scope: !19, file: !18, line: 331, type: !1338, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1369 = !DISubprogram(name: "__set_failbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base34__set_failbit_and_consider_rethrowEv", scope: !19, file: !18, line: 332, type: !1338, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1370 = !DISubprogram(name: "ios_base", scope: !19, file: !18, line: 336, type: !1338, isLocal: false, isDefinition: false, scopeLine: 336, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1371 = !DISubprogram(name: "init", linkageName: "_ZNSt3__18ios_base4initEPv", scope: !19, file: !18, line: 339, type: !1372, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !260, !72}
!1374 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !19, file: !18, line: 340, type: !1375, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!72, !255}
!1377 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__18ios_base5rdbufEPv", scope: !19, file: !18, line: 343, type: !1372, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1378 = !DISubprogram(name: "__call_callbacks", linkageName: "_ZNSt3__18ios_base16__call_callbacksENS0_5eventE", scope: !19, file: !18, line: 349, type: !1379, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !260, !17}
!1381 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__18ios_base7copyfmtERKS0_", scope: !19, file: !18, line: 350, type: !1344, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1382 = !DISubprogram(name: "move", linkageName: "_ZNSt3__18ios_base4moveERS0_", scope: !19, file: !18, line: 351, type: !1383, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !260, !80}
!1385 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__18ios_base4swapERS0_", scope: !19, file: !18, line: 352, type: !1383, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1386 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__18ios_base9set_rdbufEPv", scope: !19, file: !18, line: 355, type: !1372, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1387 = !{!1388, !1389, !1390}
!1388 = !DIEnumerator(name: "erase_event", value: 0)
!1389 = !DIEnumerator(name: "imbue_event", value: 1)
!1390 = !DIEnumerator(name: "copyfmt_event", value: 2)
!1391 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "seekdir", scope: !19, file: !18, line: 270, size: 32, elements: !1392, identifier: "_ZTSNSt3__18ios_base7seekdirE")
!1392 = !{!1393, !1394, !1395}
!1393 = !DIEnumerator(name: "beg", value: 0)
!1394 = !DIEnumerator(name: "cur", value: 1)
!1395 = !DIEnumerator(name: "end", value: 2)
!1396 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !317, file: !318, line: 714, size: 32, elements: !1397, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt1_E")
!1397 = !{!1398}
!1398 = !DIEnumerator(name: "__min_cap", value: 23)
!1399 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !317, file: !318, line: 1332, size: 32, elements: !1400, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt3_E")
!1400 = !{!1401}
!1401 = !DIEnumerator(name: "__alignment", value: 16)
!1402 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !317, file: !318, line: 711, size: 32, elements: !1403, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt0_E")
!1403 = !{!1404}
!1404 = !DIEnumerator(name: "__long_mask", value: 1)
!1405 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !317, file: !318, line: 710, size: 32, elements: !1406, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt_E")
!1406 = !{!1407}
!1407 = !DIEnumerator(name: "__short_mask", value: 1)
!1408 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !7, file: !1409, line: 133, size: 32, elements: !1410, identifier: "_ZTSNSt3__118float_denorm_styleE")
!1409 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/limits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1410 = !{!1411, !1412, !1413}
!1411 = !DIEnumerator(name: "denorm_indeterminate", value: -1)
!1412 = !DIEnumerator(name: "denorm_absent", value: 0)
!1413 = !DIEnumerator(name: "denorm_present", value: 1)
!1414 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_round_style", scope: !7, file: !1409, line: 124, size: 32, elements: !1415, identifier: "_ZTSNSt3__117float_round_styleE")
!1415 = !{!1416, !1417, !1418, !1419, !1420}
!1416 = !DIEnumerator(name: "round_indeterminate", value: -1)
!1417 = !DIEnumerator(name: "round_toward_zero", value: 0)
!1418 = !DIEnumerator(name: "round_to_nearest", value: 1)
!1419 = !DIEnumerator(name: "round_toward_infinity", value: 2)
!1420 = !DIEnumerator(name: "round_toward_neg_infinity", value: 3)
!1421 = !{!1422, !385, !505, !347, !370, !1806, !803, !811, !104, !72, !1462, !1887, !1928, !2150, !2167, !2869, !19, !3405}
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ip", scope: !1424, file: !1423, line: 724, baseType: !1768)
!1423 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ostream", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1424 = distinct !DISubprogram(name: "__put_character_sequence<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m", scope: !7, file: !1423, line: 714, type: !1425, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !773, variables: !1738)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1427, !1427, !307, !84}
!1427 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::__1::char_traits<char> >", scope: !7, file: !1423, line: 1084, size: 1280, elements: !1429, vtableHolder: !1428, templateParams: !773, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE")
!1429 = !{!1430, !1622, !1623, !1627, !1630, !1634, !1637, !1640, !1645, !1648, !1654, !1660, !1666, !1669, !1673, !1677, !1680, !1683, !1686, !1689, !1692, !1696, !1700, !1704, !1708, !1711, !1714, !1718, !1723, !1726, !1730, !1733, !1737}
!1430 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1428, baseType: !1431, offset: 24, flags: DIFlagPublic | DIFlagVirtual)
!1431 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::__1::char_traits<char> >", scope: !7, file: !1432, line: 483, size: 1216, elements: !1433, vtableHolder: !19, templateParams: !773, identifier: "_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE")
!1432 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/streambuf", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1433 = !{!1434, !1435, !1437, !1439, !1444, !1445, !1448, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1575, !1578, !1581, !1584, !1587, !1590, !1595, !1599, !1602, !1605, !1608, !1611, !1612, !1613, !1616, !1620, !1621}
!1434 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1431, baseType: !19, flags: DIFlagPublic)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__tie_", scope: !1431, file: !18, line: 669, baseType: !1436, size: 64, offset: 1088)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "__fill_", scope: !1431, file: !18, line: 670, baseType: !1438, size: 32, offset: 1152)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1431, file: !18, line: 591, baseType: !811)
!1439 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbEv", scope: !1431, file: !18, line: 605, type: !1440, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!104, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1431)
!1444 = !DISubprogram(name: "operator!", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntEv", scope: !1431, file: !18, line: 608, type: !1440, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1445 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE7rdstateEv", scope: !1431, file: !18, line: 609, type: !1446, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!50, !1442}
!1448 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj", scope: !1431, file: !18, line: 610, type: !1449, isLocal: false, isDefinition: false, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !1451, !50}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1452 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1431, file: !18, line: 611, type: !1449, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1453 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodEv", scope: !1431, file: !18, line: 612, type: !1440, isLocal: false, isDefinition: false, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1454 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3eofEv", scope: !1431, file: !18, line: 613, type: !1440, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1455 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv", scope: !1431, file: !18, line: 614, type: !1440, isLocal: false, isDefinition: false, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1456 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3badEv", scope: !1431, file: !18, line: 615, type: !1440, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1457 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEv", scope: !1431, file: !18, line: 617, type: !1446, isLocal: false, isDefinition: false, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1458 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEj", scope: !1431, file: !18, line: 618, type: !1449, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1459 = !DISubprogram(name: "basic_ios", scope: !1431, file: !18, line: 622, type: !1460, isLocal: false, isDefinition: false, scopeLine: 622, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !1451, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_streambuf<char, std::__1::char_traits<char> >", scope: !7, file: !1432, line: 480, size: 512, elements: !1464, vtableHolder: !1463, templateParams: !773, identifier: "_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE")
!1464 = !{!1465, !1466, !1467, !1470, !1471, !1472, !1473, !1474, !1475, !1479, !1482, !1487, !1490, !1501, !1504, !1507, !1510, !1514, !1515, !1516, !1519, !1522, !1523, !1524, !1529, !1530, !1534, !1538, !1541, !1544, !1545, !1546, !1549, !1552, !1553, !1554, !1555, !1556, !1559, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1573, !1574}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_streambuf", scope: !1432, file: !1432, baseType: !22, size: 64, flags: DIFlagArtificial)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !1463, file: !1432, line: 287, baseType: !279, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "__binp_", scope: !1463, file: !1432, line: 288, baseType: !1468, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1463, file: !1432, line: 126, baseType: !309)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "__ninp_", scope: !1463, file: !1432, line: 289, baseType: !1468, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "__einp_", scope: !1463, file: !1432, line: 290, baseType: !1468, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "__bout_", scope: !1463, file: !1432, line: 291, baseType: !1468, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "__nout_", scope: !1463, file: !1432, line: 292, baseType: !1468, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__eout_", scope: !1463, file: !1432, line: 293, baseType: !1468, size: 64, offset: 448)
!1475 = !DISubprogram(name: "~basic_streambuf", scope: !1463, file: !1432, line: 132, type: !1476, isLocal: false, isDefinition: false, scopeLine: 132, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1479 = !DISubprogram(name: "pubimbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueERKNS_6localeE", scope: !1463, file: !1432, line: 136, type: !1480, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!279, !1478, !302}
!1482 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv", scope: !1463, file: !1432, line: 144, type: !1483, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!279, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1487 = !DISubprogram(name: "pubsetbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufEPcl", scope: !1463, file: !1432, line: 148, type: !1488, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1462, !1478, !1468, !64}
!1490 = !DISubprogram(name: "pubseekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffExNS_8ios_base7seekdirEj", scope: !1463, file: !1432, line: 152, type: !1491, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1493, !1478, !1497, !1391, !56}
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1463, file: !1432, line: 129, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !776, file: !777, line: 202, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "streampos", scope: !7, file: !316, line: 176, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fpos<__mbstate_t>", scope: !7, file: !316, line: 175, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__14fposI11__mbstate_tEE")
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1463, file: !1432, line: 130, baseType: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !776, file: !777, line: 201, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamoff", scope: !7, file: !316, line: 187, baseType: !1500)
!1500 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1501 = !DISubprogram(name: "pubseekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekposENS_4fposI11__mbstate_tEEj", scope: !1463, file: !1432, line: 157, type: !1502, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1493, !1478, !1493, !56}
!1504 = !DISubprogram(name: "pubsync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncEv", scope: !1463, file: !1432, line: 162, type: !1505, isLocal: false, isDefinition: false, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!26, !1478}
!1507 = !DISubprogram(name: "in_avail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availEv", scope: !1463, file: !1432, line: 167, type: !1508, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!64, !1478}
!1510 = !DISubprogram(name: "snextc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6snextcEv", scope: !1463, file: !1432, line: 174, type: !1511, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1513, !1478}
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1463, file: !1432, line: 128, baseType: !811)
!1514 = !DISubprogram(name: "sbumpc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv", scope: !1463, file: !1432, line: 181, type: !1511, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1515 = !DISubprogram(name: "sgetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv", scope: !1463, file: !1432, line: 188, type: !1511, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1516 = !DISubprogram(name: "sgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetnEPcl", scope: !1463, file: !1432, line: 195, type: !1517, isLocal: false, isDefinition: false, scopeLine: 195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!64, !1478, !1468, !64}
!1519 = !DISubprogram(name: "sputbackc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9sputbackcEc", scope: !1463, file: !1432, line: 200, type: !1520, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1513, !1478, !1469}
!1522 = !DISubprogram(name: "sungetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7sungetcEv", scope: !1463, file: !1432, line: 207, type: !1511, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1523 = !DISubprogram(name: "sputc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc", scope: !1463, file: !1432, line: 215, type: !1520, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1524 = !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1463, file: !1432, line: 223, type: !1525, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!64, !1478, !1527, !64}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!1529 = !DISubprogram(name: "basic_streambuf", scope: !1463, file: !1432, line: 227, type: !1476, isLocal: false, isDefinition: false, scopeLine: 227, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1530 = !DISubprogram(name: "basic_streambuf", scope: !1463, file: !1432, line: 228, type: !1531, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1478, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1486, size: 64)
!1534 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEaSERKS3_", scope: !1463, file: !1432, line: 229, type: !1535, isLocal: false, isDefinition: false, scopeLine: 229, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!1537, !1478, !1533}
!1537 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1463, size: 64)
!1538 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_", scope: !1463, file: !1432, line: 230, type: !1539, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1478, !1537}
!1541 = !DISubprogram(name: "eback", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv", scope: !1463, file: !1432, line: 233, type: !1542, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1468, !1485}
!1544 = !DISubprogram(name: "gptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv", scope: !1463, file: !1432, line: 234, type: !1542, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1545 = !DISubprogram(name: "egptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv", scope: !1463, file: !1432, line: 235, type: !1542, isLocal: false, isDefinition: false, scopeLine: 235, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1546 = !DISubprogram(name: "gbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi", scope: !1463, file: !1432, line: 238, type: !1547, isLocal: false, isDefinition: false, scopeLine: 238, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !1478, !26}
!1549 = !DISubprogram(name: "setg", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_", scope: !1463, file: !1432, line: 241, type: !1550, isLocal: false, isDefinition: false, scopeLine: 241, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1478, !1468, !1468, !1468}
!1552 = !DISubprogram(name: "pbase", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv", scope: !1463, file: !1432, line: 248, type: !1542, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1553 = !DISubprogram(name: "pptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv", scope: !1463, file: !1432, line: 249, type: !1542, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1554 = !DISubprogram(name: "epptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv", scope: !1463, file: !1432, line: 250, type: !1542, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1555 = !DISubprogram(name: "pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi", scope: !1463, file: !1432, line: 253, type: !1547, isLocal: false, isDefinition: false, scopeLine: 253, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1556 = !DISubprogram(name: "setp", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_", scope: !1463, file: !1432, line: 256, type: !1557, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1478, !1468, !1468}
!1559 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1463, file: !1432, line: 263, type: !1560, isLocal: false, isDefinition: false, scopeLine: 263, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !1478, !302}
!1562 = !DISubprogram(name: "setbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl", scope: !1463, file: !1432, line: 266, type: !1488, isLocal: false, isDefinition: false, scopeLine: 266, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1563 = !DISubprogram(name: "seekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj", scope: !1463, file: !1432, line: 267, type: !1491, isLocal: false, isDefinition: false, scopeLine: 267, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1564 = !DISubprogram(name: "seekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj", scope: !1463, file: !1432, line: 269, type: !1502, isLocal: false, isDefinition: false, scopeLine: 269, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1565 = !DISubprogram(name: "sync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv", scope: !1463, file: !1432, line: 271, type: !1505, isLocal: false, isDefinition: false, scopeLine: 271, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1566 = !DISubprogram(name: "showmanyc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv", scope: !1463, file: !1432, line: 274, type: !1508, isLocal: false, isDefinition: false, scopeLine: 274, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1567 = !DISubprogram(name: "xsgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl", scope: !1463, file: !1432, line: 275, type: !1517, isLocal: false, isDefinition: false, scopeLine: 275, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1568 = !DISubprogram(name: "underflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9underflowEv", scope: !1463, file: !1432, line: 276, type: !1511, isLocal: false, isDefinition: false, scopeLine: 276, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1569 = !DISubprogram(name: "uflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv", scope: !1463, file: !1432, line: 277, type: !1511, isLocal: false, isDefinition: false, scopeLine: 277, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1570 = !DISubprogram(name: "pbackfail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi", scope: !1463, file: !1432, line: 280, type: !1571, isLocal: false, isDefinition: false, scopeLine: 280, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 11, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1513, !1478, !1513}
!1573 = !DISubprogram(name: "xsputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl", scope: !1463, file: !1432, line: 283, type: !1525, isLocal: false, isDefinition: false, scopeLine: 283, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 12, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1574 = !DISubprogram(name: "overflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8overflowEi", scope: !1463, file: !1432, line: 284, type: !1571, isLocal: false, isDefinition: false, scopeLine: 284, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 13, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1575 = !DISubprogram(name: "~basic_ios", scope: !1431, file: !18, line: 623, type: !1576, isLocal: false, isDefinition: false, scopeLine: 623, containingType: !1431, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1451}
!1578 = !DISubprogram(name: "tie", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEv", scope: !1431, file: !18, line: 627, type: !1579, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1436, !1442}
!1581 = !DISubprogram(name: "tie", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEPNS_13basic_ostreamIcS2_EE", scope: !1431, file: !18, line: 629, type: !1582, isLocal: false, isDefinition: false, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1436, !1451, !1436}
!1584 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1431, file: !18, line: 632, type: !1585, isLocal: false, isDefinition: false, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1462, !1442}
!1587 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEPNS_15basic_streambufIcS2_EE", scope: !1431, file: !18, line: 634, type: !1588, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1462, !1451, !1462}
!1590 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_", scope: !1431, file: !18, line: 636, type: !1591, isLocal: false, isDefinition: false, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1593, !1451, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1431, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1443, size: 64)
!1595 = !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1431, file: !18, line: 639, type: !1596, isLocal: false, isDefinition: false, scopeLine: 639, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1598, !1442}
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1431, file: !18, line: 588, baseType: !309)
!1599 = !DISubprogram(name: "fill", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEc", scope: !1431, file: !18, line: 641, type: !1600, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!1598, !1451, !1598}
!1602 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1431, file: !18, line: 644, type: !1603, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!279, !1451, !302}
!1605 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE6narrowEcc", scope: !1431, file: !18, line: 647, type: !1606, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!309, !1442, !1598, !309}
!1608 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1431, file: !18, line: 649, type: !1609, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1598, !1442, !309}
!1611 = !DISubprogram(name: "basic_ios", scope: !1431, file: !18, line: 653, type: !1576, isLocal: false, isDefinition: false, scopeLine: 653, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1612 = !DISubprogram(name: "init", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE", scope: !1431, file: !18, line: 656, type: !1460, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1613 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveERS3_", scope: !1431, file: !18, line: 659, type: !1614, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1451, !1593}
!1616 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveEOS3_", scope: !1431, file: !18, line: 662, type: !1617, isLocal: false, isDefinition: false, scopeLine: 662, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1451, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1431, size: 64)
!1620 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4swapERS3_", scope: !1431, file: !18, line: 665, type: !1614, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1621 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE9set_rdbufEPNS_15basic_streambufIcS2_EE", scope: !1431, file: !18, line: 667, type: !1460, isLocal: false, isDefinition: false, scopeLine: 667, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_ostream", scope: !1423, file: !1423, baseType: !22, size: 64, flags: DIFlagArtificial)
!1623 = !DISubprogram(name: "basic_ostream", scope: !1428, file: !1423, line: 164, type: !1624, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1626, !1462}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1627 = !DISubprogram(name: "~basic_ostream", scope: !1428, file: !1423, line: 166, type: !1628, isLocal: false, isDefinition: false, scopeLine: 166, containingType: !1428, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1626}
!1630 = !DISubprogram(name: "basic_ostream", scope: !1428, file: !1423, line: 170, type: !1631, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !1626, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1428, size: 64)
!1634 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSEOS3_", scope: !1428, file: !1423, line: 174, type: !1635, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!1427, !1626, !1633}
!1637 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE4swapERS3_", scope: !1428, file: !1423, line: 177, type: !1638, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !1626, !1427}
!1640 = !DISubprogram(name: "basic_ostream", scope: !1428, file: !1423, line: 181, type: !1641, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1626, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1428)
!1645 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSERKS3_", scope: !1428, file: !1423, line: 182, type: !1646, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1427, !1626, !1643}
!1648 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E", scope: !1428, file: !1423, line: 194, type: !1649, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1427, !1626, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1427, !1427}
!1654 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_9basic_iosIcS2_EES6_E", scope: !1428, file: !1423, line: 198, type: !1655, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1427, !1626, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1593, !1593}
!1660 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E", scope: !1428, file: !1423, line: 203, type: !1661, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1427, !1626, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!80, !80}
!1666 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb", scope: !1428, file: !1423, line: 206, type: !1667, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!1427, !1626, !104}
!1669 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEs", scope: !1428, file: !1423, line: 207, type: !1670, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1427, !1626, !1672}
!1672 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1673 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt", scope: !1428, file: !1423, line: 208, type: !1674, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!1427, !1626, !1676}
!1676 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1677 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi", scope: !1428, file: !1423, line: 209, type: !1678, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1427, !1626, !26}
!1680 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj", scope: !1428, file: !1423, line: 210, type: !1681, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!1427, !1626, !30}
!1683 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl", scope: !1428, file: !1423, line: 211, type: !1684, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1427, !1626, !67}
!1686 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm", scope: !1428, file: !1423, line: 212, type: !1687, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!1427, !1626, !88}
!1689 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx", scope: !1428, file: !1423, line: 213, type: !1690, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!1427, !1626, !1500}
!1692 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy", scope: !1428, file: !1423, line: 214, type: !1693, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1427, !1626, !1695}
!1695 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1696 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf", scope: !1428, file: !1423, line: 215, type: !1697, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!1427, !1626, !1699}
!1699 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1700 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd", scope: !1428, file: !1423, line: 216, type: !1701, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1427, !1626, !1703}
!1703 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1704 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEe", scope: !1428, file: !1423, line: 217, type: !1705, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1427, !1626, !1707}
!1707 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1708 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv", scope: !1428, file: !1423, line: 218, type: !1709, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1427, !1626, !390}
!1711 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPNS_15basic_streambufIcS2_EE", scope: !1428, file: !1423, line: 219, type: !1712, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!1427, !1626, !1462}
!1714 = !DISubprogram(name: "put", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc", scope: !1428, file: !1423, line: 222, type: !1715, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1427, !1626, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1428, file: !1423, line: 156, baseType: !309)
!1718 = !DISubprogram(name: "write", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl", scope: !1428, file: !1423, line: 223, type: !1719, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1427, !1626, !1721, !64}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1723 = !DISubprogram(name: "flush", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv", scope: !1428, file: !1423, line: 224, type: !1724, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1427, !1626}
!1726 = !DISubprogram(name: "tellp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5tellpEv", scope: !1428, file: !1423, line: 228, type: !1727, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1729, !1626}
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1428, file: !1423, line: 159, baseType: !1494)
!1730 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpENS_4fposI11__mbstate_tEE", scope: !1428, file: !1423, line: 230, type: !1731, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1427, !1626, !1729}
!1733 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpExNS_8ios_base7seekdirE", scope: !1428, file: !1423, line: 232, type: !1734, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!1427, !1626, !1736, !1391}
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1428, file: !1423, line: 160, baseType: !1498)
!1737 = !DISubprogram(name: "basic_ostream", scope: !1428, file: !1423, line: 236, type: !1628, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1738 = !{!1739, !1740, !1741, !1742}
!1739 = !DILocalVariable(name: "__os", arg: 1, scope: !1424, file: !1423, line: 714, type: !1427)
!1740 = !DILocalVariable(name: "__str", arg: 2, scope: !1424, file: !1423, line: 715, type: !307)
!1741 = !DILocalVariable(name: "__len", arg: 3, scope: !1424, file: !1423, line: 715, type: !84)
!1742 = !DILocalVariable(name: "__s", scope: !1743, file: !1423, line: 721, type: !1744)
!1743 = distinct !DILexicalBlock(scope: !1424, file: !1423, line: 719, column: 5)
!1744 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "sentry", scope: !1428, file: !1423, line: 190, size: 128, elements: !1745, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE")
!1745 = !{!1746, !1747, !1748, !1754, !1758, !1761, !1764}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "__ok_", scope: !1744, file: !1423, line: 242, baseType: !104, size: 8)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "__os_", scope: !1744, file: !1423, line: 243, baseType: !1427, size: 64, offset: 64)
!1748 = !DISubprogram(name: "sentry", scope: !1744, file: !1423, line: 245, type: !1749, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1752 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1754 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryaSERKS4_", scope: !1744, file: !1423, line: 246, type: !1755, isLocal: false, isDefinition: false, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1757, !1751, !1752}
!1757 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1744, size: 64)
!1758 = !DISubprogram(name: "sentry", scope: !1744, file: !1423, line: 249, type: !1759, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1751, !1427}
!1761 = !DISubprogram(name: "~sentry", scope: !1744, file: !1423, line: 250, type: !1762, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1751}
!1764 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !1744, file: !1423, line: 254, type: !1765, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!104, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1768 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ostreambuf_iterator<char, std::__1::char_traits<char> >", scope: !7, file: !685, line: 1020, size: 64, elements: !1769, templateParams: !773, identifier: "_ZTSNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEE")
!1769 = !{!1770, !1778, !1781, !1787, !1790, !1794, !1797, !1798, !1801}
!1770 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1768, baseType: !1771, flags: DIFlagPublic)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::__1::output_iterator_tag, void, void, void, void>", scope: !7, file: !685, line: 531, size: 8, elements: !357, templateParams: !1772, identifier: "_ZTSNSt3__18iteratorINS_19output_iterator_tagEvvvvEE")
!1772 = !{!1773, !389, !1775, !1776, !1777}
!1773 = !DITemplateTypeParameter(name: "_Category", type: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_iterator_tag", scope: !7, file: !685, line: 444, size: 8, elements: !357, identifier: "_ZTSNSt3__119output_iterator_tagE")
!1775 = !DITemplateTypeParameter(name: "_Distance", type: null)
!1776 = !DITemplateTypeParameter(name: "_Pointer", type: null)
!1777 = !DITemplateTypeParameter(name: "_Reference", type: null)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "__sbuf_", scope: !1768, file: !685, line: 1029, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "streambuf_type", scope: !1768, file: !685, line: 1026, baseType: !1463)
!1781 = !DISubprogram(name: "ostreambuf_iterator", scope: !1768, file: !685, line: 1031, type: !1782, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1785 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream_type", scope: !1768, file: !685, line: 1027, baseType: !1428)
!1787 = !DISubprogram(name: "ostreambuf_iterator", scope: !1768, file: !685, line: 1033, type: !1788, isLocal: false, isDefinition: false, scopeLine: 1033, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1784, !1779}
!1790 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEaSEc", scope: !1768, file: !685, line: 1035, type: !1791, isLocal: false, isDefinition: false, scopeLine: 1035, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!1793, !1784, !309}
!1793 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1768, size: 64)
!1794 = !DISubprogram(name: "operator*", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEdeEv", scope: !1768, file: !685, line: 1041, type: !1795, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1793, !1784}
!1797 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEv", scope: !1768, file: !685, line: 1042, type: !1795, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1798 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEi", scope: !1768, file: !685, line: 1043, type: !1799, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1793, !1784, !26}
!1801 = !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1768, file: !685, line: 1044, type: !1802, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!104, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1806 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "length_error", scope: !9, file: !1807, line: 131, size: 128, elements: !1808, vtableHolder: !1813, identifier: "_ZTSSt12length_error")
!1807 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdexcept", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1808 = !{!1809, !1877, !1881, !1884}
!1809 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1806, baseType: !1810, flags: DIFlagPublic)
!1810 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "logic_error", scope: !9, file: !1807, line: 77, size: 128, elements: !1811, vtableHolder: !1813, identifier: "_ZTSSt11logic_error")
!1811 = !{!1812, !1827, !1854, !1858, !1861, !1866, !1870, !1873}
!1812 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1810, baseType: !1813, flags: DIFlagPublic)
!1813 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !9, file: !1814, line: 97, size: 64, elements: !1815, vtableHolder: !1813, identifier: "_ZTSSt9exception")
!1814 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/exception", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1815 = !{!1816, !1817, !1821, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$exception", scope: !1814, file: !1814, baseType: !22, size: 64, flags: DIFlagArtificial)
!1817 = !DISubprogram(name: "exception", scope: !1813, file: !1814, line: 100, type: !1818, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1821 = !DISubprogram(name: "~exception", scope: !1813, file: !1814, line: 101, type: !1818, isLocal: false, isDefinition: false, scopeLine: 101, containingType: !1813, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1822 = !DISubprogram(name: "what", linkageName: "_ZNKSt9exception4whatEv", scope: !1813, file: !1814, line: 102, type: !1823, isLocal: false, isDefinition: false, scopeLine: 102, containingType: !1813, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!307, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !1810, file: !1807, line: 81, baseType: !1828, size: 64, offset: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__libcpp_refstring", scope: !7, file: !1807, line: 58, size: 64, elements: !1829, identifier: "_ZTSNSt3__118__libcpp_refstringE")
!1829 = !{!1830, !1831, !1836, !1840, !1844, !1848, !1851}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !1828, file: !1807, line: 60, baseType: !307, size: 64)
!1831 = !DISubprogram(name: "__uses_refcount", linkageName: "_ZNKSt3__118__libcpp_refstring15__uses_refcountEv", scope: !1828, file: !1807, line: 62, type: !1832, isLocal: false, isDefinition: false, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!104, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1836 = !DISubprogram(name: "__libcpp_refstring", scope: !1828, file: !1807, line: 64, type: !1837, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1839, !307}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1840 = !DISubprogram(name: "__libcpp_refstring", scope: !1828, file: !1807, line: 65, type: !1841, isLocal: false, isDefinition: false, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1839, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1835, size: 64)
!1844 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118__libcpp_refstringaSERKS0_", scope: !1828, file: !1807, line: 66, type: !1845, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !1839, !1843}
!1847 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1828, size: 64)
!1848 = !DISubprogram(name: "~__libcpp_refstring", scope: !1828, file: !1807, line: 67, type: !1849, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1839}
!1851 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__118__libcpp_refstring5c_strEv", scope: !1828, file: !1807, line: 69, type: !1852, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!307, !1834}
!1854 = !DISubprogram(name: "logic_error", scope: !1810, file: !1807, line: 83, type: !1855, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1857, !313}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1858 = !DISubprogram(name: "logic_error", scope: !1810, file: !1807, line: 84, type: !1859, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1857, !307}
!1861 = !DISubprogram(name: "logic_error", scope: !1810, file: !1807, line: 86, type: !1862, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1857, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1866 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11logic_erroraSERKS_", scope: !1810, file: !1807, line: 87, type: !1867, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1869, !1857, !1864}
!1869 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1810, size: 64)
!1870 = !DISubprogram(name: "~logic_error", scope: !1810, file: !1807, line: 89, type: !1871, isLocal: false, isDefinition: false, scopeLine: 89, containingType: !1810, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1857}
!1873 = !DISubprogram(name: "what", linkageName: "_ZNKSt11logic_error4whatEv", scope: !1810, file: !1807, line: 91, type: !1874, isLocal: false, isDefinition: false, scopeLine: 91, containingType: !1810, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!307, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1877 = !DISubprogram(name: "length_error", scope: !1806, file: !1807, line: 135, type: !1878, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1880, !313}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1881 = !DISubprogram(name: "length_error", scope: !1806, file: !1807, line: 136, type: !1882, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1880, !307}
!1884 = !DISubprogram(name: "~length_error", scope: !1806, file: !1807, line: 138, type: !1885, isLocal: false, isDefinition: false, scopeLine: 138, containingType: !1806, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1880}
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1888, file: !332, line: 1764, baseType: !1927)
!1888 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<checker::Schedule *>", scope: !7, file: !332, line: 1759, size: 8, elements: !1889, templateParams: !1925, identifier: "_ZTSNSt3__19allocatorIPN7checker8ScheduleEEE")
!1889 = !{!1890, !1894, !1905, !1913, !1916, !1919, !1922}
!1890 = !DISubprogram(name: "allocator", scope: !1888, file: !332, line: 1775, type: !1891, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{null, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1894 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIPN7checker8ScheduleEE7addressERS3_", scope: !1888, file: !332, line: 1777, type: !1895, isLocal: false, isDefinition: false, scopeLine: 1777, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1887, !1897, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1888, file: !332, line: 1766, baseType: !1900)
!1900 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Schedule", scope: !1904, file: !1903, line: 13, flags: DIFlagFwdDecl, identifier: "_ZTSN7checker8ScheduleE")
!1903 = !DIFile(filename: "../../ModelChecker.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1904 = !DINamespace(name: "checker", scope: null, file: !1903, line: 11)
!1905 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIPN7checker8ScheduleEE7addressERKS3_", scope: !1888, file: !332, line: 1779, type: !1906, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1908, !1897, !1911}
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1888, file: !332, line: 1765, baseType: !1909)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1888, file: !332, line: 1767, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1910, size: 64)
!1913 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE8allocateEmPKv", scope: !1888, file: !332, line: 1781, type: !1914, isLocal: false, isDefinition: false, scopeLine: 1781, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1887, !1893, !385, !386}
!1916 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE10deallocateEPS3_m", scope: !1888, file: !332, line: 1788, type: !1917, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1893, !1887, !385}
!1919 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIPN7checker8ScheduleEE8max_sizeEv", scope: !1888, file: !332, line: 1790, type: !1920, isLocal: false, isDefinition: false, scopeLine: 1790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!385, !1897}
!1922 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE7destroyEPS3_", scope: !1888, file: !332, line: 1853, type: !1923, isLocal: false, isDefinition: false, scopeLine: 1853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !1893, !1887}
!1925 = !{!1926}
!1926 = !DITemplateTypeParameter(name: "_Tp", type: !1901)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !1930, file: !1929, line: 330, baseType: !1955)
!1929 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/vector", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!1930 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__vector_base<checker::Schedule *, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !1929, line: 321, size: 192, elements: !1931, templateParams: !2148, identifier: "_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!1931 = !{!1932, !1945, !2021, !2022, !2092, !2098, !2105, !2109, !2114, !2117, !2120, !2121, !2122, !2125, !2128, !2132, !2136, !2139, !2142, !2145}
!1932 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1930, baseType: !1933, flags: DIFlagProtected)
!1933 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__vector_base_common<true>", scope: !7, file: !1929, line: 315, size: 8, elements: !1934, templateParams: !329, identifier: "_ZTSNSt3__120__vector_base_commonILb1EEE")
!1934 = !{!1935, !1939, !1944}
!1935 = !DISubprogram(name: "__vector_base_common", scope: !1933, file: !1929, line: 292, type: !1936, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1939 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv", scope: !1933, file: !1929, line: 293, type: !1940, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1944 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv", scope: !1933, file: !1929, line: 294, type: !1940, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !1930, file: !1929, line: 337, baseType: !1946, size: 64, flags: DIFlagProtected)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1930, file: !1929, line: 332, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1948, file: !332, line: 1511, baseType: !2014)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<checker::Schedule *> >", scope: !7, file: !332, line: 1506, size: 8, elements: !1949, templateParams: !2013, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEEE")
!1949 = !{!1950, !1961, !1984, !1987, !1992, !1995, !1998, !2001, !2004, !2007, !2010}
!1950 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m", scope: !1948, file: !332, line: 1540, type: !1951, isLocal: false, isDefinition: false, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1947, !1953, !1955}
!1953 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !1948, file: !332, line: 1508, baseType: !1888)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !1948, file: !332, line: 1517, baseType: !1956)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1957, file: !332, line: 1151, baseType: !1960)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<checker::Schedule *>, long, true>", scope: !7, file: !332, line: 1149, size: 8, elements: !357, templateParams: !1958, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIPN7checker8ScheduleEEElLb1EEE")
!1958 = !{!1959, !493, !227}
!1959 = !DITemplateTypeParameter(name: "_Alloc", type: !1888)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !1888, file: !332, line: 1762, baseType: !84)
!1961 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_mPKv", scope: !1948, file: !332, line: 1543, type: !1962, isLocal: false, isDefinition: false, scopeLine: 1543, flags: DIFlagPrototyped, isOptimized: true)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1947, !1953, !1955, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !1948, file: !332, line: 1514, baseType: !1965)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1966, file: !332, line: 1109, baseType: !1969)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_void_pointer<checker::Schedule **, std::__1::allocator<checker::Schedule *>, false>", scope: !7, file: !332, line: 1106, size: 8, elements: !357, templateParams: !1967, identifier: "_ZTSNSt3__120__const_void_pointerIPPN7checker8ScheduleENS_9allocatorIS3_EELb0EEE")
!1967 = !{!1968, !1959, !176}
!1968 = !DITemplateTypeParameter(name: "_Ptr", type: !1927)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !1970, file: !332, line: 974, baseType: !390)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<checker::Schedule **>", scope: !7, file: !332, line: 967, size: 8, elements: !1971, templateParams: !1983, identifier: "_ZTSNSt3__114pointer_traitsIPPN7checker8ScheduleEEE")
!1971 = !{!1972}
!1972 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPPN7checker8ScheduleEE10pointer_toERS3_", scope: !1970, file: !332, line: 983, type: !1973, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1970, file: !332, line: 969, baseType: !1927)
!1976 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1978, file: !426, line: 414, baseType: !1901)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<checker::Schedule **>::__nat, checker::Schedule *>", scope: !7, file: !426, line: 414, size: 8, elements: !357, templateParams: !1979, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPPN7checker8ScheduleEE5__natES4_EE")
!1979 = !{!429, !1980, !1982}
!1980 = !DITemplateTypeParameter(name: "_If", type: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !1970, file: !332, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPPN7checker8ScheduleEE5__natE")
!1982 = !DITemplateTypeParameter(name: "_Then", type: !1901)
!1983 = !{!1968}
!1984 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10deallocateERS5_PS4_m", scope: !1948, file: !332, line: 1548, type: !1985, isLocal: false, isDefinition: false, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: true)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1953, !1947, !1955}
!1987 = !DISubprogram(name: "max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8max_sizeERKS5_", scope: !1948, file: !332, line: 1592, type: !1988, isLocal: false, isDefinition: false, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1955, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!1992 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE37select_on_container_copy_constructionERKS5_", scope: !1948, file: !332, line: 1597, type: !1993, isLocal: false, isDefinition: false, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1954, !1990}
!1995 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_mPKvNS_17integral_constantIbLb1EEE", scope: !1948, file: !332, line: 1697, type: !1996, isLocal: false, isDefinition: false, scopeLine: 1697, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1947, !1953, !1955, !1964, !448}
!1998 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_mPKvNS_17integral_constantIbLb0EEE", scope: !1948, file: !332, line: 1701, type: !1999, isLocal: false, isDefinition: false, scopeLine: 1701, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!1947, !1953, !1955, !1964, !465}
!2001 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS5_", scope: !1948, file: !332, line: 1730, type: !2002, isLocal: false, isDefinition: false, scopeLine: 1730, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1955, !448, !1990}
!2004 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10__max_sizeENS_17integral_constantIbLb0EEERKS5_", scope: !1948, file: !332, line: 1733, type: !2005, isLocal: false, isDefinition: false, scopeLine: 1733, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1955, !465, !1990}
!2007 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE37select_on_container_copy_constructionENS_17integral_constantIbLb1EEERKS5_", scope: !1948, file: !332, line: 1738, type: !2008, isLocal: false, isDefinition: false, scopeLine: 1738, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!1954, !448, !1990}
!2010 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE37select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS5_", scope: !1948, file: !332, line: 1742, type: !2011, isLocal: false, isDefinition: false, scopeLine: 1742, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!1954, !465, !1990}
!2013 = !{!1959}
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2015, file: !332, line: 1031, baseType: !2018)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<checker::Schedule *, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !332, line: 1029, size: 8, elements: !357, templateParams: !2016, identifier: "_ZTSNSt3__114__pointer_typeIPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!2016 = !{!1926, !2017}
!2017 = !DITemplateTypeParameter(name: "_Dp", type: !1888)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2019, file: !332, line: 1017, baseType: !1887)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<checker::Schedule *, std::__1::allocator<checker::Schedule *>, true>", scope: !404, file: !332, line: 1015, size: 8, elements: !357, templateParams: !2020, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeIPN7checker8ScheduleENS_9allocatorIS4_EELb1EEE")
!2020 = !{!1926, !2017, !227}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "__end_", scope: !1930, file: !1929, line: 338, baseType: !1946, size: 64, offset: 64, flags: DIFlagProtected)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__end_cap_", scope: !1930, file: !1929, line: 339, baseType: !2023, size: 64, offset: 128, flags: DIFlagProtected)
!2023 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<checker::Schedule **, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !332, line: 2144, size: 64, elements: !2024, templateParams: !2089, identifier: "_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!2024 = !{!2025, !2048, !2070, !2074, !2079, !2082, !2085}
!2025 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2023, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<checker::Schedule **, 0, false>", scope: !7, file: !332, line: 2076, size: 64, elements: !2027, templateParams: !2046, identifier: "_ZTSNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EEE")
!2027 = !{!2028, !2029, !2033, !2038}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !2026, file: !332, line: 2105, baseType: !1927, size: 64, flags: DIFlagPrivate)
!2029 = !DISubprogram(name: "__compressed_pair_elem", scope: !2026, file: !332, line: 2082, type: !2030, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2033 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv", scope: !2026, file: !332, line: 2101, type: !2034, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!2036, !2032}
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2026, file: !332, line: 2078, baseType: !2037)
!2037 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1927, size: 64)
!2038 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv", scope: !2026, file: !332, line: 2102, type: !2039, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!2041, !2044}
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2026, file: !332, line: 2079, baseType: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2046 = !{!2047, !538, !539}
!2047 = !DITemplateTypeParameter(name: "_Tp", type: !1927)
!2048 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2023, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<checker::Schedule *>, 1, true>", scope: !7, file: !332, line: 2109, size: 8, elements: !2050, templateParams: !2068, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EEE")
!2050 = !{!2051, !2052, !2056, !2061}
!2051 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2049, baseType: !1888, flags: DIFlagPrivate)
!2052 = !DISubprogram(name: "__compressed_pair_elem", scope: !2049, file: !332, line: 2116, type: !2053, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2056 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv", scope: !2049, file: !332, line: 2136, type: !2057, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!2059, !2055}
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2049, file: !332, line: 2111, baseType: !2060)
!2060 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1888, size: 64)
!2061 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv", scope: !2049, file: !332, line: 2137, type: !2062, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2049, file: !332, line: 2112, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1898, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2068 = !{!2069, !562, !563}
!2069 = !DITemplateTypeParameter(name: "_Tp", type: !1888)
!2070 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE5firstEv", scope: !2023, file: !332, line: 2212, type: !2071, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2036, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2074 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE5firstEv", scope: !2023, file: !332, line: 2217, type: !2075, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!2041, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2079 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE6secondEv", scope: !2023, file: !332, line: 2222, type: !2080, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2059, !2073}
!2082 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE6secondEv", scope: !2023, file: !332, line: 2227, type: !2083, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!2064, !2077}
!2085 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE4swapERS7_", scope: !2023, file: !332, line: 2232, type: !2086, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2073, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2023, size: 64)
!2089 = !{!2090, !2091}
!2090 = !DITemplateTypeParameter(name: "_T1", type: !1927)
!2091 = !DITemplateTypeParameter(name: "_T2", type: !1888)
!2092 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE7__allocEv", scope: !1930, file: !1929, line: 342, type: !2093, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!2095, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !1930, file: !1929, line: 326, baseType: !1888)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2098 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE7__allocEv", scope: !1930, file: !1929, line: 345, type: !2099, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2101, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!2105 = !DISubprogram(name: "__end_cap", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE9__end_capEv", scope: !1930, file: !1929, line: 348, type: !2106, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2108, !2097}
!2108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1946, size: 64)
!2109 = !DISubprogram(name: "__end_cap", linkageName: "_ZNKSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE9__end_capEv", scope: !1930, file: !1929, line: 351, type: !2110, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!2112, !2103}
!2112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1946)
!2114 = !DISubprogram(name: "__vector_base", scope: !1930, file: !1929, line: 355, type: !2115, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !2097}
!2117 = !DISubprogram(name: "__vector_base", scope: !1930, file: !1929, line: 357, type: !2118, isLocal: false, isDefinition: false, scopeLine: 357, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2097, !2101}
!2120 = !DISubprogram(name: "~__vector_base", scope: !1930, file: !1929, line: 358, type: !2115, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2121 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv", scope: !1930, file: !1929, line: 361, type: !2115, isLocal: false, isDefinition: false, scopeLine: 361, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2122 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE8capacityEv", scope: !1930, file: !1929, line: 363, type: !2123, isLocal: false, isDefinition: false, scopeLine: 363, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!1928, !2103}
!2125 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !1930, file: !1929, line: 367, type: !2126, isLocal: false, isDefinition: false, scopeLine: 367, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !2097, !1946}
!2128 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__copy_assign_allocERKS6_", scope: !1930, file: !1929, line: 370, type: !2129, isLocal: false, isDefinition: false, scopeLine: 370, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2097, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2104, size: 64)
!2132 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__move_assign_allocERS6_", scope: !1930, file: !1929, line: 375, type: !2133, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !2097, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1930, size: 64)
!2136 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__copy_assign_allocERKS6_NS_17integral_constantIbLb1EEE", scope: !1930, file: !1929, line: 383, type: !2137, isLocal: false, isDefinition: false, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !2097, !2131, !448}
!2139 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__copy_assign_allocERKS6_NS_17integral_constantIbLb0EEE", scope: !1930, file: !1929, line: 395, type: !2140, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2097, !2131, !465}
!2142 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__move_assign_allocERS6_NS_17integral_constantIbLb1EEE", scope: !1930, file: !1929, line: 399, type: !2143, isLocal: false, isDefinition: false, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !2097, !2135, !448}
!2145 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__move_assign_allocERS6_NS_17integral_constantIbLb0EEE", scope: !1930, file: !1929, line: 406, type: !2146, isLocal: false, isDefinition: false, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !2097, !2135, !465}
!2148 = !{!1926, !2149}
!2149 = !DITemplateTypeParameter(name: "_Allocator", type: !1888)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Vp", scope: !2152, file: !332, line: 1654, baseType: !2165)
!2152 = distinct !DISubprogram(name: "__construct_range_forward<checker::Schedule *>", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE25__construct_range_forwardIS4_EENS_9enable_ifIXaaoosr7is_sameIS5_NS1_IT_EEEE5valuentsr15__has_constructIS5_PS9_S9_EE5valuesr31is_trivially_move_constructibleIS9_EE5valueEvE4typeERS5_SB_SB_RSB_", scope: !1948, file: !332, line: 1652, type: !2153, isLocal: false, isDefinition: true, scopeLine: 1653, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !1925, declaration: !2158, variables: !2159)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2155, !1953, !1927, !1927, !2037}
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2156, file: !426, line: 424, baseType: null)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, void>", scope: !7, file: !426, line: 424, size: 8, elements: !357, templateParams: !2157, identifier: "_ZTSNSt3__19enable_ifILb1EvEE")
!2157 = !{!227, !389}
!2158 = !DISubprogram(name: "__construct_range_forward<checker::Schedule *>", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE25__construct_range_forwardIS4_EENS_9enable_ifIXaaoosr7is_sameIS5_NS1_IT_EEEE5valuentsr15__has_constructIS5_PS9_S9_EE5valuesr31is_trivially_move_constructibleIS9_EE5valueEvE4typeERS5_SB_SB_RSB_", scope: !1948, file: !332, line: 1652, type: !2153, isLocal: false, isDefinition: false, scopeLine: 1652, flags: DIFlagPrototyped, isOptimized: true, templateParams: !1925)
!2159 = !{!2160, !2161, !2162, !2163, !2164}
!2160 = !DILocalVariable(arg: 1, scope: !2152, file: !332, line: 1652, type: !1953)
!2161 = !DILocalVariable(name: "__begin1", arg: 2, scope: !2152, file: !332, line: 1652, type: !1927)
!2162 = !DILocalVariable(name: "__end1", arg: 3, scope: !2152, file: !332, line: 1652, type: !1927)
!2163 = !DILocalVariable(name: "__begin2", arg: 4, scope: !2152, file: !332, line: 1652, type: !2037)
!2164 = !DILocalVariable(name: "_Np", scope: !2152, file: !332, line: 1655, type: !65)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2166, file: !426, line: 630, baseType: !1901)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_const<checker::Schedule *>", scope: !7, file: !426, line: 630, size: 8, elements: !357, templateParams: !1925, identifier: "_ZTSNSt3__112remove_constIPN7checker8ScheduleEEE")
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2169, line: 474, size: 128, elements: !2170, templateParams: !2868, identifier: "_ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!2169 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2170 = !{!2171, !2819, !2820, !2826, !2830, !2857, !2865}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "base_", scope: !2168, file: !2169, line: 478, baseType: !2172, size: 128)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "base", scope: !2168, file: !2169, line: 476, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_impl<std::__1::__tuple_indices<0, 1>, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2169, line: 369, size: 128, elements: !2174, templateParams: !2806, identifier: "_ZTSNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEE")
!2174 = !{!2175, !2743, !2783, !2787, !2792, !2796, !2800, !2803}
!2175 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2173, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, false>", scope: !7, file: !2169, line: 170, size: 64, elements: !2177, templateParams: !2740, identifier: "_ZTSNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEE")
!2177 = !{!2178, !2712, !2719, !2722, !2725, !2729, !2732, !2735}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2176, file: !2169, line: 172, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !332, line: 2334, size: 64, elements: !2180, templateParams: !2684, identifier: "_ZTSNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2180 = !{!2181, !2650, !2655, !2659, !2662, !2668, !2678, !2689, !2690, !2695, !2700, !2703, !2706, !2709}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !2179, file: !332, line: 2344, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !332, line: 2144, size: 64, elements: !2183, templateParams: !2647, identifier: "_ZTSNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEE")
!2183 = !{!2184, !2593, !2628, !2632, !2637, !2640, !2643}
!2184 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2182, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::__thread_struct *, 0, false>", scope: !7, file: !332, line: 2076, size: 64, elements: !2186, templateParams: !2591, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE")
!2186 = !{!2187, !2574, !2578, !2583}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !2185, file: !332, line: 2105, baseType: !2188, size: 64, flags: DIFlagPrivate)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct", scope: !7, file: !2190, line: 123, size: 64, elements: !2191, identifier: "_ZTSNSt3__115__thread_structE")
!2190 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2191 = !{!2192, !2195, !2201, !2205, !2208, !2209, !2569}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "__p_", scope: !2189, file: !2190, line: 125, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct_imp", scope: !7, file: !2190, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__119__thread_struct_impE")
!2195 = !DISubprogram(name: "__thread_struct", scope: !2189, file: !2190, line: 127, type: !2196, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2199 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2201 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115__thread_structaSERKS0_", scope: !2189, file: !2190, line: 128, type: !2202, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!2204, !2198, !2199}
!2204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2189, size: 64)
!2205 = !DISubprogram(name: "__thread_struct", scope: !2189, file: !2190, line: 130, type: !2206, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !2198}
!2208 = !DISubprogram(name: "~__thread_struct", scope: !2189, file: !2190, line: 131, type: !2206, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2209 = !DISubprogram(name: "notify_all_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE", scope: !2189, file: !2190, line: 133, type: !2210, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2198, !2212, !2568}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "condition_variable", scope: !7, file: !2214, line: 281, size: 384, elements: !2215, identifier: "_ZTSNSt3__118condition_variableE")
!2214 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2215 = !{!2216, !2230, !2234, !2235, !2240, !2244, !2245, !2246, !2351, !2356}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !2213, file: !2214, line: 284, baseType: !2217, size: 384)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !7, file: !2218, line: 59, baseType: !2219)
!2218 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !2220, line: 30, baseType: !2221)
!2220 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !2222, line: 110, baseType: !2223)
!2222 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_cond_t", file: !2222, line: 68, size: 384, elements: !2224, identifier: "_ZTS22_opaque_pthread_cond_t")
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !2223, file: !2222, line: 69, baseType: !67, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !2223, file: !2222, line: 70, baseType: !2227, size: 320, offset: 64)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 320, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 40)
!2230 = !DISubprogram(name: "condition_variable", scope: !2213, file: !2214, line: 292, type: !2231, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2233}
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2234 = !DISubprogram(name: "~condition_variable", scope: !2213, file: !2214, line: 296, type: !2231, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2235 = !DISubprogram(name: "condition_variable", scope: !2213, file: !2214, line: 299, type: !2236, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !2233, !2238}
!2238 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2240 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118condition_variableaSERKS0_", scope: !2213, file: !2214, line: 300, type: !2241, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2243, !2233, !2238}
!2243 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2213, size: 64)
!2244 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt3__118condition_variable10notify_oneEv", scope: !2213, file: !2214, line: 303, type: !2231, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2245 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt3__118condition_variable10notify_allEv", scope: !2213, file: !2214, line: 304, type: !2231, isLocal: false, isDefinition: false, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2246 = !DISubprogram(name: "wait", linkageName: "_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE", scope: !2213, file: !2214, line: 306, type: !2247, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !2233, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_lock<std::__1::mutex>", scope: !7, file: !2214, line: 110, size: 128, elements: !2251, templateParams: !2349, identifier: "_ZTSNSt3__111unique_lockINS_5mutexEEE")
!2251 = !{!2252, !2293, !2294, !2298, !2302, !2306, !2310, !2314, !2315, !2320, !2323, !2327, !2330, !2331, !2334, !2335, !2338, !2341, !2345, !2346}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !2250, file: !2214, line: 116, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !2250, file: !2214, line: 113, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "mutex", scope: !7, file: !2214, line: 36, size: 512, elements: !2256, identifier: "_ZTSNSt3__15mutexE")
!2256 = !{!2257, !2269, !2273, !2274, !2279, !2283, !2284, !2287, !2288}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !2255, file: !2214, line: 39, baseType: !2258, size: 512)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_mutex_t", scope: !7, file: !2218, line: 53, baseType: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !2260, line: 30, baseType: !2261)
!2260 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !2222, line: 113, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !2222, line: 78, size: 512, elements: !2263, identifier: "_ZTS23_opaque_pthread_mutex_t")
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !2262, file: !2222, line: 79, baseType: !67, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !2262, file: !2222, line: 80, baseType: !2266, size: 448, offset: 64)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 448, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: 56)
!2269 = !DISubprogram(name: "mutex", scope: !2255, file: !2214, line: 47, type: !2270, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2273 = !DISubprogram(name: "~mutex", scope: !2255, file: !2214, line: 51, type: !2270, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2274 = !DISubprogram(name: "mutex", scope: !2255, file: !2214, line: 54, type: !2275, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !2272, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2255)
!2279 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15mutexaSERKS0_", scope: !2255, file: !2214, line: 55, type: !2280, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!2282, !2272, !2277}
!2282 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2255, size: 64)
!2283 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__15mutex4lockEv", scope: !2255, file: !2214, line: 58, type: !2270, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2284 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__15mutex8try_lockEv", scope: !2255, file: !2214, line: 59, type: !2285, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!104, !2272}
!2287 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__15mutex6unlockEv", scope: !2255, file: !2214, line: 60, type: !2270, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2288 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__15mutex13native_handleEv", scope: !2255, file: !2214, line: 63, type: !2289, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!2291, !2272}
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !2255, file: !2214, line: 62, baseType: !2292)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "__owns_", scope: !2250, file: !2214, line: 117, baseType: !104, size: 8, offset: 64)
!2294 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 121, type: !2295, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2298 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 123, type: !2299, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !2297, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2254, size: 64)
!2302 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 126, type: !2303, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2297, !2301, !2305}
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defer_lock_t", scope: !7, file: !2214, line: 66, size: 8, elements: !357, identifier: "_ZTSNSt3__112defer_lock_tE")
!2306 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 129, type: !2307, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !2297, !2301, !2309}
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "try_to_lock_t", scope: !7, file: !2214, line: 67, size: 8, elements: !357, identifier: "_ZTSNSt3__113try_to_lock_tE")
!2310 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 132, type: !2311, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !2297, !2301, !2313}
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adopt_lock_t", scope: !7, file: !2214, line: 68, size: 8, elements: !357, identifier: "_ZTSNSt3__112adopt_lock_tE")
!2314 = !DISubprogram(name: "~unique_lock", scope: !2250, file: !2214, line: 143, type: !2295, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2315 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 150, type: !2316, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !2297, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2320 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSERKS2_", scope: !2250, file: !2214, line: 151, type: !2321, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!2249, !2297, !2318}
!2323 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 156, type: !2324, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2297, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2250, size: 64)
!2327 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSEOS2_", scope: !2250, file: !2214, line: 160, type: !2328, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!2249, !2297, !2326}
!2330 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4lockEv", scope: !2250, file: !2214, line: 173, type: !2295, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2331 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE8try_lockEv", scope: !2250, file: !2214, line: 174, type: !2332, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!104, !2297}
!2334 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE6unlockEv", scope: !2250, file: !2214, line: 181, type: !2295, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2335 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4swapERS2_", scope: !2250, file: !2214, line: 184, type: !2336, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2297, !2249}
!2338 = !DISubprogram(name: "release", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE7releaseEv", scope: !2250, file: !2214, line: 190, type: !2339, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2253, !2297}
!2341 = !DISubprogram(name: "owns_lock", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE9owns_lockEv", scope: !2250, file: !2214, line: 199, type: !2342, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!104, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2345 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEEcvbEv", scope: !2250, file: !2214, line: 202, type: !2342, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2346 = !DISubprogram(name: "mutex", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE5mutexEv", scope: !2250, file: !2214, line: 204, type: !2347, isLocal: false, isDefinition: false, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2253, !2344}
!2349 = !{!2350}
!2350 = !DITemplateTypeParameter(name: "_Mutex", type: !2255)
!2351 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__118condition_variable13native_handleEv", scope: !2213, file: !2214, line: 338, type: !2352, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2354, !2233}
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !2213, file: !2214, line: 337, baseType: !2355)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2356 = !DISubprogram(name: "__do_timed_wait", linkageName: "_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE", scope: !2213, file: !2214, line: 341, type: !2357, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2233, !2249, !2359}
!2359 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !2361, file: !2360, line: 831, size: 64, elements: !2362, templateParams: !2456, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE")
!2360 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2361 = !DINamespace(name: "chrono", scope: !7, file: !2360, line: 316)
!2362 = !{!2363, !2433, !2437, !2442, !2447, !2451, !2452, !2455}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !2359, file: !2360, line: 841, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !2359, file: !2360, line: 837, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000000> >", scope: !2361, file: !2360, line: 488, size: 64, elements: !2366, templateParams: !2415, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE")
!2366 = !{!2367, !2369, !2373, !2378, !2387, !2388, !2392, !2395, !2396, !2397, !2401, !2402, !2407, !2408, !2409, !2410, !2413, !2414}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !2365, file: !2360, line: 528, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !2365, file: !2360, line: 525, baseType: !1500)
!2369 = !DISubprogram(name: "duration", scope: !2365, file: !2360, line: 533, type: !2370, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2373 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv", scope: !2365, file: !2360, line: 564, type: !2374, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!2368, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2378 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpsEv", scope: !2365, file: !2360, line: 568, type: !2379, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!2381, !2376}
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2382, file: !2360, line: 343, baseType: !2365)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !7, file: !2360, line: 339, size: 8, elements: !357, templateParams: !2383, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEES5_EEE")
!2383 = !{!2384}
!2384 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2385)
!2385 = !{!2386, !2386}
!2386 = !DITemplateTypeParameter(type: !2365)
!2387 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEngEv", scope: !2365, file: !2360, line: 569, type: !2379, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2388 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv", scope: !2365, file: !2360, line: 570, type: !2389, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!2391, !2372}
!2391 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2365, size: 64)
!2392 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEi", scope: !2365, file: !2360, line: 571, type: !2393, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!2365, !2372, !26}
!2395 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEv", scope: !2365, file: !2360, line: 572, type: !2389, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2396 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEi", scope: !2365, file: !2360, line: 573, type: !2393, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2397 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpLERKS4_", scope: !2365, file: !2360, line: 575, type: !2398, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!2391, !2372, !2400}
!2400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2377, size: 64)
!2401 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmIERKS4_", scope: !2365, file: !2360, line: 576, type: !2398, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2402 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmLERKx", scope: !2365, file: !2360, line: 578, type: !2403, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2391, !2372, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2368)
!2407 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEdVERKx", scope: !2365, file: !2360, line: 579, type: !2403, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2408 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKx", scope: !2365, file: !2360, line: 580, type: !2403, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2409 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKS4_", scope: !2365, file: !2360, line: 581, type: !2398, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2410 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE4zeroEv", scope: !2365, file: !2360, line: 585, type: !2411, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2365}
!2413 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3minEv", scope: !2365, file: !2360, line: 586, type: !2411, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2414 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv", scope: !2365, file: !2360, line: 587, type: !2411, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2415 = !{!2416, !2417}
!2416 = !DITemplateTypeParameter(name: "_Rep", type: !1500)
!2417 = !DITemplateTypeParameter(name: "_Period", type: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000000>", scope: !7, file: !2419, line: 247, size: 8, elements: !2420, templateParams: !2430, identifier: "_ZTSNSt3__15ratioILl1ELl1000000000EEE")
!2419 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2420 = !{!2421, !2425, !2426, !2427, !2428, !2429}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !2418, file: !2419, line: 252, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2423)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2424, line: 32, baseType: !67)
!2424 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !2418, file: !2419, line: 253, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1000000000)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !2418, file: !2419, line: 254, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !2418, file: !2419, line: 255, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2418, file: !2419, line: 257, baseType: !2422, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !2418, file: !2419, line: 258, baseType: !2422, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000000)
!2430 = !{!2431, !2432}
!2431 = !DITemplateValueParameter(name: "_Num", type: !67, value: i64 1)
!2432 = !DITemplateValueParameter(name: "_Den", type: !67, value: i64 1000000000)
!2433 = !DISubprogram(name: "time_point", scope: !2359, file: !2360, line: 844, type: !2434, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2437 = !DISubprogram(name: "time_point", scope: !2359, file: !2360, line: 845, type: !2438, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !2436, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2364)
!2442 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv", scope: !2359, file: !2360, line: 859, type: !2443, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!2364, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2359)
!2447 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEpLERKS6_", scope: !2359, file: !2360, line: 863, type: !2448, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2450, !2436, !2440}
!2450 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2359, size: 64)
!2451 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEmIERKS6_", scope: !2359, file: !2360, line: 864, type: !2448, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2452 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3minEv", scope: !2359, file: !2360, line: 868, type: !2453, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!2359}
!2455 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3maxEv", scope: !2359, file: !2360, line: 869, type: !2453, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2456 = !{!2457, !2567}
!2457 = !DITemplateTypeParameter(name: "_Clock", type: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "system_clock", scope: !2361, file: !2360, line: 1047, size: 8, elements: !2459, identifier: "_ZTSNSt3__16chrono12system_clockE")
!2459 = !{!2460, !2461, !2556, !2564}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "is_steady", scope: !2458, file: !2360, line: 1054, baseType: !452, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 false)
!2461 = !DISubprogram(name: "now", linkageName: "_ZNSt3__16chrono12system_clock3nowEv", scope: !2458, file: !2360, line: 1056, type: !2462, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!2464}
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_point", scope: !2458, file: !2360, line: 1053, baseType: !2465)
!2465 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !2361, file: !2360, line: 831, size: 64, elements: !2466, templateParams: !2554, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE")
!2466 = !{!2467, !2531, !2535, !2540, !2545, !2549, !2550, !2553}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !2465, file: !2360, line: 841, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !2465, file: !2360, line: 837, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000> >", scope: !2361, file: !2360, line: 488, size: 64, elements: !2470, templateParams: !2519, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEE")
!2470 = !{!2471, !2473, !2477, !2482, !2491, !2492, !2496, !2499, !2500, !2501, !2505, !2506, !2511, !2512, !2513, !2514, !2517, !2518}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !2469, file: !2360, line: 528, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !2469, file: !2360, line: 525, baseType: !1500)
!2473 = !DISubprogram(name: "duration", scope: !2469, file: !2360, line: 533, type: !2474, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2477 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv", scope: !2469, file: !2360, line: 564, type: !2478, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!2472, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2482 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpsEv", scope: !2469, file: !2360, line: 568, type: !2483, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!2485, !2480}
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2486, file: !2360, line: 343, baseType: !2469)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !7, file: !2360, line: 339, size: 8, elements: !357, templateParams: !2487, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEES5_EEE")
!2487 = !{!2488}
!2488 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2489)
!2489 = !{!2490, !2490}
!2490 = !DITemplateTypeParameter(type: !2469)
!2491 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEngEv", scope: !2469, file: !2360, line: 569, type: !2483, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2492 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEv", scope: !2469, file: !2360, line: 570, type: !2493, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!2495, !2476}
!2495 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2469, size: 64)
!2496 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEi", scope: !2469, file: !2360, line: 571, type: !2497, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2469, !2476, !26}
!2499 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEv", scope: !2469, file: !2360, line: 572, type: !2493, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2500 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEi", scope: !2469, file: !2360, line: 573, type: !2497, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2501 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpLERKS4_", scope: !2469, file: !2360, line: 575, type: !2502, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2495, !2476, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2481, size: 64)
!2505 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmIERKS4_", scope: !2469, file: !2360, line: 576, type: !2502, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2506 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmLERKx", scope: !2469, file: !2360, line: 578, type: !2507, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!2495, !2476, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2511 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEdVERKx", scope: !2469, file: !2360, line: 579, type: !2507, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2512 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKx", scope: !2469, file: !2360, line: 580, type: !2507, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2513 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKS4_", scope: !2469, file: !2360, line: 581, type: !2502, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2514 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE4zeroEv", scope: !2469, file: !2360, line: 585, type: !2515, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!2469}
!2517 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3minEv", scope: !2469, file: !2360, line: 586, type: !2515, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2518 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3maxEv", scope: !2469, file: !2360, line: 587, type: !2515, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2519 = !{!2416, !2520}
!2520 = !DITemplateTypeParameter(name: "_Period", type: !2521)
!2521 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000>", scope: !7, file: !2419, line: 247, size: 8, elements: !2522, templateParams: !2529, identifier: "_ZTSNSt3__15ratioILl1ELl1000000EEE")
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !2521, file: !2419, line: 252, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !2521, file: !2419, line: 253, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1000000)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !2521, file: !2419, line: 254, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !2521, file: !2419, line: 255, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2521, file: !2419, line: 257, baseType: !2422, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !2521, file: !2419, line: 258, baseType: !2422, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000)
!2529 = !{!2431, !2530}
!2530 = !DITemplateValueParameter(name: "_Den", type: !67, value: i64 1000000)
!2531 = !DISubprogram(name: "time_point", scope: !2465, file: !2360, line: 844, type: !2532, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2535 = !DISubprogram(name: "time_point", scope: !2465, file: !2360, line: 845, type: !2536, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2534, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2540 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochEv", scope: !2465, file: !2360, line: 859, type: !2541, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!2468, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2465)
!2545 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEpLERKS6_", scope: !2465, file: !2360, line: 863, type: !2546, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2548, !2534, !2538}
!2548 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2465, size: 64)
!2549 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEmIERKS6_", scope: !2465, file: !2360, line: 864, type: !2546, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2550 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3minEv", scope: !2465, file: !2360, line: 868, type: !2551, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2465}
!2553 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3maxEv", scope: !2465, file: !2360, line: 869, type: !2551, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2554 = !{!2457, !2555}
!2555 = !DITemplateTypeParameter(name: "_Duration", type: !2469)
!2556 = !DISubprogram(name: "to_time_t", linkageName: "_ZNSt3__16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE", scope: !2458, file: !2360, line: 1057, type: !2557, isLocal: false, isDefinition: false, scopeLine: 1057, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!2559, !2562}
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2560, line: 30, baseType: !2561)
!2560 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !87, line: 120, baseType: !67)
!2562 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2464)
!2564 = !DISubprogram(name: "from_time_t", linkageName: "_ZNSt3__16chrono12system_clock11from_time_tEl", scope: !2458, file: !2360, line: 1058, type: !2565, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2464, !2559}
!2567 = !DITemplateTypeParameter(name: "_Duration", type: !2365)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2569 = !DISubprogram(name: "__make_ready_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct27__make_ready_at_thread_exitEPNS_17__assoc_sub_stateE", scope: !2189, file: !2190, line: 134, type: !2570, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !2198, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__assoc_sub_state", scope: !7, file: !2190, line: 119, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__117__assoc_sub_stateE")
!2574 = !DISubprogram(name: "__compressed_pair_elem", scope: !2185, file: !332, line: 2082, type: !2575, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2578 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2185, file: !332, line: 2101, type: !2579, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!2581, !2577}
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2185, file: !332, line: 2078, baseType: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2188, size: 64)
!2583 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2185, file: !332, line: 2102, type: !2584, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!2586, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2185, file: !332, line: 2079, baseType: !2587)
!2587 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2188)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2591 = !{!2592, !538, !539}
!2592 = !DITemplateTypeParameter(name: "_Tp", type: !2188)
!2593 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2182, baseType: !2594)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, 1, true>", scope: !7, file: !332, line: 2109, size: 8, elements: !2595, templateParams: !2626, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEE")
!2595 = !{!2596, !2610, !2614, !2619}
!2596 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2594, baseType: !2597, flags: DIFlagPrivate)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::__thread_struct>", scope: !7, file: !332, line: 2253, size: 8, elements: !2598, templateParams: !2608, identifier: "_ZTSNSt3__114default_deleteINS_15__thread_structEEE")
!2598 = !{!2599, !2603}
!2599 = !DISubprogram(name: "default_delete", scope: !2597, file: !332, line: 2257, type: !2600, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2603 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2597, file: !332, line: 2267, type: !2604, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2606, !2188}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2608 = !{!2609}
!2609 = !DITemplateTypeParameter(name: "_Tp", type: !2189)
!2610 = !DISubprogram(name: "__compressed_pair_elem", scope: !2594, file: !332, line: 2116, type: !2611, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2614 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2594, file: !332, line: 2136, type: !2615, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!2617, !2613}
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2594, file: !332, line: 2111, baseType: !2618)
!2618 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2597, size: 64)
!2619 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2594, file: !332, line: 2137, type: !2620, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!2622, !2624}
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2594, file: !332, line: 2112, baseType: !2623)
!2623 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2607, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2594)
!2626 = !{!2627, !562, !563}
!2627 = !DITemplateTypeParameter(name: "_Tp", type: !2597)
!2628 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2182, file: !332, line: 2212, type: !2629, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!2581, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2632 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2182, file: !332, line: 2217, type: !2633, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!2586, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2637 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !2182, file: !332, line: 2222, type: !2638, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!2617, !2631}
!2640 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !2182, file: !332, line: 2227, type: !2641, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!2622, !2635}
!2643 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE4swapERS5_", scope: !2182, file: !332, line: 2232, type: !2644, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !2631, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2182, size: 64)
!2647 = !{!2648, !2649}
!2648 = !DITemplateTypeParameter(name: "_T1", type: !2188)
!2649 = !DITemplateTypeParameter(name: "_T2", type: !2597)
!2650 = !DISubprogram(name: "unique_ptr", scope: !2179, file: !332, line: 2427, type: !2651, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2654 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2179, size: 64)
!2655 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEOS4_", scope: !2179, file: !332, line: 2450, type: !2656, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!2658, !2653, !2654}
!2658 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2179, size: 64)
!2659 = !DISubprogram(name: "~unique_ptr", scope: !2179, file: !332, line: 2539, type: !2660, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !2653}
!2662 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEDn", scope: !2179, file: !332, line: 2542, type: !2663, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!2658, !2653, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !9, file: !2666, line: 57, baseType: !2667)
!2666 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2667 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!2668 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !2179, file: !332, line: 2549, type: !2669, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!2671, !2676}
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2672, file: !426, line: 1084, baseType: !2673)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::__thread_struct>", scope: !7, file: !426, line: 1083, size: 8, elements: !357, templateParams: !2608, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_15__thread_structEEE")
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2674, file: !426, line: 1081, baseType: !2204)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::__thread_struct, true>", scope: !7, file: !426, line: 1081, size: 8, elements: !357, templateParams: !2675, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_15__thread_structELb1EEE")
!2675 = !{!2609, !227}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2678 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEptEv", scope: !2179, file: !332, line: 2553, type: !2679, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!2681, !2676}
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2179, file: !332, line: 2338, baseType: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2683, file: !332, line: 1031, baseType: !2686)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !332, line: 1029, size: 8, elements: !357, templateParams: !2684, identifier: "_ZTSNSt3__114__pointer_typeINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2684 = !{!2609, !2685}
!2685 = !DITemplateTypeParameter(name: "_Dp", type: !2597)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2687, file: !332, line: 1023, baseType: !2188)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>, false>", scope: !404, file: !332, line: 1021, size: 8, elements: !357, templateParams: !2688, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_15__thread_structENS_14default_deleteIS2_EELb0EEE")
!2688 = !{!2609, !2685, !176}
!2689 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE3getEv", scope: !2179, file: !332, line: 2557, type: !2679, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2690 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !2179, file: !332, line: 2561, type: !2691, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!2693, !2653}
!2693 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !2179, file: !332, line: 2337, baseType: !2597)
!2695 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !2179, file: !332, line: 2565, type: !2696, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2698, !2676}
!2698 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2694)
!2700 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEcvbEv", scope: !2179, file: !332, line: 2569, type: !2701, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!104, !2676}
!2703 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !2179, file: !332, line: 2574, type: !2704, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!2681, !2653}
!2706 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !2179, file: !332, line: 2581, type: !2707, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2653, !2681}
!2709 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE4swapERS4_", scope: !2179, file: !332, line: 2589, type: !2710, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !2653, !2658}
!2712 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEaSERKS6_", scope: !2176, file: !2169, line: 188, type: !2713, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2176, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2717 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2719 = !DISubprogram(name: "__tuple_leaf", scope: !2176, file: !2169, line: 190, type: !2720, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !2716}
!2722 = !DISubprogram(name: "__tuple_leaf", scope: !2176, file: !2169, line: 251, type: !2723, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2716, !2717}
!2725 = !DISubprogram(name: "__tuple_leaf", scope: !2176, file: !2169, line: 252, type: !2726, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2716, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2176, size: 64)
!2729 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE4swapERS6_", scope: !2176, file: !2169, line: 264, type: !2730, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!26, !2716, !2715}
!2732 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !2176, file: !2169, line: 270, type: !2733, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!2658, !2716}
!2735 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !2176, file: !2169, line: 271, type: !2736, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2677, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2740 = !{!2741, !2742, !176}
!2741 = !DITemplateValueParameter(name: "_Ip", type: !88, value: i64 0)
!2742 = !DITemplateTypeParameter(name: "_Hp", type: !2179)
!2743 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2173, baseType: !2744, offset: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<1, void (*)(), false>", scope: !7, file: !2169, line: 170, size: 64, elements: !2745, templateParams: !2780, identifier: "_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE")
!2745 = !{!2746, !2750, !2757, !2760, !2763, !2767, !2770, !2774}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2744, file: !2169, line: 172, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null}
!2750 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEaSERKS3_", scope: !2744, file: !2169, line: 188, type: !2751, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2753, !2754, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2744, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2755 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2744)
!2757 = !DISubprogram(name: "__tuple_leaf", scope: !2744, file: !2169, line: 190, type: !2758, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2754}
!2760 = !DISubprogram(name: "__tuple_leaf", scope: !2744, file: !2169, line: 251, type: !2761, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !2754, !2755}
!2763 = !DISubprogram(name: "__tuple_leaf", scope: !2744, file: !2169, line: 252, type: !2764, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !2754, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2744, size: 64)
!2767 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE4swapERS3_", scope: !2744, file: !2169, line: 264, type: !2768, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!26, !2754, !2753}
!2770 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2744, file: !2169, line: 270, type: !2771, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!2773, !2754}
!2773 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2747, size: 64)
!2774 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2744, file: !2169, line: 271, type: !2775, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!2777, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2780 = !{!2781, !2782, !176}
!2781 = !DITemplateValueParameter(name: "_Ip", type: !88, value: i64 1)
!2782 = !DITemplateTypeParameter(name: "_Hp", type: !2747)
!2783 = !DISubprogram(name: "__tuple_impl", scope: !2173, file: !2169, line: 373, type: !2784, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: true)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2786}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2787 = !DISubprogram(name: "__tuple_impl", scope: !2173, file: !2169, line: 444, type: !2788, isLocal: false, isDefinition: false, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2786, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2792 = !DISubprogram(name: "__tuple_impl", scope: !2173, file: !2169, line: 445, type: !2793, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !2786, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2173, size: 64)
!2796 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSERKSA_", scope: !2173, file: !2169, line: 449, type: !2797, isLocal: false, isDefinition: false, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!2799, !2786, !2790}
!2799 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2173, size: 64)
!2800 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSEOSA_", scope: !2173, file: !2169, line: 457, type: !2801, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!2799, !2786, !2795}
!2803 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEE4swapERSA_", scope: !2173, file: !2169, line: 464, type: !2804, isLocal: false, isDefinition: false, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2786, !2799}
!2806 = !{!2807, !2815}
!2807 = !DITemplateTypeParameter(name: "_Indx", type: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<0, 1>", scope: !7, file: !2809, line: 90, size: 8, elements: !357, templateParams: !2810, identifier: "_ZTSNSt3__115__tuple_indicesIJLm0ELm1EEEE")
!2809 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!2810 = !{!2811}
!2811 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !2812)
!2812 = !{!2813, !2814}
!2813 = !DITemplateValueParameter(type: !88, value: i64 0)
!2814 = !DITemplateValueParameter(type: !88, value: i64 1)
!2815 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2816)
!2816 = !{!2817, !2818}
!2817 = !DITemplateTypeParameter(type: !2179)
!2818 = !DITemplateTypeParameter(type: !2747)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_EnableImplicitReducedArityExtension", scope: !2168, file: !2169, line: 483, baseType: !452, flags: DIFlagStaticMember, extraData: i1 false)
!2820 = !DISubprogram(name: "tuple", scope: !2168, file: !2169, line: 620, type: !2821, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2824 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2826 = !DISubprogram(name: "tuple", scope: !2168, file: !2169, line: 621, type: !2827, isLocal: false, isDefinition: false, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !2823, !2829}
!2829 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2168, size: 64)
!2830 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSERKNS_5__natE", scope: !2168, file: !2169, line: 876, type: !2831, isLocal: false, isDefinition: false, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!2833, !2823, !2834}
!2833 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2168, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2836)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2837, file: !426, line: 414, baseType: !2841)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !426, line: 414, size: 8, elements: !357, templateParams: !2838, identifier: "_ZTSNSt3__111conditionalILb0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2838 = !{!429, !2839, !2840}
!2839 = !DITemplateTypeParameter(name: "_If", type: !2168)
!2840 = !DITemplateTypeParameter(name: "_Then", type: !2841)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !7, file: !426, line: 1584, size: 8, elements: !2842, identifier: "_ZTSNSt3__15__natE")
!2842 = !{!2843, !2847, !2852, !2856}
!2843 = !DISubprogram(name: "__nat", scope: !2841, file: !426, line: 1587, type: !2844, isLocal: false, isDefinition: false, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: true)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2847 = !DISubprogram(name: "__nat", scope: !2841, file: !426, line: 1588, type: !2848, isLocal: false, isDefinition: false, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: true)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2846, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2852 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15__nataSERKS0_", scope: !2841, file: !426, line: 1589, type: !2853, isLocal: false, isDefinition: false, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: true)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!2855, !2846, !2850}
!2855 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2841, size: 64)
!2856 = !DISubprogram(name: "~__nat", scope: !2841, file: !426, line: 1590, type: !2844, isLocal: false, isDefinition: false, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: true)
!2857 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSEOS8_", scope: !2168, file: !2169, line: 884, type: !2858, isLocal: false, isDefinition: false, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!2833, !2823, !2860}
!2860 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2862, file: !426, line: 412, baseType: !2168)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !426, line: 412, size: 8, elements: !357, templateParams: !2863, identifier: "_ZTSNSt3__111conditionalILb1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2863 = !{!2864, !2839, !2840}
!2864 = !DITemplateValueParameter(name: "_Bp", type: !104, value: i8 1)
!2865 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEE4swapERS8_", scope: !2168, file: !2169, line: 906, type: !2866, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2823, !2833}
!2868 = !{!2815}
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2870, file: !1929, line: 465, baseType: !1928)
!2870 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !1929, line: 452, size: 192, elements: !2871, templateParams: !2148, identifier: "_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!2871 = !{!2872, !2873, !2877, !2883, !2886, !2894, !2897, !2902, !2905, !2909, !2934, !2937, !2941, !2944, !2947, !2950, !2951, !2952, !2956, !3011, !3066, !3067, !3068, !3073, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3087, !3088, !3091, !3092, !3093, !3094, !3100, !3103, !3104, !3105, !3108, !3111, !3112, !3113, !3118, !3123, !3126, !3130, !3131, !3134, !3137, !3140, !3143, !3146, !3149, !3150, !3151, !3152, !3155, !3156, !3157, !3161, !3162, !3163, !3166, !3167, !3168, !3169, !3170, !3173, !3182, !3381, !3384, !3387, !3390, !3393, !3394, !3397, !3400, !3403, !3404}
!2872 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2870, baseType: !1930)
!2873 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 478, type: !2874, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2877 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 484, type: !2878, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2876, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2882)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2870, file: !1929, line: 461, baseType: !1888)
!2883 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 496, type: !2884, isLocal: false, isDefinition: false, scopeLine: 496, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2876, !2869}
!2886 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 500, type: !2887, isLocal: false, isDefinition: false, scopeLine: 500, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2876, !2869, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2870, file: !1929, line: 464, baseType: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1930, file: !1929, line: 329, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !1930, file: !1929, line: 325, baseType: !1901)
!2894 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 501, type: !2895, isLocal: false, isDefinition: false, scopeLine: 501, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !2876, !2869, !2889, !2880}
!2897 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 539, type: !2898, isLocal: false, isDefinition: false, scopeLine: 539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2876, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2902 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 540, type: !2903, isLocal: false, isDefinition: false, scopeLine: 540, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2876, !2900, !2880}
!2905 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEaSERKS6_", scope: !2870, file: !1929, line: 542, type: !2906, isLocal: false, isDefinition: false, scopeLine: 542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!2908, !2876, !2900}
!2908 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2870, size: 64)
!2909 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 546, type: !2910, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2876, !2912}
!2912 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<checker::Schedule *>", scope: !9, file: !832, line: 59, size: 128, elements: !2913, templateParams: !2932, identifier: "_ZTSSt16initializer_listIPN7checker8ScheduleEE")
!2913 = !{!2914, !2915, !2916, !2920, !2923, !2928, !2931}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !2912, file: !832, line: 61, baseType: !1909, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !2912, file: !832, line: 62, baseType: !84, size: 64, offset: 64)
!2916 = !DISubprogram(name: "initializer_list", scope: !2912, file: !832, line: 66, type: !2917, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !2919, !1909, !84}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2920 = !DISubprogram(name: "initializer_list", scope: !2912, file: !832, line: 81, type: !2921, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2919}
!2923 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIPN7checker8ScheduleEE4sizeEv", scope: !2912, file: !832, line: 85, type: !2924, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!84, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2912)
!2928 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIPN7checker8ScheduleEE5beginEv", scope: !2912, file: !832, line: 89, type: !2929, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!1909, !2926}
!2931 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIPN7checker8ScheduleEE3endEv", scope: !2912, file: !832, line: 93, type: !2929, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2932 = !{!2933}
!2933 = !DITemplateTypeParameter(name: "_Ep", type: !1901)
!2934 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 549, type: !2935, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !2876, !2912, !2880}
!2937 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 552, type: !2938, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2876, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2870, size: 64)
!2941 = !DISubprogram(name: "vector", scope: !2870, file: !1929, line: 560, type: !2942, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2876, !2940, !2880}
!2944 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEaSEOS6_", scope: !2870, file: !1929, line: 562, type: !2945, isLocal: false, isDefinition: false, scopeLine: 562, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!2908, !2876, !2940}
!2947 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEaSESt16initializer_listIS3_E", scope: !2870, file: !1929, line: 566, type: !2948, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!2908, !2876, !2912}
!2950 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6assignEmRKS3_", scope: !2870, file: !1929, line: 593, type: !2887, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2951 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6assignESt16initializer_listIS3_E", scope: !2870, file: !1929, line: 597, type: !2910, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2952 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13get_allocatorEv", scope: !2870, file: !1929, line: 602, type: !2953, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!2882, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2956 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5beginEv", scope: !2870, file: !1929, line: 605, type: !2957, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!2959, !2876}
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !2870, file: !1929, line: 469, baseType: !2960)
!2960 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<checker::Schedule **>", scope: !7, file: !685, line: 1279, size: 64, elements: !2961, templateParams: !2974, identifier: "_ZTSNSt3__111__wrap_iterIPPN7checker8ScheduleEEE")
!2961 = !{!2962, !2964, !2968, !2978, !2983, !2987, !2990, !2991, !2992, !2997, !3000, !3001, !3002, !3005, !3008}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !2960, file: !685, line: 1289, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !2960, file: !685, line: 1282, baseType: !1927)
!2964 = !DISubprogram(name: "__wrap_iter", scope: !2960, file: !685, line: 1291, type: !2965, isLocal: false, isDefinition: false, scopeLine: 1291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2968 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEdeEv", scope: !2960, file: !685, line: 1331, type: !2969, isLocal: false, isDefinition: false, scopeLine: 1331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2971, !2976}
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2960, file: !685, line: 1287, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2973, file: !685, line: 499, baseType: !1900)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<checker::Schedule **>", scope: !7, file: !685, line: 494, size: 8, elements: !357, templateParams: !2974, identifier: "_ZTSNSt3__115iterator_traitsIPPN7checker8ScheduleEEE")
!2974 = !{!2975}
!2975 = !DITemplateTypeParameter(name: "_Iter", type: !1927)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2960)
!2978 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEptEv", scope: !2960, file: !685, line: 1339, type: !2979, isLocal: false, isDefinition: false, scopeLine: 1339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2981, !2976}
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2960, file: !685, line: 1286, baseType: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2973, file: !685, line: 498, baseType: !1927)
!2983 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEppEv", scope: !2960, file: !685, line: 1347, type: !2984, isLocal: false, isDefinition: false, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2986, !2967}
!2986 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2960, size: 64)
!2987 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEppEi", scope: !2960, file: !685, line: 1356, type: !2988, isLocal: false, isDefinition: false, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!2960, !2967, !26}
!2990 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEmmEv", scope: !2960, file: !685, line: 1358, type: !2984, isLocal: false, isDefinition: false, scopeLine: 1358, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2991 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEmmEi", scope: !2960, file: !685, line: 1367, type: !2988, isLocal: false, isDefinition: false, scopeLine: 1367, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2992 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEplEl", scope: !2960, file: !685, line: 1369, type: !2993, isLocal: false, isDefinition: false, scopeLine: 1369, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!2960, !2976, !2995}
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2960, file: !685, line: 1285, baseType: !2996)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2973, file: !685, line: 496, baseType: !65)
!2997 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEpLEl", scope: !2960, file: !685, line: 1371, type: !2998, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!2986, !2967, !2995}
!3000 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEmiEl", scope: !2960, file: !685, line: 1380, type: !2993, isLocal: false, isDefinition: false, scopeLine: 1380, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3001 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEmIEl", scope: !2960, file: !685, line: 1382, type: !2998, isLocal: false, isDefinition: false, scopeLine: 1382, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3002 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEixEl", scope: !2960, file: !685, line: 1384, type: !3003, isLocal: false, isDefinition: false, scopeLine: 1384, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!2971, !2976, !2995}
!3005 = !DISubprogram(name: "base", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEE4baseEv", scope: !2960, file: !685, line: 1393, type: !3006, isLocal: false, isDefinition: false, scopeLine: 1393, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!2963, !2976}
!3008 = !DISubprogram(name: "__wrap_iter", scope: !2960, file: !685, line: 1402, type: !3009, isLocal: false, isDefinition: false, scopeLine: 1402, flags: DIFlagPrototyped, isOptimized: true)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2967, !2963}
!3011 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5beginEv", scope: !2870, file: !1929, line: 606, type: !3012, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!3014, !2955}
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !2870, file: !1929, line: 470, baseType: !3015)
!3015 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<checker::Schedule *const *>", scope: !7, file: !685, line: 1279, size: 64, elements: !3016, templateParams: !3029, identifier: "_ZTSNSt3__111__wrap_iterIPKPN7checker8ScheduleEEE")
!3016 = !{!3017, !3019, !3023, !3033, !3038, !3042, !3045, !3046, !3047, !3052, !3055, !3056, !3057, !3060, !3063}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !3015, file: !685, line: 1289, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !3015, file: !685, line: 1282, baseType: !1909)
!3019 = !DISubprogram(name: "__wrap_iter", scope: !3015, file: !685, line: 1291, type: !3020, isLocal: false, isDefinition: false, scopeLine: 1291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !3022}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3023 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEdeEv", scope: !3015, file: !685, line: 1331, type: !3024, isLocal: false, isDefinition: false, scopeLine: 1331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!3026, !3031}
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3015, file: !685, line: 1287, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3028, file: !685, line: 499, baseType: !1912)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<checker::Schedule *const *>", scope: !7, file: !685, line: 494, size: 8, elements: !357, templateParams: !3029, identifier: "_ZTSNSt3__115iterator_traitsIPKPN7checker8ScheduleEEE")
!3029 = !{!3030}
!3030 = !DITemplateTypeParameter(name: "_Iter", type: !1909)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3015)
!3033 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEptEv", scope: !3015, file: !685, line: 1339, type: !3034, isLocal: false, isDefinition: false, scopeLine: 1339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!3036, !3031}
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3015, file: !685, line: 1286, baseType: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3028, file: !685, line: 498, baseType: !1909)
!3038 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEppEv", scope: !3015, file: !685, line: 1347, type: !3039, isLocal: false, isDefinition: false, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!3041, !3022}
!3041 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3015, size: 64)
!3042 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEppEi", scope: !3015, file: !685, line: 1356, type: !3043, isLocal: false, isDefinition: false, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!3015, !3022, !26}
!3045 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEmmEv", scope: !3015, file: !685, line: 1358, type: !3039, isLocal: false, isDefinition: false, scopeLine: 1358, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3046 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEmmEi", scope: !3015, file: !685, line: 1367, type: !3043, isLocal: false, isDefinition: false, scopeLine: 1367, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3047 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEplEl", scope: !3015, file: !685, line: 1369, type: !3048, isLocal: false, isDefinition: false, scopeLine: 1369, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!3015, !3031, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !3015, file: !685, line: 1285, baseType: !3051)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !3028, file: !685, line: 496, baseType: !65)
!3052 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEpLEl", scope: !3015, file: !685, line: 1371, type: !3053, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!3041, !3022, !3050}
!3055 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEmiEl", scope: !3015, file: !685, line: 1380, type: !3048, isLocal: false, isDefinition: false, scopeLine: 1380, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3056 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEmIEl", scope: !3015, file: !685, line: 1382, type: !3053, isLocal: false, isDefinition: false, scopeLine: 1382, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3057 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEixEl", scope: !3015, file: !685, line: 1384, type: !3058, isLocal: false, isDefinition: false, scopeLine: 1384, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!3026, !3031, !3050}
!3060 = !DISubprogram(name: "base", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEE4baseEv", scope: !3015, file: !685, line: 1393, type: !3061, isLocal: false, isDefinition: false, scopeLine: 1393, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!3018, !3031}
!3063 = !DISubprogram(name: "__wrap_iter", scope: !3015, file: !685, line: 1402, type: !3064, isLocal: false, isDefinition: false, scopeLine: 1402, flags: DIFlagPrototyped, isOptimized: true)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3022, !3018}
!3066 = !DISubprogram(name: "end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE3endEv", scope: !2870, file: !1929, line: 607, type: !2957, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3067 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE3endEv", scope: !2870, file: !1929, line: 608, type: !3012, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3068 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6rbeginEv", scope: !2870, file: !1929, line: 611, type: !3069, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!3071, !2876}
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !2870, file: !1929, line: 471, baseType: !3072)
!3072 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<checker::Schedule **> >", scope: !7, file: !685, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPPN7checker8ScheduleEEEEE")
!3073 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6rbeginEv", scope: !2870, file: !1929, line: 614, type: !3074, isLocal: false, isDefinition: false, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!3076, !2955}
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !2870, file: !1929, line: 472, baseType: !3077)
!3077 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<checker::Schedule *const *> >", scope: !7, file: !685, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKPN7checker8ScheduleEEEEE")
!3078 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4rendEv", scope: !2870, file: !1929, line: 617, type: !3069, isLocal: false, isDefinition: false, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3079 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4rendEv", scope: !2870, file: !1929, line: 620, type: !3074, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3080 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6cbeginEv", scope: !2870, file: !1929, line: 624, type: !3012, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3081 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4cendEv", scope: !2870, file: !1929, line: 627, type: !3012, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3082 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE7crbeginEv", scope: !2870, file: !1929, line: 630, type: !3074, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3083 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5crendEv", scope: !2870, file: !1929, line: 633, type: !3074, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3084 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4sizeEv", scope: !2870, file: !1929, line: 637, type: !3085, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!2869, !2955}
!3087 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8capacityEv", scope: !2870, file: !1929, line: 640, type: !3085, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3088 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5emptyEv", scope: !2870, file: !1929, line: 643, type: !3089, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!104, !2955}
!3091 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8max_sizeEv", scope: !2870, file: !1929, line: 645, type: !3085, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3092 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE7reserveEm", scope: !2870, file: !1929, line: 646, type: !2884, isLocal: false, isDefinition: false, scopeLine: 646, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3093 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13shrink_to_fitEv", scope: !2870, file: !1929, line: 647, type: !2874, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3094 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEixEm", scope: !2870, file: !1929, line: 649, type: !3095, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!3097, !2876, !2869}
!3097 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2870, file: !1929, line: 463, baseType: !3098)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1930, file: !1929, line: 328, baseType: !3099)
!3099 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2893, size: 64)
!3100 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEixEm", scope: !2870, file: !1929, line: 650, type: !3101, isLocal: false, isDefinition: false, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!2889, !2955, !2869}
!3103 = !DISubprogram(name: "at", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE2atEm", scope: !2870, file: !1929, line: 651, type: !3095, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3104 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE2atEm", scope: !2870, file: !1929, line: 652, type: !3101, isLocal: false, isDefinition: false, scopeLine: 652, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3105 = !DISubprogram(name: "front", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5frontEv", scope: !2870, file: !1929, line: 654, type: !3106, isLocal: false, isDefinition: false, scopeLine: 654, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!3097, !2876}
!3108 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5frontEv", scope: !2870, file: !1929, line: 659, type: !3109, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!2889, !2955}
!3111 = !DISubprogram(name: "back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4backEv", scope: !2870, file: !1929, line: 664, type: !3106, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3112 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4backEv", scope: !2870, file: !1929, line: 669, type: !3109, isLocal: false, isDefinition: false, scopeLine: 669, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3113 = !DISubprogram(name: "data", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4dataEv", scope: !2870, file: !1929, line: 676, type: !3114, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!3116, !2876}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2870, file: !1929, line: 460, baseType: !1901)
!3118 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4dataEv", scope: !2870, file: !1929, line: 679, type: !3119, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!3121, !2955}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3117)
!3123 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE9push_backERKS3_", scope: !2870, file: !1929, line: 682, type: !3124, isLocal: false, isDefinition: false, scopeLine: 682, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !2876, !2889}
!3126 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE9push_backEOS3_", scope: !2870, file: !1929, line: 685, type: !3127, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !2876, !3129}
!3129 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3117, size: 64)
!3130 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8pop_backEv", scope: !2870, file: !1929, line: 697, type: !2874, isLocal: false, isDefinition: false, scopeLine: 697, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3131 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EERS8_", scope: !2870, file: !1929, line: 699, type: !3132, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!2959, !2876, !3014, !2889}
!3134 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEOS3_", scope: !2870, file: !1929, line: 702, type: !3135, isLocal: false, isDefinition: false, scopeLine: 702, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!2959, !2876, !3014, !3129}
!3137 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEmRS8_", scope: !2870, file: !1929, line: 707, type: !3138, isLocal: false, isDefinition: false, scopeLine: 707, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!2959, !2876, !3014, !2869, !2889}
!3140 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EESt16initializer_listIS3_E", scope: !2870, file: !1929, line: 732, type: !3141, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!2959, !2876, !3014, !2912}
!3143 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EE", scope: !2870, file: !1929, line: 736, type: !3144, isLocal: false, isDefinition: false, scopeLine: 736, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!2959, !2876, !3014}
!3146 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_", scope: !2870, file: !1929, line: 737, type: !3147, isLocal: false, isDefinition: false, scopeLine: 737, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!2959, !2876, !3014, !3014}
!3149 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv", scope: !2870, file: !1929, line: 740, type: !2874, isLocal: false, isDefinition: false, scopeLine: 740, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3150 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6resizeEm", scope: !2870, file: !1929, line: 748, type: !2884, isLocal: false, isDefinition: false, scopeLine: 748, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3151 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6resizeEmRKS3_", scope: !2870, file: !1929, line: 749, type: !2887, isLocal: false, isDefinition: false, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3152 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4swapERS6_", scope: !2870, file: !1929, line: 751, type: !3153, isLocal: false, isDefinition: false, scopeLine: 751, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !2876, !2908}
!3155 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE12__invariantsEv", scope: !2870, file: !1929, line: 759, type: !3089, isLocal: false, isDefinition: false, scopeLine: 759, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3156 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE26__invalidate_all_iteratorsEv", scope: !2870, file: !1929, line: 771, type: !2874, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true)
!3157 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE27__invalidate_iterators_pastEPS3_", scope: !2870, file: !1929, line: 772, type: !3158, isLocal: false, isDefinition: false, scopeLine: 772, flags: DIFlagPrototyped, isOptimized: true)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !2876, !3160}
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2870, file: !1929, line: 467, baseType: !1946)
!3161 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8allocateEm", scope: !2870, file: !1929, line: 773, type: !2884, isLocal: false, isDefinition: false, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: true)
!3162 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE10deallocateEv", scope: !2870, file: !1929, line: 774, type: !2874, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true)
!3163 = !DISubprogram(name: "__recommend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE11__recommendEm", scope: !2870, file: !1929, line: 775, type: !3164, isLocal: false, isDefinition: false, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: true)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!2869, !2955, !2869}
!3166 = !DISubprogram(name: "__construct_at_end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endEm", scope: !2870, file: !1929, line: 776, type: !2884, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true)
!3167 = !DISubprogram(name: "__construct_at_end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endEmRKS3_", scope: !2870, file: !1929, line: 778, type: !2887, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true)
!3168 = !DISubprogram(name: "__append", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8__appendEm", scope: !2870, file: !1929, line: 786, type: !2884, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true)
!3169 = !DISubprogram(name: "__append", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8__appendEmRKS3_", scope: !2870, file: !1929, line: 787, type: !2887, isLocal: false, isDefinition: false, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true)
!3170 = !DISubprogram(name: "__make_iter", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE11__make_iterEPS3_", scope: !2870, file: !1929, line: 789, type: !3171, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: true)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!2959, !2876, !3160}
!3173 = !DISubprogram(name: "__make_iter", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE11__make_iterEPKS3_", scope: !2870, file: !1929, line: 791, type: !3174, isLocal: false, isDefinition: false, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: true)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!3014, !2955, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !2870, file: !1929, line: 468, baseType: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1930, file: !1929, line: 333, baseType: !3178)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1948, file: !332, line: 1512, baseType: !3179)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3180, file: !332, line: 1048, baseType: !1908)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<checker::Schedule *, checker::Schedule **, std::__1::allocator<checker::Schedule *>, true>", scope: !7, file: !332, line: 1046, size: 8, elements: !357, templateParams: !3181, identifier: "_ZTSNSt3__115__const_pointerIPN7checker8ScheduleEPS3_NS_9allocatorIS3_EELb1EEE")
!3181 = !{!1926, !1968, !1959, !227}
!3182 = !DISubprogram(name: "__swap_out_circular_buffer", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE", scope: !2870, file: !1929, line: 792, type: !3183, isLocal: false, isDefinition: false, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !2876, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__split_buffer<checker::Schedule *, std::__1::allocator<checker::Schedule *> &>", scope: !7, file: !3187, line: 26, size: 320, elements: !3188, templateParams: !3379, identifier: "_ZTSNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEEE")
!3187 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__split_buffer", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3188 = !{!3189, !3198, !3200, !3201, !3202, !3247, !3253, !3256, !3264, !3270, !3274, !3279, !3282, !3285, !3288, !3292, !3293, !3297, !3300, !3303, !3307, !3312, !3313, !3314, !3315, !3318, !3321, !3322, !3323, !3324, !3330, !3336, !3337, !3338, !3341, !3342, !3345, !3346, !3350, !3351, !3352, !3353, !3354, !3357, !3360, !3363, !3366, !3367, !3368, !3369, !3372, !3373, !3376}
!3189 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3186, baseType: !3190, flags: DIFlagPrivate)
!3190 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__split_buffer_common<true>", scope: !7, file: !3187, line: 18, size: 8, elements: !3191, templateParams: !329, identifier: "_ZTSNSt3__121__split_buffer_commonILb1EEE")
!3191 = !{!3192, !3197}
!3192 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__split_buffer_commonILb1EE20__throw_length_errorEv", scope: !3190, file: !3187, line: 21, type: !3193, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3190)
!3197 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__split_buffer_commonILb1EE20__throw_out_of_rangeEv", scope: !3190, file: !3187, line: 22, type: !3193, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "__first_", scope: !3186, file: !3187, line: 46, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3186, file: !3187, line: 41, baseType: !1947)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !3186, file: !3187, line: 47, baseType: !3199, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "__end_", scope: !3186, file: !3187, line: 48, baseType: !3199, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "__end_cap_", scope: !3186, file: !3187, line: 49, baseType: !3203, size: 128, offset: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<checker::Schedule **, std::__1::allocator<checker::Schedule *> &>", scope: !7, file: !332, line: 2144, size: 128, elements: !3204, templateParams: !3245, identifier: "_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEEE")
!3204 = !{!3205, !3206, !3226, !3230, !3235, !3238, !3241}
!3205 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3203, baseType: !2026)
!3206 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3203, baseType: !3207, offset: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<checker::Schedule *> &, 1, false>", scope: !7, file: !332, line: 2076, size: 64, elements: !3208, templateParams: !3224, identifier: "_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIPN7checker8ScheduleEEELi1ELb0EEE")
!3208 = !{!3209, !3210, !3214, !3218}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !3207, file: !332, line: 2105, baseType: !2060, size: 64, flags: DIFlagPrivate)
!3210 = !DISubprogram(name: "__compressed_pair_elem", scope: !3207, file: !332, line: 2082, type: !3211, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3214 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPN7checker8ScheduleEEELi1ELb0EE5__getEv", scope: !3207, file: !332, line: 2101, type: !3215, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!3217, !3213}
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3207, file: !332, line: 2078, baseType: !2060)
!3218 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIRNS_9allocatorIPN7checker8ScheduleEEELi1ELb0EE5__getEv", scope: !3207, file: !332, line: 2102, type: !3219, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !3207, file: !332, line: 2079, baseType: !2060)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3207)
!3224 = !{!3225, !562, !539}
!3225 = !DITemplateTypeParameter(name: "_Tp", type: !2060)
!3226 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE5firstEv", scope: !3203, file: !332, line: 2212, type: !3227, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!2036, !3229}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3230 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE5firstEv", scope: !3203, file: !332, line: 2217, type: !3231, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!2041, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3235 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE6secondEv", scope: !3203, file: !332, line: 2222, type: !3236, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!3217, !3229}
!3238 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE6secondEv", scope: !3203, file: !332, line: 2227, type: !3239, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!3221, !3233}
!3241 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE4swapERS8_", scope: !3203, file: !332, line: 2232, type: !3242, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !3229, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3203, size: 64)
!3245 = !{!2090, !3246}
!3246 = !DITemplateTypeParameter(name: "_T2", type: !2060)
!3247 = !DISubprogram(name: "__split_buffer", scope: !3186, file: !3187, line: 30, type: !3248, isLocal: false, isDefinition: false, scopeLine: 30, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3251 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3253 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEEaSERKS7_", scope: !3186, file: !3187, line: 31, type: !3254, isLocal: false, isDefinition: false, scopeLine: 31, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!3185, !3250, !3251}
!3256 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE7__allocEv", scope: !3186, file: !3187, line: 54, type: !3257, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!3259, !3250}
!3259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__alloc_rr", scope: !3186, file: !3187, line: 35, baseType: !3261)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3262, file: !426, line: 1069, baseType: !1888)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::allocator<checker::Schedule *> &>", scope: !7, file: !426, line: 1069, size: 8, elements: !357, templateParams: !3263, identifier: "_ZTSNSt3__116remove_referenceIRNS_9allocatorIPN7checker8ScheduleEEEEE")
!3263 = !{!3225}
!3264 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE7__allocEv", scope: !3186, file: !3187, line: 55, type: !3265, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!3267, !3269}
!3267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3260)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3270 = !DISubprogram(name: "__end_cap", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE9__end_capEv", scope: !3186, file: !3187, line: 56, type: !3271, isLocal: false, isDefinition: false, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!3273, !3250}
!3273 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3199, size: 64)
!3274 = !DISubprogram(name: "__end_cap", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE9__end_capEv", scope: !3186, file: !3187, line: 57, type: !3275, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!3277, !3269}
!3277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!3279 = !DISubprogram(name: "__split_buffer", scope: !3186, file: !3187, line: 60, type: !3280, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3250}
!3282 = !DISubprogram(name: "__split_buffer", scope: !3186, file: !3187, line: 63, type: !3283, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3250, !3259}
!3285 = !DISubprogram(name: "__split_buffer", scope: !3186, file: !3187, line: 65, type: !3286, isLocal: false, isDefinition: false, scopeLine: 65, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3250, !3267}
!3288 = !DISubprogram(name: "__split_buffer", scope: !3186, file: !3187, line: 66, type: !3289, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !3250, !3291, !3291, !3259}
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !3186, file: !3187, line: 39, baseType: !1955)
!3292 = !DISubprogram(name: "~__split_buffer", scope: !3186, file: !3187, line: 67, type: !3280, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true)
!3293 = !DISubprogram(name: "__split_buffer", scope: !3186, file: !3187, line: 70, type: !3294, isLocal: false, isDefinition: false, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{null, !3250, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3186, size: 64)
!3297 = !DISubprogram(name: "__split_buffer", scope: !3186, file: !3187, line: 72, type: !3298, isLocal: false, isDefinition: false, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3250, !3296, !3267}
!3300 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEEaSEOS7_", scope: !3186, file: !3187, line: 73, type: !3301, isLocal: false, isDefinition: false, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!3185, !3250, !3296}
!3303 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE5beginEv", scope: !3186, file: !3187, line: 79, type: !3304, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!3306, !3250}
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !3186, file: !3187, line: 43, baseType: !3199)
!3307 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE5beginEv", scope: !3186, file: !3187, line: 80, type: !3308, isLocal: false, isDefinition: false, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!3310, !3269}
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !3186, file: !3187, line: 44, baseType: !3311)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !3186, file: !3187, line: 42, baseType: !3178)
!3312 = !DISubprogram(name: "end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE3endEv", scope: !3186, file: !3187, line: 81, type: !3304, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true)
!3313 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE3endEv", scope: !3186, file: !3187, line: 82, type: !3308, isLocal: false, isDefinition: false, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true)
!3314 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE5clearEv", scope: !3186, file: !3187, line: 85, type: !3280, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true)
!3315 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE4sizeEv", scope: !3186, file: !3187, line: 87, type: !3316, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!3291, !3269}
!3318 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE5emptyEv", scope: !3186, file: !3187, line: 88, type: !3319, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!104, !3269}
!3321 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE8capacityEv", scope: !3186, file: !3187, line: 89, type: !3316, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true)
!3322 = !DISubprogram(name: "__front_spare", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE13__front_spareEv", scope: !3186, file: !3187, line: 90, type: !3316, isLocal: false, isDefinition: false, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true)
!3323 = !DISubprogram(name: "__back_spare", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE12__back_spareEv", scope: !3186, file: !3187, line: 91, type: !3316, isLocal: false, isDefinition: false, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true)
!3324 = !DISubprogram(name: "front", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE5frontEv", scope: !3186, file: !3187, line: 93, type: !3325, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!3327, !3250}
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3186, file: !3187, line: 37, baseType: !3328)
!3328 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !3186, file: !3187, line: 33, baseType: !1901)
!3330 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE5frontEv", scope: !3186, file: !3187, line: 94, type: !3331, isLocal: false, isDefinition: false, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!3333, !3269}
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !3186, file: !3187, line: 38, baseType: !3334)
!3334 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3329)
!3336 = !DISubprogram(name: "back", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE4backEv", scope: !3186, file: !3187, line: 95, type: !3325, isLocal: false, isDefinition: false, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true)
!3337 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE4backEv", scope: !3186, file: !3187, line: 96, type: !3331, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true)
!3338 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE7reserveEm", scope: !3186, file: !3187, line: 98, type: !3339, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !3250, !3291}
!3341 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE13shrink_to_fitEv", scope: !3186, file: !3187, line: 99, type: !3280, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true)
!3342 = !DISubprogram(name: "push_front", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE10push_frontERKS3_", scope: !3186, file: !3187, line: 100, type: !3343, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !3250, !3333}
!3345 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE9push_backERKS3_", scope: !3186, file: !3187, line: 101, type: !3343, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true)
!3346 = !DISubprogram(name: "push_front", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE10push_frontEOS3_", scope: !3186, file: !3187, line: 103, type: !3347, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{null, !3250, !3349}
!3349 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3329, size: 64)
!3350 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE9push_backEOS3_", scope: !3186, file: !3187, line: 104, type: !3347, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true)
!3351 = !DISubprogram(name: "pop_front", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE9pop_frontEv", scope: !3186, file: !3187, line: 109, type: !3280, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true)
!3352 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE8pop_backEv", scope: !3186, file: !3187, line: 110, type: !3280, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true)
!3353 = !DISubprogram(name: "__construct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE18__construct_at_endEm", scope: !3186, file: !3187, line: 112, type: !3339, isLocal: false, isDefinition: false, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true)
!3354 = !DISubprogram(name: "__construct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE18__construct_at_endEmRKS3_", scope: !3186, file: !3187, line: 113, type: !3355, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3250, !3291, !3333}
!3357 = !DISubprogram(name: "__destruct_at_begin", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_", scope: !3186, file: !3187, line: 130, type: !3358, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3250, !3199}
!3360 = !DISubprogram(name: "__destruct_at_begin", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb0EEE", scope: !3186, file: !3187, line: 133, type: !3361, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3250, !3199, !465}
!3363 = !DISubprogram(name: "__destruct_at_begin", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE", scope: !3186, file: !3187, line: 135, type: !3364, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3250, !3199, !448}
!3366 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !3186, file: !3187, line: 138, type: !3358, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true)
!3367 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE17__destruct_at_endEPS3_NS_17integral_constantIbLb0EEE", scope: !3186, file: !3187, line: 141, type: !3361, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true)
!3368 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE17__destruct_at_endEPS3_NS_17integral_constantIbLb1EEE", scope: !3186, file: !3187, line: 143, type: !3364, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true)
!3369 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE4swapERS7_", scope: !3186, file: !3187, line: 145, type: !3370, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !3250, !3185}
!3372 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE12__invariantsEv", scope: !3186, file: !3187, line: 149, type: !3319, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!3373 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__move_assign_allocERS7_NS_17integral_constantIbLb1EEE", scope: !3186, file: !3187, line: 153, type: !3374, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3250, !3185, !448}
!3376 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__move_assign_allocERS7_NS_17integral_constantIbLb0EEE", scope: !3186, file: !3187, line: 160, type: !3377, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3250, !3185, !465}
!3379 = !{!1926, !3380}
!3380 = !DITemplateTypeParameter(name: "_Allocator", type: !2060)
!3381 = !DISubprogram(name: "__swap_out_circular_buffer", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_", scope: !2870, file: !1929, line: 793, type: !3382, isLocal: false, isDefinition: false, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!3160, !2876, !3185, !3160}
!3384 = !DISubprogram(name: "__move_range", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_", scope: !2870, file: !1929, line: 794, type: !3385, isLocal: false, isDefinition: false, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !2876, !3160, !3160, !3160}
!3387 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13__move_assignERS6_NS_17integral_constantIbLb1EEE", scope: !2870, file: !1929, line: 795, type: !3388, isLocal: false, isDefinition: false, scopeLine: 795, flags: DIFlagPrototyped, isOptimized: true)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !2876, !2908, !448}
!3390 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13__move_assignERS6_NS_17integral_constantIbLb0EEE", scope: !2870, file: !1929, line: 797, type: !3391, isLocal: false, isDefinition: false, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: true)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !2876, !2908, !465}
!3393 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !2870, file: !1929, line: 800, type: !3158, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: true)
!3394 = !DISubprogram(name: "__annotate_contiguous_container", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE31__annotate_contiguous_containerEPKvS8_S8_S8_", scope: !2870, file: !1929, line: 832, type: !3395, isLocal: false, isDefinition: false, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !2955, !390, !390, !390, !390}
!3397 = !DISubprogram(name: "__annotate_new", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE14__annotate_newEm", scope: !2870, file: !1929, line: 836, type: !3398, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPrototyped, isOptimized: true)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !2955, !2869}
!3400 = !DISubprogram(name: "__annotate_delete", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE17__annotate_deleteEv", scope: !2870, file: !1929, line: 842, type: !3401, isLocal: false, isDefinition: false, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: true)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !2955}
!3403 = !DISubprogram(name: "__annotate_increase", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE19__annotate_increaseEm", scope: !2870, file: !1929, line: 848, type: !3398, isLocal: false, isDefinition: false, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true)
!3404 = !DISubprogram(name: "__annotate_shrink", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE17__annotate_shrinkEm", scope: !2870, file: !1929, line: 855, type: !3398, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true)
!3405 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__libcpp_numeric_limits<long, true>", scope: !7, file: !1409, line: 198, size: 8, elements: !3406, templateParams: !3448, identifier: "_ZTSNSt3__123__libcpp_numeric_limitsIlLb1EEE")
!3406 = !{!3407, !3408, !3409, !3411, !3412, !3413, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3437, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "is_specialized", scope: !3405, file: !1409, line: 203, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3405, file: !1409, line: 205, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !3405, file: !1409, line: 206, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 63)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "digits10", scope: !3405, file: !1409, line: 207, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 18)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "max_digits10", scope: !3405, file: !1409, line: 208, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "__min", scope: !3405, file: !1409, line: 209, baseType: !3414, flags: DIFlagProtected | DIFlagStaticMember, extraData: i64 -9223372036854775808)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3405, file: !1409, line: 201, baseType: !67)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "__max", scope: !3405, file: !1409, line: 210, baseType: !3414, flags: DIFlagProtected | DIFlagStaticMember, extraData: i64 9223372036854775807)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "is_integer", scope: !3405, file: !1409, line: 215, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "is_exact", scope: !3405, file: !1409, line: 216, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !3405, file: !1409, line: 217, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 2)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent", scope: !3405, file: !1409, line: 221, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent10", scope: !3405, file: !1409, line: 222, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent", scope: !3405, file: !1409, line: 223, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent10", scope: !3405, file: !1409, line: 224, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "has_infinity", scope: !3405, file: !1409, line: 226, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "has_quiet_NaN", scope: !3405, file: !1409, line: 227, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "has_signaling_NaN", scope: !3405, file: !1409, line: 228, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !3405, file: !1409, line: 229, baseType: !3428, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm_loss", scope: !3405, file: !1409, line: 230, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "is_iec559", scope: !3405, file: !1409, line: 236, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "is_bounded", scope: !3405, file: !1409, line: 237, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "is_modulo", scope: !3405, file: !1409, line: 238, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !3405, file: !1409, line: 242, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tinyness_before", scope: !3405, file: !1409, line: 246, baseType: !452, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "round_style", scope: !3405, file: !1409, line: 247, baseType: !3436, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!3437 = !DISubprogram(name: "min", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3minEv", scope: !3405, file: !1409, line: 211, type: !3438, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!3415}
!3440 = !DISubprogram(name: "max", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv", scope: !3405, file: !1409, line: 212, type: !3438, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3441 = !DISubprogram(name: "lowest", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE6lowestEv", scope: !3405, file: !1409, line: 213, type: !3438, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3442 = !DISubprogram(name: "epsilon", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE7epsilonEv", scope: !3405, file: !1409, line: 218, type: !3438, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3443 = !DISubprogram(name: "round_error", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE11round_errorEv", scope: !3405, file: !1409, line: 219, type: !3438, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3444 = !DISubprogram(name: "infinity", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE8infinityEv", scope: !3405, file: !1409, line: 231, type: !3438, isLocal: false, isDefinition: false, scopeLine: 231, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3445 = !DISubprogram(name: "quiet_NaN", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE9quiet_NaNEv", scope: !3405, file: !1409, line: 232, type: !3438, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3446 = !DISubprogram(name: "signaling_NaN", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE13signaling_NaNEv", scope: !3405, file: !1409, line: 233, type: !3438, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3447 = !DISubprogram(name: "denorm_min", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE10denorm_minEv", scope: !3405, file: !1409, line: 234, type: !3438, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3448 = !{!3449, !227}
!3449 = !DITemplateTypeParameter(name: "_Tp", type: !67)
!3450 = !{!0, !3451}
!3451 = !DIGlobalVariableExpression(var: !3452)
!3452 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 9, type: !91, isLocal: false, isDefinition: true)
!3453 = !{!3454, !3455, !3456, !3459, !3460, !3467, !3473, !3479, !3483, !3487, !3491, !3495, !3500, !3504, !3508, !3512, !3516, !3520, !3524, !3526, !3530, !3534, !3538, !3542, !3546, !3548, !3552, !3556, !3558, !3562, !3564, !3571, !3575, !3580, !3584, !3586, !3590, !3594, !3596, !3600, !3606, !3610, !3614, !3620, !3624, !3627, !3628, !3631, !3634, !3637, !3640, !3643, !3646, !3648, !3650, !3652, !3654, !3656, !3658, !3660, !3662, !3664, !3666, !3668, !3670, !3672, !3674, !3676, !3680, !3683, !3684, !3687, !3688, !3693, !3695, !3699, !3703, !3705, !3707, !3711, !3715, !3719, !3721, !3725, !3730, !3734, !3738, !3740, !3742, !3744, !3746, !3748, !3750, !3754, !3758, !3762, !3763, !3764, !3779, !3783, !3787, !3792, !3797, !3803, !3809, !3813, !3815, !3819, !3871, !3872, !3873, !3878, !3880, !3884, !3888, !3892, !3894, !3898, !3902, !3906, !3917, !3919, !3923, !3927, !3931, !3933, !3937, !3941, !3945, !3947, !3949, !3951, !3955, !3959, !3964, !3968, !3974, !3978, !3982, !3984, !3986, !3988, !3992, !3996, !4000, !4002, !4004, !4008, !4012, !4014, !4016, !4020, !4024, !4026, !4030, !4032, !4034, !4037, !4039, !4041, !4043, !4045, !4047, !4049, !4051, !4053, !4055, !4057, !4059, !4061, !4063, !4067, !4072, !4077, !4082, !4084, !4087, !4089, !4091, !4093, !4095, !4097, !4099, !4101, !4103, !4105, !4109, !4113, !4117, !4119, !4123, !4127, !4139, !4140, !4141, !4142, !4143, !4148, !4150, !4154, !4158, !4162, !4166, !4168, !4172, !4176, !4180, !4184, !4188, !4192, !4194, !4196, !4200, !4205, !4209, !4213, !4217, !4221, !4225, !4229, !4233, !4237, !4239, !4241, !4245, !4247, !4251, !4255, !4260, !4262, !4264, !4266, !4270, !4274, !4278, !4280, !4284, !4286, !4288, !4290, !4292, !4296, !4300, !4302, !4308, !4313, !4317, !4321, !4326, !4331, !4335, !4339, !4343, !4347, !4349, !4351, !4352, !4353}
!3454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !65, line: 49)
!3455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 50)
!3456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3457, line: 55)
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !3458, line: 32, baseType: !1707)
!3458 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 100)
!3460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3461, line: 101)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !3462, line: 85, baseType: !3463)
!3462 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3462, line: 82, size: 64, elements: !3464, identifier: "_ZTS5div_t")
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !3463, file: !3462, line: 83, baseType: !26, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !3463, file: !3462, line: 84, baseType: !26, size: 32, offset: 32)
!3467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3468, line: 102)
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !3462, line: 90, baseType: !3469)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3462, line: 87, size: 128, elements: !3470, identifier: "_ZTS6ldiv_t")
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !3469, file: !3462, line: 88, baseType: !67, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !3469, file: !3462, line: 89, baseType: !67, size: 64, offset: 64)
!3473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3474, line: 104)
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !3462, line: 96, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3462, line: 93, size: 128, elements: !3476, identifier: "_ZTS7lldiv_t")
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !3475, file: !3462, line: 94, baseType: !1500, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !3475, file: !3462, line: 95, baseType: !1500, size: 64, offset: 64)
!3479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3480, line: 106)
!3480 = !DISubprogram(name: "atof", scope: !3462, file: !3462, line: 131, type: !3481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!1703, !307}
!3483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3484, line: 107)
!3484 = !DISubprogram(name: "atoi", scope: !3462, file: !3462, line: 132, type: !3485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!26, !307}
!3487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3488, line: 108)
!3488 = !DISubprogram(name: "atol", scope: !3462, file: !3462, line: 133, type: !3489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!67, !307}
!3491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3492, line: 110)
!3492 = !DISubprogram(name: "atoll", scope: !3462, file: !3462, line: 136, type: !3493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!1500, !307}
!3495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3496, line: 112)
!3496 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !3462, file: !3462, line: 162, type: !3497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!1703, !307, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!3500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3501, line: 113)
!3501 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !3462, file: !3462, line: 163, type: !3502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!1699, !307, !3499}
!3504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3505, line: 114)
!3505 = !DISubprogram(name: "strtold", scope: !3462, file: !3462, line: 166, type: !3506, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!1707, !307, !3499}
!3508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3509, line: 115)
!3509 = !DISubprogram(name: "strtol", scope: !3462, file: !3462, line: 164, type: !3510, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!67, !307, !3499, !26}
!3512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3513, line: 117)
!3513 = !DISubprogram(name: "strtoll", scope: !3462, file: !3462, line: 169, type: !3514, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!1500, !307, !3499, !26}
!3516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3517, line: 119)
!3517 = !DISubprogram(name: "strtoul", scope: !3462, file: !3462, line: 172, type: !3518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!88, !307, !3499, !26}
!3520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3521, line: 121)
!3521 = !DISubprogram(name: "strtoull", scope: !3462, file: !3462, line: 175, type: !3522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!1695, !307, !3499, !26}
!3524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3525, line: 123)
!3525 = !DISubprogram(name: "rand", scope: !3462, file: !3462, line: 159, type: !24, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3527, line: 124)
!3527 = !DISubprogram(name: "srand", scope: !3462, file: !3462, line: 161, type: !3528, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !30}
!3530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3531, line: 125)
!3531 = !DISubprogram(name: "calloc", scope: !3462, file: !3462, line: 140, type: !3532, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!72, !84, !84}
!3534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3535, line: 126)
!3535 = !DISubprogram(name: "free", scope: !3462, file: !3462, line: 143, type: !3536, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{null, !72}
!3538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3539, line: 127)
!3539 = !DISubprogram(name: "malloc", scope: !3462, file: !3462, line: 152, type: !3540, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!72, !84}
!3542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3543, line: 128)
!3543 = !DISubprogram(name: "realloc", scope: !3462, file: !3462, line: 160, type: !3544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!72, !72, !84}
!3546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3547, line: 129)
!3547 = !DISubprogram(name: "abort", scope: !3462, file: !3462, line: 128, type: !2748, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!3548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3549, line: 130)
!3549 = !DISubprogram(name: "atexit", scope: !3462, file: !3462, line: 130, type: !3550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!26, !2747}
!3552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3553, line: 131)
!3553 = !DISubprogram(name: "exit", scope: !3462, file: !3462, line: 142, type: !3554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !26}
!3556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3557, line: 132)
!3557 = !DISubprogram(name: "_Exit", scope: !3462, file: !3462, line: 182, type: !3554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!3558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3559, line: 134)
!3559 = !DISubprogram(name: "getenv", scope: !3462, file: !3462, line: 144, type: !3560, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!371, !307}
!3562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3563, line: 135)
!3563 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !3462, file: !3462, line: 177, type: !3485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3565, line: 137)
!3565 = !DISubprogram(name: "bsearch", scope: !3462, file: !3462, line: 138, type: !3566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!72, !390, !390, !84, !84, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!26, !390, !390}
!3571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3572, line: 138)
!3572 = !DISubprogram(name: "qsort", scope: !3462, file: !3462, line: 157, type: !3573, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{null, !72, !84, !84, !3568}
!3575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3576, line: 139)
!3576 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !3577, file: !3577, line: 113, type: !3578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3577 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!1500, !1500}
!3580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3581, line: 140)
!3581 = !DISubprogram(name: "labs", scope: !3462, file: !3462, line: 145, type: !3582, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!67, !67}
!3584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3585, line: 142)
!3585 = !DISubprogram(name: "llabs", scope: !3462, file: !3462, line: 149, type: !3578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3587, line: 144)
!3587 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !3577, file: !3577, line: 118, type: !3588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!3474, !1500, !1500}
!3590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3591, line: 145)
!3591 = !DISubprogram(name: "ldiv", scope: !3462, file: !3462, line: 146, type: !3592, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!3468, !67, !67}
!3594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3595, line: 147)
!3595 = !DISubprogram(name: "lldiv", scope: !3462, file: !3462, line: 150, type: !3588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3597, line: 149)
!3597 = !DISubprogram(name: "mblen", scope: !3462, file: !3462, line: 153, type: !3598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!26, !307, !84}
!3600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3601, line: 150)
!3601 = !DISubprogram(name: "mbtowc", scope: !3462, file: !3462, line: 155, type: !3602, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!26, !3604, !307, !84}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!3606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3607, line: 151)
!3607 = !DISubprogram(name: "wctomb", scope: !3462, file: !3462, line: 179, type: !3608, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!26, !371, !3605}
!3610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3611, line: 152)
!3611 = !DISubprogram(name: "mbstowcs", scope: !3462, file: !3462, line: 154, type: !3612, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!84, !3604, !307, !84}
!3614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3615, line: 153)
!3615 = !DISubprogram(name: "wcstombs", scope: !3462, file: !3462, line: 178, type: !3616, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!84, !371, !3618, !84}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3621, line: 153)
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !3622, line: 30, baseType: !3623)
!3622 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3623 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3625, line: 154)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !3626, line: 30, baseType: !1672)
!3626 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1303, line: 155)
!3628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3629, line: 156)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !3630, line: 30, baseType: !1500)
!3630 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3632, line: 158)
!3632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !3633, line: 31, baseType: !505)
!3633 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3635, line: 159)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !3636, line: 31, baseType: !1676)
!3636 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3638, line: 160)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !3639, line: 31, baseType: !30)
!3639 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3641, line: 161)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !3642, line: 31, baseType: !1695)
!3642 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3644, line: 163)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !3645, line: 29, baseType: !3621)
!3645 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3647, line: 164)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !3645, line: 30, baseType: !3625)
!3648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3649, line: 165)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !3645, line: 31, baseType: !1303)
!3650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3651, line: 166)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !3645, line: 32, baseType: !3629)
!3652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3653, line: 168)
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !3645, line: 33, baseType: !3632)
!3654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3655, line: 169)
!3655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !3645, line: 34, baseType: !3635)
!3656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3657, line: 170)
!3657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !3645, line: 35, baseType: !3638)
!3658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3659, line: 171)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !3645, line: 36, baseType: !3641)
!3660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3661, line: 173)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !3645, line: 40, baseType: !3621)
!3662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3663, line: 174)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !3645, line: 41, baseType: !3625)
!3664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3665, line: 175)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !3645, line: 42, baseType: !1303)
!3666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3667, line: 176)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !3645, line: 43, baseType: !3629)
!3668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3669, line: 178)
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !3645, line: 44, baseType: !3632)
!3670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3671, line: 179)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !3645, line: 45, baseType: !3635)
!3672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3673, line: 180)
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !3645, line: 46, baseType: !3638)
!3674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3675, line: 181)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3645, line: 47, baseType: !3641)
!3676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3677, line: 183)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !3678, line: 30, baseType: !3679)
!3678 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !87, line: 49, baseType: !67)
!3680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3681, line: 184)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !3682, line: 30, baseType: !88)
!3682 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2423, line: 186)
!3684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3685, line: 187)
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3686, line: 32, baseType: !88)
!3686 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 69)
!3688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3689, line: 70)
!3689 = !DISubprogram(name: "memcpy", scope: !3690, file: !3690, line: 72, type: !3691, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3690 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!72, !72, !390, !84}
!3693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3694, line: 71)
!3694 = !DISubprogram(name: "memmove", scope: !3690, file: !3690, line: 73, type: !3691, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3696, line: 72)
!3696 = !DISubprogram(name: "strcpy", scope: !3690, file: !3690, line: 79, type: !3697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!371, !371, !307}
!3699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3700, line: 73)
!3700 = !DISubprogram(name: "strncpy", scope: !3690, file: !3690, line: 85, type: !3701, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!371, !371, !307, !84}
!3703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3704, line: 74)
!3704 = !DISubprogram(name: "strcat", scope: !3690, file: !3690, line: 75, type: !3697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3706, line: 75)
!3706 = !DISubprogram(name: "strncat", scope: !3690, file: !3690, line: 83, type: !3701, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3708, line: 76)
!3708 = !DISubprogram(name: "memcmp", scope: !3690, file: !3690, line: 71, type: !3709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!26, !390, !390, !84}
!3711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3712, line: 77)
!3712 = !DISubprogram(name: "strcmp", scope: !3690, file: !3690, line: 77, type: !3713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!26, !307, !307}
!3715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3716, line: 78)
!3716 = !DISubprogram(name: "strncmp", scope: !3690, file: !3690, line: 84, type: !3717, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!26, !307, !307, !84}
!3719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3720, line: 79)
!3720 = !DISubprogram(name: "strcoll", scope: !3690, file: !3690, line: 78, type: !3713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3722, line: 80)
!3722 = !DISubprogram(name: "strxfrm", scope: !3690, file: !3690, line: 91, type: !3723, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!84, !371, !307, !84}
!3725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3726, line: 81)
!3726 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !3727, file: !3727, line: 99, type: !3728, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3727 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!72, !72, !26, !84}
!3730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3731, line: 82)
!3731 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !3727, file: !3727, line: 78, type: !3732, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!371, !371, !26}
!3734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3735, line: 83)
!3735 = !DISubprogram(name: "strcspn", scope: !3690, file: !3690, line: 80, type: !3736, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!84, !307, !307}
!3738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3739, line: 84)
!3739 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !3727, file: !3727, line: 85, type: !3697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3741, line: 85)
!3741 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !3727, file: !3727, line: 92, type: !3732, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3743, line: 86)
!3743 = !DISubprogram(name: "strspn", scope: !3690, file: !3690, line: 88, type: !3736, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3745, line: 87)
!3745 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !3727, file: !3727, line: 106, type: !3697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3747, line: 89)
!3747 = !DISubprogram(name: "strtok", scope: !3690, file: !3690, line: 90, type: !3697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3749, line: 91)
!3749 = !DISubprogram(name: "memset", scope: !3690, file: !3690, line: 74, type: !3728, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3751, line: 92)
!3751 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !3690, file: !3690, line: 81, type: !3752, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!371, !26}
!3754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3755, line: 93)
!3755 = !DISubprogram(name: "strlen", scope: !3690, file: !3690, line: 82, type: !3756, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!84, !307}
!3758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3759, line: 56)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3760, line: 30, baseType: !3761)
!3760 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !87, line: 117, baseType: !88)
!3762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 57)
!3763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2559, line: 58)
!3764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3765, line: 59)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !3766, line: 73, size: 448, elements: !3767, identifier: "_ZTS2tm")
!3766 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3767 = !{!3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !3765, file: !3766, line: 74, baseType: !26, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !3765, file: !3766, line: 75, baseType: !26, size: 32, offset: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !3765, file: !3766, line: 76, baseType: !26, size: 32, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !3765, file: !3766, line: 77, baseType: !26, size: 32, offset: 96)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !3765, file: !3766, line: 78, baseType: !26, size: 32, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !3765, file: !3766, line: 79, baseType: !26, size: 32, offset: 160)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !3765, file: !3766, line: 80, baseType: !26, size: 32, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !3765, file: !3766, line: 81, baseType: !26, size: 32, offset: 224)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !3765, file: !3766, line: 82, baseType: !26, size: 32, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !3765, file: !3766, line: 83, baseType: !67, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !3765, file: !3766, line: 84, baseType: !371, size: 64, offset: 384)
!3779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3780, line: 60)
!3780 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !3766, file: !3766, line: 107, type: !3781, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!3759}
!3783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3784, line: 61)
!3784 = !DISubprogram(name: "difftime", scope: !3766, file: !3766, line: 109, type: !3785, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!1703, !2559, !2559}
!3787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3788, line: 62)
!3788 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !3766, file: !3766, line: 113, type: !3789, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!2559, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3793, line: 63)
!3793 = !DISubprogram(name: "time", scope: !3766, file: !3766, line: 116, type: !3794, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!2559, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!3797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3798, line: 65)
!3798 = !DISubprogram(name: "asctime", scope: !3766, file: !3766, line: 106, type: !3799, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!371, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3765)
!3803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3804, line: 66)
!3804 = !DISubprogram(name: "ctime", scope: !3766, file: !3766, line: 108, type: !3805, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!371, !3807}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!3809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3810, line: 67)
!3810 = !DISubprogram(name: "gmtime", scope: !3766, file: !3766, line: 111, type: !3811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!3791, !3807}
!3813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3814, line: 68)
!3814 = !DISubprogram(name: "localtime", scope: !3766, file: !3766, line: 112, type: !3811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3816, line: 70)
!3816 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !3766, file: !3766, line: 114, type: !3817, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!84, !371, !84, !307, !3801}
!3819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3820, line: 108)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3821, line: 153, baseType: !3822)
!3821 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !3821, line: 122, size: 1216, elements: !3823, identifier: "_ZTS7__sFILE")
!3823 = !{!3824, !3826, !3827, !3828, !3829, !3830, !3835, !3836, !3837, !3841, !3845, !3853, !3857, !3858, !3861, !3862, !3864, !3868, !3869, !3870}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !3822, file: !3821, line: 123, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !3822, file: !3821, line: 124, baseType: !26, size: 32, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !3822, file: !3821, line: 125, baseType: !26, size: 32, offset: 96)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3822, file: !3821, line: 126, baseType: !1672, size: 16, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !3822, file: !3821, line: 127, baseType: !1672, size: 16, offset: 144)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !3822, file: !3821, line: 128, baseType: !3831, size: 128, offset: 192)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !3821, line: 88, size: 128, elements: !3832, identifier: "_ZTS6__sbuf")
!3832 = !{!3833, !3834}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !3831, file: !3821, line: 89, baseType: !3825, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !3831, file: !3821, line: 90, baseType: !26, size: 32, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !3822, file: !3821, line: 129, baseType: !26, size: 32, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !3822, file: !3821, line: 132, baseType: !72, size: 64, offset: 384)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !3822, file: !3821, line: 133, baseType: !3838, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!26, !72}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !3822, file: !3821, line: 134, baseType: !3842, size: 64, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!26, !72, !371, !26}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !3822, file: !3821, line: 135, baseType: !3846, size: 64, offset: 576)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!3849, !72, !3849, !26}
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !3821, line: 77, baseType: !3850)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !3851, line: 71, baseType: !3852)
!3851 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !87, line: 46, baseType: !1500)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !3822, file: !3821, line: 136, baseType: !3854, size: 64, offset: 640)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!26, !72, !307, !26}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !3822, file: !3821, line: 139, baseType: !3831, size: 128, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !3822, file: !3821, line: 140, baseType: !3859, size: 64, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !3821, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !3822, file: !3821, line: 141, baseType: !26, size: 32, offset: 896)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !3822, file: !3821, line: 144, baseType: !3863, size: 24, offset: 928)
!3863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 24, elements: !517)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !3822, file: !3821, line: 145, baseType: !3865, size: 8, offset: 952)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 8, elements: !3866)
!3866 = !{!3867}
!3867 = !DISubrange(count: 1)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !3822, file: !3821, line: 148, baseType: !3831, size: 128, offset: 960)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !3822, file: !3821, line: 151, baseType: !26, size: 32, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3822, file: !3821, line: 152, baseType: !3849, size: 64, offset: 1152)
!3871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3849, line: 109)
!3872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 110)
!3873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3874, line: 112)
!3874 = !DISubprogram(name: "fclose", scope: !3821, file: !3821, line: 232, type: !3875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!26, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3879, line: 113)
!3879 = !DISubprogram(name: "fflush", scope: !3821, file: !3821, line: 235, type: !3875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3881, line: 114)
!3881 = !DISubprogram(name: "setbuf", scope: !3821, file: !3821, line: 267, type: !3882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3877, !371}
!3884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3885, line: 115)
!3885 = !DISubprogram(name: "setvbuf", scope: !3821, file: !3821, line: 268, type: !3886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!26, !3877, !371, !26, !84}
!3888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3889, line: 116)
!3889 = !DISubprogram(name: "fprintf", scope: !3821, file: !3821, line: 244, type: !3890, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!26, !3877, !307, null}
!3892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3893, line: 117)
!3893 = !DISubprogram(name: "fscanf", scope: !3821, file: !3821, line: 250, type: !3890, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3895, line: 118)
!3895 = !DISubprogram(name: "snprintf", scope: !3821, file: !3821, line: 421, type: !3896, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!26, !371, !84, !307, null}
!3898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3899, line: 119)
!3899 = !DISubprogram(name: "sprintf", scope: !3821, file: !3821, line: 269, type: !3900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!26, !371, !307, null}
!3902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3903, line: 120)
!3903 = !DISubprogram(name: "sscanf", scope: !3821, file: !3821, line: 270, type: !3904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!26, !307, !307, null}
!3906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3907, line: 121)
!3907 = !DISubprogram(name: "vfprintf", scope: !3821, file: !3821, line: 278, type: !3908, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!26, !3877, !307, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !3912, identifier: "_ZTS13__va_list_tag")
!3912 = !{!3913, !3914, !3915, !3916}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3911, file: !3, baseType: !30, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3911, file: !3, baseType: !30, size: 32, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3911, file: !3, baseType: !72, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3911, file: !3, baseType: !72, size: 64, offset: 128)
!3917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3918, line: 122)
!3918 = !DISubprogram(name: "vfscanf", scope: !3821, file: !3821, line: 422, type: !3908, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3920, line: 123)
!3920 = !DISubprogram(name: "vsscanf", scope: !3821, file: !3821, line: 425, type: !3921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!26, !307, !307, !3910}
!3923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3924, line: 124)
!3924 = !DISubprogram(name: "vsnprintf", scope: !3821, file: !3821, line: 424, type: !3925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!26, !371, !84, !307, !3910}
!3927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3928, line: 125)
!3928 = !DISubprogram(name: "vsprintf", scope: !3821, file: !3821, line: 280, type: !3929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!26, !371, !307, !3910}
!3931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3932, line: 126)
!3932 = !DISubprogram(name: "fgetc", scope: !3821, file: !3821, line: 236, type: !3875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3934, line: 127)
!3934 = !DISubprogram(name: "fgets", scope: !3821, file: !3821, line: 238, type: !3935, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!371, !371, !26, !3877}
!3937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3938, line: 128)
!3938 = !DISubprogram(name: "fputc", scope: !3821, file: !3821, line: 245, type: !3939, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!26, !26, !3877}
!3941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3942, line: 129)
!3942 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !3821, file: !3821, line: 246, type: !3943, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!26, !307, !3877}
!3945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3946, line: 130)
!3946 = !DISubprogram(name: "getc", scope: !3821, file: !3821, line: 255, type: !3875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3948, line: 131)
!3948 = !DISubprogram(name: "putc", scope: !3821, file: !3821, line: 260, type: !3939, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3950, line: 132)
!3950 = !DISubprogram(name: "ungetc", scope: !3821, file: !3821, line: 277, type: !3939, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3952, line: 133)
!3952 = !DISubprogram(name: "fread", scope: !3821, file: !3821, line: 247, type: !3953, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!84, !72, !84, !84, !3877}
!3955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3956, line: 134)
!3956 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !3821, file: !3821, line: 254, type: !3957, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!84, !390, !84, !84, !3877}
!3959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3960, line: 135)
!3960 = !DISubprogram(name: "fgetpos", scope: !3821, file: !3821, line: 237, type: !3961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!26, !3877, !3963}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3965, line: 136)
!3965 = !DISubprogram(name: "fseek", scope: !3821, file: !3821, line: 251, type: !3966, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!26, !3877, !67, !26}
!3968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3969, line: 137)
!3969 = !DISubprogram(name: "fsetpos", scope: !3821, file: !3821, line: 252, type: !3970, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!26, !3877, !3972}
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3849)
!3974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3975, line: 138)
!3975 = !DISubprogram(name: "ftell", scope: !3821, file: !3821, line: 253, type: !3976, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!67, !3877}
!3978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3979, line: 139)
!3979 = !DISubprogram(name: "rewind", scope: !3821, file: !3821, line: 265, type: !3980, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !3877}
!3982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3983, line: 140)
!3983 = !DISubprogram(name: "clearerr", scope: !3821, file: !3821, line: 231, type: !3980, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3985, line: 141)
!3985 = !DISubprogram(name: "feof", scope: !3821, file: !3821, line: 233, type: !3875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3987, line: 142)
!3987 = !DISubprogram(name: "ferror", scope: !3821, file: !3821, line: 234, type: !3875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3989, line: 143)
!3989 = !DISubprogram(name: "perror", scope: !3821, file: !3821, line: 258, type: !3990, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !307}
!3992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3993, line: 146)
!3993 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !3821, file: !3821, line: 242, type: !3994, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!3877, !307, !307}
!3996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3997, line: 147)
!3997 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !3821, file: !3821, line: 248, type: !3998, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!3877, !307, !307, !3877}
!4000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4001, line: 148)
!4001 = !DISubprogram(name: "remove", scope: !3821, file: !3821, line: 263, type: !3485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4003, line: 149)
!4003 = !DISubprogram(name: "rename", scope: !3821, file: !3821, line: 264, type: !3713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4005, line: 150)
!4005 = !DISubprogram(name: "tmpfile", scope: !3821, file: !3821, line: 271, type: !4006, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!3877}
!4008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4009, line: 151)
!4009 = !DISubprogram(name: "tmpnam", scope: !3821, file: !3821, line: 276, type: !4010, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!371, !371}
!4012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4013, line: 155)
!4013 = !DISubprogram(name: "getchar", scope: !3821, file: !3821, line: 256, type: !24, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4015, line: 157)
!4015 = !DISubprogram(name: "gets", scope: !3821, file: !3821, line: 257, type: !4010, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4017, line: 159)
!4017 = !DISubprogram(name: "scanf", scope: !3821, file: !3821, line: 266, type: !4018, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!26, !307, null}
!4020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4021, line: 160)
!4021 = !DISubprogram(name: "vscanf", scope: !3821, file: !3821, line: 423, type: !4022, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!26, !307, !3910}
!4024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4025, line: 164)
!4025 = !DISubprogram(name: "printf", scope: !3821, file: !3821, line: 259, type: !4018, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4027, line: 165)
!4027 = !DISubprogram(name: "putchar", scope: !3821, file: !3821, line: 261, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!26, !26}
!4030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4031, line: 166)
!4031 = !DISubprogram(name: "puts", scope: !3821, file: !3821, line: 262, type: !3485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4033, line: 167)
!4033 = !DISubprogram(name: "vprintf", scope: !3821, file: !3821, line: 279, type: !4022, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4035, line: 104)
!4035 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !4036, file: !4036, line: 212, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4036 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4038, line: 105)
!4038 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !4036, file: !4036, line: 218, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4040, line: 106)
!4040 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !4036, file: !4036, line: 224, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4042, line: 107)
!4042 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !4036, file: !4036, line: 230, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4044, line: 108)
!4044 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !4036, file: !4036, line: 237, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4046, line: 109)
!4046 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !4036, file: !4036, line: 243, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4048, line: 110)
!4048 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !4036, file: !4036, line: 249, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4050, line: 111)
!4050 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !4036, file: !4036, line: 255, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4052, line: 112)
!4052 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !4036, file: !4036, line: 261, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4054, line: 113)
!4054 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !4036, file: !4036, line: 267, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4056, line: 114)
!4056 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !4036, file: !4036, line: 273, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4058, line: 115)
!4058 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !4036, file: !4036, line: 280, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4060, line: 116)
!4060 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !4036, file: !4036, line: 292, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4062, line: 117)
!4062 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !4036, file: !4036, line: 298, type: !4028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4064, line: 63)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4065, line: 31, baseType: !4066)
!4065 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !87, line: 112, baseType: !26)
!4067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4068, line: 64)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !4069, line: 31, baseType: !4070)
!4069 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !4071, line: 40, baseType: !26)
!4071 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4073, line: 65)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !4074, line: 31, baseType: !4075)
!4074 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !4071, line: 42, baseType: !4076)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !87, line: 45, baseType: !30)
!4077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4078, line: 66)
!4078 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !4079, file: !4079, line: 66, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4079 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!26, !4064}
!4082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4083, line: 67)
!4083 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !4079, file: !4079, line: 72, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4085, line: 68)
!4085 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !4086, file: !4086, line: 50, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4086 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4088, line: 69)
!4088 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !4079, file: !4079, line: 78, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4090, line: 70)
!4090 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !4079, file: !4079, line: 90, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4092, line: 71)
!4092 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !4079, file: !4079, line: 96, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4094, line: 72)
!4094 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !4079, file: !4079, line: 102, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4096, line: 73)
!4096 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !4079, file: !4079, line: 108, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4098, line: 74)
!4098 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !4079, file: !4079, line: 114, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4100, line: 75)
!4100 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !4079, file: !4079, line: 120, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4102, line: 76)
!4102 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !4079, file: !4079, line: 126, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4104, line: 77)
!4104 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !4079, file: !4079, line: 132, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4106, line: 78)
!4106 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !4079, file: !4079, line: 84, type: !4107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!26, !4064, !4073}
!4109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4110, line: 79)
!4110 = !DISubprogram(name: "wctype", scope: !4079, file: !4079, line: 172, type: !4111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!4073, !307}
!4113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4114, line: 80)
!4114 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !4079, file: !4079, line: 138, type: !4115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!4064, !4064}
!4117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4118, line: 81)
!4118 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !4079, file: !4079, line: 144, type: !4115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4120, line: 82)
!4120 = !DISubprogram(name: "towctrans", scope: !4086, file: !4086, line: 121, type: !4121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!4064, !4064, !4068}
!4123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4124, line: 83)
!4124 = !DISubprogram(name: "wctrans", scope: !4086, file: !4086, line: 123, type: !4125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!4068, !307}
!4127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4128, line: 116)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !4129, line: 31, baseType: !4130)
!4129 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !87, line: 81, baseType: !4131)
!4131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !87, line: 79, baseType: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !87, line: 76, size: 1024, elements: !4133, identifier: "_ZTS11__mbstate_t")
!4133 = !{!4134, !4138}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !4132, file: !87, line: 77, baseType: !4135, size: 1024)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 1024, elements: !4136)
!4136 = !{!4137}
!4137 = !DISubrange(count: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !4132, file: !87, line: 78, baseType: !1500, size: 64)
!4139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 117)
!4140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3765, line: 118)
!4141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4064, line: 119)
!4142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3820, line: 120)
!4143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4144, line: 121)
!4144 = !DISubprogram(name: "fwprintf", scope: !4145, file: !4145, line: 103, type: !4146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4145 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!26, !3877, !3618, null}
!4148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4149, line: 122)
!4149 = !DISubprogram(name: "fwscanf", scope: !4145, file: !4145, line: 104, type: !4146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4151, line: 123)
!4151 = !DISubprogram(name: "swprintf", scope: !4145, file: !4145, line: 115, type: !4152, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!26, !3604, !84, !3618, null}
!4154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4155, line: 124)
!4155 = !DISubprogram(name: "vfwprintf", scope: !4145, file: !4145, line: 118, type: !4156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!26, !3877, !3618, !3910}
!4158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4159, line: 125)
!4159 = !DISubprogram(name: "vswprintf", scope: !4145, file: !4145, line: 120, type: !4160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!26, !3604, !84, !3618, !3910}
!4162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4163, line: 126)
!4163 = !DISubprogram(name: "swscanf", scope: !4145, file: !4145, line: 116, type: !4164, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!26, !3618, !3618, null}
!4166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4167, line: 127)
!4167 = !DISubprogram(name: "vfwscanf", scope: !4145, file: !4145, line: 170, type: !4156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4169, line: 128)
!4169 = !DISubprogram(name: "vswscanf", scope: !4145, file: !4145, line: 172, type: !4170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!26, !3618, !3618, !3910}
!4172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4173, line: 129)
!4173 = !DISubprogram(name: "fgetwc", scope: !4145, file: !4145, line: 98, type: !4174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!4064, !3877}
!4176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4177, line: 130)
!4177 = !DISubprogram(name: "fgetws", scope: !4145, file: !4145, line: 99, type: !4178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!3604, !3604, !26, !3877}
!4180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4181, line: 131)
!4181 = !DISubprogram(name: "fputwc", scope: !4145, file: !4145, line: 100, type: !4182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!4064, !3605, !3877}
!4184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4185, line: 132)
!4185 = !DISubprogram(name: "fputws", scope: !4145, file: !4145, line: 101, type: !4186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!26, !3618, !3877}
!4188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4189, line: 133)
!4189 = !DISubprogram(name: "fwide", scope: !4145, file: !4145, line: 102, type: !4190, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!26, !3877, !26}
!4192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4193, line: 134)
!4193 = !DISubprogram(name: "getwc", scope: !4145, file: !4145, line: 105, type: !4174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4195, line: 135)
!4195 = !DISubprogram(name: "putwc", scope: !4145, file: !4145, line: 113, type: !4182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4197, line: 136)
!4197 = !DISubprogram(name: "ungetwc", scope: !4145, file: !4145, line: 117, type: !4198, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!4064, !4064, !3877}
!4200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4201, line: 137)
!4201 = !DISubprogram(name: "wcstod", scope: !4145, file: !4145, line: 144, type: !4202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!1703, !3618, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!4205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4206, line: 138)
!4206 = !DISubprogram(name: "wcstof", scope: !4145, file: !4145, line: 175, type: !4207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!1699, !3618, !4204}
!4209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4210, line: 139)
!4210 = !DISubprogram(name: "wcstold", scope: !4145, file: !4145, line: 177, type: !4211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!1707, !3618, !4204}
!4213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4214, line: 140)
!4214 = !DISubprogram(name: "wcstol", scope: !4145, file: !4145, line: 147, type: !4215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!67, !3618, !4204, !26}
!4217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4218, line: 142)
!4218 = !DISubprogram(name: "wcstoll", scope: !4145, file: !4145, line: 180, type: !4219, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!1500, !3618, !4204, !26}
!4221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4222, line: 144)
!4222 = !DISubprogram(name: "wcstoul", scope: !4145, file: !4145, line: 149, type: !4223, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!88, !3618, !4204, !26}
!4225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4226, line: 146)
!4226 = !DISubprogram(name: "wcstoull", scope: !4145, file: !4145, line: 182, type: !4227, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!1695, !3618, !4204, !26}
!4229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4230, line: 148)
!4230 = !DISubprogram(name: "wcscpy", scope: !4145, file: !4145, line: 128, type: !4231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!3604, !3604, !3618}
!4233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4234, line: 149)
!4234 = !DISubprogram(name: "wcsncpy", scope: !4145, file: !4145, line: 135, type: !4235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!3604, !3604, !3618, !84}
!4237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4238, line: 150)
!4238 = !DISubprogram(name: "wcscat", scope: !4145, file: !4145, line: 124, type: !4231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4240, line: 151)
!4240 = !DISubprogram(name: "wcsncat", scope: !4145, file: !4145, line: 133, type: !4235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4242, line: 152)
!4242 = !DISubprogram(name: "wcscmp", scope: !4145, file: !4145, line: 126, type: !4243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!26, !3618, !3618}
!4245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4246, line: 153)
!4246 = !DISubprogram(name: "wcscoll", scope: !4145, file: !4145, line: 127, type: !4243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4248, line: 154)
!4248 = !DISubprogram(name: "wcsncmp", scope: !4145, file: !4145, line: 134, type: !4249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!26, !3618, !3618, !84}
!4251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4252, line: 155)
!4252 = !DISubprogram(name: "wcsxfrm", scope: !4145, file: !4145, line: 142, type: !4253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!84, !3604, !3618, !84}
!4255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4256, line: 156)
!4256 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !4257, file: !4257, line: 137, type: !4258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4257 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!3604, !3604, !3605}
!4260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4261, line: 157)
!4261 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !4257, file: !4257, line: 144, type: !4231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4263, line: 158)
!4263 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !4257, file: !4257, line: 151, type: !4258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4265, line: 159)
!4265 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !4257, file: !4257, line: 158, type: !4231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4267, line: 160)
!4267 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !4257, file: !4257, line: 165, type: !4268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!3604, !3604, !3605, !84}
!4270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4271, line: 161)
!4271 = !DISubprogram(name: "wcscspn", scope: !4145, file: !4145, line: 129, type: !4272, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!84, !3618, !3618}
!4274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4275, line: 162)
!4275 = !DISubprogram(name: "wcslen", scope: !4145, file: !4145, line: 132, type: !4276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!84, !3618}
!4278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4279, line: 163)
!4279 = !DISubprogram(name: "wcsspn", scope: !4145, file: !4145, line: 140, type: !4272, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4281, line: 164)
!4281 = !DISubprogram(name: "wcstok", scope: !4145, file: !4145, line: 145, type: !4282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!3604, !3604, !3618, !4204}
!4284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4285, line: 165)
!4285 = !DISubprogram(name: "wmemcmp", scope: !4145, file: !4145, line: 151, type: !4249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4287, line: 166)
!4287 = !DISubprogram(name: "wmemcpy", scope: !4145, file: !4145, line: 152, type: !4235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4289, line: 167)
!4289 = !DISubprogram(name: "wmemmove", scope: !4145, file: !4145, line: 153, type: !4235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4291, line: 168)
!4291 = !DISubprogram(name: "wmemset", scope: !4145, file: !4145, line: 154, type: !4268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4293, line: 169)
!4293 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !4145, file: !4145, line: 130, type: !4294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!84, !3604, !84, !3618, !3801}
!4296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4297, line: 170)
!4297 = !DISubprogram(name: "btowc", scope: !4145, file: !4145, line: 97, type: !4298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!4064, !26}
!4300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4301, line: 171)
!4301 = !DISubprogram(name: "wctob", scope: !4145, file: !4145, line: 143, type: !4080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4303, line: 172)
!4303 = !DISubprogram(name: "mbsinit", scope: !4145, file: !4145, line: 110, type: !4304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!26, !4306}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4309, line: 173)
!4309 = !DISubprogram(name: "mbrlen", scope: !4145, file: !4145, line: 107, type: !4310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!84, !307, !84, !4312}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4314, line: 174)
!4314 = !DISubprogram(name: "mbrtowc", scope: !4145, file: !4145, line: 108, type: !4315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!84, !3604, !307, !84, !4312}
!4317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4318, line: 175)
!4318 = !DISubprogram(name: "wcrtomb", scope: !4145, file: !4145, line: 123, type: !4319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!84, !371, !3605, !4312}
!4321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4322, line: 176)
!4322 = !DISubprogram(name: "mbsrtowcs", scope: !4145, file: !4145, line: 111, type: !4323, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!84, !3604, !4325, !84, !4312}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4327, line: 177)
!4327 = !DISubprogram(name: "wcsrtombs", scope: !4145, file: !4145, line: 138, type: !4328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!84, !371, !4330, !84, !4312}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!4331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4332, line: 180)
!4332 = !DISubprogram(name: "getwchar", scope: !4145, file: !4145, line: 106, type: !4333, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!4064}
!4335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4336, line: 181)
!4336 = !DISubprogram(name: "vwscanf", scope: !4145, file: !4145, line: 174, type: !4337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!26, !3618, !3910}
!4339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4340, line: 182)
!4340 = !DISubprogram(name: "wscanf", scope: !4145, file: !4145, line: 156, type: !4341, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!26, !3618, null}
!4343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4344, line: 186)
!4344 = !DISubprogram(name: "putwchar", scope: !4145, file: !4145, line: 114, type: !4345, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!4064, !3605}
!4347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4348, line: 187)
!4348 = !DISubprogram(name: "vwprintf", scope: !4145, file: !4145, line: 122, type: !4337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4350, line: 188)
!4350 = !DISubprogram(name: "wprintf", scope: !4145, file: !4145, line: 155, type: !4341, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4351 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !1904, line: 8)
!4352 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !1904, line: 13)
!4353 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !9, line: 11)
!4354 = !{i32 2, !"Dwarf Version", i32 2}
!4355 = !{i32 2, !"Debug Info Version", i32 3}
!4356 = !{i32 1, !"PIC Level", i32 2}
!4357 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!4358 = distinct !DISubprogram(name: "r", linkageName: "_Z1rv", scope: !3, file: !3, line: 13, type: !2748, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4359)
!4359 = !{!4360, !4361}
!4360 = !DILocalVariable(name: "r1", scope: !4358, file: !3, line: 17, type: !26)
!4361 = !DILocalVariable(name: "r2", scope: !4358, file: !3, line: 18, type: !26)
!4362 = !DILocation(line: 15, column: 5, scope: !4358)
!4363 = !DILocalVariable(name: "__o", arg: 1, scope: !4364, file: !6, line: 1267, type: !4367)
!4364 = distinct !DISubprogram(name: "atomic_load_explicit<int>", linkageName: "_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE", scope: !7, file: !6, line: 1267, type: !4365, isLocal: false, isDefinition: true, scopeLine: 1269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !243, variables: !4369)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!26, !4367, !117}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!4369 = !{!4363, !4370}
!4370 = !DILocalVariable(name: "__m", arg: 2, scope: !4364, file: !6, line: 1267, type: !117)
!4371 = !DIExpression()
!4372 = !DILocation(line: 1267, column: 41, scope: !4364, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 17, column: 12, scope: !4358)
!4374 = !DILocation(line: 1267, column: 59, scope: !4364, inlinedAt: !4373)
!4375 = !DILocalVariable(name: "__m", arg: 2, scope: !4376, file: !6, line: 924, type: !117)
!4376 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !97, file: !6, line: 924, type: !126, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !125, variables: !4377)
!4377 = !{!4378, !4375}
!4378 = !DILocalVariable(name: "this", arg: 1, scope: !4376, type: !4379, flags: DIFlagArtificial | DIFlagObjectPointer)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!4380 = !DILocation(line: 924, column: 27, scope: !4376, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 1270, column: 17, scope: !4364, inlinedAt: !4373)
!4382 = !DILocation(line: 17, column: 9, scope: !4358)
!4383 = !DILocation(line: 1267, column: 41, scope: !4364, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 18, column: 9, scope: !4358)
!4385 = !DILocation(line: 1267, column: 59, scope: !4364, inlinedAt: !4384)
!4386 = !DILocation(line: 924, column: 27, scope: !4376, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 1270, column: 17, scope: !4364, inlinedAt: !4384)
!4388 = !DILocation(line: 18, column: 6, scope: !4358)
!4389 = !DILocation(line: 21, column: 2, scope: !4358)
!4390 = !DILocation(line: 22, column: 2, scope: !4358)
!4391 = !DILocation(line: 24, column: 5, scope: !4358)
!4392 = !DILocation(line: 25, column: 1, scope: !4358)
!4393 = distinct !DISubprogram(name: "s", linkageName: "_Z1sv", scope: !3, file: !3, line: 27, type: !2748, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !357)
!4394 = !DILocation(line: 29, column: 5, scope: !4393)
!4395 = !DILocalVariable(name: "__o", arg: 1, scope: !4396, file: !6, line: 1229, type: !4399)
!4396 = distinct !DISubprogram(name: "atomic_store_explicit<int>", linkageName: "_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE", scope: !7, file: !6, line: 1229, type: !4397, isLocal: false, isDefinition: true, scopeLine: 1231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !243, variables: !4400)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !4399, !26, !117}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!4400 = !{!4395, !4401, !4402}
!4401 = !DILocalVariable(name: "__d", arg: 2, scope: !4396, file: !6, line: 1229, type: !26)
!4402 = !DILocalVariable(name: "__m", arg: 3, scope: !4396, file: !6, line: 1229, type: !117)
!4403 = !DILocation(line: 1229, column: 36, scope: !4396, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 34, column: 5, scope: !4393)
!4405 = !DILocation(line: 1229, column: 45, scope: !4396, inlinedAt: !4404)
!4406 = !DILocation(line: 1229, column: 63, scope: !4396, inlinedAt: !4404)
!4407 = !DILocalVariable(name: "__d", arg: 2, scope: !4408, file: !6, line: 916, type: !26)
!4408 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !97, file: !6, line: 916, type: !119, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !118, variables: !4409)
!4409 = !{!4410, !4407, !4412}
!4410 = !DILocalVariable(name: "this", arg: 1, scope: !4408, type: !4411, flags: DIFlagArtificial | DIFlagObjectPointer)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!4412 = !DILocalVariable(name: "__m", arg: 3, scope: !4408, file: !6, line: 916, type: !117)
!4413 = !DILocation(line: 916, column: 20, scope: !4408, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 1232, column: 10, scope: !4396, inlinedAt: !4404)
!4415 = !DILocation(line: 916, column: 38, scope: !4408, inlinedAt: !4414)
!4416 = !DILocation(line: 918, column: 10, scope: !4417, inlinedAt: !4414)
!4417 = !DILexicalBlockFile(scope: !4408, file: !6, discriminator: 1)
!4418 = !DILocation(line: 37, column: 5, scope: !4393)
!4419 = !DILocation(line: 38, column: 1, scope: !4393)
!4420 = distinct !DISubprogram(name: "user_main", linkageName: "_Z9user_mainiPPc", scope: !3, file: !3, line: 40, type: !4421, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!26, !26, !3499}
!4423 = !{!4424, !4425, !4426, !4502}
!4424 = !DILocalVariable(name: "argc", arg: 1, scope: !4420, file: !3, line: 40, type: !26)
!4425 = !DILocalVariable(name: "argv", arg: 2, scope: !4420, file: !3, line: 40, type: !3499)
!4426 = !DILocalVariable(name: "t1", scope: !4420, file: !3, line: 48, type: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !7, file: !2190, line: 282, size: 64, elements: !4428, identifier: "_ZTSNSt3__16threadE")
!4428 = !{!4429, !4450, !4456, !4460, !4463, !4464, !4468, !4471, !4474, !4478, !4479, !4480, !4495, !4499}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !4427, file: !2190, line: 284, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !7, file: !2218, line: 72, baseType: !4431)
!4431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !4432, line: 30, baseType: !4433)
!4432 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !2222, line: 118, baseType: !4434)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !2222, line: 103, size: 65536, elements: !4436, identifier: "_ZTS17_opaque_pthread_t")
!4436 = !{!4437, !4438, !4446}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !4435, file: !2222, line: 104, baseType: !67, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !4435, file: !2222, line: 105, baseType: !4439, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !2222, line: 57, size: 192, elements: !4441, identifier: "_ZTS28__darwin_pthread_handler_rec")
!4441 = !{!4442, !4444, !4445}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !4440, file: !2222, line: 58, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !4440, file: !2222, line: 59, baseType: !72, size: 64, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !4440, file: !2222, line: 60, baseType: !4439, size: 64, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !4435, file: !2222, line: 106, baseType: !4447, size: 65408, offset: 128)
!4447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 65408, elements: !4448)
!4448 = !{!4449}
!4449 = !DISubrange(count: 8176)
!4450 = !DISubprogram(name: "thread", scope: !4427, file: !2190, line: 286, type: !4451, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{null, !4453, !4454}
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4454 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4456 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !4427, file: !2190, line: 287, type: !4457, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!4459, !4453, !4454}
!4459 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4427, size: 64)
!4460 = !DISubprogram(name: "thread", scope: !4427, file: !2190, line: 293, type: !4461, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{null, !4453}
!4463 = !DISubprogram(name: "~thread", scope: !4427, file: !2190, line: 308, type: !4461, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4464 = !DISubprogram(name: "thread", scope: !4427, file: !2190, line: 312, type: !4465, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !4453, !4467}
!4467 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4427, size: 64)
!4468 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !4427, file: !2190, line: 314, type: !4469, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!4459, !4453, !4467}
!4471 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !4427, file: !2190, line: 318, type: !4472, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !4453, !4459}
!4474 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !4427, file: !2190, line: 321, type: !4475, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!104, !4477}
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4478 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !4427, file: !2190, line: 322, type: !4461, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4479 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !4427, file: !2190, line: 323, type: !4461, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4480 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !4427, file: !2190, line: 325, type: !4481, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!4483, !4477}
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !4427, file: !2190, line: 289, baseType: !4484)
!4484 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !7, file: !2190, line: 213, size: 64, elements: !4485, identifier: "_ZTSNSt3__111__thread_idE")
!4485 = !{!4486, !4488, !4492}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !4484, file: !2190, line: 218, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !7, file: !2218, line: 67, baseType: !4431)
!4488 = !DISubprogram(name: "__thread_id", scope: !4484, file: !2190, line: 222, type: !4489, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4492 = !DISubprogram(name: "__thread_id", scope: !4484, file: !2190, line: 252, type: !4493, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4491, !4487}
!4495 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !4427, file: !2190, line: 327, type: !4496, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!4498, !4453}
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !4427, file: !2190, line: 290, baseType: !4430)
!4499 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !4427, file: !2190, line: 329, type: !4500, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!30}
!4502 = !DILocalVariable(name: "t2", scope: !4420, file: !3, line: 49, type: !4427)
!4503 = !DILocation(line: 40, column: 19, scope: !4420)
!4504 = !DILocation(line: 40, column: 32, scope: !4420)
!4505 = !DILocation(line: 42, column: 5, scope: !4420)
!4506 = !DILocation(line: 43, column: 5, scope: !4420)
!4507 = !DILocalVariable(name: "this", arg: 1, scope: !4508, type: !4399, flags: DIFlagArtificial | DIFlagObjectPointer)
!4508 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !91, file: !6, line: 1097, type: !241, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !240, variables: !4509)
!4509 = !{!4507, !4510}
!4510 = !DILocalVariable(name: "__d", arg: 2, scope: !4508, file: !6, line: 1097, type: !26)
!4511 = !DILocation(line: 0, scope: !4508, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 45, column: 7, scope: !4420)
!4513 = !DILocation(line: 1097, column: 23, scope: !4508, inlinedAt: !4512)
!4514 = !DILocation(line: 916, column: 20, scope: !4408, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 1098, column: 18, scope: !4508, inlinedAt: !4512)
!4516 = !DILocation(line: 916, column: 38, scope: !4408, inlinedAt: !4515)
!4517 = !DILocation(line: 918, column: 10, scope: !4518, inlinedAt: !4515)
!4518 = !DILexicalBlockFile(scope: !4408, file: !6, discriminator: 3)
!4519 = !DILocation(line: 0, scope: !4508, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 45, column: 14, scope: !4521)
!4521 = !DILexicalBlockFile(scope: !4420, file: !3, discriminator: 1)
!4522 = !DILocation(line: 1097, column: 23, scope: !4508, inlinedAt: !4520)
!4523 = !DILocation(line: 916, column: 20, scope: !4408, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 1098, column: 18, scope: !4508, inlinedAt: !4520)
!4525 = !DILocation(line: 916, column: 38, scope: !4408, inlinedAt: !4524)
!4526 = !DILocation(line: 918, column: 10, scope: !4518, inlinedAt: !4524)
!4527 = !DILocation(line: 47, column: 5, scope: !4420)
!4528 = !DILocation(line: 48, column: 5, scope: !4420)
!4529 = !DIExpression(DW_OP_deref)
!4530 = !DILocation(line: 48, column: 17, scope: !4420)
!4531 = !DILocalVariable(name: "this", arg: 1, scope: !4532, type: !4543, flags: DIFlagArtificial | DIFlagObjectPointer)
!4532 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !4427, file: !2190, line: 356, type: !4533, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4536, declaration: !4540, variables: !4541)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{null, !4453, !4535}
!4535 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2748, size: 64)
!4536 = !{!4537, !4538, !4539}
!4537 = !DITemplateTypeParameter(name: "_Fp", type: !4535)
!4538 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !357)
!4539 = !DITemplateTypeParameter(type: null)
!4540 = !DISubprogram(name: "thread<void (&)(), void>", scope: !4427, file: !2190, line: 356, type: !4533, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !4536)
!4541 = !{!4531, !4542}
!4542 = !DILocalVariable(name: "__f", arg: 2, scope: !4532, file: !2190, line: 356, type: !4535)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4544 = !DILocation(line: 0, scope: !4532, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 48, column: 17, scope: !4420)
!4546 = !DILocation(line: 356, column: 22, scope: !4532, inlinedAt: !4545)
!4547 = !DILocation(line: 357, column: 1, scope: !4532, inlinedAt: !4545)
!4548 = !DILocation(line: 49, column: 5, scope: !4420)
!4549 = !DILocation(line: 0, scope: !4532, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 49, column: 17, scope: !4420)
!4551 = !DILocation(line: 356, column: 22, scope: !4532, inlinedAt: !4550)
!4552 = !DILocation(line: 357, column: 1, scope: !4532, inlinedAt: !4550)
!4553 = !DILocalVariable(name: "this", arg: 1, scope: !4554, type: !4556, flags: DIFlagArtificial | DIFlagObjectPointer)
!4554 = distinct !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !4427, file: !2190, line: 325, type: !4481, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4480, variables: !4555)
!4555 = !{!4553}
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4557 = !DILocation(line: 0, scope: !4554, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 51, column: 30, scope: !4420)
!4559 = !DILocation(line: 325, column: 65, scope: !4554, inlinedAt: !4558)
!4560 = !DILocalVariable(name: "__t", arg: 1, scope: !4561, file: !2218, line: 332, type: !4564)
!4561 = distinct !DISubprogram(name: "__libcpp_thread_get_id", linkageName: "_ZNSt3__122__libcpp_thread_get_idEPKP17_opaque_pthread_t", scope: !7, file: !2218, line: 332, type: !4562, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4566)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!4487, !4564}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4430)
!4566 = !{!4560}
!4567 = !DILocation(line: 332, column: 68, scope: !4561, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 325, column: 41, scope: !4554, inlinedAt: !4558)
!4569 = !DILocation(line: 334, column: 10, scope: !4561, inlinedAt: !4568)
!4570 = !{!4571, !4571, i64 0}
!4571 = !{!"any pointer", !4572, i64 0}
!4572 = !{!"omnipotent char", !4573, i64 0}
!4573 = !{!"Simple C++ TBAA"}
!4574 = !DILocation(line: 51, column: 5, scope: !4420)
!4575 = !DILocation(line: 49, column: 17, scope: !4420)
!4576 = !DILocation(line: 0, scope: !4554, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 52, column: 30, scope: !4420)
!4578 = !DILocation(line: 325, column: 65, scope: !4554, inlinedAt: !4577)
!4579 = !DILocation(line: 332, column: 68, scope: !4561, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 325, column: 41, scope: !4554, inlinedAt: !4577)
!4581 = !DILocation(line: 334, column: 10, scope: !4561, inlinedAt: !4580)
!4582 = !DILocation(line: 52, column: 5, scope: !4420)
!4583 = !DILocation(line: 0, scope: !4554, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 54, column: 28, scope: !4420)
!4585 = !DILocation(line: 332, column: 68, scope: !4561, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 325, column: 41, scope: !4554, inlinedAt: !4584)
!4587 = !DILocation(line: 334, column: 10, scope: !4561, inlinedAt: !4586)
!4588 = !DILocation(line: 54, column: 5, scope: !4420)
!4589 = !DILocation(line: 0, scope: !4554, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 55, column: 28, scope: !4420)
!4591 = !DILocation(line: 332, column: 68, scope: !4561, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 325, column: 41, scope: !4554, inlinedAt: !4590)
!4593 = !DILocation(line: 334, column: 10, scope: !4561, inlinedAt: !4592)
!4594 = !DILocation(line: 55, column: 5, scope: !4420)
!4595 = !DILocation(line: 57, column: 8, scope: !4420)
!4596 = !DILocation(line: 58, column: 8, scope: !4420)
!4597 = !DILocation(line: 60, column: 2, scope: !4420)
!4598 = !DILocation(line: 62, column: 5, scope: !4420)
!4599 = !DILocation(line: 63, column: 5, scope: !4420)
!4600 = !DILocation(line: 66, column: 1, scope: !4420)
!4601 = !DILocation(line: 66, column: 1, scope: !4602)
!4602 = !DILexicalBlockFile(scope: !4420, file: !3, discriminator: 5)
!4603 = !DILocation(line: 66, column: 1, scope: !4521)
!4604 = !DILocation(line: 66, column: 1, scope: !4605)
!4605 = !DILexicalBlockFile(scope: !4420, file: !3, discriminator: 2)
!4606 = !DILocation(line: 66, column: 1, scope: !4607)
!4607 = !DILexicalBlockFile(scope: !4420, file: !3, discriminator: 3)
!4608 = !DILocation(line: 66, column: 1, scope: !4609)
!4609 = !DILexicalBlockFile(scope: !4420, file: !3, discriminator: 4)
!4610 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !4421, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4611)
!4611 = !{!4612, !4613}
!4612 = !DILocalVariable(name: "argc", arg: 1, scope: !4610, file: !3, line: 68, type: !26)
!4613 = !DILocalVariable(name: "argv", arg: 2, scope: !4610, file: !3, line: 68, type: !3499)
!4614 = !DILocation(line: 68, column: 14, scope: !4610)
!4615 = !DILocation(line: 68, column: 27, scope: !4610)
!4616 = !DILocation(line: 69, column: 20, scope: !4610)
!4617 = !DILocation(line: 17, column: 9, scope: !4618, inlinedAt: !4646)
!4618 = distinct !DISubprogram(name: "ModelChecker", linkageName: "_ZN7checker12ModelCheckerC2Ev", scope: !4619, file: !1903, line: 17, type: !4627, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4626, variables: !4643)
!4619 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ModelChecker", scope: !1904, file: !1903, line: 15, size: 320, elements: !4620, identifier: "_ZTSN7checker12ModelCheckerE")
!4620 = !{!4621, !4622, !4623, !4626, !4630, !4633, !4636, !4639, !4642}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4619, file: !1903, line: 29, baseType: !26, size: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "schList", scope: !4619, file: !1903, line: 30, baseType: !2870, size: 192, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "exe", scope: !4619, file: !1903, line: 31, baseType: !4624, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !1904, file: !1903, line: 12, flags: DIFlagFwdDecl, identifier: "_ZTSN7checker8ExecutorE")
!4626 = !DISubprogram(name: "ModelChecker", scope: !4619, file: !1903, line: 17, type: !4627, isLocal: false, isDefinition: false, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !4629}
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4630 = !DISubprogram(name: "setExecutor", linkageName: "_ZN7checker12ModelChecker11setExecutorEPNS_8ExecutorE", scope: !4619, file: !1903, line: 22, type: !4631, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{null, !4629, !4624}
!4633 = !DISubprogram(name: "getTest", linkageName: "_ZN7checker12ModelChecker7getTestEv", scope: !4619, file: !1903, line: 23, type: !4634, isLocal: false, isDefinition: false, scopeLine: 23, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!26, !4629}
!4636 = !DISubprogram(name: "addSch", linkageName: "_ZN7checker12ModelChecker6addSchEPNS_8ScheduleE", scope: !4619, file: !1903, line: 24, type: !4637, isLocal: false, isDefinition: false, scopeLine: 24, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4629, !1901}
!4639 = !DISubprogram(name: "getSchList", linkageName: "_ZN7checker12ModelChecker10getSchListEv", scope: !4619, file: !1903, line: 25, type: !4640, isLocal: false, isDefinition: false, scopeLine: 25, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!2870, !4629}
!4642 = !DISubprogram(name: "eraseSch", linkageName: "_ZN7checker12ModelChecker8eraseSchEv", scope: !4619, file: !1903, line: 26, type: !4627, isLocal: false, isDefinition: false, scopeLine: 26, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4643 = !{!4644}
!4644 = !DILocalVariable(name: "this", arg: 1, scope: !4618, type: !4645, flags: DIFlagArtificial | DIFlagObjectPointer)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4646 = distinct !DILocation(line: 17, column: 24, scope: !4647, inlinedAt: !4650)
!4647 = distinct !DISubprogram(name: "ModelChecker", linkageName: "_ZN7checker12ModelCheckerC1Ev", scope: !4619, file: !1903, line: 17, type: !4627, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4626, variables: !4648)
!4648 = !{!4649}
!4649 = !DILocalVariable(name: "this", arg: 1, scope: !4647, type: !4645, flags: DIFlagArtificial | DIFlagObjectPointer)
!4650 = distinct !DILocation(line: 69, column: 24, scope: !4610)
!4651 = !DILocation(line: 427, column: 7, scope: !4652, inlinedAt: !4656)
!4652 = distinct !DISubprogram(name: "__vector_base", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEC2Ev", scope: !1930, file: !1929, line: 424, type: !2115, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2114, variables: !4653)
!4653 = !{!4654}
!4654 = !DILocalVariable(name: "this", arg: 1, scope: !4652, type: !4655, flags: DIFlagArtificial | DIFlagObjectPointer)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!4656 = distinct !DILocation(line: 478, column: 5, scope: !4657, inlinedAt: !4661)
!4657 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC2Ev", scope: !2870, file: !1929, line: 478, type: !2874, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2873, variables: !4658)
!4658 = !{!4659}
!4659 = !DILocalVariable(name: "this", arg: 1, scope: !4657, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!4661 = distinct !DILocation(line: 479, column: 9, scope: !4662, inlinedAt: !4665)
!4662 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC1Ev", scope: !2870, file: !1929, line: 478, type: !2874, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2873, variables: !4663)
!4663 = !{!4664}
!4664 = !DILocalVariable(name: "this", arg: 1, scope: !4662, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4665 = distinct !DILocation(line: 17, column: 9, scope: !4618, inlinedAt: !4646)
!4666 = !DILocation(line: 18, column: 13, scope: !4667, inlinedAt: !4646)
!4667 = distinct !DILexicalBlock(scope: !4618, file: !1903, line: 17, column: 24)
!4668 = !DILocation(line: 18, column: 18, scope: !4667, inlinedAt: !4646)
!4669 = !{!4670, !4671, i64 0}
!4670 = !{!"_ZTSN7checker12ModelCheckerE", !4671, i64 0, !4672, i64 8, !4571, i64 32}
!4671 = !{!"int", !4572, i64 0}
!4672 = !{!"_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!4673 = !DILocalVariable(name: "__os", arg: 1, scope: !4674, file: !1423, line: 862, type: !1427)
!4674 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc", scope: !7, file: !1423, line: 862, type: !4675, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4677, variables: !4678)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!1427, !1427, !307}
!4677 = !{!775}
!4678 = !{!4673, !4679}
!4679 = !DILocalVariable(name: "__str", arg: 2, scope: !4674, file: !1423, line: 862, type: !307)
!4680 = !DILocation(line: 862, column: 42, scope: !4674, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 19, column: 23, scope: !4667, inlinedAt: !4646)
!4682 = !DILocation(line: 862, column: 60, scope: !4674, inlinedAt: !4681)
!4683 = !DILocation(line: 864, column: 12, scope: !4684, inlinedAt: !4681)
!4684 = !DILexicalBlockFile(scope: !4674, file: !1423, discriminator: 1)
!4685 = !DILocation(line: 19, column: 55, scope: !4686, inlinedAt: !4646)
!4686 = !DILexicalBlockFile(scope: !4667, file: !1903, discriminator: 1)
!4687 = !DILocation(line: 862, column: 42, scope: !4674, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 19, column: 63, scope: !4689, inlinedAt: !4646)
!4689 = !DILexicalBlockFile(scope: !4667, file: !1903, discriminator: 2)
!4690 = !DILocation(line: 862, column: 60, scope: !4674, inlinedAt: !4688)
!4691 = !DILocation(line: 864, column: 12, scope: !4684, inlinedAt: !4688)
!4692 = !DILocation(line: 20, column: 9, scope: !4686, inlinedAt: !4646)
!4693 = !DILocation(line: 444, column: 9, scope: !4694, inlinedAt: !4699)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !1929, line: 444, column: 9)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !1929, line: 443, column: 1)
!4696 = distinct !DISubprogram(name: "~__vector_base", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev", scope: !1930, file: !1929, line: 442, type: !2115, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2120, variables: !4697)
!4697 = !{!4698}
!4698 = !DILocalVariable(name: "this", arg: 1, scope: !4696, type: !4655, flags: DIFlagArtificial | DIFlagObjectPointer)
!4699 = distinct !DILocation(line: 452, column: 28, scope: !4700, inlinedAt: !4705)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !1929, line: 452, column: 28)
!4701 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev", scope: !2870, file: !1929, line: 452, type: !2874, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4702, variables: !4703)
!4702 = !DISubprogram(name: "~vector", scope: !2870, type: !2874, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!4703 = !{!4704}
!4704 = !DILocalVariable(name: "this", arg: 1, scope: !4701, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4705 = distinct !DILocation(line: 452, column: 28, scope: !4706, inlinedAt: !4709)
!4706 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev", scope: !2870, file: !1929, line: 452, type: !2874, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4702, variables: !4707)
!4707 = !{!4708}
!4708 = !DILocalVariable(name: "this", arg: 1, scope: !4706, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4709 = distinct !DILocation(line: 20, column: 9, scope: !4686, inlinedAt: !4646)
!4710 = !{!4711, !4571, i64 0}
!4711 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !4571, i64 0, !4571, i64 8, !4712, i64 16}
!4712 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!4713 = !DILocation(line: 444, column: 18, scope: !4694, inlinedAt: !4699)
!4714 = !DILocation(line: 444, column: 9, scope: !4695, inlinedAt: !4699)
!4715 = !DILocation(line: 416, column: 32, scope: !4716, inlinedAt: !4721)
!4716 = distinct !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !1930, file: !1929, line: 414, type: !2126, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2125, variables: !4717)
!4717 = !{!4718, !4719, !4720}
!4718 = !DILocalVariable(name: "this", arg: 1, scope: !4716, type: !4655, flags: DIFlagArtificial | DIFlagObjectPointer)
!4719 = !DILocalVariable(name: "__new_last", arg: 2, scope: !4716, file: !1929, line: 367, type: !1946)
!4720 = !DILocalVariable(name: "__soon_to_be_end", scope: !4716, file: !1929, line: 416, type: !1946)
!4721 = distinct !DILocation(line: 361, column: 29, scope: !4722, inlinedAt: !4725)
!4722 = distinct !DISubprogram(name: "clear", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv", scope: !1930, file: !1929, line: 361, type: !2115, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2121, variables: !4723)
!4723 = !{!4724}
!4724 = !DILocalVariable(name: "this", arg: 1, scope: !4722, type: !4655, flags: DIFlagArtificial | DIFlagObjectPointer)
!4725 = distinct !DILocation(line: 446, column: 9, scope: !4726, inlinedAt: !4699)
!4726 = distinct !DILexicalBlock(scope: !4694, file: !1929, line: 445, column: 5)
!4727 = !DILocation(line: 419, column: 12, scope: !4716, inlinedAt: !4721)
!4728 = !{!4711, !4571, i64 8}
!4729 = !DILocation(line: 447, column: 47, scope: !4726, inlinedAt: !4699)
!4730 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4731, file: !4732, line: 230, type: !72)
!4731 = distinct !DISubprogram(name: "__libcpp_deallocate", linkageName: "_ZNSt3__119__libcpp_deallocateEPv", scope: !7, file: !4732, line: 230, type: !3536, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4733)
!4732 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/new", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!4733 = !{!4730}
!4734 = !DILocation(line: 230, column: 65, scope: !4731, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 1789, column: 10, scope: !4736, inlinedAt: !4742)
!4736 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE10deallocateEPS3_m", scope: !1888, file: !332, line: 1788, type: !1917, isLocal: false, isDefinition: true, scopeLine: 1789, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1916, variables: !4737)
!4737 = !{!4738, !4740, !4741}
!4738 = !DILocalVariable(name: "this", arg: 1, scope: !4736, type: !4739, flags: DIFlagArtificial | DIFlagObjectPointer)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!4740 = !DILocalVariable(name: "__p", arg: 2, scope: !4736, file: !332, line: 1788, type: !1887)
!4741 = !DILocalVariable(arg: 3, scope: !4736, file: !332, line: 1788, type: !385)
!4742 = distinct !DILocation(line: 1549, column: 14, scope: !4743, inlinedAt: !4748)
!4743 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10deallocateERS5_PS4_m", scope: !1948, file: !332, line: 1548, type: !1985, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1984, variables: !4744)
!4744 = !{!4745, !4746, !4747}
!4745 = !DILocalVariable(name: "__a", arg: 1, scope: !4743, file: !332, line: 1548, type: !1953)
!4746 = !DILocalVariable(name: "__p", arg: 2, scope: !4743, file: !332, line: 1548, type: !1947)
!4747 = !DILocalVariable(name: "__n", arg: 3, scope: !4743, file: !332, line: 1548, type: !1955)
!4748 = distinct !DILocation(line: 447, column: 9, scope: !4749, inlinedAt: !4699)
!4749 = !DILexicalBlockFile(scope: !4726, file: !1929, discriminator: 2)
!4750 = !DILocation(line: 234, column: 3, scope: !4731, inlinedAt: !4735)
!4751 = !DILocation(line: 448, column: 5, scope: !4726, inlinedAt: !4699)
!4752 = !DILocation(line: 69, column: 18, scope: !4753)
!4753 = !DILexicalBlockFile(scope: !4610, file: !3, discriminator: 1)
!4754 = !DILocation(line: 70, column: 5, scope: !4610)
!4755 = !DILocation(line: 72, column: 12, scope: !4610)
!4756 = !DILocation(line: 72, column: 12, scope: !4753)
!4757 = !DILocalVariable(name: "this", arg: 1, scope: !4758, type: !4645, flags: DIFlagArtificial | DIFlagObjectPointer)
!4758 = distinct !DISubprogram(name: "getSchList", linkageName: "_ZN7checker12ModelChecker10getSchListEv", scope: !4619, file: !1903, line: 25, type: !4640, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4639, variables: !4759)
!4759 = !{!4757}
!4760 = !DILocation(line: 0, scope: !4758, inlinedAt: !4761)
!4761 = distinct !DILocation(line: 72, column: 26, scope: !4753)
!4762 = !DILocation(line: 25, column: 54, scope: !4758, inlinedAt: !4761)
!4763 = !DILocalVariable(name: "this", arg: 1, scope: !4764, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4764 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC1ERKS6_", scope: !2870, file: !1929, line: 1197, type: !2898, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2897, variables: !4765)
!4765 = !{!4763, !4766}
!4766 = !DILocalVariable(name: "__x", arg: 2, scope: !4764, file: !1929, line: 539, type: !2900)
!4767 = !DILocation(line: 0, scope: !4764, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 25, column: 54, scope: !4758, inlinedAt: !4761)
!4769 = !DILocation(line: 539, column: 26, scope: !4764, inlinedAt: !4768)
!4770 = !DILocalVariable(name: "this", arg: 1, scope: !4771, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4771 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC2ERKS6_", scope: !2870, file: !1929, line: 1197, type: !2898, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2897, variables: !4772)
!4772 = !{!4770, !4773, !4774}
!4773 = !DILocalVariable(name: "__x", arg: 2, scope: !4771, file: !1929, line: 539, type: !2900)
!4774 = !DILocalVariable(name: "__n", scope: !4775, file: !1929, line: 1203, type: !2869)
!4775 = distinct !DILexicalBlock(scope: !4771, file: !1929, line: 1199, column: 1)
!4776 = !DILocation(line: 0, scope: !4771, inlinedAt: !4777)
!4777 = distinct !DILocation(line: 1199, column: 1, scope: !4764, inlinedAt: !4768)
!4778 = !DILocation(line: 539, column: 26, scope: !4771, inlinedAt: !4777)
!4779 = !DILocalVariable(name: "__a", arg: 2, scope: !4780, file: !1929, line: 357, type: !2101)
!4780 = distinct !DISubprogram(name: "__vector_base", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEC2ERKS5_", scope: !1930, file: !1929, line: 434, type: !2118, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2117, variables: !4781)
!4781 = !{!4782, !4779}
!4782 = !DILocalVariable(name: "this", arg: 1, scope: !4780, type: !4655, flags: DIFlagArtificial | DIFlagObjectPointer)
!4783 = !DILocation(line: 357, column: 67, scope: !4780, inlinedAt: !4784)
!4784 = distinct !DILocation(line: 1198, column: 7, scope: !4785, inlinedAt: !4777)
!4785 = !DILexicalBlockFile(scope: !4771, file: !1929, discriminator: 2)
!4786 = !DILocation(line: 436, column: 7, scope: !4780, inlinedAt: !4784)
!4787 = !{!4788}
!4788 = distinct !{!4788, !4789, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!4789 = distinct !{!4789, !"_ZN7checker12ModelChecker10getSchListEv"}
!4790 = !DILocalVariable(name: "this", arg: 1, scope: !4791, type: !4793, flags: DIFlagArtificial | DIFlagObjectPointer)
!4791 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4sizeEv", scope: !2870, file: !1929, line: 637, type: !3085, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3084, variables: !4792)
!4792 = !{!4790}
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!4794 = !DILocation(line: 0, scope: !4791, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 1203, column: 25, scope: !4775, inlinedAt: !4777)
!4796 = !DILocation(line: 638, column: 46, scope: !4791, inlinedAt: !4795)
!4797 = !DILocation(line: 638, column: 61, scope: !4791, inlinedAt: !4795)
!4798 = !DILocation(line: 638, column: 53, scope: !4791, inlinedAt: !4795)
!4799 = !DILocation(line: 1203, column: 15, scope: !4775, inlinedAt: !4777)
!4800 = !DILocation(line: 1204, column: 13, scope: !4801, inlinedAt: !4777)
!4801 = distinct !DILexicalBlock(scope: !4775, file: !1929, line: 1204, column: 9)
!4802 = !DILocation(line: 1204, column: 9, scope: !4775, inlinedAt: !4777)
!4803 = !DILocation(line: 0, scope: !4804, inlinedAt: !4808)
!4804 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8allocateEm", scope: !2870, file: !1929, line: 927, type: !2884, isLocal: false, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3161, variables: !4805)
!4805 = !{!4806, !4807}
!4806 = !DILocalVariable(name: "this", arg: 1, scope: !4804, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4807 = !DILocalVariable(name: "__n", arg: 2, scope: !4804, file: !1929, line: 773, type: !2869)
!4808 = distinct !DILocation(line: 1206, column: 9, scope: !4809, inlinedAt: !4777)
!4809 = distinct !DILexicalBlock(scope: !4801, file: !1929, line: 1205, column: 5)
!4810 = !DILocation(line: 0, scope: !4791, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 72, column: 39, scope: !4812)
!4812 = !DILexicalBlockFile(scope: !4610, file: !3, discriminator: 3)
!4813 = !DILocation(line: 0, scope: !4706, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 72, column: 12, scope: !4815)
!4815 = !DILexicalBlockFile(scope: !4610, file: !3, discriminator: 4)
!4816 = !DILocation(line: 0, scope: !4701, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 452, column: 28, scope: !4706, inlinedAt: !4814)
!4818 = !DILocation(line: 72, column: 5, scope: !4753)
!4819 = !DILocation(line: 773, column: 29, scope: !4804, inlinedAt: !4808)
!4820 = !DILocation(line: 929, column: 13, scope: !4821, inlinedAt: !4808)
!4821 = distinct !DILexicalBlock(scope: !4804, file: !1929, line: 929, column: 9)
!4822 = !DILocation(line: 929, column: 9, scope: !4804, inlinedAt: !4808)
!4823 = !DILocation(line: 930, column: 15, scope: !4821, inlinedAt: !4808)
!4824 = !DILocalVariable(name: "__n", arg: 2, scope: !4825, file: !332, line: 1540, type: !1955)
!4825 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m", scope: !1948, file: !332, line: 1540, type: !1951, isLocal: false, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1950, variables: !4826)
!4826 = !{!4827, !4824}
!4827 = !DILocalVariable(name: "__a", arg: 1, scope: !4825, file: !332, line: 1540, type: !1953)
!4828 = !DILocation(line: 1540, column: 60, scope: !4825, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 931, column: 37, scope: !4830, inlinedAt: !4808)
!4830 = !DILexicalBlockFile(scope: !4804, file: !1929, discriminator: 1)
!4831 = !DILocalVariable(name: "__n", arg: 2, scope: !4832, file: !332, line: 1781, type: !385)
!4832 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE8allocateEmPKv", scope: !1888, file: !332, line: 1781, type: !1914, isLocal: false, isDefinition: true, scopeLine: 1782, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1913, variables: !4833)
!4833 = !{!4834, !4831, !4835}
!4834 = !DILocalVariable(name: "this", arg: 1, scope: !4832, type: !4739, flags: DIFlagArtificial | DIFlagObjectPointer)
!4835 = !DILocalVariable(arg: 3, scope: !4832, file: !332, line: 1781, type: !386)
!4836 = !DILocation(line: 1781, column: 58, scope: !4832, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 1541, column: 21, scope: !4825, inlinedAt: !4829)
!4838 = !DILocation(line: 1781, column: 94, scope: !4832, inlinedAt: !4837)
!4839 = !DILocalVariable(name: "__size", arg: 1, scope: !4840, file: !4732, line: 222, type: !84)
!4840 = distinct !DISubprogram(name: "__allocate", linkageName: "_ZNSt3__110__allocateEm", scope: !7, file: !4732, line: 222, type: !3540, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4841)
!4841 = !{!4839}
!4842 = !DILocation(line: 222, column: 58, scope: !4840, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 1786, column: 37, scope: !4832, inlinedAt: !4837)
!4844 = !DILocation(line: 226, column: 10, scope: !4840, inlinedAt: !4843)
!4845 = !DILocation(line: 1786, column: 16, scope: !4832, inlinedAt: !4837)
!4846 = !DILocation(line: 931, column: 35, scope: !4804, inlinedAt: !4808)
!4847 = !DILocation(line: 931, column: 20, scope: !4804, inlinedAt: !4808)
!4848 = !DILocation(line: 932, column: 40, scope: !4804, inlinedAt: !4808)
!4849 = !DILocation(line: 932, column: 23, scope: !4804, inlinedAt: !4808)
!4850 = !DILocalVariable(name: "this", arg: 1, scope: !4851, type: !4660, flags: DIFlagArtificial | DIFlagObjectPointer)
!4851 = distinct !DISubprogram(name: "__construct_at_end<checker::Schedule **>", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESA_SA_m", scope: !2870, file: !1929, line: 1020, type: !4852, isLocal: false, isDefinition: true, scopeLine: 1021, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4854, declaration: !4856, variables: !4857)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!2155, !2876, !1927, !1927, !2869}
!4854 = !{!4855}
!4855 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !1927)
!4856 = !DISubprogram(name: "__construct_at_end<checker::Schedule **>", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESA_SA_m", scope: !2870, file: !1929, line: 785, type: !4852, isLocal: false, isDefinition: false, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, templateParams: !4854)
!4857 = !{!4850, !4858, !4859, !4860, !4861, !4863}
!4858 = !DILocalVariable(name: "__first", arg: 2, scope: !4851, file: !1929, line: 785, type: !1927)
!4859 = !DILocalVariable(name: "__last", arg: 3, scope: !4851, file: !1929, line: 785, type: !1927)
!4860 = !DILocalVariable(name: "__n", arg: 4, scope: !4851, file: !1929, line: 785, type: !2869)
!4861 = !DILocalVariable(name: "__a", scope: !4851, file: !1929, line: 1022, type: !4862)
!4862 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2882, size: 64)
!4863 = !DILocalVariable(name: "__annotator", scope: !4851, file: !1929, line: 1023, type: !4864)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__RAII_IncreaseAnnotator", scope: !2870, file: !1929, line: 878, size: 8, elements: !4865, identifier: "_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE24__RAII_IncreaseAnnotatorE")
!4865 = !{!4866, !4870}
!4866 = !DISubprogram(name: "__RAII_IncreaseAnnotator", scope: !4864, file: !1929, line: 880, type: !4867, isLocal: false, isDefinition: false, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !4869, !2900, !2869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4870 = !DISubprogram(name: "__done", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE24__RAII_IncreaseAnnotator6__doneEv", scope: !4864, file: !1929, line: 881, type: !4871, isLocal: false, isDefinition: false, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{null, !4869}
!4873 = !DILocation(line: 0, scope: !4851, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 1207, column: 9, scope: !4809, inlinedAt: !4777)
!4875 = !DILocation(line: 785, column: 89, scope: !4851, inlinedAt: !4874)
!4876 = !DILocation(line: 1023, column: 30, scope: !4851, inlinedAt: !4874)
!4877 = !DILocation(line: 1652, column: 86, scope: !2152, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 1024, column: 5, scope: !4851, inlinedAt: !4874)
!4879 = !DILocation(line: 1656, column: 21, scope: !4880, inlinedAt: !4878)
!4880 = distinct !DILexicalBlock(scope: !2152, file: !332, line: 1656, column: 17)
!4881 = !DILocation(line: 1656, column: 17, scope: !2152, inlinedAt: !4878)
!4882 = !DILocation(line: 1658, column: 17, scope: !4883, inlinedAt: !4878)
!4883 = distinct !DILexicalBlock(scope: !4880, file: !332, line: 1657, column: 13)
!4884 = !DILocation(line: 1659, column: 26, scope: !4883, inlinedAt: !4878)
!4885 = !DILocation(line: 1660, column: 13, scope: !4883, inlinedAt: !4878)
!4886 = !DILocation(line: 1209, column: 1, scope: !4809, inlinedAt: !4777)
!4887 = !DILocation(line: 444, column: 18, scope: !4694, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 1209, column: 1, scope: !4775, inlinedAt: !4777)
!4889 = !DILocation(line: 444, column: 9, scope: !4695, inlinedAt: !4888)
!4890 = !DILocation(line: 419, column: 12, scope: !4716, inlinedAt: !4891)
!4891 = distinct !DILocation(line: 361, column: 29, scope: !4722, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 446, column: 9, scope: !4726, inlinedAt: !4888)
!4893 = !DILocation(line: 230, column: 65, scope: !4731, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 1789, column: 10, scope: !4736, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 1549, column: 14, scope: !4743, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 447, column: 9, scope: !4749, inlinedAt: !4888)
!4897 = !DILocation(line: 234, column: 3, scope: !4731, inlinedAt: !4894)
!4898 = !DILocation(line: 448, column: 5, scope: !4726, inlinedAt: !4888)
!4899 = !DILocation(line: 1209, column: 1, scope: !4900, inlinedAt: !4777)
!4900 = !DILexicalBlockFile(scope: !4775, file: !1929, discriminator: 2)
!4901 = !DILocation(line: 230, column: 65, scope: !4731, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 1789, column: 10, scope: !4736, inlinedAt: !4903)
!4903 = distinct !DILocation(line: 1549, column: 14, scope: !4743, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 447, column: 9, scope: !4749, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 452, column: 28, scope: !4700, inlinedAt: !4817)
!4906 = !DILocation(line: 234, column: 3, scope: !4731, inlinedAt: !4902)
!4907 = !DILocation(line: 73, column: 9, scope: !4610)
!4908 = distinct !{!4908, !4909, !4910}
!4909 = !DILocation(line: 72, column: 5, scope: !4610)
!4910 = !DILocation(line: 73, column: 29, scope: !4610)
!4911 = !DILocation(line: 69, column: 20, scope: !4912)
!4912 = !DILexicalBlockFile(scope: !4610, file: !3, discriminator: 2)
!4913 = !DILocation(line: 69, column: 20, scope: !4812)
!4914 = !DILocation(line: 75, column: 5, scope: !4610)
!4915 = !DILocation(line: 714, column: 58, scope: !1424)
!4916 = !DILocation(line: 715, column: 41, scope: !1424)
!4917 = !DILocation(line: 715, column: 55, scope: !1424)
!4918 = !DILocation(line: 721, column: 9, scope: !1743)
!4919 = !DILocation(line: 721, column: 57, scope: !1743)
!4920 = !DILocalVariable(name: "this", arg: 1, scope: !4921, type: !4923, flags: DIFlagArtificial | DIFlagObjectPointer)
!4921 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !1744, file: !1423, line: 254, type: !1765, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1764, variables: !4922)
!4922 = !{!4920}
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!4924 = !DILocation(line: 0, scope: !4921, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 722, column: 13, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !1743, file: !1423, line: 722, column: 13)
!4927 = !DILocation(line: 254, column: 39, scope: !4921, inlinedAt: !4925)
!4928 = !{!4929, !4930, i64 0}
!4929 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !4930, i64 0, !4572, i64 8}
!4930 = !{!"bool", !4572, i64 0}
!4931 = !{i8 0, i8 2}
!4932 = !DILocation(line: 722, column: 13, scope: !4933)
!4933 = !DILexicalBlockFile(scope: !1743, file: !1423, discriminator: 1)
!4934 = !DILocalVariable(name: "this", arg: 1, scope: !4935, type: !4938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4935 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE", scope: !1768, file: !685, line: 1031, type: !1782, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1781, variables: !4936)
!4936 = !{!4934, !4937}
!4937 = !DILocalVariable(name: "__s", arg: 2, scope: !4935, file: !685, line: 1031, type: !1785)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!4939 = !DILocation(line: 0, scope: !4935, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 725, column: 34, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !1423, line: 725, column: 17)
!4942 = distinct !DILexicalBlock(scope: !4926, file: !1423, line: 723, column: 9)
!4943 = !DILocation(line: 1031, column: 65, scope: !4935, inlinedAt: !4940)
!4944 = !DILocalVariable(name: "this", arg: 1, scope: !4945, type: !4938, flags: DIFlagArtificial | DIFlagObjectPointer)
!4945 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE", scope: !1768, file: !685, line: 1031, type: !1782, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1781, variables: !4946)
!4946 = !{!4944, !4947}
!4947 = !DILocalVariable(name: "__s", arg: 2, scope: !4945, file: !685, line: 1031, type: !1785)
!4948 = !DILocation(line: 0, scope: !4945, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 1032, column: 32, scope: !4935, inlinedAt: !4940)
!4950 = !DILocation(line: 1031, column: 65, scope: !4945, inlinedAt: !4949)
!4951 = !DILocation(line: 1032, column: 19, scope: !4945, inlinedAt: !4949)
!4952 = !{!4953, !4953, i64 0}
!4953 = !{!"vtable pointer", !4573, i64 0}
!4954 = !DILocation(line: 340, column: 55, scope: !4955, inlinedAt: !4959)
!4955 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !19, file: !18, line: 340, type: !1375, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1374, variables: !4956)
!4956 = !{!4957}
!4957 = !DILocalVariable(name: "this", arg: 1, scope: !4955, type: !4958, flags: DIFlagArtificial | DIFlagObjectPointer)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!4959 = distinct !DILocation(line: 718, column: 76, scope: !4960, inlinedAt: !4964)
!4960 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1431, file: !18, line: 716, type: !1585, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1584, variables: !4961)
!4961 = !{!4962}
!4962 = !DILocalVariable(name: "this", arg: 1, scope: !4960, type: !4963, flags: DIFlagArtificial | DIFlagObjectPointer)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!4964 = distinct !DILocation(line: 1032, column: 23, scope: !4945, inlinedAt: !4949)
!4965 = !{!4966, !4571, i64 40}
!4966 = !{!"_ZTSNSt3__18ios_baseE", !4671, i64 8, !4967, i64 16, !4967, i64 24, !4671, i64 32, !4671, i64 36, !4571, i64 40, !4571, i64 48, !4571, i64 56, !4571, i64 64, !4967, i64 72, !4967, i64 80, !4571, i64 88, !4967, i64 96, !4967, i64 104, !4571, i64 112, !4967, i64 120, !4967, i64 128}
!4967 = !{!"long", !4572, i64 0}
!4968 = !DILocation(line: 727, column: 35, scope: !4941)
!4969 = !DILocalVariable(name: "this", arg: 1, scope: !4970, type: !4958, flags: DIFlagArtificial | DIFlagObjectPointer)
!4970 = distinct !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !19, file: !18, line: 440, type: !253, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !252, variables: !4971)
!4971 = !{!4969}
!4972 = !DILocation(line: 0, scope: !4970, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 727, column: 40, scope: !4941)
!4974 = !DILocation(line: 442, column: 12, scope: !4970, inlinedAt: !4973)
!4975 = !{!4966, !4671, i64 8}
!4976 = !DILocation(line: 728, column: 44, scope: !4941)
!4977 = !DILocation(line: 764, column: 54, scope: !4978, inlinedAt: !4982)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !18, line: 764, column: 9)
!4979 = distinct !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1431, file: !18, line: 762, type: !1596, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1595, variables: !4980)
!4980 = !{!4981}
!4981 = !DILocalVariable(name: "this", arg: 1, scope: !4979, type: !4963, flags: DIFlagArtificial | DIFlagObjectPointer)
!4982 = distinct !DILocation(line: 732, column: 39, scope: !4941)
!4983 = !{!4984, !4671, i64 144}
!4984 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !4571, i64 136, !4671, i64 144}
!4985 = !DILocalVariable(name: "__c1", arg: 1, scope: !4986, file: !777, line: 234, type: !811)
!4986 = distinct !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !776, file: !777, line: 234, type: !819, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !818, variables: !4987)
!4987 = !{!4985, !4988}
!4988 = !DILocalVariable(name: "__c2", arg: 2, scope: !4986, file: !777, line: 234, type: !811)
!4989 = !DILocation(line: 234, column: 63, scope: !4986, inlinedAt: !4990)
!4990 = distinct !DILocation(line: 764, column: 9, scope: !4991, inlinedAt: !4982)
!4991 = !DILexicalBlockFile(scope: !4978, file: !18, discriminator: 1)
!4992 = !DILocation(line: 234, column: 78, scope: !4986, inlinedAt: !4990)
!4993 = !DILocation(line: 235, column: 22, scope: !4986, inlinedAt: !4990)
!4994 = !DILocation(line: 764, column: 9, scope: !4979, inlinedAt: !4982)
!4995 = !DILocalVariable(name: "__c", arg: 2, scope: !4996, file: !18, line: 649, type: !309)
!4996 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1431, file: !18, line: 754, type: !1609, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1608, variables: !4997)
!4997 = !{!4998, !4995}
!4998 = !DILocalVariable(name: "this", arg: 1, scope: !4996, type: !4963, flags: DIFlagArtificial | DIFlagObjectPointer)
!4999 = !DILocation(line: 649, column: 26, scope: !4996, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 765, column: 19, scope: !4978, inlinedAt: !4982)
!5001 = !DILocation(line: 756, column: 41, scope: !4996, inlinedAt: !5000)
!5002 = !DILocalVariable(name: "__l", arg: 1, scope: !5003, file: !280, line: 210, type: !302)
!5003 = distinct !DISubprogram(name: "use_facet<std::__1::ctype<char> >", linkageName: "_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE", scope: !7, file: !280, line: 210, type: !5004, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5095, variables: !5097)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!5006, !302}
!5006 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5008)
!5008 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !7, file: !280, line: 558, size: 256, elements: !5009, vtableHolder: !1237, templateParams: !824, identifier: "_ZTSNSt3__15ctypeIcEE")
!5009 = !{!5010, !5011, !5032, !5034, !5035, !5036, !5038, !5042, !5047, !5053, !5056, !5057, !5060, !5064, !5065, !5066, !5069, !5072, !5075, !5078, !5081, !5084, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094}
!5010 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5008, baseType: !1234, flags: DIFlagPublic)
!5011 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5008, baseType: !5012, flags: DIFlagPublic)
!5012 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype_base", scope: !7, file: !280, line: 355, size: 8, elements: !5013, identifier: "_ZTSNSt3__110ctype_baseE")
!5013 = !{!5014, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !5012, file: !280, line: 391, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!5015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5016)
!5016 = !DIDerivedType(tag: DW_TAG_typedef, name: "mask", scope: !5012, file: !280, line: 385, baseType: !4076)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !5012, file: !280, line: 392, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 262144)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl", scope: !5012, file: !280, line: 393, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !5012, file: !280, line: 394, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32768)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !5012, file: !280, line: 395, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5012, file: !280, line: 396, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "digit", scope: !5012, file: !280, line: 397, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !5012, file: !280, line: 398, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "xdigit", scope: !5012, file: !280, line: 399, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 65536)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "blank", scope: !5012, file: !280, line: 404, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 131072)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "alnum", scope: !5012, file: !280, line: 447, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1280)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !5012, file: !280, line: 448, baseType: !5015, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 9472)
!5028 = !DISubprogram(name: "ctype_base", scope: !5012, file: !280, line: 450, type: !5029, isLocal: false, isDefinition: false, scopeLine: 450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "__tab_", scope: !5008, file: !280, line: 561, baseType: !5033, size: 64, offset: 128)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "__del_", scope: !5008, file: !280, line: 562, baseType: !104, size: 8, offset: 192)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5008, file: !280, line: 648, baseType: !1282, flags: DIFlagPublic | DIFlagStaticMember)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !5008, file: !280, line: 651, baseType: !5037, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 256)
!5037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!5038 = !DISubprogram(name: "ctype", scope: !5008, file: !280, line: 566, type: !5039, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{null, !5041, !5033, !104, !84}
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5042 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEjc", scope: !5008, file: !280, line: 569, type: !5043, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!104, !5045, !5016, !5046}
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5046 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !5008, file: !280, line: 564, baseType: !309)
!5047 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEPKcS3_Pj", scope: !5008, file: !280, line: 575, type: !5048, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!5050, !5045, !5050, !5050, !5052}
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5046)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5053 = !DISubprogram(name: "scan_is", linkageName: "_ZNKSt3__15ctypeIcE7scan_isEjPKcS3_", scope: !5008, file: !280, line: 583, type: !5054, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!5050, !5045, !5016, !5050, !5050}
!5056 = !DISubprogram(name: "scan_not", linkageName: "_ZNKSt3__15ctypeIcE8scan_notEjPKcS3_", scope: !5008, file: !280, line: 592, type: !5054, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5057 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEc", scope: !5008, file: !280, line: 601, type: !5058, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!5046, !5045, !5046}
!5060 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEPcPKc", scope: !5008, file: !280, line: 607, type: !5061, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!5050, !5045, !5063, !5050}
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5064 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEc", scope: !5008, file: !280, line: 613, type: !5058, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5065 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEPcPKc", scope: !5008, file: !280, line: 619, type: !5061, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5066 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !5008, file: !280, line: 625, type: !5067, isLocal: false, isDefinition: false, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!5046, !5045, !309}
!5069 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEPKcS3_Pc", scope: !5008, file: !280, line: 631, type: !5070, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!307, !5045, !307, !307, !5063}
!5072 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEcc", scope: !5008, file: !280, line: 637, type: !5073, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!309, !5045, !5046, !309}
!5075 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEPKcS3_cPc", scope: !5008, file: !280, line: 643, type: !5076, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!307, !5045, !5050, !5050, !309, !371}
!5078 = !DISubprogram(name: "table", linkageName: "_ZNKSt3__15ctypeIcE5tableEv", scope: !5008, file: !280, line: 655, type: !5079, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!5033, !5045}
!5081 = !DISubprogram(name: "classic_table", linkageName: "_ZNSt3__15ctypeIcE13classic_tableEv", scope: !5008, file: !280, line: 656, type: !5082, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!5033}
!5084 = !DISubprogram(name: "~ctype", scope: !5008, file: !280, line: 667, type: !5085, isLocal: false, isDefinition: false, scopeLine: 667, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !5041}
!5087 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEc", scope: !5008, file: !280, line: 668, type: !5058, isLocal: false, isDefinition: false, scopeLine: 668, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5088 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEPcPKc", scope: !5008, file: !280, line: 669, type: !5061, isLocal: false, isDefinition: false, scopeLine: 669, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5089 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEc", scope: !5008, file: !280, line: 670, type: !5058, isLocal: false, isDefinition: false, scopeLine: 670, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5090 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEPcPKc", scope: !5008, file: !280, line: 671, type: !5061, isLocal: false, isDefinition: false, scopeLine: 671, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5091 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEc", scope: !5008, file: !280, line: 672, type: !5067, isLocal: false, isDefinition: false, scopeLine: 672, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5092 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEPKcS3_Pc", scope: !5008, file: !280, line: 673, type: !5070, isLocal: false, isDefinition: false, scopeLine: 673, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5093 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEcc", scope: !5008, file: !280, line: 674, type: !5073, isLocal: false, isDefinition: false, scopeLine: 674, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5094 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEPKcS3_cPc", scope: !5008, file: !280, line: 675, type: !5076, isLocal: false, isDefinition: false, scopeLine: 675, containingType: !5008, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5095 = !{!5096}
!5096 = !DITemplateTypeParameter(name: "_Facet", type: !5008)
!5097 = !{!5002}
!5098 = !DILocation(line: 210, column: 25, scope: !5003, inlinedAt: !5099)
!5099 = distinct !DILocation(line: 756, column: 12, scope: !4996, inlinedAt: !5000)
!5100 = !DILocation(line: 212, column: 44, scope: !5003, inlinedAt: !5099)
!5101 = !DILocation(line: 212, column: 12, scope: !5003, inlinedAt: !5099)
!5102 = !DILocalVariable(name: "this", arg: 1, scope: !5103, type: !5106, flags: DIFlagArtificial | DIFlagObjectPointer)
!5103 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !5008, file: !280, line: 625, type: !5067, isLocal: false, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5066, variables: !5104)
!5104 = !{!5102, !5105}
!5105 = !DILocalVariable(name: "__c", arg: 2, scope: !5103, file: !280, line: 625, type: !309)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5107 = !DILocation(line: 0, scope: !5103, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 756, column: 51, scope: !5109, inlinedAt: !5000)
!5109 = !DILexicalBlockFile(scope: !4996, file: !18, discriminator: 1)
!5110 = !DILocation(line: 625, column: 26, scope: !5103, inlinedAt: !5108)
!5111 = !DILocation(line: 627, column: 16, scope: !5103, inlinedAt: !5108)
!5112 = !DILocation(line: 757, column: 1, scope: !4996, inlinedAt: !5000)
!5113 = !DILocation(line: 756, column: 5, scope: !5114, inlinedAt: !5000)
!5114 = !DILexicalBlockFile(scope: !4996, file: !18, discriminator: 3)
!5115 = !DILocation(line: 756, column: 5, scope: !4996, inlinedAt: !5000)
!5116 = !DILocation(line: 756, column: 5, scope: !5117, inlinedAt: !5000)
!5117 = !DILexicalBlockFile(scope: !4996, file: !18, discriminator: 2)
!5118 = !DILocation(line: 765, column: 19, scope: !4978, inlinedAt: !4982)
!5119 = !DILocation(line: 765, column: 17, scope: !4978, inlinedAt: !4982)
!5120 = !DILocation(line: 765, column: 9, scope: !4978, inlinedAt: !4982)
!5121 = !DILocation(line: 766, column: 12, scope: !4979, inlinedAt: !4982)
!5122 = !DILocation(line: 727, column: 48, scope: !5123)
!5123 = !DILexicalBlockFile(scope: !4941, file: !1423, discriminator: 1)
!5124 = !DILocation(line: 727, column: 73, scope: !5123)
!5125 = !DILocation(line: 727, column: 34, scope: !5123)
!5126 = !DILocation(line: 725, column: 17, scope: !5123)
!5127 = !DILocalVariable(name: "this", arg: 1, scope: !5128, type: !5130, flags: DIFlagArtificial | DIFlagObjectPointer)
!5128 = distinct !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1768, file: !685, line: 1044, type: !1802, isLocal: false, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1801, variables: !5129)
!5129 = !{!5127}
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!5131 = !DILocation(line: 0, scope: !5128, inlinedAt: !5132)
!5132 = distinct !DILocation(line: 732, column: 47, scope: !5123)
!5133 = !DILocation(line: 1044, column: 77, scope: !5128, inlinedAt: !5132)
!5134 = !DILocation(line: 725, column: 17, scope: !5135)
!5135 = !DILexicalBlockFile(scope: !4942, file: !1423, discriminator: 2)
!5136 = !DILocation(line: 733, column: 17, scope: !4941)
!5137 = !DILocalVariable(name: "__state", arg: 2, scope: !5138, file: !18, line: 611, type: !50)
!5138 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1431, file: !18, line: 611, type: !1449, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1452, variables: !5139)
!5139 = !{!5140, !5137}
!5140 = !DILocalVariable(name: "this", arg: 1, scope: !5138, type: !5141, flags: DIFlagArtificial | DIFlagObjectPointer)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!5142 = !DILocation(line: 611, column: 49, scope: !5138, inlinedAt: !5143)
!5143 = distinct !DILocation(line: 733, column: 22, scope: !4941)
!5144 = !DILocation(line: 611, column: 69, scope: !5138, inlinedAt: !5143)
!5145 = !DILocalVariable(name: "this", arg: 1, scope: !5146, type: !5149, flags: DIFlagArtificial | DIFlagObjectPointer)
!5146 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !19, file: !18, line: 527, type: !1357, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1359, variables: !5147)
!5147 = !{!5145, !5148}
!5148 = !DILocalVariable(name: "__state", arg: 2, scope: !5146, file: !18, line: 527, type: !50)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!5150 = !DILocation(line: 0, scope: !5146, inlinedAt: !5151)
!5151 = distinct !DILocation(line: 611, column: 69, scope: !5138, inlinedAt: !5143)
!5152 = !DILocation(line: 527, column: 28, scope: !5146, inlinedAt: !5151)
!5153 = !DILocation(line: 529, column: 11, scope: !5146, inlinedAt: !5151)
!5154 = !{!4966, !4671, i64 32}
!5155 = !DILocation(line: 529, column: 22, scope: !5146, inlinedAt: !5151)
!5156 = !DILocation(line: 529, column: 5, scope: !5146, inlinedAt: !5151)
!5157 = !DILocation(line: 743, column: 1, scope: !1743)
!5158 = !DILocation(line: 739, column: 9, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !1424, file: !1423, line: 738, column: 5)
!5160 = !DILocation(line: 743, column: 1, scope: !5161)
!5161 = !DILexicalBlockFile(scope: !4926, file: !1423, discriminator: 1)
!5162 = !DILocation(line: 743, column: 1, scope: !5163)
!5163 = !DILexicalBlockFile(scope: !4941, file: !1423, discriminator: 2)
!5164 = !DILocation(line: 736, column: 5, scope: !1424)
!5165 = !DILocation(line: 736, column: 5, scope: !1743)
!5166 = !DILocation(line: 736, column: 5, scope: !5167)
!5167 = !DILexicalBlockFile(scope: !1424, file: !1423, discriminator: 1)
!5168 = !DILocation(line: 736, column: 5, scope: !5169)
!5169 = !DILexicalBlockFile(scope: !1743, file: !1423, discriminator: 2)
!5170 = !DILocation(line: 739, column: 14, scope: !5159)
!5171 = !DILocation(line: 740, column: 5, scope: !5159)
!5172 = !DILocation(line: 742, column: 5, scope: !1424)
!5173 = !DILocation(line: 743, column: 1, scope: !5174)
!5174 = !DILexicalBlockFile(scope: !5159, file: !1423, discriminator: 3)
!5175 = !DILocation(line: 740, column: 5, scope: !5176)
!5176 = !DILexicalBlockFile(scope: !5159, file: !1423, discriminator: 1)
!5177 = !DILocation(line: 740, column: 5, scope: !5174)
!5178 = !DILocation(line: 740, column: 5, scope: !5179)
!5179 = !DILexicalBlockFile(scope: !5159, file: !1423, discriminator: 4)
!5180 = distinct !DISubprogram(name: "__pad_and_output<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", scope: !7, file: !5181, line: 1326, type: !5182, isLocal: false, isDefinition: true, scopeLine: 1329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !773, variables: !5184)
!5181 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!1768, !1768, !307, !307, !307, !80, !309}
!5184 = !{!5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194}
!5185 = !DILocalVariable(name: "__s", arg: 1, scope: !5180, file: !5181, line: 1326, type: !1768)
!5186 = !DILocalVariable(name: "__ob", arg: 2, scope: !5180, file: !5181, line: 1327, type: !307)
!5187 = !DILocalVariable(name: "__op", arg: 3, scope: !5180, file: !5181, line: 1327, type: !307)
!5188 = !DILocalVariable(name: "__oe", arg: 4, scope: !5180, file: !5181, line: 1327, type: !307)
!5189 = !DILocalVariable(name: "__iob", arg: 5, scope: !5180, file: !5181, line: 1328, type: !80)
!5190 = !DILocalVariable(name: "__fl", arg: 6, scope: !5180, file: !5181, line: 1328, type: !309)
!5191 = !DILocalVariable(name: "__sz", scope: !5180, file: !5181, line: 1332, type: !64)
!5192 = !DILocalVariable(name: "__ns", scope: !5180, file: !5181, line: 1333, type: !64)
!5193 = !DILocalVariable(name: "__np", scope: !5180, file: !5181, line: 1338, type: !64)
!5194 = !DILocalVariable(name: "__sp", scope: !5195, file: !5181, line: 1349, type: !317)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !5181, line: 1348, column: 5)
!5196 = distinct !DILexicalBlock(scope: !5180, file: !5181, line: 1347, column: 9)
!5197 = !DILocation(line: 1326, column: 55, scope: !5180)
!5198 = !DILocation(line: 1327, column: 32, scope: !5180)
!5199 = !DILocation(line: 1327, column: 52, scope: !5180)
!5200 = !DILocation(line: 1327, column: 72, scope: !5180)
!5201 = !DILocation(line: 1328, column: 28, scope: !5180)
!5202 = !DILocation(line: 1328, column: 42, scope: !5180)
!5203 = !DILocation(line: 1330, column: 21, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5180, file: !5181, line: 1330, column: 9)
!5205 = !DILocation(line: 1330, column: 9, scope: !5180)
!5206 = !DILocation(line: 1332, column: 28, scope: !5180)
!5207 = !DILocation(line: 1332, column: 16, scope: !5180)
!5208 = !DILocalVariable(name: "this", arg: 1, scope: !5209, type: !4958, flags: DIFlagArtificial | DIFlagObjectPointer)
!5209 = distinct !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !19, file: !18, line: 502, type: !269, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !274, variables: !5210)
!5210 = !{!5208}
!5211 = !DILocation(line: 0, scope: !5209, inlinedAt: !5212)
!5212 = distinct !DILocation(line: 1333, column: 29, scope: !5180)
!5213 = !DILocation(line: 504, column: 12, scope: !5209, inlinedAt: !5212)
!5214 = !{!4966, !4967, i64 24}
!5215 = !DILocation(line: 1333, column: 16, scope: !5180)
!5216 = !DILocation(line: 1334, column: 14, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5180, file: !5181, line: 1334, column: 9)
!5218 = !DILocation(line: 1335, column: 14, scope: !5217)
!5219 = !DILocation(line: 1334, column: 9, scope: !5180)
!5220 = !DILocation(line: 1338, column: 28, scope: !5180)
!5221 = !DILocation(line: 1338, column: 16, scope: !5180)
!5222 = !DILocation(line: 1339, column: 14, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5180, file: !5181, line: 1339, column: 9)
!5224 = !DILocation(line: 1339, column: 9, scope: !5180)
!5225 = !DILocalVariable(name: "this", arg: 1, scope: !5226, type: !1462, flags: DIFlagArtificial | DIFlagObjectPointer)
!5226 = distinct !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1463, file: !1432, line: 223, type: !1525, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1524, variables: !5227)
!5227 = !{!5225, !5228, !5229}
!5228 = !DILocalVariable(name: "__s", arg: 2, scope: !5226, file: !1432, line: 223, type: !1527)
!5229 = !DILocalVariable(name: "__n", arg: 3, scope: !5226, file: !1432, line: 223, type: !64)
!5230 = !DILocation(line: 0, scope: !5226, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 1341, column: 26, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5233, file: !5181, line: 1341, column: 13)
!5233 = distinct !DILexicalBlock(scope: !5223, file: !5181, line: 1340, column: 5)
!5234 = !DILocation(line: 223, column: 39, scope: !5226, inlinedAt: !5231)
!5235 = !DILocation(line: 223, column: 55, scope: !5226, inlinedAt: !5231)
!5236 = !DILocation(line: 224, column: 14, scope: !5226, inlinedAt: !5231)
!5237 = !DILocation(line: 1341, column: 44, scope: !5232)
!5238 = !DILocation(line: 1341, column: 13, scope: !5233)
!5239 = !DILocation(line: 1347, column: 14, scope: !5196)
!5240 = !DILocation(line: 1347, column: 9, scope: !5180)
!5241 = !DILocation(line: 1349, column: 9, scope: !5195)
!5242 = !DILocation(line: 1349, column: 39, scope: !5195)
!5243 = !DILocalVariable(name: "this", arg: 1, scope: !5244, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5244 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc", scope: !317, file: !318, line: 1709, type: !626, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !625, variables: !5245)
!5245 = !{!5243, !5246, !5247}
!5246 = !DILocalVariable(name: "__n", arg: 2, scope: !5244, file: !318, line: 786, type: !347)
!5247 = !DILocalVariable(name: "__c", arg: 3, scope: !5244, file: !318, line: 786, type: !309)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!5249 = !DILocation(line: 0, scope: !5244, inlinedAt: !5250)
!5250 = distinct !DILocation(line: 1349, column: 39, scope: !5195)
!5251 = !DILocation(line: 786, column: 28, scope: !5244, inlinedAt: !5250)
!5252 = !DILocation(line: 786, column: 40, scope: !5244, inlinedAt: !5250)
!5253 = !DILocalVariable(name: "this", arg: 1, scope: !5254, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5254 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc", scope: !317, file: !318, line: 1709, type: !626, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !625, variables: !5255)
!5255 = !{!5253, !5256, !5257}
!5256 = !DILocalVariable(name: "__n", arg: 2, scope: !5254, file: !318, line: 786, type: !347)
!5257 = !DILocalVariable(name: "__c", arg: 3, scope: !5254, file: !318, line: 786, type: !309)
!5258 = !DILocation(line: 0, scope: !5254, inlinedAt: !5259)
!5259 = distinct !DILocation(line: 1710, column: 1, scope: !5244, inlinedAt: !5250)
!5260 = !DILocation(line: 786, column: 28, scope: !5254, inlinedAt: !5259)
!5261 = !DILocation(line: 786, column: 40, scope: !5254, inlinedAt: !5259)
!5262 = !DILocation(line: 2082, column: 40, scope: !5263, inlinedAt: !5267)
!5263 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev", scope: !335, file: !332, line: 2082, type: !520, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !519, variables: !5264)
!5264 = !{!5265}
!5265 = !DILocalVariable(name: "this", arg: 1, scope: !5263, type: !5266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!5267 = distinct !DILocation(line: 2167, column: 13, scope: !5268, inlinedAt: !5277)
!5268 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv", scope: !331, file: !332, line: 2167, type: !5269, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5271, declaration: !5273, variables: !5274)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !567}
!5271 = !{!5272, !4539}
!5272 = !DITemplateValueParameter(name: "_Dummy", type: !104, value: i8 1)
!5273 = !DISubprogram(name: "__compressed_pair<true, void>", scope: !331, file: !332, line: 2167, type: !5269, isLocal: false, isDefinition: false, scopeLine: 2167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !5271)
!5274 = !{!5275}
!5275 = !DILocalVariable(name: "this", arg: 1, scope: !5268, type: !5276, flags: DIFlagArtificial | DIFlagObjectPointer)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!5277 = distinct !DILocation(line: 2167, column: 33, scope: !5278, inlinedAt: !5281)
!5278 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv", scope: !331, file: !332, line: 2167, type: !5269, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5271, declaration: !5273, variables: !5279)
!5279 = !{!5280}
!5280 = !DILocalVariable(name: "this", arg: 1, scope: !5278, type: !5276, flags: DIFlagArtificial | DIFlagObjectPointer)
!5281 = distinct !DILocation(line: 786, column: 5, scope: !5254, inlinedAt: !5259)
!5282 = !DILocalVariable(name: "this", arg: 1, scope: !5283, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5283 = distinct !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !317, file: !318, line: 1685, type: !915, isLocal: false, isDefinition: true, scopeLine: 1686, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1175, variables: !5284)
!5284 = !{!5282, !5285, !5286, !5287, !5288}
!5285 = !DILocalVariable(name: "__n", arg: 2, scope: !5283, file: !318, line: 1344, type: !347)
!5286 = !DILocalVariable(name: "__c", arg: 3, scope: !5283, file: !318, line: 1344, type: !507)
!5287 = !DILocalVariable(name: "__p", scope: !5283, file: !318, line: 1689, type: !497)
!5288 = !DILocalVariable(name: "__cap", scope: !5289, file: !318, line: 1697, type: !347)
!5289 = distinct !DILexicalBlock(scope: !5290, file: !318, line: 1696, column: 5)
!5290 = distinct !DILexicalBlock(scope: !5283, file: !318, line: 1690, column: 9)
!5291 = !DILocation(line: 0, scope: !5283, inlinedAt: !5292)
!5292 = distinct !DILocation(line: 1711, column: 5, scope: !5293, inlinedAt: !5259)
!5293 = distinct !DILexicalBlock(scope: !5254, file: !318, line: 1710, column: 1)
!5294 = !DILocation(line: 1344, column: 27, scope: !5283, inlinedAt: !5292)
!5295 = !DILocation(line: 1344, column: 43, scope: !5283, inlinedAt: !5292)
!5296 = !DILocation(line: 1690, column: 13, scope: !5290, inlinedAt: !5292)
!5297 = !DILocation(line: 1690, column: 9, scope: !5283, inlinedAt: !5292)
!5298 = !DILocalVariable(name: "__s", arg: 1, scope: !5299, file: !318, line: 1334, type: !347)
!5299 = distinct !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !317, file: !318, line: 1334, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1166, variables: !5300)
!5300 = !{!5298}
!5301 = !DILocation(line: 1334, column: 37, scope: !5299, inlinedAt: !5302)
!5302 = distinct !DILocation(line: 1697, column: 27, scope: !5289, inlinedAt: !5292)
!5303 = !DILocation(line: 1331, column: 26, scope: !5304, inlinedAt: !5310)
!5304 = distinct !DISubprogram(name: "__align_it<16>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm", scope: !317, file: !318, line: 1330, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5305, declaration: !5307, variables: !5308)
!5305 = !{!5306}
!5306 = !DITemplateValueParameter(name: "__a", type: !88, value: i64 16)
!5307 = !DISubprogram(name: "__align_it<16>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm", scope: !317, file: !318, line: 1330, type: !1167, isLocal: false, isDefinition: false, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, templateParams: !5305)
!5308 = !{!5309}
!5309 = !DILocalVariable(name: "__s", arg: 1, scope: !5304, file: !318, line: 1330, type: !347)
!5310 = distinct !DILocation(line: 1336, column: 18, scope: !5299, inlinedAt: !5302)
!5311 = !DILocation(line: 1331, column: 37, scope: !5304, inlinedAt: !5310)
!5312 = !DILocalVariable(name: "__n", arg: 2, scope: !5313, file: !332, line: 1540, type: !348)
!5313 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !349, file: !332, line: 1540, type: !352, isLocal: false, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !351, variables: !5314)
!5314 = !{!5315, !5312}
!5315 = !DILocalVariable(name: "__a", arg: 1, scope: !5313, file: !332, line: 1540, type: !406)
!5316 = !DILocation(line: 1540, column: 60, scope: !5313, inlinedAt: !5317)
!5317 = distinct !DILocation(line: 1698, column: 15, scope: !5318, inlinedAt: !5292)
!5318 = !DILexicalBlockFile(scope: !5289, file: !318, discriminator: 1)
!5319 = !DILocalVariable(name: "__n", arg: 2, scope: !5320, file: !332, line: 1781, type: !385)
!5320 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !361, file: !332, line: 1781, type: !383, isLocal: false, isDefinition: true, scopeLine: 1782, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !382, variables: !5321)
!5321 = !{!5322, !5319, !5324}
!5322 = !DILocalVariable(name: "this", arg: 1, scope: !5320, type: !5323, flags: DIFlagArtificial | DIFlagObjectPointer)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!5324 = !DILocalVariable(arg: 3, scope: !5320, file: !332, line: 1781, type: !386)
!5325 = !DILocation(line: 1781, column: 58, scope: !5320, inlinedAt: !5326)
!5326 = distinct !DILocation(line: 1541, column: 21, scope: !5313, inlinedAt: !5317)
!5327 = !DILocation(line: 1781, column: 94, scope: !5320, inlinedAt: !5326)
!5328 = !DILocation(line: 222, column: 58, scope: !4840, inlinedAt: !5329)
!5329 = distinct !DILocation(line: 1786, column: 37, scope: !5320, inlinedAt: !5326)
!5330 = !DILocation(line: 226, column: 10, scope: !4840, inlinedAt: !5329)
!5331 = !DILocation(line: 1689, column: 13, scope: !5283, inlinedAt: !5292)
!5332 = !DILocalVariable(name: "this", arg: 1, scope: !5333, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5333 = distinct !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !317, file: !318, line: 1299, type: !1148, isLocal: false, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1147, variables: !5334)
!5334 = !{!5332, !5335}
!5335 = !DILocalVariable(name: "__p", arg: 2, scope: !5333, file: !318, line: 1299, type: !497)
!5336 = !DILocation(line: 0, scope: !5333, inlinedAt: !5337)
!5337 = distinct !DILocation(line: 1699, column: 9, scope: !5289, inlinedAt: !5292)
!5338 = !DILocation(line: 1299, column: 37, scope: !5333, inlinedAt: !5337)
!5339 = !DILocation(line: 1300, column: 27, scope: !5333, inlinedAt: !5337)
!5340 = !DILocation(line: 1300, column: 35, scope: !5333, inlinedAt: !5337)
!5341 = !{!5342, !4571, i64 16}
!5342 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !4967, i64 0, !4967, i64 8, !4571, i64 16}
!5343 = !DILocalVariable(name: "this", arg: 1, scope: !5344, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5344 = distinct !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !317, file: !318, line: 1292, type: !918, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1145, variables: !5345)
!5345 = !{!5343, !5346}
!5346 = !DILocalVariable(name: "__s", arg: 2, scope: !5344, file: !318, line: 1292, type: !347)
!5347 = !DILocation(line: 0, scope: !5344, inlinedAt: !5348)
!5348 = distinct !DILocation(line: 1700, column: 9, scope: !5289, inlinedAt: !5292)
!5349 = !DILocation(line: 1292, column: 35, scope: !5344, inlinedAt: !5348)
!5350 = !DILocation(line: 1293, column: 49, scope: !5344, inlinedAt: !5348)
!5351 = !DILocation(line: 1293, column: 27, scope: !5344, inlinedAt: !5348)
!5352 = !DILocation(line: 1293, column: 35, scope: !5344, inlinedAt: !5348)
!5353 = !{!5342, !4967, i64 0}
!5354 = !DILocalVariable(name: "this", arg: 1, scope: !5355, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5355 = distinct !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !317, file: !318, line: 1282, type: !918, isLocal: false, isDefinition: true, scopeLine: 1283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1142, variables: !5356)
!5356 = !{!5354, !5357}
!5357 = !DILocalVariable(name: "__s", arg: 2, scope: !5355, file: !318, line: 1282, type: !347)
!5358 = !DILocation(line: 0, scope: !5355, inlinedAt: !5359)
!5359 = distinct !DILocation(line: 1701, column: 9, scope: !5289, inlinedAt: !5292)
!5360 = !DILocation(line: 1282, column: 36, scope: !5355, inlinedAt: !5359)
!5361 = !DILocation(line: 1283, column: 27, scope: !5355, inlinedAt: !5359)
!5362 = !DILocation(line: 1283, column: 35, scope: !5355, inlinedAt: !5359)
!5363 = !{!5342, !4967, i64 8}
!5364 = !DILocalVariable(name: "__n", arg: 2, scope: !5365, file: !777, line: 225, type: !84)
!5365 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !776, file: !777, line: 225, type: !806, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !805, variables: !5366)
!5366 = !{!5367, !5364, !5368}
!5367 = !DILocalVariable(name: "__s", arg: 1, scope: !5365, file: !777, line: 225, type: !803)
!5368 = !DILocalVariable(name: "__a", arg: 3, scope: !5365, file: !777, line: 225, type: !783)
!5369 = !DILocation(line: 225, column: 60, scope: !5365, inlinedAt: !5370)
!5370 = distinct !DILocation(line: 1703, column: 5, scope: !5371, inlinedAt: !5292)
!5371 = !DILexicalBlockFile(scope: !5283, file: !318, discriminator: 1)
!5372 = !DILocation(line: 225, column: 75, scope: !5365, inlinedAt: !5370)
!5373 = !DILocation(line: 1312, column: 72, scope: !5374, inlinedAt: !5378)
!5374 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !317, file: !318, line: 1311, type: !1154, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1162, variables: !5375)
!5375 = !{!5376}
!5376 = !DILocalVariable(name: "this", arg: 1, scope: !5374, type: !5377, flags: DIFlagArtificial | DIFlagObjectPointer)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!5378 = distinct !DILocation(line: 1318, column: 54, scope: !5379, inlinedAt: !5383)
!5379 = !DILexicalBlockFile(scope: !5380, file: !318, discriminator: 2)
!5380 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !317, file: !318, line: 1317, type: !1154, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1164, variables: !5381)
!5381 = !{!5382}
!5382 = !DILocalVariable(name: "this", arg: 1, scope: !5380, type: !5377, flags: DIFlagArtificial | DIFlagObjectPointer)
!5383 = distinct !DILocation(line: 1132, column: 79, scope: !5384, inlinedAt: !5387)
!5384 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !317, file: !318, line: 1132, type: !1061, isLocal: false, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1063, variables: !5385)
!5385 = !{!5386}
!5386 = !DILocalVariable(name: "this", arg: 1, scope: !5384, type: !5377, flags: DIFlagArtificial | DIFlagObjectPointer)
!5387 = distinct !DILocation(line: 1350, column: 37, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5195, file: !5181, line: 1350, column: 13)
!5389 = !DILocation(line: 1312, column: 59, scope: !5374, inlinedAt: !5378)
!5390 = !DILocation(line: 226, column: 17, scope: !5365, inlinedAt: !5370)
!5391 = !DILocalVariable(name: "this", arg: 1, scope: !5392, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5392 = distinct !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !317, file: !318, line: 1264, type: !918, isLocal: false, isDefinition: true, scopeLine: 1268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1140, variables: !5393)
!5393 = !{!5391, !5394}
!5394 = !DILocalVariable(name: "__s", arg: 2, scope: !5392, file: !318, line: 1264, type: !347)
!5395 = !DILocation(line: 0, scope: !5392, inlinedAt: !5396)
!5396 = distinct !DILocation(line: 1692, column: 9, scope: !5397, inlinedAt: !5292)
!5397 = distinct !DILexicalBlock(scope: !5290, file: !318, line: 1691, column: 5)
!5398 = !DILocation(line: 1264, column: 37, scope: !5392, inlinedAt: !5396)
!5399 = !DILocation(line: 1268, column: 52, scope: !5392, inlinedAt: !5396)
!5400 = !DILocation(line: 1268, column: 35, scope: !5392, inlinedAt: !5396)
!5401 = !{!4572, !4572, i64 0}
!5402 = !DILocalVariable(name: "this", arg: 1, scope: !5403, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5403 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !317, file: !318, line: 1308, type: !1151, isLocal: false, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1161, variables: !5404)
!5404 = !{!5402}
!5405 = !DILocation(line: 0, scope: !5403, inlinedAt: !5406)
!5406 = distinct !DILocation(line: 1693, column: 15, scope: !5397, inlinedAt: !5292)
!5407 = !DILocation(line: 1309, column: 66, scope: !5403, inlinedAt: !5406)
!5408 = !DILocation(line: 1309, column: 53, scope: !5403, inlinedAt: !5406)
!5409 = !DILocation(line: 225, column: 48, scope: !5365, inlinedAt: !5370)
!5410 = !DILocation(line: 1306, column: 34, scope: !5411, inlinedAt: !5414)
!5411 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !317, file: !318, line: 1305, type: !1154, isLocal: false, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1153, variables: !5412)
!5412 = !{!5413}
!5413 = !DILocalVariable(name: "this", arg: 1, scope: !5411, type: !5377, flags: DIFlagArtificial | DIFlagObjectPointer)
!5414 = distinct !DILocation(line: 1318, column: 31, scope: !5415, inlinedAt: !5383)
!5415 = !DILexicalBlockFile(scope: !5380, file: !318, discriminator: 1)
!5416 = !DILocation(line: 226, column: 46, scope: !5365, inlinedAt: !5370)
!5417 = !DILocation(line: 1704, column: 25, scope: !5283, inlinedAt: !5292)
!5418 = !DILocalVariable(name: "__c1", arg: 1, scope: !5419, file: !777, line: 206, type: !782)
!5419 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !776, file: !777, line: 206, type: !780, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !779, variables: !5420)
!5420 = !{!5418, !5421}
!5421 = !DILocalVariable(name: "__c2", arg: 2, scope: !5419, file: !777, line: 206, type: !784)
!5422 = !DILocation(line: 206, column: 28, scope: !5419, inlinedAt: !5423)
!5423 = distinct !DILocation(line: 1704, column: 5, scope: !5283, inlinedAt: !5292)
!5424 = !DILocation(line: 206, column: 73, scope: !5419, inlinedAt: !5423)
!5425 = !DILocation(line: 0, scope: !5384, inlinedAt: !5387)
!5426 = !DILocation(line: 0, scope: !5380, inlinedAt: !5383)
!5427 = !DILocalVariable(name: "this", arg: 1, scope: !5428, type: !5377, flags: DIFlagArtificial | DIFlagObjectPointer)
!5428 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !317, file: !318, line: 1223, type: !924, isLocal: false, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1132, variables: !5429)
!5429 = !{!5427}
!5430 = !DILocation(line: 0, scope: !5428, inlinedAt: !5431)
!5431 = distinct !DILocation(line: 1318, column: 17, scope: !5380, inlinedAt: !5383)
!5432 = !DILocation(line: 1224, column: 39, scope: !5428, inlinedAt: !5431)
!5433 = !DILocation(line: 1224, column: 47, scope: !5428, inlinedAt: !5431)
!5434 = !DILocation(line: 1224, column: 22, scope: !5428, inlinedAt: !5431)
!5435 = !DILocation(line: 0, scope: !5411, inlinedAt: !5414)
!5436 = !DILocation(line: 0, scope: !5374, inlinedAt: !5378)
!5437 = !DILocation(line: 1318, column: 17, scope: !5380, inlinedAt: !5383)
!5438 = !DILocation(line: 0, scope: !5226, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 1350, column: 26, scope: !5388)
!5440 = !DILocation(line: 223, column: 39, scope: !5226, inlinedAt: !5439)
!5441 = !DILocation(line: 223, column: 55, scope: !5226, inlinedAt: !5439)
!5442 = !DILocation(line: 224, column: 14, scope: !5226, inlinedAt: !5439)
!5443 = !DILocation(line: 1350, column: 51, scope: !5444)
!5444 = !DILexicalBlockFile(scope: !5388, file: !5181, discriminator: 1)
!5445 = !DILocalVariable(name: "this", arg: 1, scope: !5446, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5446 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev", scope: !317, file: !318, line: 1904, type: !589, isLocal: false, isDefinition: true, scopeLine: 1905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !857, variables: !5447)
!5447 = !{!5445}
!5448 = !DILocation(line: 0, scope: !5446, inlinedAt: !5449)
!5449 = distinct !DILocation(line: 1355, column: 5, scope: !5450)
!5450 = !DILexicalBlockFile(scope: !5196, file: !5181, discriminator: 2)
!5451 = !DILocalVariable(name: "this", arg: 1, scope: !5452, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5452 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev", scope: !317, file: !318, line: 1904, type: !589, isLocal: false, isDefinition: true, scopeLine: 1905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !857, variables: !5453)
!5453 = !{!5451}
!5454 = !DILocation(line: 0, scope: !5452, inlinedAt: !5455)
!5455 = distinct !DILocation(line: 1905, column: 1, scope: !5446, inlinedAt: !5449)
!5456 = !DILocation(line: 0, scope: !5428, inlinedAt: !5457)
!5457 = distinct !DILocation(line: 1909, column: 9, scope: !5458, inlinedAt: !5455)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !318, line: 1909, column: 9)
!5459 = distinct !DILexicalBlock(scope: !5452, file: !318, line: 1905, column: 1)
!5460 = !DILocation(line: 1224, column: 39, scope: !5428, inlinedAt: !5457)
!5461 = !DILocation(line: 1224, column: 47, scope: !5428, inlinedAt: !5457)
!5462 = !DILocation(line: 1224, column: 22, scope: !5428, inlinedAt: !5457)
!5463 = !DILocation(line: 1909, column: 9, scope: !5459, inlinedAt: !5455)
!5464 = !DILocalVariable(name: "this", arg: 1, scope: !5465, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5465 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !317, file: !318, line: 1302, type: !1151, isLocal: false, isDefinition: true, scopeLine: 1303, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1150, variables: !5466)
!5466 = !{!5464}
!5467 = !DILocation(line: 0, scope: !5465, inlinedAt: !5468)
!5468 = distinct !DILocation(line: 1910, column: 47, scope: !5469, inlinedAt: !5455)
!5469 = !DILexicalBlockFile(scope: !5458, file: !318, discriminator: 1)
!5470 = !DILocation(line: 1303, column: 34, scope: !5465, inlinedAt: !5468)
!5471 = !DILocalVariable(name: "__p", arg: 2, scope: !5472, file: !332, line: 1548, type: !354)
!5472 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !349, file: !332, line: 1548, type: !435, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !434, variables: !5473)
!5473 = !{!5474, !5471, !5475}
!5474 = !DILocalVariable(name: "__a", arg: 1, scope: !5472, file: !332, line: 1548, type: !406)
!5475 = !DILocalVariable(name: "__n", arg: 3, scope: !5472, file: !332, line: 1548, type: !348)
!5476 = !DILocation(line: 1548, column: 57, scope: !5472, inlinedAt: !5477)
!5477 = distinct !DILocation(line: 1910, column: 9, scope: !5478, inlinedAt: !5455)
!5478 = !DILexicalBlockFile(scope: !5458, file: !318, discriminator: 3)
!5479 = !DILocalVariable(name: "__p", arg: 2, scope: !5480, file: !332, line: 1788, type: !370)
!5480 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !361, file: !332, line: 1788, type: !393, isLocal: false, isDefinition: true, scopeLine: 1789, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !392, variables: !5481)
!5481 = !{!5482, !5479, !5483}
!5482 = !DILocalVariable(name: "this", arg: 1, scope: !5480, type: !5323, flags: DIFlagArtificial | DIFlagObjectPointer)
!5483 = !DILocalVariable(arg: 3, scope: !5480, file: !332, line: 1788, type: !385)
!5484 = !DILocation(line: 1788, column: 55, scope: !5480, inlinedAt: !5485)
!5485 = distinct !DILocation(line: 1549, column: 14, scope: !5472, inlinedAt: !5477)
!5486 = !DILocation(line: 230, column: 65, scope: !4731, inlinedAt: !5487)
!5487 = distinct !DILocation(line: 1789, column: 10, scope: !5480, inlinedAt: !5485)
!5488 = !DILocation(line: 234, column: 3, scope: !4731, inlinedAt: !5487)
!5489 = !DILocation(line: 1910, column: 9, scope: !5458, inlinedAt: !5455)
!5490 = !DILocation(line: 1355, column: 5, scope: !5196)
!5491 = !DILocation(line: 1367, column: 1, scope: !5388)
!5492 = !DILocation(line: 0, scope: !5446, inlinedAt: !5493)
!5493 = distinct !DILocation(line: 1355, column: 5, scope: !5196)
!5494 = !DILocation(line: 0, scope: !5452, inlinedAt: !5495)
!5495 = distinct !DILocation(line: 1905, column: 1, scope: !5446, inlinedAt: !5493)
!5496 = !DILocation(line: 0, scope: !5428, inlinedAt: !5497)
!5497 = distinct !DILocation(line: 1909, column: 9, scope: !5458, inlinedAt: !5495)
!5498 = !DILocation(line: 1224, column: 39, scope: !5428, inlinedAt: !5497)
!5499 = !DILocation(line: 1224, column: 47, scope: !5428, inlinedAt: !5497)
!5500 = !DILocation(line: 1224, column: 22, scope: !5428, inlinedAt: !5497)
!5501 = !DILocation(line: 1909, column: 9, scope: !5459, inlinedAt: !5495)
!5502 = !DILocation(line: 0, scope: !5465, inlinedAt: !5503)
!5503 = distinct !DILocation(line: 1910, column: 47, scope: !5469, inlinedAt: !5495)
!5504 = !DILocation(line: 1303, column: 34, scope: !5465, inlinedAt: !5503)
!5505 = !DILocation(line: 1548, column: 57, scope: !5472, inlinedAt: !5506)
!5506 = distinct !DILocation(line: 1910, column: 9, scope: !5478, inlinedAt: !5495)
!5507 = !DILocation(line: 1788, column: 55, scope: !5480, inlinedAt: !5508)
!5508 = distinct !DILocation(line: 1549, column: 14, scope: !5472, inlinedAt: !5506)
!5509 = !DILocation(line: 230, column: 65, scope: !4731, inlinedAt: !5510)
!5510 = distinct !DILocation(line: 1789, column: 10, scope: !5480, inlinedAt: !5508)
!5511 = !DILocation(line: 234, column: 3, scope: !4731, inlinedAt: !5510)
!5512 = !DILocation(line: 1910, column: 9, scope: !5458, inlinedAt: !5495)
!5513 = !DILocation(line: 1367, column: 1, scope: !5514)
!5514 = !DILexicalBlockFile(scope: !5180, file: !5181, discriminator: 3)
!5515 = !DILocation(line: 1356, column: 17, scope: !5180)
!5516 = !DILocation(line: 1357, column: 14, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5180, file: !5181, line: 1357, column: 9)
!5518 = !DILocation(line: 1357, column: 9, scope: !5180)
!5519 = !DILocation(line: 0, scope: !5226, inlinedAt: !5520)
!5520 = distinct !DILocation(line: 1359, column: 26, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !5181, line: 1359, column: 13)
!5522 = distinct !DILexicalBlock(scope: !5517, file: !5181, line: 1358, column: 5)
!5523 = !DILocation(line: 223, column: 39, scope: !5226, inlinedAt: !5520)
!5524 = !DILocation(line: 223, column: 55, scope: !5226, inlinedAt: !5520)
!5525 = !DILocation(line: 224, column: 14, scope: !5226, inlinedAt: !5520)
!5526 = !DILocation(line: 1359, column: 44, scope: !5521)
!5527 = !DILocation(line: 1359, column: 13, scope: !5522)
!5528 = !DILocalVariable(name: "this", arg: 1, scope: !5529, type: !5149, flags: DIFlagArtificial | DIFlagObjectPointer)
!5529 = distinct !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !19, file: !18, line: 509, type: !272, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !275, variables: !5530)
!5530 = !{!5528, !5531, !5532}
!5531 = !DILocalVariable(name: "__wide", arg: 2, scope: !5529, file: !18, line: 509, type: !64)
!5532 = !DILocalVariable(name: "__r", scope: !5529, file: !18, line: 511, type: !64)
!5533 = !DILocation(line: 0, scope: !5529, inlinedAt: !5534)
!5534 = distinct !DILocation(line: 1365, column: 11, scope: !5180)
!5535 = !DILocation(line: 509, column: 28, scope: !5529, inlinedAt: !5534)
!5536 = !DILocation(line: 512, column: 14, scope: !5529, inlinedAt: !5534)
!5537 = !DILocation(line: 1366, column: 5, scope: !5180)
!5538 = !DILocation(line: 1367, column: 1, scope: !5539)
!5539 = !DILexicalBlockFile(scope: !5180, file: !5181, discriminator: 2)
!5540 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !4427, file: !2190, line: 356, type: !4533, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4536, declaration: !4540, variables: !5541)
!5541 = !{!5542, !5543, !5544, !5547, !5692}
!5542 = !DILocalVariable(name: "this", arg: 1, scope: !5540, type: !4543, flags: DIFlagArtificial | DIFlagObjectPointer)
!5543 = !DILocalVariable(name: "__f", arg: 2, scope: !5540, file: !2190, line: 356, type: !4535)
!5544 = !DILocalVariable(name: "__tsp", scope: !5545, file: !2190, line: 359, type: !5546)
!5545 = distinct !DILexicalBlock(scope: !5540, file: !2190, line: 357, column: 1)
!5546 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !2190, line: 358, baseType: !2179)
!5547 = !DILocalVariable(name: "__p", scope: !5545, file: !2190, line: 361, type: !5548)
!5548 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !332, line: 2334, size: 64, elements: !5549, templateParams: !5664, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!5549 = !{!5550, !5633, !5638, !5642, !5645, !5648, !5658, !5669, !5670, !5675, !5680, !5683, !5686, !5689}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !5548, file: !332, line: 2344, baseType: !5551, size: 64)
!5551 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !332, line: 2144, size: 64, elements: !5552, templateParams: !5630, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!5552 = !{!5553, !5576, !5611, !5615, !5620, !5623, !5626}
!5553 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5551, baseType: !5554)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !7, file: !332, line: 2076, size: 64, elements: !5555, templateParams: !5574, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!5555 = !{!5556, !5557, !5561, !5566}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !5554, file: !332, line: 2105, baseType: !2167, size: 64, flags: DIFlagPrivate)
!5557 = !DISubprogram(name: "__compressed_pair_elem", scope: !5554, file: !332, line: 2082, type: !5558, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{null, !5560}
!5560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5561 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !5554, file: !332, line: 2101, type: !5562, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!5564, !5560}
!5564 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !5554, file: !332, line: 2078, baseType: !5565)
!5565 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2167, size: 64)
!5566 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !5554, file: !332, line: 2102, type: !5567, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!5569, !5572}
!5569 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !5554, file: !332, line: 2079, baseType: !5570)
!5570 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5571, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2167)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5554)
!5574 = !{!5575, !538, !539}
!5575 = !DITemplateTypeParameter(name: "_Tp", type: !2167)
!5576 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5551, baseType: !5577)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !7, file: !332, line: 2109, size: 8, elements: !5578, templateParams: !5609, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!5578 = !{!5579, !5593, !5597, !5602}
!5579 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5577, baseType: !5580, flags: DIFlagPrivate)
!5580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !332, line: 2253, size: 8, elements: !5581, templateParams: !5591, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!5581 = !{!5582, !5586}
!5582 = !DISubprogram(name: "default_delete", scope: !5580, file: !332, line: 2257, type: !5583, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !5585}
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5586 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !5580, file: !332, line: 2267, type: !5587, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{null, !5589, !2167}
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5580)
!5591 = !{!5592}
!5592 = !DITemplateTypeParameter(name: "_Tp", type: !2168)
!5593 = !DISubprogram(name: "__compressed_pair_elem", scope: !5577, file: !332, line: 2116, type: !5594, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{null, !5596}
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5597 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !5577, file: !332, line: 2136, type: !5598, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!5600, !5596}
!5600 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !5577, file: !332, line: 2111, baseType: !5601)
!5601 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5580, size: 64)
!5602 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !5577, file: !332, line: 2137, type: !5603, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!5605, !5607}
!5605 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !5577, file: !332, line: 2112, baseType: !5606)
!5606 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5590, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5577)
!5609 = !{!5610, !562, !563}
!5610 = !DITemplateTypeParameter(name: "_Tp", type: !5580)
!5611 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !5551, file: !332, line: 2212, type: !5612, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!5564, !5614}
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5615 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !5551, file: !332, line: 2217, type: !5616, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!5569, !5618}
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5551)
!5620 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !5551, file: !332, line: 2222, type: !5621, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!5600, !5614}
!5623 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !5551, file: !332, line: 2227, type: !5624, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!5605, !5618}
!5626 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !5551, file: !332, line: 2232, type: !5627, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{null, !5614, !5629}
!5629 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5551, size: 64)
!5630 = !{!5631, !5632}
!5631 = !DITemplateTypeParameter(name: "_T1", type: !2167)
!5632 = !DITemplateTypeParameter(name: "_T2", type: !5580)
!5633 = !DISubprogram(name: "unique_ptr", scope: !5548, file: !332, line: 2427, type: !5634, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{null, !5636, !5637}
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5637 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5548, size: 64)
!5638 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !5548, file: !332, line: 2450, type: !5639, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!5641, !5636, !5637}
!5641 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5548, size: 64)
!5642 = !DISubprogram(name: "~unique_ptr", scope: !5548, file: !332, line: 2539, type: !5643, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{null, !5636}
!5645 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !5548, file: !332, line: 2542, type: !5646, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!5641, !5636, !2665}
!5648 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !5548, file: !332, line: 2549, type: !5649, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!5651, !5656}
!5651 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5652, file: !426, line: 1084, baseType: !5653)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !426, line: 1083, size: 8, elements: !357, templateParams: !5591, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5653 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5654, file: !426, line: 1081, baseType: !2833)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !7, file: !426, line: 1081, size: 8, elements: !357, templateParams: !5655, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!5655 = !{!5592, !227}
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5548)
!5658 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !5548, file: !332, line: 2553, type: !5659, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5659 = !DISubroutineType(types: !5660)
!5660 = !{!5661, !5656}
!5661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !5548, file: !332, line: 2338, baseType: !5662)
!5662 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5663, file: !332, line: 1031, baseType: !5666)
!5663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !332, line: 1029, size: 8, elements: !357, templateParams: !5664, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!5664 = !{!5592, !5665}
!5665 = !DITemplateTypeParameter(name: "_Dp", type: !5580)
!5666 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5667, file: !332, line: 1023, baseType: !2167)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !404, file: !332, line: 1021, size: 8, elements: !357, templateParams: !5668, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!5668 = !{!5592, !5665, !176}
!5669 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !5548, file: !332, line: 2557, type: !5659, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5670 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !5548, file: !332, line: 2561, type: !5671, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!5673, !5636}
!5673 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5674, size: 64)
!5674 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !5548, file: !332, line: 2337, baseType: !5580)
!5675 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !5548, file: !332, line: 2565, type: !5676, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!5678, !5656}
!5678 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5679, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5674)
!5680 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !5548, file: !332, line: 2569, type: !5681, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!104, !5656}
!5683 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !5548, file: !332, line: 2574, type: !5684, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!5661, !5636}
!5686 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !5548, file: !332, line: 2581, type: !5687, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{null, !5636, !5661}
!5689 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !5548, file: !332, line: 2589, type: !5690, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{null, !5636, !5641}
!5692 = !DILocalVariable(name: "__ec", scope: !5545, file: !2190, line: 365, type: !26)
!5693 = !DILocation(line: 0, scope: !5540)
!5694 = !DILocation(line: 356, column: 22, scope: !5540)
!5695 = !DILocation(line: 359, column: 18, scope: !5545)
!5696 = !DILocation(line: 359, column: 22, scope: !5545)
!5697 = !DILocation(line: 359, column: 12, scope: !5545)
!5698 = !DILocation(line: 362, column: 13, scope: !5545)
!5699 = !DILocation(line: 363, column: 21, scope: !5700)
!5700 = !DILexicalBlockFile(scope: !5545, file: !2190, discriminator: 1)
!5701 = !DILocalVariable(name: "__u", arg: 2, scope: !5702, file: !2169, line: 728, type: !2654)
!5702 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !2168, file: !2169, line: 728, type: !5703, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5706, declaration: !5709, variables: !5710)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{null, !2823, !2654, !5705}
!5705 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2747, size: 64)
!5706 = !{!5707, !5708, !176}
!5707 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !2816)
!5708 = !DITemplateValueParameter(name: "_PackIsTuple", type: !104, value: i8 0)
!5709 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !2168, file: !2169, line: 728, type: !5703, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !5706)
!5710 = !{!5711, !5701, !5712}
!5711 = !DILocalVariable(name: "this", arg: 1, scope: !5702, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5712 = !DILocalVariable(name: "__u", arg: 3, scope: !5702, file: !2169, line: 728, type: !5705)
!5713 = !DILocation(line: 728, column: 24, scope: !5702, inlinedAt: !5714)
!5714 = distinct !DILocation(line: 362, column: 17, scope: !5715)
!5715 = !DILexicalBlockFile(scope: !5545, file: !2190, discriminator: 2)
!5716 = !DILocalVariable(name: "__u", arg: 2, scope: !5717, file: !2169, line: 728, type: !2654)
!5717 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !2168, file: !2169, line: 728, type: !5703, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5706, declaration: !5709, variables: !5718)
!5718 = !{!5719, !5716, !5720}
!5719 = !DILocalVariable(name: "this", arg: 1, scope: !5717, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5720 = !DILocalVariable(name: "__u", arg: 3, scope: !5717, file: !2169, line: 728, type: !5705)
!5721 = !DILocation(line: 728, column: 24, scope: !5717, inlinedAt: !5722)
!5722 = distinct !DILocation(line: 742, column: 50, scope: !5702, inlinedAt: !5714)
!5723 = !DILocalVariable(name: "__u", arg: 6, scope: !5724, file: !2169, line: 382, type: !2654)
!5724 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !2173, file: !2169, line: 380, type: !5725, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5734, declaration: !5739, variables: !5740)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{null, !2786, !2808, !5727, !5728, !5731, !2654, !5705}
!5727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2809, line: 253, size: 8, elements: !357, templateParams: !2868, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!5728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !7, file: !2809, line: 90, size: 8, elements: !357, templateParams: !5729, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!5729 = !{!5730}
!5730 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !357)
!5731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !7, file: !2809, line: 253, size: 8, elements: !357, templateParams: !5732, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!5732 = !{!5733}
!5733 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !357)
!5734 = !{!5735, !5736, !5737, !5738, !5707}
!5735 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !2812)
!5736 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !2816)
!5737 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !357)
!5738 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !357)
!5739 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !2173, file: !2169, line: 380, type: !5725, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5734)
!5740 = !{!5741, !5743, !5744, !5745, !5746, !5723, !5747}
!5741 = !DILocalVariable(name: "this", arg: 1, scope: !5724, type: !5742, flags: DIFlagArtificial | DIFlagObjectPointer)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!5743 = !DILocalVariable(arg: 2, scope: !5724, file: !2169, line: 380, type: !2808)
!5744 = !DILocalVariable(arg: 3, scope: !5724, file: !2169, line: 380, type: !5727)
!5745 = !DILocalVariable(arg: 4, scope: !5724, file: !2169, line: 381, type: !5728)
!5746 = !DILocalVariable(arg: 5, scope: !5724, file: !2169, line: 381, type: !5731)
!5747 = !DILocalVariable(name: "__u", arg: 7, scope: !5724, file: !2169, line: 382, type: !5705)
!5748 = !DILocation(line: 382, column: 31, scope: !5724, inlinedAt: !5749)
!5749 = distinct !DILocation(line: 738, column: 15, scope: !5717, inlinedAt: !5722)
!5750 = !DILocalVariable(name: "__u", arg: 6, scope: !5751, file: !2169, line: 382, type: !2654)
!5751 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !2173, file: !2169, line: 380, type: !5725, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5734, declaration: !5739, variables: !5752)
!5752 = !{!5753, !5754, !5755, !5756, !5757, !5750, !5758}
!5753 = !DILocalVariable(name: "this", arg: 1, scope: !5751, type: !5742, flags: DIFlagArtificial | DIFlagObjectPointer)
!5754 = !DILocalVariable(arg: 2, scope: !5751, file: !2169, line: 380, type: !2808)
!5755 = !DILocalVariable(arg: 3, scope: !5751, file: !2169, line: 380, type: !5727)
!5756 = !DILocalVariable(arg: 4, scope: !5751, file: !2169, line: 381, type: !5728)
!5757 = !DILocalVariable(arg: 5, scope: !5751, file: !2169, line: 381, type: !5731)
!5758 = !DILocalVariable(name: "__u", arg: 7, scope: !5751, file: !2169, line: 382, type: !5705)
!5759 = !DILocation(line: 382, column: 31, scope: !5751, inlinedAt: !5760)
!5760 = distinct !DILocation(line: 387, column: 13, scope: !5724, inlinedAt: !5749)
!5761 = !DILocalVariable(name: "__t", arg: 2, scope: !5762, file: !2169, line: 225, type: !2654)
!5762 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !2176, file: !2169, line: 225, type: !5763, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5765, declaration: !5767, variables: !5768)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{null, !2716, !2654}
!5765 = !{!5766, !4539}
!5766 = !DITemplateTypeParameter(name: "_Tp", type: !2179)
!5767 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !2176, file: !2169, line: 225, type: !5763, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5765)
!5768 = !{!5769, !5761}
!5769 = !DILocalVariable(name: "this", arg: 1, scope: !5762, type: !5770, flags: DIFlagArtificial | DIFlagObjectPointer)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!5771 = !DILocation(line: 225, column: 37, scope: !5762, inlinedAt: !5772)
!5772 = distinct !DILocation(line: 385, column: 13, scope: !5773, inlinedAt: !5760)
!5773 = !DILexicalBlockFile(scope: !5751, file: !2169, discriminator: 1)
!5774 = !DILocalVariable(name: "__u", arg: 2, scope: !5775, file: !332, line: 2427, type: !2654)
!5775 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !2179, file: !332, line: 2427, type: !2651, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2650, variables: !5776)
!5776 = !{!5777, !5774}
!5777 = !DILocalVariable(name: "this", arg: 1, scope: !5775, type: !5778, flags: DIFlagArtificial | DIFlagObjectPointer)
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!5779 = !DILocation(line: 2427, column: 27, scope: !5775, inlinedAt: !5780)
!5780 = distinct !DILocation(line: 226, column: 15, scope: !5781, inlinedAt: !5772)
!5781 = !DILexicalBlockFile(scope: !5762, file: !2169, discriminator: 1)
!5782 = !DILocalVariable(name: "__u", arg: 2, scope: !5783, file: !332, line: 2427, type: !2654)
!5783 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !2179, file: !332, line: 2427, type: !2651, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2650, variables: !5784)
!5784 = !{!5785, !5782}
!5785 = !DILocalVariable(name: "this", arg: 1, scope: !5783, type: !5778, flags: DIFlagArtificial | DIFlagObjectPointer)
!5786 = !DILocation(line: 2427, column: 27, scope: !5783, inlinedAt: !5787)
!5787 = distinct !DILocation(line: 2428, column: 80, scope: !5775, inlinedAt: !5780)
!5788 = !DILocalVariable(name: "__t1", arg: 2, scope: !5789, file: !332, line: 2183, type: !5792)
!5789 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !2182, file: !332, line: 2183, type: !5790, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5794, declaration: !5797, variables: !5798)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{null, !2631, !5792, !5793}
!5792 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2188, size: 64)
!5793 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2597, size: 64)
!5794 = !{!5795, !5796}
!5795 = !DITemplateTypeParameter(name: "_U1", type: !2188)
!5796 = !DITemplateTypeParameter(name: "_U2", type: !2597)
!5797 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !2182, file: !332, line: 2183, type: !5790, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !5794)
!5798 = !{!5799, !5788, !5801}
!5799 = !DILocalVariable(name: "this", arg: 1, scope: !5789, type: !5800, flags: DIFlagArtificial | DIFlagObjectPointer)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!5801 = !DILocalVariable(name: "__t2", arg: 3, scope: !5789, file: !332, line: 2183, type: !5793)
!5802 = !DILocation(line: 2183, column: 27, scope: !5789, inlinedAt: !5803)
!5803 = distinct !DILocation(line: 2428, column: 9, scope: !5783, inlinedAt: !5787)
!5804 = !DILocalVariable(name: "__t1", arg: 2, scope: !5805, file: !332, line: 2183, type: !5792)
!5805 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !2182, file: !332, line: 2183, type: !5790, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5794, declaration: !5797, variables: !5806)
!5806 = !{!5807, !5804, !5808}
!5807 = !DILocalVariable(name: "this", arg: 1, scope: !5805, type: !5800, flags: DIFlagArtificial | DIFlagObjectPointer)
!5808 = !DILocalVariable(name: "__t2", arg: 3, scope: !5805, file: !332, line: 2183, type: !5793)
!5809 = !DILocation(line: 2183, column: 27, scope: !5805, inlinedAt: !5810)
!5810 = distinct !DILocation(line: 2184, column: 74, scope: !5789, inlinedAt: !5803)
!5811 = !DILocalVariable(name: "__u", arg: 2, scope: !5812, file: !332, line: 2088, type: !5792)
!5812 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !2185, file: !332, line: 2088, type: !5813, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5815, declaration: !5817, variables: !5818)
!5813 = !DISubroutineType(types: !5814)
!5814 = !{null, !2577, !5792}
!5815 = !{!5816, !4539}
!5816 = !DITemplateTypeParameter(name: "_Up", type: !2188)
!5817 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !2185, file: !332, line: 2088, type: !5813, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5815)
!5818 = !{!5819, !5811}
!5819 = !DILocalVariable(name: "this", arg: 1, scope: !5812, type: !5820, flags: DIFlagArtificial | DIFlagObjectPointer)
!5820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!5821 = !DILocation(line: 2088, column: 32, scope: !5812, inlinedAt: !5822)
!5822 = distinct !DILocation(line: 2184, column: 9, scope: !5823, inlinedAt: !5810)
!5823 = !DILexicalBlockFile(scope: !5805, file: !332, discriminator: 1)
!5824 = !DILocation(line: 2089, column: 9, scope: !5812, inlinedAt: !5822)
!5825 = !{!5826, !4571, i64 0}
!5826 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !4571, i64 0}
!5827 = !DILocation(line: 387, column: 13, scope: !5751, inlinedAt: !5760)
!5828 = !DILocalVariable(name: "__t", arg: 2, scope: !5829, file: !2169, line: 225, type: !5705)
!5829 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !2744, file: !2169, line: 225, type: !5830, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5832, declaration: !5834, variables: !5835)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{null, !2754, !5705}
!5832 = !{!5833, !4539}
!5833 = !DITemplateTypeParameter(name: "_Tp", type: !2747)
!5834 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !2744, file: !2169, line: 225, type: !5830, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5832)
!5835 = !{!5836, !5828}
!5836 = !DILocalVariable(name: "this", arg: 1, scope: !5829, type: !5837, flags: DIFlagArtificial | DIFlagObjectPointer)
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!5838 = !DILocation(line: 225, column: 37, scope: !5829, inlinedAt: !5839)
!5839 = distinct !DILocation(line: 385, column: 13, scope: !5840, inlinedAt: !5760)
!5840 = !DILexicalBlockFile(scope: !5751, file: !2169, discriminator: 3)
!5841 = !DILocation(line: 226, column: 15, scope: !5829, inlinedAt: !5839)
!5842 = !{!5843, !4571, i64 0}
!5843 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !4571, i64 0}
!5844 = !DILocation(line: 361, column: 28, scope: !5545)
!5845 = !DILocation(line: 365, column: 40, scope: !5545)
!5846 = !DILocalVariable(name: "__t", arg: 1, scope: !5847, file: !2218, line: 321, type: !5850)
!5847 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !7, file: !2218, line: 321, type: !5848, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5854)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!26, !5850, !5851, !72}
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{!72, !72}
!5854 = !{!5846, !5855, !5856}
!5855 = !DILocalVariable(name: "__func", arg: 2, scope: !5847, file: !2218, line: 321, type: !5851)
!5856 = !DILocalVariable(name: "__arg", arg: 3, scope: !5847, file: !2218, line: 322, type: !72)
!5857 = !DILocation(line: 321, column: 47, scope: !5847, inlinedAt: !5858)
!5858 = distinct !DILocation(line: 365, column: 16, scope: !5545)
!5859 = !DILocation(line: 321, column: 60, scope: !5847, inlinedAt: !5858)
!5860 = !DILocation(line: 322, column: 34, scope: !5847, inlinedAt: !5858)
!5861 = !DILocation(line: 324, column: 10, scope: !5847, inlinedAt: !5858)
!5862 = !DILocation(line: 365, column: 9, scope: !5545)
!5863 = !DILocation(line: 366, column: 14, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5545, file: !2190, line: 366, column: 9)
!5865 = !DILocation(line: 366, column: 9, scope: !5545)
!5866 = !DILocalVariable(name: "this", arg: 1, scope: !5867, type: !5869, flags: DIFlagArtificial | DIFlagObjectPointer)
!5867 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !5548, file: !332, line: 2539, type: !5643, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5642, variables: !5868)
!5868 = !{!5866}
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5870 = !DILocation(line: 0, scope: !5867, inlinedAt: !5871)
!5871 = distinct !DILocation(line: 370, column: 1, scope: !5872)
!5872 = !DILexicalBlockFile(scope: !5540, file: !2190, discriminator: 5)
!5873 = !DILocalVariable(name: "this", arg: 1, scope: !5874, type: !5869, flags: DIFlagArtificial | DIFlagObjectPointer)
!5874 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !5548, file: !332, line: 2539, type: !5643, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5642, variables: !5875)
!5875 = !{!5873}
!5876 = !DILocation(line: 0, scope: !5874, inlinedAt: !5877)
!5877 = distinct !DILocation(line: 2539, column: 17, scope: !5867, inlinedAt: !5871)
!5878 = !DILocalVariable(name: "this", arg: 1, scope: !5879, type: !5869, flags: DIFlagArtificial | DIFlagObjectPointer)
!5879 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !5548, file: !332, line: 2581, type: !5687, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5686, variables: !5880)
!5880 = !{!5878, !5881, !5882}
!5881 = !DILocalVariable(name: "__p", arg: 2, scope: !5879, file: !332, line: 2581, type: !5661)
!5882 = !DILocalVariable(name: "__tmp", scope: !5879, file: !332, line: 2582, type: !5661)
!5883 = !DILocation(line: 0, scope: !5879, inlinedAt: !5884)
!5884 = distinct !DILocation(line: 2539, column: 19, scope: !5885, inlinedAt: !5877)
!5885 = distinct !DILexicalBlock(scope: !5874, file: !332, line: 2539, column: 17)
!5886 = !DILocation(line: 2581, column: 22, scope: !5879, inlinedAt: !5884)
!5887 = !DILocation(line: 2582, column: 13, scope: !5879, inlinedAt: !5884)
!5888 = !DILocalVariable(name: "this", arg: 1, scope: !5889, type: !5778, flags: DIFlagArtificial | DIFlagObjectPointer)
!5889 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !2179, file: !332, line: 2539, type: !2660, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2659, variables: !5890)
!5890 = !{!5888}
!5891 = !DILocation(line: 0, scope: !5889, inlinedAt: !5892)
!5892 = distinct !DILocation(line: 370, column: 1, scope: !5893)
!5893 = !DILexicalBlockFile(scope: !5540, file: !2190, discriminator: 8)
!5894 = !DILocalVariable(name: "this", arg: 1, scope: !5895, type: !5778, flags: DIFlagArtificial | DIFlagObjectPointer)
!5895 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !2179, file: !332, line: 2539, type: !2660, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2659, variables: !5896)
!5896 = !{!5894}
!5897 = !DILocation(line: 0, scope: !5895, inlinedAt: !5898)
!5898 = distinct !DILocation(line: 2539, column: 17, scope: !5889, inlinedAt: !5892)
!5899 = !DILocalVariable(name: "this", arg: 1, scope: !5900, type: !5778, flags: DIFlagArtificial | DIFlagObjectPointer)
!5900 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !2179, file: !332, line: 2581, type: !2707, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2706, variables: !5901)
!5901 = !{!5899, !5902, !5903}
!5902 = !DILocalVariable(name: "__p", arg: 2, scope: !5900, file: !332, line: 2581, type: !2681)
!5903 = !DILocalVariable(name: "__tmp", scope: !5900, file: !332, line: 2582, type: !2681)
!5904 = !DILocation(line: 0, scope: !5900, inlinedAt: !5905)
!5905 = distinct !DILocation(line: 2539, column: 19, scope: !5906, inlinedAt: !5898)
!5906 = distinct !DILexicalBlock(scope: !5895, file: !332, line: 2539, column: 17)
!5907 = !DILocation(line: 2581, column: 22, scope: !5900, inlinedAt: !5905)
!5908 = !DILocation(line: 2582, column: 13, scope: !5900, inlinedAt: !5905)
!5909 = !DILocation(line: 370, column: 1, scope: !5872)
!5910 = !DILocation(line: 370, column: 1, scope: !5545)
!5911 = !DILocation(line: 359, column: 18, scope: !5715)
!5912 = !DILocation(line: 370, column: 1, scope: !5913)
!5913 = !DILexicalBlockFile(scope: !5545, file: !2190, discriminator: 3)
!5914 = !DILocation(line: 369, column: 9, scope: !5864)
!5915 = !DILocation(line: 369, column: 9, scope: !5916)
!5916 = !DILexicalBlockFile(scope: !5864, file: !2190, discriminator: 1)
!5917 = !DILocation(line: 370, column: 1, scope: !5918)
!5918 = !DILexicalBlockFile(scope: !5864, file: !2190, discriminator: 4)
!5919 = !DILocation(line: 370, column: 1, scope: !5920)
!5920 = !DILexicalBlockFile(scope: !5540, file: !2190, discriminator: 4)
!5921 = !DILocation(line: 0, scope: !5867, inlinedAt: !5922)
!5922 = distinct !DILocation(line: 370, column: 1, scope: !5923)
!5923 = !DILexicalBlockFile(scope: !5540, file: !2190, discriminator: 6)
!5924 = !DILocation(line: 0, scope: !5874, inlinedAt: !5925)
!5925 = distinct !DILocation(line: 2539, column: 17, scope: !5867, inlinedAt: !5922)
!5926 = !DILocation(line: 0, scope: !5879, inlinedAt: !5927)
!5927 = distinct !DILocation(line: 2539, column: 19, scope: !5885, inlinedAt: !5925)
!5928 = !DILocation(line: 2581, column: 22, scope: !5879, inlinedAt: !5927)
!5929 = !DILocation(line: 2581, column: 22, scope: !5900, inlinedAt: !5930)
!5930 = distinct !DILocation(line: 2539, column: 19, scope: !5906, inlinedAt: !5931)
!5931 = distinct !DILocation(line: 2539, column: 17, scope: !5889, inlinedAt: !5932)
!5932 = distinct !DILocation(line: 170, column: 7, scope: !5933, inlinedAt: !5938)
!5933 = distinct !DILexicalBlock(scope: !5934, file: !2169, line: 170, column: 7)
!5934 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !2176, file: !2169, line: 170, type: !2720, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5935, variables: !5936)
!5935 = !DISubprogram(name: "~__tuple_leaf", scope: !2176, type: !2720, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!5936 = !{!5937}
!5937 = !DILocalVariable(name: "this", arg: 1, scope: !5934, type: !5770, flags: DIFlagArtificial | DIFlagObjectPointer)
!5938 = distinct !DILocation(line: 369, column: 37, scope: !5939, inlinedAt: !5944)
!5939 = distinct !DILexicalBlock(scope: !5940, file: !2169, line: 369, column: 37)
!5940 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !2173, file: !2169, line: 369, type: !2784, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5941, variables: !5942)
!5941 = !DISubprogram(name: "~__tuple_impl", scope: !2173, type: !2784, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!5942 = !{!5943}
!5943 = !DILocalVariable(name: "this", arg: 1, scope: !5940, type: !5742, flags: DIFlagArtificial | DIFlagObjectPointer)
!5944 = distinct !DILocation(line: 369, column: 37, scope: !5945, inlinedAt: !5948)
!5945 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !2173, file: !2169, line: 369, type: !2784, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5941, variables: !5946)
!5946 = !{!5947}
!5947 = !DILocalVariable(name: "this", arg: 1, scope: !5945, type: !5742, flags: DIFlagArtificial | DIFlagObjectPointer)
!5948 = distinct !DILocation(line: 474, column: 28, scope: !5949, inlinedAt: !5956)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !2169, line: 474, column: 28)
!5950 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !2168, file: !2169, line: 474, type: !5951, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5953, variables: !5954)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{null, !2823}
!5953 = !DISubprogram(name: "~tuple", scope: !2168, type: !5951, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!5954 = !{!5955}
!5955 = !DILocalVariable(name: "this", arg: 1, scope: !5950, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5956 = distinct !DILocation(line: 474, column: 28, scope: !5957, inlinedAt: !5960)
!5957 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !2168, file: !2169, line: 474, type: !5951, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5953, variables: !5958)
!5958 = !{!5959}
!5959 = !DILocalVariable(name: "this", arg: 1, scope: !5957, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5960 = distinct !DILocation(line: 2272, column: 5, scope: !5961, inlinedAt: !5967)
!5961 = !DILexicalBlockFile(scope: !5962, file: !332, discriminator: 1)
!5962 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !5580, file: !332, line: 2267, type: !5587, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5586, variables: !5963)
!5963 = !{!5964, !5966}
!5964 = !DILocalVariable(name: "this", arg: 1, scope: !5962, type: !5965, flags: DIFlagArtificial | DIFlagObjectPointer)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5966 = !DILocalVariable(name: "__ptr", arg: 2, scope: !5962, file: !332, line: 2267, type: !2167)
!5967 = distinct !DILocation(line: 2585, column: 7, scope: !5968, inlinedAt: !5927)
!5968 = !DILexicalBlockFile(scope: !5969, file: !332, discriminator: 1)
!5969 = distinct !DILexicalBlock(scope: !5879, file: !332, line: 2584, column: 9)
!5970 = !DILocation(line: 2101, column: 40, scope: !5971, inlinedAt: !5974)
!5971 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2185, file: !332, line: 2101, type: !2579, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2578, variables: !5972)
!5972 = !{!5973}
!5973 = !DILocalVariable(name: "this", arg: 1, scope: !5971, type: !5820, flags: DIFlagArtificial | DIFlagObjectPointer)
!5974 = distinct !DILocation(line: 2213, column: 40, scope: !5975, inlinedAt: !5978)
!5975 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2182, file: !332, line: 2212, type: !2629, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2628, variables: !5976)
!5976 = !{!5977}
!5977 = !DILocalVariable(name: "this", arg: 1, scope: !5975, type: !5800, flags: DIFlagArtificial | DIFlagObjectPointer)
!5978 = distinct !DILocation(line: 2582, column: 28, scope: !5900, inlinedAt: !5930)
!5979 = !DILocation(line: 2582, column: 28, scope: !5900, inlinedAt: !5930)
!5980 = !DILocation(line: 2582, column: 13, scope: !5900, inlinedAt: !5930)
!5981 = !DILocation(line: 2583, column: 20, scope: !5900, inlinedAt: !5930)
!5982 = !DILocation(line: 2584, column: 9, scope: !5983, inlinedAt: !5930)
!5983 = distinct !DILexicalBlock(scope: !5900, file: !332, line: 2584, column: 9)
!5984 = !DILocation(line: 2584, column: 9, scope: !5900, inlinedAt: !5930)
!5985 = !DILocalVariable(name: "__ptr", arg: 2, scope: !5986, file: !332, line: 2267, type: !2188)
!5986 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2597, file: !332, line: 2267, type: !2604, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2603, variables: !5987)
!5987 = !{!5988, !5985}
!5988 = !DILocalVariable(name: "this", arg: 1, scope: !5986, type: !5989, flags: DIFlagArtificial | DIFlagObjectPointer)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!5990 = !DILocation(line: 2267, column: 50, scope: !5986, inlinedAt: !5991)
!5991 = distinct !DILocation(line: 2585, column: 7, scope: !5992, inlinedAt: !5930)
!5992 = !DILexicalBlockFile(scope: !5983, file: !332, discriminator: 1)
!5993 = !DILocation(line: 2272, column: 5, scope: !5994, inlinedAt: !5991)
!5994 = !DILexicalBlockFile(scope: !5986, file: !332, discriminator: 1)
!5995 = !DILocation(line: 2272, column: 5, scope: !5996, inlinedAt: !5991)
!5996 = !DILexicalBlockFile(scope: !5986, file: !332, discriminator: 2)
!5997 = !DILocation(line: 2585, column: 7, scope: !5983, inlinedAt: !5930)
!5998 = !DILocation(line: 2272, column: 5, scope: !5999, inlinedAt: !5967)
!5999 = !DILexicalBlockFile(scope: !5962, file: !332, discriminator: 2)
!6000 = !DILocation(line: 0, scope: !5889, inlinedAt: !6001)
!6001 = distinct !DILocation(line: 370, column: 1, scope: !6002)
!6002 = !DILexicalBlockFile(scope: !5540, file: !2190, discriminator: 7)
!6003 = !DILocation(line: 0, scope: !5895, inlinedAt: !6004)
!6004 = distinct !DILocation(line: 2539, column: 17, scope: !5889, inlinedAt: !6001)
!6005 = !DILocation(line: 0, scope: !5900, inlinedAt: !6006)
!6006 = distinct !DILocation(line: 2539, column: 19, scope: !5906, inlinedAt: !6004)
!6007 = !DILocation(line: 2581, column: 22, scope: !5900, inlinedAt: !6006)
!6008 = !DILocation(line: 2582, column: 13, scope: !5900, inlinedAt: !6006)
!6009 = !DILocation(line: 2584, column: 9, scope: !5900, inlinedAt: !6006)
!6010 = !DILocation(line: 370, column: 1, scope: !5700)
!6011 = !DILocation(line: 2267, column: 50, scope: !5986, inlinedAt: !6012)
!6012 = distinct !DILocation(line: 2585, column: 7, scope: !5992, inlinedAt: !6006)
!6013 = !DILocation(line: 2272, column: 5, scope: !5994, inlinedAt: !6012)
!6014 = !DILocation(line: 2272, column: 5, scope: !5996, inlinedAt: !6012)
!6015 = !DILocation(line: 2585, column: 7, scope: !5983, inlinedAt: !6006)
!6016 = !DILocation(line: 359, column: 18, scope: !5913)
!6017 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !7, file: !2190, line: 343, type: !5852, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6018, variables: !6020)
!6018 = !{!6019}
!6019 = !DITemplateTypeParameter(name: "_Fp", type: !2168)
!6020 = !{!6021, !6022}
!6021 = !DILocalVariable(name: "__vp", arg: 1, scope: !6017, file: !2190, line: 343, type: !72)
!6022 = !DILocalVariable(name: "__p", scope: !6017, file: !2190, line: 346, type: !5548)
!6023 = !DILocation(line: 343, column: 28, scope: !6017)
!6024 = !DILocation(line: 346, column: 26, scope: !6017)
!6025 = !DILocation(line: 347, column: 5, scope: !6017)
!6026 = !DILocation(line: 2101, column: 40, scope: !5971, inlinedAt: !6027)
!6027 = distinct !DILocation(line: 2213, column: 40, scope: !5975, inlinedAt: !6028)
!6028 = distinct !DILocation(line: 2575, column: 26, scope: !6029, inlinedAt: !6033)
!6029 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !2179, file: !332, line: 2574, type: !2704, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2703, variables: !6030)
!6030 = !{!6031, !6032}
!6031 = !DILocalVariable(name: "this", arg: 1, scope: !6029, type: !5778, flags: DIFlagArtificial | DIFlagObjectPointer)
!6032 = !DILocalVariable(name: "__t", scope: !6029, file: !332, line: 2575, type: !2681)
!6033 = distinct !DILocation(line: 347, column: 59, scope: !6034)
!6034 = !DILexicalBlockFile(scope: !6017, file: !2190, discriminator: 3)
!6035 = !DILocation(line: 2575, column: 26, scope: !6029, inlinedAt: !6033)
!6036 = !DILocation(line: 2576, column: 20, scope: !6029, inlinedAt: !6033)
!6037 = !DILocalVariable(name: "this", arg: 1, scope: !6038, type: !6073, flags: DIFlagArtificial | DIFlagObjectPointer)
!6038 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !6039, file: !2190, line: 194, type: !6069, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !6068, variables: !6071)
!6039 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !7, file: !2190, line: 138, size: 64, elements: !6040, templateParams: !2608, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!6040 = !{!6041, !6046, !6050, !6055, !6059, !6060, !6061, !6066, !6067, !6068}
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !6039, file: !2190, line: 140, baseType: !6042, size: 64)
!6042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !7, file: !2218, line: 75, baseType: !6043)
!6043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !6044, line: 30, baseType: !6045)
!6044 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/csetest")
!6045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !2222, line: 112, baseType: !88)
!6046 = !DISubprogram(name: "__thread_specific_ptr", scope: !6039, file: !2190, line: 145, type: !6047, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!6047 = !DISubroutineType(types: !6048)
!6048 = !{null, !6049}
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!6050 = !DISubprogram(name: "__thread_specific_ptr", scope: !6039, file: !2190, line: 148, type: !6051, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true)
!6051 = !DISubroutineType(types: !6052)
!6052 = !{null, !6049, !6053}
!6053 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6054, size: 64)
!6054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6039)
!6055 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !6039, file: !2190, line: 149, type: !6056, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!6058, !6049, !6053}
!6058 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6039, size: 64)
!6059 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !6039, file: !2190, line: 151, type: !3536, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!6060 = !DISubprogram(name: "~__thread_specific_ptr", scope: !6039, file: !2190, line: 156, type: !6047, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6061 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !6039, file: !2190, line: 159, type: !6062, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!6064, !6065}
!6064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !6039, file: !2190, line: 154, baseType: !2188)
!6065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6054, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!6066 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !6039, file: !2190, line: 161, type: !6062, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6067 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !6039, file: !2190, line: 163, type: !6062, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6068 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !6039, file: !2190, line: 164, type: !6069, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{null, !6049, !6064}
!6071 = !{!6037, !6072}
!6072 = !DILocalVariable(name: "__p", arg: 2, scope: !6038, file: !2190, line: 164, type: !6064)
!6073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6074 = !DILocation(line: 0, scope: !6038, inlinedAt: !6075)
!6075 = distinct !DILocation(line: 347, column: 27, scope: !6076)
!6076 = !DILexicalBlockFile(scope: !6017, file: !2190, discriminator: 2)
!6077 = !DILocation(line: 198, column: 22, scope: !6038, inlinedAt: !6075)
!6078 = !{!6079, !4967, i64 0}
!6079 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !4967, i64 0}
!6080 = !DILocalVariable(name: "__key", arg: 1, scope: !6081, file: !2218, line: 385, type: !6042)
!6081 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !7, file: !2218, line: 385, type: !6082, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !6084)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!26, !6042, !72}
!6084 = !{!6080, !6085}
!6085 = !DILocalVariable(name: "__p", arg: 2, scope: !6081, file: !2218, line: 385, type: !72)
!6086 = !DILocation(line: 385, column: 39, scope: !6081, inlinedAt: !6087)
!6087 = distinct !DILocation(line: 198, column: 5, scope: !6038, inlinedAt: !6075)
!6088 = !DILocation(line: 385, column: 52, scope: !6081, inlinedAt: !6087)
!6089 = !DILocation(line: 387, column: 12, scope: !6081, inlinedAt: !6087)
!6090 = !DILocation(line: 270, column: 102, scope: !6091, inlinedAt: !6094)
!6091 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2744, file: !2169, line: 270, type: !2771, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2770, variables: !6092)
!6092 = !{!6093}
!6093 = !DILocalVariable(name: "this", arg: 1, scope: !6091, type: !5837, flags: DIFlagArtificial | DIFlagObjectPointer)
!6094 = distinct !DILocation(line: 951, column: 61, scope: !6095, inlinedAt: !6109)
!6095 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !2169, line: 948, type: !6096, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6106, variables: !6107)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{!6098, !2833}
!6098 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6099, size: 64)
!6099 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !6100, file: !2809, line: 463, baseType: !6102)
!6100 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2809, line: 460, size: 8, elements: !357, templateParams: !6101, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!6101 = !{!2781, !5592}
!6102 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !6103, file: !2809, line: 289, baseType: !2747)
!6103 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2809, line: 285, size: 8, elements: !357, templateParams: !6104, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!6104 = !{!2781, !6105}
!6105 = !DITemplateTypeParameter(name: "_Tp", type: !5727)
!6106 = !{!2781, !2815}
!6107 = !{!6108}
!6108 = !DILocalVariable(name: "__t", arg: 1, scope: !6095, file: !2169, line: 948, type: !2833)
!6109 = distinct !DILocation(line: 339, column: 26, scope: !6110, inlinedAt: !6120)
!6110 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !7, file: !2190, line: 337, type: !6111, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6113, variables: !6117)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{null, !2833, !5728}
!6113 = !{!6114, !6115, !4538, !6116}
!6114 = !DITemplateTypeParameter(name: "_TSp", type: !2179)
!6115 = !DITemplateTypeParameter(name: "_Fp", type: !2747)
!6116 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !357)
!6117 = !{!6118, !6119}
!6118 = !DILocalVariable(name: "__t", arg: 1, scope: !6110, file: !2190, line: 337, type: !2833)
!6119 = !DILocalVariable(arg: 2, scope: !6110, file: !2190, line: 337, type: !5728)
!6120 = distinct !DILocation(line: 349, column: 5, scope: !6121)
!6121 = !DILexicalBlockFile(scope: !6017, file: !2190, discriminator: 1)
!6122 = !DILocalVariable(name: "__f", arg: 1, scope: !6123, file: !426, line: 4322, type: !5705)
!6123 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !7, file: !426, line: 4322, type: !6124, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6126, variables: !6127)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{null, !5705}
!6126 = !{!6115, !4538}
!6127 = !{!6122}
!6128 = !DILocation(line: 4322, column: 16, scope: !6123, inlinedAt: !6129)
!6129 = distinct !DILocation(line: 339, column: 5, scope: !6130, inlinedAt: !6120)
!6130 = !DILexicalBlockFile(scope: !6110, file: !2190, discriminator: 2)
!6131 = !DILocation(line: 4323, column: 1, scope: !6123, inlinedAt: !6129)
!6132 = !DILocation(line: 4323, column: 1, scope: !6133, inlinedAt: !6129)
!6133 = !DILexicalBlockFile(scope: !6123, file: !426, discriminator: 1)
!6134 = !DILocation(line: 0, scope: !5867, inlinedAt: !6135)
!6135 = distinct !DILocation(line: 351, column: 1, scope: !6017)
!6136 = !DILocation(line: 0, scope: !5874, inlinedAt: !6137)
!6137 = distinct !DILocation(line: 2539, column: 17, scope: !5867, inlinedAt: !6135)
!6138 = !DILocation(line: 0, scope: !5879, inlinedAt: !6139)
!6139 = distinct !DILocation(line: 2539, column: 19, scope: !5885, inlinedAt: !6137)
!6140 = !DILocation(line: 2581, column: 22, scope: !5879, inlinedAt: !6139)
!6141 = !DILocation(line: 2581, column: 22, scope: !5900, inlinedAt: !6142)
!6142 = distinct !DILocation(line: 2539, column: 19, scope: !5906, inlinedAt: !6143)
!6143 = distinct !DILocation(line: 2539, column: 17, scope: !5889, inlinedAt: !6144)
!6144 = distinct !DILocation(line: 170, column: 7, scope: !5933, inlinedAt: !6145)
!6145 = distinct !DILocation(line: 369, column: 37, scope: !5939, inlinedAt: !6146)
!6146 = distinct !DILocation(line: 369, column: 37, scope: !5945, inlinedAt: !6147)
!6147 = distinct !DILocation(line: 474, column: 28, scope: !5949, inlinedAt: !6148)
!6148 = distinct !DILocation(line: 474, column: 28, scope: !5957, inlinedAt: !6149)
!6149 = distinct !DILocation(line: 2272, column: 5, scope: !5961, inlinedAt: !6150)
!6150 = distinct !DILocation(line: 2585, column: 7, scope: !5968, inlinedAt: !6139)
!6151 = !DILocation(line: 2582, column: 28, scope: !5900, inlinedAt: !6142)
!6152 = !DILocation(line: 2582, column: 13, scope: !5900, inlinedAt: !6142)
!6153 = !DILocation(line: 2583, column: 20, scope: !5900, inlinedAt: !6142)
!6154 = !DILocation(line: 2584, column: 9, scope: !5983, inlinedAt: !6142)
!6155 = !DILocation(line: 2584, column: 9, scope: !5900, inlinedAt: !6142)
!6156 = !DILocation(line: 2267, column: 50, scope: !5986, inlinedAt: !6157)
!6157 = distinct !DILocation(line: 2585, column: 7, scope: !5992, inlinedAt: !6142)
!6158 = !DILocation(line: 2272, column: 5, scope: !5994, inlinedAt: !6157)
!6159 = !DILocation(line: 2272, column: 5, scope: !5996, inlinedAt: !6157)
!6160 = !DILocation(line: 2585, column: 7, scope: !5983, inlinedAt: !6142)
!6161 = !DILocation(line: 2272, column: 5, scope: !5999, inlinedAt: !6150)
!6162 = !DILocation(line: 351, column: 1, scope: !6017)
!6163 = !DILocation(line: 351, column: 1, scope: !6121)
!6164 = !DILocation(line: 0, scope: !5867, inlinedAt: !6165)
!6165 = distinct !DILocation(line: 351, column: 1, scope: !6121)
!6166 = !DILocation(line: 0, scope: !5874, inlinedAt: !6167)
!6167 = distinct !DILocation(line: 2539, column: 17, scope: !5867, inlinedAt: !6165)
!6168 = !DILocation(line: 0, scope: !5879, inlinedAt: !6169)
!6169 = distinct !DILocation(line: 2539, column: 19, scope: !5885, inlinedAt: !6167)
!6170 = !DILocation(line: 2581, column: 22, scope: !5879, inlinedAt: !6169)
!6171 = !DILocation(line: 2584, column: 9, scope: !5879, inlinedAt: !6169)
!6172 = !DILocation(line: 2584, column: 9, scope: !5969, inlinedAt: !6169)
!6173 = !DILocation(line: 2101, column: 40, scope: !5971, inlinedAt: !6174)
!6174 = distinct !DILocation(line: 2213, column: 40, scope: !5975, inlinedAt: !6175)
!6175 = distinct !DILocation(line: 2582, column: 28, scope: !5900, inlinedAt: !6176)
!6176 = distinct !DILocation(line: 2539, column: 19, scope: !5906, inlinedAt: !6177)
!6177 = distinct !DILocation(line: 2539, column: 17, scope: !5889, inlinedAt: !6178)
!6178 = distinct !DILocation(line: 170, column: 7, scope: !5933, inlinedAt: !6179)
!6179 = distinct !DILocation(line: 369, column: 37, scope: !5939, inlinedAt: !6180)
!6180 = distinct !DILocation(line: 369, column: 37, scope: !5945, inlinedAt: !6181)
!6181 = distinct !DILocation(line: 474, column: 28, scope: !5949, inlinedAt: !6182)
!6182 = distinct !DILocation(line: 474, column: 28, scope: !5957, inlinedAt: !6183)
!6183 = distinct !DILocation(line: 2272, column: 5, scope: !5961, inlinedAt: !6184)
!6184 = distinct !DILocation(line: 2585, column: 7, scope: !5968, inlinedAt: !6169)
!6185 = !DILocation(line: 2581, column: 22, scope: !5900, inlinedAt: !6176)
!6186 = !DILocation(line: 2582, column: 28, scope: !5900, inlinedAt: !6176)
!6187 = !DILocation(line: 2582, column: 13, scope: !5900, inlinedAt: !6176)
!6188 = !DILocation(line: 2583, column: 20, scope: !5900, inlinedAt: !6176)
!6189 = !DILocation(line: 2584, column: 9, scope: !5983, inlinedAt: !6176)
!6190 = !DILocation(line: 2584, column: 9, scope: !5900, inlinedAt: !6176)
!6191 = !DILocation(line: 2267, column: 50, scope: !5986, inlinedAt: !6192)
!6192 = distinct !DILocation(line: 2585, column: 7, scope: !5992, inlinedAt: !6176)
!6193 = !DILocation(line: 2272, column: 5, scope: !5994, inlinedAt: !6192)
!6194 = !DILocation(line: 2272, column: 5, scope: !5996, inlinedAt: !6192)
!6195 = !DILocation(line: 2585, column: 7, scope: !5983, inlinedAt: !6176)
!6196 = !DILocation(line: 2272, column: 5, scope: !5999, inlinedAt: !6184)
!6197 = !DILocation(line: 2585, column: 7, scope: !5969, inlinedAt: !6169)
!6198 = !DILocation(line: 351, column: 1, scope: !6076)
