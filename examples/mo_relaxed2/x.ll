; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.1, [23 x i8] }
%union.anon.1 = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr.6" = type { %"class.std::__1::__compressed_pair.7" }
%"class.std::__1::__compressed_pair.7" = type { %"struct.std::__1::__compressed_pair_elem.8" }
%"struct.std::__1::__compressed_pair_elem.8" = type { %"class.std::__1::tuple"* }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.9" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.9" = type { void ()* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@data1 = global i32 0, align 4, !dbg !0
@data2 = global i32 0, align 4, !dbg !2577
@x = global { i32 } zeroinitializer, align 4, !dbg !2579
@y = global { i32 } zeroinitializer, align 4, !dbg !2581
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"!(data1 == 1 && data2 == 1)\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z2f1v() #0 !dbg !3485 {
entry:
  tail call void @checker_thread_begin(), !dbg !3486
  tail call void @checker_shared(i8* bitcast (i32* @data1 to i8*)), !dbg !3487
  tail call void @checker_shared(i8* bitcast (i32* @data2 to i8*)), !dbg !3488
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3489, metadata !3494), !dbg !3495
  %myCast = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  %0 = call i32 @preAtomicLoad_int(i8* %myCast, i32 2)
  %newLoad = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) monotonic, align 4
  %1 = icmp eq i32 %0, 255
  %mySelect = select i1 %1, i32 %newLoad, i32 %0
  %2 = call i32 @postAtomicLoad_int(i8* %myCast, i32 %mySelect, i32 2)
  %myCast1 = bitcast i32* @data1 to i8*
  call void @preNonAtomicStore_int(i8* %myCast1, i32 %mySelect), !dbg !3497
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3498, metadata !3494), !dbg !3504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3503, metadata !3494), !dbg !3506
  %myCast2 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast2, i32 1, i32 2)
  store atomic i32 1, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) monotonic, align 4, !dbg !3507
  tail call void @checker_thread_end(), !dbg !3509
  ret void, !dbg !3510
}

declare void @checker_thread_begin() local_unnamed_addr #1

declare void @checker_shared(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define void @_Z2f2v() #2 !dbg !3511 {
entry:
  ret void, !dbg !3512
}

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3513 {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  tail call void @checker_generateExecutor(), !dbg !3592
  tail call void @checker_thread_begin(), !dbg !3593
  %0 = bitcast %"class.std::__1::thread"* %a to i8*, !dbg !3594
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #11, !dbg !3594
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3515, metadata !3595), !dbg !3596
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3597, metadata !3494), !dbg !3610
  tail call void @llvm.dbg.value(metadata void ()* @_Z2f1v, i64 0, metadata !3608, metadata !3494), !dbg !3612
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2f1v), !dbg !3613
  %1 = bitcast %"class.std::__1::thread"* %b to i8*, !dbg !3614
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #11, !dbg !3614
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !3597, metadata !3494), !dbg !3615
  call void @llvm.dbg.value(metadata void ()* @_Z2f2v, i64 0, metadata !3608, metadata !3494), !dbg !3617
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad, !dbg !3618

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3515, metadata !3595), !dbg !3596
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3619, metadata !3494), !dbg !3623
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !dbg !3625
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i, i64 0, metadata !3626, metadata !3494), !dbg !3633
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !dbg !3635, !tbaa !3636
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont3 unwind label %lpad2, !dbg !3640

invoke.cont3:                                     ; preds = %invoke.cont
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !3591, metadata !3595), !dbg !3641
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !3619, metadata !3494), !dbg !3642
  %__t_.i38 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !dbg !3644
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i38, i64 0, metadata !3626, metadata !3494), !dbg !3645
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i38, align 8, !dbg !3647, !tbaa !3636
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont8 unwind label %lpad2, !dbg !3648

invoke.cont8:                                     ; preds = %invoke.cont3
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3515, metadata !3595), !dbg !3596
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3619, metadata !3494), !dbg !3649
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i, i64 0, metadata !3626, metadata !3494), !dbg !3651
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !dbg !3653, !tbaa !3636
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %4)
          to label %invoke.cont13 unwind label %lpad2, !dbg !3654

invoke.cont13:                                    ; preds = %invoke.cont8
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !3591, metadata !3595), !dbg !3641
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !3619, metadata !3494), !dbg !3655
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i38, i64 0, metadata !3626, metadata !3494), !dbg !3657
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i38, align 8, !dbg !3659, !tbaa !3636
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %5)
          to label %invoke.cont18 unwind label %lpad2, !dbg !3660

invoke.cont18:                                    ; preds = %invoke.cont13
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont19 unwind label %lpad2, !dbg !3661

invoke.cont19:                                    ; preds = %invoke.cont18
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont20 unwind label %lpad2, !dbg !3662

invoke.cont20:                                    ; preds = %invoke.cont19
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, i64 0, metadata !3664, metadata !3494), !dbg !3671
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 0, metadata !3670, metadata !3494), !dbg !3673
  %call1.i45 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
          to label %invoke.cont21 unwind label %lpad2, !dbg !3674

invoke.cont21:                                    ; preds = %invoke.cont20
  %6 = load i32, i32* @data1, align 4, !dbg !3676, !tbaa !3677
  %call24 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i45, i32 %6)
          to label %invoke.cont23 unwind label %lpad2, !dbg !3679

invoke.cont23:                                    ; preds = %invoke.cont21
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %call24, i64 0, metadata !3664, metadata !3494), !dbg !3680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !3670, metadata !3494), !dbg !3683
  %call1.i41 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
          to label %invoke.cont25 unwind label %lpad2, !dbg !3684

invoke.cont25:                                    ; preds = %invoke.cont23
  %7 = load i32, i32* @data2, align 4, !dbg !3685, !tbaa !3677
  %call28 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i41, i32 %7)
          to label %invoke.cont27 unwind label %lpad2, !dbg !3687

invoke.cont27:                                    ; preds = %invoke.cont25
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %call28, i64 0, metadata !3664, metadata !3494), !dbg !3688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 0, metadata !3670, metadata !3494), !dbg !3691
  %call1.i37 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
          to label %invoke.cont29 unwind label %lpad2, !dbg !3692

invoke.cont29:                                    ; preds = %invoke.cont27
  %8 = load i32, i32* @data1, align 4, !dbg !3693, !tbaa !3677
  %cmp = icmp eq i32 %8, 1, !dbg !3693
  %9 = load i32, i32* @data2, align 4, !dbg !3694
  %cmp31 = icmp eq i32 %9, 1, !dbg !3694
  %10 = and i1 %cmp, %cmp31, !dbg !3693
  br i1 %10, label %cond.true, label %cond.end, !dbg !3695, !prof !3696

cond.true:                                        ; preds = %invoke.cont29
  invoke void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #12
          to label %invoke.cont33 unwind label %lpad2, !dbg !3697

invoke.cont33:                                    ; preds = %cond.true
  unreachable, !dbg !3698

lpad:                                             ; preds = %entry
  %11 = landingpad { i8*, i32 }
          cleanup, !dbg !3699
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !3699
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !3699
  br label %ehcleanup, !dbg !3699

lpad2:                                            ; preds = %invoke.cont20, %invoke.cont23, %invoke.cont27, %cond.end, %cond.true, %invoke.cont25, %invoke.cont21, %invoke.cont19, %invoke.cont18, %invoke.cont13, %invoke.cont8, %invoke.cont3, %invoke.cont
  %14 = landingpad { i8*, i32 }
          cleanup, !dbg !3700
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !3700
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !3700
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !3591, metadata !3595), !dbg !3641
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11, !dbg !3700
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #11, !dbg !3699
  br label %ehcleanup, !dbg !3700

cond.end:                                         ; preds = %invoke.cont29
  invoke void @checker_thread_end()
          to label %invoke.cont34 unwind label %lpad2, !dbg !3701

invoke.cont34:                                    ; preds = %cond.end
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !3591, metadata !3595), !dbg !3641
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #11, !dbg !3702
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #11, !dbg !3699
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3515, metadata !3595), !dbg !3596
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11, !dbg !3703
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #11, !dbg !3699
  ret i32 0, !dbg !3702

ehcleanup:                                        ; preds = %lpad2, %lpad
  %ehselector.slot.0 = phi i32 [ %16, %lpad2 ], [ %13, %lpad ]
  %exn.slot.0 = phi i8* [ %15, %lpad2 ], [ %12, %lpad ]
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !3515, metadata !3595), !dbg !3596
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #11, !dbg !3705
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #11, !dbg !3699
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !dbg !3706
  %lpad.val36 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !dbg !3706
  resume { i8*, i32 } %lpad.val36, !dbg !3706
}

declare void @checker_generateExecutor() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #8 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1411 {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !1726, metadata !3494), !dbg !3707
  tail call void @llvm.dbg.value(metadata i8* %__str, i64 0, metadata !1727, metadata !3494), !dbg !3708
  tail call void @llvm.dbg.value(metadata i64 %__len, i64 0, metadata !1728, metadata !3494), !dbg !3709
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0, !dbg !3710
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #11, !dbg !3710
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad, !dbg !3711

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !1729, metadata !3595), !dbg !3711
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !3712, metadata !3494), !dbg !3716
  %1 = load i8, i8* %0, align 8, !dbg !3719, !tbaa !3720, !range !3723
  %tobool.i = icmp eq i8 %1, 0, !dbg !3719
  br i1 %tobool.i, label %if.end28, label %if.then, !dbg !3724

if.then:                                          ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !3726, metadata !3494), !dbg !3731
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !3729, metadata !3494), !dbg !3735
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !3736, metadata !3494), !dbg !3740
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* %__os, i64 0, metadata !3739, metadata !3494), !dbg !3742
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !dbg !3743
  %vtable.i.i = load i8*, i8** %2, align 8, !dbg !3743, !tbaa !3744
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !dbg !3743
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !dbg !3743
  %vbase.offset.i.i = load i64, i64* %3, align 8, !dbg !3743
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !dbg !3743
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i, !dbg !3743
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40, !dbg !3746
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**, !dbg !3746
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !dbg !3746, !tbaa !3757
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*, !dbg !3760
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %7, i64 0, metadata !3761, metadata !3494), !dbg !3764
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8, !dbg !3766
  %8 = bitcast i8* %__fmtflags_.i to i32*, !dbg !3766
  %9 = load i32, i32* %8, align 8, !dbg !3766, !tbaa !3767
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len, !dbg !3768
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144, !dbg !3769
  %10 = bitcast i8* %__fill_.i to i32*, !dbg !3769
  %11 = load i32, i32* %10, align 8, !dbg !3769, !tbaa !3775
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3777, metadata !3494), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !3780, metadata !3494), !dbg !3784
  %cmp.i.i = icmp eq i32 %11, -1, !dbg !3785
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16, !dbg !3786

if.then.i:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata i8 32, i64 0, metadata !3787, metadata !3494), !dbg !3791
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*, !dbg !3793
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #11, !dbg !3793
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3, !dbg !3793

.noexc:                                           ; preds = %if.then.i
  call void @llvm.dbg.value(metadata %"class.std::__1::locale"* %ref.tmp.i.i, i64 0, metadata !3794, metadata !3494), !dbg !3890
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i, !dbg !3892

invoke.cont.i.i:                                  ; preds = %.noexc
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !dbg !3893
  call void @llvm.dbg.value(metadata %"class.std::__1::ctype"* %13, i64 0, metadata !3894, metadata !3494), !dbg !3899
  call void @llvm.dbg.value(metadata i8 32, i64 0, metadata !3897, metadata !3494), !dbg !3902
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***, !dbg !3903
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !dbg !3903, !tbaa !3744
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !dbg !3903
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !dbg !3903
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !dbg !3903

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3904
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #11, !dbg !3905
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #11, !dbg !3907
  br label %ehcleanup

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #11, !dbg !3908
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #11, !dbg !3907
  %conv.i = sext i8 %call.i6.i.i to i32, !dbg !3910
  %myCast = bitcast i32* %10 to i8*
  call void @preNonAtomicStore_int(i8* %myCast, i32 %conv.i), !dbg !3911
  br label %invoke.cont16, !dbg !3912

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ], !dbg !3913
  %conv6.i = trunc i32 %17 to i8, !dbg !3913
  %and = and i32 %9, 176, !dbg !3914
  %cmp = icmp eq i32 %and, 32, !dbg !3916
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str, !dbg !3917
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3, !dbg !3918

invoke.cont18:                                    ; preds = %invoke.cont16
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ostreambuf_iterator"* undef, i64 0, metadata !3919, metadata !3494), !dbg !3923
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null, !dbg !3925
  br i1 %cmp.i, label %if.then22, label %if.end28, !dbg !3926

if.then22:                                        ; preds = %invoke.cont18
  %vtable23 = load i8*, i8** %2, align 8, !dbg !3928, !tbaa !3744
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24, !dbg !3928
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*, !dbg !3928
  %vbase.offset25 = load i64, i64* %18, align 8, !dbg !3928
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25, !dbg !3928
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3929, metadata !3494), !dbg !3934
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*, !dbg !3936
  call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %19, i64 0, metadata !3937, metadata !3494), !dbg !3942
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3940, metadata !3494), !dbg !3944
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32, !dbg !3945
  %20 = bitcast i8* %__rdstate_.i.i to i32*, !dbg !3945
  %21 = load i32, i32* %20, align 8, !dbg !3945, !tbaa !3946
  %or.i.i = or i32 %21, 5, !dbg !3947
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1, !dbg !3948

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3949
  %23 = extractvalue { i8*, i32 } %22, 0, !dbg !3949
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**, !dbg !3950
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*, !dbg !3950
  br label %catch, !dbg !3949

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3952
  br label %ehcleanup, !dbg !3952

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3954
  br label %ehcleanup, !dbg !3954

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !1729, metadata !3595), !dbg !3711
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #11, !dbg !3956
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #11, !dbg !3956
  br label %try.cont, !dbg !3957

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ]
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, metadata !1729, metadata !3595), !dbg !3711
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #11, !dbg !3958
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #11, !dbg !3956
  br label %catch, !dbg !3958

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ], !dbg !3950
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ], !dbg !3950
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ]
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #11, !dbg !3960
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !dbg !3950, !tbaa !3744
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24, !dbg !3950
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*, !dbg !3950
  %vbase.offset32 = load i64, i64* %28, align 8, !dbg !3950
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32, !dbg !3950
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*, !dbg !3950
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34, !dbg !3962

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch(), !dbg !3963
  br label %try.cont, !dbg !3963

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os, !dbg !3964

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup, !dbg !3965
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad, !dbg !3967

eh.resume:                                        ; preds = %lpad34
  resume { i8*, i32 } %30, !dbg !3969

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3970
  %32 = extractvalue { i8*, i32 } %31, 0, !dbg !3970
  call void @__clang_call_terminate(i8* %32) #13, !dbg !3970
  unreachable, !dbg !3970
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3972 {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !3977, metadata !3494), !dbg !3989
  tail call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"* undef, metadata !3977, metadata !3494), !dbg !3989
  tail call void @llvm.dbg.value(metadata i8* %__ob, i64 0, metadata !3978, metadata !3494), !dbg !3990
  tail call void @llvm.dbg.value(metadata i8* %__op, i64 0, metadata !3979, metadata !3494), !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %__oe, i64 0, metadata !3980, metadata !3494), !dbg !3992
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !3981, metadata !3494), !dbg !3993
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !3982, metadata !3494), !dbg !3994
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null, !dbg !3995
  br i1 %cmp, label %return, label %if.end, !dbg !3997

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64, !dbg !3998
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64, !dbg !3998
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3998
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, i64 0, metadata !3983, metadata !3494), !dbg !3999
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !4000, metadata !3494), !dbg !4003
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3, !dbg !4005
  %0 = load i64, i64* %__width_.i, align 8, !dbg !4005, !tbaa !4006
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3984, metadata !3494), !dbg !4007
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub, !dbg !4008
  %sub = sub nsw i64 %0, %sub.ptr.sub, !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !3984, metadata !3494), !dbg !4007
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0, !dbg !4011
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !3984, metadata !3494), !dbg !4007
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64, !dbg !4012
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast, !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub6, i64 0, metadata !3985, metadata !3494), !dbg !4013
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !dbg !4014
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !4016

if.then8:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !4017, metadata !3494), !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %__ob, i64 0, metadata !4020, metadata !3494), !dbg !4026
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub6, i64 0, metadata !4021, metadata !3494), !dbg !4027
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4028
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !dbg !4028, !tbaa !3744
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12, !dbg !4028
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8, !dbg !4028
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6), !dbg !4028
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6, !dbg !4029
  br i1 %cmp11, label %if.end15, label %return, !dbg !4030

if.end15:                                         ; preds = %if.then8, %if.end
  %cmp16 = icmp sgt i64 %__ns.0, 0, !dbg !4031
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26, !dbg !4032

if.end.i.i.i:                                     ; preds = %if.end15
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*, !dbg !4033
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #11, !dbg !4033
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !3986, metadata !3595), !dbg !4034
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4035, metadata !3494), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4038, metadata !3494), !dbg !4043
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !4039, metadata !3494), !dbg !4044
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4045, metadata !3494), !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4048, metadata !3494), !dbg !4052
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !4049, metadata !3494), !dbg !4053
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #11, !dbg !4054
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4074, metadata !3494), !dbg !4083
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4077, metadata !3494), !dbg !4086
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !4078, metadata !3494), !dbg !4087
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23, !dbg !4088
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i, !dbg !4089

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4090, metadata !3494), !dbg !4093
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16, !dbg !4095
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16, !dbg !4103
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !4104, metadata !3494), !dbg !4108
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !4111, metadata !3494), !dbg !4117
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4116, metadata !3494), !dbg !4119
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !4120, metadata !3494), !dbg !4124
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #14, !dbg !4126
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i.i.i, i64 0, metadata !4079, metadata !3494), !dbg !4127
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4128, metadata !3494), !dbg !4132
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i.i.i, i64 0, metadata !4131, metadata !3494), !dbg !4134
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4135
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !dbg !4136, !tbaa !4137
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4139, metadata !3494), !dbg !4143
  tail call void @llvm.dbg.value(metadata i64 %and.i.i.i.i.i, i64 0, metadata !4142, metadata !3494), !dbg !4145
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1, !dbg !4146
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4147
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !dbg !4148, !tbaa !4149
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4150, metadata !3494), !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4153, metadata !3494), !dbg !4156
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4157
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !dbg !4158, !tbaa !4159
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4160, metadata !3494) #11, !dbg !4165
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !4164, metadata !3494) #11, !dbg !4168
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !4169
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0, !dbg !4185
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit, !dbg !4186

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4187, metadata !3494), !dbg !4191
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4190, metadata !3494), !dbg !4194
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8, !dbg !4195
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1, !dbg !4195
  store i8 %conv.i.i.i.i, i8* %3, align 8, !dbg !4196, !tbaa !4197
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4198, metadata !3494), !dbg !4201
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !4203
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0, !dbg !4204
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !4079, metadata !3494), !dbg !4127
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !4079, metadata !3494), !dbg !4127
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i.i, i64 0, metadata !4163, metadata !3494) #11, !dbg !4205
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4160, metadata !3494) #11, !dbg !4165
  tail call void @llvm.dbg.value(metadata i8 %__fl, i64 0, metadata !4164, metadata !3494) #11, !dbg !4168
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4206
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ], !dbg !4185
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ], !dbg !4206
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ]
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #11, !dbg !4212
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0, !dbg !4213
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i, i64 0, metadata !4214, metadata !3494), !dbg !4218
  store i8 0, i8* %arrayidx.i.i.i, align 1, !dbg !4220, !tbaa !4197
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !3986, metadata !3595), !dbg !4034
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4182, metadata !3494), !dbg !4221
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4178, metadata !3494), !dbg !4222
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4223, metadata !3494), !dbg !4226
  %4 = load i8, i8* %3, align 8, !dbg !4228, !tbaa !4197
  %5 = and i8 %4, 1, !dbg !4229
  %tobool.i.i.i = icmp eq i8 %5, 0, !dbg !4230
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4209, metadata !3494), !dbg !4231
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !4206
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4172, metadata !3494), !dbg !4232
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6, !dbg !4233
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !4017, metadata !3494), !dbg !4234
  tail call void @llvm.dbg.value(metadata i8* %cond.i.i, i64 0, metadata !4020, metadata !3494), !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 %__ns.0, i64 0, metadata !4021, metadata !3494), !dbg !4237
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4238
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !dbg !4238, !tbaa !3744
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12, !dbg !4238
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8, !dbg !4238
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad, !dbg !4238

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0, !dbg !4239
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !3986, metadata !3595), !dbg !4034
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4241, metadata !3494) #11, !dbg !4244
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4247, metadata !3494) #11, !dbg !4250
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4223, metadata !3494) #11, !dbg !4252
  %9 = load i8, i8* %3, align 8, !dbg !4256, !tbaa !4197
  %10 = and i8 %9, 1, !dbg !4257
  %tobool.i.i.i89 = icmp eq i8 %10, 0, !dbg !4258
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i, !dbg !4259

if.then.i.i:                                      ; preds = %invoke.cont
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4260, metadata !3494) #11, !dbg !4263
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !4266, !tbaa !4137
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !4267, metadata !3494) #11, !dbg !4272
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !4275, metadata !3494) #11, !dbg !4280
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !4282, metadata !3494) #11, !dbg !4285
  call void @_ZdlPv(i8* %11) #15, !dbg !4287
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, !dbg !4288

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #11, !dbg !4289
  br i1 %cmp21, label %if.end26, label %return

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup, !dbg !4290
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !3986, metadata !3595), !dbg !4034
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4241, metadata !3494) #11, !dbg !4291
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4247, metadata !3494) #11, !dbg !4293
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4223, metadata !3494) #11, !dbg !4295
  %13 = load i8, i8* %3, align 8, !dbg !4297, !tbaa !4197
  %14 = and i8 %13, 1, !dbg !4298
  %tobool.i.i.i92 = icmp eq i8 %14, 0, !dbg !4299
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94, !dbg !4300

if.then.i.i94:                                    ; preds = %lpad
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_string"* %__sp, i64 0, metadata !4260, metadata !3494) #11, !dbg !4301
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !dbg !4303, !tbaa !4137
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4267, metadata !3494) #11, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4275, metadata !3494) #11, !dbg !4306
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4282, metadata !3494) #11, !dbg !4308
  call void @_ZdlPv(i8* %15) #15, !dbg !4310
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, !dbg !4311

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #11, !dbg !4289
  resume { i8*, i32 } %12, !dbg !4312

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !3977, metadata !3494), !dbg !3989
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4, !dbg !4314
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub29, i64 0, metadata !3985, metadata !3494), !dbg !4013
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !dbg !4315
  br i1 %cmp30, label %if.then31, label %if.end38, !dbg !4317

if.then31:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata %"class.std::__1::basic_streambuf"* %__s.coerce, i64 0, metadata !4017, metadata !3494), !dbg !4318
  call void @llvm.dbg.value(metadata i8* %__op, i64 0, metadata !4020, metadata !3494), !dbg !4322
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub29, i64 0, metadata !4021, metadata !3494), !dbg !4323
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4324
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !dbg !4324, !tbaa !3744
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !dbg !4324
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !dbg !4324
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29), !dbg !4324
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29, !dbg !4325
  br i1 %cmp34, label %if.end38, label %return, !dbg !4326

if.end38:                                         ; preds = %if.then31, %if.end26
  tail call void @llvm.dbg.value(metadata %"class.std::__1::ios_base"* %__iob, i64 0, metadata !4327, metadata !3494), !dbg !4332
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4330, metadata !3494), !dbg !4334
  store i64 0, i64* %__width_.i, align 8, !dbg !4335, !tbaa !4006
  br label %return, !dbg !4336

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ]
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2, !dbg !4337
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #7

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #10

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #7

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4339 {
entry:
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %this, i64 0, metadata !4341, metadata !3494), !dbg !4492
  tail call void @llvm.dbg.value(metadata void ()* %__f, i64 0, metadata !4342, metadata !3494), !dbg !4493
  %call = tail call i8* @_Znwm(i64 8) #14, !dbg !4494
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !4494
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !dbg !4495

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4343, metadata !3595), !dbg !4496
  %call4 = invoke i8* @_Znwm(i64 16) #14
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !4497

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4343, metadata !3595), !dbg !4496
  %2 = ptrtoint void ()* %__f to i64, !dbg !4498
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4500, metadata !3494), !dbg !4512
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !4511, metadata !3494), !dbg !4512
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4515, metadata !3494), !dbg !4520
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !4519, metadata !3494), !dbg !4520
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4522, metadata !3494), !dbg !4547
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !4546, metadata !3494), !dbg !4547
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4549, metadata !3494), !dbg !4558
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !4557, metadata !3494), !dbg !4558
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4560, metadata !3494), !dbg !4570
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4573, metadata !3494), !dbg !4578
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4581, metadata !3494), !dbg !4585
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !4587, metadata !3494), !dbg !4601
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !4603, metadata !3494), !dbg !4608
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !4610, metadata !3494), !dbg !4620
  %3 = bitcast i8* %call4 to i64*, !dbg !4623
  store i64 %1, i64* %3, align 8, !dbg !4623, !tbaa !4624
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !4626
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !4627, metadata !3494), !dbg !4637
  %5 = bitcast i8* %4 to i64*, !dbg !4640
  store i64 %2, i64* %5, align 8, !dbg !4640, !tbaa !4641
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4346, metadata !3595), !dbg !4643
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !dbg !4644
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4346, metadata !3595), !dbg !4643
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_, i64 0, metadata !4645, metadata !3494), !dbg !4656
  tail call void @llvm.dbg.value(metadata i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i64 0, metadata !4654, metadata !3494), !dbg !4658
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !4655, metadata !3494), !dbg !4659
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !dbg !4660

invoke.cont12:                                    ; preds = %invoke.cont3
  tail call void @llvm.dbg.value(metadata i32 %call.i31, i64 0, metadata !4491, metadata !3494), !dbg !4661
  %cmp = icmp eq i32 %call.i31, 0, !dbg !4662
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !dbg !4664

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4346, metadata !3595), !dbg !4643
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4346, metadata !3595), !dbg !4643
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4665, metadata !3494) #11, !dbg !4669
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4672, metadata !3494) #11, !dbg !4675
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4677, metadata !3494) #11, !dbg !4682
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !4680, metadata !3494) #11, !dbg !4685
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !4681, metadata !3494) #11, !dbg !4686
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4343, metadata !3595), !dbg !4496
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4687, metadata !3494) #11, !dbg !4690
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4693, metadata !3494) #11, !dbg !4696
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4698, metadata !3494) #11, !dbg !4703
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !4701, metadata !3494) #11, !dbg !4706
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !4702, metadata !3494) #11, !dbg !4707
  ret void, !dbg !4708

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !4709
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !4709
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !4709
  tail call void @_ZdlPv(i8* nonnull %call) #15, !dbg !4710
  br label %eh.resume, !dbg !4710

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !4711
  br label %delete.notnull.i.i.i.i, !dbg !4711

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #12
          to label %invoke.cont16 unwind label %lpad15, !dbg !4713

invoke.cont16:                                    ; preds = %if.else
  unreachable, !dbg !4714

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !4716
  br label %delete.notnull.i.i.i.i, !dbg !4718

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4346, metadata !3595), !dbg !4643
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4665, metadata !3494) #11, !dbg !4720
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4672, metadata !3494) #11, !dbg !4723
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4677, metadata !3494) #11, !dbg !4725
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !4680, metadata !3494) #11, !dbg !4727
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !4701, metadata !3494) #11, !dbg !4728
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !dbg !4769
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !4778, !tbaa !3636
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !4702, metadata !3494) #11, !dbg !4779
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !4780, !tbaa !3636
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !dbg !4781
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !4783

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !4784, metadata !3494) #11, !dbg !4789
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #11, !dbg !4792
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !dbg !4792
  tail call void @_ZdlPv(i8* %14) #15, !dbg !4794
  br label %ehcleanup18.thread, !dbg !4796

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #15, !dbg !4797
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4343, metadata !3595), !dbg !4496
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4687, metadata !3494) #11, !dbg !4799
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4693, metadata !3494) #11, !dbg !4802
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4698, metadata !3494) #11, !dbg !4804
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !4701, metadata !3494) #11, !dbg !4806
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !4702, metadata !3494) #11, !dbg !4807
  br label %eh.resume, !dbg !4808

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !4809
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !4809
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !4809
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4343, metadata !3595), !dbg !4496
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4687, metadata !3494) #11, !dbg !4799
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4693, metadata !3494) #11, !dbg !4802
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !4698, metadata !3494) #11, !dbg !4804
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !4701, metadata !3494) #11, !dbg !4806
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !4702, metadata !3494) #11, !dbg !4807
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !4784, metadata !3494) #11, !dbg !4810
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #11, !dbg !4812
  tail call void @_ZdlPv(i8* nonnull %call) #15, !dbg !4813
  br label %eh.resume, !dbg !4814

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !dbg !4815
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !dbg !4815
  resume { i8*, i32 } %lpad.val20, !dbg !4815
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4816 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %__vp, i64 0, metadata !4820, metadata !3494), !dbg !4822
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4821, metadata !3595), !dbg !4823
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !4824

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4821, metadata !3595), !dbg !4823
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !4825
  %0 = bitcast i8* %__vp to i8**, !dbg !4834
  %1 = load i8*, i8** %0, align 8, !dbg !4834, !tbaa !3636
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !4835, !tbaa !3636
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_specific_ptr"* %call, i64 0, metadata !4836, metadata !3494), !dbg !4873
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !dbg !4876
  %2 = load i64, i64* %__key_.i, align 8, !dbg !4876, !tbaa !4877
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4879, metadata !3494), !dbg !4885
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4884, metadata !3494), !dbg !4887
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !dbg !4888

