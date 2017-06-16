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
%"class.std::__1::__vector_base" = type { %"class.checker::Schedule"**, %"class.checker::Schedule"**, %"class.std::__1::__compressed_pair" }
%"class.checker::Schedule" = type opaque
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.checker::Schedule"** }
%"class.checker::Executor" = type opaque
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
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.5, [23 x i8] }
%union.anon.5 = type { i8 }
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

@data1 = global %"struct.std::__1::atomic" zeroinitializer, align 4, !dbg !0
@data2 = local_unnamed_addr global i32 0, align 4, !dbg !3451
@x = global %"struct.std::__1::atomic" zeroinitializer, align 4, !dbg !3453
@.str = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@modelChecker = external local_unnamed_addr global %"class.checker::ModelChecker"*, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Generate a model checker: \00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z2f1v() #0 !dbg !4359 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !4360
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @data1, i64 0, metadata !4361, metadata !4366), !dbg !4367
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4364, metadata !4366), !dbg !4369
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4370, metadata !4366), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4375, metadata !4366), !dbg !4378
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @data1, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast, i32 2, i32 7)
  store atomic i32 2, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @data1, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !dbg !4379
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4381, metadata !4366), !dbg !4386
  call void @preFence(i32 5)
  fence release, !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4370, metadata !4366), !dbg !4390
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4375, metadata !4366), !dbg !4392
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast1, i32 1, i32 2)
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !dbg !4393
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4370, metadata !4366), !dbg !4395
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4375, metadata !4366), !dbg !4397
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast2, i32 2, i32 2)
  store atomic i32 2, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !dbg !4398
  tail call void @checker_thread_end(), !dbg !4399
  ret void, !dbg !4400
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z2f2v() #0 !dbg !4401 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !4402
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4403, metadata !4366), !dbg !4408
  %myCast = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*
  %0 = call i32 @preAtomicLoad_int(i8* %myCast, i32 4)
  %newLoad = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) acquire, align 4
  %1 = icmp eq i32 %0, 255
  %mySelect = select i1 %1, i32 %newLoad, i32 %0
  call void @postAtomicLoad_int(i8* %myCast, i32 %mySelect, i32 4)
  %myCast1 = bitcast i32* @data2 to i8*
  call void @preNonAtomicStore_int(i8* %myCast1, i32 %mySelect)
  store i32 %mySelect, i32* @data2, align 4, !dbg !4410, !tbaa !4411
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4381, metadata !4366), !dbg !4415
  call void @preFence(i32 4)
  fence acquire, !dbg !4417
  tail call void @checker_thread_end(), !dbg !4419
  ret void, !dbg !4420
}

; Function Attrs: ssp uwtable
define i32 @user_main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4421 {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  tail call void @checker_generateExecutor(), !dbg !4500
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !4501
  %myCast = bitcast i32* @data2 to i8*
  call void @preNonAtomicStore_int(i8* %myCast, i32 0)
  store i32 0, i32* @data2, align 4, !dbg !4502, !tbaa !4411
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @data1, i64 0, metadata !4361, metadata !4366), !dbg !4503
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4364, metadata !4366), !dbg !4505
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4370, metadata !4366), !dbg !4506
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4375, metadata !4366), !dbg !4508
  %myCast1 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @data1, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast1, i32 0, i32 7)
  store atomic i32 0, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @data1, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !dbg !4509
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @x, i64 0, metadata !4361, metadata !4366), !dbg !4510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4364, metadata !4366), !dbg !4512
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4370, metadata !4366), !dbg !4513
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4375, metadata !4366), !dbg !4515
  %myCast2 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast2, i32 0, i32 7)
  store atomic i32 0, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !dbg !4516
  %0 = bitcast %"class.std::__1::thread"* %a to i8*, !dbg !4517
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10, !dbg !4517
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !4423, metadata !4518), !dbg !4519
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !4520, metadata !4366), !dbg !4533
  tail call void @llvm.dbg.value(metadata void ()* @_Z2f1v, i64 0, metadata !4531, metadata !4366), !dbg !4535
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2f1v), !dbg !4536
  %1 = bitcast %"class.std::__1::thread"* %b to i8*, !dbg !4537
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #10, !dbg !4537
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !4520, metadata !4366), !dbg !4538
  call void @llvm.dbg.value(metadata void ()* @_Z2f2v, i64 0, metadata !4531, metadata !4366), !dbg !4540
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad, !dbg !4541

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !4423, metadata !4518), !dbg !4519
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !4542, metadata !4366), !dbg !4546
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !dbg !4548
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i, i64 0, metadata !4549, metadata !4366), !dbg !4556
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !dbg !4558, !tbaa !4559
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont5 unwind label %lpad4, !dbg !4561

invoke.cont5:                                     ; preds = %invoke.cont
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !4499, metadata !4518), !dbg !4562
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !4542, metadata !4366), !dbg !4563
  %__t_.i32 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !dbg !4565
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i32, i64 0, metadata !4549, metadata !4366), !dbg !4566
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i32, align 8, !dbg !4568, !tbaa !4559
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont10 unwind label %lpad4, !dbg !4569

invoke.cont10:                                    ; preds = %invoke.cont5
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont11 unwind label %lpad4, !dbg !4570

invoke.cont11:                                    ; preds = %invoke.cont10
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont12 unwind label %lpad4, !dbg !4571

invoke.cont12:                                    ; preds = %invoke.cont11
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i64 0, metadata !4573, metadata !4366), !dbg !4580
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 0, metadata !4579, metadata !4366), !dbg !4582
  %call1.i34 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 6)
          to label %invoke.cont13 unwind label %lpad4, !dbg !4583

invoke.cont13:                                    ; preds = %invoke.cont12
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4403, metadata !4366), !dbg !4585
  %myCast3 = bitcast i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @data1, i64 0, i32 0, i32 0, i32 0) to i8*
  %4 = call i32 @preAtomicLoad_int(i8* %myCast3, i32 7)
  %newLoad = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @data1, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4
  %5 = icmp eq i32 %4, 255
  %mySelect = select i1 %5, i32 %newLoad, i32 %4
  call void @postAtomicLoad_int(i8* %myCast3, i32 %mySelect, i32 7)
  %call17 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i34, i32 %mySelect)
          to label %invoke.cont16 unwind label %lpad4, !dbg !4591

invoke.cont16:                                    ; preds = %invoke.cont13
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %call17, i64 0, metadata !4573, metadata !4366), !dbg !4592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !4579, metadata !4366), !dbg !4595
  %call1.i30 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
          to label %invoke.cont18 unwind label %lpad4, !dbg !4596

invoke.cont18:                                    ; preds = %invoke.cont16
  %6 = load i32, i32* @data2, align 4, !dbg !4597, !tbaa !4411
  %call21 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i30, i32 %6)
          to label %invoke.cont20 unwind label %lpad4, !dbg !4599

invoke.cont20:                                    ; preds = %invoke.cont18
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %call21, i64 0, metadata !4573, metadata !4366), !dbg !4600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !4579, metadata !4366), !dbg !4603
  %call1.i28 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
          to label %invoke.cont22 unwind label %lpad4, !dbg !4604

invoke.cont22:                                    ; preds = %invoke.cont20
  invoke void @checker_thread_end()
          to label %invoke.cont24 unwind label %lpad4, !dbg !4605

invoke.cont24:                                    ; preds = %invoke.cont22
  invoke void @checker_solver()
          to label %invoke.cont25 unwind label %lpad4, !dbg !4606

invoke.cont25:                                    ; preds = %invoke.cont24
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !4499, metadata !4518), !dbg !4562
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10, !dbg !4607
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !dbg !4607
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !4423, metadata !4518), !dbg !4519
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10, !dbg !4608
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !dbg !4607
  ret i32 0, !dbg !4607

lpad:                                             ; preds = %entry
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !4610
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !4610
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !4610
  br label %ehcleanup, !dbg !4610

lpad4:                                            ; preds = %invoke.cont12, %invoke.cont16, %invoke.cont20, %invoke.cont24, %invoke.cont22, %invoke.cont18, %invoke.cont13, %invoke.cont11, %invoke.cont10, %invoke.cont5, %invoke.cont
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !4611
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !4611
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !4611
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !4499, metadata !4518), !dbg !4562
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10, !dbg !4611
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !dbg !4607
  br label %ehcleanup, !dbg !4611

ehcleanup:                                        ; preds = %lpad4, %lpad
  %ehselector.slot.0 = phi i32 [ %12, %lpad4 ], [ %9, %lpad ]
  %exn.slot.0 = phi i8* [ %11, %lpad4 ], [ %8, %lpad ]
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !4423, metadata !4518), !dbg !4519
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10, !dbg !4612
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !dbg !4607
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !dbg !4613
  %lpad.val27 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !dbg !4613
  resume { i8*, i32 } %lpad.val27, !dbg !4613
}

declare void @checker_generateExecutor() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4614 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector", align 8
  %call = tail call i8* @_Znwm(i64 40) #11, !dbg !4615
  %schList.i.i = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4616
  tail call void @llvm.memset.p0i8.i64(i8* %schList.i.i, i8 0, i64 24, i32 8, i1 false) #10, !dbg !4650
  %test.i.i = bitcast i8* %call to i32*, !dbg !4665
  %myCast = bitcast i32* %test.i.i to i8*
  call void @preNonAtomicStore_int(i8* %myCast, i32 3)
  store i32 3, i32* %test.i.i, align 8, !dbg !4667, !tbaa !4668
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i64 0, metadata !4573, metadata !4366), !dbg !4671
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !4579, metadata !4366), !dbg !4673
  %call1.i7.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 26)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !dbg !4674

invoke.cont.i.i:                                  ; preds = %entry
  %call3.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i7.i.i, i8* nonnull %call)
          to label %invoke.cont2.i.i unwind label %lpad.i.i, !dbg !4675

invoke.cont2.i.i:                                 ; preds = %invoke.cont.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %call3.i.i, i64 0, metadata !4573, metadata !4366), !dbg !4677
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !4579, metadata !4366), !dbg !4680
  %call1.i9.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call3.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
          to label %invoke.cont unwind label %lpad.i.i, !dbg !4681

lpad.i.i:                                         ; preds = %invoke.cont2.i.i, %invoke.cont.i.i, %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !dbg !4682
  %__begin_.i.i.i.i.i = bitcast i8* %schList.i.i to %"class.checker::Schedule"***, !dbg !4683
  %1 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.i, align 8, !dbg !4683, !tbaa !4700
  %cmp.i.i.i.i.i = icmp eq %"class.checker::Schedule"** %1, null, !dbg !4703
  br i1 %cmp.i.i.i.i.i, label %lpad.body, label %if.then.i.i.i.i.i, !dbg !4704

if.then.i.i.i.i.i:                                ; preds = %lpad.i.i
  %2 = ptrtoint %"class.checker::Schedule"** %1 to i64, !dbg !4704
  %__end_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call, i64 16, !dbg !4705
  %3 = bitcast i8* %__end_.i.i.i.i.i.i.i to i64*, !dbg !4717
  store i64 %2, i64* %3, align 8, !dbg !4717, !tbaa !4718
  %.cast.i.i.i.i.i = bitcast %"class.checker::Schedule"** %1 to i8*, !dbg !4719
  tail call void @llvm.dbg.value(metadata i8* %.cast.i.i.i.i.i, i64 0, metadata !4720, metadata !4366) #10, !dbg !4724
  tail call void @_ZdlPv(i8* %.cast.i.i.i.i.i) #12, !dbg !4740
  br label %lpad.body, !dbg !4741

invoke.cont:                                      ; preds = %invoke.cont2.i.i
  store i8* %call, i8** bitcast (%"class.checker::ModelChecker"** @modelChecker to i8**), align 8, !dbg !4742, !tbaa !4559
  %call1 = tail call i32 @user_main(), !dbg !4744
  %4 = bitcast %"class.std::__1::vector"* %ref.tmp to i8*
  %__end_.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 1
  %5 = bitcast %"class.checker::Schedule"*** %__end_.i to i64*
  %6 = bitcast %"class.checker::Schedule"*** %__end_.i to i8**
  %7 = bitcast %"class.std::__1::vector"* %ref.tmp to i8**
  %__value_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 2, i32 0, i32 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !4745
  %8 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !dbg !4746, !tbaa !4559
  tail call void @llvm.dbg.value(metadata %"class.checker::ModelChecker"* %8, i64 0, metadata !4747, metadata !4366), !dbg !4750
  %schList.i17 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, !dbg !4752
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4753, metadata !4366), !dbg !4757
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i17, i64 0, metadata !4756, metadata !4366), !dbg !4759
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4760, metadata !4366), !dbg !4766
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i17, i64 0, metadata !4763, metadata !4366), !dbg !4768
  tail call void @llvm.dbg.value(metadata %"class.std::__1::allocator"* undef, i64 0, metadata !4769, metadata !4366), !dbg !4773
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !dbg !4776, !alias.scope !4777
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i17, i64 0, metadata !4780, metadata !4366), !dbg !4784
  %__end_.i16.i.i.i18 = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %8, i64 0, i32 1, i32 0, i32 1, !dbg !4786
  %9 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i18 to i64*, !dbg !4786
  %10 = load i64, i64* %9, align 8, !dbg !4786, !tbaa !4718, !noalias !4777
  %11 = bitcast %"class.std::__1::vector"* %schList.i17 to i64*, !dbg !4787
  %12 = load i64, i64* %11, align 8, !dbg !4787, !tbaa !4700, !noalias !4777
  %sub.ptr.sub.i.i.i.i19 = sub i64 %10, %12, !dbg !4788
  %sub.ptr.div.i.i.i.i20 = ashr exact i64 %sub.ptr.sub.i.i.i.i19, 3, !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i20, i64 0, metadata !4764, metadata !4366), !dbg !4789
  %cmp.i.i.i21 = icmp eq i64 %sub.ptr.div.i.i.i.i20, 0, !dbg !4790
  br i1 %cmp.i.i.i21, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, label %if.then.i.i.i.preheader, !dbg !4792

if.then.i.i.i.preheader:                          ; preds = %invoke.cont
  br label %if.then.i.i.i, !dbg !4793

_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit: ; preds = %while.body
  br label %_ZN7checker12ModelChecker10getSchListEv.exit.thread, !dbg !4800

_ZN7checker12ModelChecker10getSchListEv.exit.thread: ; preds = %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4780, metadata !4366), !dbg !4800
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4698, metadata !4366) #10, !dbg !4803
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4694, metadata !4366) #10, !dbg !4806
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !4745
  br label %while.end, !dbg !4808

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.preheader, %while.body
  %sub.ptr.div.i.i.i.i23 = phi i64 [ %sub.ptr.div.i.i.i.i, %while.body ], [ %sub.ptr.div.i.i.i.i20, %if.then.i.i.i.preheader ]
  %sub.ptr.sub.i.i.i.i22 = phi i64 [ %sub.ptr.sub.i.i.i.i, %while.body ], [ %sub.ptr.sub.i.i.i.i19, %if.then.i.i.i.preheader ]
  %13 = phi i64 [ %25, %while.body ], [ %12, %if.then.i.i.i.preheader ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4796, metadata !4366), !dbg !4793
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i23, i64 0, metadata !4797, metadata !4366), !dbg !4809
  %cmp.i12.i.i.i = icmp ugt i64 %sub.ptr.div.i.i.i.i23, 2305843009213693951, !dbg !4810
  br i1 %cmp.i12.i.i.i, label %if.then.i13.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i, !dbg !4812

if.then.i13.i.i.i:                                ; preds = %if.then.i.i.i
  %14 = bitcast %"class.std::__1::vector"* %ref.tmp to %"class.std::__1::__vector_base_common"*, !dbg !4813
  invoke void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* nonnull %14) #13
          to label %.noexc.i.i.i unwind label %lpad.i.i.i, !dbg !4813

.noexc.i.i.i:                                     ; preds = %if.then.i13.i.i.i
  unreachable, !dbg !4813

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i: ; preds = %if.then.i.i.i
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i23, i64 0, metadata !4814, metadata !4366), !dbg !4818
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i23, i64 0, metadata !4821, metadata !4366), !dbg !4826
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4825, metadata !4366), !dbg !4828
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i.i.i.i22, i64 0, metadata !4829, metadata !4366), !dbg !4832
  %call.i.i.i.i15.i.i.i = call i8* @_Znwm(i64 %sub.ptr.sub.i.i.i.i22) #11, !dbg !4834
  %15 = bitcast i8* %call.i.i.i.i15.i.i.i to %"class.checker::Schedule"**, !dbg !4835
  store i8* %call.i.i.i.i15.i.i.i, i8** %6, align 8, !dbg !4836, !tbaa !4718, !alias.scope !4777
  store i8* %call.i.i.i.i15.i.i.i, i8** %7, align 8, !dbg !4837, !tbaa !4700, !alias.scope !4777
  %add.ptr.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div.i.i.i.i23, !dbg !4838
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i, %"class.checker::Schedule"*** %__value_.i.i.i.i.i.i.i, align 8, !dbg !4839, !tbaa !4559, !alias.scope !4777
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4840, metadata !4366), !dbg !4863
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i23, i64 0, metadata !4850, metadata !4366), !dbg !4865
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"* undef, i64 0, metadata !4853, metadata !4518), !dbg !4866
  tail call void @llvm.dbg.value(metadata %"class.checker::Schedule"*** %__end_.i, i64 0, metadata !1779, metadata !4366) #10, !dbg !4867
  %cmp.i.i.i.i.i5 = icmp sgt i64 %sub.ptr.sub.i.i.i.i22, 0, !dbg !4869
  %16 = ptrtoint i8* %call.i.i.i.i15.i.i.i to i64, !dbg !4871
  br i1 %cmp.i.i.i.i.i5, label %if.then.i.i.i.i.i6, label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !dbg !4871

if.then.i.i.i.i.i6:                               ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %sub.ptr.div6.i.i.i.i.i = lshr exact i64 %sub.ptr.sub.i.i.i.i22, 3
  %17 = inttoptr i64 %13 to i8*, !dbg !4872
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i.i.i.i15.i.i.i, i8* %17, i64 %sub.ptr.sub.i.i.i.i22, i32 8, i1 false) #10, !dbg !4872
  %add.ptr.i.i.i.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %15, i64 %sub.ptr.div6.i.i.i.i.i, !dbg !4874
  store %"class.checker::Schedule"** %add.ptr.i.i.i.i.i, %"class.checker::Schedule"*** %__end_.i, align 8, !dbg !4874, !tbaa !4559, !alias.scope !4777
  %18 = ptrtoint %"class.checker::Schedule"** %add.ptr.i.i.i.i.i to i64, !dbg !4875
  br label %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit, !dbg !4875

lpad.i.i.i:                                       ; preds = %if.then.i13.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !dbg !4876
  %__begin_.i.i.i.i.phi.trans.insert = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %ref.tmp, i64 0, i32 0, i32 0
  %.pre = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i.i.phi.trans.insert, align 8, !tbaa !4700, !alias.scope !4777
  %cmp.i.i.i.i = icmp eq %"class.checker::Schedule"** %.pre, null, !dbg !4877
  br i1 %cmp.i.i.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, label %if.then.i.i.i.i, !dbg !4879

if.then.i.i.i.i:                                  ; preds = %lpad.i.i.i
  %19 = bitcast %"class.checker::Schedule"** %.pre to i8*, !dbg !4876
  %20 = ptrtoint %"class.checker::Schedule"** %.pre to i64, !dbg !4879
  store i64 %20, i64* %5, align 8, !dbg !4880, !tbaa !4718, !alias.scope !4777
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4720, metadata !4366) #10, !dbg !4883
  call void @_ZdlPv(i8* %19) #12, !dbg !4887
  br label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i, !dbg !4888

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i, %lpad.i.i.i
  resume { i8*, i32 } %lpad.loopexit.split-lp, !dbg !4889

_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit: ; preds = %if.then.i.i.i.i.i6, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i
  %.ph = phi i64 [ %18, %if.then.i.i.i.i.i6 ], [ %16, %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit.i.i.i.i ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4780, metadata !4366), !dbg !4800
  %tobool12 = icmp eq i64 %.ph, %16, !dbg !4746
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4698, metadata !4366) #10, !dbg !4803
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4694, metadata !4366) #10, !dbg !4806
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i15.i.i.i, i64 0, metadata !4720, metadata !4366) #10, !dbg !4891
  tail call void @_ZdlPv(i8* %call.i.i.i.i15.i.i.i) #12, !dbg !4896
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !4745
  br i1 %tobool12, label %while.end.loopexit, label %while.body, !dbg !4808

while.body:                                       ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  %call3 = tail call i32 @user_main(), !dbg !4897
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !4745
  %21 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8, !dbg !4746, !tbaa !4559
  tail call void @llvm.dbg.value(metadata %"class.checker::ModelChecker"* %21, i64 0, metadata !4747, metadata !4366), !dbg !4750
  %schList.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, !dbg !4752
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4753, metadata !4366), !dbg !4757
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i, i64 0, metadata !4756, metadata !4366), !dbg !4759
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %ref.tmp, i64 0, metadata !4760, metadata !4366), !dbg !4766
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i, i64 0, metadata !4763, metadata !4366), !dbg !4768
  tail call void @llvm.dbg.value(metadata %"class.std::__1::allocator"* undef, i64 0, metadata !4769, metadata !4366), !dbg !4773
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false), !dbg !4776, !alias.scope !4777
  tail call void @llvm.dbg.value(metadata %"class.std::__1::vector"* %schList.i, i64 0, metadata !4780, metadata !4366), !dbg !4784
  %__end_.i16.i.i.i = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %21, i64 0, i32 1, i32 0, i32 1, !dbg !4786
  %22 = bitcast %"class.checker::Schedule"*** %__end_.i16.i.i.i to i64*, !dbg !4786
  %23 = load i64, i64* %22, align 8, !dbg !4786, !tbaa !4718, !noalias !4777
  %24 = bitcast %"class.std::__1::vector"* %schList.i to i64*, !dbg !4787
  %25 = load i64, i64* %24, align 8, !dbg !4787, !tbaa !4700, !noalias !4777
  %sub.ptr.sub.i.i.i.i = sub i64 %23, %25, !dbg !4788
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3, !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.div.i.i.i.i, i64 0, metadata !4764, metadata !4366), !dbg !4789
  %cmp.i.i.i = icmp eq i64 %sub.ptr.div.i.i.i.i, 0, !dbg !4790
  br i1 %cmp.i.i.i, label %_ZN7checker12ModelChecker10getSchListEv.exit.thread.loopexit, label %if.then.i.i.i, !dbg !4792, !llvm.loop !4898

lpad.body:                                        ; preds = %lpad.i.i, %if.then.i.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !4901
  resume { i8*, i32 } %0, !dbg !4903

while.end.loopexit:                               ; preds = %_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev.exit
  br label %while.end, !dbg !4904

while.end:                                        ; preds = %while.end.loopexit, %_ZN7checker12ModelChecker10getSchListEv.exit.thread
  ret i32 0, !dbg !4904
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

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1785 {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !2100, metadata !4366), !dbg !4905
  tail call void @llvm.dbg.value(metadata i8* %__str, i64 0, metadata !2101, metadata !4366), !dbg !4906
  tail call void @llvm.dbg.value(metadata i64 %__len, i64 0, metadata !2102, metadata !4366), !dbg !4907
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0, !dbg !4908
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #10, !dbg !4908
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad, !dbg !4909

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !2103, metadata !4518), !dbg !4909
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !4910, metadata !4366), !dbg !4914
  %1 = load i8, i8* %0, align 8, !dbg !4917, !tbaa !4918, !range !4921
  %tobool.i = icmp eq i8 %1, 0, !dbg !4917
  br i1 %tobool.i, label %if.end28, label %if.then, !dbg !4922

if.then:                                          ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !4924, metadata !4366), !dbg !4929
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !4927, metadata !4366), !dbg !4933
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !4934, metadata !4366), !dbg !4938
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !4937, metadata !4366), !dbg !4940
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !dbg !4941
  %vtable.i.i = load i8*, i8** %2, align 8, !dbg !4941, !tbaa !4942
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !dbg !4941
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !dbg !4941
  %vbase.offset.i.i = load i64, i64* %3, align 8, !dbg !4941
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !dbg !4941
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i, !dbg !4941
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40, !dbg !4944
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**, !dbg !4944
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !dbg !4944, !tbaa !4955
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*, !dbg !4958
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %7, i64 0, metadata !4959, metadata !4366), !dbg !4962
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8, !dbg !4964
  %8 = bitcast i8* %__fmtflags_.i to i32*, !dbg !4964
  %9 = load i32, i32* %8, align 8, !dbg !4964, !tbaa !4965
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len, !dbg !4966
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144, !dbg !4967
  %10 = bitcast i8* %__fill_.i to i32*, !dbg !4967
  %11 = load i32, i32* %10, align 8, !dbg !4967, !tbaa !4973
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4975, metadata !4366), !dbg !4979
  call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !4978, metadata !4366), !dbg !4982
  %cmp.i.i = icmp eq i32 %11, -1, !dbg !4983
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16, !dbg !4984

if.then.i:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata i8 32, i64 0, metadata !4985, metadata !4366), !dbg !4989
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*, !dbg !4991
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #10, !dbg !4991
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3, !dbg !4991

.noexc:                                           ; preds = %if.then.i
  call void @llvm.dbg.value(metadata %"class.std::__1::locale"* %ref.tmp.i.i, i64 0, metadata !4992, metadata !4366), !dbg !5088
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !dbg !5090

invoke.cont.i.i:                                  ; preds = %.noexc
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !dbg !5091
  call void @llvm.dbg.value(metadata %"class.std::__1::ctype"* %13, i64 0, metadata !5092, metadata !4366), !dbg !5097
  call void @llvm.dbg.value(metadata i8 32, i64 0, metadata !5095, metadata !4366), !dbg !5100
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***, !dbg !5101
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !dbg !5101, !tbaa !4942
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !dbg !5101
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !dbg !5101
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !dbg !5101

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5102
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10, !dbg !5103
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10, !dbg !5105
  br label %ehcleanup

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10, !dbg !5106
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10, !dbg !5105
  %conv.i = sext i8 %call.i6.i.i to i32, !dbg !5108
  %myCast = bitcast i32* %10 to i8*
  call void @preNonAtomicStore_int(i8* %myCast, i32 %conv.i)
  store i32 %conv.i, i32* %10, align 8, !dbg !5109, !tbaa !4973
  br label %invoke.cont16, !dbg !5110

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ], !dbg !5111
  %conv6.i = trunc i32 %17 to i8, !dbg !5111
  %and = and i32 %9, 176, !dbg !5112
  %cmp = icmp eq i32 %and, 32, !dbg !5114
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str, !dbg !5115
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3, !dbg !5116

invoke.cont18:                                    ; preds = %invoke.cont16
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !5117, metadata !4366), !dbg !5121
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null, !dbg !5123
  br i1 %cmp.i, label %if.then22, label %if.end28, !dbg !5124

if.then22:                                        ; preds = %invoke.cont18
  %vtable23 = load i8*, i8** %2, align 8, !dbg !5126, !tbaa !4942
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24, !dbg !5126
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*, !dbg !5126
  %vbase.offset25 = load i64, i64* %18, align 8, !dbg !5126
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25, !dbg !5126
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5127, metadata !4366), !dbg !5132
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*, !dbg !5134
  call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %19, i64 0, metadata !5135, metadata !4366), !dbg !5140
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5138, metadata !4366), !dbg !5142
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32, !dbg !5143
  %20 = bitcast i8* %__rdstate_.i.i to i32*, !dbg !5143
  %21 = load i32, i32* %20, align 8, !dbg !5143, !tbaa !5144
  %or.i.i = or i32 %21, 5, !dbg !5145
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1, !dbg !5146

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5147
  %23 = extractvalue { i8*, i32 } %22, 0, !dbg !5147
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !dbg !5148
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !dbg !5148
  br label %catch, !dbg !5147

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5150
  br label %ehcleanup, !dbg !5150

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5152
  br label %ehcleanup, !dbg !5152

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !2103, metadata !4518), !dbg !4909
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10, !dbg !5154
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10, !dbg !5154
  br label %try.cont, !dbg !5155

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ]
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !2103, metadata !4518), !dbg !4909
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10, !dbg !5156
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10, !dbg !5154
  br label %catch, !dbg !5156

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ], !dbg !5148
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ], !dbg !5148
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ]
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #10, !dbg !5158
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !dbg !5148, !tbaa !4942
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24, !dbg !5148
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*, !dbg !5148
  %vbase.offset32 = load i64, i64* %28, align 8, !dbg !5148
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32, !dbg !5148
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*, !dbg !5148
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34, !dbg !5160

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch(), !dbg !5161
  br label %try.cont, !dbg !5161

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os, !dbg !5162

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup, !dbg !5163
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad, !dbg !5165

eh.resume:                                        ; preds = %lpad34
  resume { i8*, i32 } %30, !dbg !5167

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null, !dbg !5168
  %32 = extractvalue { i8*, i32 } %31, 0, !dbg !5168
  call void @__clang_call_terminate(i8* %32) #14, !dbg !5168
  unreachable, !dbg !5168
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !5170 {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5175, metadata !4366), !dbg !5187
  tail call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"* undef, metadata !5175, metadata !4366), !dbg !5187
  tail call void @llvm.dbg.value(metadata i8* %__ob, i64 0, metadata !5176, metadata !4366), !dbg !5188
  tail call void @llvm.dbg.value(metadata i8* %__op, i64 0, metadata !5177, metadata !4366), !dbg !5189
  tail call void @llvm.dbg.value(metadata i8* %__oe, i64 0, metadata !5178, metadata !4366), !dbg !5190
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !5179, metadata !4366), !dbg !5191
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5180, metadata !4366), !dbg !5192
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null, !dbg !5193
  br i1 %cmp, label %return, label %if.end, !dbg !5195

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64, !dbg !5196
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64, !dbg !5196
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5196
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, i64 0, metadata !5181, metadata !4366), !dbg !5197
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !5198, metadata !4366), !dbg !5201
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3, !dbg !5203
  %0 = load i64, i64* %__width_.i, align 8, !dbg !5203, !tbaa !5204
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5182, metadata !4366), !dbg !5205
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub, !dbg !5206
  %sub = sub nsw i64 %0, %sub.ptr.sub, !dbg !5208
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !5182, metadata !4366), !dbg !5205
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0, !dbg !5209
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5182, metadata !4366), !dbg !5205
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64, !dbg !5210
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast, !dbg !5210
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub6, i64 0, metadata !5183, metadata !4366), !dbg !5211
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !dbg !5212
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !5214

if.then8:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5215, metadata !4366), !dbg !5220
  tail call void @llvm.dbg.value(metadata i8* %__ob, i64 0, metadata !5218, metadata !4366), !dbg !5224
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub6, i64 0, metadata !5219, metadata !4366), !dbg !5225
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !5226
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !dbg !5226, !tbaa !4942
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12, !dbg !5226
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8, !dbg !5226
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6), !dbg !5226
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6, !dbg !5227
  br i1 %cmp11, label %if.end15, label %return, !dbg !5228

if.end15:                                         ; preds = %if.then8, %if.end
  %cmp16 = icmp sgt i64 %__ns.0, 0, !dbg !5229
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26, !dbg !5230

if.end.i.i.i:                                     ; preds = %if.end15
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*, !dbg !5231
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #10, !dbg !5231
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5184, metadata !4518), !dbg !5232
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5233, metadata !4366), !dbg !5239
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5236, metadata !4366), !dbg !5241
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5237, metadata !4366), !dbg !5242
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5243, metadata !4366), !dbg !5248
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5246, metadata !4366), !dbg !5250
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5247, metadata !4366), !dbg !5251
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #10, !dbg !5252
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5272, metadata !4366), !dbg !5281
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5275, metadata !4366), !dbg !5284
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5276, metadata !4366), !dbg !5285
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23, !dbg !5286
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i, !dbg !5287

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5288, metadata !4366), !dbg !5291
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16, !dbg !5293
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16, !dbg !5301
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !5302, metadata !4366), !dbg !5306
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !5309, metadata !4366), !dbg !5315
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5314, metadata !4366), !dbg !5317
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !4829, metadata !4366), !dbg !5318
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #11, !dbg !5320
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i.i.i, i64 0, metadata !5277, metadata !4366), !dbg !5321
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5322, metadata !4366), !dbg !5326
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i.i.i, i64 0, metadata !5325, metadata !4366), !dbg !5328
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5329
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !dbg !5330, !tbaa !5331
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5333, metadata !4366), !dbg !5337
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !5336, metadata !4366), !dbg !5339
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1, !dbg !5340
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5341
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !dbg !5342, !tbaa !5343
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5344, metadata !4366), !dbg !5348
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5347, metadata !4366), !dbg !5350
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5351
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !dbg !5352, !tbaa !5353
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5354, metadata !4366) #10, !dbg !5359
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5358, metadata !4366) #10, !dbg !5362
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !5363
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0, !dbg !5379
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !dbg !5380

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5381, metadata !4366), !dbg !5385
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5384, metadata !4366), !dbg !5388
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8, !dbg !5389
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1, !dbg !5389
  store i8 %conv.i.i.i.i, i8* %3, align 8, !dbg !5390, !tbaa !5391
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5392, metadata !4366), !dbg !5395
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !5397
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0, !dbg !5398
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !5277, metadata !4366), !dbg !5321
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !5277, metadata !4366), !dbg !5321
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !5357, metadata !4366) #10, !dbg !5399
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5354, metadata !4366) #10, !dbg !5359
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !5358, metadata !4366) #10, !dbg !5362
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5400
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !dbg !5379
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ], !dbg !5400
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ]
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #10, !dbg !5406
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0, !dbg !5407
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i, i64 0, metadata !5408, metadata !4366), !dbg !5412
  store i8 0, i8* %arrayidx.i.i.i, align 1, !dbg !5414, !tbaa !5391
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5184, metadata !4518), !dbg !5232
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5376, metadata !4366), !dbg !5415
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5372, metadata !4366), !dbg !5416
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5417, metadata !4366), !dbg !5420
  %4 = load i8, i8* %3, align 8, !dbg !5422, !tbaa !5391
  %5 = and i8 %4, 1, !dbg !5423
  %tobool.i.i.i = icmp eq i8 %5, 0, !dbg !5424
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5403, metadata !4366), !dbg !5425
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !5400
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5366, metadata !4366), !dbg !5426
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6, !dbg !5427
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5215, metadata !4366), !dbg !5428
  tail call void @llvm.dbg.value(metadata i8* %cond.i.i, i64 0, metadata !5218, metadata !4366), !dbg !5430
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !5219, metadata !4366), !dbg !5431
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !5432
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !dbg !5432, !tbaa !4942
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12, !dbg !5432
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8, !dbg !5432
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad, !dbg !5432

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0, !dbg !5433
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5184, metadata !4518), !dbg !5232
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5435, metadata !4366) #10, !dbg !5438
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5441, metadata !4366) #10, !dbg !5444
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5417, metadata !4366) #10, !dbg !5446
  %9 = load i8, i8* %3, align 8, !dbg !5450, !tbaa !5391
  %10 = and i8 %9, 1, !dbg !5451
  %tobool.i.i.i89 = icmp eq i8 %10, 0, !dbg !5452
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i, !dbg !5453

if.then.i.i:                                      ; preds = %invoke.cont
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5454, metadata !4366) #10, !dbg !5457
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !5460, !tbaa !5331
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5461, metadata !4366) #10, !dbg !5466
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5469, metadata !4366) #10, !dbg !5474
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !4720, metadata !4366) #10, !dbg !5476
  call void @_ZdlPv(i8* %11) #12, !dbg !5478
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, !dbg !5479

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10, !dbg !5480
  br i1 %cmp21, label %if.end26, label %return

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup, !dbg !5481
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5184, metadata !4518), !dbg !5232
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5435, metadata !4366) #10, !dbg !5482
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5441, metadata !4366) #10, !dbg !5484
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5417, metadata !4366) #10, !dbg !5486
  %13 = load i8, i8* %3, align 8, !dbg !5488, !tbaa !5391
  %14 = and i8 %13, 1, !dbg !5489
  %tobool.i.i.i92 = icmp eq i8 %14, 0, !dbg !5490
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94, !dbg !5491

if.then.i.i94:                                    ; preds = %lpad
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !5454, metadata !4366) #10, !dbg !5492
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !5494, !tbaa !5331
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5461, metadata !4366) #10, !dbg !5495
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5469, metadata !4366) #10, !dbg !5497
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4720, metadata !4366) #10, !dbg !5499
  call void @_ZdlPv(i8* %15) #12, !dbg !5501
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, !dbg !5502

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10, !dbg !5480
  resume { i8*, i32 } %12, !dbg !5503

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5175, metadata !4366), !dbg !5187
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4, !dbg !5505
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub29, i64 0, metadata !5183, metadata !4366), !dbg !5211
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !dbg !5506
  br i1 %cmp30, label %if.then31, label %if.end38, !dbg !5508

if.then31:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !5215, metadata !4366), !dbg !5509
  call void @llvm.dbg.value(metadata i8* %__op, i64 0, metadata !5218, metadata !4366), !dbg !5513
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub29, i64 0, metadata !5219, metadata !4366), !dbg !5514
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !5515
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !dbg !5515, !tbaa !4942
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !dbg !5515
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !dbg !5515
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29), !dbg !5515
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29, !dbg !5516
  br i1 %cmp34, label %if.end38, label %return, !dbg !5517

if.end38:                                         ; preds = %if.then31, %if.end26
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !5518, metadata !4366), !dbg !5523
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5521, metadata !4366), !dbg !5525
  store i64 0, i64* %__width_.i, align 8, !dbg !5526, !tbaa !5204
  br label %return, !dbg !5527

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ]
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2, !dbg !5528
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #4

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #4

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !5530 {
entry:
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %this, i64 0, metadata !5532, metadata !4366), !dbg !5683
  tail call void @llvm.dbg.value(metadata void ()* %__f, i64 0, metadata !5533, metadata !4366), !dbg !5684
  %call = tail call i8* @_Znwm(i64 8) #11, !dbg !5685
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !5685
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !dbg !5686

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5534, metadata !4518), !dbg !5687
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !5688

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5534, metadata !4518), !dbg !5687
  %2 = ptrtoint void ()* %__f to i64, !dbg !5689
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5691, metadata !4366), !dbg !5703
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5702, metadata !4366), !dbg !5703
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5706, metadata !4366), !dbg !5711
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5710, metadata !4366), !dbg !5711
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5713, metadata !4366), !dbg !5738
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5737, metadata !4366), !dbg !5738
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5740, metadata !4366), !dbg !5749
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5748, metadata !4366), !dbg !5749
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5751, metadata !4366), !dbg !5761
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5764, metadata !4366), !dbg !5769
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5772, metadata !4366), !dbg !5776
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !5778, metadata !4366), !dbg !5792
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !5794, metadata !4366), !dbg !5799
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !5801, metadata !4366), !dbg !5811
  %3 = bitcast i8* %call4 to i64*, !dbg !5814
  store i64 %1, i64* %3, align 8, !dbg !5814, !tbaa !5815
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !5817
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !5818, metadata !4366), !dbg !5828
  %5 = bitcast i8* %4 to i64*, !dbg !5831
  store i64 %2, i64* %5, align 8, !dbg !5831, !tbaa !5832
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5537, metadata !4518), !dbg !5834
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !dbg !5835
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5537, metadata !4518), !dbg !5834
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_, i64 0, metadata !5836, metadata !4366), !dbg !5847
  tail call void @llvm.dbg.value(metadata i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i64 0, metadata !5845, metadata !4366), !dbg !5849
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !5846, metadata !4366), !dbg !5850
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !dbg !5851

invoke.cont12:                                    ; preds = %invoke.cont3
  tail call void @llvm.dbg.value(metadata i32 %call.i31, i64 0, metadata !5682, metadata !4366), !dbg !5852
  %cmp = icmp eq i32 %call.i31, 0, !dbg !5853
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !dbg !5855

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5537, metadata !4518), !dbg !5834
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5537, metadata !4518), !dbg !5834
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5856, metadata !4366) #10, !dbg !5860
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5863, metadata !4366) #10, !dbg !5866
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5868, metadata !4366) #10, !dbg !5873
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5871, metadata !4366) #10, !dbg !5876
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5872, metadata !4366) #10, !dbg !5877
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5534, metadata !4518), !dbg !5687
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5878, metadata !4366) #10, !dbg !5881
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5884, metadata !4366) #10, !dbg !5887
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5889, metadata !4366) #10, !dbg !5894
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5892, metadata !4366) #10, !dbg !5897
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5893, metadata !4366) #10, !dbg !5898
  ret void, !dbg !5899

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !5900
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !5900
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !5900
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !5901
  br label %eh.resume, !dbg !5901

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !5902
  br label %delete.notnull.i.i.i.i, !dbg !5902

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #13
          to label %invoke.cont16 unwind label %lpad15, !dbg !5904

invoke.cont16:                                    ; preds = %if.else
  unreachable, !dbg !5905

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !5907
  br label %delete.notnull.i.i.i.i, !dbg !5909

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5537, metadata !4518), !dbg !5834
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5856, metadata !4366) #10, !dbg !5911
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5863, metadata !4366) #10, !dbg !5914
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5868, metadata !4366) #10, !dbg !5916
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5871, metadata !4366) #10, !dbg !5918
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5892, metadata !4366) #10, !dbg !5919
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !dbg !5960
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !5969, !tbaa !4559
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !5893, metadata !4366) #10, !dbg !5970
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !5971, !tbaa !4559
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !dbg !5972
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !5974

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !5975, metadata !4366) #10, !dbg !5980
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10, !dbg !5983
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !dbg !5983
  tail call void @_ZdlPv(i8* %14) #12, !dbg !5985
  br label %ehcleanup18.thread, !dbg !5987

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #12, !dbg !5988
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5534, metadata !4518), !dbg !5687
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5878, metadata !4366) #10, !dbg !5990
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5884, metadata !4366) #10, !dbg !5993
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5889, metadata !4366) #10, !dbg !5995
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5892, metadata !4366) #10, !dbg !5997
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !5893, metadata !4366) #10, !dbg !5998
  br label %eh.resume, !dbg !5999

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !6000
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !6000
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !6000
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5534, metadata !4518), !dbg !5687
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5878, metadata !4366) #10, !dbg !5990
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5884, metadata !4366) #10, !dbg !5993
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !5889, metadata !4366) #10, !dbg !5995
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5892, metadata !4366) #10, !dbg !5997
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !5893, metadata !4366) #10, !dbg !5998
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !5975, metadata !4366) #10, !dbg !6001
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10, !dbg !6003
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !6004
  br label %eh.resume, !dbg !6005

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !dbg !6006
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !dbg !6006
  resume { i8*, i32 } %lpad.val20, !dbg !6006
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !6007 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %__vp, i64 0, metadata !6011, metadata !4366), !dbg !6013
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6012, metadata !4518), !dbg !6014
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !6015

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6012, metadata !4518), !dbg !6014
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !6016
  %0 = bitcast i8* %__vp to i8**, !dbg !6025
  %1 = load i8*, i8** %0, align 8, !dbg !6025, !tbaa !4559
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !6026, !tbaa !4559
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_specific_ptr"* %call, i64 0, metadata !6027, metadata !4366), !dbg !6064
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !dbg !6067
  %2 = load i64, i64* %__key_.i, align 8, !dbg !6067, !tbaa !6068
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !6070, metadata !4366), !dbg !6076
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !6075, metadata !4366), !dbg !6078
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !dbg !6079

invoke.cont5:                                     ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6012, metadata !4518), !dbg !6014
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !dbg !6080
  %3 = bitcast i8* %value.i.i.i to void ()**, !dbg !6080
  tail call void @llvm.dbg.value(metadata void ()** %3, i64 0, metadata !6112, metadata !4366), !dbg !6118
  %4 = load void ()*, void ()** %3, align 8, !dbg !6121, !tbaa !4559
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !dbg !6122

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6012, metadata !4518), !dbg !6014
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5856, metadata !4366) #10, !dbg !6124
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5863, metadata !4366) #10, !dbg !6126
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5868, metadata !4366) #10, !dbg !6128
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5871, metadata !4366) #10, !dbg !6130
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5892, metadata !4366) #10, !dbg !6131
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !6141, !tbaa !4559
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !5893, metadata !4366) #10, !dbg !6142
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !6143, !tbaa !4559
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !dbg !6144
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !dbg !6145

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !5975, metadata !4366) #10, !dbg !6146
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10, !dbg !6148
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !dbg !6148
  tail call void @_ZdlPv(i8* %6) #12, !dbg !6149
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !dbg !6150

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !6151
  ret i8* null, !dbg !6152

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !dbg !6153
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6012, metadata !4518), !dbg !6014
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5856, metadata !4366) #10, !dbg !6154
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5863, metadata !4366) #10, !dbg !6156
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5868, metadata !4366) #10, !dbg !6158
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5871, metadata !4366) #10, !dbg !6160
  br label %delete.notnull.i.i.i.i, !dbg !6161

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !dbg !6153
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !6012, metadata !4518), !dbg !6014
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5856, metadata !4366) #10, !dbg !6154
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5863, metadata !4366) #10, !dbg !6156
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.13"* undef, i64 0, metadata !5868, metadata !4366) #10, !dbg !6158
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !5871, metadata !4366) #10, !dbg !6160
  %tobool.i.i.i = icmp eq i8* %__vp, null, !dbg !6162
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !dbg !6161

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !6163
  br label %delete.notnull.i.i.i.i, !dbg !6161

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !dbg !6163
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !5892, metadata !4366) #10, !dbg !6175
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !6176, !tbaa !4559
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !5893, metadata !4366) #10, !dbg !6177
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !6178, !tbaa !4559
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !6179
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !6180

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !5975, metadata !4366) #10, !dbg !6181
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10, !dbg !6183
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !6183
  tail call void @_ZdlPv(i8* %8) #12, !dbg !6184
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !6185

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !6186
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !6187

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30, !dbg !6188
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
!llvm.module.flags = !{!4355, !4356, !4357}
!llvm.ident = !{!4358}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "data1", scope: !2, file: !3, line: 9, type: !104, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1421, globals: !3450, imports: !3455)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4 = !{!5, !17, !23, !30, !1404, !1409, !1412, !1415, !1418}
!5 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!9 = !DINamespace(name: "std", scope: null, file: !8, line: 437)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!12 = !DIEnumerator(name: "memory_order_consume", value: 1)
!13 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!14 = !DIEnumerator(name: "memory_order_release", value: 3)
!15 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!16 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!17 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !7, file: !18, line: 133, size: 32, elements: !19, identifier: "_ZTSNSt3__118float_denorm_styleE")
!18 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/limits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "denorm_indeterminate", value: -1)
!21 = !DIEnumerator(name: "denorm_absent", value: 0)
!22 = !DIEnumerator(name: "denorm_present", value: 1)
!23 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_round_style", scope: !7, file: !18, line: 124, size: 32, elements: !24, identifier: "_ZTSNSt3__117float_round_styleE")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "round_indeterminate", value: -1)
!26 = !DIEnumerator(name: "round_toward_zero", value: 0)
!27 = !DIEnumerator(name: "round_to_nearest", value: 1)
!28 = !DIEnumerator(name: "round_toward_infinity", value: 2)
!29 = !DIEnumerator(name: "round_toward_neg_infinity", value: 3)
!30 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "event", scope: !32, file: !31, line: 308, size: 32, elements: !1400, identifier: "_ZTSNSt3__18ios_base5eventE")
!31 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ios", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!32 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !7, file: !31, line: 231, size: 1088, elements: !33, vtableHolder: !32, identifier: "_ZTSNSt3__18ios_baseE")
!33 = !{!34, !40, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !65, !66, !67, !70, !71, !72, !73, !74, !75, !76, !81, !82, !83, !84, !86, !87, !94, !96, !102, !103, !257, !259, !260, !261, !263, !264, !265, !270, !274, !275, !278, !281, !284, !287, !288, !289, !1338, !1341, !1342, !1346, !1350, !1353, !1356, !1360, !1363, !1366, !1369, !1372, !1373, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1387, !1390, !1391, !1394, !1395, !1398, !1399}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ios_base", scope: !31, file: !31, baseType: !35, size: 64, flags: DIFlagArtificial)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "boolalpha", scope: !32, file: !31, line: 237, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !32, file: !31, line: 236, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !32, file: !31, line: 238, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !32, file: !31, line: 239, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !32, file: !31, line: 240, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !32, file: !31, line: 241, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !32, file: !31, line: 242, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "oct", scope: !32, file: !31, line: 243, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !32, file: !31, line: 244, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "scientific", scope: !32, file: !31, line: 245, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "showbase", scope: !32, file: !31, line: 246, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "showpoint", scope: !32, file: !31, line: 247, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "showpos", scope: !32, file: !31, line: 248, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2048)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "skipws", scope: !32, file: !31, line: 249, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "unitbuf", scope: !32, file: !31, line: 250, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "uppercase", scope: !32, file: !31, line: 251, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "adjustfield", scope: !32, file: !31, line: 252, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 176)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "basefield", scope: !32, file: !31, line: 253, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 74)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "floatfield", scope: !32, file: !31, line: 254, baseType: !41, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 260)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "badbit", scope: !32, file: !31, line: 257, baseType: !62, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !32, file: !31, line: 256, baseType: !43)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "eofbit", scope: !32, file: !31, line: 258, baseType: !62, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "failbit", scope: !32, file: !31, line: 259, baseType: !62, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "goodbit", scope: !32, file: !31, line: 260, baseType: !62, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "app", scope: !32, file: !31, line: 263, baseType: !68, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "openmode", scope: !32, file: !31, line: 262, baseType: !43)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ate", scope: !32, file: !31, line: 264, baseType: !68, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !32, file: !31, line: 265, baseType: !68, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !32, file: !31, line: 266, baseType: !68, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !32, file: !31, line: 267, baseType: !68, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "trunc", scope: !32, file: !31, line: 268, baseType: !68, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__fmtflags_", scope: !32, file: !31, line: 362, baseType: !42, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__precision_", scope: !32, file: !31, line: 363, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !7, file: !31, line: 229, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !79, line: 51, baseType: !80)
!79 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!80 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__width_", scope: !32, file: !31, line: 364, baseType: !77, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__rdstate_", scope: !32, file: !31, line: 365, baseType: !63, size: 32, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__exceptions_", scope: !32, file: !31, line: 366, baseType: !63, size: 32, offset: 288)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__rdbuf_", scope: !32, file: !31, line: 367, baseType: !85, size: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !32, file: !31, line: 368, baseType: !85, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__fn_", scope: !32, file: !31, line: 369, baseType: !88, size: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_callback", scope: !32, file: !31, line: 309, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !30, !93, !39}
!93 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__index_", scope: !32, file: !31, line: 370, baseType: !95, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__event_size_", scope: !32, file: !31, line: 371, baseType: !97, size: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 30, baseType: !99)
!98 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !100, line: 92, baseType: !101)
!100 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__event_cap_", scope: !32, file: !31, line: 372, baseType: !97, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__xindex_", scope: !32, file: !31, line: 376, baseType: !104, flags: DIFlagStaticMember)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !6, line: 1084, size: 32, elements: !105, templateParams: !256, identifier: "_ZTSNSt3__16atomicIiEE")
!105 = !{!106, !241, !245, !248, !253}
!106 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !104, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !108, templateParams: !239, identifier: "_ZTSNSt3__113__atomic_baseIiLb1EEE")
!108 = !{!109, !190, !194, !197, !202, !205, !206, !207, !208, !209, !210, !211, !212, !213, !216, !219, !220, !221, !224, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!109 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !107, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !111, templateParams: !187, identifier: "_ZTSNSt3__113__atomic_baseIiLb0EEE")
!111 = !{!112, !114, !121, !126, !131, !135, !138, !141, !144, !147, !150, !153, !157, !160, !161, !162, !165, !168, !169, !170, !173, !176, !180, !184}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !110, file: !6, line: 893, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !39)
!114 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !110, file: !6, line: 900, type: !115, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !118}
!117 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!121 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !110, file: !6, line: 909, type: !122, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!122 = !DISubroutineType(types: !123)
!123 = !{!117, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!126 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !110, file: !6, line: 912, type: !127, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !39, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !7, file: !6, line: 585, baseType: !5)
!131 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !110, file: !6, line: 916, type: !132, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134, !39, !130}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!135 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !110, file: !6, line: 920, type: !136, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!136 = !DISubroutineType(types: !137)
!137 = !{!39, !118, !130}
!138 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !110, file: !6, line: 924, type: !139, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!139 = !DISubroutineType(types: !140)
!140 = !{!39, !124, !130}
!141 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EEcviEv", scope: !110, file: !6, line: 928, type: !142, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!142 = !DISubroutineType(types: !143)
!143 = !{!39, !118}
!144 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !110, file: !6, line: 930, type: !145, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!145 = !DISubroutineType(types: !146)
!146 = !{!39, !124}
!147 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !110, file: !6, line: 932, type: !148, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!148 = !DISubroutineType(types: !149)
!149 = !{!39, !129, !39, !130}
!150 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !110, file: !6, line: 935, type: !151, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!151 = !DISubroutineType(types: !152)
!152 = !{!39, !134, !39, !130}
!153 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !110, file: !6, line: 938, type: !154, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!154 = !DISubroutineType(types: !155)
!155 = !{!117, !129, !156, !39, !130, !130}
!156 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !39, size: 64)
!157 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !110, file: !6, line: 943, type: !158, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!158 = !DISubroutineType(types: !159)
!159 = !{!117, !134, !156, !39, !130, !130}
!160 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !110, file: !6, line: 948, type: !154, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!161 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !110, file: !6, line: 953, type: !158, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!162 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !110, file: !6, line: 958, type: !163, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!163 = !DISubroutineType(types: !164)
!164 = !{!117, !129, !156, !39, !130}
!165 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !110, file: !6, line: 962, type: !166, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!166 = !DISubroutineType(types: !167)
!167 = !{!117, !134, !156, !39, !130}
!168 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !110, file: !6, line: 966, type: !163, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!169 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !110, file: !6, line: 970, type: !166, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!170 = !DISubprogram(name: "__atomic_base", scope: !110, file: !6, line: 976, type: !171, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !134}
!173 = !DISubprogram(name: "__atomic_base", scope: !110, file: !6, line: 982, type: !174, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !134, !39}
!176 = !DISubprogram(name: "__atomic_base", scope: !110, file: !6, line: 984, type: !177, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !134, !179}
!179 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !125, size: 64)
!180 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !110, file: !6, line: 985, type: !181, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !134, !179}
!183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !110, size: 64)
!184 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !110, file: !6, line: 986, type: !185, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!185 = !DISubroutineType(types: !186)
!186 = !{!183, !129, !179}
!187 = !{!188, !189}
!188 = !DITemplateTypeParameter(name: "_Tp", type: !39)
!189 = !DITemplateValueParameter(type: !117, value: i8 0)
!190 = !DISubprogram(name: "__atomic_base", scope: !107, file: !6, line: 1008, type: !191, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!194 = !DISubprogram(name: "__atomic_base", scope: !107, file: !6, line: 1010, type: !195, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !193, !39}
!197 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !107, file: !6, line: 1013, type: !198, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true)
!198 = !DISubroutineType(types: !199)
!199 = !{!39, !200, !39, !130}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!201 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!202 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !107, file: !6, line: 1016, type: !203, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true)
!203 = !DISubroutineType(types: !204)
!204 = !{!39, !193, !39, !130}
!205 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !107, file: !6, line: 1019, type: !198, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: true)
!206 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !107, file: !6, line: 1022, type: !203, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true)
!207 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !107, file: !6, line: 1025, type: !198, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true)
!208 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !107, file: !6, line: 1028, type: !203, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true)
!209 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !107, file: !6, line: 1031, type: !198, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: true)
!210 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !107, file: !6, line: 1034, type: !203, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true)
!211 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !107, file: !6, line: 1037, type: !198, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: true)
!212 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !107, file: !6, line: 1040, type: !203, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true)
!213 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEi", scope: !107, file: !6, line: 1044, type: !214, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true)
!214 = !DISubroutineType(types: !215)
!215 = !{!39, !200, !39}
!216 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEi", scope: !107, file: !6, line: 1046, type: !217, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true)
!217 = !DISubroutineType(types: !218)
!218 = !{!39, !193, !39}
!219 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEi", scope: !107, file: !6, line: 1048, type: !214, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true)
!220 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEi", scope: !107, file: !6, line: 1050, type: !217, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: true)
!221 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEv", scope: !107, file: !6, line: 1052, type: !222, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true)
!222 = !DISubroutineType(types: !223)
!223 = !{!39, !200}
!224 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEv", scope: !107, file: !6, line: 1054, type: !225, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true)
!225 = !DISubroutineType(types: !226)
!226 = !{!39, !193}
!227 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEv", scope: !107, file: !6, line: 1056, type: !222, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true)
!228 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEv", scope: !107, file: !6, line: 1058, type: !225, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true)
!229 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEpLEi", scope: !107, file: !6, line: 1060, type: !214, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: true)
!230 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEpLEi", scope: !107, file: !6, line: 1062, type: !217, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true)
!231 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmIEi", scope: !107, file: !6, line: 1064, type: !214, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true)
!232 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmIEi", scope: !107, file: !6, line: 1066, type: !217, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true)
!233 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEaNEi", scope: !107, file: !6, line: 1068, type: !214, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true)
!234 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEaNEi", scope: !107, file: !6, line: 1070, type: !217, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true)
!235 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEoREi", scope: !107, file: !6, line: 1072, type: !214, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: true)
!236 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEoREi", scope: !107, file: !6, line: 1074, type: !217, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true)
!237 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEeOEi", scope: !107, file: !6, line: 1076, type: !214, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true)
!238 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEeOEi", scope: !107, file: !6, line: 1078, type: !217, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true)
!239 = !{!188, !240}
!240 = !DITemplateValueParameter(type: !117, value: i8 1)
!241 = !DISubprogram(name: "atomic", scope: !104, file: !6, line: 1089, type: !242, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!245 = !DISubprogram(name: "atomic", scope: !104, file: !6, line: 1091, type: !246, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !244, !39}
!248 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIiEaSEi", scope: !104, file: !6, line: 1094, type: !249, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true)
!249 = !DISubroutineType(types: !250)
!250 = !{!39, !251, !39}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!252 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!253 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !104, file: !6, line: 1097, type: !254, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true)
!254 = !DISubroutineType(types: !255)
!255 = !{!39, !244, !39}
!256 = !{!188}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_", scope: !32, file: !31, line: 380, baseType: !258, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_size_", scope: !32, file: !31, line: 381, baseType: !97, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_cap_", scope: !32, file: !31, line: 382, baseType: !97, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_", scope: !32, file: !31, line: 383, baseType: !262, size: 64, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_size_", scope: !32, file: !31, line: 384, baseType: !97, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_cap_", scope: !32, file: !31, line: 385, baseType: !97, size: 64, offset: 1024)
!265 = !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !32, file: !31, line: 284, type: !266, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!266 = !DISubroutineType(types: !267)
!267 = !{!42, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!270 = !DISubprogram(name: "flags", linkageName: "_ZNSt3__18ios_base5flagsEj", scope: !32, file: !31, line: 285, type: !271, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!271 = !DISubroutineType(types: !272)
!272 = !{!42, !273, !42}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!274 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEj", scope: !32, file: !31, line: 286, type: !271, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!275 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEjj", scope: !32, file: !31, line: 287, type: !276, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!276 = !DISubroutineType(types: !277)
!277 = !{!42, !273, !42, !42}
!278 = !DISubprogram(name: "unsetf", linkageName: "_ZNSt3__18ios_base6unsetfEj", scope: !32, file: !31, line: 288, type: !279, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !273, !42}
!281 = !DISubprogram(name: "precision", linkageName: "_ZNKSt3__18ios_base9precisionEv", scope: !32, file: !31, line: 290, type: !282, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!282 = !DISubroutineType(types: !283)
!283 = !{!77, !268}
!284 = !DISubprogram(name: "precision", linkageName: "_ZNSt3__18ios_base9precisionEl", scope: !32, file: !31, line: 291, type: !285, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!285 = !DISubroutineType(types: !286)
!286 = !{!77, !273, !77}
!287 = !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !32, file: !31, line: 292, type: !282, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!288 = !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !32, file: !31, line: 293, type: !285, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!289 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__18ios_base5imbueERKNS_6localeE", scope: !32, file: !31, line: 296, type: !290, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !273, !315}
!292 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "locale", scope: !7, file: !293, line: 83, size: 64, elements: !294, identifier: "_ZTSNSt3__16localeE")
!293 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!294 = !{!295, !298, !299, !300, !301, !302, !303, !304, !305, !308, !312, !317, !323, !1216, !1219, !1222, !1225, !1226, !1229, !1233, !1236, !1237, !1240, !1243, !1287, !1291, !1333}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "none", scope: !292, file: !293, line: 93, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "category", scope: !292, file: !293, line: 90, baseType: !39)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "collate", scope: !292, file: !293, line: 94, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !292, file: !293, line: 95, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "monetary", scope: !292, file: !293, line: 96, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "numeric", scope: !292, file: !293, line: 97, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !292, file: !293, line: 98, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !292, file: !293, line: 99, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !292, file: !293, line: 100, baseType: !296, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__locale_", scope: !292, file: !293, line: 136, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__imp", scope: !292, file: !293, line: 135, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__16locale5__impE")
!308 = !DISubprogram(name: "locale", scope: !292, file: !293, line: 103, type: !309, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!312 = !DISubprogram(name: "locale", scope: !292, file: !293, line: 104, type: !313, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !311, !315}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!317 = !DISubprogram(name: "locale", scope: !292, file: !293, line: 105, type: !318, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !311, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!323 = !DISubprogram(name: "locale", scope: !292, file: !293, line: 106, type: !324, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !311, !326}
!326 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !7, file: !329, line: 194, baseType: !330)
!329 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iosfwd", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!330 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !7, file: !331, line: 4038, size: 192, elements: !332, templateParams: !1214, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE")
!331 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!332 = !{!333, !343, !599, !601, !605, !611, !616, !619, !623, !626, !629, !632, !635, !638, !641, !644, !647, !650, !838, !841, !867, !870, !871, !875, !879, !882, !885, !890, !893, !898, !903, !904, !905, !910, !915, !916, !917, !918, !919, !920, !921, !924, !925, !926, !927, !930, !933, !934, !935, !936, !939, !944, !949, !950, !951, !952, !955, !956, !957, !958, !959, !960, !963, !966, !967, !970, !971, !974, !975, !978, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !994, !997, !1000, !1003, !1006, !1009, !1012, !1015, !1018, !1021, !1024, !1027, !1030, !1033, !1036, !1039, !1042, !1045, !1048, !1051, !1054, !1057, !1060, !1063, !1067, !1070, !1073, !1076, !1077, !1080, !1083, !1086, !1089, !1092, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1123, !1126, !1129, !1132, !1135, !1138, !1141, !1144, !1145, !1146, !1150, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1166, !1174, !1175, !1176, !1177, !1178, !1179, !1182, !1185, !1188, !1189, !1192, !1195, !1196, !1197, !1200, !1203, !1206, !1209, !1210, !1211, !1212, !1213}
!333 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !330, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__basic_string_common<true>", scope: !7, file: !331, line: 583, size: 8, elements: !335, templateParams: !342, identifier: "_ZTSNSt3__121__basic_string_commonILb1EEE")
!335 = !{!336, !341}
!336 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv", scope: !334, file: !331, line: 561, type: !337, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!341 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_out_of_rangeEv", scope: !334, file: !331, line: 562, type: !337, isLocal: false, isDefinition: false, scopeLine: 562, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!342 = !{!240}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__r_", scope: !330, file: !331, line: 748, baseType: !344, size: 192)
!344 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >", scope: !7, file: !345, line: 2144, size: 192, elements: !346, templateParams: !596, identifier: "_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE")
!345 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!346 = !{!347, !553, !577, !581, !586, !589, !592}
!347 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !344, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>", scope: !7, file: !345, line: 2076, size: 192, elements: !349, templateParams: !549, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE")
!349 = !{!350, !532, !536, !541}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !348, file: !345, line: 2105, baseType: !351, size: 192, flags: DIFlagPrivate)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__rep", scope: !330, file: !331, line: 738, size: 192, elements: !352, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE")
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !331, line: 740, baseType: !354, size: 192)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !331, line: 740, size: 192, elements: !355, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repUt_E")
!355 = !{!356, !511, !525}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__l", scope: !354, file: !331, line: 742, baseType: !357, size: 192)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__long", scope: !330, file: !331, line: 699, size: 192, elements: !358, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE")
!358 = !{!359, !508, !509}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__cap_", scope: !357, file: !331, line: 701, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !330, file: !331, line: 643, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !362, file: !345, line: 1517, baseType: !503)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<char> >", scope: !7, file: !345, line: 1506, size: 8, elements: !363, templateParams: !502, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIcEEEE")
!363 = !{!364, !421, !447, !450, !455, !458, !475, !490, !493, !496, !499}
!364 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !362, file: !345, line: 1540, type: !365, isLocal: false, isDefinition: false, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !419, !361}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !362, file: !345, line: 1511, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !369, file: !345, line: 1031, baseType: !415)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char> >", scope: !7, file: !345, line: 1029, size: 8, elements: !370, templateParams: !371, identifier: "_ZTSNSt3__114__pointer_typeIcNS_9allocatorIcEEEE")
!370 = !{}
!371 = !{!372, !373}
!372 = !DITemplateTypeParameter(name: "_Tp", type: !322)
!373 = !DITemplateTypeParameter(name: "_Dp", type: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !7, file: !345, line: 1759, size: 8, elements: !375, templateParams: !414, identifier: "_ZTSNSt3__19allocatorIcEE")
!375 = !{!376, !380, !389, !395, !405, !408, !411}
!376 = !DISubprogram(name: "allocator", scope: !374, file: !345, line: 1775, type: !377, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!380 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERc", scope: !374, file: !345, line: 1777, type: !381, isLocal: false, isDefinition: false, scopeLine: 1777, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !385, !387}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !374, file: !345, line: 1764, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !374, file: !345, line: 1766, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !322, size: 64)
!389 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERKc", scope: !374, file: !345, line: 1779, type: !390, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !385, !393}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !374, file: !345, line: 1765, baseType: !320)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !374, file: !345, line: 1767, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !321, size: 64)
!395 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !374, file: !345, line: 1781, type: !396, isLocal: false, isDefinition: false, scopeLine: 1781, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!396 = !DISubroutineType(types: !397)
!397 = !{!383, !379, !398, !399}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !345, line: 1762, baseType: !97)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !400, file: !345, line: 702, baseType: !403)
!400 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<void>", scope: !7, file: !345, line: 698, size: 8, elements: !370, templateParams: !401, identifier: "_ZTSNSt3__19allocatorIvEE")
!401 = !{!402}
!402 = !DITemplateTypeParameter(name: "_Tp", type: null)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!405 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !374, file: !345, line: 1788, type: !406, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !379, !383, !398}
!408 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIcE8max_sizeEv", scope: !374, file: !345, line: 1790, type: !409, isLocal: false, isDefinition: false, scopeLine: 1790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!409 = !DISubroutineType(types: !410)
!410 = !{!398, !385}
!411 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIcE7destroyEPc", scope: !374, file: !345, line: 1853, type: !412, isLocal: false, isDefinition: false, scopeLine: 1853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !379, !383}
!414 = !{!372}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !416, file: !345, line: 1017, baseType: !383)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char>, true>", scope: !417, file: !345, line: 1015, size: 8, elements: !370, templateParams: !418, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeIcNS_9allocatorIcEELb1EEE")
!417 = !DINamespace(name: "__pointer_type_imp", scope: !7, file: !345, line: 1011)
!418 = !{!372, !373, !240}
!419 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !362, file: !345, line: 1508, baseType: !374)
!421 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKv", scope: !362, file: !345, line: 1543, type: !422, isLocal: false, isDefinition: false, scopeLine: 1543, flags: DIFlagPrototyped, isOptimized: true)
!422 = !DISubroutineType(types: !423)
!423 = !{!367, !419, !361, !424}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !362, file: !345, line: 1514, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !426, file: !345, line: 1109, baseType: !430)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_void_pointer<char *, std::__1::allocator<char>, false>", scope: !7, file: !345, line: 1106, size: 8, elements: !370, templateParams: !427, identifier: "_ZTSNSt3__120__const_void_pointerIPcNS_9allocatorIcEELb0EEE")
!427 = !{!428, !429, !189}
!428 = !DITemplateTypeParameter(name: "_Ptr", type: !384)
!429 = !DITemplateTypeParameter(name: "_Alloc", type: !374)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !431, file: !345, line: 974, baseType: !403)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !7, file: !345, line: 967, size: 8, elements: !432, templateParams: !446, identifier: "_ZTSNSt3__114pointer_traitsIPcEE")
!432 = !{!433}
!433 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPcE10pointer_toERc", scope: !431, file: !345, line: 983, type: !434, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !431, file: !345, line: 969, baseType: !384)
!437 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !440, file: !439, line: 414, baseType: !322)
!439 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<char *>::__nat, char>", scope: !7, file: !439, line: 414, size: 8, elements: !370, templateParams: !441, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPcE5__natEcEE")
!441 = !{!442, !443, !445}
!442 = !DITemplateValueParameter(name: "_Bp", type: !117, value: i8 0)
!443 = !DITemplateTypeParameter(name: "_If", type: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !431, file: !345, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPcE5__natE")
!445 = !DITemplateTypeParameter(name: "_Then", type: !322)
!446 = !{!428}
!447 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !362, file: !345, line: 1548, type: !448, isLocal: false, isDefinition: false, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: true)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !419, !367, !361}
!450 = !DISubprogram(name: "max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_", scope: !362, file: !345, line: 1592, type: !451, isLocal: false, isDefinition: false, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true)
!451 = !DISubroutineType(types: !452)
!452 = !{!361, !453}
!453 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!455 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionERKS2_", scope: !362, file: !345, line: 1597, type: !456, isLocal: false, isDefinition: false, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true)
!456 = !DISubroutineType(types: !457)
!457 = !{!420, !453}
!458 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb1EEE", scope: !362, file: !345, line: 1697, type: !459, isLocal: false, isDefinition: false, scopeLine: 1697, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!459 = !DISubroutineType(types: !460)
!460 = !{!367, !419, !361, !424, !461}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !7, file: !439, line: 528, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !7, file: !439, line: 504, size: 8, elements: !463, templateParams: !472, identifier: "_ZTSNSt3__117integral_constantIbLb1EEE")
!463 = !{!464, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !462, file: !439, line: 506, baseType: !465, flags: DIFlagStaticMember, extraData: i1 true)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!466 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb1EEcvbEv", scope: !462, file: !439, line: 510, type: !467, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !462, file: !439, line: 507, baseType: !117)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!472 = !{!473, !474}
!473 = !DITemplateTypeParameter(name: "_Tp", type: !117)
!474 = !DITemplateValueParameter(name: "__v", type: !117, value: i8 1)
!475 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb0EEE", scope: !362, file: !345, line: 1701, type: !476, isLocal: false, isDefinition: false, scopeLine: 1701, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!476 = !DISubroutineType(types: !477)
!477 = !{!367, !419, !361, !424, !478}
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !7, file: !439, line: 529, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !7, file: !439, line: 504, size: 8, elements: !480, templateParams: !488, identifier: "_ZTSNSt3__117integral_constantIbLb0EEE")
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !479, file: !439, line: 506, baseType: !465, flags: DIFlagStaticMember, extraData: i1 false)
!482 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb0EEcvbEv", scope: !479, file: !439, line: 510, type: !483, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !479, file: !439, line: 507, baseType: !117)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!488 = !{!473, !489}
!489 = !DITemplateValueParameter(name: "__v", type: !117, value: i8 0)
!490 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_", scope: !362, file: !345, line: 1730, type: !491, isLocal: false, isDefinition: false, scopeLine: 1730, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!491 = !DISubroutineType(types: !492)
!492 = !{!361, !461, !453}
!493 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb0EEERKS2_", scope: !362, file: !345, line: 1733, type: !494, isLocal: false, isDefinition: false, scopeLine: 1733, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!494 = !DISubroutineType(types: !495)
!495 = !{!361, !478, !453}
!496 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb1EEERKS2_", scope: !362, file: !345, line: 1738, type: !497, isLocal: false, isDefinition: false, scopeLine: 1738, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!497 = !DISubroutineType(types: !498)
!498 = !{!420, !461, !453}
!499 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS2_", scope: !362, file: !345, line: 1742, type: !500, isLocal: false, isDefinition: false, scopeLine: 1742, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!500 = !DISubroutineType(types: !501)
!501 = !{!420, !478, !453}
!502 = !{!429}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !504, file: !345, line: 1151, baseType: !507)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<char>, long, true>", scope: !7, file: !345, line: 1149, size: 8, elements: !370, templateParams: !505, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIcEElLb1EEE")
!505 = !{!429, !506, !240}
!506 = !DITemplateTypeParameter(name: "_DiffType", type: !80)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !374, file: !345, line: 1762, baseType: !97)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !357, file: !331, line: 702, baseType: !360, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !357, file: !331, line: 703, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !330, file: !331, line: 647, baseType: !367)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !354, file: !331, line: 743, baseType: !512, size: 192)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__short", scope: !330, file: !331, line: 717, size: 192, elements: !513, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortE")
!513 = !{!514, !521}
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !331, line: 719, baseType: !515, size: 8)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !512, file: !331, line: 719, size: 8, elements: !516, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortUt_E")
!516 = !{!517, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !515, file: !331, line: 721, baseType: !518, size: 8)
!518 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__lx", scope: !515, file: !331, line: 722, baseType: !520, size: 8)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !330, file: !331, line: 640, baseType: !322)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !512, file: !331, line: 724, baseType: !522, size: 184, offset: 8)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 184, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 23)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !354, file: !331, line: 744, baseType: !526, size: 192)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__raw", scope: !330, file: !331, line: 733, size: 192, elements: !527, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__rawE")
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__words", scope: !526, file: !331, line: 735, baseType: !529, size: 192)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 192, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 3)
!532 = !DISubprogram(name: "__compressed_pair_elem", scope: !348, file: !345, line: 2082, type: !533, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!536 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !348, file: !345, line: 2101, type: !537, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!537 = !DISubroutineType(types: !538)
!538 = !{!539, !535}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !348, file: !345, line: 2078, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !351, size: 64)
!541 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !348, file: !345, line: 2102, type: !542, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!542 = !DISubroutineType(types: !543)
!543 = !{!544, !547}
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !348, file: !345, line: 2079, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!549 = !{!550, !551, !552}
!550 = !DITemplateTypeParameter(name: "_Tp", type: !351)
!551 = !DITemplateValueParameter(name: "_Idx", type: !39, value: i32 0)
!552 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !117, value: i8 0)
!553 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !344, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<char>, 1, true>", scope: !7, file: !345, line: 2109, size: 8, elements: !555, templateParams: !573, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEE")
!555 = !{!556, !557, !561, !566}
!556 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !554, baseType: !374, flags: DIFlagPrivate)
!557 = !DISubprogram(name: "__compressed_pair_elem", scope: !554, file: !345, line: 2116, type: !558, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!561 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !554, file: !345, line: 2136, type: !562, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!562 = !DISubroutineType(types: !563)
!563 = !{!564, !560}
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !554, file: !345, line: 2111, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !374, size: 64)
!566 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !554, file: !345, line: 2137, type: !567, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !571}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !554, file: !345, line: 2112, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !386, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!573 = !{!574, !575, !576}
!574 = !DITemplateTypeParameter(name: "_Tp", type: !374)
!575 = !DITemplateValueParameter(name: "_Idx", type: !39, value: i32 1)
!576 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !117, value: i8 1)
!577 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !344, file: !345, line: 2212, type: !578, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!578 = !DISubroutineType(types: !579)
!579 = !{!539, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!581 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !344, file: !345, line: 2217, type: !582, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!582 = !DISubroutineType(types: !583)
!583 = !{!544, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!586 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !344, file: !345, line: 2222, type: !587, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!587 = !DISubroutineType(types: !588)
!588 = !{!564, !580}
!589 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !344, file: !345, line: 2227, type: !590, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!590 = !DISubroutineType(types: !591)
!591 = !{!569, !584}
!592 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E4swapERS8_", scope: !344, file: !345, line: 2232, type: !593, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !580, !595}
!595 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !344, size: 64)
!596 = !{!597, !598}
!597 = !DITemplateTypeParameter(name: "_T1", type: !351)
!598 = !DITemplateTypeParameter(name: "_T2", type: !374)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !330, file: !331, line: 751, baseType: !600, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!601 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 753, type: !602, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!605 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 756, type: !606, isLocal: false, isDefinition: false, scopeLine: 756, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !604, !608}
!608 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !330, file: !331, line: 641, baseType: !374)
!611 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 763, type: !612, isLocal: false, isDefinition: false, scopeLine: 763, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !604, !614}
!614 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!616 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 764, type: !617, isLocal: false, isDefinition: false, scopeLine: 764, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !604, !614, !608}
!619 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 768, type: !620, isLocal: false, isDefinition: false, scopeLine: 768, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !604, !622}
!622 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !330, size: 64)
!623 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 776, type: !624, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !604, !622, !608}
!626 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 778, type: !627, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !604, !320}
!629 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 780, type: !630, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !604, !320, !570}
!632 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 782, type: !633, isLocal: false, isDefinition: false, scopeLine: 782, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !604, !320, !360}
!635 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 784, type: !636, isLocal: false, isDefinition: false, scopeLine: 784, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !604, !320, !360, !570}
!638 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 786, type: !639, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !604, !360, !322}
!641 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 788, type: !642, isLocal: false, isDefinition: false, scopeLine: 788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !604, !360, !322, !570}
!644 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 789, type: !645, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !604, !614, !360, !360, !570}
!647 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 792, type: !648, isLocal: false, isDefinition: false, scopeLine: 792, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !604, !614, !360, !570}
!650 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 800, type: !651, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !604, !653}
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__self_view", scope: !330, file: !331, line: 638, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::__1::char_traits<char> >", scope: !7, file: !655, line: 184, size: 128, elements: !656, templateParams: !786, identifier: "_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE")
!655 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string_view", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!656 = !{!657, !660, !664, !665, !669, !674, !678, !681, !684, !690, !691, !692, !693, !699, !700, !701, !702, !705, !706, !707, !710, !714, !715, !718, !719, !722, !725, !726, !729, !733, !736, !739, !742, !745, !748, !751, !754, !757, !760, !763, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !654, file: !655, line: 199, baseType: !658, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !655, line: 197, baseType: !97)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !654, file: !655, line: 566, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !654, file: !655, line: 188, baseType: !322)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !654, file: !655, line: 567, baseType: !659, size: 64, offset: 64)
!665 = !DISubprogram(name: "basic_string_view", scope: !654, file: !655, line: 207, type: !666, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!669 = !DISubprogram(name: "basic_string_view", scope: !654, file: !655, line: 210, type: !670, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !668, !672}
!672 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!674 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEaSERKS3_", scope: !654, file: !655, line: 213, type: !675, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!675 = !DISubroutineType(types: !676)
!676 = !{!677, !668, !672}
!677 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !654, size: 64)
!678 = !DISubprogram(name: "basic_string_view", scope: !654, file: !655, line: 216, type: !679, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !668, !320, !659}
!681 = !DISubprogram(name: "basic_string_view", scope: !654, file: !655, line: 225, type: !682, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !668, !320}
!684 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginEv", scope: !654, file: !655, line: 230, type: !685, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!685 = !DISubroutineType(types: !686)
!686 = !{!687, !689}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !654, file: !655, line: 193, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !654, file: !655, line: 190, baseType: !320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!690 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endEv", scope: !654, file: !655, line: 233, type: !685, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!691 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginEv", scope: !654, file: !655, line: 236, type: !685, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!692 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendEv", scope: !654, file: !655, line: 239, type: !685, isLocal: false, isDefinition: false, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!693 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6rbeginEv", scope: !654, file: !655, line: 242, type: !694, isLocal: false, isDefinition: false, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!694 = !DISubroutineType(types: !695)
!695 = !{!696, !689}
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !654, file: !655, line: 195, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !7, file: !698, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorIPKcEE")
!698 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iterator", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!699 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4rendEv", scope: !654, file: !655, line: 245, type: !694, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!700 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7crbeginEv", scope: !654, file: !655, line: 248, type: !694, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!701 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5crendEv", scope: !654, file: !655, line: 251, type: !694, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!702 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv", scope: !654, file: !655, line: 255, type: !703, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!703 = !DISubroutineType(types: !704)
!704 = !{!659, !689}
!705 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6lengthEv", scope: !654, file: !655, line: 258, type: !703, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!706 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE8max_sizeEv", scope: !654, file: !655, line: 261, type: !703, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!707 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5emptyEv", scope: !654, file: !655, line: 264, type: !708, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!708 = !DISubroutineType(types: !709)
!709 = !{!117, !689}
!710 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEEixEm", scope: !654, file: !655, line: 268, type: !711, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!711 = !DISubroutineType(types: !712)
!712 = !{!713, !689, !659}
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !654, file: !655, line: 192, baseType: !394)
!714 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE2atEm", scope: !654, file: !655, line: 271, type: !711, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!715 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5frontEv", scope: !654, file: !655, line: 279, type: !716, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!716 = !DISubroutineType(types: !717)
!717 = !{!713, !689}
!718 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4backEv", scope: !654, file: !655, line: 285, type: !716, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!719 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv", scope: !654, file: !655, line: 291, type: !720, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!720 = !DISubroutineType(types: !721)
!721 = !{!688, !689}
!722 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_prefixEm", scope: !654, file: !655, line: 295, type: !723, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !668, !659}
!725 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_suffixEm", scope: !654, file: !655, line: 303, type: !723, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!726 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE4swapERS3_", scope: !654, file: !655, line: 310, type: !727, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !668, !677}
!729 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4copyEPcmm", scope: !654, file: !655, line: 322, type: !730, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!730 = !DISubroutineType(types: !731)
!731 = !{!732, !689, !384, !659, !659}
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !654, file: !655, line: 197, baseType: !97)
!733 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrEmm", scope: !654, file: !655, line: 332, type: !734, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!734 = !DISubroutineType(types: !735)
!735 = !{!654, !689, !659, !659}
!736 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_", scope: !654, file: !655, line: 339, type: !737, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!737 = !DISubroutineType(types: !738)
!738 = !{!39, !689, !654}
!739 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_", scope: !654, file: !655, line: 349, type: !740, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!740 = !DISubroutineType(types: !741)
!741 = !{!39, !689, !659, !659, !654}
!742 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_mm", scope: !654, file: !655, line: 355, type: !743, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!743 = !DISubroutineType(types: !744)
!744 = !{!39, !689, !659, !659, !654, !659, !659}
!745 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEPKc", scope: !654, file: !655, line: 362, type: !746, isLocal: false, isDefinition: false, scopeLine: 362, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!746 = !DISubroutineType(types: !747)
!747 = !{!39, !689, !320}
!748 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKc", scope: !654, file: !655, line: 368, type: !749, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!749 = !DISubroutineType(types: !750)
!750 = !{!39, !689, !659, !659, !320}
!751 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKcm", scope: !654, file: !655, line: 374, type: !752, isLocal: false, isDefinition: false, scopeLine: 374, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!752 = !DISubroutineType(types: !753)
!753 = !{!39, !689, !659, !659, !320, !659}
!754 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findES3_m", scope: !654, file: !655, line: 381, type: !755, isLocal: false, isDefinition: false, scopeLine: 381, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!755 = !DISubroutineType(types: !756)
!756 = !{!732, !689, !654, !659}
!757 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEcm", scope: !654, file: !655, line: 389, type: !758, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!758 = !DISubroutineType(types: !759)
!759 = !{!732, !689, !322, !659}
!760 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcmm", scope: !654, file: !655, line: 396, type: !761, isLocal: false, isDefinition: false, scopeLine: 396, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!761 = !DISubroutineType(types: !762)
!762 = !{!732, !689, !320, !659, !659}
!763 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcm", scope: !654, file: !655, line: 404, type: !764, isLocal: false, isDefinition: false, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!764 = !DISubroutineType(types: !765)
!765 = !{!732, !689, !320, !659}
!766 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindES3_m", scope: !654, file: !655, line: 413, type: !755, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!767 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEcm", scope: !654, file: !655, line: 421, type: !758, isLocal: false, isDefinition: false, scopeLine: 421, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!768 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcmm", scope: !654, file: !655, line: 428, type: !761, isLocal: false, isDefinition: false, scopeLine: 428, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!769 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcm", scope: !654, file: !655, line: 436, type: !764, isLocal: false, isDefinition: false, scopeLine: 436, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!770 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofES3_m", scope: !654, file: !655, line: 445, type: !755, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!771 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEcm", scope: !654, file: !655, line: 453, type: !758, isLocal: false, isDefinition: false, scopeLine: 453, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!772 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcmm", scope: !654, file: !655, line: 457, type: !761, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!773 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcm", scope: !654, file: !655, line: 465, type: !764, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!774 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofES3_m", scope: !654, file: !655, line: 474, type: !755, isLocal: false, isDefinition: false, scopeLine: 474, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!775 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEcm", scope: !654, file: !655, line: 482, type: !758, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!776 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcmm", scope: !654, file: !655, line: 486, type: !761, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!777 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcm", scope: !654, file: !655, line: 494, type: !764, isLocal: false, isDefinition: false, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!778 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofES3_m", scope: !654, file: !655, line: 503, type: !755, isLocal: false, isDefinition: false, scopeLine: 503, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!779 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEcm", scope: !654, file: !655, line: 511, type: !758, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!780 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcmm", scope: !654, file: !655, line: 518, type: !761, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!781 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcm", scope: !654, file: !655, line: 526, type: !764, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!782 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofES3_m", scope: !654, file: !655, line: 535, type: !755, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!783 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEcm", scope: !654, file: !655, line: 543, type: !758, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!784 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcmm", scope: !654, file: !655, line: 550, type: !761, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!785 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcm", scope: !654, file: !655, line: 558, type: !764, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!786 = !{!787, !788}
!787 = !DITemplateTypeParameter(name: "_CharT", type: !322)
!788 = !DITemplateTypeParameter(name: "_Traits", type: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !7, file: !790, line: 197, size: 8, elements: !791, templateParams: !837, identifier: "_ZTSNSt3__111char_traitsIcEE")
!790 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!791 = !{!792, !799, !802, !803, !807, !810, !813, !817, !818, !821, !825, !828, !831, !834}
!792 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !789, file: !790, line: 206, type: !793, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !795, !797}
!795 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !789, file: !790, line: 199, baseType: !322)
!797 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!799 = !DISubprogram(name: "eq", linkageName: "_ZNSt3__111char_traitsIcE2eqEcc", scope: !789, file: !790, line: 207, type: !800, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true)
!800 = !DISubroutineType(types: !801)
!801 = !{!117, !796, !796}
!802 = !DISubprogram(name: "lt", linkageName: "_ZNSt3__111char_traitsIcE2ltEcc", scope: !789, file: !790, line: 209, type: !800, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true)
!803 = !DISubprogram(name: "compare", linkageName: "_ZNSt3__111char_traitsIcE7compareEPKcS3_m", scope: !789, file: !790, line: 213, type: !804, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true)
!804 = !DISubroutineType(types: !805)
!805 = !{!39, !806, !806, !97}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!807 = !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !789, file: !790, line: 215, type: !808, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true)
!808 = !DISubroutineType(types: !809)
!809 = !{!97, !806}
!810 = !DISubprogram(name: "find", linkageName: "_ZNSt3__111char_traitsIcE4findEPKcmRS2_", scope: !789, file: !790, line: 217, type: !811, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true)
!811 = !DISubroutineType(types: !812)
!812 = !{!806, !806, !97, !797}
!813 = !DISubprogram(name: "move", linkageName: "_ZNSt3__111char_traitsIcE4moveEPcPKcm", scope: !789, file: !790, line: 218, type: !814, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true)
!814 = !DISubroutineType(types: !815)
!815 = !{!816, !816, !806, !97}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!817 = !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !789, file: !790, line: 220, type: !814, isLocal: false, isDefinition: false, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true)
!818 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !789, file: !790, line: 225, type: !819, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true)
!819 = !DISubroutineType(types: !820)
!820 = !{!816, !816, !97, !796}
!821 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt3__111char_traitsIcE7not_eofEi", scope: !789, file: !790, line: 228, type: !822, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true)
!822 = !DISubroutineType(types: !823)
!823 = !{!824, !824}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !789, file: !790, line: 200, baseType: !39)
!825 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt3__111char_traitsIcE12to_char_typeEi", scope: !789, file: !790, line: 230, type: !826, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true)
!826 = !DISubroutineType(types: !827)
!827 = !{!796, !824}
!828 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt3__111char_traitsIcE11to_int_typeEc", scope: !789, file: !790, line: 232, type: !829, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true)
!829 = !DISubroutineType(types: !830)
!830 = !{!824, !796}
!831 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !789, file: !790, line: 234, type: !832, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true)
!832 = !DISubroutineType(types: !833)
!833 = !{!117, !824, !824}
!834 = !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !789, file: !790, line: 236, type: !835, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true)
!835 = !DISubroutineType(types: !836)
!836 = !{!824}
!837 = !{!787}
!838 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 802, type: !839, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !604, !653, !570}
!841 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 811, type: !842, isLocal: false, isDefinition: false, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !604, !844}
!844 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !9, file: !845, line: 59, size: 128, elements: !846, templateParams: !865, identifier: "_ZTSSt16initializer_listIcE")
!845 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/initializer_list", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!846 = !{!847, !848, !849, !853, !856, !861, !864}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !844, file: !845, line: 61, baseType: !320, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !844, file: !845, line: 62, baseType: !97, size: 64, offset: 64)
!849 = !DISubprogram(name: "initializer_list", scope: !844, file: !845, line: 66, type: !850, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !852, !320, !97}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!853 = !DISubprogram(name: "initializer_list", scope: !844, file: !845, line: 81, type: !854, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !852}
!856 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIcE4sizeEv", scope: !844, file: !845, line: 85, type: !857, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!857 = !DISubroutineType(types: !858)
!858 = !{!97, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!861 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIcE5beginEv", scope: !844, file: !845, line: 89, type: !862, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!862 = !DISubroutineType(types: !863)
!863 = !{!320, !859}
!864 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIcE3endEv", scope: !844, file: !845, line: 93, type: !862, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!865 = !{!866}
!866 = !DITemplateTypeParameter(name: "_Ep", type: !322)
!867 = !DISubprogram(name: "basic_string", scope: !330, file: !331, line: 813, type: !868, isLocal: false, isDefinition: false, scopeLine: 813, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !604, !844, !570}
!870 = !DISubprogram(name: "~basic_string", scope: !330, file: !331, line: 816, type: !602, isLocal: false, isDefinition: false, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!871 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv", scope: !330, file: !331, line: 819, type: !872, isLocal: false, isDefinition: false, scopeLine: 819, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!872 = !DISubroutineType(types: !873)
!873 = !{!653, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!875 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_", scope: !330, file: !331, line: 821, type: !876, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!876 = !DISubroutineType(types: !877)
!877 = !{!878, !604, !614}
!878 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !330, size: 64)
!879 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEOS5_", scope: !330, file: !331, line: 830, type: !880, isLocal: false, isDefinition: false, scopeLine: 830, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!880 = !DISubroutineType(types: !881)
!881 = !{!878, !604, !622}
!882 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSESt16initializer_listIcE", scope: !330, file: !331, line: 833, type: !883, isLocal: false, isDefinition: false, scopeLine: 833, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!883 = !DISubroutineType(types: !884)
!884 = !{!878, !604, !844}
!885 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc", scope: !330, file: !331, line: 835, type: !886, isLocal: false, isDefinition: false, scopeLine: 835, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!886 = !DISubroutineType(types: !887)
!887 = !{!878, !604, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!890 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc", scope: !330, file: !331, line: 836, type: !891, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!891 = !DISubroutineType(types: !892)
!892 = !{!878, !604, !520}
!893 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !330, file: !331, line: 853, type: !894, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!894 = !DISubroutineType(types: !895)
!895 = !{!896, !604}
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !330, file: !331, line: 659, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<char *>", scope: !7, file: !698, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPcEE")
!898 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !330, file: !331, line: 856, type: !899, isLocal: false, isDefinition: false, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!899 = !DISubroutineType(types: !900)
!900 = !{!901, !874}
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !330, file: !331, line: 660, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<const char *>", scope: !7, file: !698, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPKcEE")
!903 = !DISubprogram(name: "end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !330, file: !331, line: 859, type: !894, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!904 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !330, file: !331, line: 862, type: !899, isLocal: false, isDefinition: false, scopeLine: 862, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!905 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !330, file: !331, line: 866, type: !906, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!906 = !DISubroutineType(types: !907)
!907 = !{!908, !604}
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !330, file: !331, line: 662, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<char *> >", scope: !7, file: !698, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPcEEEE")
!910 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !330, file: !331, line: 869, type: !911, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!911 = !DISubroutineType(types: !912)
!912 = !{!913, !874}
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !330, file: !331, line: 663, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<const char *> >", scope: !7, file: !698, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKcEEEE")
!915 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !330, file: !331, line: 872, type: !906, isLocal: false, isDefinition: false, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!916 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !330, file: !331, line: 875, type: !911, isLocal: false, isDefinition: false, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!917 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6cbeginEv", scope: !330, file: !331, line: 879, type: !899, isLocal: false, isDefinition: false, scopeLine: 879, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!918 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4cendEv", scope: !330, file: !331, line: 882, type: !899, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!919 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7crbeginEv", scope: !330, file: !331, line: 885, type: !911, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!920 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5crendEv", scope: !330, file: !331, line: 888, type: !911, isLocal: false, isDefinition: false, scopeLine: 888, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!921 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !330, file: !331, line: 891, type: !922, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!922 = !DISubroutineType(types: !923)
!923 = !{!360, !874}
!924 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv", scope: !330, file: !331, line: 893, type: !922, isLocal: false, isDefinition: false, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!925 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv", scope: !330, file: !331, line: 894, type: !922, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!926 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv", scope: !330, file: !331, line: 895, type: !922, isLocal: false, isDefinition: false, scopeLine: 895, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!927 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc", scope: !330, file: !331, line: 899, type: !928, isLocal: false, isDefinition: false, scopeLine: 899, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !604, !360, !520}
!930 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm", scope: !330, file: !331, line: 900, type: !931, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !604, !360}
!933 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm", scope: !330, file: !331, line: 902, type: !931, isLocal: false, isDefinition: false, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!934 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13shrink_to_fitEv", scope: !330, file: !331, line: 904, type: !602, isLocal: false, isDefinition: false, scopeLine: 904, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!935 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearEv", scope: !330, file: !331, line: 906, type: !602, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!936 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyEv", scope: !330, file: !331, line: 907, type: !937, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!937 = !DISubroutineType(types: !938)
!938 = !{!117, !874}
!939 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !330, file: !331, line: 909, type: !940, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!940 = !DISubroutineType(types: !941)
!941 = !{!942, !874, !360}
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !330, file: !331, line: 646, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !889, size: 64)
!944 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !330, file: !331, line: 910, type: !945, isLocal: false, isDefinition: false, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!945 = !DISubroutineType(types: !946)
!946 = !{!947, !604, !360}
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !330, file: !331, line: 645, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !520, size: 64)
!949 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !330, file: !331, line: 912, type: !940, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!950 = !DISubprogram(name: "at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !330, file: !331, line: 913, type: !945, isLocal: false, isDefinition: false, scopeLine: 913, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!951 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLERKS5_", scope: !330, file: !331, line: 915, type: !876, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!952 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLENS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 916, type: !953, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!953 = !DISubroutineType(types: !954)
!954 = !{!878, !604, !653}
!955 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEPKc", scope: !330, file: !331, line: 917, type: !886, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!956 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc", scope: !330, file: !331, line: 918, type: !891, isLocal: false, isDefinition: false, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!957 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLESt16initializer_listIcE", scope: !330, file: !331, line: 920, type: !883, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!958 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_", scope: !330, file: !331, line: 924, type: !876, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!959 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendENS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 926, type: !953, isLocal: false, isDefinition: false, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!960 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm", scope: !330, file: !331, line: 927, type: !961, isLocal: false, isDefinition: false, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!961 = !DISubroutineType(types: !962)
!962 = !{!878, !604, !614, !360, !360}
!963 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm", scope: !330, file: !331, line: 936, type: !964, isLocal: false, isDefinition: false, scopeLine: 936, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!964 = !DISubroutineType(types: !965)
!965 = !{!878, !604, !888, !360}
!966 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc", scope: !330, file: !331, line: 937, type: !886, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!967 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc", scope: !330, file: !331, line: 938, type: !968, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!968 = !DISubroutineType(types: !969)
!969 = !{!878, !604, !360, !520}
!970 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendESt16initializer_listIcE", scope: !330, file: !331, line: 971, type: !883, isLocal: false, isDefinition: false, scopeLine: 971, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!971 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc", scope: !330, file: !331, line: 974, type: !972, isLocal: false, isDefinition: false, scopeLine: 974, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !604, !520}
!974 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backEv", scope: !330, file: !331, line: 976, type: !602, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!975 = !DISubprogram(name: "front", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !330, file: !331, line: 977, type: !976, isLocal: false, isDefinition: false, scopeLine: 977, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!976 = !DISubroutineType(types: !977)
!977 = !{!947, !604}
!978 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !330, file: !331, line: 978, type: !979, isLocal: false, isDefinition: false, scopeLine: 978, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!979 = !DISubroutineType(types: !980)
!980 = !{!942, !874}
!981 = !DISubprogram(name: "back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !330, file: !331, line: 979, type: !976, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!982 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !330, file: !331, line: 980, type: !979, isLocal: false, isDefinition: false, scopeLine: 980, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!983 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignENS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 983, type: !953, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!984 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_", scope: !330, file: !331, line: 985, type: !876, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!985 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEOS5_", scope: !330, file: !331, line: 988, type: !880, isLocal: false, isDefinition: false, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!986 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_mm", scope: !330, file: !331, line: 992, type: !961, isLocal: false, isDefinition: false, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!987 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm", scope: !330, file: !331, line: 1001, type: !964, isLocal: false, isDefinition: false, scopeLine: 1001, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!988 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc", scope: !330, file: !331, line: 1002, type: !886, isLocal: false, isDefinition: false, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!989 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEmc", scope: !330, file: !331, line: 1003, type: !968, isLocal: false, isDefinition: false, scopeLine: 1003, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!990 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignESt16initializer_listIcE", scope: !330, file: !331, line: 1024, type: !883, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!991 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_", scope: !330, file: !331, line: 1028, type: !992, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!992 = !DISubroutineType(types: !993)
!993 = !{!878, !604, !360, !614}
!994 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmNS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 1030, type: !995, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!995 = !DISubroutineType(types: !996)
!996 = !{!878, !604, !360, !653}
!997 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_mm", scope: !330, file: !331, line: 1039, type: !998, isLocal: false, isDefinition: false, scopeLine: 1039, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!998 = !DISubroutineType(types: !999)
!999 = !{!878, !604, !360, !614, !360, !360}
!1000 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm", scope: !330, file: !331, line: 1040, type: !1001, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!878, !604, !360, !888, !360}
!1003 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc", scope: !330, file: !331, line: 1041, type: !1004, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!878, !604, !360, !888}
!1006 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmmc", scope: !330, file: !331, line: 1042, type: !1007, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!878, !604, !360, !360, !520}
!1009 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc", scope: !330, file: !331, line: 1043, type: !1010, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!896, !604, !901, !520}
!1012 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEmc", scope: !330, file: !331, line: 1045, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!896, !604, !901, !360, !520}
!1015 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEESt16initializer_listIcE", scope: !330, file: !331, line: 1066, type: !1016, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!896, !604, !901, !844}
!1018 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm", scope: !330, file: !331, line: 1070, type: !1019, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!878, !604, !360, !360}
!1021 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEE", scope: !330, file: !331, line: 1072, type: !1022, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!896, !604, !901}
!1024 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEES9_", scope: !330, file: !331, line: 1074, type: !1025, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!896, !604, !901, !901}
!1027 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_", scope: !330, file: !331, line: 1077, type: !1028, isLocal: false, isDefinition: false, scopeLine: 1077, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!878, !604, !360, !360, !614}
!1030 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmNS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 1079, type: !1031, isLocal: false, isDefinition: false, scopeLine: 1079, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!878, !604, !360, !360, !653}
!1033 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_mm", scope: !330, file: !331, line: 1080, type: !1034, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!878, !604, !360, !360, !614, !360, !360}
!1036 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm", scope: !330, file: !331, line: 1089, type: !1037, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!878, !604, !360, !360, !888, !360}
!1039 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKc", scope: !330, file: !331, line: 1090, type: !1040, isLocal: false, isDefinition: false, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!878, !604, !360, !360, !888}
!1042 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmmc", scope: !330, file: !331, line: 1091, type: !1043, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!878, !604, !360, !360, !360, !520}
!1045 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_RKS5_", scope: !330, file: !331, line: 1093, type: !1046, isLocal: false, isDefinition: false, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!878, !604, !901, !901, !614}
!1048 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_NS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 1095, type: !1049, isLocal: false, isDefinition: false, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!878, !604, !901, !901, !653}
!1051 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_m", scope: !330, file: !331, line: 1097, type: !1052, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!878, !604, !901, !901, !888, !360}
!1054 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_", scope: !330, file: !331, line: 1099, type: !1055, isLocal: false, isDefinition: false, scopeLine: 1099, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!878, !604, !901, !901, !888}
!1057 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_mc", scope: !330, file: !331, line: 1101, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!878, !604, !901, !901, !360, !520}
!1060 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_St16initializer_listIcE", scope: !330, file: !331, line: 1112, type: !1061, isLocal: false, isDefinition: false, scopeLine: 1112, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!878, !604, !901, !901, !844}
!1063 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm", scope: !330, file: !331, line: 1116, type: !1064, isLocal: false, isDefinition: false, scopeLine: 1116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!360, !874, !1066, !360, !360}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!1067 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrEmm", scope: !330, file: !331, line: 1118, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!330, !874, !360, !360}
!1070 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4swapERS5_", scope: !330, file: !331, line: 1121, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !604, !878}
!1073 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv", scope: !330, file: !331, line: 1130, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!888, !874}
!1076 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !330, file: !331, line: 1132, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1077 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv", scope: !330, file: !331, line: 1139, type: !1078, isLocal: false, isDefinition: false, scopeLine: 1139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!610, !874}
!1080 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findERKS5_m", scope: !330, file: !331, line: 1142, type: !1081, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!360, !874, !614, !360}
!1083 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findENS_17basic_string_viewIcS2_EEm", scope: !330, file: !331, line: 1144, type: !1084, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!360, !874, !653, !360}
!1086 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcmm", scope: !330, file: !331, line: 1145, type: !1087, isLocal: false, isDefinition: false, scopeLine: 1145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!360, !874, !888, !360, !360}
!1089 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcm", scope: !330, file: !331, line: 1147, type: !1090, isLocal: false, isDefinition: false, scopeLine: 1147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!360, !874, !888, !360}
!1092 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm", scope: !330, file: !331, line: 1148, type: !1093, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!360, !874, !520, !360}
!1095 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindERKS5_m", scope: !330, file: !331, line: 1151, type: !1081, isLocal: false, isDefinition: false, scopeLine: 1151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1096 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindENS_17basic_string_viewIcS2_EEm", scope: !330, file: !331, line: 1153, type: !1084, isLocal: false, isDefinition: false, scopeLine: 1153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1097 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcmm", scope: !330, file: !331, line: 1154, type: !1087, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1098 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcm", scope: !330, file: !331, line: 1156, type: !1090, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1099 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm", scope: !330, file: !331, line: 1157, type: !1093, isLocal: false, isDefinition: false, scopeLine: 1157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1100 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofERKS5_m", scope: !330, file: !331, line: 1160, type: !1081, isLocal: false, isDefinition: false, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1101 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofENS_17basic_string_viewIcS2_EEm", scope: !330, file: !331, line: 1162, type: !1084, isLocal: false, isDefinition: false, scopeLine: 1162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1102 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcmm", scope: !330, file: !331, line: 1163, type: !1087, isLocal: false, isDefinition: false, scopeLine: 1163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1103 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcm", scope: !330, file: !331, line: 1165, type: !1090, isLocal: false, isDefinition: false, scopeLine: 1165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1104 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEcm", scope: !330, file: !331, line: 1167, type: !1093, isLocal: false, isDefinition: false, scopeLine: 1167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1105 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofERKS5_m", scope: !330, file: !331, line: 1170, type: !1081, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1106 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofENS_17basic_string_viewIcS2_EEm", scope: !330, file: !331, line: 1172, type: !1084, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1107 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcmm", scope: !330, file: !331, line: 1173, type: !1087, isLocal: false, isDefinition: false, scopeLine: 1173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1108 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcm", scope: !330, file: !331, line: 1175, type: !1090, isLocal: false, isDefinition: false, scopeLine: 1175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1109 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEcm", scope: !330, file: !331, line: 1177, type: !1093, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1110 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofERKS5_m", scope: !330, file: !331, line: 1180, type: !1081, isLocal: false, isDefinition: false, scopeLine: 1180, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1111 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofENS_17basic_string_viewIcS2_EEm", scope: !330, file: !331, line: 1182, type: !1084, isLocal: false, isDefinition: false, scopeLine: 1182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1112 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcmm", scope: !330, file: !331, line: 1183, type: !1087, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1113 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcm", scope: !330, file: !331, line: 1185, type: !1090, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1114 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEcm", scope: !330, file: !331, line: 1187, type: !1093, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1115 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofERKS5_m", scope: !330, file: !331, line: 1190, type: !1081, isLocal: false, isDefinition: false, scopeLine: 1190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1116 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofENS_17basic_string_viewIcS2_EEm", scope: !330, file: !331, line: 1192, type: !1084, isLocal: false, isDefinition: false, scopeLine: 1192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1117 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcmm", scope: !330, file: !331, line: 1193, type: !1087, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1118 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcm", scope: !330, file: !331, line: 1195, type: !1090, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1119 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEcm", scope: !330, file: !331, line: 1197, type: !1093, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1120 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_", scope: !330, file: !331, line: 1200, type: !1121, isLocal: false, isDefinition: false, scopeLine: 1200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!39, !874, !614}
!1123 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareENS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 1202, type: !1124, isLocal: false, isDefinition: false, scopeLine: 1202, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!39, !874, !653}
!1126 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmNS_17basic_string_viewIcS2_EE", scope: !330, file: !331, line: 1204, type: !1127, isLocal: false, isDefinition: false, scopeLine: 1204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!39, !874, !360, !360, !653}
!1129 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_", scope: !330, file: !331, line: 1206, type: !1130, isLocal: false, isDefinition: false, scopeLine: 1206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!39, !874, !360, !360, !614}
!1132 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_mm", scope: !330, file: !331, line: 1207, type: !1133, isLocal: false, isDefinition: false, scopeLine: 1207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!39, !874, !360, !360, !614, !360, !360}
!1135 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc", scope: !330, file: !331, line: 1216, type: !1136, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!39, !874, !888}
!1138 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKc", scope: !330, file: !331, line: 1217, type: !1139, isLocal: false, isDefinition: false, scopeLine: 1217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!39, !874, !360, !360, !888}
!1141 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm", scope: !330, file: !331, line: 1218, type: !1142, isLocal: false, isDefinition: false, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!39, !874, !360, !360, !888, !360}
!1144 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12__invariantsEv", scope: !330, file: !331, line: 1220, type: !937, isLocal: false, isDefinition: false, scopeLine: 1220, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1145 = !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !330, file: !331, line: 1223, type: !937, isLocal: false, isDefinition: false, scopeLine: 1223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1146 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !330, file: !331, line: 1237, type: !1147, isLocal: false, isDefinition: false, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!1149, !604}
!1149 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !610, size: 64)
!1150 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !330, file: !331, line: 1240, type: !1151, isLocal: false, isDefinition: false, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!608, !874}
!1153 = !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !330, file: !331, line: 1264, type: !931, isLocal: false, isDefinition: false, scopeLine: 1264, flags: DIFlagPrototyped, isOptimized: true)
!1154 = !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !330, file: !331, line: 1272, type: !922, isLocal: false, isDefinition: false, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: true)
!1155 = !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !330, file: !331, line: 1282, type: !931, isLocal: false, isDefinition: false, scopeLine: 1282, flags: DIFlagPrototyped, isOptimized: true)
!1156 = !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !330, file: !331, line: 1285, type: !922, isLocal: false, isDefinition: false, scopeLine: 1285, flags: DIFlagPrototyped, isOptimized: true)
!1157 = !DISubprogram(name: "__set_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm", scope: !330, file: !331, line: 1288, type: !931, isLocal: false, isDefinition: false, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: true)
!1158 = !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !330, file: !331, line: 1292, type: !931, isLocal: false, isDefinition: false, scopeLine: 1292, flags: DIFlagPrototyped, isOptimized: true)
!1159 = !DISubprogram(name: "__get_long_cap", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv", scope: !330, file: !331, line: 1295, type: !922, isLocal: false, isDefinition: false, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: true)
!1160 = !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !330, file: !331, line: 1299, type: !1161, isLocal: false, isDefinition: false, scopeLine: 1299, flags: DIFlagPrototyped, isOptimized: true)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !604, !510}
!1163 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !330, file: !331, line: 1302, type: !1164, isLocal: false, isDefinition: false, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!510, !604}
!1166 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !330, file: !331, line: 1305, type: !1167, isLocal: false, isDefinition: false, scopeLine: 1305, flags: DIFlagPrototyped, isOptimized: true)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1169, !874}
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !330, file: !331, line: 648, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !362, file: !345, line: 1512, baseType: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1172, file: !345, line: 1048, baseType: !392)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<char, char *, std::__1::allocator<char>, true>", scope: !7, file: !345, line: 1046, size: 8, elements: !370, templateParams: !1173, identifier: "_ZTSNSt3__115__const_pointerIcPcNS_9allocatorIcEELb1EEE")
!1173 = !{!372, !428, !429, !240}
!1174 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !330, file: !331, line: 1308, type: !1164, isLocal: false, isDefinition: false, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true)
!1175 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !330, file: !331, line: 1311, type: !1167, isLocal: false, isDefinition: false, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true)
!1176 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !330, file: !331, line: 1314, type: !1164, isLocal: false, isDefinition: false, scopeLine: 1314, flags: DIFlagPrototyped, isOptimized: true)
!1177 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !330, file: !331, line: 1317, type: !1167, isLocal: false, isDefinition: false, scopeLine: 1317, flags: DIFlagPrototyped, isOptimized: true)
!1178 = !DISubprogram(name: "__zero", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv", scope: !330, file: !331, line: 1321, type: !602, isLocal: false, isDefinition: false, scopeLine: 1321, flags: DIFlagPrototyped, isOptimized: true)
!1179 = !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !330, file: !331, line: 1334, type: !1180, isLocal: false, isDefinition: false, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: true)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!360, !360}
!1182 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm", scope: !330, file: !331, line: 1340, type: !1183, isLocal: false, isDefinition: false, scopeLine: 1340, flags: DIFlagPrototyped, isOptimized: true)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !604, !888, !360, !360}
!1185 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !330, file: !331, line: 1342, type: !1186, isLocal: false, isDefinition: false, scopeLine: 1342, flags: DIFlagPrototyped, isOptimized: true)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !604, !888, !360}
!1188 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !330, file: !331, line: 1344, type: !928, isLocal: false, isDefinition: false, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: true)
!1189 = !DISubprogram(name: "__grow_by", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm", scope: !330, file: !331, line: 1364, type: !1190, isLocal: false, isDefinition: false, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: true)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !604, !360, !360, !360, !360, !360, !360}
!1192 = !DISubprogram(name: "__grow_by_and_replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc", scope: !330, file: !331, line: 1366, type: !1193, isLocal: false, isDefinition: false, scopeLine: 1366, flags: DIFlagPrototyped, isOptimized: true)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !604, !360, !360, !360, !360, !360, !360, !888}
!1195 = !DISubprogram(name: "__erase_to_end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endEm", scope: !330, file: !331, line: 1371, type: !931, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: true)
!1196 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_", scope: !330, file: !331, line: 1374, type: !612, isLocal: false, isDefinition: false, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: true)
!1197 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb1EEE", scope: !330, file: !331, line: 1379, type: !1198, isLocal: false, isDefinition: false, scopeLine: 1379, flags: DIFlagPrototyped, isOptimized: true)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !604, !614, !461}
!1200 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb0EEE", scope: !330, file: !331, line: 1406, type: !1201, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: true)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !604, !614, !478}
!1203 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb0EEE", scope: !330, file: !331, line: 1411, type: !1204, isLocal: false, isDefinition: false, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !604, !878, !478}
!1206 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb1EEE", scope: !330, file: !331, line: 1414, type: !1207, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: true)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !604, !878, !461}
!1209 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_", scope: !330, file: !331, line: 1424, type: !1071, isLocal: false, isDefinition: false, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: true)
!1210 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb1EEE", scope: !330, file: !331, line: 1432, type: !1207, isLocal: false, isDefinition: false, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: true)
!1211 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb0EEE", scope: !330, file: !331, line: 1439, type: !1204, isLocal: false, isDefinition: false, scopeLine: 1439, flags: DIFlagPrototyped, isOptimized: true)
!1212 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv", scope: !330, file: !331, line: 1443, type: !602, isLocal: false, isDefinition: false, scopeLine: 1443, flags: DIFlagPrototyped, isOptimized: true)
!1213 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm", scope: !330, file: !331, line: 1444, type: !931, isLocal: false, isDefinition: false, scopeLine: 1444, flags: DIFlagPrototyped, isOptimized: true)
!1214 = !{!787, !788, !1215}
!1215 = !DITemplateTypeParameter(name: "_Allocator", type: !374)
!1216 = !DISubprogram(name: "locale", scope: !292, file: !293, line: 107, type: !1217, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !311, !315, !320, !297}
!1219 = !DISubprogram(name: "locale", scope: !292, file: !293, line: 108, type: !1220, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !311, !315, !326, !297}
!1222 = !DISubprogram(name: "locale", scope: !292, file: !293, line: 111, type: !1223, isLocal: false, isDefinition: false, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !311, !315, !315, !297}
!1225 = !DISubprogram(name: "~locale", scope: !292, file: !293, line: 113, type: !309, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1226 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16localeaSERKS0_", scope: !292, file: !293, line: 115, type: !1227, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!315, !311, !315}
!1229 = !DISubprogram(name: "name", linkageName: "_ZNKSt3__16locale4nameEv", scope: !292, file: !293, line: 122, type: !1230, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!328, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1233 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt3__16localeeqERKS0_", scope: !292, file: !293, line: 123, type: !1234, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!117, !1232, !315}
!1236 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt3__16localeneERKS0_", scope: !292, file: !293, line: 124, type: !1234, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1237 = !DISubprogram(name: "global", linkageName: "_ZNSt3__16locale6globalERKS0_", scope: !292, file: !293, line: 131, type: !1238, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!292, !315}
!1240 = !DISubprogram(name: "classic", linkageName: "_ZNSt3__16locale7classicEv", scope: !292, file: !293, line: 132, type: !1241, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!315}
!1243 = !DISubprogram(name: "__install_ctor", linkageName: "_ZNSt3__16locale14__install_ctorERKS0_PNS0_5facetEl", scope: !292, file: !293, line: 138, type: !1244, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !311, !315, !1246, !80}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "facet", scope: !292, file: !293, line: 147, size: 128, elements: !1248, vtableHolder: !1250, identifier: "_ZTSNSt3__16locale5facetE")
!1248 = !{!1249, !1279, !1283, !1286}
!1249 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1247, baseType: !1250, flags: DIFlagPublic)
!1250 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count", scope: !7, file: !345, line: 3449, size: 128, elements: !1251, vtableHolder: !1250, identifier: "_ZTSNSt3__114__shared_countE")
!1251 = !{!1252, !1253, !1254, !1260, !1264, !1267, !1268, !1271, !1272, !1275}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$__shared_count", scope: !345, file: !345, baseType: !35, size: 64, flags: DIFlagArtificial)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "__shared_owners_", scope: !1250, file: !345, line: 3455, baseType: !80, size: 64, offset: 64, flags: DIFlagProtected)
!1254 = !DISubprogram(name: "__shared_count", scope: !1250, file: !345, line: 3451, type: !1255, isLocal: false, isDefinition: false, scopeLine: 3451, flags: DIFlagPrototyped, isOptimized: true)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1260 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__shared_countaSERKS0_", scope: !1250, file: !345, line: 3452, type: !1261, isLocal: false, isDefinition: false, scopeLine: 3452, flags: DIFlagPrototyped, isOptimized: true)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!1263, !1257, !1258}
!1263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1250, size: 64)
!1264 = !DISubprogram(name: "~__shared_count", scope: !1250, file: !345, line: 3456, type: !1265, isLocal: false, isDefinition: false, scopeLine: 3456, containingType: !1250, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1257}
!1267 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__114__shared_count16__on_zero_sharedEv", scope: !1250, file: !345, line: 3458, type: !1265, isLocal: false, isDefinition: false, scopeLine: 3458, containingType: !1250, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: true)
!1268 = !DISubprogram(name: "__shared_count", scope: !1250, file: !345, line: 3462, type: !1269, isLocal: false, isDefinition: false, scopeLine: 3462, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1257, !80}
!1271 = !DISubprogram(name: "__add_shared", linkageName: "_ZNSt3__114__shared_count12__add_sharedEv", scope: !1250, file: !345, line: 3471, type: !1265, isLocal: false, isDefinition: false, scopeLine: 3471, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1272 = !DISubprogram(name: "__release_shared", linkageName: "_ZNSt3__114__shared_count16__release_sharedEv", scope: !1250, file: !345, line: 3475, type: !1273, isLocal: false, isDefinition: false, scopeLine: 3475, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!117, !1257}
!1275 = !DISubprogram(name: "use_count", linkageName: "_ZNKSt3__114__shared_count9use_countEv", scope: !1250, file: !345, line: 3484, type: !1276, isLocal: false, isDefinition: false, scopeLine: 3484, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!80, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1279 = !DISubprogram(name: "facet", scope: !1247, file: !293, line: 152, type: !1280, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !1282, !97}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1283 = !DISubprogram(name: "~facet", scope: !1247, file: !293, line: 155, type: !1284, isLocal: false, isDefinition: false, scopeLine: 155, containingType: !1247, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1282}
!1286 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__16locale5facet16__on_zero_sharedEv", scope: !1247, file: !293, line: 160, type: !1284, isLocal: false, isDefinition: false, scopeLine: 160, containingType: !1247, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: true)
!1287 = !DISubprogram(name: "__global", linkageName: "_ZNSt3__16locale8__globalEv", scope: !292, file: !293, line: 139, type: !1288, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !292, size: 64)
!1291 = !DISubprogram(name: "has_facet", linkageName: "_ZNKSt3__16locale9has_facetERNS0_2idE", scope: !292, file: !293, line: 140, type: !1292, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!117, !1232, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !292, file: !293, line: 163, size: 128, elements: !1296, identifier: "_ZTSNSt3__16locale2idE")
!1296 = !{!1297, !1315, !1318, !1319, !1323, !1324, !1329, !1330}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "__flag_", scope: !1295, file: !293, line: 165, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "once_flag", scope: !7, file: !1299, line: 571, size: 64, elements: !1300, identifier: "_ZTSNSt3__19once_flagE")
!1299 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/mutex", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1300 = !{!1301, !1302, !1306, !1311}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__state_", scope: !1298, file: !1299, line: 581, baseType: !101, size: 64, flags: DIFlagPrivate)
!1302 = !DISubprogram(name: "once_flag", scope: !1298, file: !1299, line: 575, type: !1303, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: true)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1306 = !DISubprogram(name: "once_flag", scope: !1298, file: !1299, line: 578, type: !1307, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1305, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1311 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__19once_flagaSERKS0_", scope: !1298, file: !1299, line: 579, type: !1312, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1314, !1305, !1309}
!1314 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1298, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1295, file: !293, line: 166, baseType: !1316, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1317, line: 30, baseType: !39)
!1317 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "__next_id", scope: !1295, file: !293, line: 168, baseType: !1316, flags: DIFlagStaticMember)
!1319 = !DISubprogram(name: "id", scope: !1295, file: !293, line: 170, type: !1320, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1323 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__16locale2id6__initEv", scope: !1295, file: !293, line: 172, type: !1320, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true)
!1324 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16locale2idaSERKS1_", scope: !1295, file: !293, line: 173, type: !1325, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1322, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1329 = !DISubprogram(name: "id", scope: !1295, file: !293, line: 174, type: !1325, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true)
!1330 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__16locale2id5__getEv", scope: !1295, file: !293, line: 176, type: !1331, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!80, !1322}
!1333 = !DISubprogram(name: "use_facet", linkageName: "_ZNKSt3__16locale9use_facetERNS0_2idE", scope: !292, file: !293, line: 141, type: !1334, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1336, !1232, !1294}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1338 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__18ios_base6getlocEv", scope: !32, file: !31, line: 297, type: !1339, isLocal: false, isDefinition: false, scopeLine: 297, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!292, !268}
!1341 = !DISubprogram(name: "xalloc", linkageName: "_ZNSt3__18ios_base6xallocEv", scope: !32, file: !31, line: 300, type: !37, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1342 = !DISubprogram(name: "iword", linkageName: "_ZNSt3__18ios_base5iwordEi", scope: !32, file: !31, line: 301, type: !1343, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1345, !273, !39}
!1345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !80, size: 64)
!1346 = !DISubprogram(name: "pword", linkageName: "_ZNSt3__18ios_base5pwordEi", scope: !32, file: !31, line: 302, type: !1347, isLocal: false, isDefinition: false, scopeLine: 302, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1349, !273, !39}
!1349 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !85, size: 64)
!1350 = !DISubprogram(name: "~ios_base", scope: !32, file: !31, line: 305, type: !1351, isLocal: false, isDefinition: false, scopeLine: 305, containingType: !32, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !273}
!1353 = !DISubprogram(name: "register_callback", linkageName: "_ZNSt3__18ios_base17register_callbackEPFvNS0_5eventERS0_iEi", scope: !32, file: !31, line: 310, type: !1354, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !273, !89, !39}
!1356 = !DISubprogram(name: "ios_base", scope: !32, file: !31, line: 313, type: !1357, isLocal: false, isDefinition: false, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !273, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !269, size: 64)
!1360 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__18ios_baseaSERKS0_", scope: !32, file: !31, line: 314, type: !1361, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!93, !273, !1359}
!1363 = !DISubprogram(name: "sync_with_stdio", linkageName: "_ZNSt3__18ios_base15sync_with_stdioEb", scope: !32, file: !31, line: 317, type: !1364, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!117, !117}
!1366 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__18ios_base7rdstateEv", scope: !32, file: !31, line: 319, type: !1367, isLocal: false, isDefinition: false, scopeLine: 319, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!63, !268}
!1369 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__18ios_base5clearEj", scope: !32, file: !31, line: 320, type: !1370, isLocal: false, isDefinition: false, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !273, !63}
!1372 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !32, file: !31, line: 321, type: !1370, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1373 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__18ios_base4goodEv", scope: !32, file: !31, line: 323, type: !1374, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!117, !268}
!1376 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__18ios_base3eofEv", scope: !32, file: !31, line: 324, type: !1374, isLocal: false, isDefinition: false, scopeLine: 324, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1377 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__18ios_base4failEv", scope: !32, file: !31, line: 325, type: !1374, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1378 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__18ios_base3badEv", scope: !32, file: !31, line: 326, type: !1374, isLocal: false, isDefinition: false, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1379 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__18ios_base10exceptionsEv", scope: !32, file: !31, line: 328, type: !1367, isLocal: false, isDefinition: false, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1380 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__18ios_base10exceptionsEj", scope: !32, file: !31, line: 329, type: !1370, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1381 = !DISubprogram(name: "__set_badbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv", scope: !32, file: !31, line: 331, type: !1351, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1382 = !DISubprogram(name: "__set_failbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base34__set_failbit_and_consider_rethrowEv", scope: !32, file: !31, line: 332, type: !1351, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1383 = !DISubprogram(name: "ios_base", scope: !32, file: !31, line: 336, type: !1351, isLocal: false, isDefinition: false, scopeLine: 336, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1384 = !DISubprogram(name: "init", linkageName: "_ZNSt3__18ios_base4initEPv", scope: !32, file: !31, line: 339, type: !1385, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !273, !85}
!1387 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !32, file: !31, line: 340, type: !1388, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!85, !268}
!1390 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__18ios_base5rdbufEPv", scope: !32, file: !31, line: 343, type: !1385, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1391 = !DISubprogram(name: "__call_callbacks", linkageName: "_ZNSt3__18ios_base16__call_callbacksENS0_5eventE", scope: !32, file: !31, line: 349, type: !1392, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !273, !30}
!1394 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__18ios_base7copyfmtERKS0_", scope: !32, file: !31, line: 350, type: !1357, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1395 = !DISubprogram(name: "move", linkageName: "_ZNSt3__18ios_base4moveERS0_", scope: !32, file: !31, line: 351, type: !1396, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !273, !93}
!1398 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__18ios_base4swapERS0_", scope: !32, file: !31, line: 352, type: !1396, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1399 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__18ios_base9set_rdbufEPv", scope: !32, file: !31, line: 355, type: !1385, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIEnumerator(name: "erase_event", value: 0)
!1402 = !DIEnumerator(name: "imbue_event", value: 1)
!1403 = !DIEnumerator(name: "copyfmt_event", value: 2)
!1404 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "seekdir", scope: !32, file: !31, line: 270, size: 32, elements: !1405, identifier: "_ZTSNSt3__18ios_base7seekdirE")
!1405 = !{!1406, !1407, !1408}
!1406 = !DIEnumerator(name: "beg", value: 0)
!1407 = !DIEnumerator(name: "cur", value: 1)
!1408 = !DIEnumerator(name: "end", value: 2)
!1409 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !330, file: !331, line: 714, size: 32, elements: !1410, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt1_E")
!1410 = !{!1411}
!1411 = !DIEnumerator(name: "__min_cap", value: 23)
!1412 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !330, file: !331, line: 1332, size: 32, elements: !1413, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt3_E")
!1413 = !{!1414}
!1414 = !DIEnumerator(name: "__alignment", value: 16)
!1415 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !330, file: !331, line: 711, size: 32, elements: !1416, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt0_E")
!1416 = !{!1417}
!1417 = !DIEnumerator(name: "__long_mask", value: 1)
!1418 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !330, file: !331, line: 710, size: 32, elements: !1419, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt_E")
!1419 = !{!1420}
!1420 = !DIEnumerator(name: "__short_mask", value: 1)
!1421 = !{!398, !1422, !1463, !1544, !1766, !85, !1783, !518, !360, !383, !816, !824, !117, !1823, !2167, !2869, !3405, !32}
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1423, file: !345, line: 1764, baseType: !1462)
!1423 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<checker::Schedule *>", scope: !7, file: !345, line: 1759, size: 8, elements: !1424, templateParams: !1460, identifier: "_ZTSNSt3__19allocatorIPN7checker8ScheduleEEE")
!1424 = !{!1425, !1429, !1440, !1448, !1451, !1454, !1457}
!1425 = !DISubprogram(name: "allocator", scope: !1423, file: !345, line: 1775, type: !1426, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1429 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIPN7checker8ScheduleEE7addressERS3_", scope: !1423, file: !345, line: 1777, type: !1430, isLocal: false, isDefinition: false, scopeLine: 1777, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1422, !1432, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1423, file: !345, line: 1766, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Schedule", scope: !1439, file: !1438, line: 13, flags: DIFlagFwdDecl, identifier: "_ZTSN7checker8ScheduleE")
!1438 = !DIFile(filename: "../../ModelChecker.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1439 = !DINamespace(name: "checker", scope: null, file: !1438, line: 11)
!1440 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIPN7checker8ScheduleEE7addressERKS3_", scope: !1423, file: !345, line: 1779, type: !1441, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!1443, !1432, !1446}
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1423, file: !345, line: 1765, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1423, file: !345, line: 1767, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1445, size: 64)
!1448 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE8allocateEmPKv", scope: !1423, file: !345, line: 1781, type: !1449, isLocal: false, isDefinition: false, scopeLine: 1781, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1422, !1428, !398, !399}
!1451 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE10deallocateEPS3_m", scope: !1423, file: !345, line: 1788, type: !1452, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1428, !1422, !398}
!1454 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIPN7checker8ScheduleEE8max_sizeEv", scope: !1423, file: !345, line: 1790, type: !1455, isLocal: false, isDefinition: false, scopeLine: 1790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!398, !1432}
!1457 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE7destroyEPS3_", scope: !1423, file: !345, line: 1853, type: !1458, isLocal: false, isDefinition: false, scopeLine: 1853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1428, !1422}
!1460 = !{!1461}
!1461 = !DITemplateTypeParameter(name: "_Tp", type: !1436)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "length_error", scope: !9, file: !1464, line: 131, size: 128, elements: !1465, vtableHolder: !1470, identifier: "_ZTSSt12length_error")
!1464 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdexcept", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1465 = !{!1466, !1534, !1538, !1541}
!1466 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1463, baseType: !1467, flags: DIFlagPublic)
!1467 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "logic_error", scope: !9, file: !1464, line: 77, size: 128, elements: !1468, vtableHolder: !1470, identifier: "_ZTSSt11logic_error")
!1468 = !{!1469, !1484, !1511, !1515, !1518, !1523, !1527, !1530}
!1469 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1467, baseType: !1470, flags: DIFlagPublic)
!1470 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !9, file: !1471, line: 97, size: 64, elements: !1472, vtableHolder: !1470, identifier: "_ZTSSt9exception")
!1471 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/exception", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1472 = !{!1473, !1474, !1478, !1479}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$exception", scope: !1471, file: !1471, baseType: !35, size: 64, flags: DIFlagArtificial)
!1474 = !DISubprogram(name: "exception", scope: !1470, file: !1471, line: 100, type: !1475, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1478 = !DISubprogram(name: "~exception", scope: !1470, file: !1471, line: 101, type: !1475, isLocal: false, isDefinition: false, scopeLine: 101, containingType: !1470, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1479 = !DISubprogram(name: "what", linkageName: "_ZNKSt9exception4whatEv", scope: !1470, file: !1471, line: 102, type: !1480, isLocal: false, isDefinition: false, scopeLine: 102, containingType: !1470, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!320, !1482}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !1467, file: !1464, line: 81, baseType: !1485, size: 64, offset: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__libcpp_refstring", scope: !7, file: !1464, line: 58, size: 64, elements: !1486, identifier: "_ZTSNSt3__118__libcpp_refstringE")
!1486 = !{!1487, !1488, !1493, !1497, !1501, !1505, !1508}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !1485, file: !1464, line: 60, baseType: !320, size: 64)
!1488 = !DISubprogram(name: "__uses_refcount", linkageName: "_ZNKSt3__118__libcpp_refstring15__uses_refcountEv", scope: !1485, file: !1464, line: 62, type: !1489, isLocal: false, isDefinition: false, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!117, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1493 = !DISubprogram(name: "__libcpp_refstring", scope: !1485, file: !1464, line: 64, type: !1494, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1496, !320}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1497 = !DISubprogram(name: "__libcpp_refstring", scope: !1485, file: !1464, line: 65, type: !1498, isLocal: false, isDefinition: false, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !1496, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1492, size: 64)
!1501 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118__libcpp_refstringaSERKS0_", scope: !1485, file: !1464, line: 66, type: !1502, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1504, !1496, !1500}
!1504 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1485, size: 64)
!1505 = !DISubprogram(name: "~__libcpp_refstring", scope: !1485, file: !1464, line: 67, type: !1506, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1496}
!1508 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__118__libcpp_refstring5c_strEv", scope: !1485, file: !1464, line: 69, type: !1509, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!320, !1491}
!1511 = !DISubprogram(name: "logic_error", scope: !1467, file: !1464, line: 83, type: !1512, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1514, !326}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1515 = !DISubprogram(name: "logic_error", scope: !1467, file: !1464, line: 84, type: !1516, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1514, !320}
!1518 = !DISubprogram(name: "logic_error", scope: !1467, file: !1464, line: 86, type: !1519, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !1514, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1523 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11logic_erroraSERKS_", scope: !1467, file: !1464, line: 87, type: !1524, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1526, !1514, !1521}
!1526 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1467, size: 64)
!1527 = !DISubprogram(name: "~logic_error", scope: !1467, file: !1464, line: 89, type: !1528, isLocal: false, isDefinition: false, scopeLine: 89, containingType: !1467, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1514}
!1530 = !DISubprogram(name: "what", linkageName: "_ZNKSt11logic_error4whatEv", scope: !1467, file: !1464, line: 91, type: !1531, isLocal: false, isDefinition: false, scopeLine: 91, containingType: !1467, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!320, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1534 = !DISubprogram(name: "length_error", scope: !1463, file: !1464, line: 135, type: !1535, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !1537, !326}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1538 = !DISubprogram(name: "length_error", scope: !1463, file: !1464, line: 136, type: !1539, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1537, !320}
!1541 = !DISubprogram(name: "~length_error", scope: !1463, file: !1464, line: 138, type: !1542, isLocal: false, isDefinition: false, scopeLine: 138, containingType: !1463, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1537}
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !1546, file: !1545, line: 330, baseType: !1571)
!1545 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/vector", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1546 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__vector_base<checker::Schedule *, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !1545, line: 321, size: 192, elements: !1547, templateParams: !1764, identifier: "_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!1547 = !{!1548, !1561, !1637, !1638, !1708, !1714, !1721, !1725, !1730, !1733, !1736, !1737, !1738, !1741, !1744, !1748, !1752, !1755, !1758, !1761}
!1548 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1546, baseType: !1549, flags: DIFlagProtected)
!1549 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__vector_base_common<true>", scope: !7, file: !1545, line: 315, size: 8, elements: !1550, templateParams: !342, identifier: "_ZTSNSt3__120__vector_base_commonILb1EEE")
!1550 = !{!1551, !1555, !1560}
!1551 = !DISubprogram(name: "__vector_base_common", scope: !1549, file: !1545, line: 292, type: !1552, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1555 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv", scope: !1549, file: !1545, line: 293, type: !1556, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1560 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv", scope: !1549, file: !1545, line: 294, type: !1556, isLocal: false, isDefinition: false, scopeLine: 294, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !1546, file: !1545, line: 337, baseType: !1562, size: 64, flags: DIFlagProtected)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1546, file: !1545, line: 332, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1564, file: !345, line: 1511, baseType: !1630)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<checker::Schedule *> >", scope: !7, file: !345, line: 1506, size: 8, elements: !1565, templateParams: !1629, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEEE")
!1565 = !{!1566, !1577, !1600, !1603, !1608, !1611, !1614, !1617, !1620, !1623, !1626}
!1566 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m", scope: !1564, file: !345, line: 1540, type: !1567, isLocal: false, isDefinition: false, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1563, !1569, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !1564, file: !345, line: 1508, baseType: !1423)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !1564, file: !345, line: 1517, baseType: !1572)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1573, file: !345, line: 1151, baseType: !1576)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<checker::Schedule *>, long, true>", scope: !7, file: !345, line: 1149, size: 8, elements: !370, templateParams: !1574, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIPN7checker8ScheduleEEElLb1EEE")
!1574 = !{!1575, !506, !240}
!1575 = !DITemplateTypeParameter(name: "_Alloc", type: !1423)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !1423, file: !345, line: 1762, baseType: !97)
!1577 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_mPKv", scope: !1564, file: !345, line: 1543, type: !1578, isLocal: false, isDefinition: false, scopeLine: 1543, flags: DIFlagPrototyped, isOptimized: true)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1563, !1569, !1571, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !1564, file: !345, line: 1514, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1582, file: !345, line: 1109, baseType: !1585)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_void_pointer<checker::Schedule **, std::__1::allocator<checker::Schedule *>, false>", scope: !7, file: !345, line: 1106, size: 8, elements: !370, templateParams: !1583, identifier: "_ZTSNSt3__120__const_void_pointerIPPN7checker8ScheduleENS_9allocatorIS3_EELb0EEE")
!1583 = !{!1584, !1575, !189}
!1584 = !DITemplateTypeParameter(name: "_Ptr", type: !1462)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !1586, file: !345, line: 974, baseType: !403)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<checker::Schedule **>", scope: !7, file: !345, line: 967, size: 8, elements: !1587, templateParams: !1599, identifier: "_ZTSNSt3__114pointer_traitsIPPN7checker8ScheduleEEE")
!1587 = !{!1588}
!1588 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPPN7checker8ScheduleEE10pointer_toERS3_", scope: !1586, file: !345, line: 983, type: !1589, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1586, file: !345, line: 969, baseType: !1462)
!1592 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1594, file: !439, line: 414, baseType: !1436)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<checker::Schedule **>::__nat, checker::Schedule *>", scope: !7, file: !439, line: 414, size: 8, elements: !370, templateParams: !1595, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPPN7checker8ScheduleEE5__natES4_EE")
!1595 = !{!442, !1596, !1598}
!1596 = !DITemplateTypeParameter(name: "_If", type: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !1586, file: !345, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPPN7checker8ScheduleEE5__natE")
!1598 = !DITemplateTypeParameter(name: "_Then", type: !1436)
!1599 = !{!1584}
!1600 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10deallocateERS5_PS4_m", scope: !1564, file: !345, line: 1548, type: !1601, isLocal: false, isDefinition: false, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: true)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1569, !1563, !1571}
!1603 = !DISubprogram(name: "max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8max_sizeERKS5_", scope: !1564, file: !345, line: 1592, type: !1604, isLocal: false, isDefinition: false, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1571, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1608 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE37select_on_container_copy_constructionERKS5_", scope: !1564, file: !345, line: 1597, type: !1609, isLocal: false, isDefinition: false, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1570, !1606}
!1611 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_mPKvNS_17integral_constantIbLb1EEE", scope: !1564, file: !345, line: 1697, type: !1612, isLocal: false, isDefinition: false, scopeLine: 1697, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1563, !1569, !1571, !1580, !461}
!1614 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_mPKvNS_17integral_constantIbLb0EEE", scope: !1564, file: !345, line: 1701, type: !1615, isLocal: false, isDefinition: false, scopeLine: 1701, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1563, !1569, !1571, !1580, !478}
!1617 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS5_", scope: !1564, file: !345, line: 1730, type: !1618, isLocal: false, isDefinition: false, scopeLine: 1730, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1571, !461, !1606}
!1620 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10__max_sizeENS_17integral_constantIbLb0EEERKS5_", scope: !1564, file: !345, line: 1733, type: !1621, isLocal: false, isDefinition: false, scopeLine: 1733, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1571, !478, !1606}
!1623 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE37select_on_container_copy_constructionENS_17integral_constantIbLb1EEERKS5_", scope: !1564, file: !345, line: 1738, type: !1624, isLocal: false, isDefinition: false, scopeLine: 1738, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1570, !461, !1606}
!1626 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE37select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS5_", scope: !1564, file: !345, line: 1742, type: !1627, isLocal: false, isDefinition: false, scopeLine: 1742, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1570, !478, !1606}
!1629 = !{!1575}
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1631, file: !345, line: 1031, baseType: !1634)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<checker::Schedule *, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !345, line: 1029, size: 8, elements: !370, templateParams: !1632, identifier: "_ZTSNSt3__114__pointer_typeIPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!1632 = !{!1461, !1633}
!1633 = !DITemplateTypeParameter(name: "_Dp", type: !1423)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1635, file: !345, line: 1017, baseType: !1422)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<checker::Schedule *, std::__1::allocator<checker::Schedule *>, true>", scope: !417, file: !345, line: 1015, size: 8, elements: !370, templateParams: !1636, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeIPN7checker8ScheduleENS_9allocatorIS4_EELb1EEE")
!1636 = !{!1461, !1633, !240}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "__end_", scope: !1546, file: !1545, line: 338, baseType: !1562, size: 64, offset: 64, flags: DIFlagProtected)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "__end_cap_", scope: !1546, file: !1545, line: 339, baseType: !1639, size: 64, offset: 128, flags: DIFlagProtected)
!1639 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<checker::Schedule **, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !345, line: 2144, size: 64, elements: !1640, templateParams: !1705, identifier: "_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!1640 = !{!1641, !1664, !1686, !1690, !1695, !1698, !1701}
!1641 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1639, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<checker::Schedule **, 0, false>", scope: !7, file: !345, line: 2076, size: 64, elements: !1643, templateParams: !1662, identifier: "_ZTSNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EEE")
!1643 = !{!1644, !1645, !1649, !1654}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !1642, file: !345, line: 2105, baseType: !1462, size: 64, flags: DIFlagPrivate)
!1645 = !DISubprogram(name: "__compressed_pair_elem", scope: !1642, file: !345, line: 2082, type: !1646, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1649 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv", scope: !1642, file: !345, line: 2101, type: !1650, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1652, !1648}
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1642, file: !345, line: 2078, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1462, size: 64)
!1654 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv", scope: !1642, file: !345, line: 2102, type: !1655, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1657, !1660}
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1642, file: !345, line: 2079, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1662 = !{!1663, !551, !552}
!1663 = !DITemplateTypeParameter(name: "_Tp", type: !1462)
!1664 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1639, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<checker::Schedule *>, 1, true>", scope: !7, file: !345, line: 2109, size: 8, elements: !1666, templateParams: !1684, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EEE")
!1666 = !{!1667, !1668, !1672, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1665, baseType: !1423, flags: DIFlagPrivate)
!1668 = !DISubprogram(name: "__compressed_pair_elem", scope: !1665, file: !345, line: 2116, type: !1669, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1672 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv", scope: !1665, file: !345, line: 2136, type: !1673, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!1675, !1671}
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1665, file: !345, line: 2111, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1423, size: 64)
!1677 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv", scope: !1665, file: !345, line: 2137, type: !1678, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1680, !1682}
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1665, file: !345, line: 2112, baseType: !1681)
!1681 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1433, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1684 = !{!1685, !575, !576}
!1685 = !DITemplateTypeParameter(name: "_Tp", type: !1423)
!1686 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE5firstEv", scope: !1639, file: !345, line: 2212, type: !1687, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!1652, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1690 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE5firstEv", scope: !1639, file: !345, line: 2217, type: !1691, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1657, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1695 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE6secondEv", scope: !1639, file: !345, line: 2222, type: !1696, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1675, !1689}
!1698 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE6secondEv", scope: !1639, file: !345, line: 2227, type: !1699, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1680, !1693}
!1701 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEE4swapERS7_", scope: !1639, file: !345, line: 2232, type: !1702, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !1689, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1639, size: 64)
!1705 = !{!1706, !1707}
!1706 = !DITemplateTypeParameter(name: "_T1", type: !1462)
!1707 = !DITemplateTypeParameter(name: "_T2", type: !1423)
!1708 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE7__allocEv", scope: !1546, file: !1545, line: 342, type: !1709, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1711, !1713}
!1711 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !1546, file: !1545, line: 326, baseType: !1423)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1714 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE7__allocEv", scope: !1546, file: !1545, line: 345, type: !1715, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1717, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1721 = !DISubprogram(name: "__end_cap", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE9__end_capEv", scope: !1546, file: !1545, line: 348, type: !1722, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1724, !1713}
!1724 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1562, size: 64)
!1725 = !DISubprogram(name: "__end_cap", linkageName: "_ZNKSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE9__end_capEv", scope: !1546, file: !1545, line: 351, type: !1726, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1728, !1719}
!1728 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1730 = !DISubprogram(name: "__vector_base", scope: !1546, file: !1545, line: 355, type: !1731, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1713}
!1733 = !DISubprogram(name: "__vector_base", scope: !1546, file: !1545, line: 357, type: !1734, isLocal: false, isDefinition: false, scopeLine: 357, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1713, !1717}
!1736 = !DISubprogram(name: "~__vector_base", scope: !1546, file: !1545, line: 358, type: !1731, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1737 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv", scope: !1546, file: !1545, line: 361, type: !1731, isLocal: false, isDefinition: false, scopeLine: 361, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1738 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE8capacityEv", scope: !1546, file: !1545, line: 363, type: !1739, isLocal: false, isDefinition: false, scopeLine: 363, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1544, !1719}
!1741 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !1546, file: !1545, line: 367, type: !1742, isLocal: false, isDefinition: false, scopeLine: 367, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1713, !1562}
!1744 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__copy_assign_allocERKS6_", scope: !1546, file: !1545, line: 370, type: !1745, isLocal: false, isDefinition: false, scopeLine: 370, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1713, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1720, size: 64)
!1748 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__move_assign_allocERS6_", scope: !1546, file: !1545, line: 375, type: !1749, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1713, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1546, size: 64)
!1752 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__copy_assign_allocERKS6_NS_17integral_constantIbLb1EEE", scope: !1546, file: !1545, line: 383, type: !1753, isLocal: false, isDefinition: false, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1713, !1747, !461}
!1755 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__copy_assign_allocERKS6_NS_17integral_constantIbLb0EEE", scope: !1546, file: !1545, line: 395, type: !1756, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1713, !1747, !478}
!1758 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__move_assign_allocERS6_NS_17integral_constantIbLb1EEE", scope: !1546, file: !1545, line: 399, type: !1759, isLocal: false, isDefinition: false, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1713, !1751, !461}
!1761 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE19__move_assign_allocERS6_NS_17integral_constantIbLb0EEE", scope: !1546, file: !1545, line: 406, type: !1762, isLocal: false, isDefinition: false, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1713, !1751, !478}
!1764 = !{!1461, !1765}
!1765 = !DITemplateTypeParameter(name: "_Allocator", type: !1423)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Vp", scope: !1768, file: !345, line: 1654, baseType: !1781)
!1768 = distinct !DISubprogram(name: "__construct_range_forward<checker::Schedule *>", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE25__construct_range_forwardIS4_EENS_9enable_ifIXaaoosr7is_sameIS5_NS1_IT_EEEE5valuentsr15__has_constructIS5_PS9_S9_EE5valuesr31is_trivially_move_constructibleIS9_EE5valueEvE4typeERS5_SB_SB_RSB_", scope: !1564, file: !345, line: 1652, type: !1769, isLocal: false, isDefinition: true, scopeLine: 1653, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !1460, declaration: !1774, variables: !1775)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1771, !1569, !1462, !1462, !1653}
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1772, file: !439, line: 424, baseType: null)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, void>", scope: !7, file: !439, line: 424, size: 8, elements: !370, templateParams: !1773, identifier: "_ZTSNSt3__19enable_ifILb1EvEE")
!1773 = !{!240, !402}
!1774 = !DISubprogram(name: "__construct_range_forward<checker::Schedule *>", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE25__construct_range_forwardIS4_EENS_9enable_ifIXaaoosr7is_sameIS5_NS1_IT_EEEE5valuentsr15__has_constructIS5_PS9_S9_EE5valuesr31is_trivially_move_constructibleIS9_EE5valueEvE4typeERS5_SB_SB_RSB_", scope: !1564, file: !345, line: 1652, type: !1769, isLocal: false, isDefinition: false, scopeLine: 1652, flags: DIFlagPrototyped, isOptimized: true, templateParams: !1460)
!1775 = !{!1776, !1777, !1778, !1779, !1780}
!1776 = !DILocalVariable(arg: 1, scope: !1768, file: !345, line: 1652, type: !1569)
!1777 = !DILocalVariable(name: "__begin1", arg: 2, scope: !1768, file: !345, line: 1652, type: !1462)
!1778 = !DILocalVariable(name: "__end1", arg: 3, scope: !1768, file: !345, line: 1652, type: !1462)
!1779 = !DILocalVariable(name: "__begin2", arg: 4, scope: !1768, file: !345, line: 1652, type: !1653)
!1780 = !DILocalVariable(name: "_Np", scope: !1768, file: !345, line: 1655, type: !78)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1782, file: !439, line: 630, baseType: !1436)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_const<checker::Schedule *>", scope: !7, file: !439, line: 630, size: 8, elements: !370, templateParams: !1460, identifier: "_ZTSNSt3__112remove_constIPN7checker8ScheduleEEE")
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ip", scope: !1785, file: !1784, line: 724, baseType: !2129)
!1784 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ostream", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1785 = distinct !DISubprogram(name: "__put_character_sequence<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m", scope: !7, file: !1784, line: 714, type: !1786, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !786, variables: !2099)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1788, !1788, !320, !97}
!1788 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::__1::char_traits<char> >", scope: !7, file: !1784, line: 1084, size: 1280, elements: !1790, vtableHolder: !1789, templateParams: !786, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE")
!1790 = !{!1791, !1983, !1984, !1988, !1991, !1995, !1998, !2001, !2006, !2009, !2015, !2021, !2027, !2030, !2034, !2038, !2041, !2044, !2047, !2050, !2053, !2057, !2061, !2065, !2069, !2072, !2075, !2079, !2084, !2087, !2091, !2094, !2098}
!1791 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1789, baseType: !1792, offset: 24, flags: DIFlagPublic | DIFlagVirtual)
!1792 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::__1::char_traits<char> >", scope: !7, file: !1793, line: 483, size: 1216, elements: !1794, vtableHolder: !32, templateParams: !786, identifier: "_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE")
!1793 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/streambuf", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!1794 = !{!1795, !1796, !1798, !1800, !1805, !1806, !1809, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1936, !1939, !1942, !1945, !1948, !1951, !1956, !1960, !1963, !1966, !1969, !1972, !1973, !1974, !1977, !1981, !1982}
!1795 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1792, baseType: !32, flags: DIFlagPublic)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "__tie_", scope: !1792, file: !31, line: 669, baseType: !1797, size: 64, offset: 1088)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__fill_", scope: !1792, file: !31, line: 670, baseType: !1799, size: 32, offset: 1152)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1792, file: !31, line: 591, baseType: !824)
!1800 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbEv", scope: !1792, file: !31, line: 605, type: !1801, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!117, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1805 = !DISubprogram(name: "operator!", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntEv", scope: !1792, file: !31, line: 608, type: !1801, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1806 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE7rdstateEv", scope: !1792, file: !31, line: 609, type: !1807, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!63, !1803}
!1809 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj", scope: !1792, file: !31, line: 610, type: !1810, isLocal: false, isDefinition: false, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1812, !63}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1813 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1792, file: !31, line: 611, type: !1810, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1814 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodEv", scope: !1792, file: !31, line: 612, type: !1801, isLocal: false, isDefinition: false, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1815 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3eofEv", scope: !1792, file: !31, line: 613, type: !1801, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1816 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv", scope: !1792, file: !31, line: 614, type: !1801, isLocal: false, isDefinition: false, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1817 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3badEv", scope: !1792, file: !31, line: 615, type: !1801, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1818 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEv", scope: !1792, file: !31, line: 617, type: !1807, isLocal: false, isDefinition: false, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1819 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEj", scope: !1792, file: !31, line: 618, type: !1810, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1820 = !DISubprogram(name: "basic_ios", scope: !1792, file: !31, line: 622, type: !1821, isLocal: false, isDefinition: false, scopeLine: 622, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1812, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_streambuf<char, std::__1::char_traits<char> >", scope: !7, file: !1793, line: 480, size: 512, elements: !1825, vtableHolder: !1824, templateParams: !786, identifier: "_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE")
!1825 = !{!1826, !1827, !1828, !1831, !1832, !1833, !1834, !1835, !1836, !1840, !1843, !1848, !1851, !1862, !1865, !1868, !1871, !1875, !1876, !1877, !1880, !1883, !1884, !1885, !1890, !1891, !1895, !1899, !1902, !1905, !1906, !1907, !1910, !1913, !1914, !1915, !1916, !1917, !1920, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1934, !1935}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_streambuf", scope: !1793, file: !1793, baseType: !35, size: 64, flags: DIFlagArtificial)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !1824, file: !1793, line: 287, baseType: !292, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__binp_", scope: !1824, file: !1793, line: 288, baseType: !1829, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1824, file: !1793, line: 126, baseType: !322)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "__ninp_", scope: !1824, file: !1793, line: 289, baseType: !1829, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "__einp_", scope: !1824, file: !1793, line: 290, baseType: !1829, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__bout_", scope: !1824, file: !1793, line: 291, baseType: !1829, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "__nout_", scope: !1824, file: !1793, line: 292, baseType: !1829, size: 64, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "__eout_", scope: !1824, file: !1793, line: 293, baseType: !1829, size: 64, offset: 448)
!1836 = !DISubprogram(name: "~basic_streambuf", scope: !1824, file: !1793, line: 132, type: !1837, isLocal: false, isDefinition: false, scopeLine: 132, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1840 = !DISubprogram(name: "pubimbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueERKNS_6localeE", scope: !1824, file: !1793, line: 136, type: !1841, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!292, !1839, !315}
!1843 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv", scope: !1824, file: !1793, line: 144, type: !1844, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!292, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1848 = !DISubprogram(name: "pubsetbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufEPcl", scope: !1824, file: !1793, line: 148, type: !1849, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!1823, !1839, !1829, !77}
!1851 = !DISubprogram(name: "pubseekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffExNS_8ios_base7seekdirEj", scope: !1824, file: !1793, line: 152, type: !1852, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1854, !1839, !1858, !1404, !69}
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1824, file: !1793, line: 129, baseType: !1855)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !789, file: !790, line: 202, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "streampos", scope: !7, file: !329, line: 176, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fpos<__mbstate_t>", scope: !7, file: !329, line: 175, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__14fposI11__mbstate_tEE")
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1824, file: !1793, line: 130, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !789, file: !790, line: 201, baseType: !1860)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamoff", scope: !7, file: !329, line: 187, baseType: !1861)
!1861 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1862 = !DISubprogram(name: "pubseekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekposENS_4fposI11__mbstate_tEEj", scope: !1824, file: !1793, line: 157, type: !1863, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1854, !1839, !1854, !69}
!1865 = !DISubprogram(name: "pubsync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncEv", scope: !1824, file: !1793, line: 162, type: !1866, isLocal: false, isDefinition: false, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!39, !1839}
!1868 = !DISubprogram(name: "in_avail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availEv", scope: !1824, file: !1793, line: 167, type: !1869, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!77, !1839}
!1871 = !DISubprogram(name: "snextc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6snextcEv", scope: !1824, file: !1793, line: 174, type: !1872, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1874, !1839}
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1824, file: !1793, line: 128, baseType: !824)
!1875 = !DISubprogram(name: "sbumpc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv", scope: !1824, file: !1793, line: 181, type: !1872, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1876 = !DISubprogram(name: "sgetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv", scope: !1824, file: !1793, line: 188, type: !1872, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1877 = !DISubprogram(name: "sgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetnEPcl", scope: !1824, file: !1793, line: 195, type: !1878, isLocal: false, isDefinition: false, scopeLine: 195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!77, !1839, !1829, !77}
!1880 = !DISubprogram(name: "sputbackc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9sputbackcEc", scope: !1824, file: !1793, line: 200, type: !1881, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1874, !1839, !1830}
!1883 = !DISubprogram(name: "sungetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7sungetcEv", scope: !1824, file: !1793, line: 207, type: !1872, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1884 = !DISubprogram(name: "sputc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc", scope: !1824, file: !1793, line: 215, type: !1881, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1885 = !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1824, file: !1793, line: 223, type: !1886, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!77, !1839, !1888, !77}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1890 = !DISubprogram(name: "basic_streambuf", scope: !1824, file: !1793, line: 227, type: !1837, isLocal: false, isDefinition: false, scopeLine: 227, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1891 = !DISubprogram(name: "basic_streambuf", scope: !1824, file: !1793, line: 228, type: !1892, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !1839, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1847, size: 64)
!1895 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEaSERKS3_", scope: !1824, file: !1793, line: 229, type: !1896, isLocal: false, isDefinition: false, scopeLine: 229, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1898, !1839, !1894}
!1898 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1824, size: 64)
!1899 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_", scope: !1824, file: !1793, line: 230, type: !1900, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1839, !1898}
!1902 = !DISubprogram(name: "eback", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv", scope: !1824, file: !1793, line: 233, type: !1903, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1829, !1846}
!1905 = !DISubprogram(name: "gptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv", scope: !1824, file: !1793, line: 234, type: !1903, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1906 = !DISubprogram(name: "egptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv", scope: !1824, file: !1793, line: 235, type: !1903, isLocal: false, isDefinition: false, scopeLine: 235, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1907 = !DISubprogram(name: "gbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi", scope: !1824, file: !1793, line: 238, type: !1908, isLocal: false, isDefinition: false, scopeLine: 238, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1839, !39}
!1910 = !DISubprogram(name: "setg", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_", scope: !1824, file: !1793, line: 241, type: !1911, isLocal: false, isDefinition: false, scopeLine: 241, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1839, !1829, !1829, !1829}
!1913 = !DISubprogram(name: "pbase", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv", scope: !1824, file: !1793, line: 248, type: !1903, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1914 = !DISubprogram(name: "pptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv", scope: !1824, file: !1793, line: 249, type: !1903, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1915 = !DISubprogram(name: "epptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv", scope: !1824, file: !1793, line: 250, type: !1903, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1916 = !DISubprogram(name: "pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi", scope: !1824, file: !1793, line: 253, type: !1908, isLocal: false, isDefinition: false, scopeLine: 253, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1917 = !DISubprogram(name: "setp", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_", scope: !1824, file: !1793, line: 256, type: !1918, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1839, !1829, !1829}
!1920 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1824, file: !1793, line: 263, type: !1921, isLocal: false, isDefinition: false, scopeLine: 263, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1839, !315}
!1923 = !DISubprogram(name: "setbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl", scope: !1824, file: !1793, line: 266, type: !1849, isLocal: false, isDefinition: false, scopeLine: 266, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1924 = !DISubprogram(name: "seekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj", scope: !1824, file: !1793, line: 267, type: !1852, isLocal: false, isDefinition: false, scopeLine: 267, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1925 = !DISubprogram(name: "seekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj", scope: !1824, file: !1793, line: 269, type: !1863, isLocal: false, isDefinition: false, scopeLine: 269, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1926 = !DISubprogram(name: "sync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv", scope: !1824, file: !1793, line: 271, type: !1866, isLocal: false, isDefinition: false, scopeLine: 271, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1927 = !DISubprogram(name: "showmanyc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv", scope: !1824, file: !1793, line: 274, type: !1869, isLocal: false, isDefinition: false, scopeLine: 274, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1928 = !DISubprogram(name: "xsgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl", scope: !1824, file: !1793, line: 275, type: !1878, isLocal: false, isDefinition: false, scopeLine: 275, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1929 = !DISubprogram(name: "underflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9underflowEv", scope: !1824, file: !1793, line: 276, type: !1872, isLocal: false, isDefinition: false, scopeLine: 276, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1930 = !DISubprogram(name: "uflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv", scope: !1824, file: !1793, line: 277, type: !1872, isLocal: false, isDefinition: false, scopeLine: 277, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1931 = !DISubprogram(name: "pbackfail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi", scope: !1824, file: !1793, line: 280, type: !1932, isLocal: false, isDefinition: false, scopeLine: 280, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 11, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1874, !1839, !1874}
!1934 = !DISubprogram(name: "xsputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl", scope: !1824, file: !1793, line: 283, type: !1886, isLocal: false, isDefinition: false, scopeLine: 283, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 12, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1935 = !DISubprogram(name: "overflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8overflowEi", scope: !1824, file: !1793, line: 284, type: !1932, isLocal: false, isDefinition: false, scopeLine: 284, containingType: !1824, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 13, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1936 = !DISubprogram(name: "~basic_ios", scope: !1792, file: !31, line: 623, type: !1937, isLocal: false, isDefinition: false, scopeLine: 623, containingType: !1792, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1812}
!1939 = !DISubprogram(name: "tie", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEv", scope: !1792, file: !31, line: 627, type: !1940, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1797, !1803}
!1942 = !DISubprogram(name: "tie", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEPNS_13basic_ostreamIcS2_EE", scope: !1792, file: !31, line: 629, type: !1943, isLocal: false, isDefinition: false, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1797, !1812, !1797}
!1945 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1792, file: !31, line: 632, type: !1946, isLocal: false, isDefinition: false, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1823, !1803}
!1948 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEPNS_15basic_streambufIcS2_EE", scope: !1792, file: !31, line: 634, type: !1949, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1823, !1812, !1823}
!1951 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_", scope: !1792, file: !31, line: 636, type: !1952, isLocal: false, isDefinition: false, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !1812, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1792, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1804, size: 64)
!1956 = !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1792, file: !31, line: 639, type: !1957, isLocal: false, isDefinition: false, scopeLine: 639, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1959, !1803}
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1792, file: !31, line: 588, baseType: !322)
!1960 = !DISubprogram(name: "fill", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEc", scope: !1792, file: !31, line: 641, type: !1961, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1959, !1812, !1959}
!1963 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1792, file: !31, line: 644, type: !1964, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!292, !1812, !315}
!1966 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE6narrowEcc", scope: !1792, file: !31, line: 647, type: !1967, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!322, !1803, !1959, !322}
!1969 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1792, file: !31, line: 649, type: !1970, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1959, !1803, !322}
!1972 = !DISubprogram(name: "basic_ios", scope: !1792, file: !31, line: 653, type: !1937, isLocal: false, isDefinition: false, scopeLine: 653, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1973 = !DISubprogram(name: "init", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE", scope: !1792, file: !31, line: 656, type: !1821, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1974 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveERS3_", scope: !1792, file: !31, line: 659, type: !1975, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1812, !1954}
!1977 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveEOS3_", scope: !1792, file: !31, line: 662, type: !1978, isLocal: false, isDefinition: false, scopeLine: 662, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1812, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1792, size: 64)
!1981 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4swapERS3_", scope: !1792, file: !31, line: 665, type: !1975, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1982 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE9set_rdbufEPNS_15basic_streambufIcS2_EE", scope: !1792, file: !31, line: 667, type: !1821, isLocal: false, isDefinition: false, scopeLine: 667, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_ostream", scope: !1784, file: !1784, baseType: !35, size: 64, flags: DIFlagArtificial)
!1984 = !DISubprogram(name: "basic_ostream", scope: !1789, file: !1784, line: 164, type: !1985, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1987, !1823}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1988 = !DISubprogram(name: "~basic_ostream", scope: !1789, file: !1784, line: 166, type: !1989, isLocal: false, isDefinition: false, scopeLine: 166, containingType: !1789, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1987}
!1991 = !DISubprogram(name: "basic_ostream", scope: !1789, file: !1784, line: 170, type: !1992, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1987, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1789, size: 64)
!1995 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSEOS3_", scope: !1789, file: !1784, line: 174, type: !1996, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1788, !1987, !1994}
!1998 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE4swapERS3_", scope: !1789, file: !1784, line: 177, type: !1999, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1987, !1788}
!2001 = !DISubprogram(name: "basic_ostream", scope: !1789, file: !1784, line: 181, type: !2002, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1987, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!2006 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSERKS3_", scope: !1789, file: !1784, line: 182, type: !2007, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!1788, !1987, !2004}
!2009 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E", scope: !1789, file: !1784, line: 194, type: !2010, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!1788, !1987, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!1788, !1788}
!2015 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_9basic_iosIcS2_EES6_E", scope: !1789, file: !1784, line: 198, type: !2016, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1788, !1987, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!1954, !1954}
!2021 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E", scope: !1789, file: !1784, line: 203, type: !2022, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1788, !1987, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!93, !93}
!2027 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb", scope: !1789, file: !1784, line: 206, type: !2028, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1788, !1987, !117}
!2030 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEs", scope: !1789, file: !1784, line: 207, type: !2031, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1788, !1987, !2033}
!2033 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2034 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt", scope: !1789, file: !1784, line: 208, type: !2035, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!1788, !1987, !2037}
!2037 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2038 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi", scope: !1789, file: !1784, line: 209, type: !2039, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!1788, !1987, !39}
!2041 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj", scope: !1789, file: !1784, line: 210, type: !2042, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!1788, !1987, !43}
!2044 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl", scope: !1789, file: !1784, line: 211, type: !2045, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!1788, !1987, !80}
!2047 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm", scope: !1789, file: !1784, line: 212, type: !2048, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!1788, !1987, !101}
!2050 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx", scope: !1789, file: !1784, line: 213, type: !2051, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1788, !1987, !1861}
!2053 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy", scope: !1789, file: !1784, line: 214, type: !2054, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!1788, !1987, !2056}
!2056 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!2057 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf", scope: !1789, file: !1784, line: 215, type: !2058, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!1788, !1987, !2060}
!2060 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!2061 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd", scope: !1789, file: !1784, line: 216, type: !2062, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!1788, !1987, !2064}
!2064 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2065 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEe", scope: !1789, file: !1784, line: 217, type: !2066, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!1788, !1987, !2068}
!2068 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!2069 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv", scope: !1789, file: !1784, line: 218, type: !2070, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!1788, !1987, !403}
!2072 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPNS_15basic_streambufIcS2_EE", scope: !1789, file: !1784, line: 219, type: !2073, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!1788, !1987, !1823}
!2075 = !DISubprogram(name: "put", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc", scope: !1789, file: !1784, line: 222, type: !2076, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!1788, !1987, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1789, file: !1784, line: 156, baseType: !322)
!2079 = !DISubprogram(name: "write", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl", scope: !1789, file: !1784, line: 223, type: !2080, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!1788, !1987, !2082, !77}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2078)
!2084 = !DISubprogram(name: "flush", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv", scope: !1789, file: !1784, line: 224, type: !2085, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!1788, !1987}
!2087 = !DISubprogram(name: "tellp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5tellpEv", scope: !1789, file: !1784, line: 228, type: !2088, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2090, !1987}
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1789, file: !1784, line: 159, baseType: !1855)
!2091 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpENS_4fposI11__mbstate_tEE", scope: !1789, file: !1784, line: 230, type: !2092, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!1788, !1987, !2090}
!2094 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpExNS_8ios_base7seekdirE", scope: !1789, file: !1784, line: 232, type: !2095, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!1788, !1987, !2097, !1404}
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1789, file: !1784, line: 160, baseType: !1859)
!2098 = !DISubprogram(name: "basic_ostream", scope: !1789, file: !1784, line: 236, type: !1989, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!2099 = !{!2100, !2101, !2102, !2103}
!2100 = !DILocalVariable(name: "__os", arg: 1, scope: !1785, file: !1784, line: 714, type: !1788)
!2101 = !DILocalVariable(name: "__str", arg: 2, scope: !1785, file: !1784, line: 715, type: !320)
!2102 = !DILocalVariable(name: "__len", arg: 3, scope: !1785, file: !1784, line: 715, type: !97)
!2103 = !DILocalVariable(name: "__s", scope: !2104, file: !1784, line: 721, type: !2105)
!2104 = distinct !DILexicalBlock(scope: !1785, file: !1784, line: 719, column: 5)
!2105 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "sentry", scope: !1789, file: !1784, line: 190, size: 128, elements: !2106, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE")
!2106 = !{!2107, !2108, !2109, !2115, !2119, !2122, !2125}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "__ok_", scope: !2105, file: !1784, line: 242, baseType: !117, size: 8)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "__os_", scope: !2105, file: !1784, line: 243, baseType: !1788, size: 64, offset: 64)
!2109 = !DISubprogram(name: "sentry", scope: !2105, file: !1784, line: 245, type: !2110, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2115 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryaSERKS4_", scope: !2105, file: !1784, line: 246, type: !2116, isLocal: false, isDefinition: false, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!2118, !2112, !2113}
!2118 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2105, size: 64)
!2119 = !DISubprogram(name: "sentry", scope: !2105, file: !1784, line: 249, type: !2120, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !2112, !1788}
!2122 = !DISubprogram(name: "~sentry", scope: !2105, file: !1784, line: 250, type: !2123, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !2112}
!2125 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !2105, file: !1784, line: 254, type: !2126, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!117, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2129 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ostreambuf_iterator<char, std::__1::char_traits<char> >", scope: !7, file: !698, line: 1020, size: 64, elements: !2130, templateParams: !786, identifier: "_ZTSNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEE")
!2130 = !{!2131, !2139, !2142, !2148, !2151, !2155, !2158, !2159, !2162}
!2131 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2129, baseType: !2132, flags: DIFlagPublic)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::__1::output_iterator_tag, void, void, void, void>", scope: !7, file: !698, line: 531, size: 8, elements: !370, templateParams: !2133, identifier: "_ZTSNSt3__18iteratorINS_19output_iterator_tagEvvvvEE")
!2133 = !{!2134, !402, !2136, !2137, !2138}
!2134 = !DITemplateTypeParameter(name: "_Category", type: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_iterator_tag", scope: !7, file: !698, line: 444, size: 8, elements: !370, identifier: "_ZTSNSt3__119output_iterator_tagE")
!2136 = !DITemplateTypeParameter(name: "_Distance", type: null)
!2137 = !DITemplateTypeParameter(name: "_Pointer", type: null)
!2138 = !DITemplateTypeParameter(name: "_Reference", type: null)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "__sbuf_", scope: !2129, file: !698, line: 1029, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "streambuf_type", scope: !2129, file: !698, line: 1026, baseType: !1824)
!2142 = !DISubprogram(name: "ostreambuf_iterator", scope: !2129, file: !698, line: 1031, type: !2143, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2146 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream_type", scope: !2129, file: !698, line: 1027, baseType: !1789)
!2148 = !DISubprogram(name: "ostreambuf_iterator", scope: !2129, file: !698, line: 1033, type: !2149, isLocal: false, isDefinition: false, scopeLine: 1033, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !2145, !2140}
!2151 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEaSEc", scope: !2129, file: !698, line: 1035, type: !2152, isLocal: false, isDefinition: false, scopeLine: 1035, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!2154, !2145, !322}
!2154 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2129, size: 64)
!2155 = !DISubprogram(name: "operator*", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEdeEv", scope: !2129, file: !698, line: 1041, type: !2156, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!2154, !2145}
!2158 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEv", scope: !2129, file: !698, line: 1042, type: !2156, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2159 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEi", scope: !2129, file: !698, line: 1043, type: !2160, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!2154, !2145, !39}
!2162 = !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !2129, file: !698, line: 1044, type: !2163, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!117, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2129)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2169, line: 474, size: 128, elements: !2170, templateParams: !2868, identifier: "_ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!2169 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2170 = !{!2171, !2819, !2820, !2826, !2830, !2857, !2865}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "base_", scope: !2168, file: !2169, line: 478, baseType: !2172, size: 128)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "base", scope: !2168, file: !2169, line: 476, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_impl<std::__1::__tuple_indices<0, 1>, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2169, line: 369, size: 128, elements: !2174, templateParams: !2806, identifier: "_ZTSNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEE")
!2174 = !{!2175, !2743, !2783, !2787, !2792, !2796, !2800, !2803}
!2175 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2173, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, false>", scope: !7, file: !2169, line: 170, size: 64, elements: !2177, templateParams: !2740, identifier: "_ZTSNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEE")
!2177 = !{!2178, !2712, !2719, !2722, !2725, !2729, !2732, !2735}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2176, file: !2169, line: 172, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !345, line: 2334, size: 64, elements: !2180, templateParams: !2684, identifier: "_ZTSNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2180 = !{!2181, !2650, !2655, !2659, !2662, !2668, !2678, !2689, !2690, !2695, !2700, !2703, !2706, !2709}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !2179, file: !345, line: 2344, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !345, line: 2144, size: 64, elements: !2183, templateParams: !2647, identifier: "_ZTSNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEE")
!2183 = !{!2184, !2593, !2628, !2632, !2637, !2640, !2643}
!2184 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2182, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::__thread_struct *, 0, false>", scope: !7, file: !345, line: 2076, size: 64, elements: !2186, templateParams: !2591, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE")
!2186 = !{!2187, !2574, !2578, !2583}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !2185, file: !345, line: 2105, baseType: !2188, size: 64, flags: DIFlagPrivate)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct", scope: !7, file: !2190, line: 123, size: 64, elements: !2191, identifier: "_ZTSNSt3__115__thread_structE")
!2190 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
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
!2214 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2215 = !{!2216, !2230, !2234, !2235, !2240, !2244, !2245, !2246, !2351, !2356}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !2213, file: !2214, line: 284, baseType: !2217, size: 384)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !7, file: !2218, line: 59, baseType: !2219)
!2218 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !2220, line: 30, baseType: !2221)
!2220 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !2222, line: 110, baseType: !2223)
!2222 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_cond_t", file: !2222, line: 68, size: 384, elements: !2224, identifier: "_ZTS22_opaque_pthread_cond_t")
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !2223, file: !2222, line: 69, baseType: !80, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !2223, file: !2222, line: 70, baseType: !2227, size: 320, offset: 64)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 320, elements: !2228)
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
!2260 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !2222, line: 113, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !2222, line: 78, size: 512, elements: !2263, identifier: "_ZTS23_opaque_pthread_mutex_t")
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !2262, file: !2222, line: 79, baseType: !80, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !2262, file: !2222, line: 80, baseType: !2266, size: 448, offset: 64)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 448, elements: !2267)
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
!2286 = !{!117, !2272}
!2287 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__15mutex6unlockEv", scope: !2255, file: !2214, line: 60, type: !2270, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2288 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__15mutex13native_handleEv", scope: !2255, file: !2214, line: 63, type: !2289, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!2291, !2272}
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !2255, file: !2214, line: 62, baseType: !2292)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "__owns_", scope: !2250, file: !2214, line: 117, baseType: !117, size: 8, offset: 64)
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
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defer_lock_t", scope: !7, file: !2214, line: 66, size: 8, elements: !370, identifier: "_ZTSNSt3__112defer_lock_tE")
!2306 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 129, type: !2307, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !2297, !2301, !2309}
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "try_to_lock_t", scope: !7, file: !2214, line: 67, size: 8, elements: !370, identifier: "_ZTSNSt3__113try_to_lock_tE")
!2310 = !DISubprogram(name: "unique_lock", scope: !2250, file: !2214, line: 132, type: !2311, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !2297, !2301, !2313}
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adopt_lock_t", scope: !7, file: !2214, line: 68, size: 8, elements: !370, identifier: "_ZTSNSt3__112adopt_lock_tE")
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
!2333 = !{!117, !2297}
!2334 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE6unlockEv", scope: !2250, file: !2214, line: 181, type: !2295, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2335 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4swapERS2_", scope: !2250, file: !2214, line: 184, type: !2336, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2297, !2249}
!2338 = !DISubprogram(name: "release", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE7releaseEv", scope: !2250, file: !2214, line: 190, type: !2339, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2253, !2297}
!2341 = !DISubprogram(name: "owns_lock", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE9owns_lockEv", scope: !2250, file: !2214, line: 199, type: !2342, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!117, !2344}
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
!2360 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2361 = !DINamespace(name: "chrono", scope: !7, file: !2360, line: 316)
!2362 = !{!2363, !2433, !2437, !2442, !2447, !2451, !2452, !2455}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !2359, file: !2360, line: 841, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !2359, file: !2360, line: 837, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000000> >", scope: !2361, file: !2360, line: 488, size: 64, elements: !2366, templateParams: !2415, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE")
!2366 = !{!2367, !2369, !2373, !2378, !2387, !2388, !2392, !2395, !2396, !2397, !2401, !2402, !2407, !2408, !2409, !2410, !2413, !2414}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !2365, file: !2360, line: 528, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !2365, file: !2360, line: 525, baseType: !1861)
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
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !7, file: !2360, line: 339, size: 8, elements: !370, templateParams: !2383, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEES5_EEE")
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
!2394 = !{!2365, !2372, !39}
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
!2416 = !DITemplateTypeParameter(name: "_Rep", type: !1861)
!2417 = !DITemplateTypeParameter(name: "_Period", type: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000000>", scope: !7, file: !2419, line: 247, size: 8, elements: !2420, templateParams: !2430, identifier: "_ZTSNSt3__15ratioILl1ELl1000000000EEE")
!2419 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2420 = !{!2421, !2425, !2426, !2427, !2428, !2429}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !2418, file: !2419, line: 252, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2423)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2424, line: 32, baseType: !80)
!2424 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !2418, file: !2419, line: 253, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1000000000)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !2418, file: !2419, line: 254, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !2418, file: !2419, line: 255, baseType: !2422, flags: DIFlagStaticMember, extraData: i64 1)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2418, file: !2419, line: 257, baseType: !2422, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !2418, file: !2419, line: 258, baseType: !2422, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000000)
!2430 = !{!2431, !2432}
!2431 = !DITemplateValueParameter(name: "_Num", type: !80, value: i64 1)
!2432 = !DITemplateValueParameter(name: "_Den", type: !80, value: i64 1000000000)
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
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "is_steady", scope: !2458, file: !2360, line: 1054, baseType: !465, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 false)
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
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !2469, file: !2360, line: 525, baseType: !1861)
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
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !7, file: !2360, line: 339, size: 8, elements: !370, templateParams: !2487, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEES5_EEE")
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
!2498 = !{!2469, !2476, !39}
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
!2530 = !DITemplateValueParameter(name: "_Den", type: !80, value: i64 1000000)
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
!2560 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !100, line: 120, baseType: !80)
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
!2574 = !DISubprogram(name: "__compressed_pair_elem", scope: !2185, file: !345, line: 2082, type: !2575, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2578 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2185, file: !345, line: 2101, type: !2579, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!2581, !2577}
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2185, file: !345, line: 2078, baseType: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2188, size: 64)
!2583 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2185, file: !345, line: 2102, type: !2584, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!2586, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2185, file: !345, line: 2079, baseType: !2587)
!2587 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2188)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2591 = !{!2592, !551, !552}
!2592 = !DITemplateTypeParameter(name: "_Tp", type: !2188)
!2593 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2182, baseType: !2594)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, 1, true>", scope: !7, file: !345, line: 2109, size: 8, elements: !2595, templateParams: !2626, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEE")
!2595 = !{!2596, !2610, !2614, !2619}
!2596 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2594, baseType: !2597, flags: DIFlagPrivate)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::__thread_struct>", scope: !7, file: !345, line: 2253, size: 8, elements: !2598, templateParams: !2608, identifier: "_ZTSNSt3__114default_deleteINS_15__thread_structEEE")
!2598 = !{!2599, !2603}
!2599 = !DISubprogram(name: "default_delete", scope: !2597, file: !345, line: 2257, type: !2600, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2603 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2597, file: !345, line: 2267, type: !2604, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2606, !2188}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2608 = !{!2609}
!2609 = !DITemplateTypeParameter(name: "_Tp", type: !2189)
!2610 = !DISubprogram(name: "__compressed_pair_elem", scope: !2594, file: !345, line: 2116, type: !2611, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2614 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2594, file: !345, line: 2136, type: !2615, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!2617, !2613}
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2594, file: !345, line: 2111, baseType: !2618)
!2618 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2597, size: 64)
!2619 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2594, file: !345, line: 2137, type: !2620, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!2622, !2624}
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2594, file: !345, line: 2112, baseType: !2623)
!2623 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2607, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2594)
!2626 = !{!2627, !575, !576}
!2627 = !DITemplateTypeParameter(name: "_Tp", type: !2597)
!2628 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2182, file: !345, line: 2212, type: !2629, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!2581, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2632 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2182, file: !345, line: 2217, type: !2633, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!2586, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2637 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !2182, file: !345, line: 2222, type: !2638, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!2617, !2631}
!2640 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !2182, file: !345, line: 2227, type: !2641, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!2622, !2635}
!2643 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE4swapERS5_", scope: !2182, file: !345, line: 2232, type: !2644, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !2631, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2182, size: 64)
!2647 = !{!2648, !2649}
!2648 = !DITemplateTypeParameter(name: "_T1", type: !2188)
!2649 = !DITemplateTypeParameter(name: "_T2", type: !2597)
!2650 = !DISubprogram(name: "unique_ptr", scope: !2179, file: !345, line: 2427, type: !2651, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2654 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2179, size: 64)
!2655 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEOS4_", scope: !2179, file: !345, line: 2450, type: !2656, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!2658, !2653, !2654}
!2658 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2179, size: 64)
!2659 = !DISubprogram(name: "~unique_ptr", scope: !2179, file: !345, line: 2539, type: !2660, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !2653}
!2662 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEDn", scope: !2179, file: !345, line: 2542, type: !2663, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!2658, !2653, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !9, file: !2666, line: 57, baseType: !2667)
!2666 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2667 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!2668 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !2179, file: !345, line: 2549, type: !2669, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!2671, !2676}
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2672, file: !439, line: 1084, baseType: !2673)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::__thread_struct>", scope: !7, file: !439, line: 1083, size: 8, elements: !370, templateParams: !2608, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_15__thread_structEEE")
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2674, file: !439, line: 1081, baseType: !2204)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::__thread_struct, true>", scope: !7, file: !439, line: 1081, size: 8, elements: !370, templateParams: !2675, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_15__thread_structELb1EEE")
!2675 = !{!2609, !240}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2678 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEptEv", scope: !2179, file: !345, line: 2553, type: !2679, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!2681, !2676}
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2179, file: !345, line: 2338, baseType: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2683, file: !345, line: 1031, baseType: !2686)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !345, line: 1029, size: 8, elements: !370, templateParams: !2684, identifier: "_ZTSNSt3__114__pointer_typeINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2684 = !{!2609, !2685}
!2685 = !DITemplateTypeParameter(name: "_Dp", type: !2597)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2687, file: !345, line: 1023, baseType: !2188)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>, false>", scope: !417, file: !345, line: 1021, size: 8, elements: !370, templateParams: !2688, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_15__thread_structENS_14default_deleteIS2_EELb0EEE")
!2688 = !{!2609, !2685, !189}
!2689 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE3getEv", scope: !2179, file: !345, line: 2557, type: !2679, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2690 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !2179, file: !345, line: 2561, type: !2691, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!2693, !2653}
!2693 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !2179, file: !345, line: 2337, baseType: !2597)
!2695 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !2179, file: !345, line: 2565, type: !2696, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2698, !2676}
!2698 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2694)
!2700 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEcvbEv", scope: !2179, file: !345, line: 2569, type: !2701, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!117, !2676}
!2703 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !2179, file: !345, line: 2574, type: !2704, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!2681, !2653}
!2706 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !2179, file: !345, line: 2581, type: !2707, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2653, !2681}
!2709 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE4swapERS4_", scope: !2179, file: !345, line: 2589, type: !2710, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
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
!2731 = !{!39, !2716, !2715}
!2732 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !2176, file: !2169, line: 270, type: !2733, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!2658, !2716}
!2735 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !2176, file: !2169, line: 271, type: !2736, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2677, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2740 = !{!2741, !2742, !189}
!2741 = !DITemplateValueParameter(name: "_Ip", type: !101, value: i64 0)
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
!2769 = !{!39, !2754, !2753}
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
!2780 = !{!2781, !2782, !189}
!2781 = !DITemplateValueParameter(name: "_Ip", type: !101, value: i64 1)
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
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<0, 1>", scope: !7, file: !2809, line: 90, size: 8, elements: !370, templateParams: !2810, identifier: "_ZTSNSt3__115__tuple_indicesIJLm0ELm1EEEE")
!2809 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!2810 = !{!2811}
!2811 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !2812)
!2812 = !{!2813, !2814}
!2813 = !DITemplateValueParameter(type: !101, value: i64 0)
!2814 = !DITemplateValueParameter(type: !101, value: i64 1)
!2815 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2816)
!2816 = !{!2817, !2818}
!2817 = !DITemplateTypeParameter(type: !2179)
!2818 = !DITemplateTypeParameter(type: !2747)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_EnableImplicitReducedArityExtension", scope: !2168, file: !2169, line: 483, baseType: !465, flags: DIFlagStaticMember, extraData: i1 false)
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
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2837, file: !439, line: 414, baseType: !2841)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !439, line: 414, size: 8, elements: !370, templateParams: !2838, identifier: "_ZTSNSt3__111conditionalILb0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2838 = !{!442, !2839, !2840}
!2839 = !DITemplateTypeParameter(name: "_If", type: !2168)
!2840 = !DITemplateTypeParameter(name: "_Then", type: !2841)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !7, file: !439, line: 1584, size: 8, elements: !2842, identifier: "_ZTSNSt3__15__natE")
!2842 = !{!2843, !2847, !2852, !2856}
!2843 = !DISubprogram(name: "__nat", scope: !2841, file: !439, line: 1587, type: !2844, isLocal: false, isDefinition: false, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: true)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2847 = !DISubprogram(name: "__nat", scope: !2841, file: !439, line: 1588, type: !2848, isLocal: false, isDefinition: false, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: true)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2846, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2852 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15__nataSERKS0_", scope: !2841, file: !439, line: 1589, type: !2853, isLocal: false, isDefinition: false, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: true)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!2855, !2846, !2850}
!2855 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2841, size: 64)
!2856 = !DISubprogram(name: "~__nat", scope: !2841, file: !439, line: 1590, type: !2844, isLocal: false, isDefinition: false, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: true)
!2857 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSEOS8_", scope: !2168, file: !2169, line: 884, type: !2858, isLocal: false, isDefinition: false, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!2833, !2823, !2860}
!2860 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2862, file: !439, line: 412, baseType: !2168)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !439, line: 412, size: 8, elements: !370, templateParams: !2863, identifier: "_ZTSNSt3__111conditionalILb1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2863 = !{!2864, !2839, !2840}
!2864 = !DITemplateValueParameter(name: "_Bp", type: !117, value: i8 1)
!2865 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEE4swapERS8_", scope: !2168, file: !2169, line: 906, type: !2866, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2823, !2833}
!2868 = !{!2815}
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2870, file: !1545, line: 465, baseType: !1544)
!2870 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >", scope: !7, file: !1545, line: 452, size: 192, elements: !2871, templateParams: !1764, identifier: "_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE")
!2871 = !{!2872, !2873, !2877, !2883, !2886, !2894, !2897, !2902, !2905, !2909, !2934, !2937, !2941, !2944, !2947, !2950, !2951, !2952, !2956, !3011, !3066, !3067, !3068, !3073, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3087, !3088, !3091, !3092, !3093, !3094, !3100, !3103, !3104, !3105, !3108, !3111, !3112, !3113, !3118, !3123, !3126, !3130, !3131, !3134, !3137, !3140, !3143, !3146, !3149, !3150, !3151, !3152, !3155, !3156, !3157, !3161, !3162, !3163, !3166, !3167, !3168, !3169, !3170, !3173, !3182, !3381, !3384, !3387, !3390, !3393, !3394, !3397, !3400, !3403, !3404}
!2872 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2870, baseType: !1546)
!2873 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 478, type: !2874, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2877 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 484, type: !2878, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2876, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2882)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2870, file: !1545, line: 461, baseType: !1423)
!2883 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 496, type: !2884, isLocal: false, isDefinition: false, scopeLine: 496, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2876, !2869}
!2886 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 500, type: !2887, isLocal: false, isDefinition: false, scopeLine: 500, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2876, !2869, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2870, file: !1545, line: 464, baseType: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1546, file: !1545, line: 329, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !1546, file: !1545, line: 325, baseType: !1436)
!2894 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 501, type: !2895, isLocal: false, isDefinition: false, scopeLine: 501, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !2876, !2869, !2889, !2880}
!2897 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 539, type: !2898, isLocal: false, isDefinition: false, scopeLine: 539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2876, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2902 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 540, type: !2903, isLocal: false, isDefinition: false, scopeLine: 540, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2876, !2900, !2880}
!2905 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEaSERKS6_", scope: !2870, file: !1545, line: 542, type: !2906, isLocal: false, isDefinition: false, scopeLine: 542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!2908, !2876, !2900}
!2908 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2870, size: 64)
!2909 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 546, type: !2910, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2876, !2912}
!2912 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<checker::Schedule *>", scope: !9, file: !845, line: 59, size: 128, elements: !2913, templateParams: !2932, identifier: "_ZTSSt16initializer_listIPN7checker8ScheduleEE")
!2913 = !{!2914, !2915, !2916, !2920, !2923, !2928, !2931}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !2912, file: !845, line: 61, baseType: !1444, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !2912, file: !845, line: 62, baseType: !97, size: 64, offset: 64)
!2916 = !DISubprogram(name: "initializer_list", scope: !2912, file: !845, line: 66, type: !2917, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !2919, !1444, !97}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2920 = !DISubprogram(name: "initializer_list", scope: !2912, file: !845, line: 81, type: !2921, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2919}
!2923 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIPN7checker8ScheduleEE4sizeEv", scope: !2912, file: !845, line: 85, type: !2924, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!97, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2912)
!2928 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIPN7checker8ScheduleEE5beginEv", scope: !2912, file: !845, line: 89, type: !2929, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!1444, !2926}
!2931 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIPN7checker8ScheduleEE3endEv", scope: !2912, file: !845, line: 93, type: !2929, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2932 = !{!2933}
!2933 = !DITemplateTypeParameter(name: "_Ep", type: !1436)
!2934 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 549, type: !2935, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !2876, !2912, !2880}
!2937 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 552, type: !2938, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2876, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2870, size: 64)
!2941 = !DISubprogram(name: "vector", scope: !2870, file: !1545, line: 560, type: !2942, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2876, !2940, !2880}
!2944 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEaSEOS6_", scope: !2870, file: !1545, line: 562, type: !2945, isLocal: false, isDefinition: false, scopeLine: 562, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!2908, !2876, !2940}
!2947 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEaSESt16initializer_listIS3_E", scope: !2870, file: !1545, line: 566, type: !2948, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!2908, !2876, !2912}
!2950 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6assignEmRKS3_", scope: !2870, file: !1545, line: 593, type: !2887, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2951 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6assignESt16initializer_listIS3_E", scope: !2870, file: !1545, line: 597, type: !2910, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2952 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13get_allocatorEv", scope: !2870, file: !1545, line: 602, type: !2953, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!2882, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2956 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5beginEv", scope: !2870, file: !1545, line: 605, type: !2957, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!2959, !2876}
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !2870, file: !1545, line: 469, baseType: !2960)
!2960 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<checker::Schedule **>", scope: !7, file: !698, line: 1279, size: 64, elements: !2961, templateParams: !2974, identifier: "_ZTSNSt3__111__wrap_iterIPPN7checker8ScheduleEEE")
!2961 = !{!2962, !2964, !2968, !2978, !2983, !2987, !2990, !2991, !2992, !2997, !3000, !3001, !3002, !3005, !3008}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !2960, file: !698, line: 1289, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !2960, file: !698, line: 1282, baseType: !1462)
!2964 = !DISubprogram(name: "__wrap_iter", scope: !2960, file: !698, line: 1291, type: !2965, isLocal: false, isDefinition: false, scopeLine: 1291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2968 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEdeEv", scope: !2960, file: !698, line: 1331, type: !2969, isLocal: false, isDefinition: false, scopeLine: 1331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2971, !2976}
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2960, file: !698, line: 1287, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2973, file: !698, line: 499, baseType: !1435)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<checker::Schedule **>", scope: !7, file: !698, line: 494, size: 8, elements: !370, templateParams: !2974, identifier: "_ZTSNSt3__115iterator_traitsIPPN7checker8ScheduleEEE")
!2974 = !{!2975}
!2975 = !DITemplateTypeParameter(name: "_Iter", type: !1462)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2960)
!2978 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEptEv", scope: !2960, file: !698, line: 1339, type: !2979, isLocal: false, isDefinition: false, scopeLine: 1339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2981, !2976}
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2960, file: !698, line: 1286, baseType: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2973, file: !698, line: 498, baseType: !1462)
!2983 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEppEv", scope: !2960, file: !698, line: 1347, type: !2984, isLocal: false, isDefinition: false, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2986, !2967}
!2986 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2960, size: 64)
!2987 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEppEi", scope: !2960, file: !698, line: 1356, type: !2988, isLocal: false, isDefinition: false, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!2960, !2967, !39}
!2990 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEmmEv", scope: !2960, file: !698, line: 1358, type: !2984, isLocal: false, isDefinition: false, scopeLine: 1358, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2991 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEmmEi", scope: !2960, file: !698, line: 1367, type: !2988, isLocal: false, isDefinition: false, scopeLine: 1367, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2992 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEplEl", scope: !2960, file: !698, line: 1369, type: !2993, isLocal: false, isDefinition: false, scopeLine: 1369, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!2960, !2976, !2995}
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2960, file: !698, line: 1285, baseType: !2996)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2973, file: !698, line: 496, baseType: !78)
!2997 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEpLEl", scope: !2960, file: !698, line: 1371, type: !2998, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!2986, !2967, !2995}
!3000 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEmiEl", scope: !2960, file: !698, line: 1380, type: !2993, isLocal: false, isDefinition: false, scopeLine: 1380, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3001 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__111__wrap_iterIPPN7checker8ScheduleEEmIEl", scope: !2960, file: !698, line: 1382, type: !2998, isLocal: false, isDefinition: false, scopeLine: 1382, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3002 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEEixEl", scope: !2960, file: !698, line: 1384, type: !3003, isLocal: false, isDefinition: false, scopeLine: 1384, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!2971, !2976, !2995}
!3005 = !DISubprogram(name: "base", linkageName: "_ZNKSt3__111__wrap_iterIPPN7checker8ScheduleEE4baseEv", scope: !2960, file: !698, line: 1393, type: !3006, isLocal: false, isDefinition: false, scopeLine: 1393, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!2963, !2976}
!3008 = !DISubprogram(name: "__wrap_iter", scope: !2960, file: !698, line: 1402, type: !3009, isLocal: false, isDefinition: false, scopeLine: 1402, flags: DIFlagPrototyped, isOptimized: true)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2967, !2963}
!3011 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5beginEv", scope: !2870, file: !1545, line: 606, type: !3012, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!3014, !2955}
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !2870, file: !1545, line: 470, baseType: !3015)
!3015 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<checker::Schedule *const *>", scope: !7, file: !698, line: 1279, size: 64, elements: !3016, templateParams: !3029, identifier: "_ZTSNSt3__111__wrap_iterIPKPN7checker8ScheduleEEE")
!3016 = !{!3017, !3019, !3023, !3033, !3038, !3042, !3045, !3046, !3047, !3052, !3055, !3056, !3057, !3060, !3063}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__i", scope: !3015, file: !698, line: 1289, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !3015, file: !698, line: 1282, baseType: !1444)
!3019 = !DISubprogram(name: "__wrap_iter", scope: !3015, file: !698, line: 1291, type: !3020, isLocal: false, isDefinition: false, scopeLine: 1291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !3022}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3023 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEdeEv", scope: !3015, file: !698, line: 1331, type: !3024, isLocal: false, isDefinition: false, scopeLine: 1331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!3026, !3031}
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3015, file: !698, line: 1287, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3028, file: !698, line: 499, baseType: !1447)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<checker::Schedule *const *>", scope: !7, file: !698, line: 494, size: 8, elements: !370, templateParams: !3029, identifier: "_ZTSNSt3__115iterator_traitsIPKPN7checker8ScheduleEEE")
!3029 = !{!3030}
!3030 = !DITemplateTypeParameter(name: "_Iter", type: !1444)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3015)
!3033 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEptEv", scope: !3015, file: !698, line: 1339, type: !3034, isLocal: false, isDefinition: false, scopeLine: 1339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!3036, !3031}
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3015, file: !698, line: 1286, baseType: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3028, file: !698, line: 498, baseType: !1444)
!3038 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEppEv", scope: !3015, file: !698, line: 1347, type: !3039, isLocal: false, isDefinition: false, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!3041, !3022}
!3041 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3015, size: 64)
!3042 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEppEi", scope: !3015, file: !698, line: 1356, type: !3043, isLocal: false, isDefinition: false, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!3015, !3022, !39}
!3045 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEmmEv", scope: !3015, file: !698, line: 1358, type: !3039, isLocal: false, isDefinition: false, scopeLine: 1358, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3046 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEmmEi", scope: !3015, file: !698, line: 1367, type: !3043, isLocal: false, isDefinition: false, scopeLine: 1367, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3047 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEplEl", scope: !3015, file: !698, line: 1369, type: !3048, isLocal: false, isDefinition: false, scopeLine: 1369, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!3015, !3031, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !3015, file: !698, line: 1285, baseType: !3051)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !3028, file: !698, line: 496, baseType: !78)
!3052 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEpLEl", scope: !3015, file: !698, line: 1371, type: !3053, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!3041, !3022, !3050}
!3055 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEmiEl", scope: !3015, file: !698, line: 1380, type: !3048, isLocal: false, isDefinition: false, scopeLine: 1380, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3056 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__111__wrap_iterIPKPN7checker8ScheduleEEmIEl", scope: !3015, file: !698, line: 1382, type: !3053, isLocal: false, isDefinition: false, scopeLine: 1382, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3057 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEEixEl", scope: !3015, file: !698, line: 1384, type: !3058, isLocal: false, isDefinition: false, scopeLine: 1384, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!3026, !3031, !3050}
!3060 = !DISubprogram(name: "base", linkageName: "_ZNKSt3__111__wrap_iterIPKPN7checker8ScheduleEE4baseEv", scope: !3015, file: !698, line: 1393, type: !3061, isLocal: false, isDefinition: false, scopeLine: 1393, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!3018, !3031}
!3063 = !DISubprogram(name: "__wrap_iter", scope: !3015, file: !698, line: 1402, type: !3064, isLocal: false, isDefinition: false, scopeLine: 1402, flags: DIFlagPrototyped, isOptimized: true)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3022, !3018}
!3066 = !DISubprogram(name: "end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE3endEv", scope: !2870, file: !1545, line: 607, type: !2957, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3067 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE3endEv", scope: !2870, file: !1545, line: 608, type: !3012, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3068 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6rbeginEv", scope: !2870, file: !1545, line: 611, type: !3069, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!3071, !2876}
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !2870, file: !1545, line: 471, baseType: !3072)
!3072 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<checker::Schedule **> >", scope: !7, file: !698, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPPN7checker8ScheduleEEEEE")
!3073 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6rbeginEv", scope: !2870, file: !1545, line: 614, type: !3074, isLocal: false, isDefinition: false, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!3076, !2955}
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !2870, file: !1545, line: 472, baseType: !3077)
!3077 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<checker::Schedule *const *> >", scope: !7, file: !698, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKPN7checker8ScheduleEEEEE")
!3078 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4rendEv", scope: !2870, file: !1545, line: 617, type: !3069, isLocal: false, isDefinition: false, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3079 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4rendEv", scope: !2870, file: !1545, line: 620, type: !3074, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3080 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6cbeginEv", scope: !2870, file: !1545, line: 624, type: !3012, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3081 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4cendEv", scope: !2870, file: !1545, line: 627, type: !3012, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3082 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE7crbeginEv", scope: !2870, file: !1545, line: 630, type: !3074, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3083 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5crendEv", scope: !2870, file: !1545, line: 633, type: !3074, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3084 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4sizeEv", scope: !2870, file: !1545, line: 637, type: !3085, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!2869, !2955}
!3087 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8capacityEv", scope: !2870, file: !1545, line: 640, type: !3085, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3088 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5emptyEv", scope: !2870, file: !1545, line: 643, type: !3089, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!117, !2955}
!3091 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8max_sizeEv", scope: !2870, file: !1545, line: 645, type: !3085, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3092 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE7reserveEm", scope: !2870, file: !1545, line: 646, type: !2884, isLocal: false, isDefinition: false, scopeLine: 646, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3093 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13shrink_to_fitEv", scope: !2870, file: !1545, line: 647, type: !2874, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3094 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEixEm", scope: !2870, file: !1545, line: 649, type: !3095, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!3097, !2876, !2869}
!3097 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2870, file: !1545, line: 463, baseType: !3098)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1546, file: !1545, line: 328, baseType: !3099)
!3099 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2893, size: 64)
!3100 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEixEm", scope: !2870, file: !1545, line: 650, type: !3101, isLocal: false, isDefinition: false, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!2889, !2955, !2869}
!3103 = !DISubprogram(name: "at", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE2atEm", scope: !2870, file: !1545, line: 651, type: !3095, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3104 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE2atEm", scope: !2870, file: !1545, line: 652, type: !3101, isLocal: false, isDefinition: false, scopeLine: 652, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3105 = !DISubprogram(name: "front", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5frontEv", scope: !2870, file: !1545, line: 654, type: !3106, isLocal: false, isDefinition: false, scopeLine: 654, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!3097, !2876}
!3108 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5frontEv", scope: !2870, file: !1545, line: 659, type: !3109, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!2889, !2955}
!3111 = !DISubprogram(name: "back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4backEv", scope: !2870, file: !1545, line: 664, type: !3106, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3112 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4backEv", scope: !2870, file: !1545, line: 669, type: !3109, isLocal: false, isDefinition: false, scopeLine: 669, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3113 = !DISubprogram(name: "data", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4dataEv", scope: !2870, file: !1545, line: 676, type: !3114, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!3116, !2876}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2870, file: !1545, line: 460, baseType: !1436)
!3118 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4dataEv", scope: !2870, file: !1545, line: 679, type: !3119, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!3121, !2955}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3117)
!3123 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE9push_backERKS3_", scope: !2870, file: !1545, line: 682, type: !3124, isLocal: false, isDefinition: false, scopeLine: 682, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !2876, !2889}
!3126 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE9push_backEOS3_", scope: !2870, file: !1545, line: 685, type: !3127, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !2876, !3129}
!3129 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3117, size: 64)
!3130 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8pop_backEv", scope: !2870, file: !1545, line: 697, type: !2874, isLocal: false, isDefinition: false, scopeLine: 697, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3131 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EERS8_", scope: !2870, file: !1545, line: 699, type: !3132, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!2959, !2876, !3014, !2889}
!3134 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEOS3_", scope: !2870, file: !1545, line: 702, type: !3135, isLocal: false, isDefinition: false, scopeLine: 702, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!2959, !2876, !3014, !3129}
!3137 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEmRS8_", scope: !2870, file: !1545, line: 707, type: !3138, isLocal: false, isDefinition: false, scopeLine: 707, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!2959, !2876, !3014, !2869, !2889}
!3140 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EESt16initializer_listIS3_E", scope: !2870, file: !1545, line: 732, type: !3141, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!2959, !2876, !3014, !2912}
!3143 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EE", scope: !2870, file: !1545, line: 736, type: !3144, isLocal: false, isDefinition: false, scopeLine: 736, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!2959, !2876, !3014}
!3146 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_", scope: !2870, file: !1545, line: 737, type: !3147, isLocal: false, isDefinition: false, scopeLine: 737, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!2959, !2876, !3014, !3014}
!3149 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv", scope: !2870, file: !1545, line: 740, type: !2874, isLocal: false, isDefinition: false, scopeLine: 740, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3150 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6resizeEm", scope: !2870, file: !1545, line: 748, type: !2884, isLocal: false, isDefinition: false, scopeLine: 748, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3151 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE6resizeEmRKS3_", scope: !2870, file: !1545, line: 749, type: !2887, isLocal: false, isDefinition: false, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3152 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4swapERS6_", scope: !2870, file: !1545, line: 751, type: !3153, isLocal: false, isDefinition: false, scopeLine: 751, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !2876, !2908}
!3155 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE12__invariantsEv", scope: !2870, file: !1545, line: 759, type: !3089, isLocal: false, isDefinition: false, scopeLine: 759, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3156 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE26__invalidate_all_iteratorsEv", scope: !2870, file: !1545, line: 771, type: !2874, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true)
!3157 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE27__invalidate_iterators_pastEPS3_", scope: !2870, file: !1545, line: 772, type: !3158, isLocal: false, isDefinition: false, scopeLine: 772, flags: DIFlagPrototyped, isOptimized: true)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !2876, !3160}
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2870, file: !1545, line: 467, baseType: !1562)
!3161 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8allocateEm", scope: !2870, file: !1545, line: 773, type: !2884, isLocal: false, isDefinition: false, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: true)
!3162 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE10deallocateEv", scope: !2870, file: !1545, line: 774, type: !2874, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true)
!3163 = !DISubprogram(name: "__recommend", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE11__recommendEm", scope: !2870, file: !1545, line: 775, type: !3164, isLocal: false, isDefinition: false, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: true)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!2869, !2955, !2869}
!3166 = !DISubprogram(name: "__construct_at_end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endEm", scope: !2870, file: !1545, line: 776, type: !2884, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true)
!3167 = !DISubprogram(name: "__construct_at_end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endEmRKS3_", scope: !2870, file: !1545, line: 778, type: !2887, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true)
!3168 = !DISubprogram(name: "__append", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8__appendEm", scope: !2870, file: !1545, line: 786, type: !2884, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true)
!3169 = !DISubprogram(name: "__append", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8__appendEmRKS3_", scope: !2870, file: !1545, line: 787, type: !2887, isLocal: false, isDefinition: false, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true)
!3170 = !DISubprogram(name: "__make_iter", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE11__make_iterEPS3_", scope: !2870, file: !1545, line: 789, type: !3171, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: true)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!2959, !2876, !3160}
!3173 = !DISubprogram(name: "__make_iter", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE11__make_iterEPKS3_", scope: !2870, file: !1545, line: 791, type: !3174, isLocal: false, isDefinition: false, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: true)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!3014, !2955, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !2870, file: !1545, line: 468, baseType: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1546, file: !1545, line: 333, baseType: !3178)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1564, file: !345, line: 1512, baseType: !3179)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3180, file: !345, line: 1048, baseType: !1443)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<checker::Schedule *, checker::Schedule **, std::__1::allocator<checker::Schedule *>, true>", scope: !7, file: !345, line: 1046, size: 8, elements: !370, templateParams: !3181, identifier: "_ZTSNSt3__115__const_pointerIPN7checker8ScheduleEPS3_NS_9allocatorIS3_EELb1EEE")
!3181 = !{!1461, !1584, !1575, !240}
!3182 = !DISubprogram(name: "__swap_out_circular_buffer", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE", scope: !2870, file: !1545, line: 792, type: !3183, isLocal: false, isDefinition: false, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !2876, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__split_buffer<checker::Schedule *, std::__1::allocator<checker::Schedule *> &>", scope: !7, file: !3187, line: 26, size: 320, elements: !3188, templateParams: !3379, identifier: "_ZTSNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEEE")
!3187 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__split_buffer", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3188 = !{!3189, !3198, !3200, !3201, !3202, !3247, !3253, !3256, !3264, !3270, !3274, !3279, !3282, !3285, !3288, !3292, !3293, !3297, !3300, !3303, !3307, !3312, !3313, !3314, !3315, !3318, !3321, !3322, !3323, !3324, !3330, !3336, !3337, !3338, !3341, !3342, !3345, !3346, !3350, !3351, !3352, !3353, !3354, !3357, !3360, !3363, !3366, !3367, !3368, !3369, !3372, !3373, !3376}
!3189 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3186, baseType: !3190, flags: DIFlagPrivate)
!3190 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__split_buffer_common<true>", scope: !7, file: !3187, line: 18, size: 8, elements: !3191, templateParams: !342, identifier: "_ZTSNSt3__121__split_buffer_commonILb1EEE")
!3191 = !{!3192, !3197}
!3192 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__split_buffer_commonILb1EE20__throw_length_errorEv", scope: !3190, file: !3187, line: 21, type: !3193, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3190)
!3197 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__split_buffer_commonILb1EE20__throw_out_of_rangeEv", scope: !3190, file: !3187, line: 22, type: !3193, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "__first_", scope: !3186, file: !3187, line: 46, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3186, file: !3187, line: 41, baseType: !1563)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !3186, file: !3187, line: 47, baseType: !3199, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "__end_", scope: !3186, file: !3187, line: 48, baseType: !3199, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "__end_cap_", scope: !3186, file: !3187, line: 49, baseType: !3203, size: 128, offset: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<checker::Schedule **, std::__1::allocator<checker::Schedule *> &>", scope: !7, file: !345, line: 2144, size: 128, elements: !3204, templateParams: !3245, identifier: "_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEEE")
!3204 = !{!3205, !3206, !3226, !3230, !3235, !3238, !3241}
!3205 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3203, baseType: !1642)
!3206 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3203, baseType: !3207, offset: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<checker::Schedule *> &, 1, false>", scope: !7, file: !345, line: 2076, size: 64, elements: !3208, templateParams: !3224, identifier: "_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIPN7checker8ScheduleEEELi1ELb0EEE")
!3208 = !{!3209, !3210, !3214, !3218}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !3207, file: !345, line: 2105, baseType: !1676, size: 64, flags: DIFlagPrivate)
!3210 = !DISubprogram(name: "__compressed_pair_elem", scope: !3207, file: !345, line: 2082, type: !3211, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3214 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPN7checker8ScheduleEEELi1ELb0EE5__getEv", scope: !3207, file: !345, line: 2101, type: !3215, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!3217, !3213}
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3207, file: !345, line: 2078, baseType: !1676)
!3218 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIRNS_9allocatorIPN7checker8ScheduleEEELi1ELb0EE5__getEv", scope: !3207, file: !345, line: 2102, type: !3219, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !3207, file: !345, line: 2079, baseType: !1676)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3207)
!3224 = !{!3225, !575, !552}
!3225 = !DITemplateTypeParameter(name: "_Tp", type: !1676)
!3226 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE5firstEv", scope: !3203, file: !345, line: 2212, type: !3227, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!1652, !3229}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3230 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE5firstEv", scope: !3203, file: !345, line: 2217, type: !3231, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!1657, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3235 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE6secondEv", scope: !3203, file: !345, line: 2222, type: !3236, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!3217, !3229}
!3238 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE6secondEv", scope: !3203, file: !345, line: 2227, type: !3239, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!3221, !3233}
!3241 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPPN7checker8ScheduleERNS_9allocatorIS3_EEE4swapERS8_", scope: !3203, file: !345, line: 2232, type: !3242, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !3229, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3203, size: 64)
!3245 = !{!1706, !3246}
!3246 = !DITemplateTypeParameter(name: "_T2", type: !1676)
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
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3262, file: !439, line: 1069, baseType: !1423)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::allocator<checker::Schedule *> &>", scope: !7, file: !439, line: 1069, size: 8, elements: !370, templateParams: !3263, identifier: "_ZTSNSt3__116remove_referenceIRNS_9allocatorIPN7checker8ScheduleEEEEE")
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
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !3186, file: !3187, line: 39, baseType: !1571)
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
!3320 = !{!117, !3269}
!3321 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE8capacityEv", scope: !3186, file: !3187, line: 89, type: !3316, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true)
!3322 = !DISubprogram(name: "__front_spare", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE13__front_spareEv", scope: !3186, file: !3187, line: 90, type: !3316, isLocal: false, isDefinition: false, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true)
!3323 = !DISubprogram(name: "__back_spare", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE12__back_spareEv", scope: !3186, file: !3187, line: 91, type: !3316, isLocal: false, isDefinition: false, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true)
!3324 = !DISubprogram(name: "front", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE5frontEv", scope: !3186, file: !3187, line: 93, type: !3325, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!3327, !3250}
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3186, file: !3187, line: 37, baseType: !3328)
!3328 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !3186, file: !3187, line: 33, baseType: !1436)
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
!3362 = !{null, !3250, !3199, !478}
!3363 = !DISubprogram(name: "__destruct_at_begin", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE", scope: !3186, file: !3187, line: 135, type: !3364, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3250, !3199, !461}
!3366 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !3186, file: !3187, line: 138, type: !3358, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true)
!3367 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE17__destruct_at_endEPS3_NS_17integral_constantIbLb0EEE", scope: !3186, file: !3187, line: 141, type: !3361, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true)
!3368 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE17__destruct_at_endEPS3_NS_17integral_constantIbLb1EEE", scope: !3186, file: !3187, line: 143, type: !3364, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true)
!3369 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE4swapERS7_", scope: !3186, file: !3187, line: 145, type: !3370, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !3250, !3185}
!3372 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE12__invariantsEv", scope: !3186, file: !3187, line: 149, type: !3319, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!3373 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__move_assign_allocERS7_NS_17integral_constantIbLb1EEE", scope: !3186, file: !3187, line: 153, type: !3374, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3250, !3185, !461}
!3376 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__114__split_bufferIPN7checker8ScheduleERNS_9allocatorIS3_EEE19__move_assign_allocERS7_NS_17integral_constantIbLb0EEE", scope: !3186, file: !3187, line: 160, type: !3377, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3250, !3185, !478}
!3379 = !{!1461, !3380}
!3380 = !DITemplateTypeParameter(name: "_Allocator", type: !1676)
!3381 = !DISubprogram(name: "__swap_out_circular_buffer", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_", scope: !2870, file: !1545, line: 793, type: !3382, isLocal: false, isDefinition: false, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!3160, !2876, !3185, !3160}
!3384 = !DISubprogram(name: "__move_range", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_", scope: !2870, file: !1545, line: 794, type: !3385, isLocal: false, isDefinition: false, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !2876, !3160, !3160, !3160}
!3387 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13__move_assignERS6_NS_17integral_constantIbLb1EEE", scope: !2870, file: !1545, line: 795, type: !3388, isLocal: false, isDefinition: false, scopeLine: 795, flags: DIFlagPrototyped, isOptimized: true)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !2876, !2908, !461}
!3390 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE13__move_assignERS6_NS_17integral_constantIbLb0EEE", scope: !2870, file: !1545, line: 797, type: !3391, isLocal: false, isDefinition: false, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: true)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !2876, !2908, !478}
!3393 = !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !2870, file: !1545, line: 800, type: !3158, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: true)
!3394 = !DISubprogram(name: "__annotate_contiguous_container", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE31__annotate_contiguous_containerEPKvS8_S8_S8_", scope: !2870, file: !1545, line: 832, type: !3395, isLocal: false, isDefinition: false, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !2955, !403, !403, !403, !403}
!3397 = !DISubprogram(name: "__annotate_new", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE14__annotate_newEm", scope: !2870, file: !1545, line: 836, type: !3398, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPrototyped, isOptimized: true)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !2955, !2869}
!3400 = !DISubprogram(name: "__annotate_delete", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE17__annotate_deleteEv", scope: !2870, file: !1545, line: 842, type: !3401, isLocal: false, isDefinition: false, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: true)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !2955}
!3403 = !DISubprogram(name: "__annotate_increase", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE19__annotate_increaseEm", scope: !2870, file: !1545, line: 848, type: !3398, isLocal: false, isDefinition: false, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true)
!3404 = !DISubprogram(name: "__annotate_shrink", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE17__annotate_shrinkEm", scope: !2870, file: !1545, line: 855, type: !3398, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true)
!3405 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__libcpp_numeric_limits<long, true>", scope: !7, file: !18, line: 198, size: 8, elements: !3406, templateParams: !3448, identifier: "_ZTSNSt3__123__libcpp_numeric_limitsIlLb1EEE")
!3406 = !{!3407, !3408, !3409, !3411, !3412, !3413, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3437, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "is_specialized", scope: !3405, file: !18, line: 203, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3405, file: !18, line: 205, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !3405, file: !18, line: 206, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 63)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "digits10", scope: !3405, file: !18, line: 207, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 18)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "max_digits10", scope: !3405, file: !18, line: 208, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "__min", scope: !3405, file: !18, line: 209, baseType: !3414, flags: DIFlagProtected | DIFlagStaticMember, extraData: i64 -9223372036854775808)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3405, file: !18, line: 201, baseType: !80)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "__max", scope: !3405, file: !18, line: 210, baseType: !3414, flags: DIFlagProtected | DIFlagStaticMember, extraData: i64 9223372036854775807)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "is_integer", scope: !3405, file: !18, line: 215, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "is_exact", scope: !3405, file: !18, line: 216, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !3405, file: !18, line: 217, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 2)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent", scope: !3405, file: !18, line: 221, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent10", scope: !3405, file: !18, line: 222, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent", scope: !3405, file: !18, line: 223, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent10", scope: !3405, file: !18, line: 224, baseType: !3410, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "has_infinity", scope: !3405, file: !18, line: 226, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "has_quiet_NaN", scope: !3405, file: !18, line: 227, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "has_signaling_NaN", scope: !3405, file: !18, line: 228, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !3405, file: !18, line: 229, baseType: !3428, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm_loss", scope: !3405, file: !18, line: 230, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "is_iec559", scope: !3405, file: !18, line: 236, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "is_bounded", scope: !3405, file: !18, line: 237, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "is_modulo", scope: !3405, file: !18, line: 238, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !3405, file: !18, line: 242, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tinyness_before", scope: !3405, file: !18, line: 246, baseType: !465, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "round_style", scope: !3405, file: !18, line: 247, baseType: !3436, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!3436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!3437 = !DISubprogram(name: "min", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3minEv", scope: !3405, file: !18, line: 211, type: !3438, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!3415}
!3440 = !DISubprogram(name: "max", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv", scope: !3405, file: !18, line: 212, type: !3438, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3441 = !DISubprogram(name: "lowest", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE6lowestEv", scope: !3405, file: !18, line: 213, type: !3438, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3442 = !DISubprogram(name: "epsilon", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE7epsilonEv", scope: !3405, file: !18, line: 218, type: !3438, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3443 = !DISubprogram(name: "round_error", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE11round_errorEv", scope: !3405, file: !18, line: 219, type: !3438, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3444 = !DISubprogram(name: "infinity", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE8infinityEv", scope: !3405, file: !18, line: 231, type: !3438, isLocal: false, isDefinition: false, scopeLine: 231, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3445 = !DISubprogram(name: "quiet_NaN", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE9quiet_NaNEv", scope: !3405, file: !18, line: 232, type: !3438, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3446 = !DISubprogram(name: "signaling_NaN", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE13signaling_NaNEv", scope: !3405, file: !18, line: 233, type: !3438, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3447 = !DISubprogram(name: "denorm_min", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIlLb1EE10denorm_minEv", scope: !3405, file: !18, line: 234, type: !3438, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3448 = !{!3449, !240}
!3449 = !DITemplateTypeParameter(name: "_Tp", type: !80)
!3450 = !{!0, !3451, !3453}
!3451 = !DIGlobalVariableExpression(var: !3452)
!3452 = distinct !DIGlobalVariable(name: "data2", scope: !2, file: !3, line: 10, type: !39, isLocal: false, isDefinition: true)
!3453 = !DIGlobalVariableExpression(var: !3454)
!3454 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 11, type: !104, isLocal: false, isDefinition: true)
!3455 = !{!3456, !3457, !3458, !3461, !3462, !3469, !3475, !3481, !3485, !3489, !3493, !3497, !3502, !3506, !3510, !3514, !3518, !3522, !3526, !3528, !3532, !3536, !3540, !3544, !3548, !3550, !3554, !3558, !3560, !3564, !3566, !3573, !3577, !3582, !3586, !3588, !3592, !3596, !3598, !3602, !3608, !3612, !3616, !3622, !3626, !3629, !3630, !3633, !3636, !3639, !3642, !3645, !3648, !3650, !3652, !3654, !3656, !3658, !3660, !3662, !3664, !3666, !3668, !3670, !3672, !3674, !3676, !3678, !3682, !3685, !3686, !3689, !3690, !3695, !3697, !3701, !3705, !3707, !3709, !3713, !3717, !3721, !3723, !3727, !3732, !3736, !3740, !3742, !3744, !3746, !3748, !3750, !3752, !3756, !3760, !3764, !3765, !3766, !3781, !3785, !3789, !3794, !3799, !3805, !3811, !3815, !3817, !3821, !3873, !3874, !3875, !3880, !3882, !3886, !3890, !3894, !3896, !3900, !3904, !3908, !3919, !3921, !3925, !3929, !3933, !3935, !3939, !3943, !3947, !3949, !3951, !3953, !3957, !3961, !3966, !3970, !3976, !3980, !3984, !3986, !3988, !3990, !3994, !3998, !4002, !4004, !4006, !4010, !4014, !4016, !4018, !4022, !4026, !4028, !4032, !4034, !4036, !4039, !4041, !4043, !4045, !4047, !4049, !4051, !4053, !4055, !4057, !4059, !4061, !4063, !4065, !4069, !4074, !4079, !4084, !4086, !4089, !4091, !4093, !4095, !4097, !4099, !4101, !4103, !4105, !4107, !4111, !4115, !4119, !4121, !4125, !4129, !4141, !4142, !4143, !4144, !4145, !4150, !4152, !4156, !4160, !4164, !4168, !4170, !4174, !4178, !4182, !4186, !4190, !4194, !4196, !4198, !4202, !4207, !4211, !4215, !4219, !4223, !4227, !4231, !4235, !4239, !4241, !4243, !4247, !4249, !4253, !4257, !4262, !4264, !4266, !4268, !4272, !4276, !4280, !4282, !4286, !4288, !4290, !4292, !4294, !4298, !4302, !4304, !4310, !4315, !4319, !4323, !4328, !4333, !4337, !4341, !4345, !4349, !4351, !4353, !4354}
!3456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !78, line: 49)
!3457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !97, line: 50)
!3458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3459, line: 55)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !3460, line: 32, baseType: !2068)
!3460 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !97, line: 100)
!3462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3463, line: 101)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !3464, line: 85, baseType: !3465)
!3464 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3464, line: 82, size: 64, elements: !3466, identifier: "_ZTS5div_t")
!3466 = !{!3467, !3468}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !3465, file: !3464, line: 83, baseType: !39, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !3465, file: !3464, line: 84, baseType: !39, size: 32, offset: 32)
!3469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3470, line: 102)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !3464, line: 90, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3464, line: 87, size: 128, elements: !3472, identifier: "_ZTS6ldiv_t")
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !3471, file: !3464, line: 88, baseType: !80, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !3471, file: !3464, line: 89, baseType: !80, size: 64, offset: 64)
!3475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3476, line: 104)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !3464, line: 96, baseType: !3477)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3464, line: 93, size: 128, elements: !3478, identifier: "_ZTS7lldiv_t")
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !3477, file: !3464, line: 94, baseType: !1861, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !3477, file: !3464, line: 95, baseType: !1861, size: 64, offset: 64)
!3481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3482, line: 106)
!3482 = !DISubprogram(name: "atof", scope: !3464, file: !3464, line: 131, type: !3483, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!2064, !320}
!3485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3486, line: 107)
!3486 = !DISubprogram(name: "atoi", scope: !3464, file: !3464, line: 132, type: !3487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!39, !320}
!3489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3490, line: 108)
!3490 = !DISubprogram(name: "atol", scope: !3464, file: !3464, line: 133, type: !3491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!80, !320}
!3493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3494, line: 110)
!3494 = !DISubprogram(name: "atoll", scope: !3464, file: !3464, line: 136, type: !3495, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!1861, !320}
!3497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3498, line: 112)
!3498 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !3464, file: !3464, line: 162, type: !3499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!2064, !320, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3503, line: 113)
!3503 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !3464, file: !3464, line: 163, type: !3504, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!2060, !320, !3501}
!3506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3507, line: 114)
!3507 = !DISubprogram(name: "strtold", scope: !3464, file: !3464, line: 166, type: !3508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!2068, !320, !3501}
!3510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3511, line: 115)
!3511 = !DISubprogram(name: "strtol", scope: !3464, file: !3464, line: 164, type: !3512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!80, !320, !3501, !39}
!3514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3515, line: 117)
!3515 = !DISubprogram(name: "strtoll", scope: !3464, file: !3464, line: 169, type: !3516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!1861, !320, !3501, !39}
!3518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3519, line: 119)
!3519 = !DISubprogram(name: "strtoul", scope: !3464, file: !3464, line: 172, type: !3520, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!101, !320, !3501, !39}
!3522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3523, line: 121)
!3523 = !DISubprogram(name: "strtoull", scope: !3464, file: !3464, line: 175, type: !3524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!2056, !320, !3501, !39}
!3526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3527, line: 123)
!3527 = !DISubprogram(name: "rand", scope: !3464, file: !3464, line: 159, type: !37, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3529, line: 124)
!3529 = !DISubprogram(name: "srand", scope: !3464, file: !3464, line: 161, type: !3530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !43}
!3532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3533, line: 125)
!3533 = !DISubprogram(name: "calloc", scope: !3464, file: !3464, line: 140, type: !3534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!85, !97, !97}
!3536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3537, line: 126)
!3537 = !DISubprogram(name: "free", scope: !3464, file: !3464, line: 143, type: !3538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !85}
!3540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3541, line: 127)
!3541 = !DISubprogram(name: "malloc", scope: !3464, file: !3464, line: 152, type: !3542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!85, !97}
!3544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3545, line: 128)
!3545 = !DISubprogram(name: "realloc", scope: !3464, file: !3464, line: 160, type: !3546, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!85, !85, !97}
!3548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3549, line: 129)
!3549 = !DISubprogram(name: "abort", scope: !3464, file: !3464, line: 128, type: !2748, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!3550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3551, line: 130)
!3551 = !DISubprogram(name: "atexit", scope: !3464, file: !3464, line: 130, type: !3552, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!39, !2747}
!3554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3555, line: 131)
!3555 = !DISubprogram(name: "exit", scope: !3464, file: !3464, line: 142, type: !3556, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !39}
!3558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3559, line: 132)
!3559 = !DISubprogram(name: "_Exit", scope: !3464, file: !3464, line: 182, type: !3556, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!3560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3561, line: 134)
!3561 = !DISubprogram(name: "getenv", scope: !3464, file: !3464, line: 144, type: !3562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!384, !320}
!3564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3565, line: 135)
!3565 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !3464, file: !3464, line: 177, type: !3487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3567, line: 137)
!3567 = !DISubprogram(name: "bsearch", scope: !3464, file: !3464, line: 138, type: !3568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!85, !403, !403, !97, !97, !3570}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!39, !403, !403}
!3573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3574, line: 138)
!3574 = !DISubprogram(name: "qsort", scope: !3464, file: !3464, line: 157, type: !3575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !85, !97, !97, !3570}
!3577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3578, line: 139)
!3578 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !3579, file: !3579, line: 113, type: !3580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3579 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!1861, !1861}
!3582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3583, line: 140)
!3583 = !DISubprogram(name: "labs", scope: !3464, file: !3464, line: 145, type: !3584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!80, !80}
!3586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3587, line: 142)
!3587 = !DISubprogram(name: "llabs", scope: !3464, file: !3464, line: 149, type: !3580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3589, line: 144)
!3589 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !3579, file: !3579, line: 118, type: !3590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!3476, !1861, !1861}
!3592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3593, line: 145)
!3593 = !DISubprogram(name: "ldiv", scope: !3464, file: !3464, line: 146, type: !3594, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!3470, !80, !80}
!3596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3597, line: 147)
!3597 = !DISubprogram(name: "lldiv", scope: !3464, file: !3464, line: 150, type: !3590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3599, line: 149)
!3599 = !DISubprogram(name: "mblen", scope: !3464, file: !3464, line: 153, type: !3600, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!39, !320, !97}
!3602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3603, line: 150)
!3603 = !DISubprogram(name: "mbtowc", scope: !3464, file: !3464, line: 155, type: !3604, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!39, !3606, !320, !97}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!3608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3609, line: 151)
!3609 = !DISubprogram(name: "wctomb", scope: !3464, file: !3464, line: 179, type: !3610, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!39, !384, !3607}
!3612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3613, line: 152)
!3613 = !DISubprogram(name: "mbstowcs", scope: !3464, file: !3464, line: 154, type: !3614, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!97, !3606, !320, !97}
!3616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3617, line: 153)
!3617 = !DISubprogram(name: "wcstombs", scope: !3464, file: !3464, line: 178, type: !3618, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!97, !384, !3620, !97}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3607)
!3622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3623, line: 153)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !3624, line: 30, baseType: !3625)
!3624 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3625 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3627, line: 154)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !3628, line: 30, baseType: !2033)
!3628 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1316, line: 155)
!3630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3631, line: 156)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !3632, line: 30, baseType: !1861)
!3632 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3634, line: 158)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !3635, line: 31, baseType: !518)
!3635 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3637, line: 159)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !3638, line: 31, baseType: !2037)
!3638 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3640, line: 160)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !3641, line: 31, baseType: !43)
!3641 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3643, line: 161)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !3644, line: 31, baseType: !2056)
!3644 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3646, line: 163)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !3647, line: 29, baseType: !3623)
!3647 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3649, line: 164)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !3647, line: 30, baseType: !3627)
!3650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3651, line: 165)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !3647, line: 31, baseType: !1316)
!3652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3653, line: 166)
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !3647, line: 32, baseType: !3631)
!3654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3655, line: 168)
!3655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !3647, line: 33, baseType: !3634)
!3656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3657, line: 169)
!3657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !3647, line: 34, baseType: !3637)
!3658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3659, line: 170)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !3647, line: 35, baseType: !3640)
!3660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3661, line: 171)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !3647, line: 36, baseType: !3643)
!3662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3663, line: 173)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !3647, line: 40, baseType: !3623)
!3664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3665, line: 174)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !3647, line: 41, baseType: !3627)
!3666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3667, line: 175)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !3647, line: 42, baseType: !1316)
!3668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3669, line: 176)
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !3647, line: 43, baseType: !3631)
!3670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3671, line: 178)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !3647, line: 44, baseType: !3634)
!3672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3673, line: 179)
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !3647, line: 45, baseType: !3637)
!3674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3675, line: 180)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !3647, line: 46, baseType: !3640)
!3676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3677, line: 181)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3647, line: 47, baseType: !3643)
!3678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3679, line: 183)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !3680, line: 30, baseType: !3681)
!3680 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !100, line: 49, baseType: !80)
!3682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3683, line: 184)
!3683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !3684, line: 30, baseType: !101)
!3684 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2423, line: 186)
!3686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3687, line: 187)
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3688, line: 32, baseType: !101)
!3688 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !97, line: 69)
!3690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3691, line: 70)
!3691 = !DISubprogram(name: "memcpy", scope: !3692, file: !3692, line: 72, type: !3693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3692 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!85, !85, !403, !97}
!3695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3696, line: 71)
!3696 = !DISubprogram(name: "memmove", scope: !3692, file: !3692, line: 73, type: !3693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3698, line: 72)
!3698 = !DISubprogram(name: "strcpy", scope: !3692, file: !3692, line: 79, type: !3699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!384, !384, !320}
!3701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3702, line: 73)
!3702 = !DISubprogram(name: "strncpy", scope: !3692, file: !3692, line: 85, type: !3703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!384, !384, !320, !97}
!3705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3706, line: 74)
!3706 = !DISubprogram(name: "strcat", scope: !3692, file: !3692, line: 75, type: !3699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3708, line: 75)
!3708 = !DISubprogram(name: "strncat", scope: !3692, file: !3692, line: 83, type: !3703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3710, line: 76)
!3710 = !DISubprogram(name: "memcmp", scope: !3692, file: !3692, line: 71, type: !3711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!39, !403, !403, !97}
!3713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3714, line: 77)
!3714 = !DISubprogram(name: "strcmp", scope: !3692, file: !3692, line: 77, type: !3715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!39, !320, !320}
!3717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3718, line: 78)
!3718 = !DISubprogram(name: "strncmp", scope: !3692, file: !3692, line: 84, type: !3719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!39, !320, !320, !97}
!3721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3722, line: 79)
!3722 = !DISubprogram(name: "strcoll", scope: !3692, file: !3692, line: 78, type: !3715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3724, line: 80)
!3724 = !DISubprogram(name: "strxfrm", scope: !3692, file: !3692, line: 91, type: !3725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!97, !384, !320, !97}
!3727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3728, line: 81)
!3728 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !3729, file: !3729, line: 99, type: !3730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3729 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!85, !85, !39, !97}
!3732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3733, line: 82)
!3733 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !3729, file: !3729, line: 78, type: !3734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!384, !384, !39}
!3736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3737, line: 83)
!3737 = !DISubprogram(name: "strcspn", scope: !3692, file: !3692, line: 80, type: !3738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!97, !320, !320}
!3740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3741, line: 84)
!3741 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !3729, file: !3729, line: 85, type: !3699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3743, line: 85)
!3743 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !3729, file: !3729, line: 92, type: !3734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3745, line: 86)
!3745 = !DISubprogram(name: "strspn", scope: !3692, file: !3692, line: 88, type: !3738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3747, line: 87)
!3747 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !3729, file: !3729, line: 106, type: !3699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3749, line: 89)
!3749 = !DISubprogram(name: "strtok", scope: !3692, file: !3692, line: 90, type: !3699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3751, line: 91)
!3751 = !DISubprogram(name: "memset", scope: !3692, file: !3692, line: 74, type: !3730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3753, line: 92)
!3753 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !3692, file: !3692, line: 81, type: !3754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!384, !39}
!3756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3757, line: 93)
!3757 = !DISubprogram(name: "strlen", scope: !3692, file: !3692, line: 82, type: !3758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!97, !320}
!3760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3761, line: 56)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3762, line: 30, baseType: !3763)
!3762 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !100, line: 117, baseType: !101)
!3764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !97, line: 57)
!3765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2559, line: 58)
!3766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3767, line: 59)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !3768, line: 73, size: 448, elements: !3769, identifier: "_ZTS2tm")
!3768 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !3767, file: !3768, line: 74, baseType: !39, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !3767, file: !3768, line: 75, baseType: !39, size: 32, offset: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !3767, file: !3768, line: 76, baseType: !39, size: 32, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !3767, file: !3768, line: 77, baseType: !39, size: 32, offset: 96)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !3767, file: !3768, line: 78, baseType: !39, size: 32, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !3767, file: !3768, line: 79, baseType: !39, size: 32, offset: 160)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !3767, file: !3768, line: 80, baseType: !39, size: 32, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !3767, file: !3768, line: 81, baseType: !39, size: 32, offset: 224)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !3767, file: !3768, line: 82, baseType: !39, size: 32, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !3767, file: !3768, line: 83, baseType: !80, size: 64, offset: 320)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !3767, file: !3768, line: 84, baseType: !384, size: 64, offset: 384)
!3781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3782, line: 60)
!3782 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !3768, file: !3768, line: 107, type: !3783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!3761}
!3785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3786, line: 61)
!3786 = !DISubprogram(name: "difftime", scope: !3768, file: !3768, line: 109, type: !3787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!2064, !2559, !2559}
!3789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3790, line: 62)
!3790 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !3768, file: !3768, line: 113, type: !3791, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!2559, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3795, line: 63)
!3795 = !DISubprogram(name: "time", scope: !3768, file: !3768, line: 116, type: !3796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!2559, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!3799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3800, line: 65)
!3800 = !DISubprogram(name: "asctime", scope: !3768, file: !3768, line: 106, type: !3801, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!384, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3767)
!3805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3806, line: 66)
!3806 = !DISubprogram(name: "ctime", scope: !3768, file: !3768, line: 108, type: !3807, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!384, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!3811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3812, line: 67)
!3812 = !DISubprogram(name: "gmtime", scope: !3768, file: !3768, line: 111, type: !3813, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!3793, !3809}
!3815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3816, line: 68)
!3816 = !DISubprogram(name: "localtime", scope: !3768, file: !3768, line: 112, type: !3813, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3818, line: 70)
!3818 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !3768, file: !3768, line: 114, type: !3819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!97, !384, !97, !320, !3803}
!3821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3822, line: 108)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3823, line: 153, baseType: !3824)
!3823 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !3823, line: 122, size: 1216, elements: !3825, identifier: "_ZTS7__sFILE")
!3825 = !{!3826, !3828, !3829, !3830, !3831, !3832, !3837, !3838, !3839, !3843, !3847, !3855, !3859, !3860, !3863, !3864, !3866, !3870, !3871, !3872}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !3824, file: !3823, line: 123, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !3824, file: !3823, line: 124, baseType: !39, size: 32, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !3824, file: !3823, line: 125, baseType: !39, size: 32, offset: 96)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3824, file: !3823, line: 126, baseType: !2033, size: 16, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !3824, file: !3823, line: 127, baseType: !2033, size: 16, offset: 144)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !3824, file: !3823, line: 128, baseType: !3833, size: 128, offset: 192)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !3823, line: 88, size: 128, elements: !3834, identifier: "_ZTS6__sbuf")
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !3833, file: !3823, line: 89, baseType: !3827, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !3833, file: !3823, line: 90, baseType: !39, size: 32, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !3824, file: !3823, line: 129, baseType: !39, size: 32, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !3824, file: !3823, line: 132, baseType: !85, size: 64, offset: 384)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !3824, file: !3823, line: 133, baseType: !3840, size: 64, offset: 448)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!39, !85}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !3824, file: !3823, line: 134, baseType: !3844, size: 64, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!39, !85, !384, !39}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !3824, file: !3823, line: 135, baseType: !3848, size: 64, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!3851, !85, !3851, !39}
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !3823, line: 77, baseType: !3852)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !3853, line: 71, baseType: !3854)
!3853 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !100, line: 46, baseType: !1861)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !3824, file: !3823, line: 136, baseType: !3856, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!39, !85, !320, !39}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !3824, file: !3823, line: 139, baseType: !3833, size: 128, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !3824, file: !3823, line: 140, baseType: !3861, size: 64, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !3823, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !3824, file: !3823, line: 141, baseType: !39, size: 32, offset: 896)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !3824, file: !3823, line: 144, baseType: !3865, size: 24, offset: 928)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 24, elements: !530)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !3824, file: !3823, line: 145, baseType: !3867, size: 8, offset: 952)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 8, elements: !3868)
!3868 = !{!3869}
!3869 = !DISubrange(count: 1)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !3824, file: !3823, line: 148, baseType: !3833, size: 128, offset: 960)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !3824, file: !3823, line: 151, baseType: !39, size: 32, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3824, file: !3823, line: 152, baseType: !3851, size: 64, offset: 1152)
!3873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3851, line: 109)
!3874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !97, line: 110)
!3875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3876, line: 112)
!3876 = !DISubprogram(name: "fclose", scope: !3823, file: !3823, line: 232, type: !3877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!39, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3881, line: 113)
!3881 = !DISubprogram(name: "fflush", scope: !3823, file: !3823, line: 235, type: !3877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3883, line: 114)
!3883 = !DISubprogram(name: "setbuf", scope: !3823, file: !3823, line: 267, type: !3884, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !3879, !384}
!3886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3887, line: 115)
!3887 = !DISubprogram(name: "setvbuf", scope: !3823, file: !3823, line: 268, type: !3888, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!39, !3879, !384, !39, !97}
!3890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3891, line: 116)
!3891 = !DISubprogram(name: "fprintf", scope: !3823, file: !3823, line: 244, type: !3892, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!39, !3879, !320, null}
!3894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3895, line: 117)
!3895 = !DISubprogram(name: "fscanf", scope: !3823, file: !3823, line: 250, type: !3892, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3897, line: 118)
!3897 = !DISubprogram(name: "snprintf", scope: !3823, file: !3823, line: 421, type: !3898, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!39, !384, !97, !320, null}
!3900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3901, line: 119)
!3901 = !DISubprogram(name: "sprintf", scope: !3823, file: !3823, line: 269, type: !3902, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!39, !384, !320, null}
!3904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3905, line: 120)
!3905 = !DISubprogram(name: "sscanf", scope: !3823, file: !3823, line: 270, type: !3906, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!39, !320, !320, null}
!3908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3909, line: 121)
!3909 = !DISubprogram(name: "vfprintf", scope: !3823, file: !3823, line: 278, type: !3910, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!39, !3879, !320, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !3914, identifier: "_ZTS13__va_list_tag")
!3914 = !{!3915, !3916, !3917, !3918}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3913, file: !3, baseType: !43, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3913, file: !3, baseType: !43, size: 32, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3913, file: !3, baseType: !85, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3913, file: !3, baseType: !85, size: 64, offset: 128)
!3919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3920, line: 122)
!3920 = !DISubprogram(name: "vfscanf", scope: !3823, file: !3823, line: 422, type: !3910, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3922, line: 123)
!3922 = !DISubprogram(name: "vsscanf", scope: !3823, file: !3823, line: 425, type: !3923, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!39, !320, !320, !3912}
!3925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3926, line: 124)
!3926 = !DISubprogram(name: "vsnprintf", scope: !3823, file: !3823, line: 424, type: !3927, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!39, !384, !97, !320, !3912}
!3929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3930, line: 125)
!3930 = !DISubprogram(name: "vsprintf", scope: !3823, file: !3823, line: 280, type: !3931, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!39, !384, !320, !3912}
!3933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3934, line: 126)
!3934 = !DISubprogram(name: "fgetc", scope: !3823, file: !3823, line: 236, type: !3877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3936, line: 127)
!3936 = !DISubprogram(name: "fgets", scope: !3823, file: !3823, line: 238, type: !3937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!384, !384, !39, !3879}
!3939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3940, line: 128)
!3940 = !DISubprogram(name: "fputc", scope: !3823, file: !3823, line: 245, type: !3941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!39, !39, !3879}
!3943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3944, line: 129)
!3944 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !3823, file: !3823, line: 246, type: !3945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!39, !320, !3879}
!3947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3948, line: 130)
!3948 = !DISubprogram(name: "getc", scope: !3823, file: !3823, line: 255, type: !3877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3950, line: 131)
!3950 = !DISubprogram(name: "putc", scope: !3823, file: !3823, line: 260, type: !3941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3952, line: 132)
!3952 = !DISubprogram(name: "ungetc", scope: !3823, file: !3823, line: 277, type: !3941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3954, line: 133)
!3954 = !DISubprogram(name: "fread", scope: !3823, file: !3823, line: 247, type: !3955, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!97, !85, !97, !97, !3879}
!3957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3958, line: 134)
!3958 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !3823, file: !3823, line: 254, type: !3959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!97, !403, !97, !97, !3879}
!3961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3962, line: 135)
!3962 = !DISubprogram(name: "fgetpos", scope: !3823, file: !3823, line: 237, type: !3963, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!39, !3879, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3967, line: 136)
!3967 = !DISubprogram(name: "fseek", scope: !3823, file: !3823, line: 251, type: !3968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!39, !3879, !80, !39}
!3970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3971, line: 137)
!3971 = !DISubprogram(name: "fsetpos", scope: !3823, file: !3823, line: 252, type: !3972, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!39, !3879, !3974}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3977, line: 138)
!3977 = !DISubprogram(name: "ftell", scope: !3823, file: !3823, line: 253, type: !3978, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!80, !3879}
!3980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3981, line: 139)
!3981 = !DISubprogram(name: "rewind", scope: !3823, file: !3823, line: 265, type: !3982, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3879}
!3984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3985, line: 140)
!3985 = !DISubprogram(name: "clearerr", scope: !3823, file: !3823, line: 231, type: !3982, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3987, line: 141)
!3987 = !DISubprogram(name: "feof", scope: !3823, file: !3823, line: 233, type: !3877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3989, line: 142)
!3989 = !DISubprogram(name: "ferror", scope: !3823, file: !3823, line: 234, type: !3877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3991, line: 143)
!3991 = !DISubprogram(name: "perror", scope: !3823, file: !3823, line: 258, type: !3992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{null, !320}
!3994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3995, line: 146)
!3995 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !3823, file: !3823, line: 242, type: !3996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!3879, !320, !320}
!3998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3999, line: 147)
!3999 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !3823, file: !3823, line: 248, type: !4000, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!3879, !320, !320, !3879}
!4002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4003, line: 148)
!4003 = !DISubprogram(name: "remove", scope: !3823, file: !3823, line: 263, type: !3487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4005, line: 149)
!4005 = !DISubprogram(name: "rename", scope: !3823, file: !3823, line: 264, type: !3715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4007, line: 150)
!4007 = !DISubprogram(name: "tmpfile", scope: !3823, file: !3823, line: 271, type: !4008, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!3879}
!4010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4011, line: 151)
!4011 = !DISubprogram(name: "tmpnam", scope: !3823, file: !3823, line: 276, type: !4012, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!384, !384}
!4014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4015, line: 155)
!4015 = !DISubprogram(name: "getchar", scope: !3823, file: !3823, line: 256, type: !37, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4017, line: 157)
!4017 = !DISubprogram(name: "gets", scope: !3823, file: !3823, line: 257, type: !4012, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4019, line: 159)
!4019 = !DISubprogram(name: "scanf", scope: !3823, file: !3823, line: 266, type: !4020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!39, !320, null}
!4022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4023, line: 160)
!4023 = !DISubprogram(name: "vscanf", scope: !3823, file: !3823, line: 423, type: !4024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!39, !320, !3912}
!4026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4027, line: 164)
!4027 = !DISubprogram(name: "printf", scope: !3823, file: !3823, line: 259, type: !4020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4029, line: 165)
!4029 = !DISubprogram(name: "putchar", scope: !3823, file: !3823, line: 261, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!39, !39}
!4032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4033, line: 166)
!4033 = !DISubprogram(name: "puts", scope: !3823, file: !3823, line: 262, type: !3487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4035, line: 167)
!4035 = !DISubprogram(name: "vprintf", scope: !3823, file: !3823, line: 279, type: !4024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4037, line: 104)
!4037 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !4038, file: !4038, line: 212, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4038 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4040, line: 105)
!4040 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !4038, file: !4038, line: 218, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4042, line: 106)
!4042 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !4038, file: !4038, line: 224, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4044, line: 107)
!4044 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !4038, file: !4038, line: 230, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4046, line: 108)
!4046 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !4038, file: !4038, line: 237, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4048, line: 109)
!4048 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !4038, file: !4038, line: 243, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4050, line: 110)
!4050 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !4038, file: !4038, line: 249, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4052, line: 111)
!4052 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !4038, file: !4038, line: 255, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4054, line: 112)
!4054 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !4038, file: !4038, line: 261, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4056, line: 113)
!4056 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !4038, file: !4038, line: 267, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4058, line: 114)
!4058 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !4038, file: !4038, line: 273, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4060, line: 115)
!4060 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !4038, file: !4038, line: 280, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4062, line: 116)
!4062 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !4038, file: !4038, line: 292, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4064, line: 117)
!4064 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !4038, file: !4038, line: 298, type: !4030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4066, line: 63)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4067, line: 31, baseType: !4068)
!4067 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !100, line: 112, baseType: !39)
!4069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4070, line: 64)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !4071, line: 31, baseType: !4072)
!4071 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !4073, line: 40, baseType: !39)
!4073 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4075, line: 65)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !4076, line: 31, baseType: !4077)
!4076 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !4073, line: 42, baseType: !4078)
!4078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 45, baseType: !43)
!4079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4080, line: 66)
!4080 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !4081, file: !4081, line: 66, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4081 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!39, !4066}
!4084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4085, line: 67)
!4085 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !4081, file: !4081, line: 72, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4087, line: 68)
!4087 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !4088, file: !4088, line: 50, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4088 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4090, line: 69)
!4090 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !4081, file: !4081, line: 78, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4092, line: 70)
!4092 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !4081, file: !4081, line: 90, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4094, line: 71)
!4094 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !4081, file: !4081, line: 96, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4096, line: 72)
!4096 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !4081, file: !4081, line: 102, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4098, line: 73)
!4098 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !4081, file: !4081, line: 108, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4100, line: 74)
!4100 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !4081, file: !4081, line: 114, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4102, line: 75)
!4102 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !4081, file: !4081, line: 120, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4104, line: 76)
!4104 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !4081, file: !4081, line: 126, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4106, line: 77)
!4106 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !4081, file: !4081, line: 132, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4108, line: 78)
!4108 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !4081, file: !4081, line: 84, type: !4109, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!39, !4066, !4075}
!4111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4112, line: 79)
!4112 = !DISubprogram(name: "wctype", scope: !4081, file: !4081, line: 172, type: !4113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!4075, !320}
!4115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4116, line: 80)
!4116 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !4081, file: !4081, line: 138, type: !4117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!4066, !4066}
!4119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4120, line: 81)
!4120 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !4081, file: !4081, line: 144, type: !4117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4122, line: 82)
!4122 = !DISubprogram(name: "towctrans", scope: !4088, file: !4088, line: 121, type: !4123, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!4066, !4066, !4070}
!4125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4126, line: 83)
!4126 = !DISubprogram(name: "wctrans", scope: !4088, file: !4088, line: 123, type: !4127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!4070, !320}
!4129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4130, line: 116)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !4131, line: 31, baseType: !4132)
!4131 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !100, line: 81, baseType: !4133)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !100, line: 79, baseType: !4134)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !100, line: 76, size: 1024, elements: !4135, identifier: "_ZTS11__mbstate_t")
!4135 = !{!4136, !4140}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !4134, file: !100, line: 77, baseType: !4137, size: 1024)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 1024, elements: !4138)
!4138 = !{!4139}
!4139 = !DISubrange(count: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !4134, file: !100, line: 78, baseType: !1861, size: 64)
!4141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !97, line: 117)
!4142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3767, line: 118)
!4143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4066, line: 119)
!4144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3822, line: 120)
!4145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4146, line: 121)
!4146 = !DISubprogram(name: "fwprintf", scope: !4147, file: !4147, line: 103, type: !4148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4147 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!39, !3879, !3620, null}
!4150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4151, line: 122)
!4151 = !DISubprogram(name: "fwscanf", scope: !4147, file: !4147, line: 104, type: !4148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4153, line: 123)
!4153 = !DISubprogram(name: "swprintf", scope: !4147, file: !4147, line: 115, type: !4154, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!39, !3606, !97, !3620, null}
!4156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4157, line: 124)
!4157 = !DISubprogram(name: "vfwprintf", scope: !4147, file: !4147, line: 118, type: !4158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!39, !3879, !3620, !3912}
!4160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4161, line: 125)
!4161 = !DISubprogram(name: "vswprintf", scope: !4147, file: !4147, line: 120, type: !4162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!39, !3606, !97, !3620, !3912}
!4164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4165, line: 126)
!4165 = !DISubprogram(name: "swscanf", scope: !4147, file: !4147, line: 116, type: !4166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!39, !3620, !3620, null}
!4168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4169, line: 127)
!4169 = !DISubprogram(name: "vfwscanf", scope: !4147, file: !4147, line: 170, type: !4158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4171, line: 128)
!4171 = !DISubprogram(name: "vswscanf", scope: !4147, file: !4147, line: 172, type: !4172, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!39, !3620, !3620, !3912}
!4174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4175, line: 129)
!4175 = !DISubprogram(name: "fgetwc", scope: !4147, file: !4147, line: 98, type: !4176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!4066, !3879}
!4178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4179, line: 130)
!4179 = !DISubprogram(name: "fgetws", scope: !4147, file: !4147, line: 99, type: !4180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!3606, !3606, !39, !3879}
!4182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4183, line: 131)
!4183 = !DISubprogram(name: "fputwc", scope: !4147, file: !4147, line: 100, type: !4184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!4066, !3607, !3879}
!4186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4187, line: 132)
!4187 = !DISubprogram(name: "fputws", scope: !4147, file: !4147, line: 101, type: !4188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!39, !3620, !3879}
!4190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4191, line: 133)
!4191 = !DISubprogram(name: "fwide", scope: !4147, file: !4147, line: 102, type: !4192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!39, !3879, !39}
!4194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4195, line: 134)
!4195 = !DISubprogram(name: "getwc", scope: !4147, file: !4147, line: 105, type: !4176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4197, line: 135)
!4197 = !DISubprogram(name: "putwc", scope: !4147, file: !4147, line: 113, type: !4184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4199, line: 136)
!4199 = !DISubprogram(name: "ungetwc", scope: !4147, file: !4147, line: 117, type: !4200, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!4066, !4066, !3879}
!4202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4203, line: 137)
!4203 = !DISubprogram(name: "wcstod", scope: !4147, file: !4147, line: 144, type: !4204, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!2064, !3620, !4206}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!4207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4208, line: 138)
!4208 = !DISubprogram(name: "wcstof", scope: !4147, file: !4147, line: 175, type: !4209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!2060, !3620, !4206}
!4211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4212, line: 139)
!4212 = !DISubprogram(name: "wcstold", scope: !4147, file: !4147, line: 177, type: !4213, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!2068, !3620, !4206}
!4215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4216, line: 140)
!4216 = !DISubprogram(name: "wcstol", scope: !4147, file: !4147, line: 147, type: !4217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!80, !3620, !4206, !39}
!4219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4220, line: 142)
!4220 = !DISubprogram(name: "wcstoll", scope: !4147, file: !4147, line: 180, type: !4221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!1861, !3620, !4206, !39}
!4223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4224, line: 144)
!4224 = !DISubprogram(name: "wcstoul", scope: !4147, file: !4147, line: 149, type: !4225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!101, !3620, !4206, !39}
!4227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4228, line: 146)
!4228 = !DISubprogram(name: "wcstoull", scope: !4147, file: !4147, line: 182, type: !4229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!2056, !3620, !4206, !39}
!4231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4232, line: 148)
!4232 = !DISubprogram(name: "wcscpy", scope: !4147, file: !4147, line: 128, type: !4233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!3606, !3606, !3620}
!4235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4236, line: 149)
!4236 = !DISubprogram(name: "wcsncpy", scope: !4147, file: !4147, line: 135, type: !4237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!3606, !3606, !3620, !97}
!4239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4240, line: 150)
!4240 = !DISubprogram(name: "wcscat", scope: !4147, file: !4147, line: 124, type: !4233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4242, line: 151)
!4242 = !DISubprogram(name: "wcsncat", scope: !4147, file: !4147, line: 133, type: !4237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4244, line: 152)
!4244 = !DISubprogram(name: "wcscmp", scope: !4147, file: !4147, line: 126, type: !4245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!39, !3620, !3620}
!4247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4248, line: 153)
!4248 = !DISubprogram(name: "wcscoll", scope: !4147, file: !4147, line: 127, type: !4245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4250, line: 154)
!4250 = !DISubprogram(name: "wcsncmp", scope: !4147, file: !4147, line: 134, type: !4251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!39, !3620, !3620, !97}
!4253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4254, line: 155)
!4254 = !DISubprogram(name: "wcsxfrm", scope: !4147, file: !4147, line: 142, type: !4255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!97, !3606, !3620, !97}
!4257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4258, line: 156)
!4258 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !4259, file: !4259, line: 137, type: !4260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4259 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!3606, !3606, !3607}
!4262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4263, line: 157)
!4263 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !4259, file: !4259, line: 144, type: !4233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4265, line: 158)
!4265 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !4259, file: !4259, line: 151, type: !4260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4267, line: 159)
!4267 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !4259, file: !4259, line: 158, type: !4233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4269, line: 160)
!4269 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !4259, file: !4259, line: 165, type: !4270, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!3606, !3606, !3607, !97}
!4272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4273, line: 161)
!4273 = !DISubprogram(name: "wcscspn", scope: !4147, file: !4147, line: 129, type: !4274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!97, !3620, !3620}
!4276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4277, line: 162)
!4277 = !DISubprogram(name: "wcslen", scope: !4147, file: !4147, line: 132, type: !4278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!97, !3620}
!4280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4281, line: 163)
!4281 = !DISubprogram(name: "wcsspn", scope: !4147, file: !4147, line: 140, type: !4274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4283, line: 164)
!4283 = !DISubprogram(name: "wcstok", scope: !4147, file: !4147, line: 145, type: !4284, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!3606, !3606, !3620, !4206}
!4286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4287, line: 165)
!4287 = !DISubprogram(name: "wmemcmp", scope: !4147, file: !4147, line: 151, type: !4251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4289, line: 166)
!4289 = !DISubprogram(name: "wmemcpy", scope: !4147, file: !4147, line: 152, type: !4237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4291, line: 167)
!4291 = !DISubprogram(name: "wmemmove", scope: !4147, file: !4147, line: 153, type: !4237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4293, line: 168)
!4293 = !DISubprogram(name: "wmemset", scope: !4147, file: !4147, line: 154, type: !4270, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4295, line: 169)
!4295 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !4147, file: !4147, line: 130, type: !4296, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!97, !3606, !97, !3620, !3803}
!4298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4299, line: 170)
!4299 = !DISubprogram(name: "btowc", scope: !4147, file: !4147, line: 97, type: !4300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!4066, !39}
!4302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4303, line: 171)
!4303 = !DISubprogram(name: "wctob", scope: !4147, file: !4147, line: 143, type: !4082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4305, line: 172)
!4305 = !DISubprogram(name: "mbsinit", scope: !4147, file: !4147, line: 110, type: !4306, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!39, !4308}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4130)
!4310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4311, line: 173)
!4311 = !DISubprogram(name: "mbrlen", scope: !4147, file: !4147, line: 107, type: !4312, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!97, !320, !97, !4314}
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4316, line: 174)
!4316 = !DISubprogram(name: "mbrtowc", scope: !4147, file: !4147, line: 108, type: !4317, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!97, !3606, !320, !97, !4314}
!4319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4320, line: 175)
!4320 = !DISubprogram(name: "wcrtomb", scope: !4147, file: !4147, line: 123, type: !4321, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!97, !384, !3607, !4314}
!4323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4324, line: 176)
!4324 = !DISubprogram(name: "mbsrtowcs", scope: !4147, file: !4147, line: 111, type: !4325, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!97, !3606, !4327, !97, !4314}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!4328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4329, line: 177)
!4329 = !DISubprogram(name: "wcsrtombs", scope: !4147, file: !4147, line: 138, type: !4330, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!97, !384, !4332, !97, !4314}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!4333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4334, line: 180)
!4334 = !DISubprogram(name: "getwchar", scope: !4147, file: !4147, line: 106, type: !4335, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4066}
!4337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4338, line: 181)
!4338 = !DISubprogram(name: "vwscanf", scope: !4147, file: !4147, line: 174, type: !4339, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!39, !3620, !3912}
!4341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4342, line: 182)
!4342 = !DISubprogram(name: "wscanf", scope: !4147, file: !4147, line: 156, type: !4343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!39, !3620, null}
!4345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4346, line: 186)
!4346 = !DISubprogram(name: "putwchar", scope: !4147, file: !4147, line: 114, type: !4347, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!4066, !3607}
!4349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4350, line: 187)
!4350 = !DISubprogram(name: "vwprintf", scope: !4147, file: !4147, line: 122, type: !4339, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !4352, line: 188)
!4352 = !DISubprogram(name: "wprintf", scope: !4147, file: !4147, line: 155, type: !4343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!4353 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !1439, line: 8)
!4354 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !1439, line: 13)
!4355 = !{i32 2, !"Dwarf Version", i32 2}
!4356 = !{i32 2, !"Debug Info Version", i32 3}
!4357 = !{i32 1, !"PIC Level", i32 2}
!4358 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!4359 = distinct !DISubprogram(name: "f1", linkageName: "_Z2f1v", scope: !3, file: !3, line: 13, type: !2748, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !370)
!4360 = !DILocation(line: 14, column: 5, scope: !4359)
!4361 = !DILocalVariable(name: "this", arg: 1, scope: !4362, type: !4365, flags: DIFlagArtificial | DIFlagObjectPointer)
!4362 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !104, file: !6, line: 1097, type: !254, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !253, variables: !4363)
!4363 = !{!4361, !4364}
!4364 = !DILocalVariable(name: "__d", arg: 2, scope: !4362, file: !6, line: 1097, type: !39)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!4366 = !DIExpression()
!4367 = !DILocation(line: 0, scope: !4362, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 16, column: 11, scope: !4359)
!4369 = !DILocation(line: 1097, column: 23, scope: !4362, inlinedAt: !4368)
!4370 = !DILocalVariable(name: "__d", arg: 2, scope: !4371, file: !6, line: 916, type: !39)
!4371 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !110, file: !6, line: 916, type: !132, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !131, variables: !4372)
!4372 = !{!4373, !4370, !4375}
!4373 = !DILocalVariable(name: "this", arg: 1, scope: !4371, type: !4374, flags: DIFlagArtificial | DIFlagObjectPointer)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!4375 = !DILocalVariable(name: "__m", arg: 3, scope: !4371, file: !6, line: 916, type: !130)
!4376 = !DILocation(line: 916, column: 20, scope: !4371, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 1098, column: 18, scope: !4362, inlinedAt: !4368)
!4378 = !DILocation(line: 916, column: 38, scope: !4371, inlinedAt: !4377)
!4379 = !DILocation(line: 918, column: 10, scope: !4380, inlinedAt: !4377)
!4380 = !DILexicalBlockFile(scope: !4371, file: !6, discriminator: 3)
!4381 = !DILocalVariable(name: "__m", arg: 1, scope: !4382, file: !6, line: 1819, type: !130)
!4382 = distinct !DISubprogram(name: "atomic_thread_fence", linkageName: "_ZNSt3__119atomic_thread_fenceENS_12memory_orderE", scope: !7, file: !6, line: 1819, type: !4383, isLocal: false, isDefinition: true, scopeLine: 1820, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !130}
!4385 = !{!4381}
!4386 = !DILocation(line: 1819, column: 34, scope: !4382, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 17, column: 5, scope: !4359)
!4388 = !DILocation(line: 1821, column: 5, scope: !4389, inlinedAt: !4387)
!4389 = !DILexicalBlockFile(scope: !4382, file: !6, discriminator: 2)
!4390 = !DILocation(line: 916, column: 20, scope: !4371, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 18, column: 7, scope: !4359)
!4392 = !DILocation(line: 916, column: 38, scope: !4371, inlinedAt: !4391)
!4393 = !DILocation(line: 918, column: 10, scope: !4394, inlinedAt: !4391)
!4394 = !DILexicalBlockFile(scope: !4371, file: !6, discriminator: 1)
!4395 = !DILocation(line: 916, column: 20, scope: !4371, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 19, column: 7, scope: !4359)
!4397 = !DILocation(line: 916, column: 38, scope: !4371, inlinedAt: !4396)
!4398 = !DILocation(line: 918, column: 10, scope: !4394, inlinedAt: !4396)
!4399 = !DILocation(line: 21, column: 5, scope: !4359)
!4400 = !DILocation(line: 22, column: 1, scope: !4359)
!4401 = distinct !DISubprogram(name: "f2", linkageName: "_Z2f2v", scope: !3, file: !3, line: 24, type: !2748, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !370)
!4402 = !DILocation(line: 25, column: 5, scope: !4401)
!4403 = !DILocalVariable(name: "__m", arg: 2, scope: !4404, file: !6, line: 924, type: !130)
!4404 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !110, file: !6, line: 924, type: !139, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !138, variables: !4405)
!4405 = !{!4406, !4403}
!4406 = !DILocalVariable(name: "this", arg: 1, scope: !4404, type: !4407, flags: DIFlagArtificial | DIFlagObjectPointer)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!4408 = !DILocation(line: 924, column: 27, scope: !4404, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 28, column: 15, scope: !4401)
!4410 = !DILocation(line: 28, column: 11, scope: !4401)
!4411 = !{!4412, !4412, i64 0}
!4412 = !{!"int", !4413, i64 0}
!4413 = !{!"omnipotent char", !4414, i64 0}
!4414 = !{!"Simple C++ TBAA"}
!4415 = !DILocation(line: 1819, column: 34, scope: !4382, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 29, column: 5, scope: !4401)
!4417 = !DILocation(line: 1821, column: 5, scope: !4418, inlinedAt: !4416)
!4418 = !DILexicalBlockFile(scope: !4382, file: !6, discriminator: 1)
!4419 = !DILocation(line: 31, column: 5, scope: !4401)
!4420 = !DILocation(line: 32, column: 1, scope: !4401)
!4421 = distinct !DISubprogram(name: "user_main", scope: !3, file: !3, line: 34, type: !37, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4422)
!4422 = !{!4423, !4499}
!4423 = !DILocalVariable(name: "a", scope: !4421, file: !3, line: 41, type: !4424)
!4424 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !7, file: !2190, line: 282, size: 64, elements: !4425, identifier: "_ZTSNSt3__16threadE")
!4425 = !{!4426, !4447, !4453, !4457, !4460, !4461, !4465, !4468, !4471, !4475, !4476, !4477, !4492, !4496}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !4424, file: !2190, line: 284, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !7, file: !2218, line: 72, baseType: !4428)
!4428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !4429, line: 30, baseType: !4430)
!4429 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !2222, line: 118, baseType: !4431)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !2222, line: 103, size: 65536, elements: !4433, identifier: "_ZTS17_opaque_pthread_t")
!4433 = !{!4434, !4435, !4443}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !4432, file: !2222, line: 104, baseType: !80, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !4432, file: !2222, line: 105, baseType: !4436, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !2222, line: 57, size: 192, elements: !4438, identifier: "_ZTS28__darwin_pthread_handler_rec")
!4438 = !{!4439, !4441, !4442}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !4437, file: !2222, line: 58, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !4437, file: !2222, line: 59, baseType: !85, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !4437, file: !2222, line: 60, baseType: !4436, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !4432, file: !2222, line: 106, baseType: !4444, size: 65408, offset: 128)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 65408, elements: !4445)
!4445 = !{!4446}
!4446 = !DISubrange(count: 8176)
!4447 = !DISubprogram(name: "thread", scope: !4424, file: !2190, line: 286, type: !4448, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !4450, !4451}
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4424)
!4453 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !4424, file: !2190, line: 287, type: !4454, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!4456, !4450, !4451}
!4456 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4424, size: 64)
!4457 = !DISubprogram(name: "thread", scope: !4424, file: !2190, line: 293, type: !4458, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4450}
!4460 = !DISubprogram(name: "~thread", scope: !4424, file: !2190, line: 308, type: !4458, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4461 = !DISubprogram(name: "thread", scope: !4424, file: !2190, line: 312, type: !4462, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !4450, !4464}
!4464 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4424, size: 64)
!4465 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !4424, file: !2190, line: 314, type: !4466, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!4456, !4450, !4464}
!4468 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !4424, file: !2190, line: 318, type: !4469, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !4450, !4456}
!4471 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !4424, file: !2190, line: 321, type: !4472, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!117, !4474}
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4475 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !4424, file: !2190, line: 322, type: !4458, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4476 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !4424, file: !2190, line: 323, type: !4458, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4477 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !4424, file: !2190, line: 325, type: !4478, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!4480, !4474}
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !4424, file: !2190, line: 289, baseType: !4481)
!4481 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !7, file: !2190, line: 213, size: 64, elements: !4482, identifier: "_ZTSNSt3__111__thread_idE")
!4482 = !{!4483, !4485, !4489}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !4481, file: !2190, line: 218, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !7, file: !2218, line: 67, baseType: !4428)
!4485 = !DISubprogram(name: "__thread_id", scope: !4481, file: !2190, line: 222, type: !4486, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !4488}
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4489 = !DISubprogram(name: "__thread_id", scope: !4481, file: !2190, line: 252, type: !4490, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !4488, !4484}
!4492 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !4424, file: !2190, line: 327, type: !4493, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!4495, !4450}
!4495 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !4424, file: !2190, line: 290, baseType: !4427)
!4496 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !4424, file: !2190, line: 329, type: !4497, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!43}
!4499 = !DILocalVariable(name: "b", scope: !4421, file: !3, line: 42, type: !4424)
!4500 = !DILocation(line: 35, column: 5, scope: !4421)
!4501 = !DILocation(line: 36, column: 5, scope: !4421)
!4502 = !DILocation(line: 38, column: 19, scope: !4421)
!4503 = !DILocation(line: 0, scope: !4362, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 38, column: 11, scope: !4421)
!4505 = !DILocation(line: 1097, column: 23, scope: !4362, inlinedAt: !4504)
!4506 = !DILocation(line: 916, column: 20, scope: !4371, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 1098, column: 18, scope: !4362, inlinedAt: !4504)
!4508 = !DILocation(line: 916, column: 38, scope: !4371, inlinedAt: !4507)
!4509 = !DILocation(line: 918, column: 10, scope: !4380, inlinedAt: !4507)
!4510 = !DILocation(line: 0, scope: !4362, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 39, column: 7, scope: !4421)
!4512 = !DILocation(line: 1097, column: 23, scope: !4362, inlinedAt: !4511)
!4513 = !DILocation(line: 916, column: 20, scope: !4371, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 1098, column: 18, scope: !4362, inlinedAt: !4511)
!4515 = !DILocation(line: 916, column: 38, scope: !4371, inlinedAt: !4514)
!4516 = !DILocation(line: 918, column: 10, scope: !4380, inlinedAt: !4514)
!4517 = !DILocation(line: 41, column: 5, scope: !4421)
!4518 = !DIExpression(DW_OP_deref)
!4519 = !DILocation(line: 41, column: 17, scope: !4421)
!4520 = !DILocalVariable(name: "this", arg: 1, scope: !4521, type: !4532, flags: DIFlagArtificial | DIFlagObjectPointer)
!4521 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !4424, file: !2190, line: 356, type: !4522, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4525, declaration: !4529, variables: !4530)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !4450, !4524}
!4524 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2748, size: 64)
!4525 = !{!4526, !4527, !4528}
!4526 = !DITemplateTypeParameter(name: "_Fp", type: !4524)
!4527 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !370)
!4528 = !DITemplateTypeParameter(type: null)
!4529 = !DISubprogram(name: "thread<void (&)(), void>", scope: !4424, file: !2190, line: 356, type: !4522, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !4525)
!4530 = !{!4520, !4531}
!4531 = !DILocalVariable(name: "__f", arg: 2, scope: !4521, file: !2190, line: 356, type: !4524)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4533 = !DILocation(line: 0, scope: !4521, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 41, column: 17, scope: !4421)
!4535 = !DILocation(line: 356, column: 22, scope: !4521, inlinedAt: !4534)
!4536 = !DILocation(line: 357, column: 1, scope: !4521, inlinedAt: !4534)
!4537 = !DILocation(line: 42, column: 5, scope: !4421)
!4538 = !DILocation(line: 0, scope: !4521, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 42, column: 17, scope: !4421)
!4540 = !DILocation(line: 356, column: 22, scope: !4521, inlinedAt: !4539)
!4541 = !DILocation(line: 357, column: 1, scope: !4521, inlinedAt: !4539)
!4542 = !DILocalVariable(name: "this", arg: 1, scope: !4543, type: !4545, flags: DIFlagArtificial | DIFlagObjectPointer)
!4543 = distinct !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !4424, file: !2190, line: 325, type: !4478, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4477, variables: !4544)
!4544 = !{!4542}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4546 = !DILocation(line: 0, scope: !4543, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 44, column: 29, scope: !4421)
!4548 = !DILocation(line: 325, column: 65, scope: !4543, inlinedAt: !4547)
!4549 = !DILocalVariable(name: "__t", arg: 1, scope: !4550, file: !2218, line: 332, type: !4553)
!4550 = distinct !DISubprogram(name: "__libcpp_thread_get_id", linkageName: "_ZNSt3__122__libcpp_thread_get_idEPKP17_opaque_pthread_t", scope: !7, file: !2218, line: 332, type: !4551, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4555)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!4484, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4555 = !{!4549}
!4556 = !DILocation(line: 332, column: 68, scope: !4550, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 325, column: 41, scope: !4543, inlinedAt: !4547)
!4558 = !DILocation(line: 334, column: 10, scope: !4550, inlinedAt: !4557)
!4559 = !{!4560, !4560, i64 0}
!4560 = !{!"any pointer", !4413, i64 0}
!4561 = !DILocation(line: 44, column: 5, scope: !4421)
!4562 = !DILocation(line: 42, column: 17, scope: !4421)
!4563 = !DILocation(line: 0, scope: !4543, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 45, column: 29, scope: !4421)
!4565 = !DILocation(line: 325, column: 65, scope: !4543, inlinedAt: !4564)
!4566 = !DILocation(line: 332, column: 68, scope: !4550, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 325, column: 41, scope: !4543, inlinedAt: !4564)
!4568 = !DILocation(line: 334, column: 10, scope: !4550, inlinedAt: !4567)
!4569 = !DILocation(line: 45, column: 5, scope: !4421)
!4570 = !DILocation(line: 48, column: 7, scope: !4421)
!4571 = !DILocation(line: 48, column: 17, scope: !4572)
!4572 = !DILexicalBlockFile(scope: !4421, file: !3, discriminator: 1)
!4573 = !DILocalVariable(name: "__os", arg: 1, scope: !4574, file: !1784, line: 862, type: !1788)
!4574 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc", scope: !7, file: !1784, line: 862, type: !4575, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4577, variables: !4578)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!1788, !1788, !320}
!4577 = !{!788}
!4578 = !{!4573, !4579}
!4579 = !DILocalVariable(name: "__str", arg: 2, scope: !4574, file: !1784, line: 862, type: !320)
!4580 = !DILocation(line: 862, column: 42, scope: !4574, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 50, column: 15, scope: !4421)
!4582 = !DILocation(line: 862, column: 60, scope: !4574, inlinedAt: !4581)
!4583 = !DILocation(line: 864, column: 12, scope: !4584, inlinedAt: !4581)
!4584 = !DILexicalBlockFile(scope: !4574, file: !1784, discriminator: 1)
!4585 = !DILocation(line: 924, column: 27, scope: !4404, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 930, column: 53, scope: !4587, inlinedAt: !4590)
!4587 = distinct !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !110, file: !6, line: 930, type: !145, isLocal: false, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !144, variables: !4588)
!4588 = !{!4589}
!4589 = !DILocalVariable(name: "this", arg: 1, scope: !4587, type: !4407, flags: DIFlagArtificial | DIFlagObjectPointer)
!4590 = distinct !DILocation(line: 50, column: 30, scope: !4572)
!4591 = !DILocation(line: 50, column: 27, scope: !4572)
!4592 = !DILocation(line: 862, column: 42, scope: !4574, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 50, column: 36, scope: !4594)
!4594 = !DILexicalBlockFile(scope: !4421, file: !3, discriminator: 2)
!4595 = !DILocation(line: 862, column: 60, scope: !4574, inlinedAt: !4593)
!4596 = !DILocation(line: 864, column: 12, scope: !4584, inlinedAt: !4593)
!4597 = !DILocation(line: 50, column: 46, scope: !4598)
!4598 = !DILexicalBlockFile(scope: !4421, file: !3, discriminator: 3)
!4599 = !DILocation(line: 50, column: 43, scope: !4598)
!4600 = !DILocation(line: 862, column: 42, scope: !4574, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 50, column: 52, scope: !4602)
!4602 = !DILexicalBlockFile(scope: !4421, file: !3, discriminator: 4)
!4603 = !DILocation(line: 862, column: 60, scope: !4574, inlinedAt: !4601)
!4604 = !DILocation(line: 864, column: 12, scope: !4584, inlinedAt: !4601)
!4605 = !DILocation(line: 51, column: 5, scope: !4421)
!4606 = !DILocation(line: 52, column: 5, scope: !4421)
!4607 = !DILocation(line: 55, column: 1, scope: !4421)
!4608 = !DILocation(line: 55, column: 1, scope: !4609)
!4609 = !DILexicalBlockFile(scope: !4421, file: !3, discriminator: 5)
!4610 = !DILocation(line: 55, column: 1, scope: !4572)
!4611 = !DILocation(line: 55, column: 1, scope: !4594)
!4612 = !DILocation(line: 55, column: 1, scope: !4598)
!4613 = !DILocation(line: 55, column: 1, scope: !4602)
!4614 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 57, type: !37, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !370)
!4615 = !DILocation(line: 59, column: 20, scope: !4614)
!4616 = !DILocation(line: 17, column: 9, scope: !4617, inlinedAt: !4645)
!4617 = distinct !DISubprogram(name: "ModelChecker", linkageName: "_ZN7checker12ModelCheckerC2Ev", scope: !4618, file: !1438, line: 17, type: !4626, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4625, variables: !4642)
!4618 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ModelChecker", scope: !1439, file: !1438, line: 15, size: 320, elements: !4619, identifier: "_ZTSN7checker12ModelCheckerE")
!4619 = !{!4620, !4621, !4622, !4625, !4629, !4632, !4635, !4638, !4641}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4618, file: !1438, line: 29, baseType: !39, size: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "schList", scope: !4618, file: !1438, line: 30, baseType: !2870, size: 192, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "exe", scope: !4618, file: !1438, line: 31, baseType: !4623, size: 64, offset: 256)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !1439, file: !1438, line: 12, flags: DIFlagFwdDecl, identifier: "_ZTSN7checker8ExecutorE")
!4625 = !DISubprogram(name: "ModelChecker", scope: !4618, file: !1438, line: 17, type: !4626, isLocal: false, isDefinition: false, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !4628}
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4629 = !DISubprogram(name: "setExecutor", linkageName: "_ZN7checker12ModelChecker11setExecutorEPNS_8ExecutorE", scope: !4618, file: !1438, line: 22, type: !4630, isLocal: false, isDefinition: false, scopeLine: 22, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4628, !4623}
!4632 = !DISubprogram(name: "getTest", linkageName: "_ZN7checker12ModelChecker7getTestEv", scope: !4618, file: !1438, line: 23, type: !4633, isLocal: false, isDefinition: false, scopeLine: 23, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!39, !4628}
!4635 = !DISubprogram(name: "addSch", linkageName: "_ZN7checker12ModelChecker6addSchEPNS_8ScheduleE", scope: !4618, file: !1438, line: 24, type: !4636, isLocal: false, isDefinition: false, scopeLine: 24, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{null, !4628, !1436}
!4638 = !DISubprogram(name: "getSchList", linkageName: "_ZN7checker12ModelChecker10getSchListEv", scope: !4618, file: !1438, line: 25, type: !4639, isLocal: false, isDefinition: false, scopeLine: 25, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!2870, !4628}
!4641 = !DISubprogram(name: "eraseSch", linkageName: "_ZN7checker12ModelChecker8eraseSchEv", scope: !4618, file: !1438, line: 26, type: !4626, isLocal: false, isDefinition: false, scopeLine: 26, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4642 = !{!4643}
!4643 = !DILocalVariable(name: "this", arg: 1, scope: !4617, type: !4644, flags: DIFlagArtificial | DIFlagObjectPointer)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4645 = distinct !DILocation(line: 17, column: 24, scope: !4646, inlinedAt: !4649)
!4646 = distinct !DISubprogram(name: "ModelChecker", linkageName: "_ZN7checker12ModelCheckerC1Ev", scope: !4618, file: !1438, line: 17, type: !4626, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4625, variables: !4647)
!4647 = !{!4648}
!4648 = !DILocalVariable(name: "this", arg: 1, scope: !4646, type: !4644, flags: DIFlagArtificial | DIFlagObjectPointer)
!4649 = distinct !DILocation(line: 59, column: 24, scope: !4614)
!4650 = !DILocation(line: 427, column: 7, scope: !4651, inlinedAt: !4655)
!4651 = distinct !DISubprogram(name: "__vector_base", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEC2Ev", scope: !1546, file: !1545, line: 424, type: !1731, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1730, variables: !4652)
!4652 = !{!4653}
!4653 = !DILocalVariable(name: "this", arg: 1, scope: !4651, type: !4654, flags: DIFlagArtificial | DIFlagObjectPointer)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!4655 = distinct !DILocation(line: 478, column: 5, scope: !4656, inlinedAt: !4660)
!4656 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC2Ev", scope: !2870, file: !1545, line: 478, type: !2874, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2873, variables: !4657)
!4657 = !{!4658}
!4658 = !DILocalVariable(name: "this", arg: 1, scope: !4656, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!4660 = distinct !DILocation(line: 479, column: 9, scope: !4661, inlinedAt: !4664)
!4661 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC1Ev", scope: !2870, file: !1545, line: 478, type: !2874, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2873, variables: !4662)
!4662 = !{!4663}
!4663 = !DILocalVariable(name: "this", arg: 1, scope: !4661, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4664 = distinct !DILocation(line: 17, column: 9, scope: !4617, inlinedAt: !4645)
!4665 = !DILocation(line: 18, column: 13, scope: !4666, inlinedAt: !4645)
!4666 = distinct !DILexicalBlock(scope: !4617, file: !1438, line: 17, column: 24)
!4667 = !DILocation(line: 18, column: 18, scope: !4666, inlinedAt: !4645)
!4668 = !{!4669, !4412, i64 0}
!4669 = !{!"_ZTSN7checker12ModelCheckerE", !4412, i64 0, !4670, i64 8, !4560, i64 32}
!4670 = !{!"_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!4671 = !DILocation(line: 862, column: 42, scope: !4574, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 19, column: 23, scope: !4666, inlinedAt: !4645)
!4673 = !DILocation(line: 862, column: 60, scope: !4574, inlinedAt: !4672)
!4674 = !DILocation(line: 864, column: 12, scope: !4584, inlinedAt: !4672)
!4675 = !DILocation(line: 19, column: 55, scope: !4676, inlinedAt: !4645)
!4676 = !DILexicalBlockFile(scope: !4666, file: !1438, discriminator: 1)
!4677 = !DILocation(line: 862, column: 42, scope: !4574, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 19, column: 63, scope: !4679, inlinedAt: !4645)
!4679 = !DILexicalBlockFile(scope: !4666, file: !1438, discriminator: 2)
!4680 = !DILocation(line: 862, column: 60, scope: !4574, inlinedAt: !4678)
!4681 = !DILocation(line: 864, column: 12, scope: !4584, inlinedAt: !4678)
!4682 = !DILocation(line: 20, column: 9, scope: !4676, inlinedAt: !4645)
!4683 = !DILocation(line: 444, column: 9, scope: !4684, inlinedAt: !4689)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !1545, line: 444, column: 9)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !1545, line: 443, column: 1)
!4686 = distinct !DISubprogram(name: "~__vector_base", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev", scope: !1546, file: !1545, line: 442, type: !1731, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1736, variables: !4687)
!4687 = !{!4688}
!4688 = !DILocalVariable(name: "this", arg: 1, scope: !4686, type: !4654, flags: DIFlagArtificial | DIFlagObjectPointer)
!4689 = distinct !DILocation(line: 452, column: 28, scope: !4690, inlinedAt: !4695)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !1545, line: 452, column: 28)
!4691 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev", scope: !2870, file: !1545, line: 452, type: !2874, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4692, variables: !4693)
!4692 = !DISubprogram(name: "~vector", scope: !2870, type: !2874, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!4693 = !{!4694}
!4694 = !DILocalVariable(name: "this", arg: 1, scope: !4691, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4695 = distinct !DILocation(line: 452, column: 28, scope: !4696, inlinedAt: !4699)
!4696 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev", scope: !2870, file: !1545, line: 452, type: !2874, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4692, variables: !4697)
!4697 = !{!4698}
!4698 = !DILocalVariable(name: "this", arg: 1, scope: !4696, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4699 = distinct !DILocation(line: 20, column: 9, scope: !4676, inlinedAt: !4645)
!4700 = !{!4701, !4560, i64 0}
!4701 = !{!"_ZTSNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEE", !4560, i64 0, !4560, i64 8, !4702, i64 16}
!4702 = !{!"_ZTSNSt3__117__compressed_pairIPPN7checker8ScheduleENS_9allocatorIS3_EEEE"}
!4703 = !DILocation(line: 444, column: 18, scope: !4684, inlinedAt: !4689)
!4704 = !DILocation(line: 444, column: 9, scope: !4685, inlinedAt: !4689)
!4705 = !DILocation(line: 416, column: 32, scope: !4706, inlinedAt: !4711)
!4706 = distinct !DISubprogram(name: "__destruct_at_end", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE17__destruct_at_endEPS3_", scope: !1546, file: !1545, line: 414, type: !1742, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1741, variables: !4707)
!4707 = !{!4708, !4709, !4710}
!4708 = !DILocalVariable(name: "this", arg: 1, scope: !4706, type: !4654, flags: DIFlagArtificial | DIFlagObjectPointer)
!4709 = !DILocalVariable(name: "__new_last", arg: 2, scope: !4706, file: !1545, line: 367, type: !1562)
!4710 = !DILocalVariable(name: "__soon_to_be_end", scope: !4706, file: !1545, line: 416, type: !1562)
!4711 = distinct !DILocation(line: 361, column: 29, scope: !4712, inlinedAt: !4715)
!4712 = distinct !DISubprogram(name: "clear", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv", scope: !1546, file: !1545, line: 361, type: !1731, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1737, variables: !4713)
!4713 = !{!4714}
!4714 = !DILocalVariable(name: "this", arg: 1, scope: !4712, type: !4654, flags: DIFlagArtificial | DIFlagObjectPointer)
!4715 = distinct !DILocation(line: 446, column: 9, scope: !4716, inlinedAt: !4689)
!4716 = distinct !DILexicalBlock(scope: !4684, file: !1545, line: 445, column: 5)
!4717 = !DILocation(line: 419, column: 12, scope: !4706, inlinedAt: !4711)
!4718 = !{!4701, !4560, i64 8}
!4719 = !DILocation(line: 447, column: 47, scope: !4716, inlinedAt: !4689)
!4720 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4721, file: !4722, line: 230, type: !85)
!4721 = distinct !DISubprogram(name: "__libcpp_deallocate", linkageName: "_ZNSt3__119__libcpp_deallocateEPv", scope: !7, file: !4722, line: 230, type: !3538, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4723)
!4722 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/new", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!4723 = !{!4720}
!4724 = !DILocation(line: 230, column: 65, scope: !4721, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 1789, column: 10, scope: !4726, inlinedAt: !4732)
!4726 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE10deallocateEPS3_m", scope: !1423, file: !345, line: 1788, type: !1452, isLocal: false, isDefinition: true, scopeLine: 1789, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1451, variables: !4727)
!4727 = !{!4728, !4730, !4731}
!4728 = !DILocalVariable(name: "this", arg: 1, scope: !4726, type: !4729, flags: DIFlagArtificial | DIFlagObjectPointer)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!4730 = !DILocalVariable(name: "__p", arg: 2, scope: !4726, file: !345, line: 1788, type: !1422)
!4731 = !DILocalVariable(arg: 3, scope: !4726, file: !345, line: 1788, type: !398)
!4732 = distinct !DILocation(line: 1549, column: 14, scope: !4733, inlinedAt: !4738)
!4733 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE10deallocateERS5_PS4_m", scope: !1564, file: !345, line: 1548, type: !1601, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1600, variables: !4734)
!4734 = !{!4735, !4736, !4737}
!4735 = !DILocalVariable(name: "__a", arg: 1, scope: !4733, file: !345, line: 1548, type: !1569)
!4736 = !DILocalVariable(name: "__p", arg: 2, scope: !4733, file: !345, line: 1548, type: !1563)
!4737 = !DILocalVariable(name: "__n", arg: 3, scope: !4733, file: !345, line: 1548, type: !1571)
!4738 = distinct !DILocation(line: 447, column: 9, scope: !4739, inlinedAt: !4689)
!4739 = !DILexicalBlockFile(scope: !4716, file: !1545, discriminator: 2)
!4740 = !DILocation(line: 234, column: 3, scope: !4721, inlinedAt: !4725)
!4741 = !DILocation(line: 448, column: 5, scope: !4716, inlinedAt: !4689)
!4742 = !DILocation(line: 59, column: 18, scope: !4743)
!4743 = !DILexicalBlockFile(scope: !4614, file: !3, discriminator: 1)
!4744 = !DILocation(line: 60, column: 5, scope: !4614)
!4745 = !DILocation(line: 62, column: 12, scope: !4614)
!4746 = !DILocation(line: 62, column: 12, scope: !4743)
!4747 = !DILocalVariable(name: "this", arg: 1, scope: !4748, type: !4644, flags: DIFlagArtificial | DIFlagObjectPointer)
!4748 = distinct !DISubprogram(name: "getSchList", linkageName: "_ZN7checker12ModelChecker10getSchListEv", scope: !4618, file: !1438, line: 25, type: !4639, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4638, variables: !4749)
!4749 = !{!4747}
!4750 = !DILocation(line: 0, scope: !4748, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 62, column: 26, scope: !4743)
!4752 = !DILocation(line: 25, column: 54, scope: !4748, inlinedAt: !4751)
!4753 = !DILocalVariable(name: "this", arg: 1, scope: !4754, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4754 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC1ERKS6_", scope: !2870, file: !1545, line: 1197, type: !2898, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2897, variables: !4755)
!4755 = !{!4753, !4756}
!4756 = !DILocalVariable(name: "__x", arg: 2, scope: !4754, file: !1545, line: 539, type: !2900)
!4757 = !DILocation(line: 0, scope: !4754, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 25, column: 54, scope: !4748, inlinedAt: !4751)
!4759 = !DILocation(line: 539, column: 26, scope: !4754, inlinedAt: !4758)
!4760 = !DILocalVariable(name: "this", arg: 1, scope: !4761, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4761 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC2ERKS6_", scope: !2870, file: !1545, line: 1197, type: !2898, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2897, variables: !4762)
!4762 = !{!4760, !4763, !4764}
!4763 = !DILocalVariable(name: "__x", arg: 2, scope: !4761, file: !1545, line: 539, type: !2900)
!4764 = !DILocalVariable(name: "__n", scope: !4765, file: !1545, line: 1203, type: !2869)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !1545, line: 1199, column: 1)
!4766 = !DILocation(line: 0, scope: !4761, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 1199, column: 1, scope: !4754, inlinedAt: !4758)
!4768 = !DILocation(line: 539, column: 26, scope: !4761, inlinedAt: !4767)
!4769 = !DILocalVariable(name: "__a", arg: 2, scope: !4770, file: !1545, line: 357, type: !1717)
!4770 = distinct !DISubprogram(name: "__vector_base", linkageName: "_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEEC2ERKS5_", scope: !1546, file: !1545, line: 434, type: !1734, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1733, variables: !4771)
!4771 = !{!4772, !4769}
!4772 = !DILocalVariable(name: "this", arg: 1, scope: !4770, type: !4654, flags: DIFlagArtificial | DIFlagObjectPointer)
!4773 = !DILocation(line: 357, column: 67, scope: !4770, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 1198, column: 7, scope: !4775, inlinedAt: !4767)
!4775 = !DILexicalBlockFile(scope: !4761, file: !1545, discriminator: 2)
!4776 = !DILocation(line: 436, column: 7, scope: !4770, inlinedAt: !4774)
!4777 = !{!4778}
!4778 = distinct !{!4778, !4779, !"_ZN7checker12ModelChecker10getSchListEv: %agg.result"}
!4779 = distinct !{!4779, !"_ZN7checker12ModelChecker10getSchListEv"}
!4780 = !DILocalVariable(name: "this", arg: 1, scope: !4781, type: !4783, flags: DIFlagArtificial | DIFlagObjectPointer)
!4781 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE4sizeEv", scope: !2870, file: !1545, line: 637, type: !3085, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3084, variables: !4782)
!4782 = !{!4780}
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!4784 = !DILocation(line: 0, scope: !4781, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 1203, column: 25, scope: !4765, inlinedAt: !4767)
!4786 = !DILocation(line: 638, column: 46, scope: !4781, inlinedAt: !4785)
!4787 = !DILocation(line: 638, column: 61, scope: !4781, inlinedAt: !4785)
!4788 = !DILocation(line: 638, column: 53, scope: !4781, inlinedAt: !4785)
!4789 = !DILocation(line: 1203, column: 15, scope: !4765, inlinedAt: !4767)
!4790 = !DILocation(line: 1204, column: 13, scope: !4791, inlinedAt: !4767)
!4791 = distinct !DILexicalBlock(scope: !4765, file: !1545, line: 1204, column: 9)
!4792 = !DILocation(line: 1204, column: 9, scope: !4765, inlinedAt: !4767)
!4793 = !DILocation(line: 0, scope: !4794, inlinedAt: !4798)
!4794 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8allocateEm", scope: !2870, file: !1545, line: 927, type: !2884, isLocal: false, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3161, variables: !4795)
!4795 = !{!4796, !4797}
!4796 = !DILocalVariable(name: "this", arg: 1, scope: !4794, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4797 = !DILocalVariable(name: "__n", arg: 2, scope: !4794, file: !1545, line: 773, type: !2869)
!4798 = distinct !DILocation(line: 1206, column: 9, scope: !4799, inlinedAt: !4767)
!4799 = distinct !DILexicalBlock(scope: !4791, file: !1545, line: 1205, column: 5)
!4800 = !DILocation(line: 0, scope: !4781, inlinedAt: !4801)
!4801 = distinct !DILocation(line: 62, column: 39, scope: !4802)
!4802 = !DILexicalBlockFile(scope: !4614, file: !3, discriminator: 3)
!4803 = !DILocation(line: 0, scope: !4696, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 62, column: 12, scope: !4805)
!4805 = !DILexicalBlockFile(scope: !4614, file: !3, discriminator: 4)
!4806 = !DILocation(line: 0, scope: !4691, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 452, column: 28, scope: !4696, inlinedAt: !4804)
!4808 = !DILocation(line: 62, column: 5, scope: !4743)
!4809 = !DILocation(line: 773, column: 29, scope: !4794, inlinedAt: !4798)
!4810 = !DILocation(line: 929, column: 13, scope: !4811, inlinedAt: !4798)
!4811 = distinct !DILexicalBlock(scope: !4794, file: !1545, line: 929, column: 9)
!4812 = !DILocation(line: 929, column: 9, scope: !4794, inlinedAt: !4798)
!4813 = !DILocation(line: 930, column: 15, scope: !4811, inlinedAt: !4798)
!4814 = !DILocalVariable(name: "__n", arg: 2, scope: !4815, file: !345, line: 1540, type: !1571)
!4815 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m", scope: !1564, file: !345, line: 1540, type: !1567, isLocal: false, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1566, variables: !4816)
!4816 = !{!4817, !4814}
!4817 = !DILocalVariable(name: "__a", arg: 1, scope: !4815, file: !345, line: 1540, type: !1569)
!4818 = !DILocation(line: 1540, column: 60, scope: !4815, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 931, column: 37, scope: !4820, inlinedAt: !4798)
!4820 = !DILexicalBlockFile(scope: !4794, file: !1545, discriminator: 1)
!4821 = !DILocalVariable(name: "__n", arg: 2, scope: !4822, file: !345, line: 1781, type: !398)
!4822 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIPN7checker8ScheduleEE8allocateEmPKv", scope: !1423, file: !345, line: 1781, type: !1449, isLocal: false, isDefinition: true, scopeLine: 1782, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1448, variables: !4823)
!4823 = !{!4824, !4821, !4825}
!4824 = !DILocalVariable(name: "this", arg: 1, scope: !4822, type: !4729, flags: DIFlagArtificial | DIFlagObjectPointer)
!4825 = !DILocalVariable(arg: 3, scope: !4822, file: !345, line: 1781, type: !399)
!4826 = !DILocation(line: 1781, column: 58, scope: !4822, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 1541, column: 21, scope: !4815, inlinedAt: !4819)
!4828 = !DILocation(line: 1781, column: 94, scope: !4822, inlinedAt: !4827)
!4829 = !DILocalVariable(name: "__size", arg: 1, scope: !4830, file: !4722, line: 222, type: !97)
!4830 = distinct !DISubprogram(name: "__allocate", linkageName: "_ZNSt3__110__allocateEm", scope: !7, file: !4722, line: 222, type: !3542, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4831)
!4831 = !{!4829}
!4832 = !DILocation(line: 222, column: 58, scope: !4830, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 1786, column: 37, scope: !4822, inlinedAt: !4827)
!4834 = !DILocation(line: 226, column: 10, scope: !4830, inlinedAt: !4833)
!4835 = !DILocation(line: 1786, column: 16, scope: !4822, inlinedAt: !4827)
!4836 = !DILocation(line: 931, column: 35, scope: !4794, inlinedAt: !4798)
!4837 = !DILocation(line: 931, column: 20, scope: !4794, inlinedAt: !4798)
!4838 = !DILocation(line: 932, column: 40, scope: !4794, inlinedAt: !4798)
!4839 = !DILocation(line: 932, column: 23, scope: !4794, inlinedAt: !4798)
!4840 = !DILocalVariable(name: "this", arg: 1, scope: !4841, type: !4659, flags: DIFlagArtificial | DIFlagObjectPointer)
!4841 = distinct !DISubprogram(name: "__construct_at_end<checker::Schedule **>", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESA_SA_m", scope: !2870, file: !1545, line: 1020, type: !4842, isLocal: false, isDefinition: true, scopeLine: 1021, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4844, declaration: !4846, variables: !4847)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!1771, !2876, !1462, !1462, !2869}
!4844 = !{!4845}
!4845 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !1462)
!4846 = !DISubprogram(name: "__construct_at_end<checker::Schedule **>", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESA_SA_m", scope: !2870, file: !1545, line: 785, type: !4842, isLocal: false, isDefinition: false, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, templateParams: !4844)
!4847 = !{!4840, !4848, !4849, !4850, !4851, !4853}
!4848 = !DILocalVariable(name: "__first", arg: 2, scope: !4841, file: !1545, line: 785, type: !1462)
!4849 = !DILocalVariable(name: "__last", arg: 3, scope: !4841, file: !1545, line: 785, type: !1462)
!4850 = !DILocalVariable(name: "__n", arg: 4, scope: !4841, file: !1545, line: 785, type: !2869)
!4851 = !DILocalVariable(name: "__a", scope: !4841, file: !1545, line: 1022, type: !4852)
!4852 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2882, size: 64)
!4853 = !DILocalVariable(name: "__annotator", scope: !4841, file: !1545, line: 1023, type: !4854)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__RAII_IncreaseAnnotator", scope: !2870, file: !1545, line: 878, size: 8, elements: !4855, identifier: "_ZTSNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE24__RAII_IncreaseAnnotatorE")
!4855 = !{!4856, !4860}
!4856 = !DISubprogram(name: "__RAII_IncreaseAnnotator", scope: !4854, file: !1545, line: 880, type: !4857, isLocal: false, isDefinition: false, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{null, !4859, !2900, !2869}
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4860 = !DISubprogram(name: "__done", linkageName: "_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE24__RAII_IncreaseAnnotator6__doneEv", scope: !4854, file: !1545, line: 881, type: !4861, isLocal: false, isDefinition: false, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{null, !4859}
!4863 = !DILocation(line: 0, scope: !4841, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 1207, column: 9, scope: !4799, inlinedAt: !4767)
!4865 = !DILocation(line: 785, column: 89, scope: !4841, inlinedAt: !4864)
!4866 = !DILocation(line: 1023, column: 30, scope: !4841, inlinedAt: !4864)
!4867 = !DILocation(line: 1652, column: 86, scope: !1768, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 1024, column: 5, scope: !4841, inlinedAt: !4864)
!4869 = !DILocation(line: 1656, column: 21, scope: !4870, inlinedAt: !4868)
!4870 = distinct !DILexicalBlock(scope: !1768, file: !345, line: 1656, column: 17)
!4871 = !DILocation(line: 1656, column: 17, scope: !1768, inlinedAt: !4868)
!4872 = !DILocation(line: 1658, column: 17, scope: !4873, inlinedAt: !4868)
!4873 = distinct !DILexicalBlock(scope: !4870, file: !345, line: 1657, column: 13)
!4874 = !DILocation(line: 1659, column: 26, scope: !4873, inlinedAt: !4868)
!4875 = !DILocation(line: 1660, column: 13, scope: !4873, inlinedAt: !4868)
!4876 = !DILocation(line: 1209, column: 1, scope: !4799, inlinedAt: !4767)
!4877 = !DILocation(line: 444, column: 18, scope: !4684, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 1209, column: 1, scope: !4765, inlinedAt: !4767)
!4879 = !DILocation(line: 444, column: 9, scope: !4685, inlinedAt: !4878)
!4880 = !DILocation(line: 419, column: 12, scope: !4706, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 361, column: 29, scope: !4712, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 446, column: 9, scope: !4716, inlinedAt: !4878)
!4883 = !DILocation(line: 230, column: 65, scope: !4721, inlinedAt: !4884)
!4884 = distinct !DILocation(line: 1789, column: 10, scope: !4726, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 1549, column: 14, scope: !4733, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 447, column: 9, scope: !4739, inlinedAt: !4878)
!4887 = !DILocation(line: 234, column: 3, scope: !4721, inlinedAt: !4884)
!4888 = !DILocation(line: 448, column: 5, scope: !4716, inlinedAt: !4878)
!4889 = !DILocation(line: 1209, column: 1, scope: !4890, inlinedAt: !4767)
!4890 = !DILexicalBlockFile(scope: !4765, file: !1545, discriminator: 2)
!4891 = !DILocation(line: 230, column: 65, scope: !4721, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 1789, column: 10, scope: !4726, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 1549, column: 14, scope: !4733, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 447, column: 9, scope: !4739, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 452, column: 28, scope: !4690, inlinedAt: !4807)
!4896 = !DILocation(line: 234, column: 3, scope: !4721, inlinedAt: !4892)
!4897 = !DILocation(line: 63, column: 9, scope: !4614)
!4898 = distinct !{!4898, !4899, !4900}
!4899 = !DILocation(line: 62, column: 5, scope: !4614)
!4900 = !DILocation(line: 63, column: 19, scope: !4614)
!4901 = !DILocation(line: 59, column: 20, scope: !4902)
!4902 = !DILexicalBlockFile(scope: !4614, file: !3, discriminator: 2)
!4903 = !DILocation(line: 59, column: 20, scope: !4802)
!4904 = !DILocation(line: 65, column: 5, scope: !4614)
!4905 = !DILocation(line: 714, column: 58, scope: !1785)
!4906 = !DILocation(line: 715, column: 41, scope: !1785)
!4907 = !DILocation(line: 715, column: 55, scope: !1785)
!4908 = !DILocation(line: 721, column: 9, scope: !2104)
!4909 = !DILocation(line: 721, column: 57, scope: !2104)
!4910 = !DILocalVariable(name: "this", arg: 1, scope: !4911, type: !4913, flags: DIFlagArtificial | DIFlagObjectPointer)
!4911 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !2105, file: !1784, line: 254, type: !2126, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2125, variables: !4912)
!4912 = !{!4910}
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!4914 = !DILocation(line: 0, scope: !4911, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 722, column: 13, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !2104, file: !1784, line: 722, column: 13)
!4917 = !DILocation(line: 254, column: 39, scope: !4911, inlinedAt: !4915)
!4918 = !{!4919, !4920, i64 0}
!4919 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !4920, i64 0, !4413, i64 8}
!4920 = !{!"bool", !4413, i64 0}
!4921 = !{i8 0, i8 2}
!4922 = !DILocation(line: 722, column: 13, scope: !4923)
!4923 = !DILexicalBlockFile(scope: !2104, file: !1784, discriminator: 1)
!4924 = !DILocalVariable(name: "this", arg: 1, scope: !4925, type: !4928, flags: DIFlagArtificial | DIFlagObjectPointer)
!4925 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE", scope: !2129, file: !698, line: 1031, type: !2143, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2142, variables: !4926)
!4926 = !{!4924, !4927}
!4927 = !DILocalVariable(name: "__s", arg: 2, scope: !4925, file: !698, line: 1031, type: !2146)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!4929 = !DILocation(line: 0, scope: !4925, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 725, column: 34, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !1784, line: 725, column: 17)
!4932 = distinct !DILexicalBlock(scope: !4916, file: !1784, line: 723, column: 9)
!4933 = !DILocation(line: 1031, column: 65, scope: !4925, inlinedAt: !4930)
!4934 = !DILocalVariable(name: "this", arg: 1, scope: !4935, type: !4928, flags: DIFlagArtificial | DIFlagObjectPointer)
!4935 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE", scope: !2129, file: !698, line: 1031, type: !2143, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2142, variables: !4936)
!4936 = !{!4934, !4937}
!4937 = !DILocalVariable(name: "__s", arg: 2, scope: !4935, file: !698, line: 1031, type: !2146)
!4938 = !DILocation(line: 0, scope: !4935, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 1032, column: 32, scope: !4925, inlinedAt: !4930)
!4940 = !DILocation(line: 1031, column: 65, scope: !4935, inlinedAt: !4939)
!4941 = !DILocation(line: 1032, column: 19, scope: !4935, inlinedAt: !4939)
!4942 = !{!4943, !4943, i64 0}
!4943 = !{!"vtable pointer", !4414, i64 0}
!4944 = !DILocation(line: 340, column: 55, scope: !4945, inlinedAt: !4949)
!4945 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !32, file: !31, line: 340, type: !1388, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1387, variables: !4946)
!4946 = !{!4947}
!4947 = !DILocalVariable(name: "this", arg: 1, scope: !4945, type: !4948, flags: DIFlagArtificial | DIFlagObjectPointer)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!4949 = distinct !DILocation(line: 718, column: 76, scope: !4950, inlinedAt: !4954)
!4950 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1792, file: !31, line: 716, type: !1946, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1945, variables: !4951)
!4951 = !{!4952}
!4952 = !DILocalVariable(name: "this", arg: 1, scope: !4950, type: !4953, flags: DIFlagArtificial | DIFlagObjectPointer)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!4954 = distinct !DILocation(line: 1032, column: 23, scope: !4935, inlinedAt: !4939)
!4955 = !{!4956, !4560, i64 40}
!4956 = !{!"_ZTSNSt3__18ios_baseE", !4412, i64 8, !4957, i64 16, !4957, i64 24, !4412, i64 32, !4412, i64 36, !4560, i64 40, !4560, i64 48, !4560, i64 56, !4560, i64 64, !4957, i64 72, !4957, i64 80, !4560, i64 88, !4957, i64 96, !4957, i64 104, !4560, i64 112, !4957, i64 120, !4957, i64 128}
!4957 = !{!"long", !4413, i64 0}
!4958 = !DILocation(line: 727, column: 35, scope: !4931)
!4959 = !DILocalVariable(name: "this", arg: 1, scope: !4960, type: !4948, flags: DIFlagArtificial | DIFlagObjectPointer)
!4960 = distinct !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !32, file: !31, line: 440, type: !266, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !265, variables: !4961)
!4961 = !{!4959}
!4962 = !DILocation(line: 0, scope: !4960, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 727, column: 40, scope: !4931)
!4964 = !DILocation(line: 442, column: 12, scope: !4960, inlinedAt: !4963)
!4965 = !{!4956, !4412, i64 8}
!4966 = !DILocation(line: 728, column: 44, scope: !4931)
!4967 = !DILocation(line: 764, column: 54, scope: !4968, inlinedAt: !4972)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !31, line: 764, column: 9)
!4969 = distinct !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1792, file: !31, line: 762, type: !1957, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1956, variables: !4970)
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "this", arg: 1, scope: !4969, type: !4953, flags: DIFlagArtificial | DIFlagObjectPointer)
!4972 = distinct !DILocation(line: 732, column: 39, scope: !4931)
!4973 = !{!4974, !4412, i64 144}
!4974 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !4560, i64 136, !4412, i64 144}
!4975 = !DILocalVariable(name: "__c1", arg: 1, scope: !4976, file: !790, line: 234, type: !824)
!4976 = distinct !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !789, file: !790, line: 234, type: !832, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !831, variables: !4977)
!4977 = !{!4975, !4978}
!4978 = !DILocalVariable(name: "__c2", arg: 2, scope: !4976, file: !790, line: 234, type: !824)
!4979 = !DILocation(line: 234, column: 63, scope: !4976, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 764, column: 9, scope: !4981, inlinedAt: !4972)
!4981 = !DILexicalBlockFile(scope: !4968, file: !31, discriminator: 1)
!4982 = !DILocation(line: 234, column: 78, scope: !4976, inlinedAt: !4980)
!4983 = !DILocation(line: 235, column: 22, scope: !4976, inlinedAt: !4980)
!4984 = !DILocation(line: 764, column: 9, scope: !4969, inlinedAt: !4972)
!4985 = !DILocalVariable(name: "__c", arg: 2, scope: !4986, file: !31, line: 649, type: !322)
!4986 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1792, file: !31, line: 754, type: !1970, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1969, variables: !4987)
!4987 = !{!4988, !4985}
!4988 = !DILocalVariable(name: "this", arg: 1, scope: !4986, type: !4953, flags: DIFlagArtificial | DIFlagObjectPointer)
!4989 = !DILocation(line: 649, column: 26, scope: !4986, inlinedAt: !4990)
!4990 = distinct !DILocation(line: 765, column: 19, scope: !4968, inlinedAt: !4972)
!4991 = !DILocation(line: 756, column: 41, scope: !4986, inlinedAt: !4990)
!4992 = !DILocalVariable(name: "__l", arg: 1, scope: !4993, file: !293, line: 210, type: !315)
!4993 = distinct !DISubprogram(name: "use_facet<std::__1::ctype<char> >", linkageName: "_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE", scope: !7, file: !293, line: 210, type: !4994, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5085, variables: !5087)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!4996, !315}
!4996 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4997, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4998)
!4998 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !7, file: !293, line: 558, size: 256, elements: !4999, vtableHolder: !1250, templateParams: !837, identifier: "_ZTSNSt3__15ctypeIcEE")
!4999 = !{!5000, !5001, !5022, !5024, !5025, !5026, !5028, !5032, !5037, !5043, !5046, !5047, !5050, !5054, !5055, !5056, !5059, !5062, !5065, !5068, !5071, !5074, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084}
!5000 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4998, baseType: !1247, flags: DIFlagPublic)
!5001 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4998, baseType: !5002, flags: DIFlagPublic)
!5002 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype_base", scope: !7, file: !293, line: 355, size: 8, elements: !5003, identifier: "_ZTSNSt3__110ctype_baseE")
!5003 = !{!5004, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !5002, file: !293, line: 391, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!5005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5006)
!5006 = !DIDerivedType(tag: DW_TAG_typedef, name: "mask", scope: !5002, file: !293, line: 385, baseType: !4078)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !5002, file: !293, line: 392, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 262144)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl", scope: !5002, file: !293, line: 393, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !5002, file: !293, line: 394, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32768)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !5002, file: !293, line: 395, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5002, file: !293, line: 396, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "digit", scope: !5002, file: !293, line: 397, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !5002, file: !293, line: 398, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "xdigit", scope: !5002, file: !293, line: 399, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 65536)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "blank", scope: !5002, file: !293, line: 404, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 131072)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "alnum", scope: !5002, file: !293, line: 447, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1280)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !5002, file: !293, line: 448, baseType: !5005, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 9472)
!5018 = !DISubprogram(name: "ctype_base", scope: !5002, file: !293, line: 450, type: !5019, isLocal: false, isDefinition: false, scopeLine: 450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{null, !5021}
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "__tab_", scope: !4998, file: !293, line: 561, baseType: !5023, size: 64, offset: 128)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "__del_", scope: !4998, file: !293, line: 562, baseType: !117, size: 8, offset: 192)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4998, file: !293, line: 648, baseType: !1295, flags: DIFlagPublic | DIFlagStaticMember)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !4998, file: !293, line: 651, baseType: !5027, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 256)
!5027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!5028 = !DISubprogram(name: "ctype", scope: !4998, file: !293, line: 566, type: !5029, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !5031, !5023, !117, !97}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5032 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEjc", scope: !4998, file: !293, line: 569, type: !5033, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!117, !5035, !5006, !5036}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5036 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !4998, file: !293, line: 564, baseType: !322)
!5037 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEPKcS3_Pj", scope: !4998, file: !293, line: 575, type: !5038, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!5040, !5035, !5040, !5040, !5042}
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5036)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5043 = !DISubprogram(name: "scan_is", linkageName: "_ZNKSt3__15ctypeIcE7scan_isEjPKcS3_", scope: !4998, file: !293, line: 583, type: !5044, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!5040, !5035, !5006, !5040, !5040}
!5046 = !DISubprogram(name: "scan_not", linkageName: "_ZNKSt3__15ctypeIcE8scan_notEjPKcS3_", scope: !4998, file: !293, line: 592, type: !5044, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5047 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEc", scope: !4998, file: !293, line: 601, type: !5048, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!5036, !5035, !5036}
!5050 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEPcPKc", scope: !4998, file: !293, line: 607, type: !5051, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!5040, !5035, !5053, !5040}
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5054 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEc", scope: !4998, file: !293, line: 613, type: !5048, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5055 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEPcPKc", scope: !4998, file: !293, line: 619, type: !5051, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5056 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !4998, file: !293, line: 625, type: !5057, isLocal: false, isDefinition: false, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5057 = !DISubroutineType(types: !5058)
!5058 = !{!5036, !5035, !322}
!5059 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEPKcS3_Pc", scope: !4998, file: !293, line: 631, type: !5060, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!320, !5035, !320, !320, !5053}
!5062 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEcc", scope: !4998, file: !293, line: 637, type: !5063, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!322, !5035, !5036, !322}
!5065 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEPKcS3_cPc", scope: !4998, file: !293, line: 643, type: !5066, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!320, !5035, !5040, !5040, !322, !384}
!5068 = !DISubprogram(name: "table", linkageName: "_ZNKSt3__15ctypeIcE5tableEv", scope: !4998, file: !293, line: 655, type: !5069, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!5023, !5035}
!5071 = !DISubprogram(name: "classic_table", linkageName: "_ZNSt3__15ctypeIcE13classic_tableEv", scope: !4998, file: !293, line: 656, type: !5072, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!5023}
!5074 = !DISubprogram(name: "~ctype", scope: !4998, file: !293, line: 667, type: !5075, isLocal: false, isDefinition: false, scopeLine: 667, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !5031}
!5077 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEc", scope: !4998, file: !293, line: 668, type: !5048, isLocal: false, isDefinition: false, scopeLine: 668, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5078 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEPcPKc", scope: !4998, file: !293, line: 669, type: !5051, isLocal: false, isDefinition: false, scopeLine: 669, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5079 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEc", scope: !4998, file: !293, line: 670, type: !5048, isLocal: false, isDefinition: false, scopeLine: 670, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5080 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEPcPKc", scope: !4998, file: !293, line: 671, type: !5051, isLocal: false, isDefinition: false, scopeLine: 671, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5081 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEc", scope: !4998, file: !293, line: 672, type: !5057, isLocal: false, isDefinition: false, scopeLine: 672, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5082 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEPKcS3_Pc", scope: !4998, file: !293, line: 673, type: !5060, isLocal: false, isDefinition: false, scopeLine: 673, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5083 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEcc", scope: !4998, file: !293, line: 674, type: !5063, isLocal: false, isDefinition: false, scopeLine: 674, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5084 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEPKcS3_cPc", scope: !4998, file: !293, line: 675, type: !5066, isLocal: false, isDefinition: false, scopeLine: 675, containingType: !4998, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!5085 = !{!5086}
!5086 = !DITemplateTypeParameter(name: "_Facet", type: !4998)
!5087 = !{!4992}
!5088 = !DILocation(line: 210, column: 25, scope: !4993, inlinedAt: !5089)
!5089 = distinct !DILocation(line: 756, column: 12, scope: !4986, inlinedAt: !4990)
!5090 = !DILocation(line: 212, column: 44, scope: !4993, inlinedAt: !5089)
!5091 = !DILocation(line: 212, column: 12, scope: !4993, inlinedAt: !5089)
!5092 = !DILocalVariable(name: "this", arg: 1, scope: !5093, type: !5096, flags: DIFlagArtificial | DIFlagObjectPointer)
!5093 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !4998, file: !293, line: 625, type: !5057, isLocal: false, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5056, variables: !5094)
!5094 = !{!5092, !5095}
!5095 = !DILocalVariable(name: "__c", arg: 2, scope: !5093, file: !293, line: 625, type: !322)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!5097 = !DILocation(line: 0, scope: !5093, inlinedAt: !5098)
!5098 = distinct !DILocation(line: 756, column: 51, scope: !5099, inlinedAt: !4990)
!5099 = !DILexicalBlockFile(scope: !4986, file: !31, discriminator: 1)
!5100 = !DILocation(line: 625, column: 26, scope: !5093, inlinedAt: !5098)
!5101 = !DILocation(line: 627, column: 16, scope: !5093, inlinedAt: !5098)
!5102 = !DILocation(line: 757, column: 1, scope: !4986, inlinedAt: !4990)
!5103 = !DILocation(line: 756, column: 5, scope: !5104, inlinedAt: !4990)
!5104 = !DILexicalBlockFile(scope: !4986, file: !31, discriminator: 3)
!5105 = !DILocation(line: 756, column: 5, scope: !4986, inlinedAt: !4990)
!5106 = !DILocation(line: 756, column: 5, scope: !5107, inlinedAt: !4990)
!5107 = !DILexicalBlockFile(scope: !4986, file: !31, discriminator: 2)
!5108 = !DILocation(line: 765, column: 19, scope: !4968, inlinedAt: !4972)
!5109 = !DILocation(line: 765, column: 17, scope: !4968, inlinedAt: !4972)
!5110 = !DILocation(line: 765, column: 9, scope: !4968, inlinedAt: !4972)
!5111 = !DILocation(line: 766, column: 12, scope: !4969, inlinedAt: !4972)
!5112 = !DILocation(line: 727, column: 48, scope: !5113)
!5113 = !DILexicalBlockFile(scope: !4931, file: !1784, discriminator: 1)
!5114 = !DILocation(line: 727, column: 73, scope: !5113)
!5115 = !DILocation(line: 727, column: 34, scope: !5113)
!5116 = !DILocation(line: 725, column: 17, scope: !5113)
!5117 = !DILocalVariable(name: "this", arg: 1, scope: !5118, type: !5120, flags: DIFlagArtificial | DIFlagObjectPointer)
!5118 = distinct !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !2129, file: !698, line: 1044, type: !2163, isLocal: false, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2162, variables: !5119)
!5119 = !{!5117}
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!5121 = !DILocation(line: 0, scope: !5118, inlinedAt: !5122)
!5122 = distinct !DILocation(line: 732, column: 47, scope: !5113)
!5123 = !DILocation(line: 1044, column: 77, scope: !5118, inlinedAt: !5122)
!5124 = !DILocation(line: 725, column: 17, scope: !5125)
!5125 = !DILexicalBlockFile(scope: !4932, file: !1784, discriminator: 2)
!5126 = !DILocation(line: 733, column: 17, scope: !4931)
!5127 = !DILocalVariable(name: "__state", arg: 2, scope: !5128, file: !31, line: 611, type: !63)
!5128 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1792, file: !31, line: 611, type: !1810, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1813, variables: !5129)
!5129 = !{!5130, !5127}
!5130 = !DILocalVariable(name: "this", arg: 1, scope: !5128, type: !5131, flags: DIFlagArtificial | DIFlagObjectPointer)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!5132 = !DILocation(line: 611, column: 49, scope: !5128, inlinedAt: !5133)
!5133 = distinct !DILocation(line: 733, column: 22, scope: !4931)
!5134 = !DILocation(line: 611, column: 69, scope: !5128, inlinedAt: !5133)
!5135 = !DILocalVariable(name: "this", arg: 1, scope: !5136, type: !5139, flags: DIFlagArtificial | DIFlagObjectPointer)
!5136 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !32, file: !31, line: 527, type: !1370, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1372, variables: !5137)
!5137 = !{!5135, !5138}
!5138 = !DILocalVariable(name: "__state", arg: 2, scope: !5136, file: !31, line: 527, type: !63)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!5140 = !DILocation(line: 0, scope: !5136, inlinedAt: !5141)
!5141 = distinct !DILocation(line: 611, column: 69, scope: !5128, inlinedAt: !5133)
!5142 = !DILocation(line: 527, column: 28, scope: !5136, inlinedAt: !5141)
!5143 = !DILocation(line: 529, column: 11, scope: !5136, inlinedAt: !5141)
!5144 = !{!4956, !4412, i64 32}
!5145 = !DILocation(line: 529, column: 22, scope: !5136, inlinedAt: !5141)
!5146 = !DILocation(line: 529, column: 5, scope: !5136, inlinedAt: !5141)
!5147 = !DILocation(line: 743, column: 1, scope: !2104)
!5148 = !DILocation(line: 739, column: 9, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !1785, file: !1784, line: 738, column: 5)
!5150 = !DILocation(line: 743, column: 1, scope: !5151)
!5151 = !DILexicalBlockFile(scope: !4916, file: !1784, discriminator: 1)
!5152 = !DILocation(line: 743, column: 1, scope: !5153)
!5153 = !DILexicalBlockFile(scope: !4931, file: !1784, discriminator: 2)
!5154 = !DILocation(line: 736, column: 5, scope: !1785)
!5155 = !DILocation(line: 736, column: 5, scope: !2104)
!5156 = !DILocation(line: 736, column: 5, scope: !5157)
!5157 = !DILexicalBlockFile(scope: !1785, file: !1784, discriminator: 1)
!5158 = !DILocation(line: 736, column: 5, scope: !5159)
!5159 = !DILexicalBlockFile(scope: !2104, file: !1784, discriminator: 2)
!5160 = !DILocation(line: 739, column: 14, scope: !5149)
!5161 = !DILocation(line: 740, column: 5, scope: !5149)
!5162 = !DILocation(line: 742, column: 5, scope: !1785)
!5163 = !DILocation(line: 743, column: 1, scope: !5164)
!5164 = !DILexicalBlockFile(scope: !5149, file: !1784, discriminator: 3)
!5165 = !DILocation(line: 740, column: 5, scope: !5166)
!5166 = !DILexicalBlockFile(scope: !5149, file: !1784, discriminator: 1)
!5167 = !DILocation(line: 740, column: 5, scope: !5164)
!5168 = !DILocation(line: 740, column: 5, scope: !5169)
!5169 = !DILexicalBlockFile(scope: !5149, file: !1784, discriminator: 4)
!5170 = distinct !DISubprogram(name: "__pad_and_output<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", scope: !7, file: !5171, line: 1326, type: !5172, isLocal: false, isDefinition: true, scopeLine: 1329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !786, variables: !5174)
!5171 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!2129, !2129, !320, !320, !320, !93, !322}
!5174 = !{!5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184}
!5175 = !DILocalVariable(name: "__s", arg: 1, scope: !5170, file: !5171, line: 1326, type: !2129)
!5176 = !DILocalVariable(name: "__ob", arg: 2, scope: !5170, file: !5171, line: 1327, type: !320)
!5177 = !DILocalVariable(name: "__op", arg: 3, scope: !5170, file: !5171, line: 1327, type: !320)
!5178 = !DILocalVariable(name: "__oe", arg: 4, scope: !5170, file: !5171, line: 1327, type: !320)
!5179 = !DILocalVariable(name: "__iob", arg: 5, scope: !5170, file: !5171, line: 1328, type: !93)
!5180 = !DILocalVariable(name: "__fl", arg: 6, scope: !5170, file: !5171, line: 1328, type: !322)
!5181 = !DILocalVariable(name: "__sz", scope: !5170, file: !5171, line: 1332, type: !77)
!5182 = !DILocalVariable(name: "__ns", scope: !5170, file: !5171, line: 1333, type: !77)
!5183 = !DILocalVariable(name: "__np", scope: !5170, file: !5171, line: 1338, type: !77)
!5184 = !DILocalVariable(name: "__sp", scope: !5185, file: !5171, line: 1349, type: !330)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !5171, line: 1348, column: 5)
!5186 = distinct !DILexicalBlock(scope: !5170, file: !5171, line: 1347, column: 9)
!5187 = !DILocation(line: 1326, column: 55, scope: !5170)
!5188 = !DILocation(line: 1327, column: 32, scope: !5170)
!5189 = !DILocation(line: 1327, column: 52, scope: !5170)
!5190 = !DILocation(line: 1327, column: 72, scope: !5170)
!5191 = !DILocation(line: 1328, column: 28, scope: !5170)
!5192 = !DILocation(line: 1328, column: 42, scope: !5170)
!5193 = !DILocation(line: 1330, column: 21, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5170, file: !5171, line: 1330, column: 9)
!5195 = !DILocation(line: 1330, column: 9, scope: !5170)
!5196 = !DILocation(line: 1332, column: 28, scope: !5170)
!5197 = !DILocation(line: 1332, column: 16, scope: !5170)
!5198 = !DILocalVariable(name: "this", arg: 1, scope: !5199, type: !4948, flags: DIFlagArtificial | DIFlagObjectPointer)
!5199 = distinct !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !32, file: !31, line: 502, type: !282, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !287, variables: !5200)
!5200 = !{!5198}
!5201 = !DILocation(line: 0, scope: !5199, inlinedAt: !5202)
!5202 = distinct !DILocation(line: 1333, column: 29, scope: !5170)
!5203 = !DILocation(line: 504, column: 12, scope: !5199, inlinedAt: !5202)
!5204 = !{!4956, !4957, i64 24}
!5205 = !DILocation(line: 1333, column: 16, scope: !5170)
!5206 = !DILocation(line: 1334, column: 14, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5170, file: !5171, line: 1334, column: 9)
!5208 = !DILocation(line: 1335, column: 14, scope: !5207)
!5209 = !DILocation(line: 1334, column: 9, scope: !5170)
!5210 = !DILocation(line: 1338, column: 28, scope: !5170)
!5211 = !DILocation(line: 1338, column: 16, scope: !5170)
!5212 = !DILocation(line: 1339, column: 14, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5170, file: !5171, line: 1339, column: 9)
!5214 = !DILocation(line: 1339, column: 9, scope: !5170)
!5215 = !DILocalVariable(name: "this", arg: 1, scope: !5216, type: !1823, flags: DIFlagArtificial | DIFlagObjectPointer)
!5216 = distinct !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1824, file: !1793, line: 223, type: !1886, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1885, variables: !5217)
!5217 = !{!5215, !5218, !5219}
!5218 = !DILocalVariable(name: "__s", arg: 2, scope: !5216, file: !1793, line: 223, type: !1888)
!5219 = !DILocalVariable(name: "__n", arg: 3, scope: !5216, file: !1793, line: 223, type: !77)
!5220 = !DILocation(line: 0, scope: !5216, inlinedAt: !5221)
!5221 = distinct !DILocation(line: 1341, column: 26, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !5171, line: 1341, column: 13)
!5223 = distinct !DILexicalBlock(scope: !5213, file: !5171, line: 1340, column: 5)
!5224 = !DILocation(line: 223, column: 39, scope: !5216, inlinedAt: !5221)
!5225 = !DILocation(line: 223, column: 55, scope: !5216, inlinedAt: !5221)
!5226 = !DILocation(line: 224, column: 14, scope: !5216, inlinedAt: !5221)
!5227 = !DILocation(line: 1341, column: 44, scope: !5222)
!5228 = !DILocation(line: 1341, column: 13, scope: !5223)
!5229 = !DILocation(line: 1347, column: 14, scope: !5186)
!5230 = !DILocation(line: 1347, column: 9, scope: !5170)
!5231 = !DILocation(line: 1349, column: 9, scope: !5185)
!5232 = !DILocation(line: 1349, column: 39, scope: !5185)
!5233 = !DILocalVariable(name: "this", arg: 1, scope: !5234, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5234 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc", scope: !330, file: !331, line: 1709, type: !639, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !638, variables: !5235)
!5235 = !{!5233, !5236, !5237}
!5236 = !DILocalVariable(name: "__n", arg: 2, scope: !5234, file: !331, line: 786, type: !360)
!5237 = !DILocalVariable(name: "__c", arg: 3, scope: !5234, file: !331, line: 786, type: !322)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!5239 = !DILocation(line: 0, scope: !5234, inlinedAt: !5240)
!5240 = distinct !DILocation(line: 1349, column: 39, scope: !5185)
!5241 = !DILocation(line: 786, column: 28, scope: !5234, inlinedAt: !5240)
!5242 = !DILocation(line: 786, column: 40, scope: !5234, inlinedAt: !5240)
!5243 = !DILocalVariable(name: "this", arg: 1, scope: !5244, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5244 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc", scope: !330, file: !331, line: 1709, type: !639, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !638, variables: !5245)
!5245 = !{!5243, !5246, !5247}
!5246 = !DILocalVariable(name: "__n", arg: 2, scope: !5244, file: !331, line: 786, type: !360)
!5247 = !DILocalVariable(name: "__c", arg: 3, scope: !5244, file: !331, line: 786, type: !322)
!5248 = !DILocation(line: 0, scope: !5244, inlinedAt: !5249)
!5249 = distinct !DILocation(line: 1710, column: 1, scope: !5234, inlinedAt: !5240)
!5250 = !DILocation(line: 786, column: 28, scope: !5244, inlinedAt: !5249)
!5251 = !DILocation(line: 786, column: 40, scope: !5244, inlinedAt: !5249)
!5252 = !DILocation(line: 2082, column: 40, scope: !5253, inlinedAt: !5257)
!5253 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev", scope: !348, file: !345, line: 2082, type: !533, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !532, variables: !5254)
!5254 = !{!5255}
!5255 = !DILocalVariable(name: "this", arg: 1, scope: !5253, type: !5256, flags: DIFlagArtificial | DIFlagObjectPointer)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!5257 = distinct !DILocation(line: 2167, column: 13, scope: !5258, inlinedAt: !5267)
!5258 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv", scope: !344, file: !345, line: 2167, type: !5259, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5261, declaration: !5263, variables: !5264)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{null, !580}
!5261 = !{!5262, !4528}
!5262 = !DITemplateValueParameter(name: "_Dummy", type: !117, value: i8 1)
!5263 = !DISubprogram(name: "__compressed_pair<true, void>", scope: !344, file: !345, line: 2167, type: !5259, isLocal: false, isDefinition: false, scopeLine: 2167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !5261)
!5264 = !{!5265}
!5265 = !DILocalVariable(name: "this", arg: 1, scope: !5258, type: !5266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!5267 = distinct !DILocation(line: 2167, column: 33, scope: !5268, inlinedAt: !5271)
!5268 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv", scope: !344, file: !345, line: 2167, type: !5259, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5261, declaration: !5263, variables: !5269)
!5269 = !{!5270}
!5270 = !DILocalVariable(name: "this", arg: 1, scope: !5268, type: !5266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5271 = distinct !DILocation(line: 786, column: 5, scope: !5244, inlinedAt: !5249)
!5272 = !DILocalVariable(name: "this", arg: 1, scope: !5273, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5273 = distinct !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !330, file: !331, line: 1685, type: !928, isLocal: false, isDefinition: true, scopeLine: 1686, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1188, variables: !5274)
!5274 = !{!5272, !5275, !5276, !5277, !5278}
!5275 = !DILocalVariable(name: "__n", arg: 2, scope: !5273, file: !331, line: 1344, type: !360)
!5276 = !DILocalVariable(name: "__c", arg: 3, scope: !5273, file: !331, line: 1344, type: !520)
!5277 = !DILocalVariable(name: "__p", scope: !5273, file: !331, line: 1689, type: !510)
!5278 = !DILocalVariable(name: "__cap", scope: !5279, file: !331, line: 1697, type: !360)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !331, line: 1696, column: 5)
!5280 = distinct !DILexicalBlock(scope: !5273, file: !331, line: 1690, column: 9)
!5281 = !DILocation(line: 0, scope: !5273, inlinedAt: !5282)
!5282 = distinct !DILocation(line: 1711, column: 5, scope: !5283, inlinedAt: !5249)
!5283 = distinct !DILexicalBlock(scope: !5244, file: !331, line: 1710, column: 1)
!5284 = !DILocation(line: 1344, column: 27, scope: !5273, inlinedAt: !5282)
!5285 = !DILocation(line: 1344, column: 43, scope: !5273, inlinedAt: !5282)
!5286 = !DILocation(line: 1690, column: 13, scope: !5280, inlinedAt: !5282)
!5287 = !DILocation(line: 1690, column: 9, scope: !5273, inlinedAt: !5282)
!5288 = !DILocalVariable(name: "__s", arg: 1, scope: !5289, file: !331, line: 1334, type: !360)
!5289 = distinct !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !330, file: !331, line: 1334, type: !1180, isLocal: false, isDefinition: true, scopeLine: 1335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1179, variables: !5290)
!5290 = !{!5288}
!5291 = !DILocation(line: 1334, column: 37, scope: !5289, inlinedAt: !5292)
!5292 = distinct !DILocation(line: 1697, column: 27, scope: !5279, inlinedAt: !5282)
!5293 = !DILocation(line: 1331, column: 26, scope: !5294, inlinedAt: !5300)
!5294 = distinct !DISubprogram(name: "__align_it<16>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm", scope: !330, file: !331, line: 1330, type: !1180, isLocal: false, isDefinition: true, scopeLine: 1331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5295, declaration: !5297, variables: !5298)
!5295 = !{!5296}
!5296 = !DITemplateValueParameter(name: "__a", type: !101, value: i64 16)
!5297 = !DISubprogram(name: "__align_it<16>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm", scope: !330, file: !331, line: 1330, type: !1180, isLocal: false, isDefinition: false, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, templateParams: !5295)
!5298 = !{!5299}
!5299 = !DILocalVariable(name: "__s", arg: 1, scope: !5294, file: !331, line: 1330, type: !360)
!5300 = distinct !DILocation(line: 1336, column: 18, scope: !5289, inlinedAt: !5292)
!5301 = !DILocation(line: 1331, column: 37, scope: !5294, inlinedAt: !5300)
!5302 = !DILocalVariable(name: "__n", arg: 2, scope: !5303, file: !345, line: 1540, type: !361)
!5303 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !362, file: !345, line: 1540, type: !365, isLocal: false, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !364, variables: !5304)
!5304 = !{!5305, !5302}
!5305 = !DILocalVariable(name: "__a", arg: 1, scope: !5303, file: !345, line: 1540, type: !419)
!5306 = !DILocation(line: 1540, column: 60, scope: !5303, inlinedAt: !5307)
!5307 = distinct !DILocation(line: 1698, column: 15, scope: !5308, inlinedAt: !5282)
!5308 = !DILexicalBlockFile(scope: !5279, file: !331, discriminator: 1)
!5309 = !DILocalVariable(name: "__n", arg: 2, scope: !5310, file: !345, line: 1781, type: !398)
!5310 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !374, file: !345, line: 1781, type: !396, isLocal: false, isDefinition: true, scopeLine: 1782, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !395, variables: !5311)
!5311 = !{!5312, !5309, !5314}
!5312 = !DILocalVariable(name: "this", arg: 1, scope: !5310, type: !5313, flags: DIFlagArtificial | DIFlagObjectPointer)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!5314 = !DILocalVariable(arg: 3, scope: !5310, file: !345, line: 1781, type: !399)
!5315 = !DILocation(line: 1781, column: 58, scope: !5310, inlinedAt: !5316)
!5316 = distinct !DILocation(line: 1541, column: 21, scope: !5303, inlinedAt: !5307)
!5317 = !DILocation(line: 1781, column: 94, scope: !5310, inlinedAt: !5316)
!5318 = !DILocation(line: 222, column: 58, scope: !4830, inlinedAt: !5319)
!5319 = distinct !DILocation(line: 1786, column: 37, scope: !5310, inlinedAt: !5316)
!5320 = !DILocation(line: 226, column: 10, scope: !4830, inlinedAt: !5319)
!5321 = !DILocation(line: 1689, column: 13, scope: !5273, inlinedAt: !5282)
!5322 = !DILocalVariable(name: "this", arg: 1, scope: !5323, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5323 = distinct !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !330, file: !331, line: 1299, type: !1161, isLocal: false, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1160, variables: !5324)
!5324 = !{!5322, !5325}
!5325 = !DILocalVariable(name: "__p", arg: 2, scope: !5323, file: !331, line: 1299, type: !510)
!5326 = !DILocation(line: 0, scope: !5323, inlinedAt: !5327)
!5327 = distinct !DILocation(line: 1699, column: 9, scope: !5279, inlinedAt: !5282)
!5328 = !DILocation(line: 1299, column: 37, scope: !5323, inlinedAt: !5327)
!5329 = !DILocation(line: 1300, column: 27, scope: !5323, inlinedAt: !5327)
!5330 = !DILocation(line: 1300, column: 35, scope: !5323, inlinedAt: !5327)
!5331 = !{!5332, !4560, i64 16}
!5332 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !4957, i64 0, !4957, i64 8, !4560, i64 16}
!5333 = !DILocalVariable(name: "this", arg: 1, scope: !5334, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5334 = distinct !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !330, file: !331, line: 1292, type: !931, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1158, variables: !5335)
!5335 = !{!5333, !5336}
!5336 = !DILocalVariable(name: "__s", arg: 2, scope: !5334, file: !331, line: 1292, type: !360)
!5337 = !DILocation(line: 0, scope: !5334, inlinedAt: !5338)
!5338 = distinct !DILocation(line: 1700, column: 9, scope: !5279, inlinedAt: !5282)
!5339 = !DILocation(line: 1292, column: 35, scope: !5334, inlinedAt: !5338)
!5340 = !DILocation(line: 1293, column: 49, scope: !5334, inlinedAt: !5338)
!5341 = !DILocation(line: 1293, column: 27, scope: !5334, inlinedAt: !5338)
!5342 = !DILocation(line: 1293, column: 35, scope: !5334, inlinedAt: !5338)
!5343 = !{!5332, !4957, i64 0}
!5344 = !DILocalVariable(name: "this", arg: 1, scope: !5345, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5345 = distinct !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !330, file: !331, line: 1282, type: !931, isLocal: false, isDefinition: true, scopeLine: 1283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1155, variables: !5346)
!5346 = !{!5344, !5347}
!5347 = !DILocalVariable(name: "__s", arg: 2, scope: !5345, file: !331, line: 1282, type: !360)
!5348 = !DILocation(line: 0, scope: !5345, inlinedAt: !5349)
!5349 = distinct !DILocation(line: 1701, column: 9, scope: !5279, inlinedAt: !5282)
!5350 = !DILocation(line: 1282, column: 36, scope: !5345, inlinedAt: !5349)
!5351 = !DILocation(line: 1283, column: 27, scope: !5345, inlinedAt: !5349)
!5352 = !DILocation(line: 1283, column: 35, scope: !5345, inlinedAt: !5349)
!5353 = !{!5332, !4957, i64 8}
!5354 = !DILocalVariable(name: "__n", arg: 2, scope: !5355, file: !790, line: 225, type: !97)
!5355 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !789, file: !790, line: 225, type: !819, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !818, variables: !5356)
!5356 = !{!5357, !5354, !5358}
!5357 = !DILocalVariable(name: "__s", arg: 1, scope: !5355, file: !790, line: 225, type: !816)
!5358 = !DILocalVariable(name: "__a", arg: 3, scope: !5355, file: !790, line: 225, type: !796)
!5359 = !DILocation(line: 225, column: 60, scope: !5355, inlinedAt: !5360)
!5360 = distinct !DILocation(line: 1703, column: 5, scope: !5361, inlinedAt: !5282)
!5361 = !DILexicalBlockFile(scope: !5273, file: !331, discriminator: 1)
!5362 = !DILocation(line: 225, column: 75, scope: !5355, inlinedAt: !5360)
!5363 = !DILocation(line: 1312, column: 72, scope: !5364, inlinedAt: !5368)
!5364 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !330, file: !331, line: 1311, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1175, variables: !5365)
!5365 = !{!5366}
!5366 = !DILocalVariable(name: "this", arg: 1, scope: !5364, type: !5367, flags: DIFlagArtificial | DIFlagObjectPointer)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!5368 = distinct !DILocation(line: 1318, column: 54, scope: !5369, inlinedAt: !5373)
!5369 = !DILexicalBlockFile(scope: !5370, file: !331, discriminator: 2)
!5370 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !330, file: !331, line: 1317, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1177, variables: !5371)
!5371 = !{!5372}
!5372 = !DILocalVariable(name: "this", arg: 1, scope: !5370, type: !5367, flags: DIFlagArtificial | DIFlagObjectPointer)
!5373 = distinct !DILocation(line: 1132, column: 79, scope: !5374, inlinedAt: !5377)
!5374 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !330, file: !331, line: 1132, type: !1074, isLocal: false, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1076, variables: !5375)
!5375 = !{!5376}
!5376 = !DILocalVariable(name: "this", arg: 1, scope: !5374, type: !5367, flags: DIFlagArtificial | DIFlagObjectPointer)
!5377 = distinct !DILocation(line: 1350, column: 37, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5185, file: !5171, line: 1350, column: 13)
!5379 = !DILocation(line: 1312, column: 59, scope: !5364, inlinedAt: !5368)
!5380 = !DILocation(line: 226, column: 17, scope: !5355, inlinedAt: !5360)
!5381 = !DILocalVariable(name: "this", arg: 1, scope: !5382, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5382 = distinct !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !330, file: !331, line: 1264, type: !931, isLocal: false, isDefinition: true, scopeLine: 1268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1153, variables: !5383)
!5383 = !{!5381, !5384}
!5384 = !DILocalVariable(name: "__s", arg: 2, scope: !5382, file: !331, line: 1264, type: !360)
!5385 = !DILocation(line: 0, scope: !5382, inlinedAt: !5386)
!5386 = distinct !DILocation(line: 1692, column: 9, scope: !5387, inlinedAt: !5282)
!5387 = distinct !DILexicalBlock(scope: !5280, file: !331, line: 1691, column: 5)
!5388 = !DILocation(line: 1264, column: 37, scope: !5382, inlinedAt: !5386)
!5389 = !DILocation(line: 1268, column: 52, scope: !5382, inlinedAt: !5386)
!5390 = !DILocation(line: 1268, column: 35, scope: !5382, inlinedAt: !5386)
!5391 = !{!4413, !4413, i64 0}
!5392 = !DILocalVariable(name: "this", arg: 1, scope: !5393, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5393 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !330, file: !331, line: 1308, type: !1164, isLocal: false, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1174, variables: !5394)
!5394 = !{!5392}
!5395 = !DILocation(line: 0, scope: !5393, inlinedAt: !5396)
!5396 = distinct !DILocation(line: 1693, column: 15, scope: !5387, inlinedAt: !5282)
!5397 = !DILocation(line: 1309, column: 66, scope: !5393, inlinedAt: !5396)
!5398 = !DILocation(line: 1309, column: 53, scope: !5393, inlinedAt: !5396)
!5399 = !DILocation(line: 225, column: 48, scope: !5355, inlinedAt: !5360)
!5400 = !DILocation(line: 1306, column: 34, scope: !5401, inlinedAt: !5404)
!5401 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !330, file: !331, line: 1305, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1166, variables: !5402)
!5402 = !{!5403}
!5403 = !DILocalVariable(name: "this", arg: 1, scope: !5401, type: !5367, flags: DIFlagArtificial | DIFlagObjectPointer)
!5404 = distinct !DILocation(line: 1318, column: 31, scope: !5405, inlinedAt: !5373)
!5405 = !DILexicalBlockFile(scope: !5370, file: !331, discriminator: 1)
!5406 = !DILocation(line: 226, column: 46, scope: !5355, inlinedAt: !5360)
!5407 = !DILocation(line: 1704, column: 25, scope: !5273, inlinedAt: !5282)
!5408 = !DILocalVariable(name: "__c1", arg: 1, scope: !5409, file: !790, line: 206, type: !795)
!5409 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !789, file: !790, line: 206, type: !793, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !792, variables: !5410)
!5410 = !{!5408, !5411}
!5411 = !DILocalVariable(name: "__c2", arg: 2, scope: !5409, file: !790, line: 206, type: !797)
!5412 = !DILocation(line: 206, column: 28, scope: !5409, inlinedAt: !5413)
!5413 = distinct !DILocation(line: 1704, column: 5, scope: !5273, inlinedAt: !5282)
!5414 = !DILocation(line: 206, column: 73, scope: !5409, inlinedAt: !5413)
!5415 = !DILocation(line: 0, scope: !5374, inlinedAt: !5377)
!5416 = !DILocation(line: 0, scope: !5370, inlinedAt: !5373)
!5417 = !DILocalVariable(name: "this", arg: 1, scope: !5418, type: !5367, flags: DIFlagArtificial | DIFlagObjectPointer)
!5418 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !330, file: !331, line: 1223, type: !937, isLocal: false, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1145, variables: !5419)
!5419 = !{!5417}
!5420 = !DILocation(line: 0, scope: !5418, inlinedAt: !5421)
!5421 = distinct !DILocation(line: 1318, column: 17, scope: !5370, inlinedAt: !5373)
!5422 = !DILocation(line: 1224, column: 39, scope: !5418, inlinedAt: !5421)
!5423 = !DILocation(line: 1224, column: 47, scope: !5418, inlinedAt: !5421)
!5424 = !DILocation(line: 1224, column: 22, scope: !5418, inlinedAt: !5421)
!5425 = !DILocation(line: 0, scope: !5401, inlinedAt: !5404)
!5426 = !DILocation(line: 0, scope: !5364, inlinedAt: !5368)
!5427 = !DILocation(line: 1318, column: 17, scope: !5370, inlinedAt: !5373)
!5428 = !DILocation(line: 0, scope: !5216, inlinedAt: !5429)
!5429 = distinct !DILocation(line: 1350, column: 26, scope: !5378)
!5430 = !DILocation(line: 223, column: 39, scope: !5216, inlinedAt: !5429)
!5431 = !DILocation(line: 223, column: 55, scope: !5216, inlinedAt: !5429)
!5432 = !DILocation(line: 224, column: 14, scope: !5216, inlinedAt: !5429)
!5433 = !DILocation(line: 1350, column: 51, scope: !5434)
!5434 = !DILexicalBlockFile(scope: !5378, file: !5171, discriminator: 1)
!5435 = !DILocalVariable(name: "this", arg: 1, scope: !5436, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5436 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev", scope: !330, file: !331, line: 1904, type: !602, isLocal: false, isDefinition: true, scopeLine: 1905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !870, variables: !5437)
!5437 = !{!5435}
!5438 = !DILocation(line: 0, scope: !5436, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 1355, column: 5, scope: !5440)
!5440 = !DILexicalBlockFile(scope: !5186, file: !5171, discriminator: 2)
!5441 = !DILocalVariable(name: "this", arg: 1, scope: !5442, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5442 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev", scope: !330, file: !331, line: 1904, type: !602, isLocal: false, isDefinition: true, scopeLine: 1905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !870, variables: !5443)
!5443 = !{!5441}
!5444 = !DILocation(line: 0, scope: !5442, inlinedAt: !5445)
!5445 = distinct !DILocation(line: 1905, column: 1, scope: !5436, inlinedAt: !5439)
!5446 = !DILocation(line: 0, scope: !5418, inlinedAt: !5447)
!5447 = distinct !DILocation(line: 1909, column: 9, scope: !5448, inlinedAt: !5445)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !331, line: 1909, column: 9)
!5449 = distinct !DILexicalBlock(scope: !5442, file: !331, line: 1905, column: 1)
!5450 = !DILocation(line: 1224, column: 39, scope: !5418, inlinedAt: !5447)
!5451 = !DILocation(line: 1224, column: 47, scope: !5418, inlinedAt: !5447)
!5452 = !DILocation(line: 1224, column: 22, scope: !5418, inlinedAt: !5447)
!5453 = !DILocation(line: 1909, column: 9, scope: !5449, inlinedAt: !5445)
!5454 = !DILocalVariable(name: "this", arg: 1, scope: !5455, type: !5238, flags: DIFlagArtificial | DIFlagObjectPointer)
!5455 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !330, file: !331, line: 1302, type: !1164, isLocal: false, isDefinition: true, scopeLine: 1303, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1163, variables: !5456)
!5456 = !{!5454}
!5457 = !DILocation(line: 0, scope: !5455, inlinedAt: !5458)
!5458 = distinct !DILocation(line: 1910, column: 47, scope: !5459, inlinedAt: !5445)
!5459 = !DILexicalBlockFile(scope: !5448, file: !331, discriminator: 1)
!5460 = !DILocation(line: 1303, column: 34, scope: !5455, inlinedAt: !5458)
!5461 = !DILocalVariable(name: "__p", arg: 2, scope: !5462, file: !345, line: 1548, type: !367)
!5462 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !362, file: !345, line: 1548, type: !448, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !447, variables: !5463)
!5463 = !{!5464, !5461, !5465}
!5464 = !DILocalVariable(name: "__a", arg: 1, scope: !5462, file: !345, line: 1548, type: !419)
!5465 = !DILocalVariable(name: "__n", arg: 3, scope: !5462, file: !345, line: 1548, type: !361)
!5466 = !DILocation(line: 1548, column: 57, scope: !5462, inlinedAt: !5467)
!5467 = distinct !DILocation(line: 1910, column: 9, scope: !5468, inlinedAt: !5445)
!5468 = !DILexicalBlockFile(scope: !5448, file: !331, discriminator: 3)
!5469 = !DILocalVariable(name: "__p", arg: 2, scope: !5470, file: !345, line: 1788, type: !383)
!5470 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !374, file: !345, line: 1788, type: !406, isLocal: false, isDefinition: true, scopeLine: 1789, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !405, variables: !5471)
!5471 = !{!5472, !5469, !5473}
!5472 = !DILocalVariable(name: "this", arg: 1, scope: !5470, type: !5313, flags: DIFlagArtificial | DIFlagObjectPointer)
!5473 = !DILocalVariable(arg: 3, scope: !5470, file: !345, line: 1788, type: !398)
!5474 = !DILocation(line: 1788, column: 55, scope: !5470, inlinedAt: !5475)
!5475 = distinct !DILocation(line: 1549, column: 14, scope: !5462, inlinedAt: !5467)
!5476 = !DILocation(line: 230, column: 65, scope: !4721, inlinedAt: !5477)
!5477 = distinct !DILocation(line: 1789, column: 10, scope: !5470, inlinedAt: !5475)
!5478 = !DILocation(line: 234, column: 3, scope: !4721, inlinedAt: !5477)
!5479 = !DILocation(line: 1910, column: 9, scope: !5448, inlinedAt: !5445)
!5480 = !DILocation(line: 1355, column: 5, scope: !5186)
!5481 = !DILocation(line: 1367, column: 1, scope: !5378)
!5482 = !DILocation(line: 0, scope: !5436, inlinedAt: !5483)
!5483 = distinct !DILocation(line: 1355, column: 5, scope: !5186)
!5484 = !DILocation(line: 0, scope: !5442, inlinedAt: !5485)
!5485 = distinct !DILocation(line: 1905, column: 1, scope: !5436, inlinedAt: !5483)
!5486 = !DILocation(line: 0, scope: !5418, inlinedAt: !5487)
!5487 = distinct !DILocation(line: 1909, column: 9, scope: !5448, inlinedAt: !5485)
!5488 = !DILocation(line: 1224, column: 39, scope: !5418, inlinedAt: !5487)
!5489 = !DILocation(line: 1224, column: 47, scope: !5418, inlinedAt: !5487)
!5490 = !DILocation(line: 1224, column: 22, scope: !5418, inlinedAt: !5487)
!5491 = !DILocation(line: 1909, column: 9, scope: !5449, inlinedAt: !5485)
!5492 = !DILocation(line: 0, scope: !5455, inlinedAt: !5493)
!5493 = distinct !DILocation(line: 1910, column: 47, scope: !5459, inlinedAt: !5485)
!5494 = !DILocation(line: 1303, column: 34, scope: !5455, inlinedAt: !5493)
!5495 = !DILocation(line: 1548, column: 57, scope: !5462, inlinedAt: !5496)
!5496 = distinct !DILocation(line: 1910, column: 9, scope: !5468, inlinedAt: !5485)
!5497 = !DILocation(line: 1788, column: 55, scope: !5470, inlinedAt: !5498)
!5498 = distinct !DILocation(line: 1549, column: 14, scope: !5462, inlinedAt: !5496)
!5499 = !DILocation(line: 230, column: 65, scope: !4721, inlinedAt: !5500)
!5500 = distinct !DILocation(line: 1789, column: 10, scope: !5470, inlinedAt: !5498)
!5501 = !DILocation(line: 234, column: 3, scope: !4721, inlinedAt: !5500)
!5502 = !DILocation(line: 1910, column: 9, scope: !5448, inlinedAt: !5485)
!5503 = !DILocation(line: 1367, column: 1, scope: !5504)
!5504 = !DILexicalBlockFile(scope: !5170, file: !5171, discriminator: 3)
!5505 = !DILocation(line: 1356, column: 17, scope: !5170)
!5506 = !DILocation(line: 1357, column: 14, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5170, file: !5171, line: 1357, column: 9)
!5508 = !DILocation(line: 1357, column: 9, scope: !5170)
!5509 = !DILocation(line: 0, scope: !5216, inlinedAt: !5510)
!5510 = distinct !DILocation(line: 1359, column: 26, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !5171, line: 1359, column: 13)
!5512 = distinct !DILexicalBlock(scope: !5507, file: !5171, line: 1358, column: 5)
!5513 = !DILocation(line: 223, column: 39, scope: !5216, inlinedAt: !5510)
!5514 = !DILocation(line: 223, column: 55, scope: !5216, inlinedAt: !5510)
!5515 = !DILocation(line: 224, column: 14, scope: !5216, inlinedAt: !5510)
!5516 = !DILocation(line: 1359, column: 44, scope: !5511)
!5517 = !DILocation(line: 1359, column: 13, scope: !5512)
!5518 = !DILocalVariable(name: "this", arg: 1, scope: !5519, type: !5139, flags: DIFlagArtificial | DIFlagObjectPointer)
!5519 = distinct !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !32, file: !31, line: 509, type: !285, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !288, variables: !5520)
!5520 = !{!5518, !5521, !5522}
!5521 = !DILocalVariable(name: "__wide", arg: 2, scope: !5519, file: !31, line: 509, type: !77)
!5522 = !DILocalVariable(name: "__r", scope: !5519, file: !31, line: 511, type: !77)
!5523 = !DILocation(line: 0, scope: !5519, inlinedAt: !5524)
!5524 = distinct !DILocation(line: 1365, column: 11, scope: !5170)
!5525 = !DILocation(line: 509, column: 28, scope: !5519, inlinedAt: !5524)
!5526 = !DILocation(line: 512, column: 14, scope: !5519, inlinedAt: !5524)
!5527 = !DILocation(line: 1366, column: 5, scope: !5170)
!5528 = !DILocation(line: 1367, column: 1, scope: !5529)
!5529 = !DILexicalBlockFile(scope: !5170, file: !5171, discriminator: 2)
!5530 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !4424, file: !2190, line: 356, type: !4522, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4525, declaration: !4529, variables: !5531)
!5531 = !{!5532, !5533, !5534, !5537, !5682}
!5532 = !DILocalVariable(name: "this", arg: 1, scope: !5530, type: !4532, flags: DIFlagArtificial | DIFlagObjectPointer)
!5533 = !DILocalVariable(name: "__f", arg: 2, scope: !5530, file: !2190, line: 356, type: !4524)
!5534 = !DILocalVariable(name: "__tsp", scope: !5535, file: !2190, line: 359, type: !5536)
!5535 = distinct !DILexicalBlock(scope: !5530, file: !2190, line: 357, column: 1)
!5536 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !2190, line: 358, baseType: !2179)
!5537 = !DILocalVariable(name: "__p", scope: !5535, file: !2190, line: 361, type: !5538)
!5538 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !345, line: 2334, size: 64, elements: !5539, templateParams: !5654, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!5539 = !{!5540, !5623, !5628, !5632, !5635, !5638, !5648, !5659, !5660, !5665, !5670, !5673, !5676, !5679}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !5538, file: !345, line: 2344, baseType: !5541, size: 64)
!5541 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !345, line: 2144, size: 64, elements: !5542, templateParams: !5620, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!5542 = !{!5543, !5566, !5601, !5605, !5610, !5613, !5616}
!5543 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5541, baseType: !5544)
!5544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !7, file: !345, line: 2076, size: 64, elements: !5545, templateParams: !5564, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!5545 = !{!5546, !5547, !5551, !5556}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !5544, file: !345, line: 2105, baseType: !2167, size: 64, flags: DIFlagPrivate)
!5547 = !DISubprogram(name: "__compressed_pair_elem", scope: !5544, file: !345, line: 2082, type: !5548, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{null, !5550}
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5551 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !5544, file: !345, line: 2101, type: !5552, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!5554, !5550}
!5554 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !5544, file: !345, line: 2078, baseType: !5555)
!5555 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2167, size: 64)
!5556 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !5544, file: !345, line: 2102, type: !5557, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{!5559, !5562}
!5559 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !5544, file: !345, line: 2079, baseType: !5560)
!5560 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5561, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2167)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5544)
!5564 = !{!5565, !551, !552}
!5565 = !DITemplateTypeParameter(name: "_Tp", type: !2167)
!5566 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5541, baseType: !5567)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !7, file: !345, line: 2109, size: 8, elements: !5568, templateParams: !5599, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!5568 = !{!5569, !5583, !5587, !5592}
!5569 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !5567, baseType: !5570, flags: DIFlagPrivate)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !345, line: 2253, size: 8, elements: !5571, templateParams: !5581, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!5571 = !{!5572, !5576}
!5572 = !DISubprogram(name: "default_delete", scope: !5570, file: !345, line: 2257, type: !5573, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{null, !5575}
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5576 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !5570, file: !345, line: 2267, type: !5577, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{null, !5579, !2167}
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5570)
!5581 = !{!5582}
!5582 = !DITemplateTypeParameter(name: "_Tp", type: !2168)
!5583 = !DISubprogram(name: "__compressed_pair_elem", scope: !5567, file: !345, line: 2116, type: !5584, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !5586}
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5587 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !5567, file: !345, line: 2136, type: !5588, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!5590, !5586}
!5590 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !5567, file: !345, line: 2111, baseType: !5591)
!5591 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5570, size: 64)
!5592 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !5567, file: !345, line: 2137, type: !5593, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!5595, !5597}
!5595 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !5567, file: !345, line: 2112, baseType: !5596)
!5596 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5580, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5567)
!5599 = !{!5600, !575, !576}
!5600 = !DITemplateTypeParameter(name: "_Tp", type: !5570)
!5601 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !5541, file: !345, line: 2212, type: !5602, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!5554, !5604}
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5605 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !5541, file: !345, line: 2217, type: !5606, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!5559, !5608}
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5541)
!5610 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !5541, file: !345, line: 2222, type: !5611, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!5590, !5604}
!5613 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !5541, file: !345, line: 2227, type: !5614, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!5595, !5608}
!5616 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !5541, file: !345, line: 2232, type: !5617, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{null, !5604, !5619}
!5619 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5541, size: 64)
!5620 = !{!5621, !5622}
!5621 = !DITemplateTypeParameter(name: "_T1", type: !2167)
!5622 = !DITemplateTypeParameter(name: "_T2", type: !5570)
!5623 = !DISubprogram(name: "unique_ptr", scope: !5538, file: !345, line: 2427, type: !5624, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !5626, !5627}
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5627 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5538, size: 64)
!5628 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !5538, file: !345, line: 2450, type: !5629, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!5631, !5626, !5627}
!5631 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5538, size: 64)
!5632 = !DISubprogram(name: "~unique_ptr", scope: !5538, file: !345, line: 2539, type: !5633, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{null, !5626}
!5635 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !5538, file: !345, line: 2542, type: !5636, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{!5631, !5626, !2665}
!5638 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !5538, file: !345, line: 2549, type: !5639, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!5641, !5646}
!5641 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5642, file: !439, line: 1084, baseType: !5643)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !439, line: 1083, size: 8, elements: !370, templateParams: !5581, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5643 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5644, file: !439, line: 1081, baseType: !2833)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !7, file: !439, line: 1081, size: 8, elements: !370, templateParams: !5645, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!5645 = !{!5582, !240}
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5538)
!5648 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !5538, file: !345, line: 2553, type: !5649, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!5651, !5646}
!5651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !5538, file: !345, line: 2338, baseType: !5652)
!5652 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5653, file: !345, line: 1031, baseType: !5656)
!5653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !345, line: 1029, size: 8, elements: !370, templateParams: !5654, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!5654 = !{!5582, !5655}
!5655 = !DITemplateTypeParameter(name: "_Dp", type: !5570)
!5656 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5657, file: !345, line: 1023, baseType: !2167)
!5657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !417, file: !345, line: 1021, size: 8, elements: !370, templateParams: !5658, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!5658 = !{!5582, !5655, !189}
!5659 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !5538, file: !345, line: 2557, type: !5649, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5660 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !5538, file: !345, line: 2561, type: !5661, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!5663, !5626}
!5663 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5664, size: 64)
!5664 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !5538, file: !345, line: 2337, baseType: !5570)
!5665 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !5538, file: !345, line: 2565, type: !5666, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!5668, !5646}
!5668 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5669, size: 64)
!5669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5664)
!5670 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !5538, file: !345, line: 2569, type: !5671, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!117, !5646}
!5673 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !5538, file: !345, line: 2574, type: !5674, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!5651, !5626}
!5676 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !5538, file: !345, line: 2581, type: !5677, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !5626, !5651}
!5679 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !5538, file: !345, line: 2589, type: !5680, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!5680 = !DISubroutineType(types: !5681)
!5681 = !{null, !5626, !5631}
!5682 = !DILocalVariable(name: "__ec", scope: !5535, file: !2190, line: 365, type: !39)
!5683 = !DILocation(line: 0, scope: !5530)
!5684 = !DILocation(line: 356, column: 22, scope: !5530)
!5685 = !DILocation(line: 359, column: 18, scope: !5535)
!5686 = !DILocation(line: 359, column: 22, scope: !5535)
!5687 = !DILocation(line: 359, column: 12, scope: !5535)
!5688 = !DILocation(line: 362, column: 13, scope: !5535)
!5689 = !DILocation(line: 363, column: 21, scope: !5690)
!5690 = !DILexicalBlockFile(scope: !5535, file: !2190, discriminator: 1)
!5691 = !DILocalVariable(name: "__u", arg: 2, scope: !5692, file: !2169, line: 728, type: !2654)
!5692 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !2168, file: !2169, line: 728, type: !5693, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5696, declaration: !5699, variables: !5700)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{null, !2823, !2654, !5695}
!5695 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2747, size: 64)
!5696 = !{!5697, !5698, !189}
!5697 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !2816)
!5698 = !DITemplateValueParameter(name: "_PackIsTuple", type: !117, value: i8 0)
!5699 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !2168, file: !2169, line: 728, type: !5693, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !5696)
!5700 = !{!5701, !5691, !5702}
!5701 = !DILocalVariable(name: "this", arg: 1, scope: !5692, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5702 = !DILocalVariable(name: "__u", arg: 3, scope: !5692, file: !2169, line: 728, type: !5695)
!5703 = !DILocation(line: 728, column: 24, scope: !5692, inlinedAt: !5704)
!5704 = distinct !DILocation(line: 362, column: 17, scope: !5705)
!5705 = !DILexicalBlockFile(scope: !5535, file: !2190, discriminator: 2)
!5706 = !DILocalVariable(name: "__u", arg: 2, scope: !5707, file: !2169, line: 728, type: !2654)
!5707 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !2168, file: !2169, line: 728, type: !5693, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5696, declaration: !5699, variables: !5708)
!5708 = !{!5709, !5706, !5710}
!5709 = !DILocalVariable(name: "this", arg: 1, scope: !5707, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5710 = !DILocalVariable(name: "__u", arg: 3, scope: !5707, file: !2169, line: 728, type: !5695)
!5711 = !DILocation(line: 728, column: 24, scope: !5707, inlinedAt: !5712)
!5712 = distinct !DILocation(line: 742, column: 50, scope: !5692, inlinedAt: !5704)
!5713 = !DILocalVariable(name: "__u", arg: 6, scope: !5714, file: !2169, line: 382, type: !2654)
!5714 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !2173, file: !2169, line: 380, type: !5715, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5724, declaration: !5729, variables: !5730)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{null, !2786, !2808, !5717, !5718, !5721, !2654, !5695}
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2809, line: 253, size: 8, elements: !370, templateParams: !2868, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!5718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !7, file: !2809, line: 90, size: 8, elements: !370, templateParams: !5719, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!5719 = !{!5720}
!5720 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !370)
!5721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !7, file: !2809, line: 253, size: 8, elements: !370, templateParams: !5722, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!5722 = !{!5723}
!5723 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !370)
!5724 = !{!5725, !5726, !5727, !5728, !5697}
!5725 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !2812)
!5726 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !2816)
!5727 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !370)
!5728 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !370)
!5729 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !2173, file: !2169, line: 380, type: !5715, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5724)
!5730 = !{!5731, !5733, !5734, !5735, !5736, !5713, !5737}
!5731 = !DILocalVariable(name: "this", arg: 1, scope: !5714, type: !5732, flags: DIFlagArtificial | DIFlagObjectPointer)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!5733 = !DILocalVariable(arg: 2, scope: !5714, file: !2169, line: 380, type: !2808)
!5734 = !DILocalVariable(arg: 3, scope: !5714, file: !2169, line: 380, type: !5717)
!5735 = !DILocalVariable(arg: 4, scope: !5714, file: !2169, line: 381, type: !5718)
!5736 = !DILocalVariable(arg: 5, scope: !5714, file: !2169, line: 381, type: !5721)
!5737 = !DILocalVariable(name: "__u", arg: 7, scope: !5714, file: !2169, line: 382, type: !5695)
!5738 = !DILocation(line: 382, column: 31, scope: !5714, inlinedAt: !5739)
!5739 = distinct !DILocation(line: 738, column: 15, scope: !5707, inlinedAt: !5712)
!5740 = !DILocalVariable(name: "__u", arg: 6, scope: !5741, file: !2169, line: 382, type: !2654)
!5741 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !2173, file: !2169, line: 380, type: !5715, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5724, declaration: !5729, variables: !5742)
!5742 = !{!5743, !5744, !5745, !5746, !5747, !5740, !5748}
!5743 = !DILocalVariable(name: "this", arg: 1, scope: !5741, type: !5732, flags: DIFlagArtificial | DIFlagObjectPointer)
!5744 = !DILocalVariable(arg: 2, scope: !5741, file: !2169, line: 380, type: !2808)
!5745 = !DILocalVariable(arg: 3, scope: !5741, file: !2169, line: 380, type: !5717)
!5746 = !DILocalVariable(arg: 4, scope: !5741, file: !2169, line: 381, type: !5718)
!5747 = !DILocalVariable(arg: 5, scope: !5741, file: !2169, line: 381, type: !5721)
!5748 = !DILocalVariable(name: "__u", arg: 7, scope: !5741, file: !2169, line: 382, type: !5695)
!5749 = !DILocation(line: 382, column: 31, scope: !5741, inlinedAt: !5750)
!5750 = distinct !DILocation(line: 387, column: 13, scope: !5714, inlinedAt: !5739)
!5751 = !DILocalVariable(name: "__t", arg: 2, scope: !5752, file: !2169, line: 225, type: !2654)
!5752 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !2176, file: !2169, line: 225, type: !5753, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5755, declaration: !5757, variables: !5758)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{null, !2716, !2654}
!5755 = !{!5756, !4528}
!5756 = !DITemplateTypeParameter(name: "_Tp", type: !2179)
!5757 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !2176, file: !2169, line: 225, type: !5753, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5755)
!5758 = !{!5759, !5751}
!5759 = !DILocalVariable(name: "this", arg: 1, scope: !5752, type: !5760, flags: DIFlagArtificial | DIFlagObjectPointer)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!5761 = !DILocation(line: 225, column: 37, scope: !5752, inlinedAt: !5762)
!5762 = distinct !DILocation(line: 385, column: 13, scope: !5763, inlinedAt: !5750)
!5763 = !DILexicalBlockFile(scope: !5741, file: !2169, discriminator: 1)
!5764 = !DILocalVariable(name: "__u", arg: 2, scope: !5765, file: !345, line: 2427, type: !2654)
!5765 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !2179, file: !345, line: 2427, type: !2651, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2650, variables: !5766)
!5766 = !{!5767, !5764}
!5767 = !DILocalVariable(name: "this", arg: 1, scope: !5765, type: !5768, flags: DIFlagArtificial | DIFlagObjectPointer)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!5769 = !DILocation(line: 2427, column: 27, scope: !5765, inlinedAt: !5770)
!5770 = distinct !DILocation(line: 226, column: 15, scope: !5771, inlinedAt: !5762)
!5771 = !DILexicalBlockFile(scope: !5752, file: !2169, discriminator: 1)
!5772 = !DILocalVariable(name: "__u", arg: 2, scope: !5773, file: !345, line: 2427, type: !2654)
!5773 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !2179, file: !345, line: 2427, type: !2651, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2650, variables: !5774)
!5774 = !{!5775, !5772}
!5775 = !DILocalVariable(name: "this", arg: 1, scope: !5773, type: !5768, flags: DIFlagArtificial | DIFlagObjectPointer)
!5776 = !DILocation(line: 2427, column: 27, scope: !5773, inlinedAt: !5777)
!5777 = distinct !DILocation(line: 2428, column: 80, scope: !5765, inlinedAt: !5770)
!5778 = !DILocalVariable(name: "__t1", arg: 2, scope: !5779, file: !345, line: 2183, type: !5782)
!5779 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !2182, file: !345, line: 2183, type: !5780, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5784, declaration: !5787, variables: !5788)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{null, !2631, !5782, !5783}
!5782 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2188, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2597, size: 64)
!5784 = !{!5785, !5786}
!5785 = !DITemplateTypeParameter(name: "_U1", type: !2188)
!5786 = !DITemplateTypeParameter(name: "_U2", type: !2597)
!5787 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !2182, file: !345, line: 2183, type: !5780, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !5784)
!5788 = !{!5789, !5778, !5791}
!5789 = !DILocalVariable(name: "this", arg: 1, scope: !5779, type: !5790, flags: DIFlagArtificial | DIFlagObjectPointer)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!5791 = !DILocalVariable(name: "__t2", arg: 3, scope: !5779, file: !345, line: 2183, type: !5783)
!5792 = !DILocation(line: 2183, column: 27, scope: !5779, inlinedAt: !5793)
!5793 = distinct !DILocation(line: 2428, column: 9, scope: !5773, inlinedAt: !5777)
!5794 = !DILocalVariable(name: "__t1", arg: 2, scope: !5795, file: !345, line: 2183, type: !5782)
!5795 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !2182, file: !345, line: 2183, type: !5780, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5784, declaration: !5787, variables: !5796)
!5796 = !{!5797, !5794, !5798}
!5797 = !DILocalVariable(name: "this", arg: 1, scope: !5795, type: !5790, flags: DIFlagArtificial | DIFlagObjectPointer)
!5798 = !DILocalVariable(name: "__t2", arg: 3, scope: !5795, file: !345, line: 2183, type: !5783)
!5799 = !DILocation(line: 2183, column: 27, scope: !5795, inlinedAt: !5800)
!5800 = distinct !DILocation(line: 2184, column: 74, scope: !5779, inlinedAt: !5793)
!5801 = !DILocalVariable(name: "__u", arg: 2, scope: !5802, file: !345, line: 2088, type: !5782)
!5802 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !2185, file: !345, line: 2088, type: !5803, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5805, declaration: !5807, variables: !5808)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{null, !2577, !5782}
!5805 = !{!5806, !4528}
!5806 = !DITemplateTypeParameter(name: "_Up", type: !2188)
!5807 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !2185, file: !345, line: 2088, type: !5803, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5805)
!5808 = !{!5809, !5801}
!5809 = !DILocalVariable(name: "this", arg: 1, scope: !5802, type: !5810, flags: DIFlagArtificial | DIFlagObjectPointer)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!5811 = !DILocation(line: 2088, column: 32, scope: !5802, inlinedAt: !5812)
!5812 = distinct !DILocation(line: 2184, column: 9, scope: !5813, inlinedAt: !5800)
!5813 = !DILexicalBlockFile(scope: !5795, file: !345, discriminator: 1)
!5814 = !DILocation(line: 2089, column: 9, scope: !5802, inlinedAt: !5812)
!5815 = !{!5816, !4560, i64 0}
!5816 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !4560, i64 0}
!5817 = !DILocation(line: 387, column: 13, scope: !5741, inlinedAt: !5750)
!5818 = !DILocalVariable(name: "__t", arg: 2, scope: !5819, file: !2169, line: 225, type: !5695)
!5819 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !2744, file: !2169, line: 225, type: !5820, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !5822, declaration: !5824, variables: !5825)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{null, !2754, !5695}
!5822 = !{!5823, !4528}
!5823 = !DITemplateTypeParameter(name: "_Tp", type: !2747)
!5824 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !2744, file: !2169, line: 225, type: !5820, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !5822)
!5825 = !{!5826, !5818}
!5826 = !DILocalVariable(name: "this", arg: 1, scope: !5819, type: !5827, flags: DIFlagArtificial | DIFlagObjectPointer)
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!5828 = !DILocation(line: 225, column: 37, scope: !5819, inlinedAt: !5829)
!5829 = distinct !DILocation(line: 385, column: 13, scope: !5830, inlinedAt: !5750)
!5830 = !DILexicalBlockFile(scope: !5741, file: !2169, discriminator: 3)
!5831 = !DILocation(line: 226, column: 15, scope: !5819, inlinedAt: !5829)
!5832 = !{!5833, !4560, i64 0}
!5833 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !4560, i64 0}
!5834 = !DILocation(line: 361, column: 28, scope: !5535)
!5835 = !DILocation(line: 365, column: 40, scope: !5535)
!5836 = !DILocalVariable(name: "__t", arg: 1, scope: !5837, file: !2218, line: 321, type: !5840)
!5837 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !7, file: !2218, line: 321, type: !5838, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5844)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!39, !5840, !5841, !85}
!5840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DISubroutineType(types: !5843)
!5843 = !{!85, !85}
!5844 = !{!5836, !5845, !5846}
!5845 = !DILocalVariable(name: "__func", arg: 2, scope: !5837, file: !2218, line: 321, type: !5841)
!5846 = !DILocalVariable(name: "__arg", arg: 3, scope: !5837, file: !2218, line: 322, type: !85)
!5847 = !DILocation(line: 321, column: 47, scope: !5837, inlinedAt: !5848)
!5848 = distinct !DILocation(line: 365, column: 16, scope: !5535)
!5849 = !DILocation(line: 321, column: 60, scope: !5837, inlinedAt: !5848)
!5850 = !DILocation(line: 322, column: 34, scope: !5837, inlinedAt: !5848)
!5851 = !DILocation(line: 324, column: 10, scope: !5837, inlinedAt: !5848)
!5852 = !DILocation(line: 365, column: 9, scope: !5535)
!5853 = !DILocation(line: 366, column: 14, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5535, file: !2190, line: 366, column: 9)
!5855 = !DILocation(line: 366, column: 9, scope: !5535)
!5856 = !DILocalVariable(name: "this", arg: 1, scope: !5857, type: !5859, flags: DIFlagArtificial | DIFlagObjectPointer)
!5857 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !5538, file: !345, line: 2539, type: !5633, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5632, variables: !5858)
!5858 = !{!5856}
!5859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5860 = !DILocation(line: 0, scope: !5857, inlinedAt: !5861)
!5861 = distinct !DILocation(line: 370, column: 1, scope: !5862)
!5862 = !DILexicalBlockFile(scope: !5530, file: !2190, discriminator: 5)
!5863 = !DILocalVariable(name: "this", arg: 1, scope: !5864, type: !5859, flags: DIFlagArtificial | DIFlagObjectPointer)
!5864 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !5538, file: !345, line: 2539, type: !5633, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5632, variables: !5865)
!5865 = !{!5863}
!5866 = !DILocation(line: 0, scope: !5864, inlinedAt: !5867)
!5867 = distinct !DILocation(line: 2539, column: 17, scope: !5857, inlinedAt: !5861)
!5868 = !DILocalVariable(name: "this", arg: 1, scope: !5869, type: !5859, flags: DIFlagArtificial | DIFlagObjectPointer)
!5869 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !5538, file: !345, line: 2581, type: !5677, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5676, variables: !5870)
!5870 = !{!5868, !5871, !5872}
!5871 = !DILocalVariable(name: "__p", arg: 2, scope: !5869, file: !345, line: 2581, type: !5651)
!5872 = !DILocalVariable(name: "__tmp", scope: !5869, file: !345, line: 2582, type: !5651)
!5873 = !DILocation(line: 0, scope: !5869, inlinedAt: !5874)
!5874 = distinct !DILocation(line: 2539, column: 19, scope: !5875, inlinedAt: !5867)
!5875 = distinct !DILexicalBlock(scope: !5864, file: !345, line: 2539, column: 17)
!5876 = !DILocation(line: 2581, column: 22, scope: !5869, inlinedAt: !5874)
!5877 = !DILocation(line: 2582, column: 13, scope: !5869, inlinedAt: !5874)
!5878 = !DILocalVariable(name: "this", arg: 1, scope: !5879, type: !5768, flags: DIFlagArtificial | DIFlagObjectPointer)
!5879 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !2179, file: !345, line: 2539, type: !2660, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2659, variables: !5880)
!5880 = !{!5878}
!5881 = !DILocation(line: 0, scope: !5879, inlinedAt: !5882)
!5882 = distinct !DILocation(line: 370, column: 1, scope: !5883)
!5883 = !DILexicalBlockFile(scope: !5530, file: !2190, discriminator: 8)
!5884 = !DILocalVariable(name: "this", arg: 1, scope: !5885, type: !5768, flags: DIFlagArtificial | DIFlagObjectPointer)
!5885 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !2179, file: !345, line: 2539, type: !2660, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2659, variables: !5886)
!5886 = !{!5884}
!5887 = !DILocation(line: 0, scope: !5885, inlinedAt: !5888)
!5888 = distinct !DILocation(line: 2539, column: 17, scope: !5879, inlinedAt: !5882)
!5889 = !DILocalVariable(name: "this", arg: 1, scope: !5890, type: !5768, flags: DIFlagArtificial | DIFlagObjectPointer)
!5890 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !2179, file: !345, line: 2581, type: !2707, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2706, variables: !5891)
!5891 = !{!5889, !5892, !5893}
!5892 = !DILocalVariable(name: "__p", arg: 2, scope: !5890, file: !345, line: 2581, type: !2681)
!5893 = !DILocalVariable(name: "__tmp", scope: !5890, file: !345, line: 2582, type: !2681)
!5894 = !DILocation(line: 0, scope: !5890, inlinedAt: !5895)
!5895 = distinct !DILocation(line: 2539, column: 19, scope: !5896, inlinedAt: !5888)
!5896 = distinct !DILexicalBlock(scope: !5885, file: !345, line: 2539, column: 17)
!5897 = !DILocation(line: 2581, column: 22, scope: !5890, inlinedAt: !5895)
!5898 = !DILocation(line: 2582, column: 13, scope: !5890, inlinedAt: !5895)
!5899 = !DILocation(line: 370, column: 1, scope: !5862)
!5900 = !DILocation(line: 370, column: 1, scope: !5535)
!5901 = !DILocation(line: 359, column: 18, scope: !5705)
!5902 = !DILocation(line: 370, column: 1, scope: !5903)
!5903 = !DILexicalBlockFile(scope: !5535, file: !2190, discriminator: 3)
!5904 = !DILocation(line: 369, column: 9, scope: !5854)
!5905 = !DILocation(line: 369, column: 9, scope: !5906)
!5906 = !DILexicalBlockFile(scope: !5854, file: !2190, discriminator: 1)
!5907 = !DILocation(line: 370, column: 1, scope: !5908)
!5908 = !DILexicalBlockFile(scope: !5854, file: !2190, discriminator: 4)
!5909 = !DILocation(line: 370, column: 1, scope: !5910)
!5910 = !DILexicalBlockFile(scope: !5530, file: !2190, discriminator: 4)
!5911 = !DILocation(line: 0, scope: !5857, inlinedAt: !5912)
!5912 = distinct !DILocation(line: 370, column: 1, scope: !5913)
!5913 = !DILexicalBlockFile(scope: !5530, file: !2190, discriminator: 6)
!5914 = !DILocation(line: 0, scope: !5864, inlinedAt: !5915)
!5915 = distinct !DILocation(line: 2539, column: 17, scope: !5857, inlinedAt: !5912)
!5916 = !DILocation(line: 0, scope: !5869, inlinedAt: !5917)
!5917 = distinct !DILocation(line: 2539, column: 19, scope: !5875, inlinedAt: !5915)
!5918 = !DILocation(line: 2581, column: 22, scope: !5869, inlinedAt: !5917)
!5919 = !DILocation(line: 2581, column: 22, scope: !5890, inlinedAt: !5920)
!5920 = distinct !DILocation(line: 2539, column: 19, scope: !5896, inlinedAt: !5921)
!5921 = distinct !DILocation(line: 2539, column: 17, scope: !5879, inlinedAt: !5922)
!5922 = distinct !DILocation(line: 170, column: 7, scope: !5923, inlinedAt: !5928)
!5923 = distinct !DILexicalBlock(scope: !5924, file: !2169, line: 170, column: 7)
!5924 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !2176, file: !2169, line: 170, type: !2720, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5925, variables: !5926)
!5925 = !DISubprogram(name: "~__tuple_leaf", scope: !2176, type: !2720, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!5926 = !{!5927}
!5927 = !DILocalVariable(name: "this", arg: 1, scope: !5924, type: !5760, flags: DIFlagArtificial | DIFlagObjectPointer)
!5928 = distinct !DILocation(line: 369, column: 37, scope: !5929, inlinedAt: !5934)
!5929 = distinct !DILexicalBlock(scope: !5930, file: !2169, line: 369, column: 37)
!5930 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !2173, file: !2169, line: 369, type: !2784, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5931, variables: !5932)
!5931 = !DISubprogram(name: "~__tuple_impl", scope: !2173, type: !2784, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!5932 = !{!5933}
!5933 = !DILocalVariable(name: "this", arg: 1, scope: !5930, type: !5732, flags: DIFlagArtificial | DIFlagObjectPointer)
!5934 = distinct !DILocation(line: 369, column: 37, scope: !5935, inlinedAt: !5938)
!5935 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !2173, file: !2169, line: 369, type: !2784, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5931, variables: !5936)
!5936 = !{!5937}
!5937 = !DILocalVariable(name: "this", arg: 1, scope: !5935, type: !5732, flags: DIFlagArtificial | DIFlagObjectPointer)
!5938 = distinct !DILocation(line: 474, column: 28, scope: !5939, inlinedAt: !5946)
!5939 = distinct !DILexicalBlock(scope: !5940, file: !2169, line: 474, column: 28)
!5940 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !2168, file: !2169, line: 474, type: !5941, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5943, variables: !5944)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{null, !2823}
!5943 = !DISubprogram(name: "~tuple", scope: !2168, type: !5941, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!5944 = !{!5945}
!5945 = !DILocalVariable(name: "this", arg: 1, scope: !5940, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5946 = distinct !DILocation(line: 474, column: 28, scope: !5947, inlinedAt: !5950)
!5947 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !2168, file: !2169, line: 474, type: !5941, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5943, variables: !5948)
!5948 = !{!5949}
!5949 = !DILocalVariable(name: "this", arg: 1, scope: !5947, type: !2167, flags: DIFlagArtificial | DIFlagObjectPointer)
!5950 = distinct !DILocation(line: 2272, column: 5, scope: !5951, inlinedAt: !5957)
!5951 = !DILexicalBlockFile(scope: !5952, file: !345, discriminator: 1)
!5952 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !5570, file: !345, line: 2267, type: !5577, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !5576, variables: !5953)
!5953 = !{!5954, !5956}
!5954 = !DILocalVariable(name: "this", arg: 1, scope: !5952, type: !5955, flags: DIFlagArtificial | DIFlagObjectPointer)
!5955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5956 = !DILocalVariable(name: "__ptr", arg: 2, scope: !5952, file: !345, line: 2267, type: !2167)
!5957 = distinct !DILocation(line: 2585, column: 7, scope: !5958, inlinedAt: !5917)
!5958 = !DILexicalBlockFile(scope: !5959, file: !345, discriminator: 1)
!5959 = distinct !DILexicalBlock(scope: !5869, file: !345, line: 2584, column: 9)
!5960 = !DILocation(line: 2101, column: 40, scope: !5961, inlinedAt: !5964)
!5961 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2185, file: !345, line: 2101, type: !2579, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2578, variables: !5962)
!5962 = !{!5963}
!5963 = !DILocalVariable(name: "this", arg: 1, scope: !5961, type: !5810, flags: DIFlagArtificial | DIFlagObjectPointer)
!5964 = distinct !DILocation(line: 2213, column: 40, scope: !5965, inlinedAt: !5968)
!5965 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2182, file: !345, line: 2212, type: !2629, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2628, variables: !5966)
!5966 = !{!5967}
!5967 = !DILocalVariable(name: "this", arg: 1, scope: !5965, type: !5790, flags: DIFlagArtificial | DIFlagObjectPointer)
!5968 = distinct !DILocation(line: 2582, column: 28, scope: !5890, inlinedAt: !5920)
!5969 = !DILocation(line: 2582, column: 28, scope: !5890, inlinedAt: !5920)
!5970 = !DILocation(line: 2582, column: 13, scope: !5890, inlinedAt: !5920)
!5971 = !DILocation(line: 2583, column: 20, scope: !5890, inlinedAt: !5920)
!5972 = !DILocation(line: 2584, column: 9, scope: !5973, inlinedAt: !5920)
!5973 = distinct !DILexicalBlock(scope: !5890, file: !345, line: 2584, column: 9)
!5974 = !DILocation(line: 2584, column: 9, scope: !5890, inlinedAt: !5920)
!5975 = !DILocalVariable(name: "__ptr", arg: 2, scope: !5976, file: !345, line: 2267, type: !2188)
!5976 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2597, file: !345, line: 2267, type: !2604, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2603, variables: !5977)
!5977 = !{!5978, !5975}
!5978 = !DILocalVariable(name: "this", arg: 1, scope: !5976, type: !5979, flags: DIFlagArtificial | DIFlagObjectPointer)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!5980 = !DILocation(line: 2267, column: 50, scope: !5976, inlinedAt: !5981)
!5981 = distinct !DILocation(line: 2585, column: 7, scope: !5982, inlinedAt: !5920)
!5982 = !DILexicalBlockFile(scope: !5973, file: !345, discriminator: 1)
!5983 = !DILocation(line: 2272, column: 5, scope: !5984, inlinedAt: !5981)
!5984 = !DILexicalBlockFile(scope: !5976, file: !345, discriminator: 1)
!5985 = !DILocation(line: 2272, column: 5, scope: !5986, inlinedAt: !5981)
!5986 = !DILexicalBlockFile(scope: !5976, file: !345, discriminator: 2)
!5987 = !DILocation(line: 2585, column: 7, scope: !5973, inlinedAt: !5920)
!5988 = !DILocation(line: 2272, column: 5, scope: !5989, inlinedAt: !5957)
!5989 = !DILexicalBlockFile(scope: !5952, file: !345, discriminator: 2)
!5990 = !DILocation(line: 0, scope: !5879, inlinedAt: !5991)
!5991 = distinct !DILocation(line: 370, column: 1, scope: !5992)
!5992 = !DILexicalBlockFile(scope: !5530, file: !2190, discriminator: 7)
!5993 = !DILocation(line: 0, scope: !5885, inlinedAt: !5994)
!5994 = distinct !DILocation(line: 2539, column: 17, scope: !5879, inlinedAt: !5991)
!5995 = !DILocation(line: 0, scope: !5890, inlinedAt: !5996)
!5996 = distinct !DILocation(line: 2539, column: 19, scope: !5896, inlinedAt: !5994)
!5997 = !DILocation(line: 2581, column: 22, scope: !5890, inlinedAt: !5996)
!5998 = !DILocation(line: 2582, column: 13, scope: !5890, inlinedAt: !5996)
!5999 = !DILocation(line: 2584, column: 9, scope: !5890, inlinedAt: !5996)
!6000 = !DILocation(line: 370, column: 1, scope: !5690)
!6001 = !DILocation(line: 2267, column: 50, scope: !5976, inlinedAt: !6002)
!6002 = distinct !DILocation(line: 2585, column: 7, scope: !5982, inlinedAt: !5996)
!6003 = !DILocation(line: 2272, column: 5, scope: !5984, inlinedAt: !6002)
!6004 = !DILocation(line: 2272, column: 5, scope: !5986, inlinedAt: !6002)
!6005 = !DILocation(line: 2585, column: 7, scope: !5973, inlinedAt: !5996)
!6006 = !DILocation(line: 359, column: 18, scope: !5903)
!6007 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !7, file: !2190, line: 343, type: !5842, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6008, variables: !6010)
!6008 = !{!6009}
!6009 = !DITemplateTypeParameter(name: "_Fp", type: !2168)
!6010 = !{!6011, !6012}
!6011 = !DILocalVariable(name: "__vp", arg: 1, scope: !6007, file: !2190, line: 343, type: !85)
!6012 = !DILocalVariable(name: "__p", scope: !6007, file: !2190, line: 346, type: !5538)
!6013 = !DILocation(line: 343, column: 28, scope: !6007)
!6014 = !DILocation(line: 346, column: 26, scope: !6007)
!6015 = !DILocation(line: 347, column: 5, scope: !6007)
!6016 = !DILocation(line: 2101, column: 40, scope: !5961, inlinedAt: !6017)
!6017 = distinct !DILocation(line: 2213, column: 40, scope: !5965, inlinedAt: !6018)
!6018 = distinct !DILocation(line: 2575, column: 26, scope: !6019, inlinedAt: !6023)
!6019 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !2179, file: !345, line: 2574, type: !2704, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2703, variables: !6020)
!6020 = !{!6021, !6022}
!6021 = !DILocalVariable(name: "this", arg: 1, scope: !6019, type: !5768, flags: DIFlagArtificial | DIFlagObjectPointer)
!6022 = !DILocalVariable(name: "__t", scope: !6019, file: !345, line: 2575, type: !2681)
!6023 = distinct !DILocation(line: 347, column: 59, scope: !6024)
!6024 = !DILexicalBlockFile(scope: !6007, file: !2190, discriminator: 3)
!6025 = !DILocation(line: 2575, column: 26, scope: !6019, inlinedAt: !6023)
!6026 = !DILocation(line: 2576, column: 20, scope: !6019, inlinedAt: !6023)
!6027 = !DILocalVariable(name: "this", arg: 1, scope: !6028, type: !6063, flags: DIFlagArtificial | DIFlagObjectPointer)
!6028 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !6029, file: !2190, line: 194, type: !6059, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !6058, variables: !6061)
!6029 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !7, file: !2190, line: 138, size: 64, elements: !6030, templateParams: !2608, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!6030 = !{!6031, !6036, !6040, !6045, !6049, !6050, !6051, !6056, !6057, !6058}
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !6029, file: !2190, line: 140, baseType: !6032, size: 64)
!6032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !7, file: !2218, line: 75, baseType: !6033)
!6033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !6034, line: 30, baseType: !6035)
!6034 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fence2")
!6035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !2222, line: 112, baseType: !101)
!6036 = !DISubprogram(name: "__thread_specific_ptr", scope: !6029, file: !2190, line: 145, type: !6037, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{null, !6039}
!6039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6029, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!6040 = !DISubprogram(name: "__thread_specific_ptr", scope: !6029, file: !2190, line: 148, type: !6041, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{null, !6039, !6043}
!6043 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6044, size: 64)
!6044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6029)
!6045 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !6029, file: !2190, line: 149, type: !6046, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{!6048, !6039, !6043}
!6048 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6029, size: 64)
!6049 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !6029, file: !2190, line: 151, type: !3538, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!6050 = !DISubprogram(name: "~__thread_specific_ptr", scope: !6029, file: !2190, line: 156, type: !6037, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6051 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !6029, file: !2190, line: 159, type: !6052, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!6054, !6055}
!6054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !6029, file: !2190, line: 154, baseType: !2188)
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6044, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!6056 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !6029, file: !2190, line: 161, type: !6052, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6057 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !6029, file: !2190, line: 163, type: !6052, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6058 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !6029, file: !2190, line: 164, type: !6059, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{null, !6039, !6054}
!6061 = !{!6027, !6062}
!6062 = !DILocalVariable(name: "__p", arg: 2, scope: !6028, file: !2190, line: 164, type: !6054)
!6063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6029, size: 64)
!6064 = !DILocation(line: 0, scope: !6028, inlinedAt: !6065)
!6065 = distinct !DILocation(line: 347, column: 27, scope: !6066)
!6066 = !DILexicalBlockFile(scope: !6007, file: !2190, discriminator: 2)
!6067 = !DILocation(line: 198, column: 22, scope: !6028, inlinedAt: !6065)
!6068 = !{!6069, !4957, i64 0}
!6069 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !4957, i64 0}
!6070 = !DILocalVariable(name: "__key", arg: 1, scope: !6071, file: !2218, line: 385, type: !6032)
!6071 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !7, file: !2218, line: 385, type: !6072, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !6074)
!6072 = !DISubroutineType(types: !6073)
!6073 = !{!39, !6032, !85}
!6074 = !{!6070, !6075}
!6075 = !DILocalVariable(name: "__p", arg: 2, scope: !6071, file: !2218, line: 385, type: !85)
!6076 = !DILocation(line: 385, column: 39, scope: !6071, inlinedAt: !6077)
!6077 = distinct !DILocation(line: 198, column: 5, scope: !6028, inlinedAt: !6065)
!6078 = !DILocation(line: 385, column: 52, scope: !6071, inlinedAt: !6077)
!6079 = !DILocation(line: 387, column: 12, scope: !6071, inlinedAt: !6077)
!6080 = !DILocation(line: 270, column: 102, scope: !6081, inlinedAt: !6084)
!6081 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2744, file: !2169, line: 270, type: !2771, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2770, variables: !6082)
!6082 = !{!6083}
!6083 = !DILocalVariable(name: "this", arg: 1, scope: !6081, type: !5827, flags: DIFlagArtificial | DIFlagObjectPointer)
!6084 = distinct !DILocation(line: 951, column: 61, scope: !6085, inlinedAt: !6099)
!6085 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !2169, line: 948, type: !6086, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6096, variables: !6097)
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!6088, !2833}
!6088 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6089, size: 64)
!6089 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !6090, file: !2809, line: 463, baseType: !6092)
!6090 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2809, line: 460, size: 8, elements: !370, templateParams: !6091, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!6091 = !{!2781, !5582}
!6092 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !6093, file: !2809, line: 289, baseType: !2747)
!6093 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2809, line: 285, size: 8, elements: !370, templateParams: !6094, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!6094 = !{!2781, !6095}
!6095 = !DITemplateTypeParameter(name: "_Tp", type: !5717)
!6096 = !{!2781, !2815}
!6097 = !{!6098}
!6098 = !DILocalVariable(name: "__t", arg: 1, scope: !6085, file: !2169, line: 948, type: !2833)
!6099 = distinct !DILocation(line: 339, column: 26, scope: !6100, inlinedAt: !6110)
!6100 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !7, file: !2190, line: 337, type: !6101, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6103, variables: !6107)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{null, !2833, !5718}
!6103 = !{!6104, !6105, !4527, !6106}
!6104 = !DITemplateTypeParameter(name: "_TSp", type: !2179)
!6105 = !DITemplateTypeParameter(name: "_Fp", type: !2747)
!6106 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !370)
!6107 = !{!6108, !6109}
!6108 = !DILocalVariable(name: "__t", arg: 1, scope: !6100, file: !2190, line: 337, type: !2833)
!6109 = !DILocalVariable(arg: 2, scope: !6100, file: !2190, line: 337, type: !5718)
!6110 = distinct !DILocation(line: 349, column: 5, scope: !6111)
!6111 = !DILexicalBlockFile(scope: !6007, file: !2190, discriminator: 1)
!6112 = !DILocalVariable(name: "__f", arg: 1, scope: !6113, file: !439, line: 4322, type: !5695)
!6113 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !7, file: !439, line: 4322, type: !6114, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !6116, variables: !6117)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{null, !5695}
!6116 = !{!6105, !4527}
!6117 = !{!6112}
!6118 = !DILocation(line: 4322, column: 16, scope: !6113, inlinedAt: !6119)
!6119 = distinct !DILocation(line: 339, column: 5, scope: !6120, inlinedAt: !6110)
!6120 = !DILexicalBlockFile(scope: !6100, file: !2190, discriminator: 2)
!6121 = !DILocation(line: 4323, column: 1, scope: !6113, inlinedAt: !6119)
!6122 = !DILocation(line: 4323, column: 1, scope: !6123, inlinedAt: !6119)
!6123 = !DILexicalBlockFile(scope: !6113, file: !439, discriminator: 1)
!6124 = !DILocation(line: 0, scope: !5857, inlinedAt: !6125)
!6125 = distinct !DILocation(line: 351, column: 1, scope: !6007)
!6126 = !DILocation(line: 0, scope: !5864, inlinedAt: !6127)
!6127 = distinct !DILocation(line: 2539, column: 17, scope: !5857, inlinedAt: !6125)
!6128 = !DILocation(line: 0, scope: !5869, inlinedAt: !6129)
!6129 = distinct !DILocation(line: 2539, column: 19, scope: !5875, inlinedAt: !6127)
!6130 = !DILocation(line: 2581, column: 22, scope: !5869, inlinedAt: !6129)
!6131 = !DILocation(line: 2581, column: 22, scope: !5890, inlinedAt: !6132)
!6132 = distinct !DILocation(line: 2539, column: 19, scope: !5896, inlinedAt: !6133)
!6133 = distinct !DILocation(line: 2539, column: 17, scope: !5879, inlinedAt: !6134)
!6134 = distinct !DILocation(line: 170, column: 7, scope: !5923, inlinedAt: !6135)
!6135 = distinct !DILocation(line: 369, column: 37, scope: !5929, inlinedAt: !6136)
!6136 = distinct !DILocation(line: 369, column: 37, scope: !5935, inlinedAt: !6137)
!6137 = distinct !DILocation(line: 474, column: 28, scope: !5939, inlinedAt: !6138)
!6138 = distinct !DILocation(line: 474, column: 28, scope: !5947, inlinedAt: !6139)
!6139 = distinct !DILocation(line: 2272, column: 5, scope: !5951, inlinedAt: !6140)
!6140 = distinct !DILocation(line: 2585, column: 7, scope: !5958, inlinedAt: !6129)
!6141 = !DILocation(line: 2582, column: 28, scope: !5890, inlinedAt: !6132)
!6142 = !DILocation(line: 2582, column: 13, scope: !5890, inlinedAt: !6132)
!6143 = !DILocation(line: 2583, column: 20, scope: !5890, inlinedAt: !6132)
!6144 = !DILocation(line: 2584, column: 9, scope: !5973, inlinedAt: !6132)
!6145 = !DILocation(line: 2584, column: 9, scope: !5890, inlinedAt: !6132)
!6146 = !DILocation(line: 2267, column: 50, scope: !5976, inlinedAt: !6147)
!6147 = distinct !DILocation(line: 2585, column: 7, scope: !5982, inlinedAt: !6132)
!6148 = !DILocation(line: 2272, column: 5, scope: !5984, inlinedAt: !6147)
!6149 = !DILocation(line: 2272, column: 5, scope: !5986, inlinedAt: !6147)
!6150 = !DILocation(line: 2585, column: 7, scope: !5973, inlinedAt: !6132)
!6151 = !DILocation(line: 2272, column: 5, scope: !5989, inlinedAt: !6140)
!6152 = !DILocation(line: 351, column: 1, scope: !6007)
!6153 = !DILocation(line: 351, column: 1, scope: !6111)
!6154 = !DILocation(line: 0, scope: !5857, inlinedAt: !6155)
!6155 = distinct !DILocation(line: 351, column: 1, scope: !6111)
!6156 = !DILocation(line: 0, scope: !5864, inlinedAt: !6157)
!6157 = distinct !DILocation(line: 2539, column: 17, scope: !5857, inlinedAt: !6155)
!6158 = !DILocation(line: 0, scope: !5869, inlinedAt: !6159)
!6159 = distinct !DILocation(line: 2539, column: 19, scope: !5875, inlinedAt: !6157)
!6160 = !DILocation(line: 2581, column: 22, scope: !5869, inlinedAt: !6159)
!6161 = !DILocation(line: 2584, column: 9, scope: !5869, inlinedAt: !6159)
!6162 = !DILocation(line: 2584, column: 9, scope: !5959, inlinedAt: !6159)
!6163 = !DILocation(line: 2101, column: 40, scope: !5961, inlinedAt: !6164)
!6164 = distinct !DILocation(line: 2213, column: 40, scope: !5965, inlinedAt: !6165)
!6165 = distinct !DILocation(line: 2582, column: 28, scope: !5890, inlinedAt: !6166)
!6166 = distinct !DILocation(line: 2539, column: 19, scope: !5896, inlinedAt: !6167)
!6167 = distinct !DILocation(line: 2539, column: 17, scope: !5879, inlinedAt: !6168)
!6168 = distinct !DILocation(line: 170, column: 7, scope: !5923, inlinedAt: !6169)
!6169 = distinct !DILocation(line: 369, column: 37, scope: !5929, inlinedAt: !6170)
!6170 = distinct !DILocation(line: 369, column: 37, scope: !5935, inlinedAt: !6171)
!6171 = distinct !DILocation(line: 474, column: 28, scope: !5939, inlinedAt: !6172)
!6172 = distinct !DILocation(line: 474, column: 28, scope: !5947, inlinedAt: !6173)
!6173 = distinct !DILocation(line: 2272, column: 5, scope: !5951, inlinedAt: !6174)
!6174 = distinct !DILocation(line: 2585, column: 7, scope: !5958, inlinedAt: !6159)
!6175 = !DILocation(line: 2581, column: 22, scope: !5890, inlinedAt: !6166)
!6176 = !DILocation(line: 2582, column: 28, scope: !5890, inlinedAt: !6166)
!6177 = !DILocation(line: 2582, column: 13, scope: !5890, inlinedAt: !6166)
!6178 = !DILocation(line: 2583, column: 20, scope: !5890, inlinedAt: !6166)
!6179 = !DILocation(line: 2584, column: 9, scope: !5973, inlinedAt: !6166)
!6180 = !DILocation(line: 2584, column: 9, scope: !5890, inlinedAt: !6166)
!6181 = !DILocation(line: 2267, column: 50, scope: !5976, inlinedAt: !6182)
!6182 = distinct !DILocation(line: 2585, column: 7, scope: !5982, inlinedAt: !6166)
!6183 = !DILocation(line: 2272, column: 5, scope: !5984, inlinedAt: !6182)
!6184 = !DILocation(line: 2272, column: 5, scope: !5986, inlinedAt: !6182)
!6185 = !DILocation(line: 2585, column: 7, scope: !5973, inlinedAt: !6166)
!6186 = !DILocation(line: 2272, column: 5, scope: !5989, inlinedAt: !6174)
!6187 = !DILocation(line: 2585, column: 7, scope: !5959, inlinedAt: !6159)
!6188 = !DILocation(line: 351, column: 1, scope: !6066)