invoke.cont5:                                     ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4821, metadata !3595), !dbg !4823
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !dbg !4889
  %3 = bitcast i8* %value.i.i.i to void ()**, !dbg !4889
  tail call void @llvm.dbg.value(metadata void ()** %3, i64 0, metadata !4921, metadata !3494), !dbg !4927
  %4 = load void ()*, void ()** %3, align 8, !dbg !4930, !tbaa !3636
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !dbg !4931

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4821, metadata !3595), !dbg !4823
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4665, metadata !3494) #11, !dbg !4933
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4672, metadata !3494) #11, !dbg !4935
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4677, metadata !3494) #11, !dbg !4937
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !4680, metadata !3494) #11, !dbg !4939
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !4701, metadata !3494) #11, !dbg !4940
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !4950, !tbaa !3636
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !4702, metadata !3494) #11, !dbg !4951
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !4952, !tbaa !3636
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !dbg !4953
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !dbg !4954

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !4784, metadata !3494) #11, !dbg !4955
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #11, !dbg !4957
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !dbg !4957
  tail call void @_ZdlPv(i8* %6) #15, !dbg !4958
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !dbg !4959

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #15, !dbg !4960
  ret i8* null, !dbg !4961

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !dbg !4962
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4821, metadata !3595), !dbg !4823
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4665, metadata !3494) #11, !dbg !4963
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4672, metadata !3494) #11, !dbg !4965
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4677, metadata !3494) #11, !dbg !4967
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !4680, metadata !3494) #11, !dbg !4969
  br label %delete.notnull.i.i.i.i, !dbg !4970

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !dbg !4962
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4821, metadata !3595), !dbg !4823
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4665, metadata !3494) #11, !dbg !4963
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4672, metadata !3494) #11, !dbg !4965
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.6"* undef, i64 0, metadata !4677, metadata !3494) #11, !dbg !4967
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !4680, metadata !3494) #11, !dbg !4969
  %tobool.i.i.i = icmp eq i8* %__vp, null, !dbg !4971
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !dbg !4970

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !4972
  br label %delete.notnull.i.i.i.i, !dbg !4970

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !dbg !4972
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !4701, metadata !3494) #11, !dbg !4984
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !4985, !tbaa !3636
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !4702, metadata !3494) #11, !dbg !4986
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !4987, !tbaa !3636
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !4988
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !4989

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !4784, metadata !3494) #11, !dbg !4990
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #11, !dbg !4992
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !4992
  tail call void @_ZdlPv(i8* %8) #15, !dbg !4993
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !4994

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #15, !dbg !4995
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !4996

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30, !dbg !4997
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #6

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

declare void @preNonAtomicStore_char(i8*, i8)

declare void @preNonAtomicStore_int(i8*, i32)

declare void @preNonAtomicStore_double(i8*, i64)

declare void @preAtomicStore_char(i8*, i8, i32)

declare void @preAtomicStore_int(i8*, i32, i32)

declare void @preAtomicStore_double(i8*, i64, i32)

declare i8 @preNonAtomicLoad_char(i8*)

declare i32 @preNonAtomicLoad_int(i8*)

declare i64 @preNonAtomicLoad_double(i8*)

declare void @preAtomicLoad_char(i8*, i8, i32)

declare i32 @preAtomicLoad_int(i8*, i32)

declare void @preAtomicLoad_double(i8*, i64, i32)

declare i32 @postAtomicLoad_int(i8*, i32, i32)

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
attributes #2 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3481, !3482, !3483}
!llvm.ident = !{!3484}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "data1", scope: !2, file: !3, line: 11, type: !26, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1408, globals: !2576, imports: !2583)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!4 = !{!5, !17, !1391, !1396, !1399, !1402, !1405}
!5 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!9 = !DINamespace(name: "std", scope: null, file: !8, line: 437)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!12 = !DIEnumerator(name: "memory_order_consume", value: 1)
!13 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!14 = !DIEnumerator(name: "memory_order_release", value: 3)
!15 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!16 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!17 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "event", scope: !19, file: !18, line: 308, size: 32, elements: !1387, identifier: "_ZTSNSt3__18ios_base5eventE")
!18 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ios", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!66 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!85 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !87, line: 92, baseType: !88)
!87 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!280 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!316 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iosfwd", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!317 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !7, file: !318, line: 4038, size: 192, elements: !319, templateParams: !1201, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE")
!318 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!332 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!426 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!642 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string_view", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!685 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iterator", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!777 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!832 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/initializer_list", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!1286 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/mutex", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!1304 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
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
!1408 = !{!72, !1409, !385, !505, !347, !370, !1793, !803, !811, !104, !1449, !1874, !19}
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ip", scope: !1411, file: !1410, line: 724, baseType: !1755)
!1410 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ostream", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1411 = distinct !DISubprogram(name: "__put_character_sequence<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m", scope: !7, file: !1410, line: 714, type: !1412, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !773, variables: !1725)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !1414, !307, !84}
!1414 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::__1::char_traits<char> >", scope: !7, file: !1410, line: 1084, size: 1280, elements: !1416, vtableHolder: !1415, templateParams: !773, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE")
!1416 = !{!1417, !1609, !1610, !1614, !1617, !1621, !1624, !1627, !1632, !1635, !1641, !1647, !1653, !1656, !1660, !1664, !1667, !1670, !1673, !1676, !1679, !1683, !1687, !1691, !1695, !1698, !1701, !1705, !1710, !1713, !1717, !1720, !1724}
!1417 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1415, baseType: !1418, offset: 24, flags: DIFlagPublic | DIFlagVirtual)
!1418 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::__1::char_traits<char> >", scope: !7, file: !1419, line: 483, size: 1216, elements: !1420, vtableHolder: !19, templateParams: !773, identifier: "_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE")
!1419 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/streambuf", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1420 = !{!1421, !1422, !1424, !1426, !1431, !1432, !1435, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1562, !1565, !1568, !1571, !1574, !1577, !1582, !1586, !1589, !1592, !1595, !1598, !1599, !1600, !1603, !1607, !1608}
!1421 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1418, baseType: !19, flags: DIFlagPublic)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__tie_", scope: !1418, file: !18, line: 669, baseType: !1423, size: 64, offset: 1088)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__fill_", scope: !1418, file: !18, line: 670, baseType: !1425, size: 32, offset: 1152)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1418, file: !18, line: 591, baseType: !811)
!1426 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbEv", scope: !1418, file: !18, line: 605, type: !1427, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!104, !1429}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1431 = !DISubprogram(name: "operator!", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntEv", scope: !1418, file: !18, line: 608, type: !1427, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1432 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE7rdstateEv", scope: !1418, file: !18, line: 609, type: !1433, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!50, !1429}
!1435 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj", scope: !1418, file: !18, line: 610, type: !1436, isLocal: false, isDefinition: false, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1438, !50}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1439 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1418, file: !18, line: 611, type: !1436, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1440 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodEv", scope: !1418, file: !18, line: 612, type: !1427, isLocal: false, isDefinition: false, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1441 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3eofEv", scope: !1418, file: !18, line: 613, type: !1427, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1442 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv", scope: !1418, file: !18, line: 614, type: !1427, isLocal: false, isDefinition: false, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1443 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3badEv", scope: !1418, file: !18, line: 615, type: !1427, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1444 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEv", scope: !1418, file: !18, line: 617, type: !1433, isLocal: false, isDefinition: false, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1445 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEj", scope: !1418, file: !18, line: 618, type: !1436, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1446 = !DISubprogram(name: "basic_ios", scope: !1418, file: !18, line: 622, type: !1447, isLocal: false, isDefinition: false, scopeLine: 622, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1438, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_streambuf<char, std::__1::char_traits<char> >", scope: !7, file: !1419, line: 480, size: 512, elements: !1451, vtableHolder: !1450, templateParams: !773, identifier: "_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE")
!1451 = !{!1452, !1453, !1454, !1457, !1458, !1459, !1460, !1461, !1462, !1466, !1469, !1474, !1477, !1488, !1491, !1494, !1497, !1501, !1502, !1503, !1506, !1509, !1510, !1511, !1516, !1517, !1521, !1525, !1528, !1531, !1532, !1533, !1536, !1539, !1540, !1541, !1542, !1543, !1546, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1560, !1561}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_streambuf", scope: !1419, file: !1419, baseType: !22, size: 64, flags: DIFlagArtificial)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !1450, file: !1419, line: 287, baseType: !279, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__binp_", scope: !1450, file: !1419, line: 288, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1450, file: !1419, line: 126, baseType: !309)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__ninp_", scope: !1450, file: !1419, line: 289, baseType: !1455, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__einp_", scope: !1450, file: !1419, line: 290, baseType: !1455, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "__bout_", scope: !1450, file: !1419, line: 291, baseType: !1455, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "__nout_", scope: !1450, file: !1419, line: 292, baseType: !1455, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "__eout_", scope: !1450, file: !1419, line: 293, baseType: !1455, size: 64, offset: 448)
!1462 = !DISubprogram(name: "~basic_streambuf", scope: !1450, file: !1419, line: 132, type: !1463, isLocal: false, isDefinition: false, scopeLine: 132, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1466 = !DISubprogram(name: "pubimbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueERKNS_6localeE", scope: !1450, file: !1419, line: 136, type: !1467, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!279, !1465, !302}
!1469 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv", scope: !1450, file: !1419, line: 144, type: !1470, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!279, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1474 = !DISubprogram(name: "pubsetbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufEPcl", scope: !1450, file: !1419, line: 148, type: !1475, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1449, !1465, !1455, !64}
!1477 = !DISubprogram(name: "pubseekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffExNS_8ios_base7seekdirEj", scope: !1450, file: !1419, line: 152, type: !1478, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1480, !1465, !1484, !1391, !56}
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1450, file: !1419, line: 129, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !776, file: !777, line: 202, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "streampos", scope: !7, file: !316, line: 176, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fpos<__mbstate_t>", scope: !7, file: !316, line: 175, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__14fposI11__mbstate_tEE")
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1450, file: !1419, line: 130, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !776, file: !777, line: 201, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamoff", scope: !7, file: !316, line: 187, baseType: !1487)
!1487 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1488 = !DISubprogram(name: "pubseekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekposENS_4fposI11__mbstate_tEEj", scope: !1450, file: !1419, line: 157, type: !1489, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1480, !1465, !1480, !56}
!1491 = !DISubprogram(name: "pubsync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncEv", scope: !1450, file: !1419, line: 162, type: !1492, isLocal: false, isDefinition: false, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!26, !1465}
!1494 = !DISubprogram(name: "in_avail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availEv", scope: !1450, file: !1419, line: 167, type: !1495, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!64, !1465}
!1497 = !DISubprogram(name: "snextc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6snextcEv", scope: !1450, file: !1419, line: 174, type: !1498, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1500, !1465}
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1450, file: !1419, line: 128, baseType: !811)
!1501 = !DISubprogram(name: "sbumpc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv", scope: !1450, file: !1419, line: 181, type: !1498, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1502 = !DISubprogram(name: "sgetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv", scope: !1450, file: !1419, line: 188, type: !1498, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1503 = !DISubprogram(name: "sgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetnEPcl", scope: !1450, file: !1419, line: 195, type: !1504, isLocal: false, isDefinition: false, scopeLine: 195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!64, !1465, !1455, !64}
!1506 = !DISubprogram(name: "sputbackc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9sputbackcEc", scope: !1450, file: !1419, line: 200, type: !1507, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1500, !1465, !1456}
!1509 = !DISubprogram(name: "sungetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7sungetcEv", scope: !1450, file: !1419, line: 207, type: !1498, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1510 = !DISubprogram(name: "sputc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc", scope: !1450, file: !1419, line: 215, type: !1507, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1511 = !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1450, file: !1419, line: 223, type: !1512, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!64, !1465, !1514, !64}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1516 = !DISubprogram(name: "basic_streambuf", scope: !1450, file: !1419, line: 227, type: !1463, isLocal: false, isDefinition: false, scopeLine: 227, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1517 = !DISubprogram(name: "basic_streambuf", scope: !1450, file: !1419, line: 228, type: !1518, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !1465, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1473, size: 64)
!1521 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEaSERKS3_", scope: !1450, file: !1419, line: 229, type: !1522, isLocal: false, isDefinition: false, scopeLine: 229, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1524, !1465, !1520}
!1524 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1450, size: 64)
!1525 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_", scope: !1450, file: !1419, line: 230, type: !1526, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1465, !1524}
!1528 = !DISubprogram(name: "eback", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv", scope: !1450, file: !1419, line: 233, type: !1529, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!1455, !1472}
!1531 = !DISubprogram(name: "gptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv", scope: !1450, file: !1419, line: 234, type: !1529, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1532 = !DISubprogram(name: "egptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv", scope: !1450, file: !1419, line: 235, type: !1529, isLocal: false, isDefinition: false, scopeLine: 235, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1533 = !DISubprogram(name: "gbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi", scope: !1450, file: !1419, line: 238, type: !1534, isLocal: false, isDefinition: false, scopeLine: 238, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1465, !26}
!1536 = !DISubprogram(name: "setg", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_", scope: !1450, file: !1419, line: 241, type: !1537, isLocal: false, isDefinition: false, scopeLine: 241, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1465, !1455, !1455, !1455}
!1539 = !DISubprogram(name: "pbase", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv", scope: !1450, file: !1419, line: 248, type: !1529, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1540 = !DISubprogram(name: "pptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv", scope: !1450, file: !1419, line: 249, type: !1529, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1541 = !DISubprogram(name: "epptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv", scope: !1450, file: !1419, line: 250, type: !1529, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1542 = !DISubprogram(name: "pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi", scope: !1450, file: !1419, line: 253, type: !1534, isLocal: false, isDefinition: false, scopeLine: 253, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1543 = !DISubprogram(name: "setp", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_", scope: !1450, file: !1419, line: 256, type: !1544, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1465, !1455, !1455}
!1546 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1450, file: !1419, line: 263, type: !1547, isLocal: false, isDefinition: false, scopeLine: 263, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !1465, !302}
!1549 = !DISubprogram(name: "setbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl", scope: !1450, file: !1419, line: 266, type: !1475, isLocal: false, isDefinition: false, scopeLine: 266, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1550 = !DISubprogram(name: "seekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj", scope: !1450, file: !1419, line: 267, type: !1478, isLocal: false, isDefinition: false, scopeLine: 267, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1551 = !DISubprogram(name: "seekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj", scope: !1450, file: !1419, line: 269, type: !1489, isLocal: false, isDefinition: false, scopeLine: 269, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1552 = !DISubprogram(name: "sync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv", scope: !1450, file: !1419, line: 271, type: !1492, isLocal: false, isDefinition: false, scopeLine: 271, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1553 = !DISubprogram(name: "showmanyc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv", scope: !1450, file: !1419, line: 274, type: !1495, isLocal: false, isDefinition: false, scopeLine: 274, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1554 = !DISubprogram(name: "xsgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl", scope: !1450, file: !1419, line: 275, type: !1504, isLocal: false, isDefinition: false, scopeLine: 275, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1555 = !DISubprogram(name: "underflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9underflowEv", scope: !1450, file: !1419, line: 276, type: !1498, isLocal: false, isDefinition: false, scopeLine: 276, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1556 = !DISubprogram(name: "uflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv", scope: !1450, file: !1419, line: 277, type: !1498, isLocal: false, isDefinition: false, scopeLine: 277, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1557 = !DISubprogram(name: "pbackfail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi", scope: !1450, file: !1419, line: 280, type: !1558, isLocal: false, isDefinition: false, scopeLine: 280, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 11, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1500, !1465, !1500}
!1560 = !DISubprogram(name: "xsputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl", scope: !1450, file: !1419, line: 283, type: !1512, isLocal: false, isDefinition: false, scopeLine: 283, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 12, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1561 = !DISubprogram(name: "overflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8overflowEi", scope: !1450, file: !1419, line: 284, type: !1558, isLocal: false, isDefinition: false, scopeLine: 284, containingType: !1450, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 13, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1562 = !DISubprogram(name: "~basic_ios", scope: !1418, file: !18, line: 623, type: !1563, isLocal: false, isDefinition: false, scopeLine: 623, containingType: !1418, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1438}
!1565 = !DISubprogram(name: "tie", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEv", scope: !1418, file: !18, line: 627, type: !1566, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1423, !1429}
!1568 = !DISubprogram(name: "tie", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEPNS_13basic_ostreamIcS2_EE", scope: !1418, file: !18, line: 629, type: !1569, isLocal: false, isDefinition: false, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1423, !1438, !1423}
!1571 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1418, file: !18, line: 632, type: !1572, isLocal: false, isDefinition: false, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1449, !1429}
!1574 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEPNS_15basic_streambufIcS2_EE", scope: !1418, file: !18, line: 634, type: !1575, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!1449, !1438, !1449}
!1577 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_", scope: !1418, file: !18, line: 636, type: !1578, isLocal: false, isDefinition: false, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1580, !1438, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1418, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1430, size: 64)
!1582 = !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1418, file: !18, line: 639, type: !1583, isLocal: false, isDefinition: false, scopeLine: 639, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1585, !1429}
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1418, file: !18, line: 588, baseType: !309)
!1586 = !DISubprogram(name: "fill", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEc", scope: !1418, file: !18, line: 641, type: !1587, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1585, !1438, !1585}
!1589 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1418, file: !18, line: 644, type: !1590, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!279, !1438, !302}
!1592 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE6narrowEcc", scope: !1418, file: !18, line: 647, type: !1593, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!309, !1429, !1585, !309}
!1595 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1418, file: !18, line: 649, type: !1596, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1585, !1429, !309}
!1598 = !DISubprogram(name: "basic_ios", scope: !1418, file: !18, line: 653, type: !1563, isLocal: false, isDefinition: false, scopeLine: 653, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1599 = !DISubprogram(name: "init", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE", scope: !1418, file: !18, line: 656, type: !1447, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1600 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveERS3_", scope: !1418, file: !18, line: 659, type: !1601, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1438, !1580}
!1603 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveEOS3_", scope: !1418, file: !18, line: 662, type: !1604, isLocal: false, isDefinition: false, scopeLine: 662, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1438, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1418, size: 64)
!1607 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4swapERS3_", scope: !1418, file: !18, line: 665, type: !1601, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1608 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE9set_rdbufEPNS_15basic_streambufIcS2_EE", scope: !1418, file: !18, line: 667, type: !1447, isLocal: false, isDefinition: false, scopeLine: 667, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_ostream", scope: !1410, file: !1410, baseType: !22, size: 64, flags: DIFlagArtificial)
!1610 = !DISubprogram(name: "basic_ostream", scope: !1415, file: !1410, line: 164, type: !1611, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1613, !1449}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1614 = !DISubprogram(name: "~basic_ostream", scope: !1415, file: !1410, line: 166, type: !1615, isLocal: false, isDefinition: false, scopeLine: 166, containingType: !1415, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1613}
!1617 = !DISubprogram(name: "basic_ostream", scope: !1415, file: !1410, line: 170, type: !1618, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1613, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1415, size: 64)
!1621 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSEOS3_", scope: !1415, file: !1410, line: 174, type: !1622, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1414, !1613, !1620}
!1624 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE4swapERS3_", scope: !1415, file: !1410, line: 177, type: !1625, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1613, !1414}
!1627 = !DISubprogram(name: "basic_ostream", scope: !1415, file: !1410, line: 181, type: !1628, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1613, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1632 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSERKS3_", scope: !1415, file: !1410, line: 182, type: !1633, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1414, !1613, !1630}
!1635 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E", scope: !1415, file: !1410, line: 194, type: !1636, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1414, !1613, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1414, !1414}
!1641 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_9basic_iosIcS2_EES6_E", scope: !1415, file: !1410, line: 198, type: !1642, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1414, !1613, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1580, !1580}
!1647 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E", scope: !1415, file: !1410, line: 203, type: !1648, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!1414, !1613, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!80, !80}
!1653 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb", scope: !1415, file: !1410, line: 206, type: !1654, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1414, !1613, !104}
!1656 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEs", scope: !1415, file: !1410, line: 207, type: !1657, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1414, !1613, !1659}
!1659 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1660 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt", scope: !1415, file: !1410, line: 208, type: !1661, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1414, !1613, !1663}
!1663 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1664 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi", scope: !1415, file: !1410, line: 209, type: !1665, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1414, !1613, !26}
!1667 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj", scope: !1415, file: !1410, line: 210, type: !1668, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1414, !1613, !30}
!1670 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl", scope: !1415, file: !1410, line: 211, type: !1671, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1414, !1613, !67}
!1673 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm", scope: !1415, file: !1410, line: 212, type: !1674, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!1414, !1613, !88}
!1676 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx", scope: !1415, file: !1410, line: 213, type: !1677, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1414, !1613, !1487}
!1679 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy", scope: !1415, file: !1410, line: 214, type: !1680, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1414, !1613, !1682}
!1682 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1683 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf", scope: !1415, file: !1410, line: 215, type: !1684, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1414, !1613, !1686}
!1686 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1687 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd", scope: !1415, file: !1410, line: 216, type: !1688, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!1414, !1613, !1690}
!1690 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1691 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEe", scope: !1415, file: !1410, line: 217, type: !1692, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!1414, !1613, !1694}
!1694 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1695 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv", scope: !1415, file: !1410, line: 218, type: !1696, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1414, !1613, !390}
!1698 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPNS_15basic_streambufIcS2_EE", scope: !1415, file: !1410, line: 219, type: !1699, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1414, !1613, !1449}
!1701 = !DISubprogram(name: "put", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc", scope: !1415, file: !1410, line: 222, type: !1702, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1414, !1613, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1415, file: !1410, line: 156, baseType: !309)
!1705 = !DISubprogram(name: "write", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl", scope: !1415, file: !1410, line: 223, type: !1706, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1414, !1613, !1708, !64}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1710 = !DISubprogram(name: "flush", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv", scope: !1415, file: !1410, line: 224, type: !1711, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1414, !1613}
!1713 = !DISubprogram(name: "tellp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5tellpEv", scope: !1415, file: !1410, line: 228, type: !1714, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1716, !1613}
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1415, file: !1410, line: 159, baseType: !1481)
!1717 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpENS_4fposI11__mbstate_tEE", scope: !1415, file: !1410, line: 230, type: !1718, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1414, !1613, !1716}
!1720 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpExNS_8ios_base7seekdirE", scope: !1415, file: !1410, line: 232, type: !1721, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!1414, !1613, !1723, !1391}
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1415, file: !1410, line: 160, baseType: !1485)
!1724 = !DISubprogram(name: "basic_ostream", scope: !1415, file: !1410, line: 236, type: !1615, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DILocalVariable(name: "__os", arg: 1, scope: !1411, file: !1410, line: 714, type: !1414)
!1727 = !DILocalVariable(name: "__str", arg: 2, scope: !1411, file: !1410, line: 715, type: !307)
!1728 = !DILocalVariable(name: "__len", arg: 3, scope: !1411, file: !1410, line: 715, type: !84)
!1729 = !DILocalVariable(name: "__s", scope: !1730, file: !1410, line: 721, type: !1731)
!1730 = distinct !DILexicalBlock(scope: !1411, file: !1410, line: 719, column: 5)
!1731 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "sentry", scope: !1415, file: !1410, line: 190, size: 128, elements: !1732, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE")
!1732 = !{!1733, !1734, !1735, !1741, !1745, !1748, !1751}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__ok_", scope: !1731, file: !1410, line: 242, baseType: !104, size: 8)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__os_", scope: !1731, file: !1410, line: 243, baseType: !1414, size: 64, offset: 64)
!1735 = !DISubprogram(name: "sentry", scope: !1731, file: !1410, line: 245, type: !1736, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1739 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1741 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryaSERKS4_", scope: !1731, file: !1410, line: 246, type: !1742, isLocal: false, isDefinition: false, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1744, !1738, !1739}
!1744 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1731, size: 64)
!1745 = !DISubprogram(name: "sentry", scope: !1731, file: !1410, line: 249, type: !1746, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1738, !1414}
!1748 = !DISubprogram(name: "~sentry", scope: !1731, file: !1410, line: 250, type: !1749, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1738}
!1751 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !1731, file: !1410, line: 254, type: !1752, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!104, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1755 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ostreambuf_iterator<char, std::__1::char_traits<char> >", scope: !7, file: !685, line: 1020, size: 64, elements: !1756, templateParams: !773, identifier: "_ZTSNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEE")
!1756 = !{!1757, !1765, !1768, !1774, !1777, !1781, !1784, !1785, !1788}
!1757 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1755, baseType: !1758, flags: DIFlagPublic)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::__1::output_iterator_tag, void, void, void, void>", scope: !7, file: !685, line: 531, size: 8, elements: !357, templateParams: !1759, identifier: "_ZTSNSt3__18iteratorINS_19output_iterator_tagEvvvvEE")
!1759 = !{!1760, !389, !1762, !1763, !1764}
!1760 = !DITemplateTypeParameter(name: "_Category", type: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_iterator_tag", scope: !7, file: !685, line: 444, size: 8, elements: !357, identifier: "_ZTSNSt3__119output_iterator_tagE")
!1762 = !DITemplateTypeParameter(name: "_Distance", type: null)
!1763 = !DITemplateTypeParameter(name: "_Pointer", type: null)
!1764 = !DITemplateTypeParameter(name: "_Reference", type: null)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "__sbuf_", scope: !1755, file: !685, line: 1029, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "streambuf_type", scope: !1755, file: !685, line: 1026, baseType: !1450)
!1768 = !DISubprogram(name: "ostreambuf_iterator", scope: !1755, file: !685, line: 1031, type: !1769, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1772 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream_type", scope: !1755, file: !685, line: 1027, baseType: !1415)
!1774 = !DISubprogram(name: "ostreambuf_iterator", scope: !1755, file: !685, line: 1033, type: !1775, isLocal: false, isDefinition: false, scopeLine: 1033, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !1771, !1766}
!1777 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEaSEc", scope: !1755, file: !685, line: 1035, type: !1778, isLocal: false, isDefinition: false, scopeLine: 1035, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1780, !1771, !309}
!1780 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1755, size: 64)
!1781 = !DISubprogram(name: "operator*", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEdeEv", scope: !1755, file: !685, line: 1041, type: !1782, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!1780, !1771}
!1784 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEv", scope: !1755, file: !685, line: 1042, type: !1782, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1785 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEi", scope: !1755, file: !685, line: 1043, type: !1786, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1780, !1771, !26}
!1788 = !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1755, file: !685, line: 1044, type: !1789, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!104, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1755)
!1793 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "length_error", scope: !9, file: !1794, line: 131, size: 128, elements: !1795, vtableHolder: !1800, identifier: "_ZTSSt12length_error")
!1794 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdexcept", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1795 = !{!1796, !1864, !1868, !1871}
!1796 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1793, baseType: !1797, flags: DIFlagPublic)
!1797 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "logic_error", scope: !9, file: !1794, line: 77, size: 128, elements: !1798, vtableHolder: !1800, identifier: "_ZTSSt11logic_error")
!1798 = !{!1799, !1814, !1841, !1845, !1848, !1853, !1857, !1860}
!1799 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1797, baseType: !1800, flags: DIFlagPublic)
!1800 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !9, file: !1801, line: 97, size: 64, elements: !1802, vtableHolder: !1800, identifier: "_ZTSSt9exception")
!1801 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/exception", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1802 = !{!1803, !1804, !1808, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$exception", scope: !1801, file: !1801, baseType: !22, size: 64, flags: DIFlagArtificial)
!1804 = !DISubprogram(name: "exception", scope: !1800, file: !1801, line: 100, type: !1805, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1808 = !DISubprogram(name: "~exception", scope: !1800, file: !1801, line: 101, type: !1805, isLocal: false, isDefinition: false, scopeLine: 101, containingType: !1800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1809 = !DISubprogram(name: "what", linkageName: "_ZNKSt9exception4whatEv", scope: !1800, file: !1801, line: 102, type: !1810, isLocal: false, isDefinition: false, scopeLine: 102, containingType: !1800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!307, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !1797, file: !1794, line: 81, baseType: !1815, size: 64, offset: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__libcpp_refstring", scope: !7, file: !1794, line: 58, size: 64, elements: !1816, identifier: "_ZTSNSt3__118__libcpp_refstringE")
!1816 = !{!1817, !1818, !1823, !1827, !1831, !1835, !1838}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !1815, file: !1794, line: 60, baseType: !307, size: 64)
!1818 = !DISubprogram(name: "__uses_refcount", linkageName: "_ZNKSt3__118__libcpp_refstring15__uses_refcountEv", scope: !1815, file: !1794, line: 62, type: !1819, isLocal: false, isDefinition: false, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!104, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1823 = !DISubprogram(name: "__libcpp_refstring", scope: !1815, file: !1794, line: 64, type: !1824, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1826, !307}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1827 = !DISubprogram(name: "__libcpp_refstring", scope: !1815, file: !1794, line: 65, type: !1828, isLocal: false, isDefinition: false, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1826, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1822, size: 64)
!1831 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118__libcpp_refstringaSERKS0_", scope: !1815, file: !1794, line: 66, type: !1832, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!1834, !1826, !1830}
!1834 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1815, size: 64)
!1835 = !DISubprogram(name: "~__libcpp_refstring", scope: !1815, file: !1794, line: 67, type: !1836, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1826}
!1838 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__118__libcpp_refstring5c_strEv", scope: !1815, file: !1794, line: 69, type: !1839, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!307, !1821}
!1841 = !DISubprogram(name: "logic_error", scope: !1797, file: !1794, line: 83, type: !1842, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1844, !313}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1845 = !DISubprogram(name: "logic_error", scope: !1797, file: !1794, line: 84, type: !1846, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1844, !307}
!1848 = !DISubprogram(name: "logic_error", scope: !1797, file: !1794, line: 86, type: !1849, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1844, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!1853 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11logic_erroraSERKS_", scope: !1797, file: !1794, line: 87, type: !1854, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1856, !1844, !1851}
!1856 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1797, size: 64)
!1857 = !DISubprogram(name: "~logic_error", scope: !1797, file: !1794, line: 89, type: !1858, isLocal: false, isDefinition: false, scopeLine: 89, containingType: !1797, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1844}
!1860 = !DISubprogram(name: "what", linkageName: "_ZNKSt11logic_error4whatEv", scope: !1797, file: !1794, line: 91, type: !1861, isLocal: false, isDefinition: false, scopeLine: 91, containingType: !1797, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!307, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1864 = !DISubprogram(name: "length_error", scope: !1793, file: !1794, line: 135, type: !1865, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1867, !313}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1868 = !DISubprogram(name: "length_error", scope: !1793, file: !1794, line: 136, type: !1869, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1867, !307}
!1871 = !DISubprogram(name: "~length_error", scope: !1793, file: !1794, line: 138, type: !1872, isLocal: false, isDefinition: false, scopeLine: 138, containingType: !1793, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !1867}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !1876, line: 474, size: 128, elements: !1877, templateParams: !2575, identifier: "_ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!1876 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1877 = !{!1878, !2526, !2527, !2533, !2537, !2564, !2572}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "base_", scope: !1875, file: !1876, line: 478, baseType: !1879, size: 128)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "base", scope: !1875, file: !1876, line: 476, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_impl<std::__1::__tuple_indices<0, 1>, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !1876, line: 369, size: 128, elements: !1881, templateParams: !2513, identifier: "_ZTSNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEE")
!1881 = !{!1882, !2450, !2490, !2494, !2499, !2503, !2507, !2510}
!1882 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1880, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, false>", scope: !7, file: !1876, line: 170, size: 64, elements: !1884, templateParams: !2447, identifier: "_ZTSNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEE")
!1884 = !{!1885, !2419, !2426, !2429, !2432, !2436, !2439, !2442}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1883, file: !1876, line: 172, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !332, line: 2334, size: 64, elements: !1887, templateParams: !2391, identifier: "_ZTSNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEE")
!1887 = !{!1888, !2357, !2362, !2366, !2369, !2375, !2385, !2396, !2397, !2402, !2407, !2410, !2413, !2416}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !1886, file: !332, line: 2344, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !332, line: 2144, size: 64, elements: !1890, templateParams: !2354, identifier: "_ZTSNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEE")
!1890 = !{!1891, !2300, !2335, !2339, !2344, !2347, !2350}
!1891 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1889, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::__thread_struct *, 0, false>", scope: !7, file: !332, line: 2076, size: 64, elements: !1893, templateParams: !2298, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE")
!1893 = !{!1894, !2281, !2285, !2290}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !1892, file: !332, line: 2105, baseType: !1895, size: 64, flags: DIFlagPrivate)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct", scope: !7, file: !1897, line: 123, size: 64, elements: !1898, identifier: "_ZTSNSt3__115__thread_structE")
!1897 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1898 = !{!1899, !1902, !1908, !1912, !1915, !1916, !2276}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "__p_", scope: !1896, file: !1897, line: 125, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct_imp", scope: !7, file: !1897, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__119__thread_struct_impE")
!1902 = !DISubprogram(name: "__thread_struct", scope: !1896, file: !1897, line: 127, type: !1903, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1906 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1896)
!1908 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115__thread_structaSERKS0_", scope: !1896, file: !1897, line: 128, type: !1909, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1911, !1905, !1906}
!1911 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1896, size: 64)
!1912 = !DISubprogram(name: "__thread_struct", scope: !1896, file: !1897, line: 130, type: !1913, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1905}
!1915 = !DISubprogram(name: "~__thread_struct", scope: !1896, file: !1897, line: 131, type: !1913, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1916 = !DISubprogram(name: "notify_all_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE", scope: !1896, file: !1897, line: 133, type: !1917, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1905, !1919, !2275}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "condition_variable", scope: !7, file: !1921, line: 281, size: 384, elements: !1922, identifier: "_ZTSNSt3__118condition_variableE")
!1921 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1922 = !{!1923, !1937, !1941, !1942, !1947, !1951, !1952, !1953, !2058, !2063}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !1920, file: !1921, line: 284, baseType: !1924, size: 384)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !7, file: !1925, line: 59, baseType: !1926)
!1925 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !1927, line: 30, baseType: !1928)
!1927 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !1929, line: 110, baseType: !1930)
!1929 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_cond_t", file: !1929, line: 68, size: 384, elements: !1931, identifier: "_ZTS22_opaque_pthread_cond_t")
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1930, file: !1929, line: 69, baseType: !67, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1930, file: !1929, line: 70, baseType: !1934, size: 320, offset: 64)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 320, elements: !1935)
!1935 = !{!1936}
!1936 = !DISubrange(count: 40)
!1937 = !DISubprogram(name: "condition_variable", scope: !1920, file: !1921, line: 292, type: !1938, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1940}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1941 = !DISubprogram(name: "~condition_variable", scope: !1920, file: !1921, line: 296, type: !1938, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1942 = !DISubprogram(name: "condition_variable", scope: !1920, file: !1921, line: 299, type: !1943, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1940, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1947 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118condition_variableaSERKS0_", scope: !1920, file: !1921, line: 300, type: !1948, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1950, !1940, !1945}
!1950 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1920, size: 64)
!1951 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt3__118condition_variable10notify_oneEv", scope: !1920, file: !1921, line: 303, type: !1938, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1952 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt3__118condition_variable10notify_allEv", scope: !1920, file: !1921, line: 304, type: !1938, isLocal: false, isDefinition: false, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1953 = !DISubprogram(name: "wait", linkageName: "_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE", scope: !1920, file: !1921, line: 306, type: !1954, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1940, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_lock<std::__1::mutex>", scope: !7, file: !1921, line: 110, size: 128, elements: !1958, templateParams: !2056, identifier: "_ZTSNSt3__111unique_lockINS_5mutexEEE")
!1958 = !{!1959, !2000, !2001, !2005, !2009, !2013, !2017, !2021, !2022, !2027, !2030, !2034, !2037, !2038, !2041, !2042, !2045, !2048, !2052, !2053}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !1957, file: !1921, line: 116, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !1957, file: !1921, line: 113, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "mutex", scope: !7, file: !1921, line: 36, size: 512, elements: !1963, identifier: "_ZTSNSt3__15mutexE")
!1963 = !{!1964, !1976, !1980, !1981, !1986, !1990, !1991, !1994, !1995}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !1962, file: !1921, line: 39, baseType: !1965, size: 512)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_mutex_t", scope: !7, file: !1925, line: 53, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !1967, line: 30, baseType: !1968)
!1967 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !1929, line: 113, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !1929, line: 78, size: 512, elements: !1970, identifier: "_ZTS23_opaque_pthread_mutex_t")
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1969, file: !1929, line: 79, baseType: !67, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1969, file: !1929, line: 80, baseType: !1973, size: 448, offset: 64)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 448, elements: !1974)
!1974 = !{!1975}
!1975 = !DISubrange(count: 56)
!1976 = !DISubprogram(name: "mutex", scope: !1962, file: !1921, line: 47, type: !1977, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1979}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1980 = !DISubprogram(name: "~mutex", scope: !1962, file: !1921, line: 51, type: !1977, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1981 = !DISubprogram(name: "mutex", scope: !1962, file: !1921, line: 54, type: !1982, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1979, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1962)
!1986 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15mutexaSERKS0_", scope: !1962, file: !1921, line: 55, type: !1987, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1989, !1979, !1984}
!1989 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1962, size: 64)
!1990 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__15mutex4lockEv", scope: !1962, file: !1921, line: 58, type: !1977, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1991 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__15mutex8try_lockEv", scope: !1962, file: !1921, line: 59, type: !1992, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!104, !1979}
!1994 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__15mutex6unlockEv", scope: !1962, file: !1921, line: 60, type: !1977, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1995 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__15mutex13native_handleEv", scope: !1962, file: !1921, line: 63, type: !1996, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1998, !1979}
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1962, file: !1921, line: 62, baseType: !1999)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "__owns_", scope: !1957, file: !1921, line: 117, baseType: !104, size: 8, offset: 64)
!2001 = !DISubprogram(name: "unique_lock", scope: !1957, file: !1921, line: 121, type: !2002, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2005 = !DISubprogram(name: "unique_lock", scope: !1957, file: !1921, line: 123, type: !2006, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !2004, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1961, size: 64)
!2009 = !DISubprogram(name: "unique_lock", scope: !1957, file: !1921, line: 126, type: !2010, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !2004, !2008, !2012}
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defer_lock_t", scope: !7, file: !1921, line: 66, size: 8, elements: !357, identifier: "_ZTSNSt3__112defer_lock_tE")
!2013 = !DISubprogram(name: "unique_lock", scope: !1957, file: !1921, line: 129, type: !2014, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !2004, !2008, !2016}
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "try_to_lock_t", scope: !7, file: !1921, line: 67, size: 8, elements: !357, identifier: "_ZTSNSt3__113try_to_lock_tE")
!2017 = !DISubprogram(name: "unique_lock", scope: !1957, file: !1921, line: 132, type: !2018, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !2004, !2008, !2020}
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adopt_lock_t", scope: !7, file: !1921, line: 68, size: 8, elements: !357, identifier: "_ZTSNSt3__112adopt_lock_tE")
!2021 = !DISubprogram(name: "~unique_lock", scope: !1957, file: !1921, line: 143, type: !2002, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2022 = !DISubprogram(name: "unique_lock", scope: !1957, file: !1921, line: 150, type: !2023, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !2004, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1957)
!2027 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSERKS2_", scope: !1957, file: !1921, line: 151, type: !2028, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1956, !2004, !2025}
!2030 = !DISubprogram(name: "unique_lock", scope: !1957, file: !1921, line: 156, type: !2031, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2004, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1957, size: 64)
!2034 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSEOS2_", scope: !1957, file: !1921, line: 160, type: !2035, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!1956, !2004, !2033}
!2037 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4lockEv", scope: !1957, file: !1921, line: 173, type: !2002, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2038 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE8try_lockEv", scope: !1957, file: !1921, line: 174, type: !2039, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!104, !2004}
!2041 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE6unlockEv", scope: !1957, file: !1921, line: 181, type: !2002, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2042 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4swapERS2_", scope: !1957, file: !1921, line: 184, type: !2043, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !2004, !1956}
!2045 = !DISubprogram(name: "release", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE7releaseEv", scope: !1957, file: !1921, line: 190, type: !2046, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!1960, !2004}
!2048 = !DISubprogram(name: "owns_lock", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE9owns_lockEv", scope: !1957, file: !1921, line: 199, type: !2049, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!104, !2051}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2052 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEEcvbEv", scope: !1957, file: !1921, line: 202, type: !2049, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2053 = !DISubprogram(name: "mutex", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE5mutexEv", scope: !1957, file: !1921, line: 204, type: !2054, isLocal: false, isDefinition: false, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!1960, !2051}
!2056 = !{!2057}
!2057 = !DITemplateTypeParameter(name: "_Mutex", type: !1962)
!2058 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__118condition_variable13native_handleEv", scope: !1920, file: !1921, line: 338, type: !2059, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2061, !1940}
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1920, file: !1921, line: 337, baseType: !2062)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!2063 = !DISubprogram(name: "__do_timed_wait", linkageName: "_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE", scope: !1920, file: !1921, line: 341, type: !2064, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !1940, !1956, !2066}
!2066 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !2068, file: !2067, line: 831, size: 64, elements: !2069, templateParams: !2163, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE")
!2067 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2068 = !DINamespace(name: "chrono", scope: !7, file: !2067, line: 316)
!2069 = !{!2070, !2140, !2144, !2149, !2154, !2158, !2159, !2162}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !2066, file: !2067, line: 841, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !2066, file: !2067, line: 837, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000000> >", scope: !2068, file: !2067, line: 488, size: 64, elements: !2073, templateParams: !2122, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE")
!2073 = !{!2074, !2076, !2080, !2085, !2094, !2095, !2099, !2102, !2103, !2104, !2108, !2109, !2114, !2115, !2116, !2117, !2120, !2121}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !2072, file: !2067, line: 528, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !2072, file: !2067, line: 525, baseType: !1487)
!2076 = !DISubprogram(name: "duration", scope: !2072, file: !2067, line: 533, type: !2077, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2080 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv", scope: !2072, file: !2067, line: 564, type: !2081, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2075, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2085 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpsEv", scope: !2072, file: !2067, line: 568, type: !2086, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2088, !2083}
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2089, file: !2067, line: 343, baseType: !2072)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !7, file: !2067, line: 339, size: 8, elements: !357, templateParams: !2090, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEES5_EEE")
!2090 = !{!2091}
!2091 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2092)
!2092 = !{!2093, !2093}
!2093 = !DITemplateTypeParameter(type: !2072)
!2094 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEngEv", scope: !2072, file: !2067, line: 569, type: !2086, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2095 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv", scope: !2072, file: !2067, line: 570, type: !2096, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!2098, !2079}
!2098 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2072, size: 64)
!2099 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEi", scope: !2072, file: !2067, line: 571, type: !2100, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2072, !2079, !26}
!2102 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEv", scope: !2072, file: !2067, line: 572, type: !2096, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2103 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEi", scope: !2072, file: !2067, line: 573, type: !2100, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2104 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpLERKS4_", scope: !2072, file: !2067, line: 575, type: !2105, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!2098, !2079, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2084, size: 64)
!2108 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmIERKS4_", scope: !2072, file: !2067, line: 576, type: !2105, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2109 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmLERKx", scope: !2072, file: !2067, line: 578, type: !2110, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!2098, !2079, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2075)
!2114 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEdVERKx", scope: !2072, file: !2067, line: 579, type: !2110, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2115 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKx", scope: !2072, file: !2067, line: 580, type: !2110, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2116 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKS4_", scope: !2072, file: !2067, line: 581, type: !2105, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2117 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE4zeroEv", scope: !2072, file: !2067, line: 585, type: !2118, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!2072}
!2120 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3minEv", scope: !2072, file: !2067, line: 586, type: !2118, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2121 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv", scope: !2072, file: !2067, line: 587, type: !2118, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2122 = !{!2123, !2124}
!2123 = !DITemplateTypeParameter(name: "_Rep", type: !1487)
!2124 = !DITemplateTypeParameter(name: "_Period", type: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000000>", scope: !7, file: !2126, line: 247, size: 8, elements: !2127, templateParams: !2137, identifier: "_ZTSNSt3__15ratioILl1ELl1000000000EEE")
!2126 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2127 = !{!2128, !2132, !2133, !2134, !2135, !2136}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !2125, file: !2126, line: 252, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2131, line: 32, baseType: !67)
!2131 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !2125, file: !2126, line: 253, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1000000000)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !2125, file: !2126, line: 254, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !2125, file: !2126, line: 255, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2125, file: !2126, line: 257, baseType: !2129, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !2125, file: !2126, line: 258, baseType: !2129, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000000)
!2137 = !{!2138, !2139}
!2138 = !DITemplateValueParameter(name: "_Num", type: !67, value: i64 1)
!2139 = !DITemplateValueParameter(name: "_Den", type: !67, value: i64 1000000000)
!2140 = !DISubprogram(name: "time_point", scope: !2066, file: !2067, line: 844, type: !2141, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2144 = !DISubprogram(name: "time_point", scope: !2066, file: !2067, line: 845, type: !2145, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !2143, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2149 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv", scope: !2066, file: !2067, line: 859, type: !2150, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!2071, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2154 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEpLERKS6_", scope: !2066, file: !2067, line: 863, type: !2155, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!2157, !2143, !2147}
!2157 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2066, size: 64)
!2158 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEmIERKS6_", scope: !2066, file: !2067, line: 864, type: !2155, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2159 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3minEv", scope: !2066, file: !2067, line: 868, type: !2160, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!2066}
!2162 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3maxEv", scope: !2066, file: !2067, line: 869, type: !2160, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2163 = !{!2164, !2274}
!2164 = !DITemplateTypeParameter(name: "_Clock", type: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "system_clock", scope: !2068, file: !2067, line: 1047, size: 8, elements: !2166, identifier: "_ZTSNSt3__16chrono12system_clockE")
!2166 = !{!2167, !2168, !2263, !2271}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "is_steady", scope: !2165, file: !2067, line: 1054, baseType: !452, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 false)
!2168 = !DISubprogram(name: "now", linkageName: "_ZNSt3__16chrono12system_clock3nowEv", scope: !2165, file: !2067, line: 1056, type: !2169, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_point", scope: !2165, file: !2067, line: 1053, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !2068, file: !2067, line: 831, size: 64, elements: !2173, templateParams: !2261, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE")
!2173 = !{!2174, !2238, !2242, !2247, !2252, !2256, !2257, !2260}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !2172, file: !2067, line: 841, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !2172, file: !2067, line: 837, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000> >", scope: !2068, file: !2067, line: 488, size: 64, elements: !2177, templateParams: !2226, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEE")
!2177 = !{!2178, !2180, !2184, !2189, !2198, !2199, !2203, !2206, !2207, !2208, !2212, !2213, !2218, !2219, !2220, !2221, !2224, !2225}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !2176, file: !2067, line: 528, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !2176, file: !2067, line: 525, baseType: !1487)
!2180 = !DISubprogram(name: "duration", scope: !2176, file: !2067, line: 533, type: !2181, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !2183}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2184 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv", scope: !2176, file: !2067, line: 564, type: !2185, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2179, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2189 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpsEv", scope: !2176, file: !2067, line: 568, type: !2190, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !2187}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2193, file: !2067, line: 343, baseType: !2176)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !7, file: !2067, line: 339, size: 8, elements: !357, templateParams: !2194, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEES5_EEE")
!2194 = !{!2195}
!2195 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2196)
!2196 = !{!2197, !2197}
!2197 = !DITemplateTypeParameter(type: !2176)
!2198 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEngEv", scope: !2176, file: !2067, line: 569, type: !2190, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2199 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEv", scope: !2176, file: !2067, line: 570, type: !2200, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!2202, !2183}
!2202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2176, size: 64)
!2203 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEi", scope: !2176, file: !2067, line: 571, type: !2204, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2176, !2183, !26}
!2206 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEv", scope: !2176, file: !2067, line: 572, type: !2200, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2207 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEi", scope: !2176, file: !2067, line: 573, type: !2204, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2208 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpLERKS4_", scope: !2176, file: !2067, line: 575, type: !2209, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2202, !2183, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2188, size: 64)
!2212 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmIERKS4_", scope: !2176, file: !2067, line: 576, type: !2209, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2213 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmLERKx", scope: !2176, file: !2067, line: 578, type: !2214, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2202, !2183, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2218 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEdVERKx", scope: !2176, file: !2067, line: 579, type: !2214, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2219 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKx", scope: !2176, file: !2067, line: 580, type: !2214, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2220 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKS4_", scope: !2176, file: !2067, line: 581, type: !2209, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2221 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE4zeroEv", scope: !2176, file: !2067, line: 585, type: !2222, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!2176}
!2224 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3minEv", scope: !2176, file: !2067, line: 586, type: !2222, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2225 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3maxEv", scope: !2176, file: !2067, line: 587, type: !2222, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2226 = !{!2123, !2227}
!2227 = !DITemplateTypeParameter(name: "_Period", type: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000>", scope: !7, file: !2126, line: 247, size: 8, elements: !2229, templateParams: !2236, identifier: "_ZTSNSt3__15ratioILl1ELl1000000EEE")
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !2228, file: !2126, line: 252, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !2228, file: !2126, line: 253, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1000000)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !2228, file: !2126, line: 254, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !2228, file: !2126, line: 255, baseType: !2129, flags: DIFlagStaticMember, extraData: i64 1)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2228, file: !2126, line: 257, baseType: !2129, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !2228, file: !2126, line: 258, baseType: !2129, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000)
!2236 = !{!2138, !2237}
!2237 = !DITemplateValueParameter(name: "_Den", type: !67, value: i64 1000000)
!2238 = !DISubprogram(name: "time_point", scope: !2172, file: !2067, line: 844, type: !2239, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2242 = !DISubprogram(name: "time_point", scope: !2172, file: !2067, line: 845, type: !2243, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !2241, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2175)
!2247 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochEv", scope: !2172, file: !2067, line: 859, type: !2248, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2175, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2252 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEpLERKS6_", scope: !2172, file: !2067, line: 863, type: !2253, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!2255, !2241, !2245}
!2255 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2172, size: 64)
!2256 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEmIERKS6_", scope: !2172, file: !2067, line: 864, type: !2253, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2257 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3minEv", scope: !2172, file: !2067, line: 868, type: !2258, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!2172}
!2260 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3maxEv", scope: !2172, file: !2067, line: 869, type: !2258, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2261 = !{!2164, !2262}
!2262 = !DITemplateTypeParameter(name: "_Duration", type: !2176)
!2263 = !DISubprogram(name: "to_time_t", linkageName: "_ZNSt3__16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE", scope: !2165, file: !2067, line: 1057, type: !2264, isLocal: false, isDefinition: false, scopeLine: 1057, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2266, !2269}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2267, line: 30, baseType: !2268)
!2267 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !87, line: 120, baseType: !67)
!2269 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2171)
!2271 = !DISubprogram(name: "from_time_t", linkageName: "_ZNSt3__16chrono12system_clock11from_time_tEl", scope: !2165, file: !2067, line: 1058, type: !2272, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!2171, !2266}
!2274 = !DITemplateTypeParameter(name: "_Duration", type: !2072)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!2276 = !DISubprogram(name: "__make_ready_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct27__make_ready_at_thread_exitEPNS_17__assoc_sub_stateE", scope: !1896, file: !1897, line: 134, type: !2277, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !1905, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__assoc_sub_state", scope: !7, file: !1897, line: 119, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__117__assoc_sub_stateE")
!2281 = !DISubprogram(name: "__compressed_pair_elem", scope: !1892, file: !332, line: 2082, type: !2282, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2285 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1892, file: !332, line: 2101, type: !2286, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!2288, !2284}
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1892, file: !332, line: 2078, baseType: !2289)
!2289 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1895, size: 64)
!2290 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1892, file: !332, line: 2102, type: !2291, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!2293, !2296}
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1892, file: !332, line: 2079, baseType: !2294)
!2294 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!2298 = !{!2299, !538, !539}
!2299 = !DITemplateTypeParameter(name: "_Tp", type: !1895)
!2300 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1889, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, 1, true>", scope: !7, file: !332, line: 2109, size: 8, elements: !2302, templateParams: !2333, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEE")
!2302 = !{!2303, !2317, !2321, !2326}
!2303 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2301, baseType: !2304, flags: DIFlagPrivate)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::__thread_struct>", scope: !7, file: !332, line: 2253, size: 8, elements: !2305, templateParams: !2315, identifier: "_ZTSNSt3__114default_deleteINS_15__thread_structEEE")
!2305 = !{!2306, !2310}
!2306 = !DISubprogram(name: "default_delete", scope: !2304, file: !332, line: 2257, type: !2307, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2310 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2304, file: !332, line: 2267, type: !2311, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !2313, !1895}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2304)
!2315 = !{!2316}
!2316 = !DITemplateTypeParameter(name: "_Tp", type: !1896)
!2317 = !DISubprogram(name: "__compressed_pair_elem", scope: !2301, file: !332, line: 2116, type: !2318, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !2320}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2321 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2301, file: !332, line: 2136, type: !2322, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!2324, !2320}
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2301, file: !332, line: 2111, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2304, size: 64)
!2326 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2301, file: !332, line: 2137, type: !2327, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!2329, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2301, file: !332, line: 2112, baseType: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2314, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2333 = !{!2334, !562, !563}
!2334 = !DITemplateTypeParameter(name: "_Tp", type: !2304)
!2335 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1889, file: !332, line: 2212, type: !2336, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!2288, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2339 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1889, file: !332, line: 2217, type: !2340, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!2293, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!2344 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !1889, file: !332, line: 2222, type: !2345, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!2324, !2338}
!2347 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !1889, file: !332, line: 2227, type: !2348, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!2329, !2342}
!2350 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE4swapERS5_", scope: !1889, file: !332, line: 2232, type: !2351, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2338, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1889, size: 64)
!2354 = !{!2355, !2356}
!2355 = !DITemplateTypeParameter(name: "_T1", type: !1895)
!2356 = !DITemplateTypeParameter(name: "_T2", type: !2304)
!2357 = !DISubprogram(name: "unique_ptr", scope: !1886, file: !332, line: 2427, type: !2358, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2361 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1886, size: 64)
!2362 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEOS4_", scope: !1886, file: !332, line: 2450, type: !2363, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2365, !2360, !2361}
!2365 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1886, size: 64)
!2366 = !DISubprogram(name: "~unique_ptr", scope: !1886, file: !332, line: 2539, type: !2367, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !2360}
!2369 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEDn", scope: !1886, file: !332, line: 2542, type: !2370, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!2365, !2360, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !9, file: !2373, line: 57, baseType: !2374)
!2373 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2374 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!2375 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !1886, file: !332, line: 2549, type: !2376, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!2378, !2383}
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2379, file: !426, line: 1084, baseType: !2380)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::__thread_struct>", scope: !7, file: !426, line: 1083, size: 8, elements: !357, templateParams: !2315, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_15__thread_structEEE")
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2381, file: !426, line: 1081, baseType: !1911)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::__thread_struct, true>", scope: !7, file: !426, line: 1081, size: 8, elements: !357, templateParams: !2382, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_15__thread_structELb1EEE")
!2382 = !{!2316, !227}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!2385 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEptEv", scope: !1886, file: !332, line: 2553, type: !2386, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!2388, !2383}
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1886, file: !332, line: 2338, baseType: !2389)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2390, file: !332, line: 1031, baseType: !2393)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !332, line: 1029, size: 8, elements: !357, templateParams: !2391, identifier: "_ZTSNSt3__114__pointer_typeINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2391 = !{!2316, !2392}
!2392 = !DITemplateTypeParameter(name: "_Dp", type: !2304)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2394, file: !332, line: 1023, baseType: !1895)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>, false>", scope: !404, file: !332, line: 1021, size: 8, elements: !357, templateParams: !2395, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_15__thread_structENS_14default_deleteIS2_EELb0EEE")
!2395 = !{!2316, !2392, !176}
!2396 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE3getEv", scope: !1886, file: !332, line: 2557, type: !2386, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2397 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !1886, file: !332, line: 2561, type: !2398, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!2400, !2360}
!2400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !1886, file: !332, line: 2337, baseType: !2304)
!2402 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !1886, file: !332, line: 2565, type: !2403, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2405, !2383}
!2405 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2407 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEcvbEv", scope: !1886, file: !332, line: 2569, type: !2408, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!104, !2383}
!2410 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !1886, file: !332, line: 2574, type: !2411, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2388, !2360}
!2413 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !1886, file: !332, line: 2581, type: !2414, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2360, !2388}
!2416 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE4swapERS4_", scope: !1886, file: !332, line: 2589, type: !2417, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2360, !2365}
!2419 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEaSERKS6_", scope: !1883, file: !1876, line: 188, type: !2420, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1883, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2424 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!2426 = !DISubprogram(name: "__tuple_leaf", scope: !1883, file: !1876, line: 190, type: !2427, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !2423}
!2429 = !DISubprogram(name: "__tuple_leaf", scope: !1883, file: !1876, line: 251, type: !2430, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !2423, !2424}
!2432 = !DISubprogram(name: "__tuple_leaf", scope: !1883, file: !1876, line: 252, type: !2433, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2423, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1883, size: 64)
!2436 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE4swapERS6_", scope: !1883, file: !1876, line: 264, type: !2437, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!26, !2423, !2422}
!2439 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !1883, file: !1876, line: 270, type: !2440, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!2365, !2423}
!2442 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !1883, file: !1876, line: 271, type: !2443, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2384, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2447 = !{!2448, !2449, !176}
!2448 = !DITemplateValueParameter(name: "_Ip", type: !88, value: i64 0)
!2449 = !DITemplateTypeParameter(name: "_Hp", type: !1886)
!2450 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1880, baseType: !2451, offset: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<1, void (*)(), false>", scope: !7, file: !1876, line: 170, size: 64, elements: !2452, templateParams: !2487, identifier: "_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE")
!2452 = !{!2453, !2457, !2464, !2467, !2470, !2474, !2477, !2481}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2451, file: !1876, line: 172, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null}
!2457 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEaSERKS3_", scope: !2451, file: !1876, line: 188, type: !2458, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2451, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2462 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2464 = !DISubprogram(name: "__tuple_leaf", scope: !2451, file: !1876, line: 190, type: !2465, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !2461}
!2467 = !DISubprogram(name: "__tuple_leaf", scope: !2451, file: !1876, line: 251, type: !2468, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2461, !2462}
!2470 = !DISubprogram(name: "__tuple_leaf", scope: !2451, file: !1876, line: 252, type: !2471, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !2461, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2451, size: 64)
!2474 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE4swapERS3_", scope: !2451, file: !1876, line: 264, type: !2475, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!26, !2461, !2460}
!2477 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2451, file: !1876, line: 270, type: !2478, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!2480, !2461}
!2480 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2454, size: 64)
!2481 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2451, file: !1876, line: 271, type: !2482, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!2484, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2487 = !{!2488, !2489, !176}
!2488 = !DITemplateValueParameter(name: "_Ip", type: !88, value: i64 1)
!2489 = !DITemplateTypeParameter(name: "_Hp", type: !2454)
!2490 = !DISubprogram(name: "__tuple_impl", scope: !1880, file: !1876, line: 373, type: !2491, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: true)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2494 = !DISubprogram(name: "__tuple_impl", scope: !1880, file: !1876, line: 444, type: !2495, isLocal: false, isDefinition: false, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{null, !2493, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!2499 = !DISubprogram(name: "__tuple_impl", scope: !1880, file: !1876, line: 445, type: !2500, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{null, !2493, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1880, size: 64)
!2503 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSERKSA_", scope: !1880, file: !1876, line: 449, type: !2504, isLocal: false, isDefinition: false, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2506, !2493, !2497}
!2506 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1880, size: 64)
!2507 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSEOSA_", scope: !1880, file: !1876, line: 457, type: !2508, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!2506, !2493, !2502}
!2510 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEE4swapERSA_", scope: !1880, file: !1876, line: 464, type: !2511, isLocal: false, isDefinition: false, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !2493, !2506}
!2513 = !{!2514, !2522}
!2514 = !DITemplateTypeParameter(name: "_Indx", type: !2515)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<0, 1>", scope: !7, file: !2516, line: 90, size: 8, elements: !357, templateParams: !2517, identifier: "_ZTSNSt3__115__tuple_indicesIJLm0ELm1EEEE")
!2516 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2517 = !{!2518}
!2518 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !2519)
!2519 = !{!2520, !2521}
!2520 = !DITemplateValueParameter(type: !88, value: i64 0)
!2521 = !DITemplateValueParameter(type: !88, value: i64 1)
!2522 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2523)
!2523 = !{!2524, !2525}
!2524 = !DITemplateTypeParameter(type: !1886)
!2525 = !DITemplateTypeParameter(type: !2454)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_EnableImplicitReducedArityExtension", scope: !1875, file: !1876, line: 483, baseType: !452, flags: DIFlagStaticMember, extraData: i1 false)
!2527 = !DISubprogram(name: "tuple", scope: !1875, file: !1876, line: 620, type: !2528, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2531 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!2533 = !DISubprogram(name: "tuple", scope: !1875, file: !1876, line: 621, type: !2534, isLocal: false, isDefinition: false, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2530, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1875, size: 64)
!2537 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSERKNS_5__natE", scope: !1875, file: !1876, line: 876, type: !2538, isLocal: false, isDefinition: false, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2540, !2530, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1875, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2544, file: !426, line: 414, baseType: !2548)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !426, line: 414, size: 8, elements: !357, templateParams: !2545, identifier: "_ZTSNSt3__111conditionalILb0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2545 = !{!429, !2546, !2547}
!2546 = !DITemplateTypeParameter(name: "_If", type: !1875)
!2547 = !DITemplateTypeParameter(name: "_Then", type: !2548)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !7, file: !426, line: 1584, size: 8, elements: !2549, identifier: "_ZTSNSt3__15__natE")
!2549 = !{!2550, !2554, !2559, !2563}
!2550 = !DISubprogram(name: "__nat", scope: !2548, file: !426, line: 1587, type: !2551, isLocal: false, isDefinition: false, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: true)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2554 = !DISubprogram(name: "__nat", scope: !2548, file: !426, line: 1588, type: !2555, isLocal: false, isDefinition: false, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: true)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{null, !2553, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2548)
!2559 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15__nataSERKS0_", scope: !2548, file: !426, line: 1589, type: !2560, isLocal: false, isDefinition: false, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: true)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!2562, !2553, !2557}
!2562 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2548, size: 64)
!2563 = !DISubprogram(name: "~__nat", scope: !2548, file: !426, line: 1590, type: !2551, isLocal: false, isDefinition: false, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: true)
!2564 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSEOS8_", scope: !1875, file: !1876, line: 884, type: !2565, isLocal: false, isDefinition: false, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2540, !2530, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2569, file: !426, line: 412, baseType: !1875)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !426, line: 412, size: 8, elements: !357, templateParams: !2570, identifier: "_ZTSNSt3__111conditionalILb1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2570 = !{!2571, !2546, !2547}
!2571 = !DITemplateValueParameter(name: "_Bp", type: !104, value: i8 1)
!2572 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEE4swapERS8_", scope: !1875, file: !1876, line: 906, type: !2573, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2530, !2540}
!2575 = !{!2522}
!2576 = !{!0, !2577, !2579, !2581}
!2577 = !DIGlobalVariableExpression(var: !2578)
!2578 = distinct !DIGlobalVariable(name: "data2", scope: !2, file: !3, line: 11, type: !26, isLocal: false, isDefinition: true)
!2579 = !DIGlobalVariableExpression(var: !2580)
!2580 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 12, type: !91, isLocal: false, isDefinition: true)
!2581 = !DIGlobalVariableExpression(var: !2582)
!2582 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 12, type: !91, isLocal: false, isDefinition: true)
!2583 = !{!2584, !2585, !2586, !2589, !2590, !2595, !2597, !2601, !2605, !2607, !2609, !2613, !2617, !2621, !2623, !2627, !2632, !2636, !2640, !2642, !2644, !2646, !2648, !2650, !2652, !2656, !2660, !2664, !2667, !2668, !2671, !2674, !2677, !2680, !2683, !2686, !2688, !2690, !2692, !2694, !2696, !2698, !2700, !2702, !2704, !2706, !2708, !2710, !2712, !2714, !2716, !2720, !2723, !2724, !2727, !2728, !2735, !2741, !2747, !2751, !2755, !2759, !2763, !2768, !2772, !2776, !2780, !2784, !2788, !2792, !2794, !2798, !2802, !2806, !2810, !2814, !2816, !2820, !2824, !2826, !2830, !2832, !2839, !2843, !2848, !2852, !2854, !2858, !2862, !2864, !2868, !2874, !2878, !2882, !2888, !2940, !2941, !2942, !2947, !2949, !2953, !2957, !2961, !2963, !2967, !2971, !2975, !2986, !2988, !2992, !2996, !3000, !3002, !3006, !3010, !3014, !3016, !3018, !3020, !3024, !3028, !3033, !3037, !3043, !3047, !3051, !3053, !3055, !3057, !3061, !3065, !3069, !3071, !3073, !3077, !3081, !3083, !3085, !3089, !3093, !3095, !3099, !3101, !3103, !3106, !3108, !3110, !3112, !3114, !3116, !3118, !3120, !3122, !3124, !3126, !3128, !3130, !3132, !3136, !3141, !3146, !3151, !3153, !3156, !3158, !3160, !3162, !3164, !3166, !3168, !3170, !3172, !3174, !3178, !3182, !3186, !3188, !3192, !3196, !3208, !3209, !3224, !3225, !3226, !3231, !3233, !3237, !3241, !3245, !3249, !3251, !3255, !3259, !3263, !3267, !3271, !3275, !3277, !3279, !3283, !3288, !3292, !3296, !3300, !3304, !3308, !3312, !3316, !3320, !3322, !3324, !3328, !3330, !3334, !3338, !3343, !3345, !3347, !3349, !3353, !3357, !3361, !3363, !3367, !3369, !3371, !3373, !3375, !3381, !3385, !3387, !3393, !3398, !3402, !3406, !3411, !3416, !3420, !3424, !3428, !3432, !3434, !3436, !3440, !3441, !3442, !3443, !3447, !3451, !3456, !3461, !3465, !3471, !3475, !3477}
!2584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !65, line: 49)
!2585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 50)
!2586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2587, line: 55)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !2588, line: 32, baseType: !1694)
!2588 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 69)
!2590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2591, line: 70)
!2591 = !DISubprogram(name: "memcpy", scope: !2592, file: !2592, line: 72, type: !2593, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2592 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!72, !72, !390, !84}
!2595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2596, line: 71)
!2596 = !DISubprogram(name: "memmove", scope: !2592, file: !2592, line: 73, type: !2593, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2598, line: 72)
!2598 = !DISubprogram(name: "strcpy", scope: !2592, file: !2592, line: 79, type: !2599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!371, !371, !307}
!2601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2602, line: 73)
!2602 = !DISubprogram(name: "strncpy", scope: !2592, file: !2592, line: 85, type: !2603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!371, !371, !307, !84}
!2605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2606, line: 74)
!2606 = !DISubprogram(name: "strcat", scope: !2592, file: !2592, line: 75, type: !2599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2608, line: 75)
!2608 = !DISubprogram(name: "strncat", scope: !2592, file: !2592, line: 83, type: !2603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2610, line: 76)
!2610 = !DISubprogram(name: "memcmp", scope: !2592, file: !2592, line: 71, type: !2611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!26, !390, !390, !84}
!2613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2614, line: 77)
!2614 = !DISubprogram(name: "strcmp", scope: !2592, file: !2592, line: 77, type: !2615, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!26, !307, !307}
!2617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2618, line: 78)
!2618 = !DISubprogram(name: "strncmp", scope: !2592, file: !2592, line: 84, type: !2619, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!26, !307, !307, !84}
!2621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2622, line: 79)
!2622 = !DISubprogram(name: "strcoll", scope: !2592, file: !2592, line: 78, type: !2615, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2624, line: 80)
!2624 = !DISubprogram(name: "strxfrm", scope: !2592, file: !2592, line: 91, type: !2625, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!84, !371, !307, !84}
!2627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2628, line: 81)
!2628 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !2629, file: !2629, line: 99, type: !2630, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2629 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!72, !72, !26, !84}
!2632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2633, line: 82)
!2633 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !2629, file: !2629, line: 78, type: !2634, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!371, !371, !26}
!2636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2637, line: 83)
!2637 = !DISubprogram(name: "strcspn", scope: !2592, file: !2592, line: 80, type: !2638, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!84, !307, !307}
!2640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2641, line: 84)
!2641 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !2629, file: !2629, line: 85, type: !2599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2643, line: 85)
!2643 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !2629, file: !2629, line: 92, type: !2634, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2645, line: 86)
!2645 = !DISubprogram(name: "strspn", scope: !2592, file: !2592, line: 88, type: !2638, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2647, line: 87)
!2647 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !2629, file: !2629, line: 106, type: !2599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2649, line: 89)
!2649 = !DISubprogram(name: "strtok", scope: !2592, file: !2592, line: 90, type: !2599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2651, line: 91)
!2651 = !DISubprogram(name: "memset", scope: !2592, file: !2592, line: 74, type: !2630, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2653, line: 92)
!2653 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !2592, file: !2592, line: 81, type: !2654, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!371, !26}
!2656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2657, line: 93)
!2657 = !DISubprogram(name: "strlen", scope: !2592, file: !2592, line: 82, type: !2658, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!84, !307}
!2660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2661, line: 153)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !2662, line: 30, baseType: !2663)
!2662 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2663 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2665, line: 154)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !2666, line: 30, baseType: !1659)
!2666 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1303, line: 155)
!2668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2669, line: 156)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !2670, line: 30, baseType: !1487)
!2670 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2672, line: 158)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !2673, line: 31, baseType: !505)
!2673 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2675, line: 159)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !2676, line: 31, baseType: !1663)
!2676 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2678, line: 160)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !2679, line: 31, baseType: !30)
!2679 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2681, line: 161)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !2682, line: 31, baseType: !1682)
!2682 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2684, line: 163)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !2685, line: 29, baseType: !2661)
!2685 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2687, line: 164)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !2685, line: 30, baseType: !2665)
!2688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2689, line: 165)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !2685, line: 31, baseType: !1303)
!2690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2691, line: 166)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !2685, line: 32, baseType: !2669)
!2692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2693, line: 168)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !2685, line: 33, baseType: !2672)
!2694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2695, line: 169)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !2685, line: 34, baseType: !2675)
!2696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2697, line: 170)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !2685, line: 35, baseType: !2678)
!2698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2699, line: 171)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !2685, line: 36, baseType: !2681)
!2700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2701, line: 173)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !2685, line: 40, baseType: !2661)
!2702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2703, line: 174)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !2685, line: 41, baseType: !2665)
!2704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2705, line: 175)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !2685, line: 42, baseType: !1303)
!2706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2707, line: 176)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !2685, line: 43, baseType: !2669)
!2708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2709, line: 178)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !2685, line: 44, baseType: !2672)
!2710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2711, line: 179)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !2685, line: 45, baseType: !2675)
!2712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2713, line: 180)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !2685, line: 46, baseType: !2678)
!2714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2715, line: 181)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !2685, line: 47, baseType: !2681)
!2716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2717, line: 183)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !2718, line: 30, baseType: !2719)
!2718 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !87, line: 49, baseType: !67)
!2720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2721, line: 184)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !2722, line: 30, baseType: !88)
!2722 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2130, line: 186)
!2724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2725, line: 187)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2726, line: 32, baseType: !88)
!2726 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 100)
!2728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2729, line: 101)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !2730, line: 85, baseType: !2731)
!2730 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2730, line: 82, size: 64, elements: !2732, identifier: "_ZTS5div_t")
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2731, file: !2730, line: 83, baseType: !26, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2731, file: !2730, line: 84, baseType: !26, size: 32, offset: 32)
!2735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2736, line: 102)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !2730, line: 90, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2730, line: 87, size: 128, elements: !2738, identifier: "_ZTS6ldiv_t")
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2737, file: !2730, line: 88, baseType: !67, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2737, file: !2730, line: 89, baseType: !67, size: 64, offset: 64)
!2741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2742, line: 104)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !2730, line: 96, baseType: !2743)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2730, line: 93, size: 128, elements: !2744, identifier: "_ZTS7lldiv_t")
!2744 = !{!2745, !2746}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2743, file: !2730, line: 94, baseType: !1487, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2743, file: !2730, line: 95, baseType: !1487, size: 64, offset: 64)
!2747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2748, line: 106)
!2748 = !DISubprogram(name: "atof", scope: !2730, file: !2730, line: 131, type: !2749, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!1690, !307}
!2751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2752, line: 107)
!2752 = !DISubprogram(name: "atoi", scope: !2730, file: !2730, line: 132, type: !2753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!26, !307}
!2755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2756, line: 108)
!2756 = !DISubprogram(name: "atol", scope: !2730, file: !2730, line: 133, type: !2757, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!67, !307}
!2759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2760, line: 110)
!2760 = !DISubprogram(name: "atoll", scope: !2730, file: !2730, line: 136, type: !2761, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!1487, !307}
!2763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2764, line: 112)
!2764 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !2730, file: !2730, line: 162, type: !2765, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!1690, !307, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2769, line: 113)
!2769 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !2730, file: !2730, line: 163, type: !2770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!1686, !307, !2767}
!2772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2773, line: 114)
!2773 = !DISubprogram(name: "strtold", scope: !2730, file: !2730, line: 166, type: !2774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!1694, !307, !2767}
!2776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2777, line: 115)
!2777 = !DISubprogram(name: "strtol", scope: !2730, file: !2730, line: 164, type: !2778, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!67, !307, !2767, !26}
!2780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2781, line: 117)
!2781 = !DISubprogram(name: "strtoll", scope: !2730, file: !2730, line: 169, type: !2782, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!1487, !307, !2767, !26}
!2784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2785, line: 119)
!2785 = !DISubprogram(name: "strtoul", scope: !2730, file: !2730, line: 172, type: !2786, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!88, !307, !2767, !26}
!2788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2789, line: 121)
!2789 = !DISubprogram(name: "strtoull", scope: !2730, file: !2730, line: 175, type: !2790, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!1682, !307, !2767, !26}
!2792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2793, line: 123)
!2793 = !DISubprogram(name: "rand", scope: !2730, file: !2730, line: 159, type: !24, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2795, line: 124)
!2795 = !DISubprogram(name: "srand", scope: !2730, file: !2730, line: 161, type: !2796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !30}
!2798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2799, line: 125)
!2799 = !DISubprogram(name: "calloc", scope: !2730, file: !2730, line: 140, type: !2800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!72, !84, !84}
!2802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2803, line: 126)
!2803 = !DISubprogram(name: "free", scope: !2730, file: !2730, line: 143, type: !2804, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !72}
!2806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2807, line: 127)
!2807 = !DISubprogram(name: "malloc", scope: !2730, file: !2730, line: 152, type: !2808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!72, !84}
!2810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2811, line: 128)
!2811 = !DISubprogram(name: "realloc", scope: !2730, file: !2730, line: 160, type: !2812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!72, !72, !84}
!2814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2815, line: 129)
!2815 = !DISubprogram(name: "abort", scope: !2730, file: !2730, line: 128, type: !2455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!2816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2817, line: 130)
!2817 = !DISubprogram(name: "atexit", scope: !2730, file: !2730, line: 130, type: !2818, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!26, !2454}
!2820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2821, line: 131)
!2821 = !DISubprogram(name: "exit", scope: !2730, file: !2730, line: 142, type: !2822, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !26}
!2824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2825, line: 132)
!2825 = !DISubprogram(name: "_Exit", scope: !2730, file: !2730, line: 182, type: !2822, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!2826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2827, line: 134)
!2827 = !DISubprogram(name: "getenv", scope: !2730, file: !2730, line: 144, type: !2828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!371, !307}
!2830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2831, line: 135)
!2831 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !2730, file: !2730, line: 177, type: !2753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2833, line: 137)
!2833 = !DISubprogram(name: "bsearch", scope: !2730, file: !2730, line: 138, type: !2834, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!72, !390, !390, !84, !84, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!26, !390, !390}
!2839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2840, line: 138)
!2840 = !DISubprogram(name: "qsort", scope: !2730, file: !2730, line: 157, type: !2841, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !72, !84, !84, !2836}
!2843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2844, line: 139)
!2844 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !2845, file: !2845, line: 113, type: !2846, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2845 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!1487, !1487}
!2848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2849, line: 140)
!2849 = !DISubprogram(name: "labs", scope: !2730, file: !2730, line: 145, type: !2850, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!67, !67}
!2852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2853, line: 142)
!2853 = !DISubprogram(name: "llabs", scope: !2730, file: !2730, line: 149, type: !2846, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2855, line: 144)
!2855 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !2845, file: !2845, line: 118, type: !2856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!2742, !1487, !1487}
!2858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2859, line: 145)
!2859 = !DISubprogram(name: "ldiv", scope: !2730, file: !2730, line: 146, type: !2860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!2736, !67, !67}
!2862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2863, line: 147)
!2863 = !DISubprogram(name: "lldiv", scope: !2730, file: !2730, line: 150, type: !2856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2865, line: 149)
!2865 = !DISubprogram(name: "mblen", scope: !2730, file: !2730, line: 153, type: !2866, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!26, !307, !84}
!2868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2869, line: 150)
!2869 = !DISubprogram(name: "mbtowc", scope: !2730, file: !2730, line: 155, type: !2870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!26, !2872, !307, !84}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!2874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2875, line: 151)
!2875 = !DISubprogram(name: "wctomb", scope: !2730, file: !2730, line: 179, type: !2876, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!26, !371, !2873}
!2878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2879, line: 152)
!2879 = !DISubprogram(name: "mbstowcs", scope: !2730, file: !2730, line: 154, type: !2880, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!84, !2872, !307, !84}
!2882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2883, line: 153)
!2883 = !DISubprogram(name: "wcstombs", scope: !2730, file: !2730, line: 178, type: !2884, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!84, !371, !2886, !84}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2873)
!2888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2889, line: 108)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2890, line: 153, baseType: !2891)
!2890 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2890, line: 122, size: 1216, elements: !2892, identifier: "_ZTS7__sFILE")
!2892 = !{!2893, !2895, !2896, !2897, !2898, !2899, !2904, !2905, !2906, !2910, !2914, !2922, !2926, !2927, !2930, !2931, !2933, !2937, !2938, !2939}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2891, file: !2890, line: 123, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2891, file: !2890, line: 124, baseType: !26, size: 32, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2891, file: !2890, line: 125, baseType: !26, size: 32, offset: 96)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2891, file: !2890, line: 126, baseType: !1659, size: 16, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2891, file: !2890, line: 127, baseType: !1659, size: 16, offset: 144)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2891, file: !2890, line: 128, baseType: !2900, size: 128, offset: 192)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2890, line: 88, size: 128, elements: !2901, identifier: "_ZTS6__sbuf")
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2900, file: !2890, line: 89, baseType: !2894, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2900, file: !2890, line: 90, baseType: !26, size: 32, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2891, file: !2890, line: 129, baseType: !26, size: 32, offset: 320)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2891, file: !2890, line: 132, baseType: !72, size: 64, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2891, file: !2890, line: 133, baseType: !2907, size: 64, offset: 448)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!26, !72}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2891, file: !2890, line: 134, baseType: !2911, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!26, !72, !371, !26}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2891, file: !2890, line: 135, baseType: !2915, size: 64, offset: 576)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!2918, !72, !2918, !26}
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !2890, line: 77, baseType: !2919)
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !2920, line: 71, baseType: !2921)
!2920 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !87, line: 46, baseType: !1487)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2891, file: !2890, line: 136, baseType: !2923, size: 64, offset: 640)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!26, !72, !307, !26}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2891, file: !2890, line: 139, baseType: !2900, size: 128, offset: 704)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !2891, file: !2890, line: 140, baseType: !2928, size: 64, offset: 832)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !2890, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2891, file: !2890, line: 141, baseType: !26, size: 32, offset: 896)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2891, file: !2890, line: 144, baseType: !2932, size: 24, offset: 928)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 24, elements: !517)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2891, file: !2890, line: 145, baseType: !2934, size: 8, offset: 952)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 8, elements: !2935)
!2935 = !{!2936}
!2936 = !DISubrange(count: 1)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2891, file: !2890, line: 148, baseType: !2900, size: 128, offset: 960)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2891, file: !2890, line: 151, baseType: !26, size: 32, offset: 1088)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2891, file: !2890, line: 152, baseType: !2918, size: 64, offset: 1152)
!2940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2918, line: 109)
!2941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 110)
!2942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2943, line: 112)
!2943 = !DISubprogram(name: "fclose", scope: !2890, file: !2890, line: 232, type: !2944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!26, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2948, line: 113)
!2948 = !DISubprogram(name: "fflush", scope: !2890, file: !2890, line: 235, type: !2944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2950, line: 114)
!2950 = !DISubprogram(name: "setbuf", scope: !2890, file: !2890, line: 267, type: !2951, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !2946, !371}
!2953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2954, line: 115)
!2954 = !DISubprogram(name: "setvbuf", scope: !2890, file: !2890, line: 268, type: !2955, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!26, !2946, !371, !26, !84}
!2957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2958, line: 116)
!2958 = !DISubprogram(name: "fprintf", scope: !2890, file: !2890, line: 244, type: !2959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!26, !2946, !307, null}
!2961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2962, line: 117)
!2962 = !DISubprogram(name: "fscanf", scope: !2890, file: !2890, line: 250, type: !2959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2964, line: 118)
!2964 = !DISubprogram(name: "snprintf", scope: !2890, file: !2890, line: 421, type: !2965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!26, !371, !84, !307, null}
!2967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2968, line: 119)
!2968 = !DISubprogram(name: "sprintf", scope: !2890, file: !2890, line: 269, type: !2969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!26, !371, !307, null}
!2971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2972, line: 120)
!2972 = !DISubprogram(name: "sscanf", scope: !2890, file: !2890, line: 270, type: !2973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!26, !307, !307, null}
!2975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2976, line: 121)
!2976 = !DISubprogram(name: "vfprintf", scope: !2890, file: !2890, line: 278, type: !2977, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!26, !2946, !307, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2981, identifier: "_ZTS13__va_list_tag")
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2980, file: !3, baseType: !30, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2980, file: !3, baseType: !30, size: 32, offset: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2980, file: !3, baseType: !72, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2980, file: !3, baseType: !72, size: 64, offset: 128)
!2986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2987, line: 122)
!2987 = !DISubprogram(name: "vfscanf", scope: !2890, file: !2890, line: 422, type: !2977, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2989, line: 123)
!2989 = !DISubprogram(name: "vsscanf", scope: !2890, file: !2890, line: 425, type: !2990, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!26, !307, !307, !2979}
!2992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2993, line: 124)
!2993 = !DISubprogram(name: "vsnprintf", scope: !2890, file: !2890, line: 424, type: !2994, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!26, !371, !84, !307, !2979}
!2996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2997, line: 125)
!2997 = !DISubprogram(name: "vsprintf", scope: !2890, file: !2890, line: 280, type: !2998, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!26, !371, !307, !2979}
!3000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3001, line: 126)
!3001 = !DISubprogram(name: "fgetc", scope: !2890, file: !2890, line: 236, type: !2944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3003, line: 127)
!3003 = !DISubprogram(name: "fgets", scope: !2890, file: !2890, line: 238, type: !3004, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!371, !371, !26, !2946}
!3006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3007, line: 128)
!3007 = !DISubprogram(name: "fputc", scope: !2890, file: !2890, line: 245, type: !3008, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!26, !26, !2946}
!3010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3011, line: 129)
!3011 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !2890, file: !2890, line: 246, type: !3012, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!26, !307, !2946}
!3014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3015, line: 130)
!3015 = !DISubprogram(name: "getc", scope: !2890, file: !2890, line: 255, type: !2944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3017, line: 131)
!3017 = !DISubprogram(name: "putc", scope: !2890, file: !2890, line: 260, type: !3008, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3019, line: 132)
!3019 = !DISubprogram(name: "ungetc", scope: !2890, file: !2890, line: 277, type: !3008, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3021, line: 133)
!3021 = !DISubprogram(name: "fread", scope: !2890, file: !2890, line: 247, type: !3022, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!84, !72, !84, !84, !2946}
!3024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3025, line: 134)
!3025 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !2890, file: !2890, line: 254, type: !3026, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!84, !390, !84, !84, !2946}
!3028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3029, line: 135)
!3029 = !DISubprogram(name: "fgetpos", scope: !2890, file: !2890, line: 237, type: !3030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!26, !2946, !3032}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!3033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3034, line: 136)
!3034 = !DISubprogram(name: "fseek", scope: !2890, file: !2890, line: 251, type: !3035, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!26, !2946, !67, !26}
!3037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3038, line: 137)
!3038 = !DISubprogram(name: "fsetpos", scope: !2890, file: !2890, line: 252, type: !3039, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!26, !2946, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2918)
!3043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3044, line: 138)
!3044 = !DISubprogram(name: "ftell", scope: !2890, file: !2890, line: 253, type: !3045, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!67, !2946}
!3047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3048, line: 139)
!3048 = !DISubprogram(name: "rewind", scope: !2890, file: !2890, line: 265, type: !3049, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !2946}
!3051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3052, line: 140)
!3052 = !DISubprogram(name: "clearerr", scope: !2890, file: !2890, line: 231, type: !3049, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3054, line: 141)
!3054 = !DISubprogram(name: "feof", scope: !2890, file: !2890, line: 233, type: !2944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3056, line: 142)
!3056 = !DISubprogram(name: "ferror", scope: !2890, file: !2890, line: 234, type: !2944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3058, line: 143)
!3058 = !DISubprogram(name: "perror", scope: !2890, file: !2890, line: 258, type: !3059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !307}
!3061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3062, line: 146)
!3062 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !2890, file: !2890, line: 242, type: !3063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!2946, !307, !307}
!3065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3066, line: 147)
!3066 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !2890, file: !2890, line: 248, type: !3067, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!2946, !307, !307, !2946}
!3069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3070, line: 148)
!3070 = !DISubprogram(name: "remove", scope: !2890, file: !2890, line: 263, type: !2753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3072, line: 149)
!3072 = !DISubprogram(name: "rename", scope: !2890, file: !2890, line: 264, type: !2615, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3074, line: 150)
!3074 = !DISubprogram(name: "tmpfile", scope: !2890, file: !2890, line: 271, type: !3075, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!2946}
!3077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3078, line: 151)
!3078 = !DISubprogram(name: "tmpnam", scope: !2890, file: !2890, line: 276, type: !3079, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!371, !371}
!3081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3082, line: 155)
!3082 = !DISubprogram(name: "getchar", scope: !2890, file: !2890, line: 256, type: !24, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3084, line: 157)
!3084 = !DISubprogram(name: "gets", scope: !2890, file: !2890, line: 257, type: !3079, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3086, line: 159)
!3086 = !DISubprogram(name: "scanf", scope: !2890, file: !2890, line: 266, type: !3087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!26, !307, null}
!3089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3090, line: 160)
!3090 = !DISubprogram(name: "vscanf", scope: !2890, file: !2890, line: 423, type: !3091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!26, !307, !2979}
!3093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3094, line: 164)
!3094 = !DISubprogram(name: "printf", scope: !2890, file: !2890, line: 259, type: !3087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3096, line: 165)
!3096 = !DISubprogram(name: "putchar", scope: !2890, file: !2890, line: 261, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!26, !26}
!3099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3100, line: 166)
!3100 = !DISubprogram(name: "puts", scope: !2890, file: !2890, line: 262, type: !2753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3102, line: 167)
!3102 = !DISubprogram(name: "vprintf", scope: !2890, file: !2890, line: 279, type: !3091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3104, line: 104)
!3104 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !3105, file: !3105, line: 212, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3105 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3107, line: 105)
!3107 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !3105, file: !3105, line: 218, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3109, line: 106)
!3109 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !3105, file: !3105, line: 224, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3111, line: 107)
!3111 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !3105, file: !3105, line: 230, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3113, line: 108)
!3113 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !3105, file: !3105, line: 237, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3115, line: 109)
!3115 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !3105, file: !3105, line: 243, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3117, line: 110)
!3117 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !3105, file: !3105, line: 249, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3119, line: 111)
!3119 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !3105, file: !3105, line: 255, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3121, line: 112)
!3121 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !3105, file: !3105, line: 261, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3123, line: 113)
!3123 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !3105, file: !3105, line: 267, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3125, line: 114)
!3125 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !3105, file: !3105, line: 273, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3127, line: 115)
!3127 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !3105, file: !3105, line: 280, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3129, line: 116)
!3129 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !3105, file: !3105, line: 292, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3131, line: 117)
!3131 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !3105, file: !3105, line: 298, type: !3097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3133, line: 63)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3134, line: 31, baseType: !3135)
!3134 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !87, line: 112, baseType: !26)
!3136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3137, line: 64)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !3138, line: 31, baseType: !3139)
!3138 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !3140, line: 40, baseType: !26)
!3140 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3142, line: 65)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !3143, line: 31, baseType: !3144)
!3143 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !3140, line: 42, baseType: !3145)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !87, line: 45, baseType: !30)
!3146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3147, line: 66)
!3147 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !3148, file: !3148, line: 66, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3148 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!26, !3133}
!3151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3152, line: 67)
!3152 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !3148, file: !3148, line: 72, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3154, line: 68)
!3154 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !3155, file: !3155, line: 50, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3155 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3157, line: 69)
!3157 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !3148, file: !3148, line: 78, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3159, line: 70)
!3159 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !3148, file: !3148, line: 90, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3161, line: 71)
!3161 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !3148, file: !3148, line: 96, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3163, line: 72)
!3163 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !3148, file: !3148, line: 102, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3165, line: 73)
!3165 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !3148, file: !3148, line: 108, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3167, line: 74)
!3167 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !3148, file: !3148, line: 114, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3169, line: 75)
!3169 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !3148, file: !3148, line: 120, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3171, line: 76)
!3171 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !3148, file: !3148, line: 126, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3173, line: 77)
!3173 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !3148, file: !3148, line: 132, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3175, line: 78)
!3175 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !3148, file: !3148, line: 84, type: !3176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!26, !3133, !3142}
!3178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3179, line: 79)
!3179 = !DISubprogram(name: "wctype", scope: !3148, file: !3148, line: 172, type: !3180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!3142, !307}
!3182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3183, line: 80)
!3183 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !3148, file: !3148, line: 138, type: !3184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!3133, !3133}
!3186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3187, line: 81)
!3187 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !3148, file: !3148, line: 144, type: !3184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3189, line: 82)
!3189 = !DISubprogram(name: "towctrans", scope: !3155, file: !3155, line: 121, type: !3190, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!3133, !3133, !3137}
!3192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3193, line: 83)
!3193 = !DISubprogram(name: "wctrans", scope: !3155, file: !3155, line: 123, type: !3194, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!3137, !307}
!3196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3197, line: 116)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3198, line: 31, baseType: !3199)
!3198 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !87, line: 81, baseType: !3200)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !87, line: 79, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !87, line: 76, size: 1024, elements: !3202, identifier: "_ZTS11__mbstate_t")
!3202 = !{!3203, !3207}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !3201, file: !87, line: 77, baseType: !3204, size: 1024)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 1024, elements: !3205)
!3205 = !{!3206}
!3206 = !DISubrange(count: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !3201, file: !87, line: 78, baseType: !1487, size: 64)
!3208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 117)
!3209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3210, line: 118)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !3211, line: 73, size: 448, elements: !3212, identifier: "_ZTS2tm")
!3211 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !3210, file: !3211, line: 74, baseType: !26, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !3210, file: !3211, line: 75, baseType: !26, size: 32, offset: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !3210, file: !3211, line: 76, baseType: !26, size: 32, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !3210, file: !3211, line: 77, baseType: !26, size: 32, offset: 96)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !3210, file: !3211, line: 78, baseType: !26, size: 32, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !3210, file: !3211, line: 79, baseType: !26, size: 32, offset: 160)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !3210, file: !3211, line: 80, baseType: !26, size: 32, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !3210, file: !3211, line: 81, baseType: !26, size: 32, offset: 224)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !3210, file: !3211, line: 82, baseType: !26, size: 32, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !3210, file: !3211, line: 83, baseType: !67, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !3210, file: !3211, line: 84, baseType: !371, size: 64, offset: 384)
!3224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3133, line: 119)
!3225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2889, line: 120)
!3226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3227, line: 121)
!3227 = !DISubprogram(name: "fwprintf", scope: !3228, file: !3228, line: 103, type: !3229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3228 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!26, !2946, !2886, null}
!3231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3232, line: 122)
!3232 = !DISubprogram(name: "fwscanf", scope: !3228, file: !3228, line: 104, type: !3229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3234, line: 123)
!3234 = !DISubprogram(name: "swprintf", scope: !3228, file: !3228, line: 115, type: !3235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!26, !2872, !84, !2886, null}
!3237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3238, line: 124)
!3238 = !DISubprogram(name: "vfwprintf", scope: !3228, file: !3228, line: 118, type: !3239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!26, !2946, !2886, !2979}
!3241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3242, line: 125)
!3242 = !DISubprogram(name: "vswprintf", scope: !3228, file: !3228, line: 120, type: !3243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!26, !2872, !84, !2886, !2979}
!3245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3246, line: 126)
!3246 = !DISubprogram(name: "swscanf", scope: !3228, file: !3228, line: 116, type: !3247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!26, !2886, !2886, null}
!3249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3250, line: 127)
!3250 = !DISubprogram(name: "vfwscanf", scope: !3228, file: !3228, line: 170, type: !3239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3252, line: 128)
!3252 = !DISubprogram(name: "vswscanf", scope: !3228, file: !3228, line: 172, type: !3253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!26, !2886, !2886, !2979}
!3255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3256, line: 129)
!3256 = !DISubprogram(name: "fgetwc", scope: !3228, file: !3228, line: 98, type: !3257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!3133, !2946}
!3259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3260, line: 130)
!3260 = !DISubprogram(name: "fgetws", scope: !3228, file: !3228, line: 99, type: !3261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!2872, !2872, !26, !2946}
!3263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3264, line: 131)
!3264 = !DISubprogram(name: "fputwc", scope: !3228, file: !3228, line: 100, type: !3265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!3133, !2873, !2946}
!3267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3268, line: 132)
!3268 = !DISubprogram(name: "fputws", scope: !3228, file: !3228, line: 101, type: !3269, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!26, !2886, !2946}
!3271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3272, line: 133)
!3272 = !DISubprogram(name: "fwide", scope: !3228, file: !3228, line: 102, type: !3273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!26, !2946, !26}
!3275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3276, line: 134)
!3276 = !DISubprogram(name: "getwc", scope: !3228, file: !3228, line: 105, type: !3257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3278, line: 135)
!3278 = !DISubprogram(name: "putwc", scope: !3228, file: !3228, line: 113, type: !3265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3280, line: 136)
!3280 = !DISubprogram(name: "ungetwc", scope: !3228, file: !3228, line: 117, type: !3281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!3133, !3133, !2946}
!3283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3284, line: 137)
!3284 = !DISubprogram(name: "wcstod", scope: !3228, file: !3228, line: 144, type: !3285, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!1690, !2886, !3287}
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!3288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3289, line: 138)
!3289 = !DISubprogram(name: "wcstof", scope: !3228, file: !3228, line: 175, type: !3290, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!1686, !2886, !3287}
!3292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3293, line: 139)
!3293 = !DISubprogram(name: "wcstold", scope: !3228, file: !3228, line: 177, type: !3294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!1694, !2886, !3287}
!3296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3297, line: 140)
!3297 = !DISubprogram(name: "wcstol", scope: !3228, file: !3228, line: 147, type: !3298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!67, !2886, !3287, !26}
!3300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3301, line: 142)
!3301 = !DISubprogram(name: "wcstoll", scope: !3228, file: !3228, line: 180, type: !3302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!1487, !2886, !3287, !26}
!3304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3305, line: 144)
!3305 = !DISubprogram(name: "wcstoul", scope: !3228, file: !3228, line: 149, type: !3306, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!88, !2886, !3287, !26}
!3308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3309, line: 146)
!3309 = !DISubprogram(name: "wcstoull", scope: !3228, file: !3228, line: 182, type: !3310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!1682, !2886, !3287, !26}
!3312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3313, line: 148)
!3313 = !DISubprogram(name: "wcscpy", scope: !3228, file: !3228, line: 128, type: !3314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!2872, !2872, !2886}
!3316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3317, line: 149)
!3317 = !DISubprogram(name: "wcsncpy", scope: !3228, file: !3228, line: 135, type: !3318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!2872, !2872, !2886, !84}
!3320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3321, line: 150)
!3321 = !DISubprogram(name: "wcscat", scope: !3228, file: !3228, line: 124, type: !3314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3323, line: 151)
!3323 = !DISubprogram(name: "wcsncat", scope: !3228, file: !3228, line: 133, type: !3318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3325, line: 152)
!3325 = !DISubprogram(name: "wcscmp", scope: !3228, file: !3228, line: 126, type: !3326, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!26, !2886, !2886}
!3328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3329, line: 153)
!3329 = !DISubprogram(name: "wcscoll", scope: !3228, file: !3228, line: 127, type: !3326, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3331, line: 154)
!3331 = !DISubprogram(name: "wcsncmp", scope: !3228, file: !3228, line: 134, type: !3332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!26, !2886, !2886, !84}
!3334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3335, line: 155)
!3335 = !DISubprogram(name: "wcsxfrm", scope: !3228, file: !3228, line: 142, type: !3336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!84, !2872, !2886, !84}
!3338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3339, line: 156)
!3339 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !3340, file: !3340, line: 137, type: !3341, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3340 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!2872, !2872, !2873}
!3343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3344, line: 157)
!3344 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !3340, file: !3340, line: 144, type: !3314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3346, line: 158)
!3346 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !3340, file: !3340, line: 151, type: !3341, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3348, line: 159)
!3348 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !3340, file: !3340, line: 158, type: !3314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3350, line: 160)
!3350 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !3340, file: !3340, line: 165, type: !3351, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!2872, !2872, !2873, !84}
!3353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3354, line: 161)
!3354 = !DISubprogram(name: "wcscspn", scope: !3228, file: !3228, line: 129, type: !3355, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!84, !2886, !2886}
!3357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3358, line: 162)
!3358 = !DISubprogram(name: "wcslen", scope: !3228, file: !3228, line: 132, type: !3359, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!84, !2886}
!3361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3362, line: 163)
!3362 = !DISubprogram(name: "wcsspn", scope: !3228, file: !3228, line: 140, type: !3355, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3364, line: 164)
!3364 = !DISubprogram(name: "wcstok", scope: !3228, file: !3228, line: 145, type: !3365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!2872, !2872, !2886, !3287}
!3367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3368, line: 165)
!3368 = !DISubprogram(name: "wmemcmp", scope: !3228, file: !3228, line: 151, type: !3332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3370, line: 166)
!3370 = !DISubprogram(name: "wmemcpy", scope: !3228, file: !3228, line: 152, type: !3318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3372, line: 167)
!3372 = !DISubprogram(name: "wmemmove", scope: !3228, file: !3228, line: 153, type: !3318, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3374, line: 168)
!3374 = !DISubprogram(name: "wmemset", scope: !3228, file: !3228, line: 154, type: !3351, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3376, line: 169)
!3376 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !3228, file: !3228, line: 130, type: !3377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!84, !2872, !84, !2886, !3379}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!3381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3382, line: 170)
!3382 = !DISubprogram(name: "btowc", scope: !3228, file: !3228, line: 97, type: !3383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!3133, !26}
!3385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3386, line: 171)
!3386 = !DISubprogram(name: "wctob", scope: !3228, file: !3228, line: 143, type: !3149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3388, line: 172)
!3388 = !DISubprogram(name: "mbsinit", scope: !3228, file: !3228, line: 110, type: !3389, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!26, !3391}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3394, line: 173)
!3394 = !DISubprogram(name: "mbrlen", scope: !3228, file: !3228, line: 107, type: !3395, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!84, !307, !84, !3397}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3399, line: 174)
!3399 = !DISubprogram(name: "mbrtowc", scope: !3228, file: !3228, line: 108, type: !3400, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!84, !2872, !307, !84, !3397}
!3402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3403, line: 175)
!3403 = !DISubprogram(name: "wcrtomb", scope: !3228, file: !3228, line: 123, type: !3404, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!84, !371, !2873, !3397}
!3406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3407, line: 176)
!3407 = !DISubprogram(name: "mbsrtowcs", scope: !3228, file: !3228, line: 111, type: !3408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!84, !2872, !3410, !84, !3397}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!3411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3412, line: 177)
!3412 = !DISubprogram(name: "wcsrtombs", scope: !3228, file: !3228, line: 138, type: !3413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!84, !371, !3415, !84, !3397}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!3416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3417, line: 180)
!3417 = !DISubprogram(name: "getwchar", scope: !3228, file: !3228, line: 106, type: !3418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!3133}
!3420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3421, line: 181)
!3421 = !DISubprogram(name: "vwscanf", scope: !3228, file: !3228, line: 174, type: !3422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!26, !2886, !2979}
!3424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3425, line: 182)
!3425 = !DISubprogram(name: "wscanf", scope: !3228, file: !3228, line: 156, type: !3426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!26, !2886, null}
!3428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3429, line: 186)
!3429 = !DISubprogram(name: "putwchar", scope: !3228, file: !3228, line: 114, type: !3430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!3133, !2873}
!3432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3433, line: 187)
!3433 = !DISubprogram(name: "vwprintf", scope: !3228, file: !3228, line: 122, type: !3422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3435, line: 188)
!3435 = !DISubprogram(name: "wprintf", scope: !3228, file: !3228, line: 155, type: !3426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3437, line: 56)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3438, line: 30, baseType: !3439)
!3438 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !87, line: 117, baseType: !88)
!3440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, line: 57)
!3441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2266, line: 58)
!3442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3210, line: 59)
!3443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3444, line: 60)
!3444 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !3211, file: !3211, line: 107, type: !3445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!3437}
!3447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3448, line: 61)
!3448 = !DISubprogram(name: "difftime", scope: !3211, file: !3211, line: 109, type: !3449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!1690, !2266, !2266}
!3451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3452, line: 62)
!3452 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !3211, file: !3211, line: 113, type: !3453, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!2266, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3457, line: 63)
!3457 = !DISubprogram(name: "time", scope: !3211, file: !3211, line: 116, type: !3458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!2266, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!3461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3462, line: 65)
!3462 = !DISubprogram(name: "asctime", scope: !3211, file: !3211, line: 106, type: !3463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!371, !3379}
!3465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3466, line: 66)
!3466 = !DISubprogram(name: "ctime", scope: !3211, file: !3211, line: 108, type: !3467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!371, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!3471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3472, line: 67)
!3472 = !DISubprogram(name: "gmtime", scope: !3211, file: !3211, line: 111, type: !3473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!3455, !3469}
!3475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3476, line: 68)
!3476 = !DISubprogram(name: "localtime", scope: !3211, file: !3211, line: 112, type: !3473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3478, line: 70)
!3478 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !3211, file: !3211, line: 114, type: !3479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!84, !371, !84, !307, !3379}
!3481 = !{i32 2, !"Dwarf Version", i32 2}
!3482 = !{i32 2, !"Debug Info Version", i32 3}
!3483 = !{i32 1, !"PIC Level", i32 2}
!3484 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!3485 = distinct !DISubprogram(name: "f1", linkageName: "_Z2f1v", scope: !3, file: !3, line: 14, type: !2455, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !357)
!3486 = !DILocation(line: 16, column: 5, scope: !3485)
!3487 = !DILocation(line: 17, column: 5, scope: !3485)
!3488 = !DILocation(line: 18, column: 5, scope: !3485)
!3489 = !DILocalVariable(name: "__m", arg: 2, scope: !3490, file: !6, line: 924, type: !117)
!3490 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !97, file: !6, line: 924, type: !126, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !125, variables: !3491)
!3491 = !{!3492, !3489}
!3492 = !DILocalVariable(name: "this", arg: 1, scope: !3490, type: !3493, flags: DIFlagArtificial | DIFlagObjectPointer)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3494 = !DIExpression()
!3495 = !DILocation(line: 924, column: 27, scope: !3490, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 19, column: 15, scope: !3485)
!3497 = !DILocation(line: 19, column: 11, scope: !3485)
!3498 = !DILocalVariable(name: "__d", arg: 2, scope: !3499, file: !6, line: 916, type: !26)
!3499 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !97, file: !6, line: 916, type: !119, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !118, variables: !3500)
!3500 = !{!3501, !3498, !3503}
!3501 = !DILocalVariable(name: "this", arg: 1, scope: !3499, type: !3502, flags: DIFlagArtificial | DIFlagObjectPointer)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!3503 = !DILocalVariable(name: "__m", arg: 3, scope: !3499, file: !6, line: 916, type: !117)
!3504 = !DILocation(line: 916, column: 20, scope: !3499, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 20, column: 7, scope: !3485)
!3506 = !DILocation(line: 916, column: 38, scope: !3499, inlinedAt: !3505)
!3507 = !DILocation(line: 918, column: 10, scope: !3508, inlinedAt: !3505)
!3508 = !DILexicalBlockFile(scope: !3499, file: !6, discriminator: 1)
!3509 = !DILocation(line: 21, column: 5, scope: !3485)
!3510 = !DILocation(line: 22, column: 1, scope: !3485)
!3511 = distinct !DISubprogram(name: "f2", linkageName: "_Z2f2v", scope: !3, file: !3, line: 24, type: !2455, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !357)
!3512 = !DILocation(line: 26, column: 5, scope: !3511)
!3513 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 36, type: !24, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3514)
!3514 = !{!3515, !3591}
!3515 = !DILocalVariable(name: "a", scope: !3513, file: !3, line: 40, type: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !7, file: !1897, line: 282, size: 64, elements: !3517, identifier: "_ZTSNSt3__16threadE")
!3517 = !{!3518, !3539, !3545, !3549, !3552, !3553, !3557, !3560, !3563, !3567, !3568, !3569, !3584, !3588}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !3516, file: !1897, line: 284, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !7, file: !1925, line: 72, baseType: !3520)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !3521, line: 30, baseType: !3522)
!3521 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !1929, line: 118, baseType: !3523)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !1929, line: 103, size: 65536, elements: !3525, identifier: "_ZTS17_opaque_pthread_t")
!3525 = !{!3526, !3527, !3535}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !3524, file: !1929, line: 104, baseType: !67, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !3524, file: !1929, line: 105, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !1929, line: 57, size: 192, elements: !3530, identifier: "_ZTS28__darwin_pthread_handler_rec")
!3530 = !{!3531, !3533, !3534}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !3529, file: !1929, line: 58, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !3529, file: !1929, line: 59, baseType: !72, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !3529, file: !1929, line: 60, baseType: !3528, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !3524, file: !1929, line: 106, baseType: !3536, size: 65408, offset: 128)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 65408, elements: !3537)
!3537 = !{!3538}
!3538 = !DISubrange(count: 8176)
!3539 = !DISubprogram(name: "thread", scope: !3516, file: !1897, line: 286, type: !3540, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3543 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3516)
!3545 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !3516, file: !1897, line: 287, type: !3546, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!3548, !3542, !3543}
!3548 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3516, size: 64)
!3549 = !DISubprogram(name: "thread", scope: !3516, file: !1897, line: 293, type: !3550, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3542}
!3552 = !DISubprogram(name: "~thread", scope: !3516, file: !1897, line: 308, type: !3550, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3553 = !DISubprogram(name: "thread", scope: !3516, file: !1897, line: 312, type: !3554, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !3542, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3516, size: 64)
!3557 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !3516, file: !1897, line: 314, type: !3558, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!3548, !3542, !3556}
!3560 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !3516, file: !1897, line: 318, type: !3561, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !3542, !3548}
!3563 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !3516, file: !1897, line: 321, type: !3564, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!104, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3567 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !3516, file: !1897, line: 322, type: !3550, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3568 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !3516, file: !1897, line: 323, type: !3550, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3569 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !3516, file: !1897, line: 325, type: !3570, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!3572, !3566}
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !3516, file: !1897, line: 289, baseType: !3573)
!3573 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !7, file: !1897, line: 213, size: 64, elements: !3574, identifier: "_ZTSNSt3__111__thread_idE")
!3574 = !{!3575, !3577, !3581}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !3573, file: !1897, line: 218, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !7, file: !1925, line: 67, baseType: !3520)
!3577 = !DISubprogram(name: "__thread_id", scope: !3573, file: !1897, line: 222, type: !3578, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{null, !3580}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3581 = !DISubprogram(name: "__thread_id", scope: !3573, file: !1897, line: 252, type: !3582, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{null, !3580, !3576}
!3584 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !3516, file: !1897, line: 327, type: !3585, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!3587, !3542}
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !3516, file: !1897, line: 290, baseType: !3519)
!3588 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !3516, file: !1897, line: 329, type: !3589, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!30}
!3591 = !DILocalVariable(name: "b", scope: !3513, file: !3, line: 41, type: !3516)
!3592 = !DILocation(line: 38, column: 5, scope: !3513)
!3593 = !DILocation(line: 39, column: 5, scope: !3513)
!3594 = !DILocation(line: 40, column: 5, scope: !3513)
!3595 = !DIExpression(DW_OP_deref)
!3596 = !DILocation(line: 40, column: 17, scope: !3513)
!3597 = !DILocalVariable(name: "this", arg: 1, scope: !3598, type: !3609, flags: DIFlagArtificial | DIFlagObjectPointer)
!3598 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !3516, file: !1897, line: 356, type: !3599, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3602, declaration: !3606, variables: !3607)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3542, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2455, size: 64)
!3602 = !{!3603, !3604, !3605}
!3603 = !DITemplateTypeParameter(name: "_Fp", type: !3601)
!3604 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !357)
!3605 = !DITemplateTypeParameter(type: null)
!3606 = !DISubprogram(name: "thread<void (&)(), void>", scope: !3516, file: !1897, line: 356, type: !3599, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !3602)
!3607 = !{!3597, !3608}
!3608 = !DILocalVariable(name: "__f", arg: 2, scope: !3598, file: !1897, line: 356, type: !3601)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3610 = !DILocation(line: 0, scope: !3598, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 40, column: 17, scope: !3513)
!3612 = !DILocation(line: 356, column: 22, scope: !3598, inlinedAt: !3611)
!3613 = !DILocation(line: 357, column: 1, scope: !3598, inlinedAt: !3611)
!3614 = !DILocation(line: 41, column: 5, scope: !3513)
!3615 = !DILocation(line: 0, scope: !3598, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 41, column: 17, scope: !3513)
!3617 = !DILocation(line: 356, column: 22, scope: !3598, inlinedAt: !3616)
!3618 = !DILocation(line: 357, column: 1, scope: !3598, inlinedAt: !3616)
!3619 = !DILocalVariable(name: "this", arg: 1, scope: !3620, type: !3622, flags: DIFlagArtificial | DIFlagObjectPointer)
!3620 = distinct !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !3516, file: !1897, line: 325, type: !3570, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3569, variables: !3621)
!3621 = !{!3619}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3623 = !DILocation(line: 0, scope: !3620, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 43, column: 29, scope: !3513)
!3625 = !DILocation(line: 325, column: 65, scope: !3620, inlinedAt: !3624)
!3626 = !DILocalVariable(name: "__t", arg: 1, scope: !3627, file: !1925, line: 332, type: !3630)
!3627 = distinct !DISubprogram(name: "__libcpp_thread_get_id", linkageName: "_ZNSt3__122__libcpp_thread_get_idEPKP17_opaque_pthread_t", scope: !7, file: !1925, line: 332, type: !3628, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3632)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!3576, !3630}
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3519)
!3632 = !{!3626}
!3633 = !DILocation(line: 332, column: 68, scope: !3627, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 325, column: 41, scope: !3620, inlinedAt: !3624)
!3635 = !DILocation(line: 334, column: 10, scope: !3627, inlinedAt: !3634)
!3636 = !{!3637, !3637, i64 0}
!3637 = !{!"any pointer", !3638, i64 0}
!3638 = !{!"omnipotent char", !3639, i64 0}
!3639 = !{!"Simple C++ TBAA"}
!3640 = !DILocation(line: 43, column: 5, scope: !3513)
!3641 = !DILocation(line: 41, column: 17, scope: !3513)
!3642 = !DILocation(line: 0, scope: !3620, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 44, column: 29, scope: !3513)
!3644 = !DILocation(line: 325, column: 65, scope: !3620, inlinedAt: !3643)
!3645 = !DILocation(line: 332, column: 68, scope: !3627, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 325, column: 41, scope: !3620, inlinedAt: !3643)
!3647 = !DILocation(line: 334, column: 10, scope: !3627, inlinedAt: !3646)
!3648 = !DILocation(line: 44, column: 5, scope: !3513)
!3649 = !DILocation(line: 0, scope: !3620, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 47, column: 27, scope: !3513)
!3651 = !DILocation(line: 332, column: 68, scope: !3627, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 325, column: 41, scope: !3620, inlinedAt: !3650)
!3653 = !DILocation(line: 334, column: 10, scope: !3627, inlinedAt: !3652)
!3654 = !DILocation(line: 47, column: 5, scope: !3513)
!3655 = !DILocation(line: 0, scope: !3620, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 48, column: 27, scope: !3513)
!3657 = !DILocation(line: 332, column: 68, scope: !3627, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 325, column: 41, scope: !3620, inlinedAt: !3656)
!3659 = !DILocation(line: 334, column: 10, scope: !3627, inlinedAt: !3658)
!3660 = !DILocation(line: 48, column: 5, scope: !3513)
!3661 = !DILocation(line: 49, column: 7, scope: !3513)
!3662 = !DILocation(line: 49, column: 17, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3513, file: !3, discriminator: 1)
!3664 = !DILocalVariable(name: "__os", arg: 1, scope: !3665, file: !1410, line: 862, type: !1414)
!3665 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc", scope: !7, file: !1410, line: 862, type: !3666, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3668, variables: !3669)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!1414, !1414, !307}
!3668 = !{!775}
!3669 = !{!3664, !3670}
!3670 = !DILocalVariable(name: "__str", arg: 2, scope: !3665, file: !1410, line: 862, type: !307)
!3671 = !DILocation(line: 862, column: 42, scope: !3665, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 50, column: 15, scope: !3513)
!3673 = !DILocation(line: 862, column: 60, scope: !3665, inlinedAt: !3672)
!3674 = !DILocation(line: 864, column: 12, scope: !3675, inlinedAt: !3672)
!3675 = !DILexicalBlockFile(scope: !3665, file: !1410, discriminator: 1)
!3676 = !DILocation(line: 50, column: 30, scope: !3663)
!3677 = !{!3678, !3678, i64 0}
!3678 = !{!"int", !3638, i64 0}
!3679 = !DILocation(line: 50, column: 27, scope: !3663)
!3680 = !DILocation(line: 862, column: 42, scope: !3665, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 50, column: 36, scope: !3682)
!3682 = !DILexicalBlockFile(scope: !3513, file: !3, discriminator: 2)
!3683 = !DILocation(line: 862, column: 60, scope: !3665, inlinedAt: !3681)
!3684 = !DILocation(line: 864, column: 12, scope: !3675, inlinedAt: !3681)
!3685 = !DILocation(line: 50, column: 46, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3513, file: !3, discriminator: 3)
!3687 = !DILocation(line: 50, column: 43, scope: !3686)
!3688 = !DILocation(line: 862, column: 42, scope: !3665, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 50, column: 52, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3513, file: !3, discriminator: 4)
!3691 = !DILocation(line: 862, column: 60, scope: !3665, inlinedAt: !3689)
!3692 = !DILocation(line: 864, column: 12, scope: !3675, inlinedAt: !3689)
!3693 = !DILocation(line: 51, column: 5, scope: !3513)
!3694 = !DILocation(line: 51, column: 5, scope: !3663)
!3695 = !DILocation(line: 51, column: 5, scope: !3682)
!3696 = !{!"branch_weights", i32 1, i32 2000}
!3697 = !DILocation(line: 51, column: 5, scope: !3686)
!3698 = !DILocation(line: 51, column: 5, scope: !3690)
!3699 = !DILocation(line: 54, column: 1, scope: !3513)
!3700 = !DILocation(line: 54, column: 1, scope: !3663)
!3701 = !DILocation(line: 52, column: 5, scope: !3513)
!3702 = !DILocation(line: 54, column: 1, scope: !3682)
!3703 = !DILocation(line: 54, column: 1, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3513, file: !3, discriminator: 5)
!3705 = !DILocation(line: 54, column: 1, scope: !3686)
!3706 = !DILocation(line: 54, column: 1, scope: !3690)
!3707 = !DILocation(line: 714, column: 58, scope: !1411)
!3708 = !DILocation(line: 715, column: 41, scope: !1411)
!3709 = !DILocation(line: 715, column: 55, scope: !1411)
!3710 = !DILocation(line: 721, column: 9, scope: !1730)
!3711 = !DILocation(line: 721, column: 57, scope: !1730)
!3712 = !DILocalVariable(name: "this", arg: 1, scope: !3713, type: !3715, flags: DIFlagArtificial | DIFlagObjectPointer)
!3713 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !1731, file: !1410, line: 254, type: !1752, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1751, variables: !3714)
!3714 = !{!3712}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!3716 = !DILocation(line: 0, scope: !3713, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 722, column: 13, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !1730, file: !1410, line: 722, column: 13)
!3719 = !DILocation(line: 254, column: 39, scope: !3713, inlinedAt: !3717)
!3720 = !{!3721, !3722, i64 0}
!3721 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !3722, i64 0, !3638, i64 8}
!3722 = !{!"bool", !3638, i64 0}
!3723 = !{i8 0, i8 2}
!3724 = !DILocation(line: 722, column: 13, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !1730, file: !1410, discriminator: 1)
!3726 = !DILocalVariable(name: "this", arg: 1, scope: !3727, type: !3730, flags: DIFlagArtificial | DIFlagObjectPointer)
!3727 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE", scope: !1755, file: !685, line: 1031, type: !1769, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1768, variables: !3728)
!3728 = !{!3726, !3729}
!3729 = !DILocalVariable(name: "__s", arg: 2, scope: !3727, file: !685, line: 1031, type: !1772)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!3731 = !DILocation(line: 0, scope: !3727, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 725, column: 34, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !1410, line: 725, column: 17)
!3734 = distinct !DILexicalBlock(scope: !3718, file: !1410, line: 723, column: 9)
!3735 = !DILocation(line: 1031, column: 65, scope: !3727, inlinedAt: !3732)
!3736 = !DILocalVariable(name: "this", arg: 1, scope: !3737, type: !3730, flags: DIFlagArtificial | DIFlagObjectPointer)
!3737 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE", scope: !1755, file: !685, line: 1031, type: !1769, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1768, variables: !3738)
!3738 = !{!3736, !3739}
!3739 = !DILocalVariable(name: "__s", arg: 2, scope: !3737, file: !685, line: 1031, type: !1772)
!3740 = !DILocation(line: 0, scope: !3737, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 1032, column: 32, scope: !3727, inlinedAt: !3732)
!3742 = !DILocation(line: 1031, column: 65, scope: !3737, inlinedAt: !3741)
!3743 = !DILocation(line: 1032, column: 19, scope: !3737, inlinedAt: !3741)
!3744 = !{!3745, !3745, i64 0}
!3745 = !{!"vtable pointer", !3639, i64 0}
!3746 = !DILocation(line: 340, column: 55, scope: !3747, inlinedAt: !3751)
!3747 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !19, file: !18, line: 340, type: !1375, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1374, variables: !3748)
!3748 = !{!3749}
!3749 = !DILocalVariable(name: "this", arg: 1, scope: !3747, type: !3750, flags: DIFlagArtificial | DIFlagObjectPointer)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!3751 = distinct !DILocation(line: 718, column: 76, scope: !3752, inlinedAt: !3756)
!3752 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1418, file: !18, line: 716, type: !1572, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1571, variables: !3753)
!3753 = !{!3754}
!3754 = !DILocalVariable(name: "this", arg: 1, scope: !3752, type: !3755, flags: DIFlagArtificial | DIFlagObjectPointer)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!3756 = distinct !DILocation(line: 1032, column: 23, scope: !3737, inlinedAt: !3741)
!3757 = !{!3758, !3637, i64 40}
!3758 = !{!"_ZTSNSt3__18ios_baseE", !3678, i64 8, !3759, i64 16, !3759, i64 24, !3678, i64 32, !3678, i64 36, !3637, i64 40, !3637, i64 48, !3637, i64 56, !3637, i64 64, !3759, i64 72, !3759, i64 80, !3637, i64 88, !3759, i64 96, !3759, i64 104, !3637, i64 112, !3759, i64 120, !3759, i64 128}
!3759 = !{!"long", !3638, i64 0}
!3760 = !DILocation(line: 727, column: 35, scope: !3733)
!3761 = !DILocalVariable(name: "this", arg: 1, scope: !3762, type: !3750, flags: DIFlagArtificial | DIFlagObjectPointer)
!3762 = distinct !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !19, file: !18, line: 440, type: !253, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !252, variables: !3763)
!3763 = !{!3761}
!3764 = !DILocation(line: 0, scope: !3762, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 727, column: 40, scope: !3733)
!3766 = !DILocation(line: 442, column: 12, scope: !3762, inlinedAt: !3765)
!3767 = !{!3758, !3678, i64 8}
!3768 = !DILocation(line: 728, column: 44, scope: !3733)
!3769 = !DILocation(line: 764, column: 54, scope: !3770, inlinedAt: !3774)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !18, line: 764, column: 9)
!3771 = distinct !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1418, file: !18, line: 762, type: !1583, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1582, variables: !3772)
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "this", arg: 1, scope: !3771, type: !3755, flags: DIFlagArtificial | DIFlagObjectPointer)
!3774 = distinct !DILocation(line: 732, column: 39, scope: !3733)
!3775 = !{!3776, !3678, i64 144}
!3776 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !3637, i64 136, !3678, i64 144}
!3777 = !DILocalVariable(name: "__c1", arg: 1, scope: !3778, file: !777, line: 234, type: !811)
!3778 = distinct !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !776, file: !777, line: 234, type: !819, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !818, variables: !3779)
!3779 = !{!3777, !3780}
!3780 = !DILocalVariable(name: "__c2", arg: 2, scope: !3778, file: !777, line: 234, type: !811)
!3781 = !DILocation(line: 234, column: 63, scope: !3778, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 764, column: 9, scope: !3783, inlinedAt: !3774)
!3783 = !DILexicalBlockFile(scope: !3770, file: !18, discriminator: 1)
!3784 = !DILocation(line: 234, column: 78, scope: !3778, inlinedAt: !3782)
!3785 = !DILocation(line: 235, column: 22, scope: !3778, inlinedAt: !3782)
!3786 = !DILocation(line: 764, column: 9, scope: !3771, inlinedAt: !3774)
!3787 = !DILocalVariable(name: "__c", arg: 2, scope: !3788, file: !18, line: 649, type: !309)
!3788 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1418, file: !18, line: 754, type: !1596, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1595, variables: !3789)
!3789 = !{!3790, !3787}
!3790 = !DILocalVariable(name: "this", arg: 1, scope: !3788, type: !3755, flags: DIFlagArtificial | DIFlagObjectPointer)
!3791 = !DILocation(line: 649, column: 26, scope: !3788, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 765, column: 19, scope: !3770, inlinedAt: !3774)
!3793 = !DILocation(line: 756, column: 41, scope: !3788, inlinedAt: !3792)
!3794 = !DILocalVariable(name: "__l", arg: 1, scope: !3795, file: !280, line: 210, type: !302)
!3795 = distinct !DISubprogram(name: "use_facet<std::__1::ctype<char> >", linkageName: "_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE", scope: !7, file: !280, line: 210, type: !3796, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3887, variables: !3889)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!3798, !302}
!3798 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3800)
!3800 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !7, file: !280, line: 558, size: 256, elements: !3801, vtableHolder: !1237, templateParams: !824, identifier: "_ZTSNSt3__15ctypeIcEE")
!3801 = !{!3802, !3803, !3824, !3826, !3827, !3828, !3830, !3834, !3839, !3845, !3848, !3849, !3852, !3856, !3857, !3858, !3861, !3864, !3867, !3870, !3873, !3876, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3802 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3800, baseType: !1234, flags: DIFlagPublic)
!3803 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3800, baseType: !3804, flags: DIFlagPublic)
!3804 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype_base", scope: !7, file: !280, line: 355, size: 8, elements: !3805, identifier: "_ZTSNSt3__110ctype_baseE")
!3805 = !{!3806, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !3804, file: !280, line: 391, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3808)
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "mask", scope: !3804, file: !280, line: 385, baseType: !3145)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !3804, file: !280, line: 392, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 262144)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl", scope: !3804, file: !280, line: 393, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !3804, file: !280, line: 394, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32768)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !3804, file: !280, line: 395, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !3804, file: !280, line: 396, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "digit", scope: !3804, file: !280, line: 397, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !3804, file: !280, line: 398, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "xdigit", scope: !3804, file: !280, line: 399, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 65536)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "blank", scope: !3804, file: !280, line: 404, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 131072)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "alnum", scope: !3804, file: !280, line: 447, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1280)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !3804, file: !280, line: 448, baseType: !3807, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 9472)
!3820 = !DISubprogram(name: "ctype_base", scope: !3804, file: !280, line: 450, type: !3821, isLocal: false, isDefinition: false, scopeLine: 450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3823}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "__tab_", scope: !3800, file: !280, line: 561, baseType: !3825, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "__del_", scope: !3800, file: !280, line: 562, baseType: !104, size: 8, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3800, file: !280, line: 648, baseType: !1282, flags: DIFlagPublic | DIFlagStaticMember)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !3800, file: !280, line: 651, baseType: !3829, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 256)
!3829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!3830 = !DISubprogram(name: "ctype", scope: !3800, file: !280, line: 566, type: !3831, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3833, !3825, !104, !84}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3834 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEjc", scope: !3800, file: !280, line: 569, type: !3835, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!104, !3837, !3808, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !3800, file: !280, line: 564, baseType: !309)
!3839 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEPKcS3_Pj", scope: !3800, file: !280, line: 575, type: !3840, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!3842, !3837, !3842, !3842, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3838)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3845 = !DISubprogram(name: "scan_is", linkageName: "_ZNKSt3__15ctypeIcE7scan_isEjPKcS3_", scope: !3800, file: !280, line: 583, type: !3846, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!3842, !3837, !3808, !3842, !3842}
!3848 = !DISubprogram(name: "scan_not", linkageName: "_ZNKSt3__15ctypeIcE8scan_notEjPKcS3_", scope: !3800, file: !280, line: 592, type: !3846, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3849 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEc", scope: !3800, file: !280, line: 601, type: !3850, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!3838, !3837, !3838}
!3852 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEPcPKc", scope: !3800, file: !280, line: 607, type: !3853, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!3842, !3837, !3855, !3842}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3856 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEc", scope: !3800, file: !280, line: 613, type: !3850, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3857 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEPcPKc", scope: !3800, file: !280, line: 619, type: !3853, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3858 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !3800, file: !280, line: 625, type: !3859, isLocal: false, isDefinition: false, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!3838, !3837, !309}
!3861 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEPKcS3_Pc", scope: !3800, file: !280, line: 631, type: !3862, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!307, !3837, !307, !307, !3855}
!3864 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEcc", scope: !3800, file: !280, line: 637, type: !3865, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!309, !3837, !3838, !309}
!3867 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEPKcS3_cPc", scope: !3800, file: !280, line: 643, type: !3868, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!307, !3837, !3842, !3842, !309, !371}
!3870 = !DISubprogram(name: "table", linkageName: "_ZNKSt3__15ctypeIcE5tableEv", scope: !3800, file: !280, line: 655, type: !3871, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!3825, !3837}
!3873 = !DISubprogram(name: "classic_table", linkageName: "_ZNSt3__15ctypeIcE13classic_tableEv", scope: !3800, file: !280, line: 656, type: !3874, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!3825}
!3876 = !DISubprogram(name: "~ctype", scope: !3800, file: !280, line: 667, type: !3877, isLocal: false, isDefinition: false, scopeLine: 667, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3833}
!3879 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEc", scope: !3800, file: !280, line: 668, type: !3850, isLocal: false, isDefinition: false, scopeLine: 668, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3880 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEPcPKc", scope: !3800, file: !280, line: 669, type: !3853, isLocal: false, isDefinition: false, scopeLine: 669, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3881 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEc", scope: !3800, file: !280, line: 670, type: !3850, isLocal: false, isDefinition: false, scopeLine: 670, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3882 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEPcPKc", scope: !3800, file: !280, line: 671, type: !3853, isLocal: false, isDefinition: false, scopeLine: 671, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3883 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEc", scope: !3800, file: !280, line: 672, type: !3859, isLocal: false, isDefinition: false, scopeLine: 672, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3884 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEPKcS3_Pc", scope: !3800, file: !280, line: 673, type: !3862, isLocal: false, isDefinition: false, scopeLine: 673, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3885 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEcc", scope: !3800, file: !280, line: 674, type: !3865, isLocal: false, isDefinition: false, scopeLine: 674, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3886 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEPKcS3_cPc", scope: !3800, file: !280, line: 675, type: !3868, isLocal: false, isDefinition: false, scopeLine: 675, containingType: !3800, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!3887 = !{!3888}
!3888 = !DITemplateTypeParameter(name: "_Facet", type: !3800)
!3889 = !{!3794}
!3890 = !DILocation(line: 210, column: 25, scope: !3795, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 756, column: 12, scope: !3788, inlinedAt: !3792)
!3892 = !DILocation(line: 212, column: 44, scope: !3795, inlinedAt: !3891)
!3893 = !DILocation(line: 212, column: 12, scope: !3795, inlinedAt: !3891)
!3894 = !DILocalVariable(name: "this", arg: 1, scope: !3895, type: !3898, flags: DIFlagArtificial | DIFlagObjectPointer)
!3895 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !3800, file: !280, line: 625, type: !3859, isLocal: false, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3858, variables: !3896)
!3896 = !{!3894, !3897}
!3897 = !DILocalVariable(name: "__c", arg: 2, scope: !3895, file: !280, line: 625, type: !309)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3899 = !DILocation(line: 0, scope: !3895, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 756, column: 51, scope: !3901, inlinedAt: !3792)
!3901 = !DILexicalBlockFile(scope: !3788, file: !18, discriminator: 1)
!3902 = !DILocation(line: 625, column: 26, scope: !3895, inlinedAt: !3900)
!3903 = !DILocation(line: 627, column: 16, scope: !3895, inlinedAt: !3900)
!3904 = !DILocation(line: 757, column: 1, scope: !3788, inlinedAt: !3792)
!3905 = !DILocation(line: 756, column: 5, scope: !3906, inlinedAt: !3792)
!3906 = !DILexicalBlockFile(scope: !3788, file: !18, discriminator: 3)
!3907 = !DILocation(line: 756, column: 5, scope: !3788, inlinedAt: !3792)
!3908 = !DILocation(line: 756, column: 5, scope: !3909, inlinedAt: !3792)
!3909 = !DILexicalBlockFile(scope: !3788, file: !18, discriminator: 2)
!3910 = !DILocation(line: 765, column: 19, scope: !3770, inlinedAt: !3774)
!3911 = !DILocation(line: 765, column: 17, scope: !3770, inlinedAt: !3774)
!3912 = !DILocation(line: 765, column: 9, scope: !3770, inlinedAt: !3774)
!3913 = !DILocation(line: 766, column: 12, scope: !3771, inlinedAt: !3774)
!3914 = !DILocation(line: 727, column: 48, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3733, file: !1410, discriminator: 1)
!3916 = !DILocation(line: 727, column: 73, scope: !3915)
!3917 = !DILocation(line: 727, column: 34, scope: !3915)
!3918 = !DILocation(line: 725, column: 17, scope: !3915)
!3919 = !DILocalVariable(name: "this", arg: 1, scope: !3920, type: !3922, flags: DIFlagArtificial | DIFlagObjectPointer)
!3920 = distinct !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1755, file: !685, line: 1044, type: !1789, isLocal: false, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1788, variables: !3921)
!3921 = !{!3919}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!3923 = !DILocation(line: 0, scope: !3920, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 732, column: 47, scope: !3915)
!3925 = !DILocation(line: 1044, column: 77, scope: !3920, inlinedAt: !3924)
!3926 = !DILocation(line: 725, column: 17, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3734, file: !1410, discriminator: 2)
!3928 = !DILocation(line: 733, column: 17, scope: !3733)
!3929 = !DILocalVariable(name: "__state", arg: 2, scope: !3930, file: !18, line: 611, type: !50)
!3930 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1418, file: !18, line: 611, type: !1436, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1439, variables: !3931)
!3931 = !{!3932, !3929}
!3932 = !DILocalVariable(name: "this", arg: 1, scope: !3930, type: !3933, flags: DIFlagArtificial | DIFlagObjectPointer)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!3934 = !DILocation(line: 611, column: 49, scope: !3930, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 733, column: 22, scope: !3733)
!3936 = !DILocation(line: 611, column: 69, scope: !3930, inlinedAt: !3935)
!3937 = !DILocalVariable(name: "this", arg: 1, scope: !3938, type: !3941, flags: DIFlagArtificial | DIFlagObjectPointer)
!3938 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !19, file: !18, line: 527, type: !1357, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1359, variables: !3939)
!3939 = !{!3937, !3940}
!3940 = !DILocalVariable(name: "__state", arg: 2, scope: !3938, file: !18, line: 527, type: !50)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!3942 = !DILocation(line: 0, scope: !3938, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 611, column: 69, scope: !3930, inlinedAt: !3935)
!3944 = !DILocation(line: 527, column: 28, scope: !3938, inlinedAt: !3943)
!3945 = !DILocation(line: 529, column: 11, scope: !3938, inlinedAt: !3943)
!3946 = !{!3758, !3678, i64 32}
!3947 = !DILocation(line: 529, column: 22, scope: !3938, inlinedAt: !3943)
!3948 = !DILocation(line: 529, column: 5, scope: !3938, inlinedAt: !3943)
!3949 = !DILocation(line: 743, column: 1, scope: !1730)
!3950 = !DILocation(line: 739, column: 9, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !1411, file: !1410, line: 738, column: 5)
!3952 = !DILocation(line: 743, column: 1, scope: !3953)
!3953 = !DILexicalBlockFile(scope: !3718, file: !1410, discriminator: 1)
!3954 = !DILocation(line: 743, column: 1, scope: !3955)
!3955 = !DILexicalBlockFile(scope: !3733, file: !1410, discriminator: 2)
!3956 = !DILocation(line: 736, column: 5, scope: !1411)
!3957 = !DILocation(line: 736, column: 5, scope: !1730)
!3958 = !DILocation(line: 736, column: 5, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !1411, file: !1410, discriminator: 1)
!3960 = !DILocation(line: 736, column: 5, scope: !3961)
!3961 = !DILexicalBlockFile(scope: !1730, file: !1410, discriminator: 2)
!3962 = !DILocation(line: 739, column: 14, scope: !3951)
!3963 = !DILocation(line: 740, column: 5, scope: !3951)
!3964 = !DILocation(line: 742, column: 5, scope: !1411)
!3965 = !DILocation(line: 743, column: 1, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3951, file: !1410, discriminator: 3)
!3967 = !DILocation(line: 740, column: 5, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3951, file: !1410, discriminator: 1)
!3969 = !DILocation(line: 740, column: 5, scope: !3966)
!3970 = !DILocation(line: 740, column: 5, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !3951, file: !1410, discriminator: 4)
!3972 = distinct !DISubprogram(name: "__pad_and_output<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", scope: !7, file: !3973, line: 1326, type: !3974, isLocal: false, isDefinition: true, scopeLine: 1329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !773, variables: !3976)
!3973 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!1755, !1755, !307, !307, !307, !80, !309}
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986}
!3977 = !DILocalVariable(name: "__s", arg: 1, scope: !3972, file: !3973, line: 1326, type: !1755)
!3978 = !DILocalVariable(name: "__ob", arg: 2, scope: !3972, file: !3973, line: 1327, type: !307)
!3979 = !DILocalVariable(name: "__op", arg: 3, scope: !3972, file: !3973, line: 1327, type: !307)
!3980 = !DILocalVariable(name: "__oe", arg: 4, scope: !3972, file: !3973, line: 1327, type: !307)
!3981 = !DILocalVariable(name: "__iob", arg: 5, scope: !3972, file: !3973, line: 1328, type: !80)
!3982 = !DILocalVariable(name: "__fl", arg: 6, scope: !3972, file: !3973, line: 1328, type: !309)
!3983 = !DILocalVariable(name: "__sz", scope: !3972, file: !3973, line: 1332, type: !64)
!3984 = !DILocalVariable(name: "__ns", scope: !3972, file: !3973, line: 1333, type: !64)
!3985 = !DILocalVariable(name: "__np", scope: !3972, file: !3973, line: 1338, type: !64)
!3986 = !DILocalVariable(name: "__sp", scope: !3987, file: !3973, line: 1349, type: !317)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !3973, line: 1348, column: 5)
!3988 = distinct !DILexicalBlock(scope: !3972, file: !3973, line: 1347, column: 9)
!3989 = !DILocation(line: 1326, column: 55, scope: !3972)
!3990 = !DILocation(line: 1327, column: 32, scope: !3972)
!3991 = !DILocation(line: 1327, column: 52, scope: !3972)
!3992 = !DILocation(line: 1327, column: 72, scope: !3972)
!3993 = !DILocation(line: 1328, column: 28, scope: !3972)
!3994 = !DILocation(line: 1328, column: 42, scope: !3972)
!3995 = !DILocation(line: 1330, column: 21, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3972, file: !3973, line: 1330, column: 9)
!3997 = !DILocation(line: 1330, column: 9, scope: !3972)
!3998 = !DILocation(line: 1332, column: 28, scope: !3972)
!3999 = !DILocation(line: 1332, column: 16, scope: !3972)
!4000 = !DILocalVariable(name: "this", arg: 1, scope: !4001, type: !3750, flags: DIFlagArtificial | DIFlagObjectPointer)
!4001 = distinct !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !19, file: !18, line: 502, type: !269, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !274, variables: !4002)
!4002 = !{!4000}
!4003 = !DILocation(line: 0, scope: !4001, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 1333, column: 29, scope: !3972)
!4005 = !DILocation(line: 504, column: 12, scope: !4001, inlinedAt: !4004)
!4006 = !{!3758, !3759, i64 24}
!4007 = !DILocation(line: 1333, column: 16, scope: !3972)
!4008 = !DILocation(line: 1334, column: 14, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3972, file: !3973, line: 1334, column: 9)
!4010 = !DILocation(line: 1335, column: 14, scope: !4009)
!4011 = !DILocation(line: 1334, column: 9, scope: !3972)
!4012 = !DILocation(line: 1338, column: 28, scope: !3972)
!4013 = !DILocation(line: 1338, column: 16, scope: !3972)
!4014 = !DILocation(line: 1339, column: 14, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3972, file: !3973, line: 1339, column: 9)
!4016 = !DILocation(line: 1339, column: 9, scope: !3972)
!4017 = !DILocalVariable(name: "this", arg: 1, scope: !4018, type: !1449, flags: DIFlagArtificial | DIFlagObjectPointer)
!4018 = distinct !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1450, file: !1419, line: 223, type: !1512, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1511, variables: !4019)
!4019 = !{!4017, !4020, !4021}
!4020 = !DILocalVariable(name: "__s", arg: 2, scope: !4018, file: !1419, line: 223, type: !1514)
!4021 = !DILocalVariable(name: "__n", arg: 3, scope: !4018, file: !1419, line: 223, type: !64)
!4022 = !DILocation(line: 0, scope: !4018, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 1341, column: 26, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4025, file: !3973, line: 1341, column: 13)
!4025 = distinct !DILexicalBlock(scope: !4015, file: !3973, line: 1340, column: 5)
!4026 = !DILocation(line: 223, column: 39, scope: !4018, inlinedAt: !4023)
!4027 = !DILocation(line: 223, column: 55, scope: !4018, inlinedAt: !4023)
!4028 = !DILocation(line: 224, column: 14, scope: !4018, inlinedAt: !4023)
!4029 = !DILocation(line: 1341, column: 44, scope: !4024)
!4030 = !DILocation(line: 1341, column: 13, scope: !4025)
!4031 = !DILocation(line: 1347, column: 14, scope: !3988)
!4032 = !DILocation(line: 1347, column: 9, scope: !3972)
!4033 = !DILocation(line: 1349, column: 9, scope: !3987)
!4034 = !DILocation(line: 1349, column: 39, scope: !3987)
!4035 = !DILocalVariable(name: "this", arg: 1, scope: !4036, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4036 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc", scope: !317, file: !318, line: 1709, type: !626, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !625, variables: !4037)
!4037 = !{!4035, !4038, !4039}
!4038 = !DILocalVariable(name: "__n", arg: 2, scope: !4036, file: !318, line: 786, type: !347)
!4039 = !DILocalVariable(name: "__c", arg: 3, scope: !4036, file: !318, line: 786, type: !309)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!4041 = !DILocation(line: 0, scope: !4036, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1349, column: 39, scope: !3987)
!4043 = !DILocation(line: 786, column: 28, scope: !4036, inlinedAt: !4042)
!4044 = !DILocation(line: 786, column: 40, scope: !4036, inlinedAt: !4042)
!4045 = !DILocalVariable(name: "this", arg: 1, scope: !4046, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4046 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc", scope: !317, file: !318, line: 1709, type: !626, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !625, variables: !4047)
!4047 = !{!4045, !4048, !4049}
!4048 = !DILocalVariable(name: "__n", arg: 2, scope: !4046, file: !318, line: 786, type: !347)
!4049 = !DILocalVariable(name: "__c", arg: 3, scope: !4046, file: !318, line: 786, type: !309)
!4050 = !DILocation(line: 0, scope: !4046, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 1710, column: 1, scope: !4036, inlinedAt: !4042)
!4052 = !DILocation(line: 786, column: 28, scope: !4046, inlinedAt: !4051)
!4053 = !DILocation(line: 786, column: 40, scope: !4046, inlinedAt: !4051)
!4054 = !DILocation(line: 2082, column: 40, scope: !4055, inlinedAt: !4059)
!4055 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev", scope: !335, file: !332, line: 2082, type: !520, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !519, variables: !4056)
!4056 = !{!4057}
!4057 = !DILocalVariable(name: "this", arg: 1, scope: !4055, type: !4058, flags: DIFlagArtificial | DIFlagObjectPointer)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!4059 = distinct !DILocation(line: 2167, column: 13, scope: !4060, inlinedAt: !4069)
!4060 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv", scope: !331, file: !332, line: 2167, type: !4061, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4063, declaration: !4065, variables: !4066)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !567}
!4063 = !{!4064, !3605}
!4064 = !DITemplateValueParameter(name: "_Dummy", type: !104, value: i8 1)
!4065 = !DISubprogram(name: "__compressed_pair<true, void>", scope: !331, file: !332, line: 2167, type: !4061, isLocal: false, isDefinition: false, scopeLine: 2167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !4063)
!4066 = !{!4067}
!4067 = !DILocalVariable(name: "this", arg: 1, scope: !4060, type: !4068, flags: DIFlagArtificial | DIFlagObjectPointer)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!4069 = distinct !DILocation(line: 2167, column: 33, scope: !4070, inlinedAt: !4073)
!4070 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv", scope: !331, file: !332, line: 2167, type: !4061, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4063, declaration: !4065, variables: !4071)
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "this", arg: 1, scope: !4070, type: !4068, flags: DIFlagArtificial | DIFlagObjectPointer)
!4073 = distinct !DILocation(line: 786, column: 5, scope: !4046, inlinedAt: !4051)
!4074 = !DILocalVariable(name: "this", arg: 1, scope: !4075, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4075 = distinct !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !317, file: !318, line: 1685, type: !915, isLocal: false, isDefinition: true, scopeLine: 1686, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1175, variables: !4076)
!4076 = !{!4074, !4077, !4078, !4079, !4080}
!4077 = !DILocalVariable(name: "__n", arg: 2, scope: !4075, file: !318, line: 1344, type: !347)
!4078 = !DILocalVariable(name: "__c", arg: 3, scope: !4075, file: !318, line: 1344, type: !507)
!4079 = !DILocalVariable(name: "__p", scope: !4075, file: !318, line: 1689, type: !497)
!4080 = !DILocalVariable(name: "__cap", scope: !4081, file: !318, line: 1697, type: !347)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !318, line: 1696, column: 5)
!4082 = distinct !DILexicalBlock(scope: !4075, file: !318, line: 1690, column: 9)
!4083 = !DILocation(line: 0, scope: !4075, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 1711, column: 5, scope: !4085, inlinedAt: !4051)
!4085 = distinct !DILexicalBlock(scope: !4046, file: !318, line: 1710, column: 1)
!4086 = !DILocation(line: 1344, column: 27, scope: !4075, inlinedAt: !4084)
!4087 = !DILocation(line: 1344, column: 43, scope: !4075, inlinedAt: !4084)
!4088 = !DILocation(line: 1690, column: 13, scope: !4082, inlinedAt: !4084)
!4089 = !DILocation(line: 1690, column: 9, scope: !4075, inlinedAt: !4084)
!4090 = !DILocalVariable(name: "__s", arg: 1, scope: !4091, file: !318, line: 1334, type: !347)
!4091 = distinct !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !317, file: !318, line: 1334, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1166, variables: !4092)
!4092 = !{!4090}
!4093 = !DILocation(line: 1334, column: 37, scope: !4091, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1697, column: 27, scope: !4081, inlinedAt: !4084)
!4095 = !DILocation(line: 1331, column: 26, scope: !4096, inlinedAt: !4102)
!4096 = distinct !DISubprogram(name: "__align_it<16>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm", scope: !317, file: !318, line: 1330, type: !1167, isLocal: false, isDefinition: true, scopeLine: 1331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4097, declaration: !4099, variables: !4100)
!4097 = !{!4098}
!4098 = !DITemplateValueParameter(name: "__a", type: !88, value: i64 16)
!4099 = !DISubprogram(name: "__align_it<16>", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm", scope: !317, file: !318, line: 1330, type: !1167, isLocal: false, isDefinition: false, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, templateParams: !4097)
!4100 = !{!4101}
!4101 = !DILocalVariable(name: "__s", arg: 1, scope: !4096, file: !318, line: 1330, type: !347)
!4102 = distinct !DILocation(line: 1336, column: 18, scope: !4091, inlinedAt: !4094)
!4103 = !DILocation(line: 1331, column: 37, scope: !4096, inlinedAt: !4102)
!4104 = !DILocalVariable(name: "__n", arg: 2, scope: !4105, file: !332, line: 1540, type: !348)
!4105 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !349, file: !332, line: 1540, type: !352, isLocal: false, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !351, variables: !4106)
!4106 = !{!4107, !4104}
!4107 = !DILocalVariable(name: "__a", arg: 1, scope: !4105, file: !332, line: 1540, type: !406)
!4108 = !DILocation(line: 1540, column: 60, scope: !4105, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 1698, column: 15, scope: !4110, inlinedAt: !4084)
!4110 = !DILexicalBlockFile(scope: !4081, file: !318, discriminator: 1)
!4111 = !DILocalVariable(name: "__n", arg: 2, scope: !4112, file: !332, line: 1781, type: !385)
!4112 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !361, file: !332, line: 1781, type: !383, isLocal: false, isDefinition: true, scopeLine: 1782, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !382, variables: !4113)
!4113 = !{!4114, !4111, !4116}
!4114 = !DILocalVariable(name: "this", arg: 1, scope: !4112, type: !4115, flags: DIFlagArtificial | DIFlagObjectPointer)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!4116 = !DILocalVariable(arg: 3, scope: !4112, file: !332, line: 1781, type: !386)
!4117 = !DILocation(line: 1781, column: 58, scope: !4112, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 1541, column: 21, scope: !4105, inlinedAt: !4109)
!4119 = !DILocation(line: 1781, column: 94, scope: !4112, inlinedAt: !4118)
!4120 = !DILocalVariable(name: "__size", arg: 1, scope: !4121, file: !4122, line: 222, type: !84)
!4121 = distinct !DISubprogram(name: "__allocate", linkageName: "_ZNSt3__110__allocateEm", scope: !7, file: !4122, line: 222, type: !2808, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4123)
!4122 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/new", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!4123 = !{!4120}
!4124 = !DILocation(line: 222, column: 58, scope: !4121, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 1786, column: 37, scope: !4112, inlinedAt: !4118)
!4126 = !DILocation(line: 226, column: 10, scope: !4121, inlinedAt: !4125)
!4127 = !DILocation(line: 1689, column: 13, scope: !4075, inlinedAt: !4084)
!4128 = !DILocalVariable(name: "this", arg: 1, scope: !4129, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4129 = distinct !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !317, file: !318, line: 1299, type: !1148, isLocal: false, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1147, variables: !4130)
!4130 = !{!4128, !4131}
!4131 = !DILocalVariable(name: "__p", arg: 2, scope: !4129, file: !318, line: 1299, type: !497)
!4132 = !DILocation(line: 0, scope: !4129, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 1699, column: 9, scope: !4081, inlinedAt: !4084)
!4134 = !DILocation(line: 1299, column: 37, scope: !4129, inlinedAt: !4133)
!4135 = !DILocation(line: 1300, column: 27, scope: !4129, inlinedAt: !4133)
!4136 = !DILocation(line: 1300, column: 35, scope: !4129, inlinedAt: !4133)
!4137 = !{!4138, !3637, i64 16}
!4138 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !3759, i64 0, !3759, i64 8, !3637, i64 16}
!4139 = !DILocalVariable(name: "this", arg: 1, scope: !4140, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4140 = distinct !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !317, file: !318, line: 1292, type: !918, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1145, variables: !4141)
!4141 = !{!4139, !4142}
!4142 = !DILocalVariable(name: "__s", arg: 2, scope: !4140, file: !318, line: 1292, type: !347)
!4143 = !DILocation(line: 0, scope: !4140, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 1700, column: 9, scope: !4081, inlinedAt: !4084)
!4145 = !DILocation(line: 1292, column: 35, scope: !4140, inlinedAt: !4144)
!4146 = !DILocation(line: 1293, column: 49, scope: !4140, inlinedAt: !4144)
!4147 = !DILocation(line: 1293, column: 27, scope: !4140, inlinedAt: !4144)
!4148 = !DILocation(line: 1293, column: 35, scope: !4140, inlinedAt: !4144)
!4149 = !{!4138, !3759, i64 0}
!4150 = !DILocalVariable(name: "this", arg: 1, scope: !4151, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4151 = distinct !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !317, file: !318, line: 1282, type: !918, isLocal: false, isDefinition: true, scopeLine: 1283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1142, variables: !4152)
!4152 = !{!4150, !4153}
!4153 = !DILocalVariable(name: "__s", arg: 2, scope: !4151, file: !318, line: 1282, type: !347)
!4154 = !DILocation(line: 0, scope: !4151, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 1701, column: 9, scope: !4081, inlinedAt: !4084)
!4156 = !DILocation(line: 1282, column: 36, scope: !4151, inlinedAt: !4155)
!4157 = !DILocation(line: 1283, column: 27, scope: !4151, inlinedAt: !4155)
!4158 = !DILocation(line: 1283, column: 35, scope: !4151, inlinedAt: !4155)
!4159 = !{!4138, !3759, i64 8}
!4160 = !DILocalVariable(name: "__n", arg: 2, scope: !4161, file: !777, line: 225, type: !84)
!4161 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !776, file: !777, line: 225, type: !806, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !805, variables: !4162)
!4162 = !{!4163, !4160, !4164}
!4163 = !DILocalVariable(name: "__s", arg: 1, scope: !4161, file: !777, line: 225, type: !803)
!4164 = !DILocalVariable(name: "__a", arg: 3, scope: !4161, file: !777, line: 225, type: !783)
!4165 = !DILocation(line: 225, column: 60, scope: !4161, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 1703, column: 5, scope: !4167, inlinedAt: !4084)
!4167 = !DILexicalBlockFile(scope: !4075, file: !318, discriminator: 1)
!4168 = !DILocation(line: 225, column: 75, scope: !4161, inlinedAt: !4166)
!4169 = !DILocation(line: 1312, column: 72, scope: !4170, inlinedAt: !4174)
!4170 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !317, file: !318, line: 1311, type: !1154, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1162, variables: !4171)
!4171 = !{!4172}
!4172 = !DILocalVariable(name: "this", arg: 1, scope: !4170, type: !4173, flags: DIFlagArtificial | DIFlagObjectPointer)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!4174 = distinct !DILocation(line: 1318, column: 54, scope: !4175, inlinedAt: !4179)
!4175 = !DILexicalBlockFile(scope: !4176, file: !318, discriminator: 2)
!4176 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !317, file: !318, line: 1317, type: !1154, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1164, variables: !4177)
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "this", arg: 1, scope: !4176, type: !4173, flags: DIFlagArtificial | DIFlagObjectPointer)
!4179 = distinct !DILocation(line: 1132, column: 79, scope: !4180, inlinedAt: !4183)
!4180 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !317, file: !318, line: 1132, type: !1061, isLocal: false, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1063, variables: !4181)
!4181 = !{!4182}
!4182 = !DILocalVariable(name: "this", arg: 1, scope: !4180, type: !4173, flags: DIFlagArtificial | DIFlagObjectPointer)
!4183 = distinct !DILocation(line: 1350, column: 37, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !3987, file: !3973, line: 1350, column: 13)
!4185 = !DILocation(line: 1312, column: 59, scope: !4170, inlinedAt: !4174)
!4186 = !DILocation(line: 226, column: 17, scope: !4161, inlinedAt: !4166)
!4187 = !DILocalVariable(name: "this", arg: 1, scope: !4188, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4188 = distinct !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !317, file: !318, line: 1264, type: !918, isLocal: false, isDefinition: true, scopeLine: 1268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1140, variables: !4189)
!4189 = !{!4187, !4190}
!4190 = !DILocalVariable(name: "__s", arg: 2, scope: !4188, file: !318, line: 1264, type: !347)
!4191 = !DILocation(line: 0, scope: !4188, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 1692, column: 9, scope: !4193, inlinedAt: !4084)
!4193 = distinct !DILexicalBlock(scope: !4082, file: !318, line: 1691, column: 5)
!4194 = !DILocation(line: 1264, column: 37, scope: !4188, inlinedAt: !4192)
!4195 = !DILocation(line: 1268, column: 52, scope: !4188, inlinedAt: !4192)
!4196 = !DILocation(line: 1268, column: 35, scope: !4188, inlinedAt: !4192)
!4197 = !{!3638, !3638, i64 0}
!4198 = !DILocalVariable(name: "this", arg: 1, scope: !4199, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4199 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !317, file: !318, line: 1308, type: !1151, isLocal: false, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1161, variables: !4200)
!4200 = !{!4198}
!4201 = !DILocation(line: 0, scope: !4199, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 1693, column: 15, scope: !4193, inlinedAt: !4084)
!4203 = !DILocation(line: 1309, column: 66, scope: !4199, inlinedAt: !4202)
!4204 = !DILocation(line: 1309, column: 53, scope: !4199, inlinedAt: !4202)
!4205 = !DILocation(line: 225, column: 48, scope: !4161, inlinedAt: !4166)
!4206 = !DILocation(line: 1306, column: 34, scope: !4207, inlinedAt: !4210)
!4207 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !317, file: !318, line: 1305, type: !1154, isLocal: false, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1153, variables: !4208)
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "this", arg: 1, scope: !4207, type: !4173, flags: DIFlagArtificial | DIFlagObjectPointer)
!4210 = distinct !DILocation(line: 1318, column: 31, scope: !4211, inlinedAt: !4179)
!4211 = !DILexicalBlockFile(scope: !4176, file: !318, discriminator: 1)
!4212 = !DILocation(line: 226, column: 46, scope: !4161, inlinedAt: !4166)
!4213 = !DILocation(line: 1704, column: 25, scope: !4075, inlinedAt: !4084)
!4214 = !DILocalVariable(name: "__c1", arg: 1, scope: !4215, file: !777, line: 206, type: !782)
!4215 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !776, file: !777, line: 206, type: !780, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !779, variables: !4216)
!4216 = !{!4214, !4217}
!4217 = !DILocalVariable(name: "__c2", arg: 2, scope: !4215, file: !777, line: 206, type: !784)
!4218 = !DILocation(line: 206, column: 28, scope: !4215, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 1704, column: 5, scope: !4075, inlinedAt: !4084)
!4220 = !DILocation(line: 206, column: 73, scope: !4215, inlinedAt: !4219)
!4221 = !DILocation(line: 0, scope: !4180, inlinedAt: !4183)
!4222 = !DILocation(line: 0, scope: !4176, inlinedAt: !4179)
!4223 = !DILocalVariable(name: "this", arg: 1, scope: !4224, type: !4173, flags: DIFlagArtificial | DIFlagObjectPointer)
!4224 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !317, file: !318, line: 1223, type: !924, isLocal: false, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1132, variables: !4225)
!4225 = !{!4223}
!4226 = !DILocation(line: 0, scope: !4224, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 1318, column: 17, scope: !4176, inlinedAt: !4179)
!4228 = !DILocation(line: 1224, column: 39, scope: !4224, inlinedAt: !4227)
!4229 = !DILocation(line: 1224, column: 47, scope: !4224, inlinedAt: !4227)
!4230 = !DILocation(line: 1224, column: 22, scope: !4224, inlinedAt: !4227)
!4231 = !DILocation(line: 0, scope: !4207, inlinedAt: !4210)
!4232 = !DILocation(line: 0, scope: !4170, inlinedAt: !4174)
!4233 = !DILocation(line: 1318, column: 17, scope: !4176, inlinedAt: !4179)
!4234 = !DILocation(line: 0, scope: !4018, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 1350, column: 26, scope: !4184)
!4236 = !DILocation(line: 223, column: 39, scope: !4018, inlinedAt: !4235)
!4237 = !DILocation(line: 223, column: 55, scope: !4018, inlinedAt: !4235)
!4238 = !DILocation(line: 224, column: 14, scope: !4018, inlinedAt: !4235)
!4239 = !DILocation(line: 1350, column: 51, scope: !4240)
!4240 = !DILexicalBlockFile(scope: !4184, file: !3973, discriminator: 1)
!4241 = !DILocalVariable(name: "this", arg: 1, scope: !4242, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4242 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev", scope: !317, file: !318, line: 1904, type: !589, isLocal: false, isDefinition: true, scopeLine: 1905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !857, variables: !4243)
!4243 = !{!4241}
!4244 = !DILocation(line: 0, scope: !4242, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 1355, column: 5, scope: !4246)
!4246 = !DILexicalBlockFile(scope: !3988, file: !3973, discriminator: 2)
!4247 = !DILocalVariable(name: "this", arg: 1, scope: !4248, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4248 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev", scope: !317, file: !318, line: 1904, type: !589, isLocal: false, isDefinition: true, scopeLine: 1905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !857, variables: !4249)
!4249 = !{!4247}
!4250 = !DILocation(line: 0, scope: !4248, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 1905, column: 1, scope: !4242, inlinedAt: !4245)
!4252 = !DILocation(line: 0, scope: !4224, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 1909, column: 9, scope: !4254, inlinedAt: !4251)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !318, line: 1909, column: 9)
!4255 = distinct !DILexicalBlock(scope: !4248, file: !318, line: 1905, column: 1)
!4256 = !DILocation(line: 1224, column: 39, scope: !4224, inlinedAt: !4253)
!4257 = !DILocation(line: 1224, column: 47, scope: !4224, inlinedAt: !4253)
!4258 = !DILocation(line: 1224, column: 22, scope: !4224, inlinedAt: !4253)
!4259 = !DILocation(line: 1909, column: 9, scope: !4255, inlinedAt: !4251)
!4260 = !DILocalVariable(name: "this", arg: 1, scope: !4261, type: !4040, flags: DIFlagArtificial | DIFlagObjectPointer)
!4261 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !317, file: !318, line: 1302, type: !1151, isLocal: false, isDefinition: true, scopeLine: 1303, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1150, variables: !4262)
!4262 = !{!4260}
!4263 = !DILocation(line: 0, scope: !4261, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 1910, column: 47, scope: !4265, inlinedAt: !4251)
!4265 = !DILexicalBlockFile(scope: !4254, file: !318, discriminator: 1)
!4266 = !DILocation(line: 1303, column: 34, scope: !4261, inlinedAt: !4264)
!4267 = !DILocalVariable(name: "__p", arg: 2, scope: !4268, file: !332, line: 1548, type: !354)
!4268 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !349, file: !332, line: 1548, type: !435, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !434, variables: !4269)
!4269 = !{!4270, !4267, !4271}
!4270 = !DILocalVariable(name: "__a", arg: 1, scope: !4268, file: !332, line: 1548, type: !406)
!4271 = !DILocalVariable(name: "__n", arg: 3, scope: !4268, file: !332, line: 1548, type: !348)
!4272 = !DILocation(line: 1548, column: 57, scope: !4268, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 1910, column: 9, scope: !4274, inlinedAt: !4251)
!4274 = !DILexicalBlockFile(scope: !4254, file: !318, discriminator: 3)
!4275 = !DILocalVariable(name: "__p", arg: 2, scope: !4276, file: !332, line: 1788, type: !370)
!4276 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !361, file: !332, line: 1788, type: !393, isLocal: false, isDefinition: true, scopeLine: 1789, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !392, variables: !4277)
!4277 = !{!4278, !4275, !4279}
!4278 = !DILocalVariable(name: "this", arg: 1, scope: !4276, type: !4115, flags: DIFlagArtificial | DIFlagObjectPointer)
!4279 = !DILocalVariable(arg: 3, scope: !4276, file: !332, line: 1788, type: !385)
!4280 = !DILocation(line: 1788, column: 55, scope: !4276, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 1549, column: 14, scope: !4268, inlinedAt: !4273)
!4282 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4283, file: !4122, line: 230, type: !72)
!4283 = distinct !DISubprogram(name: "__libcpp_deallocate", linkageName: "_ZNSt3__119__libcpp_deallocateEPv", scope: !7, file: !4122, line: 230, type: !2804, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4284)
!4284 = !{!4282}
!4285 = !DILocation(line: 230, column: 65, scope: !4283, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 1789, column: 10, scope: !4276, inlinedAt: !4281)
!4287 = !DILocation(line: 234, column: 3, scope: !4283, inlinedAt: !4286)
!4288 = !DILocation(line: 1910, column: 9, scope: !4254, inlinedAt: !4251)
!4289 = !DILocation(line: 1355, column: 5, scope: !3988)
!4290 = !DILocation(line: 1367, column: 1, scope: !4184)
!4291 = !DILocation(line: 0, scope: !4242, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 1355, column: 5, scope: !3988)
!4293 = !DILocation(line: 0, scope: !4248, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 1905, column: 1, scope: !4242, inlinedAt: !4292)
!4295 = !DILocation(line: 0, scope: !4224, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 1909, column: 9, scope: !4254, inlinedAt: !4294)
!4297 = !DILocation(line: 1224, column: 39, scope: !4224, inlinedAt: !4296)
!4298 = !DILocation(line: 1224, column: 47, scope: !4224, inlinedAt: !4296)
!4299 = !DILocation(line: 1224, column: 22, scope: !4224, inlinedAt: !4296)
!4300 = !DILocation(line: 1909, column: 9, scope: !4255, inlinedAt: !4294)
!4301 = !DILocation(line: 0, scope: !4261, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 1910, column: 47, scope: !4265, inlinedAt: !4294)
!4303 = !DILocation(line: 1303, column: 34, scope: !4261, inlinedAt: !4302)
!4304 = !DILocation(line: 1548, column: 57, scope: !4268, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 1910, column: 9, scope: !4274, inlinedAt: !4294)
!4306 = !DILocation(line: 1788, column: 55, scope: !4276, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 1549, column: 14, scope: !4268, inlinedAt: !4305)
!4308 = !DILocation(line: 230, column: 65, scope: !4283, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 1789, column: 10, scope: !4276, inlinedAt: !4307)
!4310 = !DILocation(line: 234, column: 3, scope: !4283, inlinedAt: !4309)
!4311 = !DILocation(line: 1910, column: 9, scope: !4254, inlinedAt: !4294)
!4312 = !DILocation(line: 1367, column: 1, scope: !4313)
!4313 = !DILexicalBlockFile(scope: !3972, file: !3973, discriminator: 3)
!4314 = !DILocation(line: 1356, column: 17, scope: !3972)
!4315 = !DILocation(line: 1357, column: 14, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !3972, file: !3973, line: 1357, column: 9)
!4317 = !DILocation(line: 1357, column: 9, scope: !3972)
!4318 = !DILocation(line: 0, scope: !4018, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 1359, column: 26, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !3973, line: 1359, column: 13)
!4321 = distinct !DILexicalBlock(scope: !4316, file: !3973, line: 1358, column: 5)
!4322 = !DILocation(line: 223, column: 39, scope: !4018, inlinedAt: !4319)
!4323 = !DILocation(line: 223, column: 55, scope: !4018, inlinedAt: !4319)
!4324 = !DILocation(line: 224, column: 14, scope: !4018, inlinedAt: !4319)
!4325 = !DILocation(line: 1359, column: 44, scope: !4320)
!4326 = !DILocation(line: 1359, column: 13, scope: !4321)
!4327 = !DILocalVariable(name: "this", arg: 1, scope: !4328, type: !3941, flags: DIFlagArtificial | DIFlagObjectPointer)
!4328 = distinct !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !19, file: !18, line: 509, type: !272, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !275, variables: !4329)
!4329 = !{!4327, !4330, !4331}
!4330 = !DILocalVariable(name: "__wide", arg: 2, scope: !4328, file: !18, line: 509, type: !64)
!4331 = !DILocalVariable(name: "__r", scope: !4328, file: !18, line: 511, type: !64)
!4332 = !DILocation(line: 0, scope: !4328, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 1365, column: 11, scope: !3972)
!4334 = !DILocation(line: 509, column: 28, scope: !4328, inlinedAt: !4333)
!4335 = !DILocation(line: 512, column: 14, scope: !4328, inlinedAt: !4333)
!4336 = !DILocation(line: 1366, column: 5, scope: !3972)
!4337 = !DILocation(line: 1367, column: 1, scope: !4338)
!4338 = !DILexicalBlockFile(scope: !3972, file: !3973, discriminator: 2)
!4339 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !3516, file: !1897, line: 356, type: !3599, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3602, declaration: !3606, variables: !4340)
!4340 = !{!4341, !4342, !4343, !4346, !4491}
!4341 = !DILocalVariable(name: "this", arg: 1, scope: !4339, type: !3609, flags: DIFlagArtificial | DIFlagObjectPointer)
!4342 = !DILocalVariable(name: "__f", arg: 2, scope: !4339, file: !1897, line: 356, type: !3601)
!4343 = !DILocalVariable(name: "__tsp", scope: !4344, file: !1897, line: 359, type: !4345)
!4344 = distinct !DILexicalBlock(scope: !4339, file: !1897, line: 357, column: 1)
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !1897, line: 358, baseType: !1886)
!4346 = !DILocalVariable(name: "__p", scope: !4344, file: !1897, line: 361, type: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !332, line: 2334, size: 64, elements: !4348, templateParams: !4463, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!4348 = !{!4349, !4432, !4437, !4441, !4444, !4447, !4457, !4468, !4469, !4474, !4479, !4482, !4485, !4488}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !4347, file: !332, line: 2344, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !332, line: 2144, size: 64, elements: !4351, templateParams: !4429, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!4351 = !{!4352, !4375, !4410, !4414, !4419, !4422, !4425}
!4352 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4350, baseType: !4353)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !7, file: !332, line: 2076, size: 64, elements: !4354, templateParams: !4373, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!4354 = !{!4355, !4356, !4360, !4365}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !4353, file: !332, line: 2105, baseType: !1874, size: 64, flags: DIFlagPrivate)
!4356 = !DISubprogram(name: "__compressed_pair_elem", scope: !4353, file: !332, line: 2082, type: !4357, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4360 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4353, file: !332, line: 2101, type: !4361, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!4363, !4359}
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !4353, file: !332, line: 2078, baseType: !4364)
!4364 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1874, size: 64)
!4365 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4353, file: !332, line: 2102, type: !4366, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!4368, !4371}
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !4353, file: !332, line: 2079, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4370, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4353)
!4373 = !{!4374, !538, !539}
!4374 = !DITemplateTypeParameter(name: "_Tp", type: !1874)
!4375 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4350, baseType: !4376)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !7, file: !332, line: 2109, size: 8, elements: !4377, templateParams: !4408, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!4377 = !{!4378, !4392, !4396, !4401}
!4378 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4376, baseType: !4379, flags: DIFlagPrivate)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !332, line: 2253, size: 8, elements: !4380, templateParams: !4390, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!4380 = !{!4381, !4385}
!4381 = !DISubprogram(name: "default_delete", scope: !4379, file: !332, line: 2257, type: !4382, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !4384}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4385 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !4379, file: !332, line: 2267, type: !4386, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !4388, !1874}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4379)
!4390 = !{!4391}
!4391 = !DITemplateTypeParameter(name: "_Tp", type: !1875)
!4392 = !DISubprogram(name: "__compressed_pair_elem", scope: !4376, file: !332, line: 2116, type: !4393, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !4395}
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4396 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4376, file: !332, line: 2136, type: !4397, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!4399, !4395}
!4399 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !4376, file: !332, line: 2111, baseType: !4400)
!4400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4379, size: 64)
!4401 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4376, file: !332, line: 2137, type: !4402, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!4404, !4406}
!4404 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !4376, file: !332, line: 2112, baseType: !4405)
!4405 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4389, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4376)
!4408 = !{!4409, !562, !563}
!4409 = !DITemplateTypeParameter(name: "_Tp", type: !4379)
!4410 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4350, file: !332, line: 2212, type: !4411, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!4363, !4413}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4414 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4350, file: !332, line: 2217, type: !4415, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!4368, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4350)
!4419 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4350, file: !332, line: 2222, type: !4420, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!4399, !4413}
!4422 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4350, file: !332, line: 2227, type: !4423, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!4404, !4417}
!4425 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !4350, file: !332, line: 2232, type: !4426, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4413, !4428}
!4428 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4350, size: 64)
!4429 = !{!4430, !4431}
!4430 = !DITemplateTypeParameter(name: "_T1", type: !1874)
!4431 = !DITemplateTypeParameter(name: "_T2", type: !4379)
!4432 = !DISubprogram(name: "unique_ptr", scope: !4347, file: !332, line: 2427, type: !4433, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !4435, !4436}
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4436 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4347, size: 64)
!4437 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !4347, file: !332, line: 2450, type: !4438, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!4440, !4435, !4436}
!4440 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4347, size: 64)
!4441 = !DISubprogram(name: "~unique_ptr", scope: !4347, file: !332, line: 2539, type: !4442, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4435}
!4444 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !4347, file: !332, line: 2542, type: !4445, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!4440, !4435, !2372}
!4447 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !4347, file: !332, line: 2549, type: !4448, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!4450, !4455}
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4451, file: !426, line: 1084, baseType: !4452)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !426, line: 1083, size: 8, elements: !357, templateParams: !4390, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!4452 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4453, file: !426, line: 1081, baseType: !2540)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !7, file: !426, line: 1081, size: 8, elements: !357, templateParams: !4454, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!4454 = !{!4391, !227}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4347)
!4457 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !4347, file: !332, line: 2553, type: !4458, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!4460, !4455}
!4460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !4347, file: !332, line: 2338, baseType: !4461)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4462, file: !332, line: 1031, baseType: !4465)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !332, line: 1029, size: 8, elements: !357, templateParams: !4463, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!4463 = !{!4391, !4464}
!4464 = !DITemplateTypeParameter(name: "_Dp", type: !4379)
!4465 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4466, file: !332, line: 1023, baseType: !1874)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !404, file: !332, line: 1021, size: 8, elements: !357, templateParams: !4467, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!4467 = !{!4391, !4464, !176}
!4468 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !4347, file: !332, line: 2557, type: !4458, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4469 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !4347, file: !332, line: 2561, type: !4470, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!4472, !4435}
!4472 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !4347, file: !332, line: 2337, baseType: !4379)
!4474 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !4347, file: !332, line: 2565, type: !4475, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!4477, !4455}
!4477 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4479 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !4347, file: !332, line: 2569, type: !4480, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!104, !4455}
!4482 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !4347, file: !332, line: 2574, type: !4483, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!4460, !4435}
!4485 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !4347, file: !332, line: 2581, type: !4486, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !4435, !4460}
!4488 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !4347, file: !332, line: 2589, type: !4489, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !4435, !4440}
!4491 = !DILocalVariable(name: "__ec", scope: !4344, file: !1897, line: 365, type: !26)
!4492 = !DILocation(line: 0, scope: !4339)
!4493 = !DILocation(line: 356, column: 22, scope: !4339)
!4494 = !DILocation(line: 359, column: 18, scope: !4344)
!4495 = !DILocation(line: 359, column: 22, scope: !4344)
!4496 = !DILocation(line: 359, column: 12, scope: !4344)
!4497 = !DILocation(line: 362, column: 13, scope: !4344)
!4498 = !DILocation(line: 363, column: 21, scope: !4499)
!4499 = !DILexicalBlockFile(scope: !4344, file: !1897, discriminator: 1)
!4500 = !DILocalVariable(name: "__u", arg: 2, scope: !4501, file: !1876, line: 728, type: !2361)
!4501 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !1875, file: !1876, line: 728, type: !4502, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4505, declaration: !4508, variables: !4509)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{null, !2530, !2361, !4504}
!4504 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2454, size: 64)
!4505 = !{!4506, !4507, !176}
!4506 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !2523)
!4507 = !DITemplateValueParameter(name: "_PackIsTuple", type: !104, value: i8 0)
!4508 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !1875, file: !1876, line: 728, type: !4502, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !4505)
!4509 = !{!4510, !4500, !4511}
!4510 = !DILocalVariable(name: "this", arg: 1, scope: !4501, type: !1874, flags: DIFlagArtificial | DIFlagObjectPointer)
!4511 = !DILocalVariable(name: "__u", arg: 3, scope: !4501, file: !1876, line: 728, type: !4504)
!4512 = !DILocation(line: 728, column: 24, scope: !4501, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 362, column: 17, scope: !4514)
!4514 = !DILexicalBlockFile(scope: !4344, file: !1897, discriminator: 2)
!4515 = !DILocalVariable(name: "__u", arg: 2, scope: !4516, file: !1876, line: 728, type: !2361)
!4516 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !1875, file: !1876, line: 728, type: !4502, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4505, declaration: !4508, variables: !4517)
!4517 = !{!4518, !4515, !4519}
!4518 = !DILocalVariable(name: "this", arg: 1, scope: !4516, type: !1874, flags: DIFlagArtificial | DIFlagObjectPointer)
!4519 = !DILocalVariable(name: "__u", arg: 3, scope: !4516, file: !1876, line: 728, type: !4504)
!4520 = !DILocation(line: 728, column: 24, scope: !4516, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 742, column: 50, scope: !4501, inlinedAt: !4513)
!4522 = !DILocalVariable(name: "__u", arg: 6, scope: !4523, file: !1876, line: 382, type: !2361)
!4523 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !1880, file: !1876, line: 380, type: !4524, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4533, declaration: !4538, variables: !4539)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !2493, !2515, !4526, !4527, !4530, !2361, !4504}
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2516, line: 253, size: 8, elements: !357, templateParams: !2575, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !7, file: !2516, line: 90, size: 8, elements: !357, templateParams: !4528, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!4528 = !{!4529}
!4529 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !357)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !7, file: !2516, line: 253, size: 8, elements: !357, templateParams: !4531, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!4531 = !{!4532}
!4532 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !357)
!4533 = !{!4534, !4535, !4536, !4537, !4506}
!4534 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !2519)
!4535 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !2523)
!4536 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !357)
!4537 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !357)
!4538 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !1880, file: !1876, line: 380, type: !4524, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !4533)
!4539 = !{!4540, !4542, !4543, !4544, !4545, !4522, !4546}
!4540 = !DILocalVariable(name: "this", arg: 1, scope: !4523, type: !4541, flags: DIFlagArtificial | DIFlagObjectPointer)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!4542 = !DILocalVariable(arg: 2, scope: !4523, file: !1876, line: 380, type: !2515)
!4543 = !DILocalVariable(arg: 3, scope: !4523, file: !1876, line: 380, type: !4526)
!4544 = !DILocalVariable(arg: 4, scope: !4523, file: !1876, line: 381, type: !4527)
!4545 = !DILocalVariable(arg: 5, scope: !4523, file: !1876, line: 381, type: !4530)
!4546 = !DILocalVariable(name: "__u", arg: 7, scope: !4523, file: !1876, line: 382, type: !4504)
!4547 = !DILocation(line: 382, column: 31, scope: !4523, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 738, column: 15, scope: !4516, inlinedAt: !4521)
!4549 = !DILocalVariable(name: "__u", arg: 6, scope: !4550, file: !1876, line: 382, type: !2361)
!4550 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !1880, file: !1876, line: 380, type: !4524, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4533, declaration: !4538, variables: !4551)
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4549, !4557}
!4552 = !DILocalVariable(name: "this", arg: 1, scope: !4550, type: !4541, flags: DIFlagArtificial | DIFlagObjectPointer)
!4553 = !DILocalVariable(arg: 2, scope: !4550, file: !1876, line: 380, type: !2515)
!4554 = !DILocalVariable(arg: 3, scope: !4550, file: !1876, line: 380, type: !4526)
!4555 = !DILocalVariable(arg: 4, scope: !4550, file: !1876, line: 381, type: !4527)
!4556 = !DILocalVariable(arg: 5, scope: !4550, file: !1876, line: 381, type: !4530)
!4557 = !DILocalVariable(name: "__u", arg: 7, scope: !4550, file: !1876, line: 382, type: !4504)
!4558 = !DILocation(line: 382, column: 31, scope: !4550, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 387, column: 13, scope: !4523, inlinedAt: !4548)
!4560 = !DILocalVariable(name: "__t", arg: 2, scope: !4561, file: !1876, line: 225, type: !2361)
!4561 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !1883, file: !1876, line: 225, type: !4562, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4564, declaration: !4566, variables: !4567)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !2423, !2361}
!4564 = !{!4565, !3605}
!4565 = !DITemplateTypeParameter(name: "_Tp", type: !1886)
!4566 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !1883, file: !1876, line: 225, type: !4562, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !4564)
!4567 = !{!4568, !4560}
!4568 = !DILocalVariable(name: "this", arg: 1, scope: !4561, type: !4569, flags: DIFlagArtificial | DIFlagObjectPointer)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!4570 = !DILocation(line: 225, column: 37, scope: !4561, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 385, column: 13, scope: !4572, inlinedAt: !4559)
!4572 = !DILexicalBlockFile(scope: !4550, file: !1876, discriminator: 1)
!4573 = !DILocalVariable(name: "__u", arg: 2, scope: !4574, file: !332, line: 2427, type: !2361)
!4574 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !1886, file: !332, line: 2427, type: !2358, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2357, variables: !4575)
!4575 = !{!4576, !4573}
!4576 = !DILocalVariable(name: "this", arg: 1, scope: !4574, type: !4577, flags: DIFlagArtificial | DIFlagObjectPointer)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!4578 = !DILocation(line: 2427, column: 27, scope: !4574, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 226, column: 15, scope: !4580, inlinedAt: !4571)
!4580 = !DILexicalBlockFile(scope: !4561, file: !1876, discriminator: 1)
!4581 = !DILocalVariable(name: "__u", arg: 2, scope: !4582, file: !332, line: 2427, type: !2361)
!4582 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !1886, file: !332, line: 2427, type: !2358, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2357, variables: !4583)
!4583 = !{!4584, !4581}
!4584 = !DILocalVariable(name: "this", arg: 1, scope: !4582, type: !4577, flags: DIFlagArtificial | DIFlagObjectPointer)
!4585 = !DILocation(line: 2427, column: 27, scope: !4582, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 2428, column: 80, scope: !4574, inlinedAt: !4579)
!4587 = !DILocalVariable(name: "__t1", arg: 2, scope: !4588, file: !332, line: 2183, type: !4591)
!4588 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !1889, file: !332, line: 2183, type: !4589, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4593, declaration: !4596, variables: !4597)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !2338, !4591, !4592}
!4591 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1895, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2304, size: 64)
!4593 = !{!4594, !4595}
!4594 = !DITemplateTypeParameter(name: "_U1", type: !1895)
!4595 = !DITemplateTypeParameter(name: "_U2", type: !2304)
!4596 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !1889, file: !332, line: 2183, type: !4589, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !4593)
!4597 = !{!4598, !4587, !4600}
!4598 = !DILocalVariable(name: "this", arg: 1, scope: !4588, type: !4599, flags: DIFlagArtificial | DIFlagObjectPointer)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!4600 = !DILocalVariable(name: "__t2", arg: 3, scope: !4588, file: !332, line: 2183, type: !4592)
!4601 = !DILocation(line: 2183, column: 27, scope: !4588, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 2428, column: 9, scope: !4582, inlinedAt: !4586)
!4603 = !DILocalVariable(name: "__t1", arg: 2, scope: !4604, file: !332, line: 2183, type: !4591)
!4604 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !1889, file: !332, line: 2183, type: !4589, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4593, declaration: !4596, variables: !4605)
!4605 = !{!4606, !4603, !4607}
!4606 = !DILocalVariable(name: "this", arg: 1, scope: !4604, type: !4599, flags: DIFlagArtificial | DIFlagObjectPointer)
!4607 = !DILocalVariable(name: "__t2", arg: 3, scope: !4604, file: !332, line: 2183, type: !4592)
!4608 = !DILocation(line: 2183, column: 27, scope: !4604, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 2184, column: 74, scope: !4588, inlinedAt: !4602)
!4610 = !DILocalVariable(name: "__u", arg: 2, scope: !4611, file: !332, line: 2088, type: !4591)
!4611 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !1892, file: !332, line: 2088, type: !4612, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4614, declaration: !4616, variables: !4617)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{null, !2284, !4591}
!4614 = !{!4615, !3605}
!4615 = !DITemplateTypeParameter(name: "_Up", type: !1895)
!4616 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !1892, file: !332, line: 2088, type: !4612, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !4614)
!4617 = !{!4618, !4610}
!4618 = !DILocalVariable(name: "this", arg: 1, scope: !4611, type: !4619, flags: DIFlagArtificial | DIFlagObjectPointer)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!4620 = !DILocation(line: 2088, column: 32, scope: !4611, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 2184, column: 9, scope: !4622, inlinedAt: !4609)
!4622 = !DILexicalBlockFile(scope: !4604, file: !332, discriminator: 1)
!4623 = !DILocation(line: 2089, column: 9, scope: !4611, inlinedAt: !4621)
!4624 = !{!4625, !3637, i64 0}
!4625 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !3637, i64 0}
!4626 = !DILocation(line: 387, column: 13, scope: !4550, inlinedAt: !4559)
!4627 = !DILocalVariable(name: "__t", arg: 2, scope: !4628, file: !1876, line: 225, type: !4504)
!4628 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !2451, file: !1876, line: 225, type: !4629, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4631, declaration: !4633, variables: !4634)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{null, !2461, !4504}
!4631 = !{!4632, !3605}
!4632 = !DITemplateTypeParameter(name: "_Tp", type: !2454)
!4633 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !2451, file: !1876, line: 225, type: !4629, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !4631)
!4634 = !{!4635, !4627}
!4635 = !DILocalVariable(name: "this", arg: 1, scope: !4628, type: !4636, flags: DIFlagArtificial | DIFlagObjectPointer)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!4637 = !DILocation(line: 225, column: 37, scope: !4628, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 385, column: 13, scope: !4639, inlinedAt: !4559)
!4639 = !DILexicalBlockFile(scope: !4550, file: !1876, discriminator: 3)
!4640 = !DILocation(line: 226, column: 15, scope: !4628, inlinedAt: !4638)
!4641 = !{!4642, !3637, i64 0}
!4642 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !3637, i64 0}
!4643 = !DILocation(line: 361, column: 28, scope: !4344)
!4644 = !DILocation(line: 365, column: 40, scope: !4344)
!4645 = !DILocalVariable(name: "__t", arg: 1, scope: !4646, file: !1925, line: 321, type: !4649)
!4646 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !7, file: !1925, line: 321, type: !4647, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4653)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!26, !4649, !4650, !72}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!72, !72}
!4653 = !{!4645, !4654, !4655}
!4654 = !DILocalVariable(name: "__func", arg: 2, scope: !4646, file: !1925, line: 321, type: !4650)
!4655 = !DILocalVariable(name: "__arg", arg: 3, scope: !4646, file: !1925, line: 322, type: !72)
!4656 = !DILocation(line: 321, column: 47, scope: !4646, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 365, column: 16, scope: !4344)
!4658 = !DILocation(line: 321, column: 60, scope: !4646, inlinedAt: !4657)
!4659 = !DILocation(line: 322, column: 34, scope: !4646, inlinedAt: !4657)
!4660 = !DILocation(line: 324, column: 10, scope: !4646, inlinedAt: !4657)
!4661 = !DILocation(line: 365, column: 9, scope: !4344)
!4662 = !DILocation(line: 366, column: 14, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4344, file: !1897, line: 366, column: 9)
!4664 = !DILocation(line: 366, column: 9, scope: !4344)
!4665 = !DILocalVariable(name: "this", arg: 1, scope: !4666, type: !4668, flags: DIFlagArtificial | DIFlagObjectPointer)
!4666 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !4347, file: !332, line: 2539, type: !4442, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4441, variables: !4667)
!4667 = !{!4665}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4669 = !DILocation(line: 0, scope: !4666, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 370, column: 1, scope: !4671)
!4671 = !DILexicalBlockFile(scope: !4339, file: !1897, discriminator: 5)
!4672 = !DILocalVariable(name: "this", arg: 1, scope: !4673, type: !4668, flags: DIFlagArtificial | DIFlagObjectPointer)
!4673 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !4347, file: !332, line: 2539, type: !4442, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4441, variables: !4674)
!4674 = !{!4672}
!4675 = !DILocation(line: 0, scope: !4673, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 2539, column: 17, scope: !4666, inlinedAt: !4670)
!4677 = !DILocalVariable(name: "this", arg: 1, scope: !4678, type: !4668, flags: DIFlagArtificial | DIFlagObjectPointer)
!4678 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !4347, file: !332, line: 2581, type: !4486, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4485, variables: !4679)
!4679 = !{!4677, !4680, !4681}
!4680 = !DILocalVariable(name: "__p", arg: 2, scope: !4678, file: !332, line: 2581, type: !4460)
!4681 = !DILocalVariable(name: "__tmp", scope: !4678, file: !332, line: 2582, type: !4460)
!4682 = !DILocation(line: 0, scope: !4678, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 2539, column: 19, scope: !4684, inlinedAt: !4676)
!4684 = distinct !DILexicalBlock(scope: !4673, file: !332, line: 2539, column: 17)
!4685 = !DILocation(line: 2581, column: 22, scope: !4678, inlinedAt: !4683)
!4686 = !DILocation(line: 2582, column: 13, scope: !4678, inlinedAt: !4683)
!4687 = !DILocalVariable(name: "this", arg: 1, scope: !4688, type: !4577, flags: DIFlagArtificial | DIFlagObjectPointer)
!4688 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !1886, file: !332, line: 2539, type: !2367, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2366, variables: !4689)
!4689 = !{!4687}
!4690 = !DILocation(line: 0, scope: !4688, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 370, column: 1, scope: !4692)
!4692 = !DILexicalBlockFile(scope: !4339, file: !1897, discriminator: 8)
!4693 = !DILocalVariable(name: "this", arg: 1, scope: !4694, type: !4577, flags: DIFlagArtificial | DIFlagObjectPointer)
!4694 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !1886, file: !332, line: 2539, type: !2367, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2366, variables: !4695)
!4695 = !{!4693}
!4696 = !DILocation(line: 0, scope: !4694, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 2539, column: 17, scope: !4688, inlinedAt: !4691)
!4698 = !DILocalVariable(name: "this", arg: 1, scope: !4699, type: !4577, flags: DIFlagArtificial | DIFlagObjectPointer)
!4699 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !1886, file: !332, line: 2581, type: !2414, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2413, variables: !4700)
!4700 = !{!4698, !4701, !4702}
!4701 = !DILocalVariable(name: "__p", arg: 2, scope: !4699, file: !332, line: 2581, type: !2388)
!4702 = !DILocalVariable(name: "__tmp", scope: !4699, file: !332, line: 2582, type: !2388)
!4703 = !DILocation(line: 0, scope: !4699, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 2539, column: 19, scope: !4705, inlinedAt: !4697)
!4705 = distinct !DILexicalBlock(scope: !4694, file: !332, line: 2539, column: 17)
!4706 = !DILocation(line: 2581, column: 22, scope: !4699, inlinedAt: !4704)
!4707 = !DILocation(line: 2582, column: 13, scope: !4699, inlinedAt: !4704)
!4708 = !DILocation(line: 370, column: 1, scope: !4671)
!4709 = !DILocation(line: 370, column: 1, scope: !4344)
!4710 = !DILocation(line: 359, column: 18, scope: !4514)
!4711 = !DILocation(line: 370, column: 1, scope: !4712)
!4712 = !DILexicalBlockFile(scope: !4344, file: !1897, discriminator: 3)
!4713 = !DILocation(line: 369, column: 9, scope: !4663)
!4714 = !DILocation(line: 369, column: 9, scope: !4715)
!4715 = !DILexicalBlockFile(scope: !4663, file: !1897, discriminator: 1)
!4716 = !DILocation(line: 370, column: 1, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !4663, file: !1897, discriminator: 4)
!4718 = !DILocation(line: 370, column: 1, scope: !4719)
!4719 = !DILexicalBlockFile(scope: !4339, file: !1897, discriminator: 4)
!4720 = !DILocation(line: 0, scope: !4666, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 370, column: 1, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4339, file: !1897, discriminator: 6)
!4723 = !DILocation(line: 0, scope: !4673, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 2539, column: 17, scope: !4666, inlinedAt: !4721)
!4725 = !DILocation(line: 0, scope: !4678, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 2539, column: 19, scope: !4684, inlinedAt: !4724)
!4727 = !DILocation(line: 2581, column: 22, scope: !4678, inlinedAt: !4726)
!4728 = !DILocation(line: 2581, column: 22, scope: !4699, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 2539, column: 19, scope: !4705, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 2539, column: 17, scope: !4688, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 170, column: 7, scope: !4732, inlinedAt: !4737)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !1876, line: 170, column: 7)
!4733 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !1883, file: !1876, line: 170, type: !2427, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4734, variables: !4735)
!4734 = !DISubprogram(name: "~__tuple_leaf", scope: !1883, type: !2427, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!4735 = !{!4736}
!4736 = !DILocalVariable(name: "this", arg: 1, scope: !4733, type: !4569, flags: DIFlagArtificial | DIFlagObjectPointer)
!4737 = distinct !DILocation(line: 369, column: 37, scope: !4738, inlinedAt: !4743)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !1876, line: 369, column: 37)
!4739 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !1880, file: !1876, line: 369, type: !2491, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4740, variables: !4741)
!4740 = !DISubprogram(name: "~__tuple_impl", scope: !1880, type: !2491, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!4741 = !{!4742}
!4742 = !DILocalVariable(name: "this", arg: 1, scope: !4739, type: !4541, flags: DIFlagArtificial | DIFlagObjectPointer)
!4743 = distinct !DILocation(line: 369, column: 37, scope: !4744, inlinedAt: !4747)
!4744 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !1880, file: !1876, line: 369, type: !2491, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4740, variables: !4745)
!4745 = !{!4746}
!4746 = !DILocalVariable(name: "this", arg: 1, scope: !4744, type: !4541, flags: DIFlagArtificial | DIFlagObjectPointer)
!4747 = distinct !DILocation(line: 474, column: 28, scope: !4748, inlinedAt: !4755)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !1876, line: 474, column: 28)
!4749 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !1875, file: !1876, line: 474, type: !4750, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4752, variables: !4753)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !2530}
!4752 = !DISubprogram(name: "~tuple", scope: !1875, type: !4750, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!4753 = !{!4754}
!4754 = !DILocalVariable(name: "this", arg: 1, scope: !4749, type: !1874, flags: DIFlagArtificial | DIFlagObjectPointer)
!4755 = distinct !DILocation(line: 474, column: 28, scope: !4756, inlinedAt: !4759)
!4756 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !1875, file: !1876, line: 474, type: !4750, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4752, variables: !4757)
!4757 = !{!4758}
!4758 = !DILocalVariable(name: "this", arg: 1, scope: !4756, type: !1874, flags: DIFlagArtificial | DIFlagObjectPointer)
!4759 = distinct !DILocation(line: 2272, column: 5, scope: !4760, inlinedAt: !4766)
!4760 = !DILexicalBlockFile(scope: !4761, file: !332, discriminator: 1)
!4761 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !4379, file: !332, line: 2267, type: !4386, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4385, variables: !4762)
!4762 = !{!4763, !4765}
!4763 = !DILocalVariable(name: "this", arg: 1, scope: !4761, type: !4764, flags: DIFlagArtificial | DIFlagObjectPointer)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4765 = !DILocalVariable(name: "__ptr", arg: 2, scope: !4761, file: !332, line: 2267, type: !1874)
!4766 = distinct !DILocation(line: 2585, column: 7, scope: !4767, inlinedAt: !4726)
!4767 = !DILexicalBlockFile(scope: !4768, file: !332, discriminator: 1)
!4768 = distinct !DILexicalBlock(scope: !4678, file: !332, line: 2584, column: 9)
!4769 = !DILocation(line: 2101, column: 40, scope: !4770, inlinedAt: !4773)
!4770 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1892, file: !332, line: 2101, type: !2286, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2285, variables: !4771)
!4771 = !{!4772}
!4772 = !DILocalVariable(name: "this", arg: 1, scope: !4770, type: !4619, flags: DIFlagArtificial | DIFlagObjectPointer)
!4773 = distinct !DILocation(line: 2213, column: 40, scope: !4774, inlinedAt: !4777)
!4774 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1889, file: !332, line: 2212, type: !2336, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2335, variables: !4775)
!4775 = !{!4776}
!4776 = !DILocalVariable(name: "this", arg: 1, scope: !4774, type: !4599, flags: DIFlagArtificial | DIFlagObjectPointer)
!4777 = distinct !DILocation(line: 2582, column: 28, scope: !4699, inlinedAt: !4729)
!4778 = !DILocation(line: 2582, column: 28, scope: !4699, inlinedAt: !4729)
!4779 = !DILocation(line: 2582, column: 13, scope: !4699, inlinedAt: !4729)
!4780 = !DILocation(line: 2583, column: 20, scope: !4699, inlinedAt: !4729)
!4781 = !DILocation(line: 2584, column: 9, scope: !4782, inlinedAt: !4729)
!4782 = distinct !DILexicalBlock(scope: !4699, file: !332, line: 2584, column: 9)
!4783 = !DILocation(line: 2584, column: 9, scope: !4699, inlinedAt: !4729)
!4784 = !DILocalVariable(name: "__ptr", arg: 2, scope: !4785, file: !332, line: 2267, type: !1895)
!4785 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2304, file: !332, line: 2267, type: !2311, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2310, variables: !4786)
!4786 = !{!4787, !4784}
!4787 = !DILocalVariable(name: "this", arg: 1, scope: !4785, type: !4788, flags: DIFlagArtificial | DIFlagObjectPointer)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!4789 = !DILocation(line: 2267, column: 50, scope: !4785, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 2585, column: 7, scope: !4791, inlinedAt: !4729)
!4791 = !DILexicalBlockFile(scope: !4782, file: !332, discriminator: 1)
!4792 = !DILocation(line: 2272, column: 5, scope: !4793, inlinedAt: !4790)
!4793 = !DILexicalBlockFile(scope: !4785, file: !332, discriminator: 1)
!4794 = !DILocation(line: 2272, column: 5, scope: !4795, inlinedAt: !4790)
!4795 = !DILexicalBlockFile(scope: !4785, file: !332, discriminator: 2)
!4796 = !DILocation(line: 2585, column: 7, scope: !4782, inlinedAt: !4729)
!4797 = !DILocation(line: 2272, column: 5, scope: !4798, inlinedAt: !4766)
!4798 = !DILexicalBlockFile(scope: !4761, file: !332, discriminator: 2)
!4799 = !DILocation(line: 0, scope: !4688, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 370, column: 1, scope: !4801)
!4801 = !DILexicalBlockFile(scope: !4339, file: !1897, discriminator: 7)
!4802 = !DILocation(line: 0, scope: !4694, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 2539, column: 17, scope: !4688, inlinedAt: !4800)
!4804 = !DILocation(line: 0, scope: !4699, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 2539, column: 19, scope: !4705, inlinedAt: !4803)
!4806 = !DILocation(line: 2581, column: 22, scope: !4699, inlinedAt: !4805)
!4807 = !DILocation(line: 2582, column: 13, scope: !4699, inlinedAt: !4805)
!4808 = !DILocation(line: 2584, column: 9, scope: !4699, inlinedAt: !4805)
!4809 = !DILocation(line: 370, column: 1, scope: !4499)
!4810 = !DILocation(line: 2267, column: 50, scope: !4785, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 2585, column: 7, scope: !4791, inlinedAt: !4805)
!4812 = !DILocation(line: 2272, column: 5, scope: !4793, inlinedAt: !4811)
!4813 = !DILocation(line: 2272, column: 5, scope: !4795, inlinedAt: !4811)
!4814 = !DILocation(line: 2585, column: 7, scope: !4782, inlinedAt: !4805)
!4815 = !DILocation(line: 359, column: 18, scope: !4712)
!4816 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !7, file: !1897, line: 343, type: !4651, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4817, variables: !4819)
!4817 = !{!4818}
!4818 = !DITemplateTypeParameter(name: "_Fp", type: !1875)
!4819 = !{!4820, !4821}
!4820 = !DILocalVariable(name: "__vp", arg: 1, scope: !4816, file: !1897, line: 343, type: !72)
!4821 = !DILocalVariable(name: "__p", scope: !4816, file: !1897, line: 346, type: !4347)
!4822 = !DILocation(line: 343, column: 28, scope: !4816)
!4823 = !DILocation(line: 346, column: 26, scope: !4816)
!4824 = !DILocation(line: 347, column: 5, scope: !4816)
!4825 = !DILocation(line: 2101, column: 40, scope: !4770, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 2213, column: 40, scope: !4774, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 2575, column: 26, scope: !4828, inlinedAt: !4832)
!4828 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !1886, file: !332, line: 2574, type: !2411, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2410, variables: !4829)
!4829 = !{!4830, !4831}
!4830 = !DILocalVariable(name: "this", arg: 1, scope: !4828, type: !4577, flags: DIFlagArtificial | DIFlagObjectPointer)
!4831 = !DILocalVariable(name: "__t", scope: !4828, file: !332, line: 2575, type: !2388)
!4832 = distinct !DILocation(line: 347, column: 59, scope: !4833)
!4833 = !DILexicalBlockFile(scope: !4816, file: !1897, discriminator: 3)
!4834 = !DILocation(line: 2575, column: 26, scope: !4828, inlinedAt: !4832)
!4835 = !DILocation(line: 2576, column: 20, scope: !4828, inlinedAt: !4832)
!4836 = !DILocalVariable(name: "this", arg: 1, scope: !4837, type: !4872, flags: DIFlagArtificial | DIFlagObjectPointer)
!4837 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !4838, file: !1897, line: 194, type: !4868, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !4867, variables: !4870)
!4838 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !7, file: !1897, line: 138, size: 64, elements: !4839, templateParams: !2315, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!4839 = !{!4840, !4845, !4849, !4854, !4858, !4859, !4860, !4865, !4866, !4867}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !4838, file: !1897, line: 140, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !7, file: !1925, line: 75, baseType: !4842)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !4843, line: 30, baseType: !4844)
!4843 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2")
!4844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !1929, line: 112, baseType: !88)
!4845 = !DISubprogram(name: "__thread_specific_ptr", scope: !4838, file: !1897, line: 145, type: !4846, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{null, !4848}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4849 = !DISubprogram(name: "__thread_specific_ptr", scope: !4838, file: !1897, line: 148, type: !4850, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{null, !4848, !4852}
!4852 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4838)
!4854 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !4838, file: !1897, line: 149, type: !4855, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!4857, !4848, !4852}
!4857 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4838, size: 64)
!4858 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !4838, file: !1897, line: 151, type: !2804, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!4859 = !DISubprogram(name: "~__thread_specific_ptr", scope: !4838, file: !1897, line: 156, type: !4846, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4860 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !4838, file: !1897, line: 159, type: !4861, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!4863, !4864}
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !4838, file: !1897, line: 154, baseType: !1895)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4865 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !4838, file: !1897, line: 161, type: !4861, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4866 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !4838, file: !1897, line: 163, type: !4861, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4867 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !4838, file: !1897, line: 164, type: !4868, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{null, !4848, !4863}
!4870 = !{!4836, !4871}
!4871 = !DILocalVariable(name: "__p", arg: 2, scope: !4837, file: !1897, line: 164, type: !4863)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4873 = !DILocation(line: 0, scope: !4837, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 347, column: 27, scope: !4875)
!4875 = !DILexicalBlockFile(scope: !4816, file: !1897, discriminator: 2)
!4876 = !DILocation(line: 198, column: 22, scope: !4837, inlinedAt: !4874)
!4877 = !{!4878, !3759, i64 0}
!4878 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !3759, i64 0}
!4879 = !DILocalVariable(name: "__key", arg: 1, scope: !4880, file: !1925, line: 385, type: !4841)
!4880 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !7, file: !1925, line: 385, type: !4881, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4883)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!26, !4841, !72}
!4883 = !{!4879, !4884}
!4884 = !DILocalVariable(name: "__p", arg: 2, scope: !4880, file: !1925, line: 385, type: !72)
!4885 = !DILocation(line: 385, column: 39, scope: !4880, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 198, column: 5, scope: !4837, inlinedAt: !4874)
!4887 = !DILocation(line: 385, column: 52, scope: !4880, inlinedAt: !4886)
!4888 = !DILocation(line: 387, column: 12, scope: !4880, inlinedAt: !4886)
!4889 = !DILocation(line: 270, column: 102, scope: !4890, inlinedAt: !4893)
!4890 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2451, file: !1876, line: 270, type: !2478, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2477, variables: !4891)
!4891 = !{!4892}
!4892 = !DILocalVariable(name: "this", arg: 1, scope: !4890, type: !4636, flags: DIFlagArtificial | DIFlagObjectPointer)
!4893 = distinct !DILocation(line: 951, column: 61, scope: !4894, inlinedAt: !4908)
!4894 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !1876, line: 948, type: !4895, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4905, variables: !4906)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!4897, !2540}
!4897 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4899, file: !2516, line: 463, baseType: !4901)
!4899 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2516, line: 460, size: 8, elements: !357, templateParams: !4900, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!4900 = !{!2488, !4391}
!4901 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4902, file: !2516, line: 289, baseType: !2454)
!4902 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2516, line: 285, size: 8, elements: !357, templateParams: !4903, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!4903 = !{!2488, !4904}
!4904 = !DITemplateTypeParameter(name: "_Tp", type: !4526)
!4905 = !{!2488, !2522}
!4906 = !{!4907}
!4907 = !DILocalVariable(name: "__t", arg: 1, scope: !4894, file: !1876, line: 948, type: !2540)
!4908 = distinct !DILocation(line: 339, column: 26, scope: !4909, inlinedAt: !4919)
!4909 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !7, file: !1897, line: 337, type: !4910, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4912, variables: !4916)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{null, !2540, !4527}
!4912 = !{!4913, !4914, !3604, !4915}
!4913 = !DITemplateTypeParameter(name: "_TSp", type: !1886)
!4914 = !DITemplateTypeParameter(name: "_Fp", type: !2454)
!4915 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !357)
!4916 = !{!4917, !4918}
!4917 = !DILocalVariable(name: "__t", arg: 1, scope: !4909, file: !1897, line: 337, type: !2540)
!4918 = !DILocalVariable(arg: 2, scope: !4909, file: !1897, line: 337, type: !4527)
!4919 = distinct !DILocation(line: 349, column: 5, scope: !4920)
!4920 = !DILexicalBlockFile(scope: !4816, file: !1897, discriminator: 1)
!4921 = !DILocalVariable(name: "__f", arg: 1, scope: !4922, file: !426, line: 4322, type: !4504)
!4922 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !7, file: !426, line: 4322, type: !4923, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !4925, variables: !4926)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{null, !4504}
!4925 = !{!4914, !3604}
!4926 = !{!4921}
!4927 = !DILocation(line: 4322, column: 16, scope: !4922, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 339, column: 5, scope: !4929, inlinedAt: !4919)
!4929 = !DILexicalBlockFile(scope: !4909, file: !1897, discriminator: 2)
!4930 = !DILocation(line: 4323, column: 1, scope: !4922, inlinedAt: !4928)
!4931 = !DILocation(line: 4323, column: 1, scope: !4932, inlinedAt: !4928)
!4932 = !DILexicalBlockFile(scope: !4922, file: !426, discriminator: 1)
!4933 = !DILocation(line: 0, scope: !4666, inlinedAt: !4934)
!4934 = distinct !DILocation(line: 351, column: 1, scope: !4816)
!4935 = !DILocation(line: 0, scope: !4673, inlinedAt: !4936)
!4936 = distinct !DILocation(line: 2539, column: 17, scope: !4666, inlinedAt: !4934)
!4937 = !DILocation(line: 0, scope: !4678, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 2539, column: 19, scope: !4684, inlinedAt: !4936)
!4939 = !DILocation(line: 2581, column: 22, scope: !4678, inlinedAt: !4938)
!4940 = !DILocation(line: 2581, column: 22, scope: !4699, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 2539, column: 19, scope: !4705, inlinedAt: !4942)
!4942 = distinct !DILocation(line: 2539, column: 17, scope: !4688, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 170, column: 7, scope: !4732, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 369, column: 37, scope: !4738, inlinedAt: !4945)
!4945 = distinct !DILocation(line: 369, column: 37, scope: !4744, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 474, column: 28, scope: !4748, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 474, column: 28, scope: !4756, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 2272, column: 5, scope: !4760, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 2585, column: 7, scope: !4767, inlinedAt: !4938)
!4950 = !DILocation(line: 2582, column: 28, scope: !4699, inlinedAt: !4941)
!4951 = !DILocation(line: 2582, column: 13, scope: !4699, inlinedAt: !4941)
!4952 = !DILocation(line: 2583, column: 20, scope: !4699, inlinedAt: !4941)
!4953 = !DILocation(line: 2584, column: 9, scope: !4782, inlinedAt: !4941)
!4954 = !DILocation(line: 2584, column: 9, scope: !4699, inlinedAt: !4941)
!4955 = !DILocation(line: 2267, column: 50, scope: !4785, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 2585, column: 7, scope: !4791, inlinedAt: !4941)
!4957 = !DILocation(line: 2272, column: 5, scope: !4793, inlinedAt: !4956)
!4958 = !DILocation(line: 2272, column: 5, scope: !4795, inlinedAt: !4956)
!4959 = !DILocation(line: 2585, column: 7, scope: !4782, inlinedAt: !4941)
!4960 = !DILocation(line: 2272, column: 5, scope: !4798, inlinedAt: !4949)
!4961 = !DILocation(line: 351, column: 1, scope: !4816)
!4962 = !DILocation(line: 351, column: 1, scope: !4920)
!4963 = !DILocation(line: 0, scope: !4666, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 351, column: 1, scope: !4920)
!4965 = !DILocation(line: 0, scope: !4673, inlinedAt: !4966)
!4966 = distinct !DILocation(line: 2539, column: 17, scope: !4666, inlinedAt: !4964)
!4967 = !DILocation(line: 0, scope: !4678, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 2539, column: 19, scope: !4684, inlinedAt: !4966)
!4969 = !DILocation(line: 2581, column: 22, scope: !4678, inlinedAt: !4968)
!4970 = !DILocation(line: 2584, column: 9, scope: !4678, inlinedAt: !4968)
!4971 = !DILocation(line: 2584, column: 9, scope: !4768, inlinedAt: !4968)
!4972 = !DILocation(line: 2101, column: 40, scope: !4770, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 2213, column: 40, scope: !4774, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 2582, column: 28, scope: !4699, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 2539, column: 19, scope: !4705, inlinedAt: !4976)
!4976 = distinct !DILocation(line: 2539, column: 17, scope: !4688, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 170, column: 7, scope: !4732, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 369, column: 37, scope: !4738, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 369, column: 37, scope: !4744, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 474, column: 28, scope: !4748, inlinedAt: !4981)
!4981 = distinct !DILocation(line: 474, column: 28, scope: !4756, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 2272, column: 5, scope: !4760, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 2585, column: 7, scope: !4767, inlinedAt: !4968)
!4984 = !DILocation(line: 2581, column: 22, scope: !4699, inlinedAt: !4975)
!4985 = !DILocation(line: 2582, column: 28, scope: !4699, inlinedAt: !4975)
!4986 = !DILocation(line: 2582, column: 13, scope: !4699, inlinedAt: !4975)
!4987 = !DILocation(line: 2583, column: 20, scope: !4699, inlinedAt: !4975)
!4988 = !DILocation(line: 2584, column: 9, scope: !4782, inlinedAt: !4975)
!4989 = !DILocation(line: 2584, column: 9, scope: !4699, inlinedAt: !4975)
!4990 = !DILocation(line: 2267, column: 50, scope: !4785, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 2585, column: 7, scope: !4791, inlinedAt: !4975)
!4992 = !DILocation(line: 2272, column: 5, scope: !4793, inlinedAt: !4991)
!4993 = !DILocation(line: 2272, column: 5, scope: !4795, inlinedAt: !4991)
!4994 = !DILocation(line: 2585, column: 7, scope: !4782, inlinedAt: !4975)
!4995 = !DILocation(line: 2272, column: 5, scope: !4798, inlinedAt: !4983)
!4996 = !DILocation(line: 2585, column: 7, scope: !4768, inlinedAt: !4968)
!4997 = !DILocation(line: 351, column: 1, scope: !4875)
