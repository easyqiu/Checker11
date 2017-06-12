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
%"struct.std::__1::atomic.2" = type { %"struct.std::__1::__atomic_base.3" }
%"struct.std::__1::__atomic_base.3" = type { %"struct.std::__1::__atomic_base.4" }
%"struct.std::__1::__atomic_base.4" = type { i32 }
%"struct.std::__1::atomic.5" = type { %"struct.std::__1::__atomic_base.6" }
%"struct.std::__1::__atomic_base.6" = type { %struct.structA }
%struct.structA = type { i32, i32 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.7" }
%"class.std::__1::__compressed_pair.7" = type { %"struct.std::__1::__compressed_pair_elem.8" }
%"struct.std::__1::__compressed_pair_elem.8" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr.10" = type { %"class.std::__1::__compressed_pair.11" }
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.12" }
%"struct.std::__1::__compressed_pair_elem.12" = type { %"class.std::__1::tuple"* }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.13" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.13" = type { void ()* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@ptr = global %"struct.std::__1::atomic" zeroinitializer, align 8, !dbg !0
@data = global i32 0, align 4, !dbg !1723
@.str = private unnamed_addr constant [9 x i8] c"producer\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"*p2 == \22Hello\22\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data == 42\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z8producerv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2768 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !2772
  %call = tail call i8* @_Znwm(i64 24) #11, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !2774, metadata !2778), !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !2781, metadata !2778), !dbg !2785
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call, i8 0, i64 24, i32 8, i1 false) #12, !dbg !2787
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !2808, metadata !2778), !dbg !2817
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !2812, metadata !2778), !dbg !2821
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !2822, metadata !2778), !dbg !2826
  store i8 10, i8* %call, align 8, !dbg !2829, !tbaa !2830
  %0 = getelementptr inbounds i8, i8* %call, i64 1, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2813, metadata !2778), !dbg !2838
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2813, metadata !2778), !dbg !2838
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2839, metadata !2778) #12, !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !2842, metadata !2778) #12, !dbg !2847
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !2843, metadata !2778) #12, !dbg !2848
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 1, i1 false) #12, !dbg !2849
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %call, i64 6, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %arrayidx.i.i.i, i64 0, metadata !2851, metadata !2778), !dbg !2855
  store i8 0, i8* %arrayidx.i.i.i, align 1, !dbg !2857, !tbaa !2830
  store i32 42, i32* @data, align 4, !dbg !2858, !tbaa !2859
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !2861, metadata !2778), !dbg !2867
  %1 = ptrtoint i8* %call to i64, !dbg !2869
  store atomic i64 %1, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) release, align 8, !dbg !2870
  tail call void @checker_thread_end(), !dbg !2872
  ret void, !dbg !2873
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #5

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define void @_Z8consumerv() #0 personality i32 (...)* @__gxx_personality_v0 !dbg !2874 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !2877
  br label %while.cond, !dbg !2878

while.cond:                                       ; preds = %while.cond, %entry
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2879, metadata !2778), !dbg !2884
  %0 = load atomic i64, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) acquire, align 8, !dbg !2887
  %lnot = icmp eq i64 %0, 0, !dbg !2889
  br i1 %lnot, label %while.cond, label %while.end, !dbg !2890, !llvm.loop !2891

while.end:                                        ; preds = %while.cond
  %1 = inttoptr i64 %0 to %"class.std::__1::basic_string"*, !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !2895, metadata !2778) #12, !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !2901, metadata !2778) #12, !dbg !2904
  %__size_.i.i.i = inttoptr i64 %0 to i8*, !dbg !2905
  %2 = load i8, i8* %__size_.i.i.i, align 8, !dbg !2905, !tbaa !2830
  %3 = and i8 %2, 1, !dbg !2916
  %tobool.i.i.i = icmp eq i8 %3, 0, !dbg !2917
  %__size_.i5.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2918
  %4 = load i64, i64* %__size_.i5.i.i, align 8, !dbg !2918
  %conv.i.i.i = zext i8 %2 to i64, !dbg !2924
  %shr3.i.i.i = lshr i64 %conv.i.i.i, 1, !dbg !2930
  %cond.i.i = select i1 %tobool.i.i.i, i64 %shr3.i.i.i, i64 %4, !dbg !2931
  %cmp.i = icmp eq i64 %cond.i.i, 5, !dbg !2932
  br i1 %cmp.i, label %if.end.i, label %cond.true, !dbg !2933

if.end.i:                                         ; preds = %while.end
  %call2.i = invoke i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"* nonnull %1, i64 0, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5)
          to label %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit unwind label %lpad.i, !dbg !2934

lpad.i:                                           ; preds = %if.end.i
  %5 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2935
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !2935
  tail call void @__clang_call_terminate(i8* %6) #13, !dbg !2936
  unreachable, !dbg !2936

_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %if.end.i
  %cmp3.i = icmp eq i32 %call2.i, 0, !dbg !2938
  br i1 %cmp3.i, label %cond.end, label %cond.true, !dbg !2940, !prof !2941

cond.true:                                        ; preds = %while.end, %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #14, !dbg !2942
  unreachable, !dbg !2942

cond.end:                                         ; preds = %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %7 = load i32, i32* @data, align 4, !dbg !2943, !tbaa !2859
  %lnot4 = icmp eq i32 %7, 42, !dbg !2943
  br i1 %lnot4, label %cond.end10, label %cond.true8, !dbg !2943, !prof !2941

cond.true8:                                       ; preds = %cond.end
  tail call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #14, !dbg !2944
  unreachable, !dbg !2944

cond.end10:                                       ; preds = %cond.end
  tail call void @checker_thread_end(), !dbg !2945
  ret void, !dbg !2946
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind readnone ssp uwtable
define void @_Z4testv() local_unnamed_addr #7 !dbg !2947 {
entry:
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic.2"* undef, i64 0, metadata !2949, metadata !3100), !dbg !3101
  ret void, !dbg !3102
}

; Function Attrs: nounwind readnone ssp uwtable
define void @_Z4testi(i32 %x) local_unnamed_addr #7 !dbg !3103 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !3105, metadata !2778), !dbg !3210
  tail call void @llvm.dbg.declare(metadata %"struct.std::__1::atomic.5"* undef, metadata !3106, metadata !2778), !dbg !3211
  tail call void @llvm.dbg.declare(metadata %"struct.std::__1::atomic.5"* undef, metadata !3207, metadata !2778), !dbg !3212
  ret void, !dbg !3213
}

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #8 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3214 {
entry:
  %t1 = alloca %"class.std::__1::thread", align 8
  %t2 = alloca %"class.std::__1::thread", align 8
  tail call void @checker_generateExecutor(), !dbg !3293
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !3294
  tail call void @checker_shared(i8* bitcast (i32* @data to i8*)), !dbg !3295
  %0 = bitcast %"class.std::__1::thread"* %t1 to i8*, !dbg !3296
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #12, !dbg !3296
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3216, metadata !3100), !dbg !3297
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3298, metadata !2778), !dbg !3310
  tail call void @llvm.dbg.value(metadata void ()* @_Z8producerv, i64 0, metadata !3308, metadata !2778), !dbg !3312
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t1, void ()* nonnull @_Z8producerv), !dbg !3313
  %1 = bitcast %"class.std::__1::thread"* %t2 to i8*, !dbg !3314
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #12, !dbg !3314
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !3298, metadata !2778), !dbg !3315
  call void @llvm.dbg.value(metadata void ()* @_Z8consumerv, i64 0, metadata !3308, metadata !2778), !dbg !3317
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %t2, void ()* nonnull @_Z8consumerv)
          to label %invoke.cont unwind label %lpad, !dbg !3318

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3216, metadata !3100), !dbg !3297
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3319, metadata !2778), !dbg !3323
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t1, i64 0, i32 0, !dbg !3325
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i, i64 0, metadata !3326, metadata !2778), !dbg !3333
  %2 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !dbg !3335, !tbaa !3336
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %2)
          to label %invoke.cont3 unwind label %lpad2, !dbg !3338

invoke.cont3:                                     ; preds = %invoke.cont
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !3292, metadata !3100), !dbg !3339
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !3319, metadata !2778), !dbg !3340
  %__t_.i27 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %t2, i64 0, i32 0, !dbg !3342
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i27, i64 0, metadata !3326, metadata !2778), !dbg !3343
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i27, align 8, !dbg !3345, !tbaa !3336
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont8 unwind label %lpad2, !dbg !3346

invoke.cont8:                                     ; preds = %invoke.cont3
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3216, metadata !3100), !dbg !3297
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3319, metadata !2778), !dbg !3347
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i, i64 0, metadata !3326, metadata !2778), !dbg !3349
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !dbg !3351, !tbaa !3336
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %4)
          to label %invoke.cont13 unwind label %lpad2, !dbg !3352

invoke.cont13:                                    ; preds = %invoke.cont8
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !3292, metadata !3100), !dbg !3339
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !3319, metadata !2778), !dbg !3353
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i27, i64 0, metadata !3326, metadata !2778), !dbg !3355
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i27, align 8, !dbg !3357, !tbaa !3336
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %5)
          to label %invoke.cont18 unwind label %lpad2, !dbg !3358

invoke.cont18:                                    ; preds = %invoke.cont13
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t1)
          to label %invoke.cont19 unwind label %lpad2, !dbg !3359

invoke.cont19:                                    ; preds = %invoke.cont18
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %t2)
          to label %invoke.cont20 unwind label %lpad2, !dbg !3360

invoke.cont20:                                    ; preds = %invoke.cont19
  invoke void @checker_thread_end()
          to label %invoke.cont21 unwind label %lpad2, !dbg !3362

invoke.cont21:                                    ; preds = %invoke.cont20
  invoke void @checker_solver()
          to label %invoke.cont22 unwind label %lpad2, !dbg !3363

invoke.cont22:                                    ; preds = %invoke.cont21
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !3292, metadata !3100), !dbg !3339
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #12, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #12, !dbg !3364
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3216, metadata !3100), !dbg !3297
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #12, !dbg !3365
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #12, !dbg !3364
  ret i32 0, !dbg !3364

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !3367
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !3367
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !3367
  br label %ehcleanup, !dbg !3367

lpad2:                                            ; preds = %invoke.cont21, %invoke.cont20, %invoke.cont19, %invoke.cont18, %invoke.cont13, %invoke.cont8, %invoke.cont3, %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !3368
  %10 = extractvalue { i8*, i32 } %9, 0, !dbg !3368
  %11 = extractvalue { i8*, i32 } %9, 1, !dbg !3368
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t2, i64 0, metadata !3292, metadata !3100), !dbg !3339
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t2) #12, !dbg !3368
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #12, !dbg !3364
  br label %ehcleanup, !dbg !3368

ehcleanup:                                        ; preds = %lpad2, %lpad
  %ehselector.slot.0 = phi i32 [ %11, %lpad2 ], [ %8, %lpad ]
  %exn.slot.0 = phi i8* [ %10, %lpad2 ], [ %7, %lpad ]
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %t1, i64 0, metadata !3216, metadata !3100), !dbg !3297
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %t1) #12, !dbg !3370
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #12, !dbg !3364
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !dbg !3372
  %lpad.val24 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !dbg !3372
  resume { i8*, i32 } %lpad.val24, !dbg !3372
}

declare void @checker_generateExecutor() local_unnamed_addr #1

declare void @checker_shared(i8*) local_unnamed_addr #1

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #9

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #10 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"*, i64, i64, i8*, i64) local_unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3374 {
entry:
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %this, i64 0, metadata !3376, metadata !2778), !dbg !3527
  tail call void @llvm.dbg.value(metadata void ()* %__f, i64 0, metadata !3377, metadata !2778), !dbg !3528
  %call = tail call i8* @_Znwm(i64 8) #11, !dbg !3529
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !3529
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !dbg !3530

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3378, metadata !3100), !dbg !3531
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !3532

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3378, metadata !3100), !dbg !3531
  %2 = ptrtoint void ()* %__f to i64, !dbg !3533
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3535, metadata !2778), !dbg !3547
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !3546, metadata !2778), !dbg !3547
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3550, metadata !2778), !dbg !3555
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !3554, metadata !2778), !dbg !3555
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3557, metadata !2778), !dbg !3582
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !3581, metadata !2778), !dbg !3582
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3584, metadata !2778), !dbg !3593
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !3592, metadata !2778), !dbg !3593
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3595, metadata !2778), !dbg !3605
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3608, metadata !2778), !dbg !3613
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3616, metadata !2778), !dbg !3620
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !3622, metadata !2778), !dbg !3636
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !3638, metadata !2778), !dbg !3643
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !3645, metadata !2778), !dbg !3655
  %3 = bitcast i8* %call4 to i64*, !dbg !3658
  store i64 %1, i64* %3, align 8, !dbg !3658, !tbaa !3659
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !3661
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !3662, metadata !2778), !dbg !3672
  %5 = bitcast i8* %4 to i64*, !dbg !3675
  store i64 %2, i64* %5, align 8, !dbg !3675, !tbaa !3676
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3381, metadata !3100), !dbg !3678
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !dbg !3679
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3381, metadata !3100), !dbg !3678
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_, i64 0, metadata !3680, metadata !2778), !dbg !3691
  tail call void @llvm.dbg.value(metadata i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i64 0, metadata !3689, metadata !2778), !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !3690, metadata !2778), !dbg !3694
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !dbg !3695

invoke.cont12:                                    ; preds = %invoke.cont3
  tail call void @llvm.dbg.value(metadata i32 %call.i31, i64 0, metadata !3526, metadata !2778), !dbg !3696
  %cmp = icmp eq i32 %call.i31, 0, !dbg !3697
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !dbg !3699

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3381, metadata !3100), !dbg !3678
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3381, metadata !3100), !dbg !3678
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3700, metadata !2778) #12, !dbg !3704
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3707, metadata !2778) #12, !dbg !3710
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3712, metadata !2778) #12, !dbg !3717
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !3715, metadata !2778) #12, !dbg !3720
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !3716, metadata !2778) #12, !dbg !3721
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3378, metadata !3100), !dbg !3531
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3722, metadata !2778) #12, !dbg !3725
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3728, metadata !2778) #12, !dbg !3731
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3733, metadata !2778) #12, !dbg !3738
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !3736, metadata !2778) #12, !dbg !3741
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !3737, metadata !2778) #12, !dbg !3742
  ret void, !dbg !3743

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !3744
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !3744
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !3744
  tail call void @_ZdlPv(i8* nonnull %call) #15, !dbg !3745
  br label %eh.resume, !dbg !3745

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !3746
  br label %delete.notnull.i.i.i.i, !dbg !3746

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #14
          to label %invoke.cont16 unwind label %lpad15, !dbg !3748

invoke.cont16:                                    ; preds = %if.else
  unreachable, !dbg !3749

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !3751
  br label %delete.notnull.i.i.i.i, !dbg !3753

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3381, metadata !3100), !dbg !3678
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3700, metadata !2778) #12, !dbg !3755
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3707, metadata !2778) #12, !dbg !3758
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3712, metadata !2778) #12, !dbg !3760
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !3715, metadata !2778) #12, !dbg !3762
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !3736, metadata !2778) #12, !dbg !3763
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !dbg !3804
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !3813, !tbaa !3336
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !3737, metadata !2778) #12, !dbg !3814
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !3815, !tbaa !3336
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !dbg !3816
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !3818

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !3819, metadata !2778) #12, !dbg !3824
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #12, !dbg !3827
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !dbg !3827
  tail call void @_ZdlPv(i8* %14) #15, !dbg !3829
  br label %ehcleanup18.thread, !dbg !3831

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #15, !dbg !3832
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3378, metadata !3100), !dbg !3531
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3722, metadata !2778) #12, !dbg !3834
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3728, metadata !2778) #12, !dbg !3837
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3733, metadata !2778) #12, !dbg !3839
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !3736, metadata !2778) #12, !dbg !3841
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !3737, metadata !2778) #12, !dbg !3842
  br label %eh.resume, !dbg !3843

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !3844
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !3844
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !3844
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3378, metadata !3100), !dbg !3531
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3722, metadata !2778) #12, !dbg !3834
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3728, metadata !2778) #12, !dbg !3837
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !3733, metadata !2778) #12, !dbg !3839
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !3736, metadata !2778) #12, !dbg !3841
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !3737, metadata !2778) #12, !dbg !3842
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !3819, metadata !2778) #12, !dbg !3845
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #12, !dbg !3847
  tail call void @_ZdlPv(i8* nonnull %call) #15, !dbg !3848
  br label %eh.resume, !dbg !3849

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !dbg !3850
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !dbg !3850
  resume { i8*, i32 } %lpad.val20, !dbg !3850
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3851 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %__vp, i64 0, metadata !3855, metadata !2778), !dbg !3857
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3856, metadata !3100), !dbg !3858
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !3859

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3856, metadata !3100), !dbg !3858
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !3860
  %0 = bitcast i8* %__vp to i8**, !dbg !3869
  %1 = load i8*, i8** %0, align 8, !dbg !3869, !tbaa !3336
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !3870, !tbaa !3336
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_specific_ptr"* %call, i64 0, metadata !3871, metadata !2778), !dbg !3908
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !dbg !3911
  %2 = load i64, i64* %__key_.i, align 8, !dbg !3911, !tbaa !3912
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3915, metadata !2778), !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3920, metadata !2778), !dbg !3923
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !dbg !3924

invoke.cont5:                                     ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3856, metadata !3100), !dbg !3858
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !dbg !3925
  %3 = bitcast i8* %value.i.i.i to void ()**, !dbg !3925
  tail call void @llvm.dbg.value(metadata void ()** %3, i64 0, metadata !3957, metadata !2778), !dbg !3963
  %4 = load void ()*, void ()** %3, align 8, !dbg !3966, !tbaa !3336
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !dbg !3967

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3856, metadata !3100), !dbg !3858
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3700, metadata !2778) #12, !dbg !3969
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3707, metadata !2778) #12, !dbg !3971
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3712, metadata !2778) #12, !dbg !3973
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !3715, metadata !2778) #12, !dbg !3975
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !3736, metadata !2778) #12, !dbg !3976
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !3986, !tbaa !3336
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !3737, metadata !2778) #12, !dbg !3987
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !3988, !tbaa !3336
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !dbg !3989
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !dbg !3990

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !3819, metadata !2778) #12, !dbg !3991
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #12, !dbg !3993
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !dbg !3993
  tail call void @_ZdlPv(i8* %6) #15, !dbg !3994
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !dbg !3995

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #15, !dbg !3996
  ret i8* null, !dbg !3997

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !dbg !3998
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3856, metadata !3100), !dbg !3858
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3700, metadata !2778) #12, !dbg !3999
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3707, metadata !2778) #12, !dbg !4001
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3712, metadata !2778) #12, !dbg !4003
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !3715, metadata !2778) #12, !dbg !4005
  br label %delete.notnull.i.i.i.i, !dbg !4006

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !dbg !3998
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3856, metadata !3100), !dbg !3858
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3700, metadata !2778) #12, !dbg !3999
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3707, metadata !2778) #12, !dbg !4001
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.10"* undef, i64 0, metadata !3712, metadata !2778) #12, !dbg !4003
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !3715, metadata !2778) #12, !dbg !4005
  %tobool.i.i.i = icmp eq i8* %__vp, null, !dbg !4007
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !dbg !4006

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !4008
  br label %delete.notnull.i.i.i.i, !dbg !4006

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !dbg !4008
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !3736, metadata !2778) #12, !dbg !4020
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !4021, !tbaa !3336
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !3737, metadata !2778) #12, !dbg !4022
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !4023, !tbaa !3336
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !4024
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !4025

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !3819, metadata !2778) #12, !dbg !4026
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #12, !dbg !4028
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !4028
  tail call void @_ZdlPv(i8* %8) #15, !dbg !4029
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !4030

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #15, !dbg !4031
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !4032

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30, !dbg !4033
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #6

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { builtin }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2764, !2765, !2766}
!llvm.ident = !{!2767}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "ptr", scope: !2, file: !3, line: 8, type: !2634, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !928, globals: !1722, imports: !1725)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!4 = !{!5, !17, !919, !922, !925}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!9 = !DINamespace(name: "std", scope: null, file: !8, line: 437)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!12 = !DIEnumerator(name: "memory_order_consume", value: 1)
!13 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!14 = !DIEnumerator(name: "memory_order_release", value: 3)
!15 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!16 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 714, size: 32, elements: !917, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt1_E")
!18 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !7, file: !18, line: 4038, size: 192, elements: !20, templateParams: !915, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE")
!20 = !{!21, !33, !300, !302, !306, !312, !317, !320, !324, !327, !330, !333, !336, !339, !342, !345, !348, !351, !539, !542, !568, !571, !572, !576, !580, !583, !586, !591, !594, !599, !604, !605, !606, !611, !616, !617, !618, !619, !620, !621, !622, !625, !626, !627, !628, !631, !634, !635, !636, !637, !640, !645, !650, !651, !652, !653, !656, !657, !658, !659, !660, !661, !664, !667, !668, !671, !672, !675, !676, !679, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !695, !698, !701, !704, !707, !710, !713, !716, !719, !722, !725, !728, !731, !734, !737, !740, !743, !746, !749, !752, !755, !758, !761, !764, !768, !771, !774, !777, !778, !781, !784, !787, !790, !793, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !824, !827, !830, !833, !836, !839, !842, !845, !846, !847, !851, !854, !855, !856, !857, !858, !859, !860, !861, !864, !867, !875, !876, !877, !878, !879, !880, !883, !886, !889, !890, !893, !896, !897, !898, !901, !904, !907, !910, !911, !912, !913, !914}
!21 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !19, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__basic_string_common<true>", scope: !7, file: !18, line: 583, size: 8, elements: !23, templateParams: !30, identifier: "_ZTSNSt3__121__basic_string_commonILb1EEE")
!23 = !{!24, !29}
!24 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv", scope: !22, file: !18, line: 561, type: !25, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!29 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_out_of_rangeEv", scope: !22, file: !18, line: 562, type: !25, isLocal: false, isDefinition: false, scopeLine: 562, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!30 = !{!31}
!31 = !DITemplateValueParameter(type: !32, value: i8 1)
!32 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__r_", scope: !19, file: !18, line: 748, baseType: !34, size: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >", scope: !7, file: !35, line: 2144, size: 192, elements: !36, templateParams: !297, identifier: "_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE")
!35 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!36 = !{!37, !254, !278, !282, !287, !290, !293}
!37 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !34, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>", scope: !7, file: !35, line: 2076, size: 192, elements: !39, templateParams: !249, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE")
!39 = !{!40, !232, !236, !241}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !38, file: !35, line: 2105, baseType: !41, size: 192, flags: DIFlagPrivate)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__rep", scope: !19, file: !18, line: 738, size: 192, elements: !42, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE")
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, scope: !41, file: !18, line: 740, baseType: !44, size: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !18, line: 740, size: 192, elements: !45, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repUt_E")
!45 = !{!46, !211, !225}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__l", scope: !44, file: !18, line: 742, baseType: !47, size: 192)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__long", scope: !19, file: !18, line: 699, size: 192, elements: !48, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE")
!48 = !{!49, !208, !209}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__cap_", scope: !47, file: !18, line: 701, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !19, file: !18, line: 643, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !52, file: !35, line: 1517, baseType: !202)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<char> >", scope: !7, file: !35, line: 1506, size: 8, elements: !53, templateParams: !201, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIcEEEE")
!53 = !{!54, !119, !146, !149, !154, !157, !174, !189, !192, !195, !198}
!54 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !52, file: !35, line: 1540, type: !55, isLocal: false, isDefinition: false, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !117, !51}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !52, file: !35, line: 1511, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !59, file: !35, line: 1031, baseType: !113)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char> >", scope: !7, file: !35, line: 1029, size: 8, elements: !60, templateParams: !61, identifier: "_ZTSNSt3__114__pointer_typeIcNS_9allocatorIcEEEE")
!60 = !{}
!61 = !{!62, !64}
!62 = !DITemplateTypeParameter(name: "_Tp", type: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DITemplateTypeParameter(name: "_Dp", type: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !7, file: !35, line: 1759, size: 8, elements: !66, templateParams: !112, identifier: "_ZTSNSt3__19allocatorIcEE")
!66 = !{!67, !71, !80, !88, !103, !106, !109}
!67 = !DISubprogram(name: "allocator", scope: !65, file: !35, line: 1775, type: !68, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!71 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERc", scope: !65, file: !35, line: 1777, type: !72, isLocal: false, isDefinition: false, scopeLine: 1777, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !76, !78}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !65, file: !35, line: 1764, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !65, file: !35, line: 1766, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !63, size: 64)
!80 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERKc", scope: !65, file: !35, line: 1779, type: !81, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !76, !86}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !65, file: !35, line: 1765, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !65, file: !35, line: 1767, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !85, size: 64)
!88 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !65, file: !35, line: 1781, type: !89, isLocal: false, isDefinition: false, scopeLine: 1781, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!89 = !DISubroutineType(types: !90)
!90 = !{!74, !70, !91, !97}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !35, line: 1762, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 30, baseType: !94)
!93 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !95, line: 92, baseType: !96)
!95 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !98, file: !35, line: 702, baseType: !101)
!98 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<void>", scope: !7, file: !35, line: 698, size: 8, elements: !60, templateParams: !99, identifier: "_ZTSNSt3__19allocatorIvEE")
!99 = !{!100}
!100 = !DITemplateTypeParameter(name: "_Tp", type: null)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !65, file: !35, line: 1788, type: !104, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !70, !74, !91}
!106 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIcE8max_sizeEv", scope: !65, file: !35, line: 1790, type: !107, isLocal: false, isDefinition: false, scopeLine: 1790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!107 = !DISubroutineType(types: !108)
!108 = !{!91, !76}
!109 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIcE7destroyEPc", scope: !65, file: !35, line: 1853, type: !110, isLocal: false, isDefinition: false, scopeLine: 1853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !70, !74}
!112 = !{!62}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !114, file: !35, line: 1017, baseType: !74)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char>, true>", scope: !115, file: !35, line: 1015, size: 8, elements: !60, templateParams: !116, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeIcNS_9allocatorIcEELb1EEE")
!115 = !DINamespace(name: "__pointer_type_imp", scope: !7, file: !35, line: 1011)
!116 = !{!62, !64, !31}
!117 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !52, file: !35, line: 1508, baseType: !65)
!119 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKv", scope: !52, file: !35, line: 1543, type: !120, isLocal: false, isDefinition: false, scopeLine: 1543, flags: DIFlagPrototyped, isOptimized: true)
!120 = !DISubroutineType(types: !121)
!121 = !{!57, !117, !51, !122}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !52, file: !35, line: 1514, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !124, file: !35, line: 1109, baseType: !129)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_void_pointer<char *, std::__1::allocator<char>, false>", scope: !7, file: !35, line: 1106, size: 8, elements: !60, templateParams: !125, identifier: "_ZTSNSt3__120__const_void_pointerIPcNS_9allocatorIcEELb0EEE")
!125 = !{!126, !127, !128}
!126 = !DITemplateTypeParameter(name: "_Ptr", type: !75)
!127 = !DITemplateTypeParameter(name: "_Alloc", type: !65)
!128 = !DITemplateValueParameter(type: !32, value: i8 0)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !130, file: !35, line: 974, baseType: !101)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !7, file: !35, line: 967, size: 8, elements: !131, templateParams: !145, identifier: "_ZTSNSt3__114pointer_traitsIPcEE")
!131 = !{!132}
!132 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPcE10pointer_toERc", scope: !130, file: !35, line: 983, type: !133, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true)
!133 = !DISubroutineType(types: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !130, file: !35, line: 969, baseType: !75)
!136 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !139, file: !138, line: 414, baseType: !63)
!138 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<char *>::__nat, char>", scope: !7, file: !138, line: 414, size: 8, elements: !60, templateParams: !140, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPcE5__natEcEE")
!140 = !{!141, !142, !144}
!141 = !DITemplateValueParameter(name: "_Bp", type: !32, value: i8 0)
!142 = !DITemplateTypeParameter(name: "_If", type: !143)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !130, file: !35, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPcE5__natE")
!144 = !DITemplateTypeParameter(name: "_Then", type: !63)
!145 = !{!126}
!146 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !52, file: !35, line: 1548, type: !147, isLocal: false, isDefinition: false, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: true)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !117, !57, !51}
!149 = !DISubprogram(name: "max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_", scope: !52, file: !35, line: 1592, type: !150, isLocal: false, isDefinition: false, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true)
!150 = !DISubroutineType(types: !151)
!151 = !{!51, !152}
!152 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!154 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionERKS2_", scope: !52, file: !35, line: 1597, type: !155, isLocal: false, isDefinition: false, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true)
!155 = !DISubroutineType(types: !156)
!156 = !{!118, !152}
!157 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb1EEE", scope: !52, file: !35, line: 1697, type: !158, isLocal: false, isDefinition: false, scopeLine: 1697, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!158 = !DISubroutineType(types: !159)
!159 = !{!57, !117, !51, !122, !160}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !7, file: !138, line: 528, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !7, file: !138, line: 504, size: 8, elements: !162, templateParams: !171, identifier: "_ZTSNSt3__117integral_constantIbLb1EEE")
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !161, file: !138, line: 506, baseType: !164, flags: DIFlagStaticMember, extraData: i1 true)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!165 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb1EEcvbEv", scope: !161, file: !138, line: 510, type: !166, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !161, file: !138, line: 507, baseType: !32)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!171 = !{!172, !173}
!172 = !DITemplateTypeParameter(name: "_Tp", type: !32)
!173 = !DITemplateValueParameter(name: "__v", type: !32, value: i8 1)
!174 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb0EEE", scope: !52, file: !35, line: 1701, type: !175, isLocal: false, isDefinition: false, scopeLine: 1701, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!175 = !DISubroutineType(types: !176)
!176 = !{!57, !117, !51, !122, !177}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !7, file: !138, line: 529, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !7, file: !138, line: 504, size: 8, elements: !179, templateParams: !187, identifier: "_ZTSNSt3__117integral_constantIbLb0EEE")
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !178, file: !138, line: 506, baseType: !164, flags: DIFlagStaticMember, extraData: i1 false)
!181 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb0EEcvbEv", scope: !178, file: !138, line: 510, type: !182, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !178, file: !138, line: 507, baseType: !32)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!187 = !{!172, !188}
!188 = !DITemplateValueParameter(name: "__v", type: !32, value: i8 0)
!189 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_", scope: !52, file: !35, line: 1730, type: !190, isLocal: false, isDefinition: false, scopeLine: 1730, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!190 = !DISubroutineType(types: !191)
!191 = !{!51, !160, !152}
!192 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb0EEERKS2_", scope: !52, file: !35, line: 1733, type: !193, isLocal: false, isDefinition: false, scopeLine: 1733, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!193 = !DISubroutineType(types: !194)
!194 = !{!51, !177, !152}
!195 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb1EEERKS2_", scope: !52, file: !35, line: 1738, type: !196, isLocal: false, isDefinition: false, scopeLine: 1738, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!196 = !DISubroutineType(types: !197)
!197 = !{!118, !160, !152}
!198 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS2_", scope: !52, file: !35, line: 1742, type: !199, isLocal: false, isDefinition: false, scopeLine: 1742, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: true)
!199 = !DISubroutineType(types: !200)
!200 = !{!118, !177, !152}
!201 = !{!127}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !203, file: !35, line: 1151, baseType: !207)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<char>, long, true>", scope: !7, file: !35, line: 1149, size: 8, elements: !60, templateParams: !204, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIcEElLb1EEE")
!204 = !{!127, !205, !31}
!205 = !DITemplateTypeParameter(name: "_DiffType", type: !206)
!206 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !65, file: !35, line: 1762, baseType: !92)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !47, file: !18, line: 702, baseType: !50, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !47, file: !18, line: 703, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !19, file: !18, line: 647, baseType: !57)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !44, file: !18, line: 743, baseType: !212, size: 192)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__short", scope: !19, file: !18, line: 717, size: 192, elements: !213, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortE")
!213 = !{!214, !221}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !18, line: 719, baseType: !215, size: 8)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !18, line: 719, size: 8, elements: !216, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortUt_E")
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !215, file: !18, line: 721, baseType: !218, size: 8)
!218 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__lx", scope: !215, file: !18, line: 722, baseType: !220, size: 8)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !19, file: !18, line: 640, baseType: !63)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !212, file: !18, line: 724, baseType: !222, size: 184, offset: 8)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 184, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 23)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !44, file: !18, line: 744, baseType: !226, size: 192)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__raw", scope: !19, file: !18, line: 733, size: 192, elements: !227, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__rawE")
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__words", scope: !226, file: !18, line: 735, baseType: !229, size: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 3)
!232 = !DISubprogram(name: "__compressed_pair_elem", scope: !38, file: !35, line: 2082, type: !233, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!236 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !38, file: !35, line: 2101, type: !237, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !235}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !38, file: !35, line: 2078, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !41, size: 64)
!241 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !38, file: !35, line: 2102, type: !242, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !247}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !38, file: !35, line: 2079, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!249 = !{!250, !251, !253}
!250 = !DITemplateTypeParameter(name: "_Tp", type: !41)
!251 = !DITemplateValueParameter(name: "_Idx", type: !252, value: i32 0)
!252 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!253 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !32, value: i8 0)
!254 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !34, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<char>, 1, true>", scope: !7, file: !35, line: 2109, size: 8, elements: !256, templateParams: !274, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEE")
!256 = !{!257, !258, !262, !267}
!257 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !255, baseType: !65, flags: DIFlagPrivate)
!258 = !DISubprogram(name: "__compressed_pair_elem", scope: !255, file: !35, line: 2116, type: !259, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!262 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !255, file: !35, line: 2136, type: !263, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !261}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !255, file: !35, line: 2111, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !65, size: 64)
!267 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !255, file: !35, line: 2137, type: !268, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !272}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !255, file: !35, line: 2112, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !77, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!274 = !{!275, !276, !277}
!275 = !DITemplateTypeParameter(name: "_Tp", type: !65)
!276 = !DITemplateValueParameter(name: "_Idx", type: !252, value: i32 1)
!277 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !32, value: i8 1)
!278 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !34, file: !35, line: 2212, type: !279, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!279 = !DISubroutineType(types: !280)
!280 = !{!239, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!282 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !34, file: !35, line: 2217, type: !283, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!283 = !DISubroutineType(types: !284)
!284 = !{!244, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!287 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !34, file: !35, line: 2222, type: !288, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!288 = !DISubroutineType(types: !289)
!289 = !{!265, !281}
!290 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !34, file: !35, line: 2227, type: !291, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!291 = !DISubroutineType(types: !292)
!292 = !{!270, !285}
!293 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E4swapERS8_", scope: !34, file: !35, line: 2232, type: !294, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !281, !296}
!296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !34, size: 64)
!297 = !{!298, !299}
!298 = !DITemplateTypeParameter(name: "_T1", type: !41)
!299 = !DITemplateTypeParameter(name: "_T2", type: !65)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !19, file: !18, line: 751, baseType: !301, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!302 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 753, type: !303, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!306 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 756, type: !307, isLocal: false, isDefinition: false, scopeLine: 756, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !305, !309}
!309 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !19, file: !18, line: 641, baseType: !65)
!312 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 763, type: !313, isLocal: false, isDefinition: false, scopeLine: 763, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !305, !315}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!317 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 764, type: !318, isLocal: false, isDefinition: false, scopeLine: 764, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !305, !315, !309}
!320 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 768, type: !321, isLocal: false, isDefinition: false, scopeLine: 768, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !305, !323}
!323 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !19, size: 64)
!324 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 776, type: !325, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !305, !323, !309}
!327 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 778, type: !328, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !305, !84}
!330 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 780, type: !331, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !305, !84, !271}
!333 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 782, type: !334, isLocal: false, isDefinition: false, scopeLine: 782, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !305, !84, !50}
!336 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 784, type: !337, isLocal: false, isDefinition: false, scopeLine: 784, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !305, !84, !50, !271}
!339 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 786, type: !340, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !305, !50, !63}
!342 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 788, type: !343, isLocal: false, isDefinition: false, scopeLine: 788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !305, !50, !63, !271}
!345 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 789, type: !346, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !305, !315, !50, !50, !271}
!348 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 792, type: !349, isLocal: false, isDefinition: false, scopeLine: 792, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !305, !315, !50, !271}
!351 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 800, type: !352, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !305, !354}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__self_view", scope: !19, file: !18, line: 638, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::__1::char_traits<char> >", scope: !7, file: !356, line: 184, size: 128, elements: !357, templateParams: !487, identifier: "_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE")
!356 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string_view", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!357 = !{!358, !361, !365, !366, !370, !375, !379, !382, !385, !391, !392, !393, !394, !400, !401, !402, !403, !406, !407, !408, !411, !415, !416, !419, !420, !423, !426, !427, !430, !434, !437, !440, !443, !446, !449, !452, !455, !458, !461, !464, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !355, file: !356, line: 199, baseType: !359, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !356, line: 197, baseType: !92)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !355, file: !356, line: 566, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !355, file: !356, line: 188, baseType: !63)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !355, file: !356, line: 567, baseType: !360, size: 64, offset: 64)
!366 = !DISubprogram(name: "basic_string_view", scope: !355, file: !356, line: 207, type: !367, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!370 = !DISubprogram(name: "basic_string_view", scope: !355, file: !356, line: 210, type: !371, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !369, !373}
!373 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!375 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEaSERKS3_", scope: !355, file: !356, line: 213, type: !376, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !369, !373}
!378 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !355, size: 64)
!379 = !DISubprogram(name: "basic_string_view", scope: !355, file: !356, line: 216, type: !380, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !369, !84, !360}
!382 = !DISubprogram(name: "basic_string_view", scope: !355, file: !356, line: 225, type: !383, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !369, !84}
!385 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginEv", scope: !355, file: !356, line: 230, type: !386, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !355, file: !356, line: 193, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !355, file: !356, line: 190, baseType: !84)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!391 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endEv", scope: !355, file: !356, line: 233, type: !386, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!392 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginEv", scope: !355, file: !356, line: 236, type: !386, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!393 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendEv", scope: !355, file: !356, line: 239, type: !386, isLocal: false, isDefinition: false, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!394 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6rbeginEv", scope: !355, file: !356, line: 242, type: !395, isLocal: false, isDefinition: false, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !390}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !355, file: !356, line: 195, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !7, file: !399, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorIPKcEE")
!399 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iterator", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!400 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4rendEv", scope: !355, file: !356, line: 245, type: !395, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!401 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7crbeginEv", scope: !355, file: !356, line: 248, type: !395, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!402 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5crendEv", scope: !355, file: !356, line: 251, type: !395, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!403 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv", scope: !355, file: !356, line: 255, type: !404, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!404 = !DISubroutineType(types: !405)
!405 = !{!360, !390}
!406 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6lengthEv", scope: !355, file: !356, line: 258, type: !404, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!407 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE8max_sizeEv", scope: !355, file: !356, line: 261, type: !404, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!408 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5emptyEv", scope: !355, file: !356, line: 264, type: !409, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!409 = !DISubroutineType(types: !410)
!410 = !{!32, !390}
!411 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEEixEm", scope: !355, file: !356, line: 268, type: !412, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !390, !360}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !355, file: !356, line: 192, baseType: !87)
!415 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE2atEm", scope: !355, file: !356, line: 271, type: !412, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!416 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5frontEv", scope: !355, file: !356, line: 279, type: !417, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!417 = !DISubroutineType(types: !418)
!418 = !{!414, !390}
!419 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4backEv", scope: !355, file: !356, line: 285, type: !417, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!420 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv", scope: !355, file: !356, line: 291, type: !421, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!421 = !DISubroutineType(types: !422)
!422 = !{!389, !390}
!423 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_prefixEm", scope: !355, file: !356, line: 295, type: !424, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !369, !360}
!426 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_suffixEm", scope: !355, file: !356, line: 303, type: !424, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!427 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE4swapERS3_", scope: !355, file: !356, line: 310, type: !428, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !369, !378}
!430 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4copyEPcmm", scope: !355, file: !356, line: 322, type: !431, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !390, !75, !360, !360}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !355, file: !356, line: 197, baseType: !92)
!434 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrEmm", scope: !355, file: !356, line: 332, type: !435, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!435 = !DISubroutineType(types: !436)
!436 = !{!355, !390, !360, !360}
!437 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_", scope: !355, file: !356, line: 339, type: !438, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!438 = !DISubroutineType(types: !439)
!439 = !{!252, !390, !355}
!440 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_", scope: !355, file: !356, line: 349, type: !441, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!441 = !DISubroutineType(types: !442)
!442 = !{!252, !390, !360, !360, !355}
!443 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_mm", scope: !355, file: !356, line: 355, type: !444, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!444 = !DISubroutineType(types: !445)
!445 = !{!252, !390, !360, !360, !355, !360, !360}
!446 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEPKc", scope: !355, file: !356, line: 362, type: !447, isLocal: false, isDefinition: false, scopeLine: 362, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!447 = !DISubroutineType(types: !448)
!448 = !{!252, !390, !84}
!449 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKc", scope: !355, file: !356, line: 368, type: !450, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!450 = !DISubroutineType(types: !451)
!451 = !{!252, !390, !360, !360, !84}
!452 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKcm", scope: !355, file: !356, line: 374, type: !453, isLocal: false, isDefinition: false, scopeLine: 374, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!453 = !DISubroutineType(types: !454)
!454 = !{!252, !390, !360, !360, !84, !360}
!455 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findES3_m", scope: !355, file: !356, line: 381, type: !456, isLocal: false, isDefinition: false, scopeLine: 381, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!456 = !DISubroutineType(types: !457)
!457 = !{!433, !390, !355, !360}
!458 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEcm", scope: !355, file: !356, line: 389, type: !459, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!459 = !DISubroutineType(types: !460)
!460 = !{!433, !390, !63, !360}
!461 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcmm", scope: !355, file: !356, line: 396, type: !462, isLocal: false, isDefinition: false, scopeLine: 396, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!462 = !DISubroutineType(types: !463)
!463 = !{!433, !390, !84, !360, !360}
!464 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcm", scope: !355, file: !356, line: 404, type: !465, isLocal: false, isDefinition: false, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!465 = !DISubroutineType(types: !466)
!466 = !{!433, !390, !84, !360}
!467 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindES3_m", scope: !355, file: !356, line: 413, type: !456, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!468 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEcm", scope: !355, file: !356, line: 421, type: !459, isLocal: false, isDefinition: false, scopeLine: 421, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!469 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcmm", scope: !355, file: !356, line: 428, type: !462, isLocal: false, isDefinition: false, scopeLine: 428, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!470 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcm", scope: !355, file: !356, line: 436, type: !465, isLocal: false, isDefinition: false, scopeLine: 436, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!471 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofES3_m", scope: !355, file: !356, line: 445, type: !456, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!472 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEcm", scope: !355, file: !356, line: 453, type: !459, isLocal: false, isDefinition: false, scopeLine: 453, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!473 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcmm", scope: !355, file: !356, line: 457, type: !462, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!474 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcm", scope: !355, file: !356, line: 465, type: !465, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!475 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofES3_m", scope: !355, file: !356, line: 474, type: !456, isLocal: false, isDefinition: false, scopeLine: 474, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!476 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEcm", scope: !355, file: !356, line: 482, type: !459, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!477 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcmm", scope: !355, file: !356, line: 486, type: !462, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!478 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcm", scope: !355, file: !356, line: 494, type: !465, isLocal: false, isDefinition: false, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!479 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofES3_m", scope: !355, file: !356, line: 503, type: !456, isLocal: false, isDefinition: false, scopeLine: 503, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!480 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEcm", scope: !355, file: !356, line: 511, type: !459, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!481 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcmm", scope: !355, file: !356, line: 518, type: !462, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!482 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcm", scope: !355, file: !356, line: 526, type: !465, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!483 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofES3_m", scope: !355, file: !356, line: 535, type: !456, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!484 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEcm", scope: !355, file: !356, line: 543, type: !459, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!485 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcmm", scope: !355, file: !356, line: 550, type: !462, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!486 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcm", scope: !355, file: !356, line: 558, type: !465, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!487 = !{!488, !489}
!488 = !DITemplateTypeParameter(name: "_CharT", type: !63)
!489 = !DITemplateTypeParameter(name: "_Traits", type: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !7, file: !491, line: 197, size: 8, elements: !492, templateParams: !538, identifier: "_ZTSNSt3__111char_traitsIcEE")
!491 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!492 = !{!493, !500, !503, !504, !508, !511, !514, !518, !519, !522, !526, !529, !532, !535}
!493 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !490, file: !491, line: 206, type: !494, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !496, !498}
!496 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !490, file: !491, line: 199, baseType: !63)
!498 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!500 = !DISubprogram(name: "eq", linkageName: "_ZNSt3__111char_traitsIcE2eqEcc", scope: !490, file: !491, line: 207, type: !501, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true)
!501 = !DISubroutineType(types: !502)
!502 = !{!32, !497, !497}
!503 = !DISubprogram(name: "lt", linkageName: "_ZNSt3__111char_traitsIcE2ltEcc", scope: !490, file: !491, line: 209, type: !501, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true)
!504 = !DISubprogram(name: "compare", linkageName: "_ZNSt3__111char_traitsIcE7compareEPKcS3_m", scope: !490, file: !491, line: 213, type: !505, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true)
!505 = !DISubroutineType(types: !506)
!506 = !{!252, !507, !507, !92}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!508 = !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !490, file: !491, line: 215, type: !509, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true)
!509 = !DISubroutineType(types: !510)
!510 = !{!92, !507}
!511 = !DISubprogram(name: "find", linkageName: "_ZNSt3__111char_traitsIcE4findEPKcmRS2_", scope: !490, file: !491, line: 217, type: !512, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true)
!512 = !DISubroutineType(types: !513)
!513 = !{!507, !507, !92, !498}
!514 = !DISubprogram(name: "move", linkageName: "_ZNSt3__111char_traitsIcE4moveEPcPKcm", scope: !490, file: !491, line: 218, type: !515, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !517, !507, !92}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!518 = !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !490, file: !491, line: 220, type: !515, isLocal: false, isDefinition: false, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true)
!519 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !490, file: !491, line: 225, type: !520, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true)
!520 = !DISubroutineType(types: !521)
!521 = !{!517, !517, !92, !497}
!522 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt3__111char_traitsIcE7not_eofEi", scope: !490, file: !491, line: 228, type: !523, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true)
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !525}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !490, file: !491, line: 200, baseType: !252)
!526 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt3__111char_traitsIcE12to_char_typeEi", scope: !490, file: !491, line: 230, type: !527, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true)
!527 = !DISubroutineType(types: !528)
!528 = !{!497, !525}
!529 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt3__111char_traitsIcE11to_int_typeEc", scope: !490, file: !491, line: 232, type: !530, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true)
!530 = !DISubroutineType(types: !531)
!531 = !{!525, !497}
!532 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !490, file: !491, line: 234, type: !533, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true)
!533 = !DISubroutineType(types: !534)
!534 = !{!32, !525, !525}
!535 = !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !490, file: !491, line: 236, type: !536, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true)
!536 = !DISubroutineType(types: !537)
!537 = !{!525}
!538 = !{!488}
!539 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 802, type: !540, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !305, !354, !271}
!542 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 811, type: !543, isLocal: false, isDefinition: false, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !305, !545}
!545 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !9, file: !546, line: 59, size: 128, elements: !547, templateParams: !566, identifier: "_ZTSSt16initializer_listIcE")
!546 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/initializer_list", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!547 = !{!548, !549, !550, !554, !557, !562, !565}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !545, file: !546, line: 61, baseType: !84, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !545, file: !546, line: 62, baseType: !92, size: 64, offset: 64)
!550 = !DISubprogram(name: "initializer_list", scope: !545, file: !546, line: 66, type: !551, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553, !84, !92}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!554 = !DISubprogram(name: "initializer_list", scope: !545, file: !546, line: 81, type: !555, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !553}
!557 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIcE4sizeEv", scope: !545, file: !546, line: 85, type: !558, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!558 = !DISubroutineType(types: !559)
!559 = !{!92, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!562 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIcE5beginEv", scope: !545, file: !546, line: 89, type: !563, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!563 = !DISubroutineType(types: !564)
!564 = !{!84, !560}
!565 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIcE3endEv", scope: !545, file: !546, line: 93, type: !563, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!566 = !{!567}
!567 = !DITemplateTypeParameter(name: "_Ep", type: !63)
!568 = !DISubprogram(name: "basic_string", scope: !19, file: !18, line: 813, type: !569, isLocal: false, isDefinition: false, scopeLine: 813, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !305, !545, !271}
!571 = !DISubprogram(name: "~basic_string", scope: !19, file: !18, line: 816, type: !303, isLocal: false, isDefinition: false, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!572 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv", scope: !19, file: !18, line: 819, type: !573, isLocal: false, isDefinition: false, scopeLine: 819, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!573 = !DISubroutineType(types: !574)
!574 = !{!354, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!576 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_", scope: !19, file: !18, line: 821, type: !577, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!577 = !DISubroutineType(types: !578)
!578 = !{!579, !305, !315}
!579 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!580 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEOS5_", scope: !19, file: !18, line: 830, type: !581, isLocal: false, isDefinition: false, scopeLine: 830, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!581 = !DISubroutineType(types: !582)
!582 = !{!579, !305, !323}
!583 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSESt16initializer_listIcE", scope: !19, file: !18, line: 833, type: !584, isLocal: false, isDefinition: false, scopeLine: 833, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!584 = !DISubroutineType(types: !585)
!585 = !{!579, !305, !545}
!586 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc", scope: !19, file: !18, line: 835, type: !587, isLocal: false, isDefinition: false, scopeLine: 835, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!587 = !DISubroutineType(types: !588)
!588 = !{!579, !305, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!591 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc", scope: !19, file: !18, line: 836, type: !592, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!592 = !DISubroutineType(types: !593)
!593 = !{!579, !305, !220}
!594 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !19, file: !18, line: 853, type: !595, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !305}
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !19, file: !18, line: 659, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<char *>", scope: !7, file: !399, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPcEE")
!599 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !19, file: !18, line: 856, type: !600, isLocal: false, isDefinition: false, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !575}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !19, file: !18, line: 660, baseType: !603)
!603 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<const char *>", scope: !7, file: !399, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPKcEE")
!604 = !DISubprogram(name: "end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !19, file: !18, line: 859, type: !595, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!605 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !19, file: !18, line: 862, type: !600, isLocal: false, isDefinition: false, scopeLine: 862, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!606 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !19, file: !18, line: 866, type: !607, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!607 = !DISubroutineType(types: !608)
!608 = !{!609, !305}
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !19, file: !18, line: 662, baseType: !610)
!610 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<char *> >", scope: !7, file: !399, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPcEEEE")
!611 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !19, file: !18, line: 869, type: !612, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !575}
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !19, file: !18, line: 663, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<const char *> >", scope: !7, file: !399, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKcEEEE")
!616 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !19, file: !18, line: 872, type: !607, isLocal: false, isDefinition: false, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!617 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !19, file: !18, line: 875, type: !612, isLocal: false, isDefinition: false, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!618 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6cbeginEv", scope: !19, file: !18, line: 879, type: !600, isLocal: false, isDefinition: false, scopeLine: 879, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!619 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4cendEv", scope: !19, file: !18, line: 882, type: !600, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!620 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7crbeginEv", scope: !19, file: !18, line: 885, type: !612, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!621 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5crendEv", scope: !19, file: !18, line: 888, type: !612, isLocal: false, isDefinition: false, scopeLine: 888, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!622 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !19, file: !18, line: 891, type: !623, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!623 = !DISubroutineType(types: !624)
!624 = !{!50, !575}
!625 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv", scope: !19, file: !18, line: 893, type: !623, isLocal: false, isDefinition: false, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!626 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv", scope: !19, file: !18, line: 894, type: !623, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!627 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv", scope: !19, file: !18, line: 895, type: !623, isLocal: false, isDefinition: false, scopeLine: 895, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!628 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc", scope: !19, file: !18, line: 899, type: !629, isLocal: false, isDefinition: false, scopeLine: 899, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !305, !50, !220}
!631 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm", scope: !19, file: !18, line: 900, type: !632, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !305, !50}
!634 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm", scope: !19, file: !18, line: 902, type: !632, isLocal: false, isDefinition: false, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!635 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13shrink_to_fitEv", scope: !19, file: !18, line: 904, type: !303, isLocal: false, isDefinition: false, scopeLine: 904, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!636 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearEv", scope: !19, file: !18, line: 906, type: !303, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!637 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyEv", scope: !19, file: !18, line: 907, type: !638, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!638 = !DISubroutineType(types: !639)
!639 = !{!32, !575}
!640 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !19, file: !18, line: 909, type: !641, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!641 = !DISubroutineType(types: !642)
!642 = !{!643, !575, !50}
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !19, file: !18, line: 646, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !590, size: 64)
!645 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !19, file: !18, line: 910, type: !646, isLocal: false, isDefinition: false, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !305, !50}
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !19, file: !18, line: 645, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !220, size: 64)
!650 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !19, file: !18, line: 912, type: !641, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!651 = !DISubprogram(name: "at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !19, file: !18, line: 913, type: !646, isLocal: false, isDefinition: false, scopeLine: 913, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!652 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLERKS5_", scope: !19, file: !18, line: 915, type: !577, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!653 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLENS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 916, type: !654, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!654 = !DISubroutineType(types: !655)
!655 = !{!579, !305, !354}
!656 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEPKc", scope: !19, file: !18, line: 917, type: !587, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!657 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc", scope: !19, file: !18, line: 918, type: !592, isLocal: false, isDefinition: false, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!658 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLESt16initializer_listIcE", scope: !19, file: !18, line: 920, type: !584, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!659 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_", scope: !19, file: !18, line: 924, type: !577, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!660 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendENS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 926, type: !654, isLocal: false, isDefinition: false, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!661 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm", scope: !19, file: !18, line: 927, type: !662, isLocal: false, isDefinition: false, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!662 = !DISubroutineType(types: !663)
!663 = !{!579, !305, !315, !50, !50}
!664 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm", scope: !19, file: !18, line: 936, type: !665, isLocal: false, isDefinition: false, scopeLine: 936, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!665 = !DISubroutineType(types: !666)
!666 = !{!579, !305, !589, !50}
!667 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc", scope: !19, file: !18, line: 937, type: !587, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!668 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc", scope: !19, file: !18, line: 938, type: !669, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!669 = !DISubroutineType(types: !670)
!670 = !{!579, !305, !50, !220}
!671 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendESt16initializer_listIcE", scope: !19, file: !18, line: 971, type: !584, isLocal: false, isDefinition: false, scopeLine: 971, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!672 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc", scope: !19, file: !18, line: 974, type: !673, isLocal: false, isDefinition: false, scopeLine: 974, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !305, !220}
!675 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backEv", scope: !19, file: !18, line: 976, type: !303, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!676 = !DISubprogram(name: "front", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !19, file: !18, line: 977, type: !677, isLocal: false, isDefinition: false, scopeLine: 977, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!677 = !DISubroutineType(types: !678)
!678 = !{!648, !305}
!679 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !19, file: !18, line: 978, type: !680, isLocal: false, isDefinition: false, scopeLine: 978, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!680 = !DISubroutineType(types: !681)
!681 = !{!643, !575}
!682 = !DISubprogram(name: "back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !19, file: !18, line: 979, type: !677, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!683 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !19, file: !18, line: 980, type: !680, isLocal: false, isDefinition: false, scopeLine: 980, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!684 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignENS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 983, type: !654, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!685 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_", scope: !19, file: !18, line: 985, type: !577, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!686 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEOS5_", scope: !19, file: !18, line: 988, type: !581, isLocal: false, isDefinition: false, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!687 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_mm", scope: !19, file: !18, line: 992, type: !662, isLocal: false, isDefinition: false, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!688 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm", scope: !19, file: !18, line: 1001, type: !665, isLocal: false, isDefinition: false, scopeLine: 1001, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!689 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc", scope: !19, file: !18, line: 1002, type: !587, isLocal: false, isDefinition: false, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!690 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEmc", scope: !19, file: !18, line: 1003, type: !669, isLocal: false, isDefinition: false, scopeLine: 1003, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!691 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignESt16initializer_listIcE", scope: !19, file: !18, line: 1024, type: !584, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!692 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_", scope: !19, file: !18, line: 1028, type: !693, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!693 = !DISubroutineType(types: !694)
!694 = !{!579, !305, !50, !315}
!695 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmNS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 1030, type: !696, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!696 = !DISubroutineType(types: !697)
!697 = !{!579, !305, !50, !354}
!698 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_mm", scope: !19, file: !18, line: 1039, type: !699, isLocal: false, isDefinition: false, scopeLine: 1039, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!699 = !DISubroutineType(types: !700)
!700 = !{!579, !305, !50, !315, !50, !50}
!701 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm", scope: !19, file: !18, line: 1040, type: !702, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!702 = !DISubroutineType(types: !703)
!703 = !{!579, !305, !50, !589, !50}
!704 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc", scope: !19, file: !18, line: 1041, type: !705, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!705 = !DISubroutineType(types: !706)
!706 = !{!579, !305, !50, !589}
!707 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmmc", scope: !19, file: !18, line: 1042, type: !708, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!708 = !DISubroutineType(types: !709)
!709 = !{!579, !305, !50, !50, !220}
!710 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc", scope: !19, file: !18, line: 1043, type: !711, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!711 = !DISubroutineType(types: !712)
!712 = !{!597, !305, !602, !220}
!713 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEmc", scope: !19, file: !18, line: 1045, type: !714, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!714 = !DISubroutineType(types: !715)
!715 = !{!597, !305, !602, !50, !220}
!716 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEESt16initializer_listIcE", scope: !19, file: !18, line: 1066, type: !717, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!717 = !DISubroutineType(types: !718)
!718 = !{!597, !305, !602, !545}
!719 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm", scope: !19, file: !18, line: 1070, type: !720, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!720 = !DISubroutineType(types: !721)
!721 = !{!579, !305, !50, !50}
!722 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEE", scope: !19, file: !18, line: 1072, type: !723, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!723 = !DISubroutineType(types: !724)
!724 = !{!597, !305, !602}
!725 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEES9_", scope: !19, file: !18, line: 1074, type: !726, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!726 = !DISubroutineType(types: !727)
!727 = !{!597, !305, !602, !602}
!728 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_", scope: !19, file: !18, line: 1077, type: !729, isLocal: false, isDefinition: false, scopeLine: 1077, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!729 = !DISubroutineType(types: !730)
!730 = !{!579, !305, !50, !50, !315}
!731 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmNS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 1079, type: !732, isLocal: false, isDefinition: false, scopeLine: 1079, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!732 = !DISubroutineType(types: !733)
!733 = !{!579, !305, !50, !50, !354}
!734 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_mm", scope: !19, file: !18, line: 1080, type: !735, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!735 = !DISubroutineType(types: !736)
!736 = !{!579, !305, !50, !50, !315, !50, !50}
!737 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm", scope: !19, file: !18, line: 1089, type: !738, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!738 = !DISubroutineType(types: !739)
!739 = !{!579, !305, !50, !50, !589, !50}
!740 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKc", scope: !19, file: !18, line: 1090, type: !741, isLocal: false, isDefinition: false, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!741 = !DISubroutineType(types: !742)
!742 = !{!579, !305, !50, !50, !589}
!743 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmmc", scope: !19, file: !18, line: 1091, type: !744, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!744 = !DISubroutineType(types: !745)
!745 = !{!579, !305, !50, !50, !50, !220}
!746 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_RKS5_", scope: !19, file: !18, line: 1093, type: !747, isLocal: false, isDefinition: false, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!747 = !DISubroutineType(types: !748)
!748 = !{!579, !305, !602, !602, !315}
!749 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_NS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 1095, type: !750, isLocal: false, isDefinition: false, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!750 = !DISubroutineType(types: !751)
!751 = !{!579, !305, !602, !602, !354}
!752 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_m", scope: !19, file: !18, line: 1097, type: !753, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!753 = !DISubroutineType(types: !754)
!754 = !{!579, !305, !602, !602, !589, !50}
!755 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_", scope: !19, file: !18, line: 1099, type: !756, isLocal: false, isDefinition: false, scopeLine: 1099, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!756 = !DISubroutineType(types: !757)
!757 = !{!579, !305, !602, !602, !589}
!758 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_mc", scope: !19, file: !18, line: 1101, type: !759, isLocal: false, isDefinition: false, scopeLine: 1101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!759 = !DISubroutineType(types: !760)
!760 = !{!579, !305, !602, !602, !50, !220}
!761 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_St16initializer_listIcE", scope: !19, file: !18, line: 1112, type: !762, isLocal: false, isDefinition: false, scopeLine: 1112, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!762 = !DISubroutineType(types: !763)
!763 = !{!579, !305, !602, !602, !545}
!764 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm", scope: !19, file: !18, line: 1116, type: !765, isLocal: false, isDefinition: false, scopeLine: 1116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!765 = !DISubroutineType(types: !766)
!766 = !{!50, !575, !767, !50, !50}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!768 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrEmm", scope: !19, file: !18, line: 1118, type: !769, isLocal: false, isDefinition: false, scopeLine: 1118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!769 = !DISubroutineType(types: !770)
!770 = !{!19, !575, !50, !50}
!771 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4swapERS5_", scope: !19, file: !18, line: 1121, type: !772, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !305, !579}
!774 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv", scope: !19, file: !18, line: 1130, type: !775, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!775 = !DISubroutineType(types: !776)
!776 = !{!589, !575}
!777 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !19, file: !18, line: 1132, type: !775, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!778 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv", scope: !19, file: !18, line: 1139, type: !779, isLocal: false, isDefinition: false, scopeLine: 1139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!779 = !DISubroutineType(types: !780)
!780 = !{!311, !575}
!781 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findERKS5_m", scope: !19, file: !18, line: 1142, type: !782, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!782 = !DISubroutineType(types: !783)
!783 = !{!50, !575, !315, !50}
!784 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findENS_17basic_string_viewIcS2_EEm", scope: !19, file: !18, line: 1144, type: !785, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!785 = !DISubroutineType(types: !786)
!786 = !{!50, !575, !354, !50}
!787 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcmm", scope: !19, file: !18, line: 1145, type: !788, isLocal: false, isDefinition: false, scopeLine: 1145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!788 = !DISubroutineType(types: !789)
!789 = !{!50, !575, !589, !50, !50}
!790 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcm", scope: !19, file: !18, line: 1147, type: !791, isLocal: false, isDefinition: false, scopeLine: 1147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!791 = !DISubroutineType(types: !792)
!792 = !{!50, !575, !589, !50}
!793 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm", scope: !19, file: !18, line: 1148, type: !794, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!794 = !DISubroutineType(types: !795)
!795 = !{!50, !575, !220, !50}
!796 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindERKS5_m", scope: !19, file: !18, line: 1151, type: !782, isLocal: false, isDefinition: false, scopeLine: 1151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!797 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindENS_17basic_string_viewIcS2_EEm", scope: !19, file: !18, line: 1153, type: !785, isLocal: false, isDefinition: false, scopeLine: 1153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!798 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcmm", scope: !19, file: !18, line: 1154, type: !788, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!799 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcm", scope: !19, file: !18, line: 1156, type: !791, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!800 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm", scope: !19, file: !18, line: 1157, type: !794, isLocal: false, isDefinition: false, scopeLine: 1157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!801 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofERKS5_m", scope: !19, file: !18, line: 1160, type: !782, isLocal: false, isDefinition: false, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!802 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofENS_17basic_string_viewIcS2_EEm", scope: !19, file: !18, line: 1162, type: !785, isLocal: false, isDefinition: false, scopeLine: 1162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!803 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcmm", scope: !19, file: !18, line: 1163, type: !788, isLocal: false, isDefinition: false, scopeLine: 1163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!804 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcm", scope: !19, file: !18, line: 1165, type: !791, isLocal: false, isDefinition: false, scopeLine: 1165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!805 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEcm", scope: !19, file: !18, line: 1167, type: !794, isLocal: false, isDefinition: false, scopeLine: 1167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!806 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofERKS5_m", scope: !19, file: !18, line: 1170, type: !782, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!807 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofENS_17basic_string_viewIcS2_EEm", scope: !19, file: !18, line: 1172, type: !785, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!808 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcmm", scope: !19, file: !18, line: 1173, type: !788, isLocal: false, isDefinition: false, scopeLine: 1173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!809 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcm", scope: !19, file: !18, line: 1175, type: !791, isLocal: false, isDefinition: false, scopeLine: 1175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!810 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEcm", scope: !19, file: !18, line: 1177, type: !794, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!811 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofERKS5_m", scope: !19, file: !18, line: 1180, type: !782, isLocal: false, isDefinition: false, scopeLine: 1180, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!812 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofENS_17basic_string_viewIcS2_EEm", scope: !19, file: !18, line: 1182, type: !785, isLocal: false, isDefinition: false, scopeLine: 1182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!813 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcmm", scope: !19, file: !18, line: 1183, type: !788, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!814 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcm", scope: !19, file: !18, line: 1185, type: !791, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!815 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEcm", scope: !19, file: !18, line: 1187, type: !794, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!816 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofERKS5_m", scope: !19, file: !18, line: 1190, type: !782, isLocal: false, isDefinition: false, scopeLine: 1190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!817 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofENS_17basic_string_viewIcS2_EEm", scope: !19, file: !18, line: 1192, type: !785, isLocal: false, isDefinition: false, scopeLine: 1192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!818 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcmm", scope: !19, file: !18, line: 1193, type: !788, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!819 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcm", scope: !19, file: !18, line: 1195, type: !791, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!820 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEcm", scope: !19, file: !18, line: 1197, type: !794, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!821 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_", scope: !19, file: !18, line: 1200, type: !822, isLocal: false, isDefinition: false, scopeLine: 1200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!822 = !DISubroutineType(types: !823)
!823 = !{!252, !575, !315}
!824 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareENS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 1202, type: !825, isLocal: false, isDefinition: false, scopeLine: 1202, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!825 = !DISubroutineType(types: !826)
!826 = !{!252, !575, !354}
!827 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmNS_17basic_string_viewIcS2_EE", scope: !19, file: !18, line: 1204, type: !828, isLocal: false, isDefinition: false, scopeLine: 1204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!828 = !DISubroutineType(types: !829)
!829 = !{!252, !575, !50, !50, !354}
!830 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_", scope: !19, file: !18, line: 1206, type: !831, isLocal: false, isDefinition: false, scopeLine: 1206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!831 = !DISubroutineType(types: !832)
!832 = !{!252, !575, !50, !50, !315}
!833 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_mm", scope: !19, file: !18, line: 1207, type: !834, isLocal: false, isDefinition: false, scopeLine: 1207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!834 = !DISubroutineType(types: !835)
!835 = !{!252, !575, !50, !50, !315, !50, !50}
!836 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc", scope: !19, file: !18, line: 1216, type: !837, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!837 = !DISubroutineType(types: !838)
!838 = !{!252, !575, !589}
!839 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKc", scope: !19, file: !18, line: 1217, type: !840, isLocal: false, isDefinition: false, scopeLine: 1217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!840 = !DISubroutineType(types: !841)
!841 = !{!252, !575, !50, !50, !589}
!842 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm", scope: !19, file: !18, line: 1218, type: !843, isLocal: false, isDefinition: false, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!843 = !DISubroutineType(types: !844)
!844 = !{!252, !575, !50, !50, !589, !50}
!845 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12__invariantsEv", scope: !19, file: !18, line: 1220, type: !638, isLocal: false, isDefinition: false, scopeLine: 1220, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!846 = !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !19, file: !18, line: 1223, type: !638, isLocal: false, isDefinition: false, scopeLine: 1223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!847 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !19, file: !18, line: 1237, type: !848, isLocal: false, isDefinition: false, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true)
!848 = !DISubroutineType(types: !849)
!849 = !{!850, !305}
!850 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !311, size: 64)
!851 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !19, file: !18, line: 1240, type: !852, isLocal: false, isDefinition: false, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true)
!852 = !DISubroutineType(types: !853)
!853 = !{!309, !575}
!854 = !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !19, file: !18, line: 1264, type: !632, isLocal: false, isDefinition: false, scopeLine: 1264, flags: DIFlagPrototyped, isOptimized: true)
!855 = !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !19, file: !18, line: 1272, type: !623, isLocal: false, isDefinition: false, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: true)
!856 = !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !19, file: !18, line: 1282, type: !632, isLocal: false, isDefinition: false, scopeLine: 1282, flags: DIFlagPrototyped, isOptimized: true)
!857 = !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !19, file: !18, line: 1285, type: !623, isLocal: false, isDefinition: false, scopeLine: 1285, flags: DIFlagPrototyped, isOptimized: true)
!858 = !DISubprogram(name: "__set_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm", scope: !19, file: !18, line: 1288, type: !632, isLocal: false, isDefinition: false, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: true)
!859 = !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !19, file: !18, line: 1292, type: !632, isLocal: false, isDefinition: false, scopeLine: 1292, flags: DIFlagPrototyped, isOptimized: true)
!860 = !DISubprogram(name: "__get_long_cap", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv", scope: !19, file: !18, line: 1295, type: !623, isLocal: false, isDefinition: false, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: true)
!861 = !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !19, file: !18, line: 1299, type: !862, isLocal: false, isDefinition: false, scopeLine: 1299, flags: DIFlagPrototyped, isOptimized: true)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !305, !210}
!864 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !19, file: !18, line: 1302, type: !865, isLocal: false, isDefinition: false, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true)
!865 = !DISubroutineType(types: !866)
!866 = !{!210, !305}
!867 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !19, file: !18, line: 1305, type: !868, isLocal: false, isDefinition: false, scopeLine: 1305, flags: DIFlagPrototyped, isOptimized: true)
!868 = !DISubroutineType(types: !869)
!869 = !{!870, !575}
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !19, file: !18, line: 648, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !52, file: !35, line: 1512, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !873, file: !35, line: 1048, baseType: !83)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<char, char *, std::__1::allocator<char>, true>", scope: !7, file: !35, line: 1046, size: 8, elements: !60, templateParams: !874, identifier: "_ZTSNSt3__115__const_pointerIcPcNS_9allocatorIcEELb1EEE")
!874 = !{!62, !126, !127, !31}
!875 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !19, file: !18, line: 1308, type: !865, isLocal: false, isDefinition: false, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true)
!876 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !19, file: !18, line: 1311, type: !868, isLocal: false, isDefinition: false, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true)
!877 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !19, file: !18, line: 1314, type: !865, isLocal: false, isDefinition: false, scopeLine: 1314, flags: DIFlagPrototyped, isOptimized: true)
!878 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !19, file: !18, line: 1317, type: !868, isLocal: false, isDefinition: false, scopeLine: 1317, flags: DIFlagPrototyped, isOptimized: true)
!879 = !DISubprogram(name: "__zero", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv", scope: !19, file: !18, line: 1321, type: !303, isLocal: false, isDefinition: false, scopeLine: 1321, flags: DIFlagPrototyped, isOptimized: true)
!880 = !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !19, file: !18, line: 1334, type: !881, isLocal: false, isDefinition: false, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: true)
!881 = !DISubroutineType(types: !882)
!882 = !{!50, !50}
!883 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm", scope: !19, file: !18, line: 1340, type: !884, isLocal: false, isDefinition: false, scopeLine: 1340, flags: DIFlagPrototyped, isOptimized: true)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !305, !589, !50, !50}
!886 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !19, file: !18, line: 1342, type: !887, isLocal: false, isDefinition: false, scopeLine: 1342, flags: DIFlagPrototyped, isOptimized: true)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !305, !589, !50}
!889 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !19, file: !18, line: 1344, type: !629, isLocal: false, isDefinition: false, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: true)
!890 = !DISubprogram(name: "__grow_by", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm", scope: !19, file: !18, line: 1364, type: !891, isLocal: false, isDefinition: false, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: true)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !305, !50, !50, !50, !50, !50, !50}
!893 = !DISubprogram(name: "__grow_by_and_replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc", scope: !19, file: !18, line: 1366, type: !894, isLocal: false, isDefinition: false, scopeLine: 1366, flags: DIFlagPrototyped, isOptimized: true)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !305, !50, !50, !50, !50, !50, !50, !589}
!896 = !DISubprogram(name: "__erase_to_end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endEm", scope: !19, file: !18, line: 1371, type: !632, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: true)
!897 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_", scope: !19, file: !18, line: 1374, type: !313, isLocal: false, isDefinition: false, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: true)
!898 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb1EEE", scope: !19, file: !18, line: 1379, type: !899, isLocal: false, isDefinition: false, scopeLine: 1379, flags: DIFlagPrototyped, isOptimized: true)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !305, !315, !160}
!901 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb0EEE", scope: !19, file: !18, line: 1406, type: !902, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: true)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !305, !315, !177}
!904 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb0EEE", scope: !19, file: !18, line: 1411, type: !905, isLocal: false, isDefinition: false, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !305, !579, !177}
!907 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb1EEE", scope: !19, file: !18, line: 1414, type: !908, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: true)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !305, !579, !160}
!910 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_", scope: !19, file: !18, line: 1424, type: !772, isLocal: false, isDefinition: false, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: true)
!911 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb1EEE", scope: !19, file: !18, line: 1432, type: !908, isLocal: false, isDefinition: false, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: true)
!912 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb0EEE", scope: !19, file: !18, line: 1439, type: !905, isLocal: false, isDefinition: false, scopeLine: 1439, flags: DIFlagPrototyped, isOptimized: true)
!913 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv", scope: !19, file: !18, line: 1443, type: !303, isLocal: false, isDefinition: false, scopeLine: 1443, flags: DIFlagPrototyped, isOptimized: true)
!914 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm", scope: !19, file: !18, line: 1444, type: !632, isLocal: false, isDefinition: false, scopeLine: 1444, flags: DIFlagPrototyped, isOptimized: true)
!915 = !{!488, !489, !916}
!916 = !DITemplateTypeParameter(name: "_Allocator", type: !65)
!917 = !{!918}
!918 = !DIEnumerator(name: "__min_cap", value: 23)
!919 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 1332, size: 32, elements: !920, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt3_E")
!920 = !{!921}
!921 = !DIEnumerator(name: "__alignment", value: 16)
!922 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 711, size: 32, elements: !923, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt0_E")
!923 = !{!924}
!924 = !DIEnumerator(name: "__long_mask", value: 1)
!925 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 710, size: 32, elements: !926, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt_E")
!926 = !{!927}
!927 = !DIEnumerator(name: "__short_mask", value: 1)
!928 = !{!929, !91, !218, !50, !74, !930, !517, !32, !1019, !19}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "length_error", scope: !9, file: !931, line: 131, size: 128, elements: !932, vtableHolder: !937, identifier: "_ZTSSt12length_error")
!931 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdexcept", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!932 = !{!933, !1009, !1013, !1016}
!933 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !930, baseType: !934, flags: DIFlagPublic)
!934 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "logic_error", scope: !9, file: !931, line: 77, size: 128, elements: !935, vtableHolder: !937, identifier: "_ZTSSt11logic_error")
!935 = !{!936, !955, !982, !990, !993, !998, !1002, !1005}
!936 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !934, baseType: !937, flags: DIFlagPublic)
!937 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !9, file: !938, line: 97, size: 64, elements: !939, vtableHolder: !937, identifier: "_ZTSSt9exception")
!938 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/exception", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!939 = !{!940, !945, !949, !950}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$exception", scope: !938, file: !938, baseType: !941, size: 64, flags: DIFlagArtificial)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!252}
!945 = !DISubprogram(name: "exception", scope: !937, file: !938, line: 100, type: !946, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!949 = !DISubprogram(name: "~exception", scope: !937, file: !938, line: 101, type: !946, isLocal: false, isDefinition: false, scopeLine: 101, containingType: !937, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!950 = !DISubprogram(name: "what", linkageName: "_ZNKSt9exception4whatEv", scope: !937, file: !938, line: 102, type: !951, isLocal: false, isDefinition: false, scopeLine: 102, containingType: !937, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!951 = !DISubroutineType(types: !952)
!952 = !{!84, !953}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !934, file: !931, line: 81, baseType: !956, size: 64, offset: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__libcpp_refstring", scope: !7, file: !931, line: 58, size: 64, elements: !957, identifier: "_ZTSNSt3__118__libcpp_refstringE")
!957 = !{!958, !959, !964, !968, !972, !976, !979}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "__imp_", scope: !956, file: !931, line: 60, baseType: !84, size: 64)
!959 = !DISubprogram(name: "__uses_refcount", linkageName: "_ZNKSt3__118__libcpp_refstring15__uses_refcountEv", scope: !956, file: !931, line: 62, type: !960, isLocal: false, isDefinition: false, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true)
!960 = !DISubroutineType(types: !961)
!961 = !{!32, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!964 = !DISubprogram(name: "__libcpp_refstring", scope: !956, file: !931, line: 64, type: !965, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !967, !84}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!968 = !DISubprogram(name: "__libcpp_refstring", scope: !956, file: !931, line: 65, type: !969, isLocal: false, isDefinition: false, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !967, !971}
!971 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !963, size: 64)
!972 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118__libcpp_refstringaSERKS0_", scope: !956, file: !931, line: 66, type: !973, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!973 = !DISubroutineType(types: !974)
!974 = !{!975, !967, !971}
!975 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !956, size: 64)
!976 = !DISubprogram(name: "~__libcpp_refstring", scope: !956, file: !931, line: 67, type: !977, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !967}
!979 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__118__libcpp_refstring5c_strEv", scope: !956, file: !931, line: 69, type: !980, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!980 = !DISubroutineType(types: !981)
!981 = !{!84, !962}
!982 = !DISubprogram(name: "logic_error", scope: !934, file: !931, line: 83, type: !983, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !985, !986}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!986 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !7, file: !989, line: 194, baseType: !19)
!989 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iosfwd", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!990 = !DISubprogram(name: "logic_error", scope: !934, file: !931, line: 84, type: !991, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !985, !84}
!993 = !DISubprogram(name: "logic_error", scope: !934, file: !931, line: 86, type: !994, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !985, !996}
!996 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!998 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11logic_erroraSERKS_", scope: !934, file: !931, line: 87, type: !999, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!1001, !985, !996}
!1001 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !934, size: 64)
!1002 = !DISubprogram(name: "~logic_error", scope: !934, file: !931, line: 89, type: !1003, isLocal: false, isDefinition: false, scopeLine: 89, containingType: !934, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !985}
!1005 = !DISubprogram(name: "what", linkageName: "_ZNKSt11logic_error4whatEv", scope: !934, file: !931, line: 91, type: !1006, isLocal: false, isDefinition: false, scopeLine: 91, containingType: !934, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!84, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1009 = !DISubprogram(name: "length_error", scope: !930, file: !931, line: 135, type: !1010, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012, !986}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1013 = !DISubprogram(name: "length_error", scope: !930, file: !931, line: 136, type: !1014, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !1012, !84}
!1016 = !DISubprogram(name: "~length_error", scope: !930, file: !931, line: 138, type: !1017, isLocal: false, isDefinition: false, scopeLine: 138, containingType: !930, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !1012}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !1021, line: 474, size: 128, elements: !1022, templateParams: !1721, identifier: "_ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!1021 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1022 = !{!1023, !1672, !1673, !1679, !1683, !1710, !1718}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "base_", scope: !1020, file: !1021, line: 478, baseType: !1024, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "base", scope: !1020, file: !1021, line: 476, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_impl<std::__1::__tuple_indices<0, 1>, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !1021, line: 369, size: 128, elements: !1026, templateParams: !1659, identifier: "_ZTSNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEE")
!1026 = !{!1027, !1596, !1636, !1640, !1645, !1649, !1653, !1656}
!1027 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1025, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, false>", scope: !7, file: !1021, line: 170, size: 64, elements: !1029, templateParams: !1593, identifier: "_ZTSNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEE")
!1029 = !{!1030, !1565, !1572, !1575, !1578, !1582, !1585, !1588}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1028, file: !1021, line: 172, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !35, line: 2334, size: 64, elements: !1032, templateParams: !1537, identifier: "_ZTSNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEE")
!1032 = !{!1033, !1503, !1508, !1512, !1515, !1521, !1531, !1542, !1543, !1548, !1553, !1556, !1559, !1562}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !1031, file: !35, line: 2344, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !35, line: 2144, size: 64, elements: !1035, templateParams: !1500, identifier: "_ZTSNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEE")
!1035 = !{!1036, !1446, !1481, !1485, !1490, !1493, !1496}
!1036 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1034, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::__thread_struct *, 0, false>", scope: !7, file: !35, line: 2076, size: 64, elements: !1038, templateParams: !1444, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE")
!1038 = !{!1039, !1427, !1431, !1436}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !1037, file: !35, line: 2105, baseType: !1040, size: 64, flags: DIFlagPrivate)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct", scope: !7, file: !1042, line: 123, size: 64, elements: !1043, identifier: "_ZTSNSt3__115__thread_structE")
!1042 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1043 = !{!1044, !1047, !1053, !1057, !1060, !1061, !1422}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__p_", scope: !1041, file: !1042, line: 125, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct_imp", scope: !7, file: !1042, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__119__thread_struct_impE")
!1047 = !DISubprogram(name: "__thread_struct", scope: !1041, file: !1042, line: 127, type: !1048, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1051 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1053 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115__thread_structaSERKS0_", scope: !1041, file: !1042, line: 128, type: !1054, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056, !1050, !1051}
!1056 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1041, size: 64)
!1057 = !DISubprogram(name: "__thread_struct", scope: !1041, file: !1042, line: 130, type: !1058, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !1050}
!1060 = !DISubprogram(name: "~__thread_struct", scope: !1041, file: !1042, line: 131, type: !1058, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1061 = !DISubprogram(name: "notify_all_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE", scope: !1041, file: !1042, line: 133, type: !1062, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1050, !1064, !1421}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "condition_variable", scope: !7, file: !1066, line: 281, size: 384, elements: !1067, identifier: "_ZTSNSt3__118condition_variableE")
!1066 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1067 = !{!1068, !1082, !1086, !1087, !1092, !1096, !1097, !1098, !1203, !1208}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !1065, file: !1066, line: 284, baseType: !1069, size: 384)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !7, file: !1070, line: 59, baseType: !1071)
!1070 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !1072, line: 30, baseType: !1073)
!1072 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !1074, line: 110, baseType: !1075)
!1074 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_cond_t", file: !1074, line: 68, size: 384, elements: !1076, identifier: "_ZTS22_opaque_pthread_cond_t")
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1075, file: !1074, line: 69, baseType: !206, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1075, file: !1074, line: 70, baseType: !1079, size: 320, offset: 64)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 320, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 40)
!1082 = !DISubprogram(name: "condition_variable", scope: !1065, file: !1066, line: 292, type: !1083, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1086 = !DISubprogram(name: "~condition_variable", scope: !1065, file: !1066, line: 296, type: !1083, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1087 = !DISubprogram(name: "condition_variable", scope: !1065, file: !1066, line: 299, type: !1088, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1085, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1065)
!1092 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118condition_variableaSERKS0_", scope: !1065, file: !1066, line: 300, type: !1093, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!1095, !1085, !1090}
!1095 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1065, size: 64)
!1096 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt3__118condition_variable10notify_oneEv", scope: !1065, file: !1066, line: 303, type: !1083, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1097 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt3__118condition_variable10notify_allEv", scope: !1065, file: !1066, line: 304, type: !1083, isLocal: false, isDefinition: false, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1098 = !DISubprogram(name: "wait", linkageName: "_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE", scope: !1065, file: !1066, line: 306, type: !1099, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1085, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_lock<std::__1::mutex>", scope: !7, file: !1066, line: 110, size: 128, elements: !1103, templateParams: !1201, identifier: "_ZTSNSt3__111unique_lockINS_5mutexEEE")
!1103 = !{!1104, !1145, !1146, !1150, !1154, !1158, !1162, !1166, !1167, !1172, !1175, !1179, !1182, !1183, !1186, !1187, !1190, !1193, !1197, !1198}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !1102, file: !1066, line: 116, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !1102, file: !1066, line: 113, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "mutex", scope: !7, file: !1066, line: 36, size: 512, elements: !1108, identifier: "_ZTSNSt3__15mutexE")
!1108 = !{!1109, !1121, !1125, !1126, !1131, !1135, !1136, !1139, !1140}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !1107, file: !1066, line: 39, baseType: !1110, size: 512)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_mutex_t", scope: !7, file: !1070, line: 53, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !1112, line: 30, baseType: !1113)
!1112 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !1074, line: 113, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !1074, line: 78, size: 512, elements: !1115, identifier: "_ZTS23_opaque_pthread_mutex_t")
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1114, file: !1074, line: 79, baseType: !206, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1114, file: !1074, line: 80, baseType: !1118, size: 448, offset: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 448, elements: !1119)
!1119 = !{!1120}
!1120 = !DISubrange(count: 56)
!1121 = !DISubprogram(name: "mutex", scope: !1107, file: !1066, line: 47, type: !1122, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1125 = !DISubprogram(name: "~mutex", scope: !1107, file: !1066, line: 51, type: !1122, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1126 = !DISubprogram(name: "mutex", scope: !1107, file: !1066, line: 54, type: !1127, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !1124, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1131 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15mutexaSERKS0_", scope: !1107, file: !1066, line: 55, type: !1132, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1134, !1124, !1129}
!1134 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1107, size: 64)
!1135 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__15mutex4lockEv", scope: !1107, file: !1066, line: 58, type: !1122, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1136 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__15mutex8try_lockEv", scope: !1107, file: !1066, line: 59, type: !1137, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!32, !1124}
!1139 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__15mutex6unlockEv", scope: !1107, file: !1066, line: 60, type: !1122, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1140 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__15mutex13native_handleEv", scope: !1107, file: !1066, line: 63, type: !1141, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!1143, !1124}
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1107, file: !1066, line: 62, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__owns_", scope: !1102, file: !1066, line: 117, baseType: !32, size: 8, offset: 64)
!1146 = !DISubprogram(name: "unique_lock", scope: !1102, file: !1066, line: 121, type: !1147, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1150 = !DISubprogram(name: "unique_lock", scope: !1102, file: !1066, line: 123, type: !1151, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !1149, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1106, size: 64)
!1154 = !DISubprogram(name: "unique_lock", scope: !1102, file: !1066, line: 126, type: !1155, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1149, !1153, !1157}
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defer_lock_t", scope: !7, file: !1066, line: 66, size: 8, elements: !60, identifier: "_ZTSNSt3__112defer_lock_tE")
!1158 = !DISubprogram(name: "unique_lock", scope: !1102, file: !1066, line: 129, type: !1159, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1149, !1153, !1161}
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "try_to_lock_t", scope: !7, file: !1066, line: 67, size: 8, elements: !60, identifier: "_ZTSNSt3__113try_to_lock_tE")
!1162 = !DISubprogram(name: "unique_lock", scope: !1102, file: !1066, line: 132, type: !1163, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !1149, !1153, !1165}
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adopt_lock_t", scope: !7, file: !1066, line: 68, size: 8, elements: !60, identifier: "_ZTSNSt3__112adopt_lock_tE")
!1166 = !DISubprogram(name: "~unique_lock", scope: !1102, file: !1066, line: 143, type: !1147, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1167 = !DISubprogram(name: "unique_lock", scope: !1102, file: !1066, line: 150, type: !1168, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1149, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1172 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSERKS2_", scope: !1102, file: !1066, line: 151, type: !1173, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1101, !1149, !1170}
!1175 = !DISubprogram(name: "unique_lock", scope: !1102, file: !1066, line: 156, type: !1176, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1149, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1102, size: 64)
!1179 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSEOS2_", scope: !1102, file: !1066, line: 160, type: !1180, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1101, !1149, !1178}
!1182 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4lockEv", scope: !1102, file: !1066, line: 173, type: !1147, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1183 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE8try_lockEv", scope: !1102, file: !1066, line: 174, type: !1184, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!32, !1149}
!1186 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE6unlockEv", scope: !1102, file: !1066, line: 181, type: !1147, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1187 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4swapERS2_", scope: !1102, file: !1066, line: 184, type: !1188, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !1149, !1101}
!1190 = !DISubprogram(name: "release", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE7releaseEv", scope: !1102, file: !1066, line: 190, type: !1191, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1105, !1149}
!1193 = !DISubprogram(name: "owns_lock", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE9owns_lockEv", scope: !1102, file: !1066, line: 199, type: !1194, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!32, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1197 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEEcvbEv", scope: !1102, file: !1066, line: 202, type: !1194, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1198 = !DISubprogram(name: "mutex", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE5mutexEv", scope: !1102, file: !1066, line: 204, type: !1199, isLocal: false, isDefinition: false, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!1105, !1196}
!1201 = !{!1202}
!1202 = !DITemplateTypeParameter(name: "_Mutex", type: !1107)
!1203 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__118condition_variable13native_handleEv", scope: !1065, file: !1066, line: 338, type: !1204, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1206, !1085}
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1065, file: !1066, line: 337, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1208 = !DISubprogram(name: "__do_timed_wait", linkageName: "_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE", scope: !1065, file: !1066, line: 341, type: !1209, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1085, !1101, !1211}
!1211 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !1213, file: !1212, line: 831, size: 64, elements: !1214, templateParams: !1309, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE")
!1212 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1213 = !DINamespace(name: "chrono", scope: !7, file: !1212, line: 316)
!1214 = !{!1215, !1286, !1290, !1295, !1300, !1304, !1305, !1308}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !1211, file: !1212, line: 841, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !1211, file: !1212, line: 837, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000000> >", scope: !1213, file: !1212, line: 488, size: 64, elements: !1218, templateParams: !1268, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE")
!1218 = !{!1219, !1222, !1226, !1231, !1240, !1241, !1245, !1248, !1249, !1250, !1254, !1255, !1260, !1261, !1262, !1263, !1266, !1267}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1217, file: !1212, line: 528, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1217, file: !1212, line: 525, baseType: !1221)
!1221 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1222 = !DISubprogram(name: "duration", scope: !1217, file: !1212, line: 533, type: !1223, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1226 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv", scope: !1217, file: !1212, line: 564, type: !1227, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!1220, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1231 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpsEv", scope: !1217, file: !1212, line: 568, type: !1232, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1234, !1229}
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1235, file: !1212, line: 343, baseType: !1217)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !7, file: !1212, line: 339, size: 8, elements: !60, templateParams: !1236, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEES5_EEE")
!1236 = !{!1237}
!1237 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1238)
!1238 = !{!1239, !1239}
!1239 = !DITemplateTypeParameter(type: !1217)
!1240 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEngEv", scope: !1217, file: !1212, line: 569, type: !1232, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1241 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv", scope: !1217, file: !1212, line: 570, type: !1242, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!1244, !1225}
!1244 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1217, size: 64)
!1245 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEi", scope: !1217, file: !1212, line: 571, type: !1246, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1217, !1225, !252}
!1248 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEv", scope: !1217, file: !1212, line: 572, type: !1242, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1249 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEi", scope: !1217, file: !1212, line: 573, type: !1246, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1250 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpLERKS4_", scope: !1217, file: !1212, line: 575, type: !1251, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1244, !1225, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1230, size: 64)
!1254 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmIERKS4_", scope: !1217, file: !1212, line: 576, type: !1251, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1255 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmLERKx", scope: !1217, file: !1212, line: 578, type: !1256, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!1244, !1225, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!1260 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEdVERKx", scope: !1217, file: !1212, line: 579, type: !1256, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1261 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKx", scope: !1217, file: !1212, line: 580, type: !1256, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1262 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKS4_", scope: !1217, file: !1212, line: 581, type: !1251, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1263 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE4zeroEv", scope: !1217, file: !1212, line: 585, type: !1264, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1217}
!1266 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3minEv", scope: !1217, file: !1212, line: 586, type: !1264, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1267 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv", scope: !1217, file: !1212, line: 587, type: !1264, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1268 = !{!1269, !1270}
!1269 = !DITemplateTypeParameter(name: "_Rep", type: !1221)
!1270 = !DITemplateTypeParameter(name: "_Period", type: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000000>", scope: !7, file: !1272, line: 247, size: 8, elements: !1273, templateParams: !1283, identifier: "_ZTSNSt3__15ratioILl1ELl1000000000EEE")
!1272 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1273 = !{!1274, !1278, !1279, !1280, !1281, !1282}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1271, file: !1272, line: 252, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1277, line: 32, baseType: !206)
!1277 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1271, file: !1272, line: 253, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1000000000)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1271, file: !1272, line: 254, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1271, file: !1272, line: 255, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1271, file: !1272, line: 257, baseType: !1275, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1271, file: !1272, line: 258, baseType: !1275, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000000)
!1283 = !{!1284, !1285}
!1284 = !DITemplateValueParameter(name: "_Num", type: !206, value: i64 1)
!1285 = !DITemplateValueParameter(name: "_Den", type: !206, value: i64 1000000000)
!1286 = !DISubprogram(name: "time_point", scope: !1211, file: !1212, line: 844, type: !1287, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1290 = !DISubprogram(name: "time_point", scope: !1211, file: !1212, line: 845, type: !1291, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1289, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1295 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv", scope: !1211, file: !1212, line: 859, type: !1296, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1216, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1300 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEpLERKS6_", scope: !1211, file: !1212, line: 863, type: !1301, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1303, !1289, !1293}
!1303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1211, size: 64)
!1304 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEmIERKS6_", scope: !1211, file: !1212, line: 864, type: !1301, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1305 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3minEv", scope: !1211, file: !1212, line: 868, type: !1306, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!1211}
!1308 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3maxEv", scope: !1211, file: !1212, line: 869, type: !1306, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1309 = !{!1310, !1420}
!1310 = !DITemplateTypeParameter(name: "_Clock", type: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "system_clock", scope: !1213, file: !1212, line: 1047, size: 8, elements: !1312, identifier: "_ZTSNSt3__16chrono12system_clockE")
!1312 = !{!1313, !1314, !1409, !1417}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "is_steady", scope: !1311, file: !1212, line: 1054, baseType: !164, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 false)
!1314 = !DISubprogram(name: "now", linkageName: "_ZNSt3__16chrono12system_clock3nowEv", scope: !1311, file: !1212, line: 1056, type: !1315, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_point", scope: !1311, file: !1212, line: 1053, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !1213, file: !1212, line: 831, size: 64, elements: !1319, templateParams: !1407, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE")
!1319 = !{!1320, !1384, !1388, !1393, !1398, !1402, !1403, !1406}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !1318, file: !1212, line: 841, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !1318, file: !1212, line: 837, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000> >", scope: !1213, file: !1212, line: 488, size: 64, elements: !1323, templateParams: !1372, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEE")
!1323 = !{!1324, !1326, !1330, !1335, !1344, !1345, !1349, !1352, !1353, !1354, !1358, !1359, !1364, !1365, !1366, !1367, !1370, !1371}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1322, file: !1212, line: 528, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1322, file: !1212, line: 525, baseType: !1221)
!1326 = !DISubprogram(name: "duration", scope: !1322, file: !1212, line: 533, type: !1327, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1330 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv", scope: !1322, file: !1212, line: 564, type: !1331, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1325, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1335 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpsEv", scope: !1322, file: !1212, line: 568, type: !1336, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1338, !1333}
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1339, file: !1212, line: 343, baseType: !1322)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !7, file: !1212, line: 339, size: 8, elements: !60, templateParams: !1340, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEES5_EEE")
!1340 = !{!1341}
!1341 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1342)
!1342 = !{!1343, !1343}
!1343 = !DITemplateTypeParameter(type: !1322)
!1344 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEngEv", scope: !1322, file: !1212, line: 569, type: !1336, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1345 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEv", scope: !1322, file: !1212, line: 570, type: !1346, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1348, !1329}
!1348 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1322, size: 64)
!1349 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEi", scope: !1322, file: !1212, line: 571, type: !1350, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1322, !1329, !252}
!1352 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEv", scope: !1322, file: !1212, line: 572, type: !1346, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1353 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEi", scope: !1322, file: !1212, line: 573, type: !1350, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1354 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpLERKS4_", scope: !1322, file: !1212, line: 575, type: !1355, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1348, !1329, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1334, size: 64)
!1358 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmIERKS4_", scope: !1322, file: !1212, line: 576, type: !1355, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1359 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmLERKx", scope: !1322, file: !1212, line: 578, type: !1360, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1348, !1329, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1364 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEdVERKx", scope: !1322, file: !1212, line: 579, type: !1360, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1365 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKx", scope: !1322, file: !1212, line: 580, type: !1360, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1366 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKS4_", scope: !1322, file: !1212, line: 581, type: !1355, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1367 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE4zeroEv", scope: !1322, file: !1212, line: 585, type: !1368, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1322}
!1370 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3minEv", scope: !1322, file: !1212, line: 586, type: !1368, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1371 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3maxEv", scope: !1322, file: !1212, line: 587, type: !1368, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1372 = !{!1269, !1373}
!1373 = !DITemplateTypeParameter(name: "_Period", type: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000>", scope: !7, file: !1272, line: 247, size: 8, elements: !1375, templateParams: !1382, identifier: "_ZTSNSt3__15ratioILl1ELl1000000EEE")
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1374, file: !1272, line: 252, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1374, file: !1272, line: 253, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1000000)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1374, file: !1272, line: 254, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1374, file: !1272, line: 255, baseType: !1275, flags: DIFlagStaticMember, extraData: i64 1)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1374, file: !1272, line: 257, baseType: !1275, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1374, file: !1272, line: 258, baseType: !1275, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000)
!1382 = !{!1284, !1383}
!1383 = !DITemplateValueParameter(name: "_Den", type: !206, value: i64 1000000)
!1384 = !DISubprogram(name: "time_point", scope: !1318, file: !1212, line: 844, type: !1385, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1388 = !DISubprogram(name: "time_point", scope: !1318, file: !1212, line: 845, type: !1389, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1387, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1393 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochEv", scope: !1318, file: !1212, line: 859, type: !1394, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1321, !1396}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1318)
!1398 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEpLERKS6_", scope: !1318, file: !1212, line: 863, type: !1399, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1401, !1387, !1391}
!1401 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1318, size: 64)
!1402 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEmIERKS6_", scope: !1318, file: !1212, line: 864, type: !1399, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1403 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3minEv", scope: !1318, file: !1212, line: 868, type: !1404, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!1318}
!1406 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3maxEv", scope: !1318, file: !1212, line: 869, type: !1404, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1407 = !{!1310, !1408}
!1408 = !DITemplateTypeParameter(name: "_Duration", type: !1322)
!1409 = !DISubprogram(name: "to_time_t", linkageName: "_ZNSt3__16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE", scope: !1311, file: !1212, line: 1057, type: !1410, isLocal: false, isDefinition: false, scopeLine: 1057, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1412, !1415}
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1413, line: 30, baseType: !1414)
!1413 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !95, line: 120, baseType: !206)
!1415 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1317)
!1417 = !DISubprogram(name: "from_time_t", linkageName: "_ZNSt3__16chrono12system_clock11from_time_tEl", scope: !1311, file: !1212, line: 1058, type: !1418, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1317, !1412}
!1420 = !DITemplateTypeParameter(name: "_Duration", type: !1217)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1422 = !DISubprogram(name: "__make_ready_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct27__make_ready_at_thread_exitEPNS_17__assoc_sub_stateE", scope: !1041, file: !1042, line: 134, type: !1423, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1050, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_class_type, name: "__assoc_sub_state", scope: !7, file: !1042, line: 119, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__117__assoc_sub_stateE")
!1427 = !DISubprogram(name: "__compressed_pair_elem", scope: !1037, file: !35, line: 2082, type: !1428, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1431 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1037, file: !35, line: 2101, type: !1432, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1434, !1430}
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1037, file: !35, line: 2078, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1040, size: 64)
!1436 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1037, file: !35, line: 2102, type: !1437, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !1442}
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1037, file: !35, line: 2079, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1444 = !{!1445, !251, !253}
!1445 = !DITemplateTypeParameter(name: "_Tp", type: !1040)
!1446 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1034, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, 1, true>", scope: !7, file: !35, line: 2109, size: 8, elements: !1448, templateParams: !1479, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEE")
!1448 = !{!1449, !1463, !1467, !1472}
!1449 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1447, baseType: !1450, flags: DIFlagPrivate)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::__thread_struct>", scope: !7, file: !35, line: 2253, size: 8, elements: !1451, templateParams: !1461, identifier: "_ZTSNSt3__114default_deleteINS_15__thread_structEEE")
!1451 = !{!1452, !1456}
!1452 = !DISubprogram(name: "default_delete", scope: !1450, file: !35, line: 2257, type: !1453, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1456 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !1450, file: !35, line: 2267, type: !1457, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !1459, !1040}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1461 = !{!1462}
!1462 = !DITemplateTypeParameter(name: "_Tp", type: !1041)
!1463 = !DISubprogram(name: "__compressed_pair_elem", scope: !1447, file: !35, line: 2116, type: !1464, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1467 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !1447, file: !35, line: 2136, type: !1468, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1470, !1466}
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1447, file: !35, line: 2111, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1450, size: 64)
!1472 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !1447, file: !35, line: 2137, type: !1473, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1475, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1447, file: !35, line: 2112, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1460, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!1479 = !{!1480, !276, !277}
!1480 = !DITemplateTypeParameter(name: "_Tp", type: !1450)
!1481 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1034, file: !35, line: 2212, type: !1482, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!1434, !1484}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1485 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1034, file: !35, line: 2217, type: !1486, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1439, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1490 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !1034, file: !35, line: 2222, type: !1491, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1470, !1484}
!1493 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !1034, file: !35, line: 2227, type: !1494, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1475, !1488}
!1496 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE4swapERS5_", scope: !1034, file: !35, line: 2232, type: !1497, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1484, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1034, size: 64)
!1500 = !{!1501, !1502}
!1501 = !DITemplateTypeParameter(name: "_T1", type: !1040)
!1502 = !DITemplateTypeParameter(name: "_T2", type: !1450)
!1503 = !DISubprogram(name: "unique_ptr", scope: !1031, file: !35, line: 2427, type: !1504, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1507 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1031, size: 64)
!1508 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEOS4_", scope: !1031, file: !35, line: 2450, type: !1509, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!1511, !1506, !1507}
!1511 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1031, size: 64)
!1512 = !DISubprogram(name: "~unique_ptr", scope: !1031, file: !35, line: 2539, type: !1513, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1506}
!1515 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEDn", scope: !1031, file: !35, line: 2542, type: !1516, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1511, !1506, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !9, file: !1519, line: 57, baseType: !1520)
!1519 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1520 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!1521 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !1031, file: !35, line: 2549, type: !1522, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1524, !1529}
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1525, file: !138, line: 1084, baseType: !1526)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::__thread_struct>", scope: !7, file: !138, line: 1083, size: 8, elements: !60, templateParams: !1461, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_15__thread_structEEE")
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1527, file: !138, line: 1081, baseType: !1056)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::__thread_struct, true>", scope: !7, file: !138, line: 1081, size: 8, elements: !60, templateParams: !1528, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_15__thread_structELb1EEE")
!1528 = !{!1462, !31}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1031)
!1531 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEptEv", scope: !1031, file: !35, line: 2553, type: !1532, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1534, !1529}
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1031, file: !35, line: 2338, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1536, file: !35, line: 1031, baseType: !1539)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !35, line: 1029, size: 8, elements: !60, templateParams: !1537, identifier: "_ZTSNSt3__114__pointer_typeINS_15__thread_structENS_14default_deleteIS1_EEEE")
!1537 = !{!1462, !1538}
!1538 = !DITemplateTypeParameter(name: "_Dp", type: !1450)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1540, file: !35, line: 1023, baseType: !1040)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>, false>", scope: !115, file: !35, line: 1021, size: 8, elements: !60, templateParams: !1541, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_15__thread_structENS_14default_deleteIS2_EELb0EEE")
!1541 = !{!1462, !1538, !128}
!1542 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE3getEv", scope: !1031, file: !35, line: 2557, type: !1532, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1543 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !1031, file: !35, line: 2561, type: !1544, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1546, !1506}
!1546 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !1031, file: !35, line: 2337, baseType: !1450)
!1548 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !1031, file: !35, line: 2565, type: !1549, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1551, !1529}
!1551 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1553 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEcvbEv", scope: !1031, file: !35, line: 2569, type: !1554, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!32, !1529}
!1556 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !1031, file: !35, line: 2574, type: !1557, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1534, !1506}
!1559 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !1031, file: !35, line: 2581, type: !1560, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !1506, !1534}
!1562 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE4swapERS4_", scope: !1031, file: !35, line: 2589, type: !1563, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1506, !1511}
!1565 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEaSERKS6_", scope: !1028, file: !1021, line: 188, type: !1566, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1028, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1570 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1572 = !DISubprogram(name: "__tuple_leaf", scope: !1028, file: !1021, line: 190, type: !1573, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1569}
!1575 = !DISubprogram(name: "__tuple_leaf", scope: !1028, file: !1021, line: 251, type: !1576, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1569, !1570}
!1578 = !DISubprogram(name: "__tuple_leaf", scope: !1028, file: !1021, line: 252, type: !1579, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1569, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1028, size: 64)
!1582 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE4swapERS6_", scope: !1028, file: !1021, line: 264, type: !1583, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!252, !1569, !1568}
!1585 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !1028, file: !1021, line: 270, type: !1586, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1511, !1569}
!1588 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !1028, file: !1021, line: 271, type: !1589, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1530, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1593 = !{!1594, !1595, !128}
!1594 = !DITemplateValueParameter(name: "_Ip", type: !96, value: i64 0)
!1595 = !DITemplateTypeParameter(name: "_Hp", type: !1031)
!1596 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1025, baseType: !1597, offset: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<1, void (*)(), false>", scope: !7, file: !1021, line: 170, size: 64, elements: !1598, templateParams: !1633, identifier: "_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE")
!1598 = !{!1599, !1603, !1610, !1613, !1616, !1620, !1623, !1627}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1597, file: !1021, line: 172, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null}
!1603 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEaSERKS3_", scope: !1597, file: !1021, line: 188, type: !1604, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1597, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1608 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1610 = !DISubprogram(name: "__tuple_leaf", scope: !1597, file: !1021, line: 190, type: !1611, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1607}
!1613 = !DISubprogram(name: "__tuple_leaf", scope: !1597, file: !1021, line: 251, type: !1614, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1607, !1608}
!1616 = !DISubprogram(name: "__tuple_leaf", scope: !1597, file: !1021, line: 252, type: !1617, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1607, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1597, size: 64)
!1620 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE4swapERS3_", scope: !1597, file: !1021, line: 264, type: !1621, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!252, !1607, !1606}
!1623 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !1597, file: !1021, line: 270, type: !1624, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1626, !1607}
!1626 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1600, size: 64)
!1627 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !1597, file: !1021, line: 271, type: !1628, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1630, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1633 = !{!1634, !1635, !128}
!1634 = !DITemplateValueParameter(name: "_Ip", type: !96, value: i64 1)
!1635 = !DITemplateTypeParameter(name: "_Hp", type: !1600)
!1636 = !DISubprogram(name: "__tuple_impl", scope: !1025, file: !1021, line: 373, type: !1637, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: true)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1640 = !DISubprogram(name: "__tuple_impl", scope: !1025, file: !1021, line: 444, type: !1641, isLocal: false, isDefinition: false, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1639, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1645 = !DISubprogram(name: "__tuple_impl", scope: !1025, file: !1021, line: 445, type: !1646, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1639, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1025, size: 64)
!1649 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSERKSA_", scope: !1025, file: !1021, line: 449, type: !1650, isLocal: false, isDefinition: false, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1652, !1639, !1643}
!1652 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1025, size: 64)
!1653 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSEOSA_", scope: !1025, file: !1021, line: 457, type: !1654, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1652, !1639, !1648}
!1656 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEE4swapERSA_", scope: !1025, file: !1021, line: 464, type: !1657, isLocal: false, isDefinition: false, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1639, !1652}
!1659 = !{!1660, !1668}
!1660 = !DITemplateTypeParameter(name: "_Indx", type: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<0, 1>", scope: !7, file: !1662, line: 90, size: 8, elements: !60, templateParams: !1663, identifier: "_ZTSNSt3__115__tuple_indicesIJLm0ELm1EEEE")
!1662 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1663 = !{!1664}
!1664 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !1665)
!1665 = !{!1666, !1667}
!1666 = !DITemplateValueParameter(type: !96, value: i64 0)
!1667 = !DITemplateValueParameter(type: !96, value: i64 1)
!1668 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1669)
!1669 = !{!1670, !1671}
!1670 = !DITemplateTypeParameter(type: !1031)
!1671 = !DITemplateTypeParameter(type: !1600)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_EnableImplicitReducedArityExtension", scope: !1020, file: !1021, line: 483, baseType: !164, flags: DIFlagStaticMember, extraData: i1 false)
!1673 = !DISubprogram(name: "tuple", scope: !1020, file: !1021, line: 620, type: !1674, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1677 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1679 = !DISubprogram(name: "tuple", scope: !1020, file: !1021, line: 621, type: !1680, isLocal: false, isDefinition: false, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !1676, !1682}
!1682 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1020, size: 64)
!1683 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSERKNS_5__natE", scope: !1020, file: !1021, line: 876, type: !1684, isLocal: false, isDefinition: false, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1686, !1676, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1020, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1690, file: !138, line: 414, baseType: !1694)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !138, line: 414, size: 8, elements: !60, templateParams: !1691, identifier: "_ZTSNSt3__111conditionalILb0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!1691 = !{!141, !1692, !1693}
!1692 = !DITemplateTypeParameter(name: "_If", type: !1020)
!1693 = !DITemplateTypeParameter(name: "_Then", type: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !7, file: !138, line: 1584, size: 8, elements: !1695, identifier: "_ZTSNSt3__15__natE")
!1695 = !{!1696, !1700, !1705, !1709}
!1696 = !DISubprogram(name: "__nat", scope: !1694, file: !138, line: 1587, type: !1697, isLocal: false, isDefinition: false, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: true)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1700 = !DISubprogram(name: "__nat", scope: !1694, file: !138, line: 1588, type: !1701, isLocal: false, isDefinition: false, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: true)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !1699, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1705 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15__nataSERKS0_", scope: !1694, file: !138, line: 1589, type: !1706, isLocal: false, isDefinition: false, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: true)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1708, !1699, !1703}
!1708 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1694, size: 64)
!1709 = !DISubprogram(name: "~__nat", scope: !1694, file: !138, line: 1590, type: !1697, isLocal: false, isDefinition: false, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: true)
!1710 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSEOS8_", scope: !1020, file: !1021, line: 884, type: !1711, isLocal: false, isDefinition: false, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1686, !1676, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1715, file: !138, line: 412, baseType: !1020)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !138, line: 412, size: 8, elements: !60, templateParams: !1716, identifier: "_ZTSNSt3__111conditionalILb1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!1716 = !{!1717, !1692, !1693}
!1717 = !DITemplateValueParameter(name: "_Bp", type: !32, value: i8 1)
!1718 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEE4swapERS8_", scope: !1020, file: !1021, line: 906, type: !1719, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1676, !1686}
!1721 = !{!1668}
!1722 = !{!0, !1723}
!1723 = !DIGlobalVariableExpression(var: !1724)
!1724 = distinct !DIGlobalVariable(name: "data", scope: !2, file: !3, line: 9, type: !252, isLocal: false, isDefinition: true)
!1725 = !{!1726, !1729, !1730, !1734, !1735, !1740, !1742, !1746, !1750, !1752, !1754, !1758, !1762, !1766, !1768, !1772, !1777, !1781, !1785, !1787, !1789, !1791, !1793, !1795, !1797, !1801, !1805, !1809, !1813, !1816, !1819, !1822, !1826, !1830, !1834, !1837, !1839, !1841, !1843, !1845, !1847, !1849, !1851, !1853, !1855, !1857, !1859, !1861, !1863, !1865, !1867, !1871, !1874, !1875, !1878, !1879, !1886, !1892, !1898, !1903, !1907, !1911, !1915, !1920, !1925, !1929, !1933, !1937, !1941, !1945, !1947, !1951, !1955, !1959, !1963, !1967, !1969, !1973, !1977, !1979, !1983, !1985, !1992, !1996, !2001, !2005, !2007, !2011, !2015, !2017, !2021, !2027, !2031, !2035, !2041, !2093, !2094, !2095, !2100, !2102, !2106, !2110, !2114, !2116, !2120, !2124, !2128, !2139, !2141, !2145, !2149, !2153, !2155, !2159, !2163, !2167, !2169, !2171, !2173, !2177, !2181, !2186, !2190, !2196, !2200, !2204, !2206, !2208, !2210, !2214, !2218, !2222, !2224, !2226, !2230, !2234, !2236, !2238, !2242, !2246, !2248, !2252, !2254, !2256, !2259, !2261, !2263, !2265, !2267, !2269, !2271, !2273, !2275, !2277, !2279, !2281, !2283, !2285, !2289, !2294, !2299, !2304, !2306, !2309, !2311, !2313, !2315, !2317, !2319, !2321, !2323, !2325, !2327, !2331, !2335, !2339, !2341, !2345, !2349, !2361, !2362, !2377, !2378, !2379, !2384, !2386, !2390, !2394, !2398, !2402, !2404, !2408, !2412, !2416, !2420, !2424, !2428, !2430, !2432, !2436, !2441, !2445, !2449, !2453, !2457, !2461, !2465, !2469, !2473, !2475, !2477, !2481, !2483, !2487, !2491, !2496, !2498, !2500, !2502, !2506, !2510, !2514, !2516, !2520, !2522, !2524, !2526, !2528, !2534, !2538, !2540, !2546, !2551, !2555, !2559, !2564, !2569, !2573, !2577, !2581, !2585, !2587, !2589, !2593, !2594, !2595, !2596, !2600, !2604, !2609, !2614, !2618, !2624, !2628, !2630}
!1726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1727, line: 49)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1728, line: 51, baseType: !206)
!1728 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !92, line: 50)
!1730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1731, line: 55)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !1732, line: 32, baseType: !1733)
!1732 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1733 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !92, line: 69)
!1735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1736, line: 70)
!1736 = !DISubprogram(name: "memcpy", scope: !1737, file: !1737, line: 72, type: !1738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1737 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!929, !929, !101, !92}
!1740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1741, line: 71)
!1741 = !DISubprogram(name: "memmove", scope: !1737, file: !1737, line: 73, type: !1738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1743, line: 72)
!1743 = !DISubprogram(name: "strcpy", scope: !1737, file: !1737, line: 79, type: !1744, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!75, !75, !84}
!1746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1747, line: 73)
!1747 = !DISubprogram(name: "strncpy", scope: !1737, file: !1737, line: 85, type: !1748, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!75, !75, !84, !92}
!1750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1751, line: 74)
!1751 = !DISubprogram(name: "strcat", scope: !1737, file: !1737, line: 75, type: !1744, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1753, line: 75)
!1753 = !DISubprogram(name: "strncat", scope: !1737, file: !1737, line: 83, type: !1748, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1755, line: 76)
!1755 = !DISubprogram(name: "memcmp", scope: !1737, file: !1737, line: 71, type: !1756, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!252, !101, !101, !92}
!1758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1759, line: 77)
!1759 = !DISubprogram(name: "strcmp", scope: !1737, file: !1737, line: 77, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!252, !84, !84}
!1762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1763, line: 78)
!1763 = !DISubprogram(name: "strncmp", scope: !1737, file: !1737, line: 84, type: !1764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!252, !84, !84, !92}
!1766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1767, line: 79)
!1767 = !DISubprogram(name: "strcoll", scope: !1737, file: !1737, line: 78, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1769, line: 80)
!1769 = !DISubprogram(name: "strxfrm", scope: !1737, file: !1737, line: 91, type: !1770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!92, !75, !84, !92}
!1772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1773, line: 81)
!1773 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !1774, file: !1774, line: 99, type: !1775, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1774 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!929, !929, !252, !92}
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1778, line: 82)
!1778 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !1774, file: !1774, line: 78, type: !1779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!75, !75, !252}
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1782, line: 83)
!1782 = !DISubprogram(name: "strcspn", scope: !1737, file: !1737, line: 80, type: !1783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!92, !84, !84}
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1786, line: 84)
!1786 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !1774, file: !1774, line: 85, type: !1744, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1788, line: 85)
!1788 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !1774, file: !1774, line: 92, type: !1779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1790, line: 86)
!1790 = !DISubprogram(name: "strspn", scope: !1737, file: !1737, line: 88, type: !1783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1792, line: 87)
!1792 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !1774, file: !1774, line: 106, type: !1744, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1794, line: 89)
!1794 = !DISubprogram(name: "strtok", scope: !1737, file: !1737, line: 90, type: !1744, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1796, line: 91)
!1796 = !DISubprogram(name: "memset", scope: !1737, file: !1737, line: 74, type: !1775, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1798, line: 92)
!1798 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !1737, file: !1737, line: 81, type: !1799, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!75, !252}
!1801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1802, line: 93)
!1802 = !DISubprogram(name: "strlen", scope: !1737, file: !1737, line: 82, type: !1803, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!92, !84}
!1805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1806, line: 153)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1807, line: 30, baseType: !1808)
!1807 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1808 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1810, line: 154)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1811, line: 30, baseType: !1812)
!1811 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1812 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1814, line: 155)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1815, line: 30, baseType: !252)
!1815 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1817, line: 156)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1818, line: 30, baseType: !1221)
!1818 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1820, line: 158)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1821, line: 31, baseType: !218)
!1821 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1823, line: 159)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1824, line: 31, baseType: !1825)
!1824 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1825 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1827, line: 160)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1828, line: 31, baseType: !1829)
!1828 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1829 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1831, line: 161)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1832, line: 31, baseType: !1833)
!1832 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1833 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1835, line: 163)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1836, line: 29, baseType: !1806)
!1836 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1838, line: 164)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1836, line: 30, baseType: !1810)
!1839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1840, line: 165)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1836, line: 31, baseType: !1814)
!1841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1842, line: 166)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1836, line: 32, baseType: !1817)
!1843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1844, line: 168)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1836, line: 33, baseType: !1820)
!1845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1846, line: 169)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1836, line: 34, baseType: !1823)
!1847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1848, line: 170)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1836, line: 35, baseType: !1827)
!1849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1850, line: 171)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1836, line: 36, baseType: !1831)
!1851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1852, line: 173)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1836, line: 40, baseType: !1806)
!1853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1854, line: 174)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1836, line: 41, baseType: !1810)
!1855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1856, line: 175)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1836, line: 42, baseType: !1814)
!1857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1858, line: 176)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1836, line: 43, baseType: !1817)
!1859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1860, line: 178)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1836, line: 44, baseType: !1820)
!1861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1862, line: 179)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1836, line: 45, baseType: !1823)
!1863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1864, line: 180)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1836, line: 46, baseType: !1827)
!1865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1866, line: 181)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1836, line: 47, baseType: !1831)
!1867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1868, line: 183)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1869, line: 30, baseType: !1870)
!1869 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !95, line: 49, baseType: !206)
!1871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1872, line: 184)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1873, line: 30, baseType: !96)
!1873 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1276, line: 186)
!1875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1876, line: 187)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1877, line: 32, baseType: !96)
!1877 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !92, line: 100)
!1879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1880, line: 101)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1881, line: 85, baseType: !1882)
!1881 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 82, size: 64, elements: !1883, identifier: "_ZTS5div_t")
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1882, file: !1881, line: 83, baseType: !252, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1882, file: !1881, line: 84, baseType: !252, size: 32, offset: 32)
!1886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1887, line: 102)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1881, line: 90, baseType: !1888)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 87, size: 128, elements: !1889, identifier: "_ZTS6ldiv_t")
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1888, file: !1881, line: 88, baseType: !206, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1888, file: !1881, line: 89, baseType: !206, size: 64, offset: 64)
!1892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1893, line: 104)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1881, line: 96, baseType: !1894)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 93, size: 128, elements: !1895, identifier: "_ZTS7lldiv_t")
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1894, file: !1881, line: 94, baseType: !1221, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1894, file: !1881, line: 95, baseType: !1221, size: 64, offset: 64)
!1898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1899, line: 106)
!1899 = !DISubprogram(name: "atof", scope: !1881, file: !1881, line: 131, type: !1900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1902, !84}
!1902 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1904, line: 107)
!1904 = !DISubprogram(name: "atoi", scope: !1881, file: !1881, line: 132, type: !1905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!252, !84}
!1907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1908, line: 108)
!1908 = !DISubprogram(name: "atol", scope: !1881, file: !1881, line: 133, type: !1909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!206, !84}
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1912, line: 110)
!1912 = !DISubprogram(name: "atoll", scope: !1881, file: !1881, line: 136, type: !1913, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1221, !84}
!1915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1916, line: 112)
!1916 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !1881, file: !1881, line: 162, type: !1917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1902, !84, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1921, line: 113)
!1921 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !1881, file: !1881, line: 163, type: !1922, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1924, !84, !1919}
!1924 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1926, line: 114)
!1926 = !DISubprogram(name: "strtold", scope: !1881, file: !1881, line: 166, type: !1927, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!1733, !84, !1919}
!1929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1930, line: 115)
!1930 = !DISubprogram(name: "strtol", scope: !1881, file: !1881, line: 164, type: !1931, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!206, !84, !1919, !252}
!1933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1934, line: 117)
!1934 = !DISubprogram(name: "strtoll", scope: !1881, file: !1881, line: 169, type: !1935, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1221, !84, !1919, !252}
!1937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1938, line: 119)
!1938 = !DISubprogram(name: "strtoul", scope: !1881, file: !1881, line: 172, type: !1939, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!96, !84, !1919, !252}
!1941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1942, line: 121)
!1942 = !DISubprogram(name: "strtoull", scope: !1881, file: !1881, line: 175, type: !1943, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1833, !84, !1919, !252}
!1945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1946, line: 123)
!1946 = !DISubprogram(name: "rand", scope: !1881, file: !1881, line: 159, type: !943, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1948, line: 124)
!1948 = !DISubprogram(name: "srand", scope: !1881, file: !1881, line: 161, type: !1949, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1829}
!1951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1952, line: 125)
!1952 = !DISubprogram(name: "calloc", scope: !1881, file: !1881, line: 140, type: !1953, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!929, !92, !92}
!1955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1956, line: 126)
!1956 = !DISubprogram(name: "free", scope: !1881, file: !1881, line: 143, type: !1957, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !929}
!1959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1960, line: 127)
!1960 = !DISubprogram(name: "malloc", scope: !1881, file: !1881, line: 152, type: !1961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!929, !92}
!1963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1964, line: 128)
!1964 = !DISubprogram(name: "realloc", scope: !1881, file: !1881, line: 160, type: !1965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!929, !929, !92}
!1967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1968, line: 129)
!1968 = !DISubprogram(name: "abort", scope: !1881, file: !1881, line: 128, type: !1601, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1970, line: 130)
!1970 = !DISubprogram(name: "atexit", scope: !1881, file: !1881, line: 130, type: !1971, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!252, !1600}
!1973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1974, line: 131)
!1974 = !DISubprogram(name: "exit", scope: !1881, file: !1881, line: 142, type: !1975, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !252}
!1977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1978, line: 132)
!1978 = !DISubprogram(name: "_Exit", scope: !1881, file: !1881, line: 182, type: !1975, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1980, line: 134)
!1980 = !DISubprogram(name: "getenv", scope: !1881, file: !1881, line: 144, type: !1981, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!75, !84}
!1983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1984, line: 135)
!1984 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !1881, file: !1881, line: 177, type: !1905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1986, line: 137)
!1986 = !DISubprogram(name: "bsearch", scope: !1881, file: !1881, line: 138, type: !1987, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!929, !101, !101, !92, !92, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!252, !101, !101}
!1992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1993, line: 138)
!1993 = !DISubprogram(name: "qsort", scope: !1881, file: !1881, line: 157, type: !1994, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !929, !92, !92, !1989}
!1996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1997, line: 139)
!1997 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !1998, file: !1998, line: 113, type: !1999, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1998 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!1221, !1221}
!2001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2002, line: 140)
!2002 = !DISubprogram(name: "labs", scope: !1881, file: !1881, line: 145, type: !2003, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!206, !206}
!2005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2006, line: 142)
!2006 = !DISubprogram(name: "llabs", scope: !1881, file: !1881, line: 149, type: !1999, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2008, line: 144)
!2008 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !1998, file: !1998, line: 118, type: !2009, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1893, !1221, !1221}
!2011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2012, line: 145)
!2012 = !DISubprogram(name: "ldiv", scope: !1881, file: !1881, line: 146, type: !2013, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!1887, !206, !206}
!2015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2016, line: 147)
!2016 = !DISubprogram(name: "lldiv", scope: !1881, file: !1881, line: 150, type: !2009, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2018, line: 149)
!2018 = !DISubprogram(name: "mblen", scope: !1881, file: !1881, line: 153, type: !2019, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!252, !84, !92}
!2021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2022, line: 150)
!2022 = !DISubprogram(name: "mbtowc", scope: !1881, file: !1881, line: 155, type: !2023, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!252, !2025, !84, !92}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!2027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2028, line: 151)
!2028 = !DISubprogram(name: "wctomb", scope: !1881, file: !1881, line: 179, type: !2029, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!252, !75, !2026}
!2031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2032, line: 152)
!2032 = !DISubprogram(name: "mbstowcs", scope: !1881, file: !1881, line: 154, type: !2033, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!92, !2025, !84, !92}
!2035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2036, line: 153)
!2036 = !DISubprogram(name: "wcstombs", scope: !1881, file: !1881, line: 178, type: !2037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!92, !75, !2039, !92}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2042, line: 108)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2043, line: 153, baseType: !2044)
!2043 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2043, line: 122, size: 1216, elements: !2045, identifier: "_ZTS7__sFILE")
!2045 = !{!2046, !2048, !2049, !2050, !2051, !2052, !2057, !2058, !2059, !2063, !2067, !2075, !2079, !2080, !2083, !2084, !2086, !2090, !2091, !2092}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2044, file: !2043, line: 123, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2044, file: !2043, line: 124, baseType: !252, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2044, file: !2043, line: 125, baseType: !252, size: 32, offset: 96)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2044, file: !2043, line: 126, baseType: !1812, size: 16, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2044, file: !2043, line: 127, baseType: !1812, size: 16, offset: 144)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2044, file: !2043, line: 128, baseType: !2053, size: 128, offset: 192)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2043, line: 88, size: 128, elements: !2054, identifier: "_ZTS6__sbuf")
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2053, file: !2043, line: 89, baseType: !2047, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2053, file: !2043, line: 90, baseType: !252, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2044, file: !2043, line: 129, baseType: !252, size: 32, offset: 320)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2044, file: !2043, line: 132, baseType: !929, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2044, file: !2043, line: 133, baseType: !2060, size: 64, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!252, !929}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2044, file: !2043, line: 134, baseType: !2064, size: 64, offset: 512)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!252, !929, !75, !252}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2044, file: !2043, line: 135, baseType: !2068, size: 64, offset: 576)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!2071, !929, !2071, !252}
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !2043, line: 77, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !2073, line: 71, baseType: !2074)
!2073 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !95, line: 46, baseType: !1221)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2044, file: !2043, line: 136, baseType: !2076, size: 64, offset: 640)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!252, !929, !84, !252}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2044, file: !2043, line: 139, baseType: !2053, size: 128, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !2044, file: !2043, line: 140, baseType: !2081, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !2043, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2044, file: !2043, line: 141, baseType: !252, size: 32, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2044, file: !2043, line: 144, baseType: !2085, size: 24, offset: 928)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 24, elements: !230)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2044, file: !2043, line: 145, baseType: !2087, size: 8, offset: 952)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 8, elements: !2088)
!2088 = !{!2089}
!2089 = !DISubrange(count: 1)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2044, file: !2043, line: 148, baseType: !2053, size: 128, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2044, file: !2043, line: 151, baseType: !252, size: 32, offset: 1088)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2044, file: !2043, line: 152, baseType: !2071, size: 64, offset: 1152)
!2093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2071, line: 109)
!2094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !92, line: 110)
!2095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2096, line: 112)
!2096 = !DISubprogram(name: "fclose", scope: !2043, file: !2043, line: 232, type: !2097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!252, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2101, line: 113)
!2101 = !DISubprogram(name: "fflush", scope: !2043, file: !2043, line: 235, type: !2097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2103, line: 114)
!2103 = !DISubprogram(name: "setbuf", scope: !2043, file: !2043, line: 267, type: !2104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !2099, !75}
!2106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2107, line: 115)
!2107 = !DISubprogram(name: "setvbuf", scope: !2043, file: !2043, line: 268, type: !2108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!252, !2099, !75, !252, !92}
!2110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2111, line: 116)
!2111 = !DISubprogram(name: "fprintf", scope: !2043, file: !2043, line: 244, type: !2112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!252, !2099, !84, null}
!2114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2115, line: 117)
!2115 = !DISubprogram(name: "fscanf", scope: !2043, file: !2043, line: 250, type: !2112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2117, line: 118)
!2117 = !DISubprogram(name: "snprintf", scope: !2043, file: !2043, line: 421, type: !2118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!252, !75, !92, !84, null}
!2120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2121, line: 119)
!2121 = !DISubprogram(name: "sprintf", scope: !2043, file: !2043, line: 269, type: !2122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!252, !75, !84, null}
!2124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2125, line: 120)
!2125 = !DISubprogram(name: "sscanf", scope: !2043, file: !2043, line: 270, type: !2126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!252, !84, !84, null}
!2128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2129, line: 121)
!2129 = !DISubprogram(name: "vfprintf", scope: !2043, file: !2043, line: 278, type: !2130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!252, !2099, !84, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2134, identifier: "_ZTS13__va_list_tag")
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2133, file: !3, baseType: !1829, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2133, file: !3, baseType: !1829, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2133, file: !3, baseType: !929, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2133, file: !3, baseType: !929, size: 64, offset: 128)
!2139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2140, line: 122)
!2140 = !DISubprogram(name: "vfscanf", scope: !2043, file: !2043, line: 422, type: !2130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2142, line: 123)
!2142 = !DISubprogram(name: "vsscanf", scope: !2043, file: !2043, line: 425, type: !2143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!252, !84, !84, !2132}
!2145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2146, line: 124)
!2146 = !DISubprogram(name: "vsnprintf", scope: !2043, file: !2043, line: 424, type: !2147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!252, !75, !92, !84, !2132}
!2149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2150, line: 125)
!2150 = !DISubprogram(name: "vsprintf", scope: !2043, file: !2043, line: 280, type: !2151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!252, !75, !84, !2132}
!2153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2154, line: 126)
!2154 = !DISubprogram(name: "fgetc", scope: !2043, file: !2043, line: 236, type: !2097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2156, line: 127)
!2156 = !DISubprogram(name: "fgets", scope: !2043, file: !2043, line: 238, type: !2157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!75, !75, !252, !2099}
!2159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2160, line: 128)
!2160 = !DISubprogram(name: "fputc", scope: !2043, file: !2043, line: 245, type: !2161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!252, !252, !2099}
!2163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2164, line: 129)
!2164 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !2043, file: !2043, line: 246, type: !2165, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!252, !84, !2099}
!2167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2168, line: 130)
!2168 = !DISubprogram(name: "getc", scope: !2043, file: !2043, line: 255, type: !2097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2170, line: 131)
!2170 = !DISubprogram(name: "putc", scope: !2043, file: !2043, line: 260, type: !2161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2172, line: 132)
!2172 = !DISubprogram(name: "ungetc", scope: !2043, file: !2043, line: 277, type: !2161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2174, line: 133)
!2174 = !DISubprogram(name: "fread", scope: !2043, file: !2043, line: 247, type: !2175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!92, !929, !92, !92, !2099}
!2177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2178, line: 134)
!2178 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !2043, file: !2043, line: 254, type: !2179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!92, !101, !92, !92, !2099}
!2181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2182, line: 135)
!2182 = !DISubprogram(name: "fgetpos", scope: !2043, file: !2043, line: 237, type: !2183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!252, !2099, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2187, line: 136)
!2187 = !DISubprogram(name: "fseek", scope: !2043, file: !2043, line: 251, type: !2188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!252, !2099, !206, !252}
!2190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2191, line: 137)
!2191 = !DISubprogram(name: "fsetpos", scope: !2043, file: !2043, line: 252, type: !2192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!252, !2099, !2194}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2197, line: 138)
!2197 = !DISubprogram(name: "ftell", scope: !2043, file: !2043, line: 253, type: !2198, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!206, !2099}
!2200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2201, line: 139)
!2201 = !DISubprogram(name: "rewind", scope: !2043, file: !2043, line: 265, type: !2202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !2099}
!2204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2205, line: 140)
!2205 = !DISubprogram(name: "clearerr", scope: !2043, file: !2043, line: 231, type: !2202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2207, line: 141)
!2207 = !DISubprogram(name: "feof", scope: !2043, file: !2043, line: 233, type: !2097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2209, line: 142)
!2209 = !DISubprogram(name: "ferror", scope: !2043, file: !2043, line: 234, type: !2097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2211, line: 143)
!2211 = !DISubprogram(name: "perror", scope: !2043, file: !2043, line: 258, type: !2212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !84}
!2214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2215, line: 146)
!2215 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !2043, file: !2043, line: 242, type: !2216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!2099, !84, !84}
!2218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2219, line: 147)
!2219 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !2043, file: !2043, line: 248, type: !2220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2099, !84, !84, !2099}
!2222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2223, line: 148)
!2223 = !DISubprogram(name: "remove", scope: !2043, file: !2043, line: 263, type: !1905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2225, line: 149)
!2225 = !DISubprogram(name: "rename", scope: !2043, file: !2043, line: 264, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2227, line: 150)
!2227 = !DISubprogram(name: "tmpfile", scope: !2043, file: !2043, line: 271, type: !2228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2099}
!2230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2231, line: 151)
!2231 = !DISubprogram(name: "tmpnam", scope: !2043, file: !2043, line: 276, type: !2232, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!75, !75}
!2234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2235, line: 155)
!2235 = !DISubprogram(name: "getchar", scope: !2043, file: !2043, line: 256, type: !943, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2237, line: 157)
!2237 = !DISubprogram(name: "gets", scope: !2043, file: !2043, line: 257, type: !2232, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2239, line: 159)
!2239 = !DISubprogram(name: "scanf", scope: !2043, file: !2043, line: 266, type: !2240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!252, !84, null}
!2242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2243, line: 160)
!2243 = !DISubprogram(name: "vscanf", scope: !2043, file: !2043, line: 423, type: !2244, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!252, !84, !2132}
!2246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2247, line: 164)
!2247 = !DISubprogram(name: "printf", scope: !2043, file: !2043, line: 259, type: !2240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2249, line: 165)
!2249 = !DISubprogram(name: "putchar", scope: !2043, file: !2043, line: 261, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!252, !252}
!2252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2253, line: 166)
!2253 = !DISubprogram(name: "puts", scope: !2043, file: !2043, line: 262, type: !1905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2255, line: 167)
!2255 = !DISubprogram(name: "vprintf", scope: !2043, file: !2043, line: 279, type: !2244, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2257, line: 104)
!2257 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !2258, file: !2258, line: 212, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2258 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2260, line: 105)
!2260 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !2258, file: !2258, line: 218, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2262, line: 106)
!2262 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !2258, file: !2258, line: 224, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2264, line: 107)
!2264 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !2258, file: !2258, line: 230, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2266, line: 108)
!2266 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !2258, file: !2258, line: 237, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2268, line: 109)
!2268 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !2258, file: !2258, line: 243, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2270, line: 110)
!2270 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !2258, file: !2258, line: 249, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2272, line: 111)
!2272 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !2258, file: !2258, line: 255, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2274, line: 112)
!2274 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !2258, file: !2258, line: 261, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2276, line: 113)
!2276 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !2258, file: !2258, line: 267, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2278, line: 114)
!2278 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !2258, file: !2258, line: 273, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2280, line: 115)
!2280 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !2258, file: !2258, line: 280, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2282, line: 116)
!2282 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !2258, file: !2258, line: 292, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2284, line: 117)
!2284 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !2258, file: !2258, line: 298, type: !2250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2286, line: 63)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2287, line: 31, baseType: !2288)
!2287 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !95, line: 112, baseType: !252)
!2289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2290, line: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2291, line: 31, baseType: !2292)
!2291 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !2293, line: 40, baseType: !252)
!2293 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2295, line: 65)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2296, line: 31, baseType: !2297)
!2296 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !2293, line: 42, baseType: !2298)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 45, baseType: !1829)
!2299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2300, line: 66)
!2300 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !2301, file: !2301, line: 66, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2301 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!252, !2286}
!2304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2305, line: 67)
!2305 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !2301, file: !2301, line: 72, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2307, line: 68)
!2307 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !2308, file: !2308, line: 50, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2308 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2310, line: 69)
!2310 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !2301, file: !2301, line: 78, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2312, line: 70)
!2312 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !2301, file: !2301, line: 90, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2314, line: 71)
!2314 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !2301, file: !2301, line: 96, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2316, line: 72)
!2316 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !2301, file: !2301, line: 102, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2318, line: 73)
!2318 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !2301, file: !2301, line: 108, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2320, line: 74)
!2320 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !2301, file: !2301, line: 114, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2322, line: 75)
!2322 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !2301, file: !2301, line: 120, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2324, line: 76)
!2324 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !2301, file: !2301, line: 126, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2326, line: 77)
!2326 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !2301, file: !2301, line: 132, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2328, line: 78)
!2328 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !2301, file: !2301, line: 84, type: !2329, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!252, !2286, !2295}
!2331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2332, line: 79)
!2332 = !DISubprogram(name: "wctype", scope: !2301, file: !2301, line: 172, type: !2333, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!2295, !84}
!2335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2336, line: 80)
!2336 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !2301, file: !2301, line: 138, type: !2337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!2286, !2286}
!2339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2340, line: 81)
!2340 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !2301, file: !2301, line: 144, type: !2337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2342, line: 82)
!2342 = !DISubprogram(name: "towctrans", scope: !2308, file: !2308, line: 121, type: !2343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!2286, !2286, !2290}
!2345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2346, line: 83)
!2346 = !DISubprogram(name: "wctrans", scope: !2308, file: !2308, line: 123, type: !2347, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2290, !84}
!2349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2350, line: 116)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2351, line: 31, baseType: !2352)
!2351 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !95, line: 81, baseType: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !95, line: 79, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !95, line: 76, size: 1024, elements: !2355, identifier: "_ZTS11__mbstate_t")
!2355 = !{!2356, !2360}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !2354, file: !95, line: 77, baseType: !2357, size: 1024)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1024, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !2354, file: !95, line: 78, baseType: !1221, size: 64)
!2361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !92, line: 117)
!2362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2363, line: 118)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2364, line: 73, size: 448, elements: !2365, identifier: "_ZTS2tm")
!2364 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2365 = !{!2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2363, file: !2364, line: 74, baseType: !252, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2363, file: !2364, line: 75, baseType: !252, size: 32, offset: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2363, file: !2364, line: 76, baseType: !252, size: 32, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2363, file: !2364, line: 77, baseType: !252, size: 32, offset: 96)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2363, file: !2364, line: 78, baseType: !252, size: 32, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2363, file: !2364, line: 79, baseType: !252, size: 32, offset: 160)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2363, file: !2364, line: 80, baseType: !252, size: 32, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2363, file: !2364, line: 81, baseType: !252, size: 32, offset: 224)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2363, file: !2364, line: 82, baseType: !252, size: 32, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2363, file: !2364, line: 83, baseType: !206, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2363, file: !2364, line: 84, baseType: !75, size: 64, offset: 384)
!2377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2286, line: 119)
!2378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2042, line: 120)
!2379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2380, line: 121)
!2380 = !DISubprogram(name: "fwprintf", scope: !2381, file: !2381, line: 103, type: !2382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2381 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!252, !2099, !2039, null}
!2384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2385, line: 122)
!2385 = !DISubprogram(name: "fwscanf", scope: !2381, file: !2381, line: 104, type: !2382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2387, line: 123)
!2387 = !DISubprogram(name: "swprintf", scope: !2381, file: !2381, line: 115, type: !2388, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!252, !2025, !92, !2039, null}
!2390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2391, line: 124)
!2391 = !DISubprogram(name: "vfwprintf", scope: !2381, file: !2381, line: 118, type: !2392, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!252, !2099, !2039, !2132}
!2394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2395, line: 125)
!2395 = !DISubprogram(name: "vswprintf", scope: !2381, file: !2381, line: 120, type: !2396, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!252, !2025, !92, !2039, !2132}
!2398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2399, line: 126)
!2399 = !DISubprogram(name: "swscanf", scope: !2381, file: !2381, line: 116, type: !2400, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!252, !2039, !2039, null}
!2402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2403, line: 127)
!2403 = !DISubprogram(name: "vfwscanf", scope: !2381, file: !2381, line: 170, type: !2392, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2405, line: 128)
!2405 = !DISubprogram(name: "vswscanf", scope: !2381, file: !2381, line: 172, type: !2406, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!252, !2039, !2039, !2132}
!2408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2409, line: 129)
!2409 = !DISubprogram(name: "fgetwc", scope: !2381, file: !2381, line: 98, type: !2410, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!2286, !2099}
!2412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2413, line: 130)
!2413 = !DISubprogram(name: "fgetws", scope: !2381, file: !2381, line: 99, type: !2414, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2025, !2025, !252, !2099}
!2416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2417, line: 131)
!2417 = !DISubprogram(name: "fputwc", scope: !2381, file: !2381, line: 100, type: !2418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!2286, !2026, !2099}
!2420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2421, line: 132)
!2421 = !DISubprogram(name: "fputws", scope: !2381, file: !2381, line: 101, type: !2422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!252, !2039, !2099}
!2424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2425, line: 133)
!2425 = !DISubprogram(name: "fwide", scope: !2381, file: !2381, line: 102, type: !2426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!252, !2099, !252}
!2428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2429, line: 134)
!2429 = !DISubprogram(name: "getwc", scope: !2381, file: !2381, line: 105, type: !2410, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2431, line: 135)
!2431 = !DISubprogram(name: "putwc", scope: !2381, file: !2381, line: 113, type: !2418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2433, line: 136)
!2433 = !DISubprogram(name: "ungetwc", scope: !2381, file: !2381, line: 117, type: !2434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!2286, !2286, !2099}
!2436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2437, line: 137)
!2437 = !DISubprogram(name: "wcstod", scope: !2381, file: !2381, line: 144, type: !2438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!1902, !2039, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2442, line: 138)
!2442 = !DISubprogram(name: "wcstof", scope: !2381, file: !2381, line: 175, type: !2443, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!1924, !2039, !2440}
!2445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2446, line: 139)
!2446 = !DISubprogram(name: "wcstold", scope: !2381, file: !2381, line: 177, type: !2447, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!1733, !2039, !2440}
!2449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2450, line: 140)
!2450 = !DISubprogram(name: "wcstol", scope: !2381, file: !2381, line: 147, type: !2451, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!206, !2039, !2440, !252}
!2453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2454, line: 142)
!2454 = !DISubprogram(name: "wcstoll", scope: !2381, file: !2381, line: 180, type: !2455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!1221, !2039, !2440, !252}
!2457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2458, line: 144)
!2458 = !DISubprogram(name: "wcstoul", scope: !2381, file: !2381, line: 149, type: !2459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!96, !2039, !2440, !252}
!2461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2462, line: 146)
!2462 = !DISubprogram(name: "wcstoull", scope: !2381, file: !2381, line: 182, type: !2463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!1833, !2039, !2440, !252}
!2465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2466, line: 148)
!2466 = !DISubprogram(name: "wcscpy", scope: !2381, file: !2381, line: 128, type: !2467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!2025, !2025, !2039}
!2469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2470, line: 149)
!2470 = !DISubprogram(name: "wcsncpy", scope: !2381, file: !2381, line: 135, type: !2471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!2025, !2025, !2039, !92}
!2473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2474, line: 150)
!2474 = !DISubprogram(name: "wcscat", scope: !2381, file: !2381, line: 124, type: !2467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2476, line: 151)
!2476 = !DISubprogram(name: "wcsncat", scope: !2381, file: !2381, line: 133, type: !2471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2478, line: 152)
!2478 = !DISubprogram(name: "wcscmp", scope: !2381, file: !2381, line: 126, type: !2479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!252, !2039, !2039}
!2481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2482, line: 153)
!2482 = !DISubprogram(name: "wcscoll", scope: !2381, file: !2381, line: 127, type: !2479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2484, line: 154)
!2484 = !DISubprogram(name: "wcsncmp", scope: !2381, file: !2381, line: 134, type: !2485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!252, !2039, !2039, !92}
!2487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2488, line: 155)
!2488 = !DISubprogram(name: "wcsxfrm", scope: !2381, file: !2381, line: 142, type: !2489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!92, !2025, !2039, !92}
!2491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2492, line: 156)
!2492 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !2493, file: !2493, line: 137, type: !2494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2493 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!2025, !2025, !2026}
!2496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2497, line: 157)
!2497 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !2493, file: !2493, line: 144, type: !2467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2499, line: 158)
!2499 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !2493, file: !2493, line: 151, type: !2494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2501, line: 159)
!2501 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !2493, file: !2493, line: 158, type: !2467, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2503, line: 160)
!2503 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !2493, file: !2493, line: 165, type: !2504, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2025, !2025, !2026, !92}
!2506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2507, line: 161)
!2507 = !DISubprogram(name: "wcscspn", scope: !2381, file: !2381, line: 129, type: !2508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!92, !2039, !2039}
!2510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2511, line: 162)
!2511 = !DISubprogram(name: "wcslen", scope: !2381, file: !2381, line: 132, type: !2512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!92, !2039}
!2514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2515, line: 163)
!2515 = !DISubprogram(name: "wcsspn", scope: !2381, file: !2381, line: 140, type: !2508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2517, line: 164)
!2517 = !DISubprogram(name: "wcstok", scope: !2381, file: !2381, line: 145, type: !2518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!2025, !2025, !2039, !2440}
!2520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2521, line: 165)
!2521 = !DISubprogram(name: "wmemcmp", scope: !2381, file: !2381, line: 151, type: !2485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2523, line: 166)
!2523 = !DISubprogram(name: "wmemcpy", scope: !2381, file: !2381, line: 152, type: !2471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2525, line: 167)
!2525 = !DISubprogram(name: "wmemmove", scope: !2381, file: !2381, line: 153, type: !2471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2527, line: 168)
!2527 = !DISubprogram(name: "wmemset", scope: !2381, file: !2381, line: 154, type: !2504, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2529, line: 169)
!2529 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !2381, file: !2381, line: 130, type: !2530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!92, !2025, !92, !2039, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2363)
!2534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2535, line: 170)
!2535 = !DISubprogram(name: "btowc", scope: !2381, file: !2381, line: 97, type: !2536, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!2286, !252}
!2538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2539, line: 171)
!2539 = !DISubprogram(name: "wctob", scope: !2381, file: !2381, line: 143, type: !2302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2541, line: 172)
!2541 = !DISubprogram(name: "mbsinit", scope: !2381, file: !2381, line: 110, type: !2542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!252, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2547, line: 173)
!2547 = !DISubprogram(name: "mbrlen", scope: !2381, file: !2381, line: 107, type: !2548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!92, !84, !92, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2552, line: 174)
!2552 = !DISubprogram(name: "mbrtowc", scope: !2381, file: !2381, line: 108, type: !2553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!92, !2025, !84, !92, !2550}
!2555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2556, line: 175)
!2556 = !DISubprogram(name: "wcrtomb", scope: !2381, file: !2381, line: 123, type: !2557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!92, !75, !2026, !2550}
!2559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2560, line: 176)
!2560 = !DISubprogram(name: "mbsrtowcs", scope: !2381, file: !2381, line: 111, type: !2561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!92, !2025, !2563, !92, !2550}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2565, line: 177)
!2565 = !DISubprogram(name: "wcsrtombs", scope: !2381, file: !2381, line: 138, type: !2566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!92, !75, !2568, !92, !2550}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2570, line: 180)
!2570 = !DISubprogram(name: "getwchar", scope: !2381, file: !2381, line: 106, type: !2571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2286}
!2573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2574, line: 181)
!2574 = !DISubprogram(name: "vwscanf", scope: !2381, file: !2381, line: 174, type: !2575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!252, !2039, !2132}
!2577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2578, line: 182)
!2578 = !DISubprogram(name: "wscanf", scope: !2381, file: !2381, line: 156, type: !2579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!252, !2039, null}
!2581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2582, line: 186)
!2582 = !DISubprogram(name: "putwchar", scope: !2381, file: !2381, line: 114, type: !2583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!2286, !2026}
!2585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2586, line: 187)
!2586 = !DISubprogram(name: "vwprintf", scope: !2381, file: !2381, line: 122, type: !2575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2588, line: 188)
!2588 = !DISubprogram(name: "wprintf", scope: !2381, file: !2381, line: 155, type: !2579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2590, line: 56)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !2591, line: 30, baseType: !2592)
!2591 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !95, line: 117, baseType: !96)
!2593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !92, line: 57)
!2594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1412, line: 58)
!2595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2363, line: 59)
!2596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2597, line: 60)
!2597 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !2364, file: !2364, line: 107, type: !2598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!2590}
!2600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2601, line: 61)
!2601 = !DISubprogram(name: "difftime", scope: !2364, file: !2364, line: 109, type: !2602, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!1902, !1412, !1412}
!2604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2605, line: 62)
!2605 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !2364, file: !2364, line: 113, type: !2606, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!1412, !2608}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2610, line: 63)
!2610 = !DISubprogram(name: "time", scope: !2364, file: !2364, line: 116, type: !2611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!1412, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!2614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2615, line: 65)
!2615 = !DISubprogram(name: "asctime", scope: !2364, file: !2364, line: 106, type: !2616, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!75, !2532}
!2618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2619, line: 66)
!2619 = !DISubprogram(name: "ctime", scope: !2364, file: !2364, line: 108, type: !2620, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!75, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!2624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2625, line: 67)
!2625 = !DISubprogram(name: "gmtime", scope: !2364, file: !2364, line: 111, type: !2626, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!2608, !2622}
!2628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2629, line: 68)
!2629 = !DISubprogram(name: "localtime", scope: !2364, file: !2364, line: 112, type: !2626, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2631, line: 70)
!2631 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !2364, file: !2364, line: 114, type: !2632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!92, !75, !92, !84, !2532}
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<std::__1::basic_string<char> *>", scope: !7, file: !6, line: 1104, size: 64, elements: !2635, templateParams: !2763, identifier: "_ZTSNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEE")
!2635 = !{!2636, !2716, !2720, !2723, !2728, !2731, !2734, !2737, !2738, !2739, !2742, !2745, !2746, !2747, !2750, !2753, !2754, !2755, !2758, !2761, !2762}
!2636 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2634, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<std::__1::basic_string<char> *, false>", scope: !7, file: !6, line: 891, size: 64, elements: !2638, templateParams: !2714, identifier: "_ZTSNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEE")
!2638 = !{!2639, !2642, !2648, !2653, !2658, !2662, !2665, !2668, !2671, !2674, !2677, !2680, !2684, !2687, !2688, !2689, !2692, !2695, !2696, !2697, !2700, !2703, !2707, !2711}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !2637, file: !6, line: 893, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !2641)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2642 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE12is_lock_freeEv", scope: !2637, file: !6, line: 900, type: !2643, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!32, !2645}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2637)
!2648 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE12is_lock_freeEv", scope: !2637, file: !6, line: 909, type: !2649, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!32, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2653 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5storeES7_NS_12memory_orderE", scope: !2637, file: !6, line: 912, type: !2654, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !2656, !2641, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !7, file: !6, line: 585, baseType: !5)
!2658 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5storeES7_NS_12memory_orderE", scope: !2637, file: !6, line: 916, type: !2659, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !2661, !2641, !2657}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2662 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE", scope: !2637, file: !6, line: 920, type: !2663, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!2641, !2645, !2657}
!2665 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE", scope: !2637, file: !6, line: 924, type: !2666, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!2641, !2651, !2657}
!2668 = !DISubprogram(name: "operator std::__1::basic_string<char> *", linkageName: "_ZNVKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEcvS7_Ev", scope: !2637, file: !6, line: 928, type: !2669, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!2641, !2645}
!2671 = !DISubprogram(name: "operator std::__1::basic_string<char> *", linkageName: "_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEcvS7_Ev", scope: !2637, file: !6, line: 930, type: !2672, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!2641, !2651}
!2674 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE8exchangeES7_NS_12memory_orderE", scope: !2637, file: !6, line: 932, type: !2675, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!2641, !2656, !2641, !2657}
!2677 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE8exchangeES7_NS_12memory_orderE", scope: !2637, file: !6, line: 935, type: !2678, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!2641, !2661, !2641, !2657}
!2680 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE21compare_exchange_weakERS7_S7_NS_12memory_orderESA_", scope: !2637, file: !6, line: 938, type: !2681, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!32, !2656, !2683, !2641, !2657, !2657}
!2683 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2641, size: 64)
!2684 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE21compare_exchange_weakERS7_S7_NS_12memory_orderESA_", scope: !2637, file: !6, line: 943, type: !2685, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!32, !2661, !2683, !2641, !2657, !2657}
!2687 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE23compare_exchange_strongERS7_S7_NS_12memory_orderESA_", scope: !2637, file: !6, line: 948, type: !2681, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!2688 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE23compare_exchange_strongERS7_S7_NS_12memory_orderESA_", scope: !2637, file: !6, line: 953, type: !2685, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!2689 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE21compare_exchange_weakERS7_S7_NS_12memory_orderE", scope: !2637, file: !6, line: 958, type: !2690, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!32, !2656, !2683, !2641, !2657}
!2692 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE21compare_exchange_weakERS7_S7_NS_12memory_orderE", scope: !2637, file: !6, line: 962, type: !2693, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!32, !2661, !2683, !2641, !2657}
!2695 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE23compare_exchange_strongERS7_S7_NS_12memory_orderE", scope: !2637, file: !6, line: 966, type: !2690, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!2696 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE23compare_exchange_strongERS7_S7_NS_12memory_orderE", scope: !2637, file: !6, line: 970, type: !2693, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!2697 = !DISubprogram(name: "__atomic_base", scope: !2637, file: !6, line: 976, type: !2698, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !2661}
!2700 = !DISubprogram(name: "__atomic_base", scope: !2637, file: !6, line: 982, type: !2701, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !2661, !2641}
!2703 = !DISubprogram(name: "__atomic_base", scope: !2637, file: !6, line: 984, type: !2704, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !2661, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2652, size: 64)
!2707 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEaSERKS8_", scope: !2637, file: !6, line: 985, type: !2708, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!2710, !2661, !2706}
!2710 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2637, size: 64)
!2711 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEaSERKS8_", scope: !2637, file: !6, line: 986, type: !2712, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!2710, !2656, !2706}
!2714 = !{!2715, !128}
!2715 = !DITemplateTypeParameter(name: "_Tp", type: !2641)
!2716 = !DISubprogram(name: "atomic", scope: !2634, file: !6, line: 1109, type: !2717, isLocal: false, isDefinition: false, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: true)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2720 = !DISubprogram(name: "atomic", scope: !2634, file: !6, line: 1111, type: !2721, isLocal: false, isDefinition: false, scopeLine: 1111, flags: DIFlagPrototyped, isOptimized: true)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !2719, !2641}
!2723 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSES7_", scope: !2634, file: !6, line: 1114, type: !2724, isLocal: false, isDefinition: false, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: true)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!2641, !2726, !2641}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2727 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2634)
!2728 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSES7_", scope: !2634, file: !6, line: 1117, type: !2729, isLocal: false, isDefinition: false, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: true)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!2641, !2719, !2641}
!2731 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9fetch_addElNS_12memory_orderE", scope: !2634, file: !6, line: 1121, type: !2732, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPrototyped, isOptimized: true)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!2641, !2726, !1727, !2657}
!2734 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9fetch_addElNS_12memory_orderE", scope: !2634, file: !6, line: 1125, type: !2735, isLocal: false, isDefinition: false, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: true)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!2641, !2719, !1727, !2657}
!2737 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9fetch_subElNS_12memory_orderE", scope: !2634, file: !6, line: 1128, type: !2732, isLocal: false, isDefinition: false, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: true)
!2738 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9fetch_subElNS_12memory_orderE", scope: !2634, file: !6, line: 1132, type: !2735, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: true)
!2739 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppEi", scope: !2634, file: !6, line: 1136, type: !2740, isLocal: false, isDefinition: false, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: true)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!2641, !2726, !252}
!2742 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppEi", scope: !2634, file: !6, line: 1138, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1138, flags: DIFlagPrototyped, isOptimized: true)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!2641, !2719, !252}
!2745 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmmEi", scope: !2634, file: !6, line: 1140, type: !2740, isLocal: false, isDefinition: false, scopeLine: 1140, flags: DIFlagPrototyped, isOptimized: true)
!2746 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmmEi", scope: !2634, file: !6, line: 1142, type: !2743, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true)
!2747 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppEv", scope: !2634, file: !6, line: 1144, type: !2748, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPrototyped, isOptimized: true)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!2641, !2726}
!2750 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppEv", scope: !2634, file: !6, line: 1146, type: !2751, isLocal: false, isDefinition: false, scopeLine: 1146, flags: DIFlagPrototyped, isOptimized: true)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2641, !2719}
!2753 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmmEv", scope: !2634, file: !6, line: 1148, type: !2748, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: true)
!2754 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmmEv", scope: !2634, file: !6, line: 1150, type: !2751, isLocal: false, isDefinition: false, scopeLine: 1150, flags: DIFlagPrototyped, isOptimized: true)
!2755 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEpLEl", scope: !2634, file: !6, line: 1152, type: !2756, isLocal: false, isDefinition: false, scopeLine: 1152, flags: DIFlagPrototyped, isOptimized: true)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!2641, !2726, !1727}
!2758 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEpLEl", scope: !2634, file: !6, line: 1154, type: !2759, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!2641, !2719, !1727}
!2761 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmIEl", scope: !2634, file: !6, line: 1156, type: !2756, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPrototyped, isOptimized: true)
!2762 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16atomicIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmIEl", scope: !2634, file: !6, line: 1158, type: !2759, isLocal: false, isDefinition: false, scopeLine: 1158, flags: DIFlagPrototyped, isOptimized: true)
!2763 = !{!2715}
!2764 = !{i32 2, !"Dwarf Version", i32 2}
!2765 = !{i32 2, !"Debug Info Version", i32 3}
!2766 = !{i32 1, !"PIC Level", i32 2}
!2767 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2768 = distinct !DISubprogram(name: "producer", linkageName: "_Z8producerv", scope: !3, file: !3, line: 16, type: !1601, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2769)
!2769 = !{!2770}
!2770 = !DILocalVariable(name: "p", scope: !2768, file: !3, line: 19, type: !2771)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!2772 = !DILocation(line: 18, column: 5, scope: !2768)
!2773 = !DILocation(line: 19, column: 23, scope: !2768)
!2774 = !DILocalVariable(name: "__s", arg: 2, scope: !2775, file: !18, line: 778, type: !84)
!2775 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1EPKc", scope: !19, file: !18, line: 1571, type: !328, isLocal: false, isDefinition: true, scopeLine: 1572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !327, variables: !2776)
!2776 = !{!2777, !2774}
!2777 = !DILocalVariable(name: "this", arg: 1, scope: !2775, type: !2641, flags: DIFlagArtificial | DIFlagObjectPointer)
!2778 = !DIExpression()
!2779 = !DILocation(line: 778, column: 58, scope: !2775, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 19, column: 27, scope: !2768)
!2781 = !DILocalVariable(name: "__s", arg: 2, scope: !2782, file: !18, line: 778, type: !84)
!2782 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2EPKc", scope: !19, file: !18, line: 1571, type: !328, isLocal: false, isDefinition: true, scopeLine: 1572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !327, variables: !2783)
!2783 = !{!2784, !2781}
!2784 = !DILocalVariable(name: "this", arg: 1, scope: !2782, type: !2641, flags: DIFlagArtificial | DIFlagObjectPointer)
!2785 = !DILocation(line: 778, column: 58, scope: !2782, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 1572, column: 1, scope: !2775, inlinedAt: !2780)
!2787 = !DILocation(line: 2082, column: 40, scope: !2788, inlinedAt: !2792)
!2788 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev", scope: !38, file: !35, line: 2082, type: !233, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !232, variables: !2789)
!2789 = !{!2790}
!2790 = !DILocalVariable(name: "this", arg: 1, scope: !2788, type: !2791, flags: DIFlagArtificial | DIFlagObjectPointer)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2792 = distinct !DILocation(line: 2167, column: 13, scope: !2793, inlinedAt: !2803)
!2793 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv", scope: !34, file: !35, line: 2167, type: !2794, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2796, declaration: !2799, variables: !2800)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !281}
!2796 = !{!2797, !2798}
!2797 = !DITemplateValueParameter(name: "_Dummy", type: !32, value: i8 1)
!2798 = !DITemplateTypeParameter(type: null)
!2799 = !DISubprogram(name: "__compressed_pair<true, void>", scope: !34, file: !35, line: 2167, type: !2794, isLocal: false, isDefinition: false, scopeLine: 2167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !2796)
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "this", arg: 1, scope: !2793, type: !2802, flags: DIFlagArtificial | DIFlagObjectPointer)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2803 = distinct !DILocation(line: 2167, column: 33, scope: !2804, inlinedAt: !2807)
!2804 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv", scope: !34, file: !35, line: 2167, type: !2794, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2796, declaration: !2799, variables: !2805)
!2805 = !{!2806}
!2806 = !DILocalVariable(name: "this", arg: 1, scope: !2804, type: !2802, flags: DIFlagArtificial | DIFlagObjectPointer)
!2807 = distinct !DILocation(line: 778, column: 31, scope: !2782, inlinedAt: !2786)
!2808 = !DILocalVariable(name: "__s", arg: 2, scope: !2809, file: !18, line: 1342, type: !589)
!2809 = distinct !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !19, file: !18, line: 1547, type: !887, isLocal: false, isDefinition: true, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !886, variables: !2810)
!2810 = !{!2811, !2808, !2812, !2813, !2814}
!2811 = !DILocalVariable(name: "this", arg: 1, scope: !2809, type: !2641, flags: DIFlagArtificial | DIFlagObjectPointer)
!2812 = !DILocalVariable(name: "__sz", arg: 3, scope: !2809, file: !18, line: 1342, type: !50)
!2813 = !DILocalVariable(name: "__p", scope: !2809, file: !18, line: 1551, type: !210)
!2814 = !DILocalVariable(name: "__cap", scope: !2815, file: !18, line: 1559, type: !50)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !18, line: 1558, column: 5)
!2816 = distinct !DILexicalBlock(scope: !2809, file: !18, line: 1552, column: 9)
!2817 = !DILocation(line: 1342, column: 35, scope: !2809, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 1574, column: 5, scope: !2819, inlinedAt: !2786)
!2819 = !DILexicalBlockFile(scope: !2820, file: !18, discriminator: 1)
!2820 = distinct !DILexicalBlock(scope: !2782, file: !18, line: 1572, column: 1)
!2821 = !DILocation(line: 1342, column: 50, scope: !2809, inlinedAt: !2818)
!2822 = !DILocalVariable(name: "__s", arg: 2, scope: !2823, file: !18, line: 1264, type: !50)
!2823 = distinct !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !19, file: !18, line: 1264, type: !632, isLocal: false, isDefinition: true, scopeLine: 1268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !854, variables: !2824)
!2824 = !{!2825, !2822}
!2825 = !DILocalVariable(name: "this", arg: 1, scope: !2823, type: !2641, flags: DIFlagArtificial | DIFlagObjectPointer)
!2826 = !DILocation(line: 1264, column: 37, scope: !2823, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1554, column: 9, scope: !2828, inlinedAt: !2818)
!2828 = distinct !DILexicalBlock(scope: !2816, file: !18, line: 1553, column: 5)
!2829 = !DILocation(line: 1268, column: 35, scope: !2823, inlinedAt: !2827)
!2830 = !{!2831, !2831, i64 0}
!2831 = !{!"omnipotent char", !2832, i64 0}
!2832 = !{!"Simple C++ TBAA"}
!2833 = !DILocation(line: 1309, column: 53, scope: !2834, inlinedAt: !2837)
!2834 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !19, file: !18, line: 1308, type: !865, isLocal: false, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !875, variables: !2835)
!2835 = !{!2836}
!2836 = !DILocalVariable(name: "this", arg: 1, scope: !2834, type: !2641, flags: DIFlagArtificial | DIFlagObjectPointer)
!2837 = distinct !DILocation(line: 1555, column: 15, scope: !2828, inlinedAt: !2818)
!2838 = !DILocation(line: 1551, column: 13, scope: !2809, inlinedAt: !2818)
!2839 = !DILocalVariable(name: "__s1", arg: 1, scope: !2840, file: !491, line: 220, type: !517)
!2840 = distinct !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !490, file: !491, line: 220, type: !515, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !518, variables: !2841)
!2841 = !{!2839, !2842, !2843}
!2842 = !DILocalVariable(name: "__s2", arg: 2, scope: !2840, file: !491, line: 220, type: !507)
!2843 = !DILocalVariable(name: "__n", arg: 3, scope: !2840, file: !491, line: 220, type: !92)
!2844 = !DILocation(line: 220, column: 46, scope: !2840, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 1565, column: 5, scope: !2846, inlinedAt: !2818)
!2846 = !DILexicalBlockFile(scope: !2809, file: !18, discriminator: 1)
!2847 = !DILocation(line: 220, column: 69, scope: !2840, inlinedAt: !2845)
!2848 = !DILocation(line: 220, column: 82, scope: !2840, inlinedAt: !2845)
!2849 = !DILocation(line: 223, column: 50, scope: !2840, inlinedAt: !2845)
!2850 = !DILocation(line: 1566, column: 25, scope: !2809, inlinedAt: !2818)
!2851 = !DILocalVariable(name: "__c1", arg: 1, scope: !2852, file: !491, line: 206, type: !496)
!2852 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !490, file: !491, line: 206, type: !494, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !493, variables: !2853)
!2853 = !{!2851, !2854}
!2854 = !DILocalVariable(name: "__c2", arg: 2, scope: !2852, file: !491, line: 206, type: !498)
!2855 = !DILocation(line: 206, column: 28, scope: !2852, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 1566, column: 5, scope: !2809, inlinedAt: !2818)
!2857 = !DILocation(line: 206, column: 73, scope: !2852, inlinedAt: !2856)
!2858 = !DILocation(line: 20, column: 10, scope: !2768)
!2859 = !{!2860, !2860, i64 0}
!2860 = !{!"int", !2831, i64 0}
!2861 = !DILocalVariable(name: "__m", arg: 3, scope: !2862, file: !6, line: 916, type: !2657)
!2862 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5storeES7_NS_12memory_orderE", scope: !2637, file: !6, line: 916, type: !2659, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2658, variables: !2863)
!2863 = !{!2864, !2866, !2861}
!2864 = !DILocalVariable(name: "this", arg: 1, scope: !2862, type: !2865, flags: DIFlagArtificial | DIFlagObjectPointer)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2866 = !DILocalVariable(name: "__d", arg: 2, scope: !2862, file: !6, line: 916, type: !2641)
!2867 = !DILocation(line: 916, column: 38, scope: !2862, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 21, column: 9, scope: !2768)
!2869 = !DILocation(line: 918, column: 10, scope: !2862, inlinedAt: !2868)
!2870 = !DILocation(line: 918, column: 10, scope: !2871, inlinedAt: !2868)
!2871 = !DILexicalBlockFile(scope: !2862, file: !6, discriminator: 2)
!2872 = !DILocation(line: 22, column: 5, scope: !2768)
!2873 = !DILocation(line: 23, column: 1, scope: !2768)
!2874 = distinct !DISubprogram(name: "consumer", linkageName: "_Z8consumerv", scope: !3, file: !3, line: 25, type: !1601, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2875)
!2875 = !{!2876}
!2876 = !DILocalVariable(name: "p2", scope: !2874, file: !3, line: 27, type: !2771)
!2877 = !DILocation(line: 28, column: 5, scope: !2874)
!2878 = !DILocation(line: 29, column: 5, scope: !2874)
!2879 = !DILocalVariable(name: "__m", arg: 2, scope: !2880, file: !6, line: 924, type: !2657)
!2880 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE", scope: !2637, file: !6, line: 924, type: !2666, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2665, variables: !2881)
!2881 = !{!2882, !2879}
!2882 = !DILocalVariable(name: "this", arg: 1, scope: !2880, type: !2883, flags: DIFlagArtificial | DIFlagObjectPointer)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2884 = !DILocation(line: 924, column: 27, scope: !2880, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 29, column: 23, scope: !2886)
!2886 = !DILexicalBlockFile(scope: !2874, file: !3, discriminator: 1)
!2887 = !DILocation(line: 926, column: 17, scope: !2888, inlinedAt: !2885)
!2888 = !DILexicalBlockFile(scope: !2880, file: !6, discriminator: 2)
!2889 = !DILocation(line: 29, column: 12, scope: !2886)
!2890 = !DILocation(line: 29, column: 5, scope: !2886)
!2891 = distinct !{!2891, !2878, !2892}
!2892 = !DILocation(line: 30, column: 9, scope: !2874)
!2893 = !DILocation(line: 926, column: 17, scope: !2894, inlinedAt: !2885)
!2894 = !DILexicalBlockFile(scope: !2880, file: !6, discriminator: 4)
!2895 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2896, file: !18, line: 3578, type: !84)
!2896 = distinct !DISubprogram(name: "operator==<char, std::__1::char_traits<char>, std::__1::allocator<char> >", linkageName: "_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_", scope: !7, file: !18, line: 3577, type: !2897, isLocal: false, isDefinition: true, scopeLine: 3579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !915, variables: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!32, !315, !84}
!2899 = !{!2900, !2895, !2901}
!2900 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2896, file: !18, line: 3577, type: !315)
!2901 = !DILocalVariable(name: "__rhs_len", scope: !2896, file: !18, line: 3582, type: !92)
!2902 = !DILocation(line: 3578, column: 26, scope: !2896, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 31, column: 5, scope: !2874)
!2904 = !DILocation(line: 3582, column: 12, scope: !2896, inlinedAt: !2903)
!2905 = !DILocation(line: 1224, column: 39, scope: !2906, inlinedAt: !2910)
!2906 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !19, file: !18, line: 1223, type: !638, isLocal: false, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !846, variables: !2907)
!2907 = !{!2908}
!2908 = !DILocalVariable(name: "this", arg: 1, scope: !2906, type: !2909, flags: DIFlagArtificial | DIFlagObjectPointer)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!2910 = distinct !DILocation(line: 892, column: 17, scope: !2911, inlinedAt: !2914)
!2911 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !19, file: !18, line: 891, type: !623, isLocal: false, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !622, variables: !2912)
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "this", arg: 1, scope: !2911, type: !2909, flags: DIFlagArtificial | DIFlagObjectPointer)
!2914 = distinct !DILocation(line: 3583, column: 28, scope: !2915, inlinedAt: !2903)
!2915 = distinct !DILexicalBlock(scope: !2896, file: !18, line: 3583, column: 9)
!2916 = !DILocation(line: 1224, column: 47, scope: !2906, inlinedAt: !2910)
!2917 = !DILocation(line: 1224, column: 22, scope: !2906, inlinedAt: !2910)
!2918 = !DILocation(line: 1286, column: 34, scope: !2919, inlinedAt: !2922)
!2919 = distinct !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !19, file: !18, line: 1285, type: !623, isLocal: false, isDefinition: true, scopeLine: 1286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !857, variables: !2920)
!2920 = !{!2921}
!2921 = !DILocalVariable(name: "this", arg: 1, scope: !2919, type: !2909, flags: DIFlagArtificial | DIFlagObjectPointer)
!2922 = distinct !DILocation(line: 892, column: 31, scope: !2923, inlinedAt: !2914)
!2923 = !DILexicalBlockFile(scope: !2911, file: !18, discriminator: 1)
!2924 = !DILocation(line: 1276, column: 17, scope: !2925, inlinedAt: !2928)
!2925 = distinct !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !19, file: !18, line: 1272, type: !623, isLocal: false, isDefinition: true, scopeLine: 1276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !855, variables: !2926)
!2926 = !{!2927}
!2927 = !DILocalVariable(name: "this", arg: 1, scope: !2925, type: !2909, flags: DIFlagArtificial | DIFlagObjectPointer)
!2928 = distinct !DILocation(line: 892, column: 51, scope: !2929, inlinedAt: !2914)
!2929 = !DILexicalBlockFile(scope: !2911, file: !18, discriminator: 2)
!2930 = !DILocation(line: 1276, column: 42, scope: !2925, inlinedAt: !2928)
!2931 = !DILocation(line: 892, column: 17, scope: !2911, inlinedAt: !2914)
!2932 = !DILocation(line: 3583, column: 19, scope: !2915, inlinedAt: !2903)
!2933 = !DILocation(line: 3583, column: 9, scope: !2896, inlinedAt: !2903)
!2934 = !DILocation(line: 3584, column: 18, scope: !2896, inlinedAt: !2903)
!2935 = !DILocation(line: 3585, column: 1, scope: !2896, inlinedAt: !2903)
!2936 = !DILocation(line: 3585, column: 1, scope: !2937, inlinedAt: !2903)
!2937 = !DILexicalBlockFile(scope: !2896, file: !18, discriminator: 2)
!2938 = !DILocation(line: 3584, column: 62, scope: !2939, inlinedAt: !2903)
!2939 = !DILexicalBlockFile(scope: !2896, file: !18, discriminator: 1)
!2940 = !DILocation(line: 31, column: 5, scope: !2874)
!2941 = !{!"branch_weights", i32 2000, i32 1}
!2942 = !DILocation(line: 31, column: 5, scope: !2886)
!2943 = !DILocation(line: 32, column: 5, scope: !2874)
!2944 = !DILocation(line: 32, column: 5, scope: !2886)
!2945 = !DILocation(line: 33, column: 5, scope: !2874)
!2946 = !DILocation(line: 34, column: 1, scope: !2874)
!2947 = distinct !DISubprogram(name: "test", linkageName: "_Z4testv", scope: !3, file: !3, line: 36, type: !1601, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2948)
!2948 = !{!2949, !3099}
!2949 = !DILocalVariable(name: "x", scope: !2947, file: !3, line: 37, type: !2950)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !6, line: 1084, size: 32, elements: !2951, templateParams: !3098, identifier: "_ZTSNSt3__16atomicIiEE")
!2951 = !{!2952, !3083, !3087, !3090, !3095}
!2952 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2950, baseType: !2953)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !2954, templateParams: !3082, identifier: "_ZTSNSt3__113__atomic_baseIiLb1EEE")
!2954 = !{!2955, !3033, !3037, !3040, !3045, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3059, !3062, !3063, !3064, !3067, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081}
!2955 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2953, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !2957, templateParams: !3031, identifier: "_ZTSNSt3__113__atomic_baseIiLb0EEE")
!2957 = !{!2958, !2960, !2966, !2971, !2975, !2979, !2982, !2985, !2988, !2991, !2994, !2997, !3001, !3004, !3005, !3006, !3009, !3012, !3013, !3014, !3017, !3020, !3024, !3028}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !2956, file: !6, line: 893, baseType: !2959, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !252)
!2960 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !2956, file: !6, line: 900, type: !2961, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!32, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2956)
!2966 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !2956, file: !6, line: 909, type: !2967, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!32, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2971 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !2956, file: !6, line: 912, type: !2972, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2974, !252, !2657}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2975 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !2956, file: !6, line: 916, type: !2976, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2978, !252, !2657}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2979 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !2956, file: !6, line: 920, type: !2980, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!252, !2963, !2657}
!2982 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !2956, file: !6, line: 924, type: !2983, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!252, !2969, !2657}
!2985 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EEcviEv", scope: !2956, file: !6, line: 928, type: !2986, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!252, !2963}
!2988 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !2956, file: !6, line: 930, type: !2989, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!252, !2969}
!2991 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !2956, file: !6, line: 932, type: !2992, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!252, !2974, !252, !2657}
!2994 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !2956, file: !6, line: 935, type: !2995, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!252, !2978, !252, !2657}
!2997 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !2956, file: !6, line: 938, type: !2998, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!32, !2974, !3000, !252, !2657, !2657}
!3000 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !252, size: 64)
!3001 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !2956, file: !6, line: 943, type: !3002, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!32, !2978, !3000, !252, !2657, !2657}
!3004 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !2956, file: !6, line: 948, type: !2998, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!3005 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !2956, file: !6, line: 953, type: !3002, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!3006 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !2956, file: !6, line: 958, type: !3007, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!32, !2974, !3000, !252, !2657}
!3009 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !2956, file: !6, line: 962, type: !3010, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!32, !2978, !3000, !252, !2657}
!3012 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !2956, file: !6, line: 966, type: !3007, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!3013 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !2956, file: !6, line: 970, type: !3010, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!3014 = !DISubprogram(name: "__atomic_base", scope: !2956, file: !6, line: 976, type: !3015, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2978}
!3017 = !DISubprogram(name: "__atomic_base", scope: !2956, file: !6, line: 982, type: !3018, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2978, !252}
!3020 = !DISubprogram(name: "__atomic_base", scope: !2956, file: !6, line: 984, type: !3021, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2978, !3023}
!3023 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2970, size: 64)
!3024 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !2956, file: !6, line: 985, type: !3025, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!3027, !2978, !3023}
!3027 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2956, size: 64)
!3028 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !2956, file: !6, line: 986, type: !3029, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!3027, !2974, !3023}
!3031 = !{!3032, !128}
!3032 = !DITemplateTypeParameter(name: "_Tp", type: !252)
!3033 = !DISubprogram(name: "__atomic_base", scope: !2953, file: !6, line: 1008, type: !3034, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !3036}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3037 = !DISubprogram(name: "__atomic_base", scope: !2953, file: !6, line: 1010, type: !3038, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !3036, !252}
!3040 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !2953, file: !6, line: 1013, type: !3041, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!252, !3043, !252, !2657}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3044 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2953)
!3045 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !2953, file: !6, line: 1016, type: !3046, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!252, !3036, !252, !2657}
!3048 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !2953, file: !6, line: 1019, type: !3041, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: true)
!3049 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !2953, file: !6, line: 1022, type: !3046, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true)
!3050 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !2953, file: !6, line: 1025, type: !3041, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true)
!3051 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !2953, file: !6, line: 1028, type: !3046, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true)
!3052 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !2953, file: !6, line: 1031, type: !3041, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: true)
!3053 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !2953, file: !6, line: 1034, type: !3046, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true)
!3054 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !2953, file: !6, line: 1037, type: !3041, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: true)
!3055 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !2953, file: !6, line: 1040, type: !3046, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true)
!3056 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEi", scope: !2953, file: !6, line: 1044, type: !3057, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!252, !3043, !252}
!3059 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEi", scope: !2953, file: !6, line: 1046, type: !3060, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!252, !3036, !252}
!3062 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEi", scope: !2953, file: !6, line: 1048, type: !3057, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true)
!3063 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEi", scope: !2953, file: !6, line: 1050, type: !3060, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: true)
!3064 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEv", scope: !2953, file: !6, line: 1052, type: !3065, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!252, !3043}
!3067 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEv", scope: !2953, file: !6, line: 1054, type: !3068, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!252, !3036}
!3070 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEv", scope: !2953, file: !6, line: 1056, type: !3065, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true)
!3071 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEv", scope: !2953, file: !6, line: 1058, type: !3068, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true)
!3072 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEpLEi", scope: !2953, file: !6, line: 1060, type: !3057, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: true)
!3073 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEpLEi", scope: !2953, file: !6, line: 1062, type: !3060, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true)
!3074 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmIEi", scope: !2953, file: !6, line: 1064, type: !3057, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true)
!3075 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmIEi", scope: !2953, file: !6, line: 1066, type: !3060, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true)
!3076 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEaNEi", scope: !2953, file: !6, line: 1068, type: !3057, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true)
!3077 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEaNEi", scope: !2953, file: !6, line: 1070, type: !3060, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true)
!3078 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEoREi", scope: !2953, file: !6, line: 1072, type: !3057, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: true)
!3079 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEoREi", scope: !2953, file: !6, line: 1074, type: !3060, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true)
!3080 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEeOEi", scope: !2953, file: !6, line: 1076, type: !3057, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true)
!3081 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEeOEi", scope: !2953, file: !6, line: 1078, type: !3060, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true)
!3082 = !{!3032, !31}
!3083 = !DISubprogram(name: "atomic", scope: !2950, file: !6, line: 1089, type: !3084, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3087 = !DISubprogram(name: "atomic", scope: !2950, file: !6, line: 1091, type: !3088, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !3086, !252}
!3090 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIiEaSEi", scope: !2950, file: !6, line: 1094, type: !3091, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!252, !3093, !252}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3094 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2950)
!3095 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !2950, file: !6, line: 1097, type: !3096, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!252, !3086, !252}
!3098 = !{!3032}
!3099 = !DILocalVariable(name: "y", scope: !2947, file: !3, line: 37, type: !2950)
!3100 = !DIExpression(DW_OP_deref)
!3101 = !DILocation(line: 37, column: 22, scope: !2947)
!3102 = !DILocation(line: 40, column: 1, scope: !2947)
!3103 = distinct !DISubprogram(name: "test", linkageName: "_Z4testi", scope: !3, file: !3, line: 42, type: !1975, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3104)
!3104 = !{!3105, !3106, !3207, !3208}
!3105 = !DILocalVariable(name: "x", arg: 1, scope: !3103, file: !3, line: 42, type: !252)
!3106 = !DILocalVariable(name: "A", scope: !3103, file: !3, line: 43, type: !3107)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<structA>", scope: !7, file: !6, line: 1084, size: 64, elements: !3108, templateParams: !3206, identifier: "_ZTSNSt3__16atomicI7structAEE")
!3108 = !{!3109, !3191, !3195, !3198, !3203}
!3109 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3107, baseType: !3110)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<structA, false>", scope: !7, file: !6, line: 891, size: 64, elements: !3111, templateParams: !3189, identifier: "_ZTSNSt3__113__atomic_baseI7structALb0EEE")
!3111 = !{!3112, !3118, !3124, !3129, !3133, !3137, !3140, !3143, !3146, !3149, !3152, !3155, !3159, !3162, !3163, !3164, !3167, !3170, !3171, !3172, !3175, !3178, !3182, !3186}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !3110, file: !6, line: 893, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !3114)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "structA", file: !3, line: 11, size: 64, elements: !3115, identifier: "_ZTS7structA")
!3115 = !{!3116, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3114, file: !3, line: 12, baseType: !252, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3114, file: !3, line: 13, baseType: !252, size: 32, offset: 32)
!3118 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseI7structALb0EE12is_lock_freeEv", scope: !3110, file: !6, line: 900, type: !3119, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!32, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3110)
!3124 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseI7structALb0EE12is_lock_freeEv", scope: !3110, file: !6, line: 909, type: !3125, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!32, !3127}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3110)
!3129 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseI7structALb0EE5storeES1_NS_12memory_orderE", scope: !3110, file: !6, line: 912, type: !3130, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3132, !3114, !2657}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3133 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseI7structALb0EE5storeES1_NS_12memory_orderE", scope: !3110, file: !6, line: 916, type: !3134, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{null, !3136, !3114, !2657}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3137 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseI7structALb0EE4loadENS_12memory_orderE", scope: !3110, file: !6, line: 920, type: !3138, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!3114, !3121, !2657}
!3140 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseI7structALb0EE4loadENS_12memory_orderE", scope: !3110, file: !6, line: 924, type: !3141, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!3114, !3127, !2657}
!3143 = !DISubprogram(name: "operator structA", linkageName: "_ZNVKSt3__113__atomic_baseI7structALb0EEcvS1_Ev", scope: !3110, file: !6, line: 928, type: !3144, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!3114, !3121}
!3146 = !DISubprogram(name: "operator structA", linkageName: "_ZNKSt3__113__atomic_baseI7structALb0EEcvS1_Ev", scope: !3110, file: !6, line: 930, type: !3147, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!3114, !3127}
!3149 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseI7structALb0EE8exchangeES1_NS_12memory_orderE", scope: !3110, file: !6, line: 932, type: !3150, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!3114, !3132, !3114, !2657}
!3152 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseI7structALb0EE8exchangeES1_NS_12memory_orderE", scope: !3110, file: !6, line: 935, type: !3153, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!3114, !3136, !3114, !2657}
!3155 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseI7structALb0EE21compare_exchange_weakERS1_S1_NS_12memory_orderES4_", scope: !3110, file: !6, line: 938, type: !3156, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!32, !3132, !3158, !3114, !2657, !2657}
!3158 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3114, size: 64)
!3159 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseI7structALb0EE21compare_exchange_weakERS1_S1_NS_12memory_orderES4_", scope: !3110, file: !6, line: 943, type: !3160, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!32, !3136, !3158, !3114, !2657, !2657}
!3162 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseI7structALb0EE23compare_exchange_strongERS1_S1_NS_12memory_orderES4_", scope: !3110, file: !6, line: 948, type: !3156, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!3163 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseI7structALb0EE23compare_exchange_strongERS1_S1_NS_12memory_orderES4_", scope: !3110, file: !6, line: 953, type: !3160, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!3164 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseI7structALb0EE21compare_exchange_weakERS1_S1_NS_12memory_orderE", scope: !3110, file: !6, line: 958, type: !3165, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!32, !3132, !3158, !3114, !2657}
!3167 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseI7structALb0EE21compare_exchange_weakERS1_S1_NS_12memory_orderE", scope: !3110, file: !6, line: 962, type: !3168, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!32, !3136, !3158, !3114, !2657}
!3170 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseI7structALb0EE23compare_exchange_strongERS1_S1_NS_12memory_orderE", scope: !3110, file: !6, line: 966, type: !3165, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!3171 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseI7structALb0EE23compare_exchange_strongERS1_S1_NS_12memory_orderE", scope: !3110, file: !6, line: 970, type: !3168, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!3172 = !DISubprogram(name: "__atomic_base", scope: !3110, file: !6, line: 976, type: !3173, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !3136}
!3175 = !DISubprogram(name: "__atomic_base", scope: !3110, file: !6, line: 982, type: !3176, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !3136, !3114}
!3178 = !DISubprogram(name: "__atomic_base", scope: !3110, file: !6, line: 984, type: !3179, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !3136, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3128, size: 64)
!3182 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseI7structALb0EEaSERKS2_", scope: !3110, file: !6, line: 985, type: !3183, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!3185, !3136, !3181}
!3185 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3110, size: 64)
!3186 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseI7structALb0EEaSERKS2_", scope: !3110, file: !6, line: 986, type: !3187, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!3185, !3132, !3181}
!3189 = !{!3190, !128}
!3190 = !DITemplateTypeParameter(name: "_Tp", type: !3114)
!3191 = !DISubprogram(name: "atomic", scope: !3107, file: !6, line: 1089, type: !3192, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3195 = !DISubprogram(name: "atomic", scope: !3107, file: !6, line: 1091, type: !3196, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !3194, !3114}
!3198 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicI7structAEaSES1_", scope: !3107, file: !6, line: 1094, type: !3199, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!3114, !3201, !3114}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3107)
!3203 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicI7structAEaSES1_", scope: !3107, file: !6, line: 1097, type: !3204, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!3114, !3194, !3114}
!3206 = !{!3190}
!3207 = !DILocalVariable(name: "B", scope: !3103, file: !3, line: 43, type: !3107)
!3208 = !DILocalVariable(name: "C", scope: !3103, file: !3, line: 43, type: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3210 = !DILocation(line: 42, column: 15, scope: !3103)
!3211 = !DILocation(line: 43, column: 26, scope: !3103)
!3212 = !DILocation(line: 43, column: 29, scope: !3103)
!3213 = !DILocation(line: 44, column: 1, scope: !3103)
!3214 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 46, type: !943, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3215)
!3215 = !{!3216, !3292}
!3216 = !DILocalVariable(name: "t1", scope: !3214, file: !3, line: 50, type: !3217)
!3217 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !7, file: !1042, line: 282, size: 64, elements: !3218, identifier: "_ZTSNSt3__16threadE")
!3218 = !{!3219, !3240, !3246, !3250, !3253, !3254, !3258, !3261, !3264, !3268, !3269, !3270, !3285, !3289}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !3217, file: !1042, line: 284, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !7, file: !1070, line: 72, baseType: !3221)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !3222, line: 30, baseType: !3223)
!3222 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !1074, line: 118, baseType: !3224)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !1074, line: 103, size: 65536, elements: !3226, identifier: "_ZTS17_opaque_pthread_t")
!3226 = !{!3227, !3228, !3236}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !3225, file: !1074, line: 104, baseType: !206, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !3225, file: !1074, line: 105, baseType: !3229, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !1074, line: 57, size: 192, elements: !3231, identifier: "_ZTS28__darwin_pthread_handler_rec")
!3231 = !{!3232, !3234, !3235}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !3230, file: !1074, line: 58, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !3230, file: !1074, line: 59, baseType: !929, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !3230, file: !1074, line: 60, baseType: !3229, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !3225, file: !1074, line: 106, baseType: !3237, size: 65408, offset: 128)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 65408, elements: !3238)
!3238 = !{!3239}
!3239 = !DISubrange(count: 8176)
!3240 = !DISubprogram(name: "thread", scope: !3217, file: !1042, line: 286, type: !3241, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3244 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3246 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !3217, file: !1042, line: 287, type: !3247, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!3249, !3243, !3244}
!3249 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3217, size: 64)
!3250 = !DISubprogram(name: "thread", scope: !3217, file: !1042, line: 293, type: !3251, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !3243}
!3253 = !DISubprogram(name: "~thread", scope: !3217, file: !1042, line: 308, type: !3251, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3254 = !DISubprogram(name: "thread", scope: !3217, file: !1042, line: 312, type: !3255, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{null, !3243, !3257}
!3257 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3217, size: 64)
!3258 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !3217, file: !1042, line: 314, type: !3259, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!3249, !3243, !3257}
!3261 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !3217, file: !1042, line: 318, type: !3262, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !3243, !3249}
!3264 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !3217, file: !1042, line: 321, type: !3265, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!32, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3268 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !3217, file: !1042, line: 322, type: !3251, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3269 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !3217, file: !1042, line: 323, type: !3251, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3270 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !3217, file: !1042, line: 325, type: !3271, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!3273, !3267}
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !3217, file: !1042, line: 289, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !7, file: !1042, line: 213, size: 64, elements: !3275, identifier: "_ZTSNSt3__111__thread_idE")
!3275 = !{!3276, !3278, !3282}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !3274, file: !1042, line: 218, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !7, file: !1070, line: 67, baseType: !3221)
!3278 = !DISubprogram(name: "__thread_id", scope: !3274, file: !1042, line: 222, type: !3279, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3281}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3282 = !DISubprogram(name: "__thread_id", scope: !3274, file: !1042, line: 252, type: !3283, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3281, !3277}
!3285 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !3217, file: !1042, line: 327, type: !3286, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!3288, !3243}
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !3217, file: !1042, line: 290, baseType: !3220)
!3289 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !3217, file: !1042, line: 329, type: !3290, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!1829}
!3292 = !DILocalVariable(name: "t2", scope: !3214, file: !3, line: 51, type: !3217)
!3293 = !DILocation(line: 47, column: 5, scope: !3214)
!3294 = !DILocation(line: 48, column: 5, scope: !3214)
!3295 = !DILocation(line: 49, column: 5, scope: !3214)
!3296 = !DILocation(line: 50, column: 5, scope: !3214)
!3297 = !DILocation(line: 50, column: 17, scope: !3214)
!3298 = !DILocalVariable(name: "this", arg: 1, scope: !3299, type: !3309, flags: DIFlagArtificial | DIFlagObjectPointer)
!3299 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !3217, file: !1042, line: 356, type: !3300, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3303, declaration: !3306, variables: !3307)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !3243, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1601, size: 64)
!3303 = !{!3304, !3305, !2798}
!3304 = !DITemplateTypeParameter(name: "_Fp", type: !3302)
!3305 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !60)
!3306 = !DISubprogram(name: "thread<void (&)(), void>", scope: !3217, file: !1042, line: 356, type: !3300, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !3303)
!3307 = !{!3298, !3308}
!3308 = !DILocalVariable(name: "__f", arg: 2, scope: !3299, file: !1042, line: 356, type: !3302)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3310 = !DILocation(line: 0, scope: !3299, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 50, column: 17, scope: !3214)
!3312 = !DILocation(line: 356, column: 22, scope: !3299, inlinedAt: !3311)
!3313 = !DILocation(line: 357, column: 1, scope: !3299, inlinedAt: !3311)
!3314 = !DILocation(line: 51, column: 5, scope: !3214)
!3315 = !DILocation(line: 0, scope: !3299, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 51, column: 17, scope: !3214)
!3317 = !DILocation(line: 356, column: 22, scope: !3299, inlinedAt: !3316)
!3318 = !DILocation(line: 357, column: 1, scope: !3299, inlinedAt: !3316)
!3319 = !DILocalVariable(name: "this", arg: 1, scope: !3320, type: !3322, flags: DIFlagArtificial | DIFlagObjectPointer)
!3320 = distinct !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !3217, file: !1042, line: 325, type: !3271, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3270, variables: !3321)
!3321 = !{!3319}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3323 = !DILocation(line: 0, scope: !3320, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 52, column: 30, scope: !3214)
!3325 = !DILocation(line: 325, column: 65, scope: !3320, inlinedAt: !3324)
!3326 = !DILocalVariable(name: "__t", arg: 1, scope: !3327, file: !1070, line: 332, type: !3330)
!3327 = distinct !DISubprogram(name: "__libcpp_thread_get_id", linkageName: "_ZNSt3__122__libcpp_thread_get_idEPKP17_opaque_pthread_t", scope: !7, file: !1070, line: 332, type: !3328, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3332)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!3277, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3332 = !{!3326}
!3333 = !DILocation(line: 332, column: 68, scope: !3327, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 325, column: 41, scope: !3320, inlinedAt: !3324)
!3335 = !DILocation(line: 334, column: 10, scope: !3327, inlinedAt: !3334)
!3336 = !{!3337, !3337, i64 0}
!3337 = !{!"any pointer", !2831, i64 0}
!3338 = !DILocation(line: 52, column: 5, scope: !3214)
!3339 = !DILocation(line: 51, column: 17, scope: !3214)
!3340 = !DILocation(line: 0, scope: !3320, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 53, column: 30, scope: !3214)
!3342 = !DILocation(line: 325, column: 65, scope: !3320, inlinedAt: !3341)
!3343 = !DILocation(line: 332, column: 68, scope: !3327, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 325, column: 41, scope: !3320, inlinedAt: !3341)
!3345 = !DILocation(line: 334, column: 10, scope: !3327, inlinedAt: !3344)
!3346 = !DILocation(line: 53, column: 5, scope: !3214)
!3347 = !DILocation(line: 0, scope: !3320, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 55, column: 28, scope: !3214)
!3349 = !DILocation(line: 332, column: 68, scope: !3327, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 325, column: 41, scope: !3320, inlinedAt: !3348)
!3351 = !DILocation(line: 334, column: 10, scope: !3327, inlinedAt: !3350)
!3352 = !DILocation(line: 55, column: 5, scope: !3214)
!3353 = !DILocation(line: 0, scope: !3320, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 56, column: 28, scope: !3214)
!3355 = !DILocation(line: 332, column: 68, scope: !3327, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 325, column: 41, scope: !3320, inlinedAt: !3354)
!3357 = !DILocation(line: 334, column: 10, scope: !3327, inlinedAt: !3356)
!3358 = !DILocation(line: 56, column: 5, scope: !3214)
!3359 = !DILocation(line: 57, column: 8, scope: !3214)
!3360 = !DILocation(line: 57, column: 19, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !3214, file: !3, discriminator: 1)
!3362 = !DILocation(line: 58, column: 5, scope: !3214)
!3363 = !DILocation(line: 59, column: 5, scope: !3214)
!3364 = !DILocation(line: 60, column: 1, scope: !3214)
!3365 = !DILocation(line: 60, column: 1, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !3214, file: !3, discriminator: 5)
!3367 = !DILocation(line: 60, column: 1, scope: !3361)
!3368 = !DILocation(line: 60, column: 1, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3214, file: !3, discriminator: 2)
!3370 = !DILocation(line: 60, column: 1, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !3214, file: !3, discriminator: 3)
!3372 = !DILocation(line: 60, column: 1, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3214, file: !3, discriminator: 4)
!3374 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !3217, file: !1042, line: 356, type: !3300, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3303, declaration: !3306, variables: !3375)
!3375 = !{!3376, !3377, !3378, !3381, !3526}
!3376 = !DILocalVariable(name: "this", arg: 1, scope: !3374, type: !3309, flags: DIFlagArtificial | DIFlagObjectPointer)
!3377 = !DILocalVariable(name: "__f", arg: 2, scope: !3374, file: !1042, line: 356, type: !3302)
!3378 = !DILocalVariable(name: "__tsp", scope: !3379, file: !1042, line: 359, type: !3380)
!3379 = distinct !DILexicalBlock(scope: !3374, file: !1042, line: 357, column: 1)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !1042, line: 358, baseType: !1031)
!3381 = !DILocalVariable(name: "__p", scope: !3379, file: !1042, line: 361, type: !3382)
!3382 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !35, line: 2334, size: 64, elements: !3383, templateParams: !3498, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!3383 = !{!3384, !3467, !3472, !3476, !3479, !3482, !3492, !3503, !3504, !3509, !3514, !3517, !3520, !3523}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !3382, file: !35, line: 2344, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !35, line: 2144, size: 64, elements: !3386, templateParams: !3464, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!3386 = !{!3387, !3410, !3445, !3449, !3454, !3457, !3460}
!3387 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3385, baseType: !3388)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !7, file: !35, line: 2076, size: 64, elements: !3389, templateParams: !3408, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!3389 = !{!3390, !3391, !3395, !3400}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !3388, file: !35, line: 2105, baseType: !1019, size: 64, flags: DIFlagPrivate)
!3391 = !DISubprogram(name: "__compressed_pair_elem", scope: !3388, file: !35, line: 2082, type: !3392, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3394}
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3395 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !3388, file: !35, line: 2101, type: !3396, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!3398, !3394}
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3388, file: !35, line: 2078, baseType: !3399)
!3399 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1019, size: 64)
!3400 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !3388, file: !35, line: 2102, type: !3401, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!3403, !3406}
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !3388, file: !35, line: 2079, baseType: !3404)
!3404 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3388)
!3408 = !{!3409, !251, !253}
!3409 = !DITemplateTypeParameter(name: "_Tp", type: !1019)
!3410 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3385, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !7, file: !35, line: 2109, size: 8, elements: !3412, templateParams: !3443, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!3412 = !{!3413, !3427, !3431, !3436}
!3413 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3411, baseType: !3414, flags: DIFlagPrivate)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !35, line: 2253, size: 8, elements: !3415, templateParams: !3425, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!3415 = !{!3416, !3420}
!3416 = !DISubprogram(name: "default_delete", scope: !3414, file: !35, line: 2257, type: !3417, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !3419}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3420 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !3414, file: !35, line: 2267, type: !3421, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !3423, !1019}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3414)
!3425 = !{!3426}
!3426 = !DITemplateTypeParameter(name: "_Tp", type: !1020)
!3427 = !DISubprogram(name: "__compressed_pair_elem", scope: !3411, file: !35, line: 2116, type: !3428, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{null, !3430}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3431 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !3411, file: !35, line: 2136, type: !3432, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!3434, !3430}
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !3411, file: !35, line: 2111, baseType: !3435)
!3435 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3414, size: 64)
!3436 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !3411, file: !35, line: 2137, type: !3437, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!3439, !3441}
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !3411, file: !35, line: 2112, baseType: !3440)
!3440 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3424, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3411)
!3443 = !{!3444, !276, !277}
!3444 = !DITemplateTypeParameter(name: "_Tp", type: !3414)
!3445 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !3385, file: !35, line: 2212, type: !3446, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!3398, !3448}
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3449 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !3385, file: !35, line: 2217, type: !3450, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!3403, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3385)
!3454 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !3385, file: !35, line: 2222, type: !3455, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!3434, !3448}
!3457 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !3385, file: !35, line: 2227, type: !3458, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!3439, !3452}
!3460 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !3385, file: !35, line: 2232, type: !3461, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3448, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3385, size: 64)
!3464 = !{!3465, !3466}
!3465 = !DITemplateTypeParameter(name: "_T1", type: !1019)
!3466 = !DITemplateTypeParameter(name: "_T2", type: !3414)
!3467 = !DISubprogram(name: "unique_ptr", scope: !3382, file: !35, line: 2427, type: !3468, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !3470, !3471}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3471 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3382, size: 64)
!3472 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !3382, file: !35, line: 2450, type: !3473, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!3475, !3470, !3471}
!3475 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3382, size: 64)
!3476 = !DISubprogram(name: "~unique_ptr", scope: !3382, file: !35, line: 2539, type: !3477, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !3470}
!3479 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !3382, file: !35, line: 2542, type: !3480, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!3475, !3470, !1518}
!3482 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !3382, file: !35, line: 2549, type: !3483, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!3485, !3490}
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3486, file: !138, line: 1084, baseType: !3487)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !138, line: 1083, size: 8, elements: !60, templateParams: !3425, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3488, file: !138, line: 1081, baseType: !1686)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !7, file: !138, line: 1081, size: 8, elements: !60, templateParams: !3489, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!3489 = !{!3426, !31}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3382)
!3492 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !3382, file: !35, line: 2553, type: !3493, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!3495, !3490}
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3382, file: !35, line: 2338, baseType: !3496)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3497, file: !35, line: 1031, baseType: !3500)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !35, line: 1029, size: 8, elements: !60, templateParams: !3498, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!3498 = !{!3426, !3499}
!3499 = !DITemplateTypeParameter(name: "_Dp", type: !3414)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3501, file: !35, line: 1023, baseType: !1019)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !115, file: !35, line: 1021, size: 8, elements: !60, templateParams: !3502, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!3502 = !{!3426, !3499, !128}
!3503 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !3382, file: !35, line: 2557, type: !3493, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3504 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !3382, file: !35, line: 2561, type: !3505, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!3507, !3470}
!3507 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !3382, file: !35, line: 2337, baseType: !3414)
!3509 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !3382, file: !35, line: 2565, type: !3510, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3512, !3490}
!3512 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3514 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !3382, file: !35, line: 2569, type: !3515, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!32, !3490}
!3517 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !3382, file: !35, line: 2574, type: !3518, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!3495, !3470}
!3520 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !3382, file: !35, line: 2581, type: !3521, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !3470, !3495}
!3523 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !3382, file: !35, line: 2589, type: !3524, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !3470, !3475}
!3526 = !DILocalVariable(name: "__ec", scope: !3379, file: !1042, line: 365, type: !252)
!3527 = !DILocation(line: 0, scope: !3374)
!3528 = !DILocation(line: 356, column: 22, scope: !3374)
!3529 = !DILocation(line: 359, column: 18, scope: !3379)
!3530 = !DILocation(line: 359, column: 22, scope: !3379)
!3531 = !DILocation(line: 359, column: 12, scope: !3379)
!3532 = !DILocation(line: 362, column: 13, scope: !3379)
!3533 = !DILocation(line: 363, column: 21, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3379, file: !1042, discriminator: 1)
!3535 = !DILocalVariable(name: "__u", arg: 2, scope: !3536, file: !1021, line: 728, type: !1507)
!3536 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !1020, file: !1021, line: 728, type: !3537, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3540, declaration: !3543, variables: !3544)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !1676, !1507, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1600, size: 64)
!3540 = !{!3541, !3542, !128}
!3541 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !1669)
!3542 = !DITemplateValueParameter(name: "_PackIsTuple", type: !32, value: i8 0)
!3543 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !1020, file: !1021, line: 728, type: !3537, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !3540)
!3544 = !{!3545, !3535, !3546}
!3545 = !DILocalVariable(name: "this", arg: 1, scope: !3536, type: !1019, flags: DIFlagArtificial | DIFlagObjectPointer)
!3546 = !DILocalVariable(name: "__u", arg: 3, scope: !3536, file: !1021, line: 728, type: !3539)
!3547 = !DILocation(line: 728, column: 24, scope: !3536, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 362, column: 17, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !3379, file: !1042, discriminator: 2)
!3550 = !DILocalVariable(name: "__u", arg: 2, scope: !3551, file: !1021, line: 728, type: !1507)
!3551 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !1020, file: !1021, line: 728, type: !3537, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3540, declaration: !3543, variables: !3552)
!3552 = !{!3553, !3550, !3554}
!3553 = !DILocalVariable(name: "this", arg: 1, scope: !3551, type: !1019, flags: DIFlagArtificial | DIFlagObjectPointer)
!3554 = !DILocalVariable(name: "__u", arg: 3, scope: !3551, file: !1021, line: 728, type: !3539)
!3555 = !DILocation(line: 728, column: 24, scope: !3551, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 742, column: 50, scope: !3536, inlinedAt: !3548)
!3557 = !DILocalVariable(name: "__u", arg: 6, scope: !3558, file: !1021, line: 382, type: !1507)
!3558 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !1025, file: !1021, line: 380, type: !3559, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3568, declaration: !3573, variables: !3574)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !1639, !1661, !3561, !3562, !3565, !1507, !3539}
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !1662, line: 253, size: 8, elements: !60, templateParams: !1721, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !7, file: !1662, line: 90, size: 8, elements: !60, templateParams: !3563, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!3563 = !{!3564}
!3564 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !60)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !7, file: !1662, line: 253, size: 8, elements: !60, templateParams: !3566, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!3566 = !{!3567}
!3567 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !60)
!3568 = !{!3569, !3570, !3571, !3572, !3541}
!3569 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !1665)
!3570 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !1669)
!3571 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !60)
!3572 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !60)
!3573 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !1025, file: !1021, line: 380, type: !3559, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !3568)
!3574 = !{!3575, !3577, !3578, !3579, !3580, !3557, !3581}
!3575 = !DILocalVariable(name: "this", arg: 1, scope: !3558, type: !3576, flags: DIFlagArtificial | DIFlagObjectPointer)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!3577 = !DILocalVariable(arg: 2, scope: !3558, file: !1021, line: 380, type: !1661)
!3578 = !DILocalVariable(arg: 3, scope: !3558, file: !1021, line: 380, type: !3561)
!3579 = !DILocalVariable(arg: 4, scope: !3558, file: !1021, line: 381, type: !3562)
!3580 = !DILocalVariable(arg: 5, scope: !3558, file: !1021, line: 381, type: !3565)
!3581 = !DILocalVariable(name: "__u", arg: 7, scope: !3558, file: !1021, line: 382, type: !3539)
!3582 = !DILocation(line: 382, column: 31, scope: !3558, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 738, column: 15, scope: !3551, inlinedAt: !3556)
!3584 = !DILocalVariable(name: "__u", arg: 6, scope: !3585, file: !1021, line: 382, type: !1507)
!3585 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !1025, file: !1021, line: 380, type: !3559, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3568, declaration: !3573, variables: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3584, !3592}
!3587 = !DILocalVariable(name: "this", arg: 1, scope: !3585, type: !3576, flags: DIFlagArtificial | DIFlagObjectPointer)
!3588 = !DILocalVariable(arg: 2, scope: !3585, file: !1021, line: 380, type: !1661)
!3589 = !DILocalVariable(arg: 3, scope: !3585, file: !1021, line: 380, type: !3561)
!3590 = !DILocalVariable(arg: 4, scope: !3585, file: !1021, line: 381, type: !3562)
!3591 = !DILocalVariable(arg: 5, scope: !3585, file: !1021, line: 381, type: !3565)
!3592 = !DILocalVariable(name: "__u", arg: 7, scope: !3585, file: !1021, line: 382, type: !3539)
!3593 = !DILocation(line: 382, column: 31, scope: !3585, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 387, column: 13, scope: !3558, inlinedAt: !3583)
!3595 = !DILocalVariable(name: "__t", arg: 2, scope: !3596, file: !1021, line: 225, type: !1507)
!3596 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !1028, file: !1021, line: 225, type: !3597, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3599, declaration: !3601, variables: !3602)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !1569, !1507}
!3599 = !{!3600, !2798}
!3600 = !DITemplateTypeParameter(name: "_Tp", type: !1031)
!3601 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !1028, file: !1021, line: 225, type: !3597, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !3599)
!3602 = !{!3603, !3595}
!3603 = !DILocalVariable(name: "this", arg: 1, scope: !3596, type: !3604, flags: DIFlagArtificial | DIFlagObjectPointer)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!3605 = !DILocation(line: 225, column: 37, scope: !3596, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 385, column: 13, scope: !3607, inlinedAt: !3594)
!3607 = !DILexicalBlockFile(scope: !3585, file: !1021, discriminator: 1)
!3608 = !DILocalVariable(name: "__u", arg: 2, scope: !3609, file: !35, line: 2427, type: !1507)
!3609 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !1031, file: !35, line: 2427, type: !1504, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1503, variables: !3610)
!3610 = !{!3611, !3608}
!3611 = !DILocalVariable(name: "this", arg: 1, scope: !3609, type: !3612, flags: DIFlagArtificial | DIFlagObjectPointer)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!3613 = !DILocation(line: 2427, column: 27, scope: !3609, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 226, column: 15, scope: !3615, inlinedAt: !3606)
!3615 = !DILexicalBlockFile(scope: !3596, file: !1021, discriminator: 1)
!3616 = !DILocalVariable(name: "__u", arg: 2, scope: !3617, file: !35, line: 2427, type: !1507)
!3617 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !1031, file: !35, line: 2427, type: !1504, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1503, variables: !3618)
!3618 = !{!3619, !3616}
!3619 = !DILocalVariable(name: "this", arg: 1, scope: !3617, type: !3612, flags: DIFlagArtificial | DIFlagObjectPointer)
!3620 = !DILocation(line: 2427, column: 27, scope: !3617, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 2428, column: 80, scope: !3609, inlinedAt: !3614)
!3622 = !DILocalVariable(name: "__t1", arg: 2, scope: !3623, file: !35, line: 2183, type: !3626)
!3623 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !1034, file: !35, line: 2183, type: !3624, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3628, declaration: !3631, variables: !3632)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !1484, !3626, !3627}
!3626 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1040, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1450, size: 64)
!3628 = !{!3629, !3630}
!3629 = !DITemplateTypeParameter(name: "_U1", type: !1040)
!3630 = !DITemplateTypeParameter(name: "_U2", type: !1450)
!3631 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !1034, file: !35, line: 2183, type: !3624, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !3628)
!3632 = !{!3633, !3622, !3635}
!3633 = !DILocalVariable(name: "this", arg: 1, scope: !3623, type: !3634, flags: DIFlagArtificial | DIFlagObjectPointer)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!3635 = !DILocalVariable(name: "__t2", arg: 3, scope: !3623, file: !35, line: 2183, type: !3627)
!3636 = !DILocation(line: 2183, column: 27, scope: !3623, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 2428, column: 9, scope: !3617, inlinedAt: !3621)
!3638 = !DILocalVariable(name: "__t1", arg: 2, scope: !3639, file: !35, line: 2183, type: !3626)
!3639 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !1034, file: !35, line: 2183, type: !3624, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3628, declaration: !3631, variables: !3640)
!3640 = !{!3641, !3638, !3642}
!3641 = !DILocalVariable(name: "this", arg: 1, scope: !3639, type: !3634, flags: DIFlagArtificial | DIFlagObjectPointer)
!3642 = !DILocalVariable(name: "__t2", arg: 3, scope: !3639, file: !35, line: 2183, type: !3627)
!3643 = !DILocation(line: 2183, column: 27, scope: !3639, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 2184, column: 74, scope: !3623, inlinedAt: !3637)
!3645 = !DILocalVariable(name: "__u", arg: 2, scope: !3646, file: !35, line: 2088, type: !3626)
!3646 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !1037, file: !35, line: 2088, type: !3647, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3649, declaration: !3651, variables: !3652)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !1430, !3626}
!3649 = !{!3650, !2798}
!3650 = !DITemplateTypeParameter(name: "_Up", type: !1040)
!3651 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !1037, file: !35, line: 2088, type: !3647, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !3649)
!3652 = !{!3653, !3645}
!3653 = !DILocalVariable(name: "this", arg: 1, scope: !3646, type: !3654, flags: DIFlagArtificial | DIFlagObjectPointer)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!3655 = !DILocation(line: 2088, column: 32, scope: !3646, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 2184, column: 9, scope: !3657, inlinedAt: !3644)
!3657 = !DILexicalBlockFile(scope: !3639, file: !35, discriminator: 1)
!3658 = !DILocation(line: 2089, column: 9, scope: !3646, inlinedAt: !3656)
!3659 = !{!3660, !3337, i64 0}
!3660 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !3337, i64 0}
!3661 = !DILocation(line: 387, column: 13, scope: !3585, inlinedAt: !3594)
!3662 = !DILocalVariable(name: "__t", arg: 2, scope: !3663, file: !1021, line: 225, type: !3539)
!3663 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !1597, file: !1021, line: 225, type: !3664, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3666, declaration: !3668, variables: !3669)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !1607, !3539}
!3666 = !{!3667, !2798}
!3667 = !DITemplateTypeParameter(name: "_Tp", type: !1600)
!3668 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !1597, file: !1021, line: 225, type: !3664, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !3666)
!3669 = !{!3670, !3662}
!3670 = !DILocalVariable(name: "this", arg: 1, scope: !3663, type: !3671, flags: DIFlagArtificial | DIFlagObjectPointer)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!3672 = !DILocation(line: 225, column: 37, scope: !3663, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 385, column: 13, scope: !3674, inlinedAt: !3594)
!3674 = !DILexicalBlockFile(scope: !3585, file: !1021, discriminator: 3)
!3675 = !DILocation(line: 226, column: 15, scope: !3663, inlinedAt: !3673)
!3676 = !{!3677, !3337, i64 0}
!3677 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !3337, i64 0}
!3678 = !DILocation(line: 361, column: 28, scope: !3379)
!3679 = !DILocation(line: 365, column: 40, scope: !3379)
!3680 = !DILocalVariable(name: "__t", arg: 1, scope: !3681, file: !1070, line: 321, type: !3684)
!3681 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !7, file: !1070, line: 321, type: !3682, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3688)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!252, !3684, !3685, !929}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!929, !929}
!3688 = !{!3680, !3689, !3690}
!3689 = !DILocalVariable(name: "__func", arg: 2, scope: !3681, file: !1070, line: 321, type: !3685)
!3690 = !DILocalVariable(name: "__arg", arg: 3, scope: !3681, file: !1070, line: 322, type: !929)
!3691 = !DILocation(line: 321, column: 47, scope: !3681, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 365, column: 16, scope: !3379)
!3693 = !DILocation(line: 321, column: 60, scope: !3681, inlinedAt: !3692)
!3694 = !DILocation(line: 322, column: 34, scope: !3681, inlinedAt: !3692)
!3695 = !DILocation(line: 324, column: 10, scope: !3681, inlinedAt: !3692)
!3696 = !DILocation(line: 365, column: 9, scope: !3379)
!3697 = !DILocation(line: 366, column: 14, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3379, file: !1042, line: 366, column: 9)
!3699 = !DILocation(line: 366, column: 9, scope: !3379)
!3700 = !DILocalVariable(name: "this", arg: 1, scope: !3701, type: !3703, flags: DIFlagArtificial | DIFlagObjectPointer)
!3701 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !3382, file: !35, line: 2539, type: !3477, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3476, variables: !3702)
!3702 = !{!3700}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3704 = !DILocation(line: 0, scope: !3701, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 370, column: 1, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3374, file: !1042, discriminator: 5)
!3707 = !DILocalVariable(name: "this", arg: 1, scope: !3708, type: !3703, flags: DIFlagArtificial | DIFlagObjectPointer)
!3708 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !3382, file: !35, line: 2539, type: !3477, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3476, variables: !3709)
!3709 = !{!3707}
!3710 = !DILocation(line: 0, scope: !3708, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 2539, column: 17, scope: !3701, inlinedAt: !3705)
!3712 = !DILocalVariable(name: "this", arg: 1, scope: !3713, type: !3703, flags: DIFlagArtificial | DIFlagObjectPointer)
!3713 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !3382, file: !35, line: 2581, type: !3521, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3520, variables: !3714)
!3714 = !{!3712, !3715, !3716}
!3715 = !DILocalVariable(name: "__p", arg: 2, scope: !3713, file: !35, line: 2581, type: !3495)
!3716 = !DILocalVariable(name: "__tmp", scope: !3713, file: !35, line: 2582, type: !3495)
!3717 = !DILocation(line: 0, scope: !3713, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 2539, column: 19, scope: !3719, inlinedAt: !3711)
!3719 = distinct !DILexicalBlock(scope: !3708, file: !35, line: 2539, column: 17)
!3720 = !DILocation(line: 2581, column: 22, scope: !3713, inlinedAt: !3718)
!3721 = !DILocation(line: 2582, column: 13, scope: !3713, inlinedAt: !3718)
!3722 = !DILocalVariable(name: "this", arg: 1, scope: !3723, type: !3612, flags: DIFlagArtificial | DIFlagObjectPointer)
!3723 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !1031, file: !35, line: 2539, type: !1513, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1512, variables: !3724)
!3724 = !{!3722}
!3725 = !DILocation(line: 0, scope: !3723, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 370, column: 1, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3374, file: !1042, discriminator: 8)
!3728 = !DILocalVariable(name: "this", arg: 1, scope: !3729, type: !3612, flags: DIFlagArtificial | DIFlagObjectPointer)
!3729 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !1031, file: !35, line: 2539, type: !1513, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1512, variables: !3730)
!3730 = !{!3728}
!3731 = !DILocation(line: 0, scope: !3729, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 2539, column: 17, scope: !3723, inlinedAt: !3726)
!3733 = !DILocalVariable(name: "this", arg: 1, scope: !3734, type: !3612, flags: DIFlagArtificial | DIFlagObjectPointer)
!3734 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !1031, file: !35, line: 2581, type: !1560, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1559, variables: !3735)
!3735 = !{!3733, !3736, !3737}
!3736 = !DILocalVariable(name: "__p", arg: 2, scope: !3734, file: !35, line: 2581, type: !1534)
!3737 = !DILocalVariable(name: "__tmp", scope: !3734, file: !35, line: 2582, type: !1534)
!3738 = !DILocation(line: 0, scope: !3734, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 2539, column: 19, scope: !3740, inlinedAt: !3732)
!3740 = distinct !DILexicalBlock(scope: !3729, file: !35, line: 2539, column: 17)
!3741 = !DILocation(line: 2581, column: 22, scope: !3734, inlinedAt: !3739)
!3742 = !DILocation(line: 2582, column: 13, scope: !3734, inlinedAt: !3739)
!3743 = !DILocation(line: 370, column: 1, scope: !3706)
!3744 = !DILocation(line: 370, column: 1, scope: !3379)
!3745 = !DILocation(line: 359, column: 18, scope: !3549)
!3746 = !DILocation(line: 370, column: 1, scope: !3747)
!3747 = !DILexicalBlockFile(scope: !3379, file: !1042, discriminator: 3)
!3748 = !DILocation(line: 369, column: 9, scope: !3698)
!3749 = !DILocation(line: 369, column: 9, scope: !3750)
!3750 = !DILexicalBlockFile(scope: !3698, file: !1042, discriminator: 1)
!3751 = !DILocation(line: 370, column: 1, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3698, file: !1042, discriminator: 4)
!3753 = !DILocation(line: 370, column: 1, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !3374, file: !1042, discriminator: 4)
!3755 = !DILocation(line: 0, scope: !3701, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 370, column: 1, scope: !3757)
!3757 = !DILexicalBlockFile(scope: !3374, file: !1042, discriminator: 6)
!3758 = !DILocation(line: 0, scope: !3708, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 2539, column: 17, scope: !3701, inlinedAt: !3756)
!3760 = !DILocation(line: 0, scope: !3713, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 2539, column: 19, scope: !3719, inlinedAt: !3759)
!3762 = !DILocation(line: 2581, column: 22, scope: !3713, inlinedAt: !3761)
!3763 = !DILocation(line: 2581, column: 22, scope: !3734, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 2539, column: 19, scope: !3740, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 2539, column: 17, scope: !3723, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 170, column: 7, scope: !3767, inlinedAt: !3772)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !1021, line: 170, column: 7)
!3768 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !1028, file: !1021, line: 170, type: !1573, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3769, variables: !3770)
!3769 = !DISubprogram(name: "~__tuple_leaf", scope: !1028, type: !1573, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!3770 = !{!3771}
!3771 = !DILocalVariable(name: "this", arg: 1, scope: !3768, type: !3604, flags: DIFlagArtificial | DIFlagObjectPointer)
!3772 = distinct !DILocation(line: 369, column: 37, scope: !3773, inlinedAt: !3778)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !1021, line: 369, column: 37)
!3774 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !1025, file: !1021, line: 369, type: !1637, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3775, variables: !3776)
!3775 = !DISubprogram(name: "~__tuple_impl", scope: !1025, type: !1637, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!3776 = !{!3777}
!3777 = !DILocalVariable(name: "this", arg: 1, scope: !3774, type: !3576, flags: DIFlagArtificial | DIFlagObjectPointer)
!3778 = distinct !DILocation(line: 369, column: 37, scope: !3779, inlinedAt: !3782)
!3779 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !1025, file: !1021, line: 369, type: !1637, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3775, variables: !3780)
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "this", arg: 1, scope: !3779, type: !3576, flags: DIFlagArtificial | DIFlagObjectPointer)
!3782 = distinct !DILocation(line: 474, column: 28, scope: !3783, inlinedAt: !3790)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !1021, line: 474, column: 28)
!3784 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !1020, file: !1021, line: 474, type: !3785, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3787, variables: !3788)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !1676}
!3787 = !DISubprogram(name: "~tuple", scope: !1020, type: !3785, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!3788 = !{!3789}
!3789 = !DILocalVariable(name: "this", arg: 1, scope: !3784, type: !1019, flags: DIFlagArtificial | DIFlagObjectPointer)
!3790 = distinct !DILocation(line: 474, column: 28, scope: !3791, inlinedAt: !3794)
!3791 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !1020, file: !1021, line: 474, type: !3785, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3787, variables: !3792)
!3792 = !{!3793}
!3793 = !DILocalVariable(name: "this", arg: 1, scope: !3791, type: !1019, flags: DIFlagArtificial | DIFlagObjectPointer)
!3794 = distinct !DILocation(line: 2272, column: 5, scope: !3795, inlinedAt: !3801)
!3795 = !DILexicalBlockFile(scope: !3796, file: !35, discriminator: 1)
!3796 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !3414, file: !35, line: 2267, type: !3421, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3420, variables: !3797)
!3797 = !{!3798, !3800}
!3798 = !DILocalVariable(name: "this", arg: 1, scope: !3796, type: !3799, flags: DIFlagArtificial | DIFlagObjectPointer)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3800 = !DILocalVariable(name: "__ptr", arg: 2, scope: !3796, file: !35, line: 2267, type: !1019)
!3801 = distinct !DILocation(line: 2585, column: 7, scope: !3802, inlinedAt: !3761)
!3802 = !DILexicalBlockFile(scope: !3803, file: !35, discriminator: 1)
!3803 = distinct !DILexicalBlock(scope: !3713, file: !35, line: 2584, column: 9)
!3804 = !DILocation(line: 2101, column: 40, scope: !3805, inlinedAt: !3808)
!3805 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1037, file: !35, line: 2101, type: !1432, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1431, variables: !3806)
!3806 = !{!3807}
!3807 = !DILocalVariable(name: "this", arg: 1, scope: !3805, type: !3654, flags: DIFlagArtificial | DIFlagObjectPointer)
!3808 = distinct !DILocation(line: 2213, column: 40, scope: !3809, inlinedAt: !3812)
!3809 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1034, file: !35, line: 2212, type: !1482, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1481, variables: !3810)
!3810 = !{!3811}
!3811 = !DILocalVariable(name: "this", arg: 1, scope: !3809, type: !3634, flags: DIFlagArtificial | DIFlagObjectPointer)
!3812 = distinct !DILocation(line: 2582, column: 28, scope: !3734, inlinedAt: !3764)
!3813 = !DILocation(line: 2582, column: 28, scope: !3734, inlinedAt: !3764)
!3814 = !DILocation(line: 2582, column: 13, scope: !3734, inlinedAt: !3764)
!3815 = !DILocation(line: 2583, column: 20, scope: !3734, inlinedAt: !3764)
!3816 = !DILocation(line: 2584, column: 9, scope: !3817, inlinedAt: !3764)
!3817 = distinct !DILexicalBlock(scope: !3734, file: !35, line: 2584, column: 9)
!3818 = !DILocation(line: 2584, column: 9, scope: !3734, inlinedAt: !3764)
!3819 = !DILocalVariable(name: "__ptr", arg: 2, scope: !3820, file: !35, line: 2267, type: !1040)
!3820 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !1450, file: !35, line: 2267, type: !1457, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1456, variables: !3821)
!3821 = !{!3822, !3819}
!3822 = !DILocalVariable(name: "this", arg: 1, scope: !3820, type: !3823, flags: DIFlagArtificial | DIFlagObjectPointer)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!3824 = !DILocation(line: 2267, column: 50, scope: !3820, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 2585, column: 7, scope: !3826, inlinedAt: !3764)
!3826 = !DILexicalBlockFile(scope: !3817, file: !35, discriminator: 1)
!3827 = !DILocation(line: 2272, column: 5, scope: !3828, inlinedAt: !3825)
!3828 = !DILexicalBlockFile(scope: !3820, file: !35, discriminator: 1)
!3829 = !DILocation(line: 2272, column: 5, scope: !3830, inlinedAt: !3825)
!3830 = !DILexicalBlockFile(scope: !3820, file: !35, discriminator: 2)
!3831 = !DILocation(line: 2585, column: 7, scope: !3817, inlinedAt: !3764)
!3832 = !DILocation(line: 2272, column: 5, scope: !3833, inlinedAt: !3801)
!3833 = !DILexicalBlockFile(scope: !3796, file: !35, discriminator: 2)
!3834 = !DILocation(line: 0, scope: !3723, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 370, column: 1, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3374, file: !1042, discriminator: 7)
!3837 = !DILocation(line: 0, scope: !3729, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 2539, column: 17, scope: !3723, inlinedAt: !3835)
!3839 = !DILocation(line: 0, scope: !3734, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 2539, column: 19, scope: !3740, inlinedAt: !3838)
!3841 = !DILocation(line: 2581, column: 22, scope: !3734, inlinedAt: !3840)
!3842 = !DILocation(line: 2582, column: 13, scope: !3734, inlinedAt: !3840)
!3843 = !DILocation(line: 2584, column: 9, scope: !3734, inlinedAt: !3840)
!3844 = !DILocation(line: 370, column: 1, scope: !3534)
!3845 = !DILocation(line: 2267, column: 50, scope: !3820, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 2585, column: 7, scope: !3826, inlinedAt: !3840)
!3847 = !DILocation(line: 2272, column: 5, scope: !3828, inlinedAt: !3846)
!3848 = !DILocation(line: 2272, column: 5, scope: !3830, inlinedAt: !3846)
!3849 = !DILocation(line: 2585, column: 7, scope: !3817, inlinedAt: !3840)
!3850 = !DILocation(line: 359, column: 18, scope: !3747)
!3851 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !7, file: !1042, line: 343, type: !3686, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3852, variables: !3854)
!3852 = !{!3853}
!3853 = !DITemplateTypeParameter(name: "_Fp", type: !1020)
!3854 = !{!3855, !3856}
!3855 = !DILocalVariable(name: "__vp", arg: 1, scope: !3851, file: !1042, line: 343, type: !929)
!3856 = !DILocalVariable(name: "__p", scope: !3851, file: !1042, line: 346, type: !3382)
!3857 = !DILocation(line: 343, column: 28, scope: !3851)
!3858 = !DILocation(line: 346, column: 26, scope: !3851)
!3859 = !DILocation(line: 347, column: 5, scope: !3851)
!3860 = !DILocation(line: 2101, column: 40, scope: !3805, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 2213, column: 40, scope: !3809, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 2575, column: 26, scope: !3863, inlinedAt: !3867)
!3863 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !1031, file: !35, line: 2574, type: !1557, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1556, variables: !3864)
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "this", arg: 1, scope: !3863, type: !3612, flags: DIFlagArtificial | DIFlagObjectPointer)
!3866 = !DILocalVariable(name: "__t", scope: !3863, file: !35, line: 2575, type: !1534)
!3867 = distinct !DILocation(line: 347, column: 59, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3851, file: !1042, discriminator: 3)
!3869 = !DILocation(line: 2575, column: 26, scope: !3863, inlinedAt: !3867)
!3870 = !DILocation(line: 2576, column: 20, scope: !3863, inlinedAt: !3867)
!3871 = !DILocalVariable(name: "this", arg: 1, scope: !3872, type: !3907, flags: DIFlagArtificial | DIFlagObjectPointer)
!3872 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !3873, file: !1042, line: 194, type: !3903, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !3902, variables: !3905)
!3873 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !7, file: !1042, line: 138, size: 64, elements: !3874, templateParams: !1461, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!3874 = !{!3875, !3880, !3884, !3889, !3893, !3894, !3895, !3900, !3901, !3902}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !3873, file: !1042, line: 140, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !7, file: !1070, line: 75, baseType: !3877)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !3878, line: 30, baseType: !3879)
!3878 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire")
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !1074, line: 112, baseType: !96)
!3880 = !DISubprogram(name: "__thread_specific_ptr", scope: !3873, file: !1042, line: 145, type: !3881, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3883}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3884 = !DISubprogram(name: "__thread_specific_ptr", scope: !3873, file: !1042, line: 148, type: !3885, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !3883, !3887}
!3887 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3873)
!3889 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !3873, file: !1042, line: 149, type: !3890, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!3892, !3883, !3887}
!3892 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3873, size: 64)
!3893 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !3873, file: !1042, line: 151, type: !1957, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!3894 = !DISubprogram(name: "~__thread_specific_ptr", scope: !3873, file: !1042, line: 156, type: !3881, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3895 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !3873, file: !1042, line: 159, type: !3896, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3873, file: !1042, line: 154, baseType: !1040)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3900 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !3873, file: !1042, line: 161, type: !3896, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3901 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !3873, file: !1042, line: 163, type: !3896, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3902 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !3873, file: !1042, line: 164, type: !3903, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3883, !3898}
!3905 = !{!3871, !3906}
!3906 = !DILocalVariable(name: "__p", arg: 2, scope: !3872, file: !1042, line: 164, type: !3898)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3908 = !DILocation(line: 0, scope: !3872, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 347, column: 27, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3851, file: !1042, discriminator: 2)
!3911 = !DILocation(line: 198, column: 22, scope: !3872, inlinedAt: !3909)
!3912 = !{!3913, !3914, i64 0}
!3913 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !3914, i64 0}
!3914 = !{!"long", !2831, i64 0}
!3915 = !DILocalVariable(name: "__key", arg: 1, scope: !3916, file: !1070, line: 385, type: !3876)
!3916 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !7, file: !1070, line: 385, type: !3917, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3919)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!252, !3876, !929}
!3919 = !{!3915, !3920}
!3920 = !DILocalVariable(name: "__p", arg: 2, scope: !3916, file: !1070, line: 385, type: !929)
!3921 = !DILocation(line: 385, column: 39, scope: !3916, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 198, column: 5, scope: !3872, inlinedAt: !3909)
!3923 = !DILocation(line: 385, column: 52, scope: !3916, inlinedAt: !3922)
!3924 = !DILocation(line: 387, column: 12, scope: !3916, inlinedAt: !3922)
!3925 = !DILocation(line: 270, column: 102, scope: !3926, inlinedAt: !3929)
!3926 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !1597, file: !1021, line: 270, type: !1624, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1623, variables: !3927)
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "this", arg: 1, scope: !3926, type: !3671, flags: DIFlagArtificial | DIFlagObjectPointer)
!3929 = distinct !DILocation(line: 951, column: 61, scope: !3930, inlinedAt: !3944)
!3930 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !1021, line: 948, type: !3931, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3941, variables: !3942)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!3933, !1686}
!3933 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3935, file: !1662, line: 463, baseType: !3937)
!3935 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !1662, line: 460, size: 8, elements: !60, templateParams: !3936, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!3936 = !{!1634, !3426}
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3938, file: !1662, line: 289, baseType: !1600)
!3938 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !1662, line: 285, size: 8, elements: !60, templateParams: !3939, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!3939 = !{!1634, !3940}
!3940 = !DITemplateTypeParameter(name: "_Tp", type: !3561)
!3941 = !{!1634, !1668}
!3942 = !{!3943}
!3943 = !DILocalVariable(name: "__t", arg: 1, scope: !3930, file: !1021, line: 948, type: !1686)
!3944 = distinct !DILocation(line: 339, column: 26, scope: !3945, inlinedAt: !3955)
!3945 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !7, file: !1042, line: 337, type: !3946, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3948, variables: !3952)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !1686, !3562}
!3948 = !{!3949, !3950, !3305, !3951}
!3949 = !DITemplateTypeParameter(name: "_TSp", type: !1031)
!3950 = !DITemplateTypeParameter(name: "_Fp", type: !1600)
!3951 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !60)
!3952 = !{!3953, !3954}
!3953 = !DILocalVariable(name: "__t", arg: 1, scope: !3945, file: !1042, line: 337, type: !1686)
!3954 = !DILocalVariable(arg: 2, scope: !3945, file: !1042, line: 337, type: !3562)
!3955 = distinct !DILocation(line: 349, column: 5, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3851, file: !1042, discriminator: 1)
!3957 = !DILocalVariable(name: "__f", arg: 1, scope: !3958, file: !138, line: 4322, type: !3539)
!3958 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !7, file: !138, line: 4322, type: !3959, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !3961, variables: !3962)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !3539}
!3961 = !{!3950, !3305}
!3962 = !{!3957}
!3963 = !DILocation(line: 4322, column: 16, scope: !3958, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 339, column: 5, scope: !3965, inlinedAt: !3955)
!3965 = !DILexicalBlockFile(scope: !3945, file: !1042, discriminator: 2)
!3966 = !DILocation(line: 4323, column: 1, scope: !3958, inlinedAt: !3964)
!3967 = !DILocation(line: 4323, column: 1, scope: !3968, inlinedAt: !3964)
!3968 = !DILexicalBlockFile(scope: !3958, file: !138, discriminator: 1)
!3969 = !DILocation(line: 0, scope: !3701, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 351, column: 1, scope: !3851)
!3971 = !DILocation(line: 0, scope: !3708, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 2539, column: 17, scope: !3701, inlinedAt: !3970)
!3973 = !DILocation(line: 0, scope: !3713, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 2539, column: 19, scope: !3719, inlinedAt: !3972)
!3975 = !DILocation(line: 2581, column: 22, scope: !3713, inlinedAt: !3974)
!3976 = !DILocation(line: 2581, column: 22, scope: !3734, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 2539, column: 19, scope: !3740, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 2539, column: 17, scope: !3723, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 170, column: 7, scope: !3767, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 369, column: 37, scope: !3773, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 369, column: 37, scope: !3779, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 474, column: 28, scope: !3783, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 474, column: 28, scope: !3791, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 2272, column: 5, scope: !3795, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 2585, column: 7, scope: !3802, inlinedAt: !3974)
!3986 = !DILocation(line: 2582, column: 28, scope: !3734, inlinedAt: !3977)
!3987 = !DILocation(line: 2582, column: 13, scope: !3734, inlinedAt: !3977)
!3988 = !DILocation(line: 2583, column: 20, scope: !3734, inlinedAt: !3977)
!3989 = !DILocation(line: 2584, column: 9, scope: !3817, inlinedAt: !3977)
!3990 = !DILocation(line: 2584, column: 9, scope: !3734, inlinedAt: !3977)
!3991 = !DILocation(line: 2267, column: 50, scope: !3820, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 2585, column: 7, scope: !3826, inlinedAt: !3977)
!3993 = !DILocation(line: 2272, column: 5, scope: !3828, inlinedAt: !3992)
!3994 = !DILocation(line: 2272, column: 5, scope: !3830, inlinedAt: !3992)
!3995 = !DILocation(line: 2585, column: 7, scope: !3817, inlinedAt: !3977)
!3996 = !DILocation(line: 2272, column: 5, scope: !3833, inlinedAt: !3985)
!3997 = !DILocation(line: 351, column: 1, scope: !3851)
!3998 = !DILocation(line: 351, column: 1, scope: !3956)
!3999 = !DILocation(line: 0, scope: !3701, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 351, column: 1, scope: !3956)
!4001 = !DILocation(line: 0, scope: !3708, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 2539, column: 17, scope: !3701, inlinedAt: !4000)
!4003 = !DILocation(line: 0, scope: !3713, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 2539, column: 19, scope: !3719, inlinedAt: !4002)
!4005 = !DILocation(line: 2581, column: 22, scope: !3713, inlinedAt: !4004)
!4006 = !DILocation(line: 2584, column: 9, scope: !3713, inlinedAt: !4004)
!4007 = !DILocation(line: 2584, column: 9, scope: !3803, inlinedAt: !4004)
!4008 = !DILocation(line: 2101, column: 40, scope: !3805, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 2213, column: 40, scope: !3809, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 2582, column: 28, scope: !3734, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 2539, column: 19, scope: !3740, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 2539, column: 17, scope: !3723, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 170, column: 7, scope: !3767, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 369, column: 37, scope: !3773, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 369, column: 37, scope: !3779, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 474, column: 28, scope: !3783, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 474, column: 28, scope: !3791, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 2272, column: 5, scope: !3795, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 2585, column: 7, scope: !3802, inlinedAt: !4004)
!4020 = !DILocation(line: 2581, column: 22, scope: !3734, inlinedAt: !4011)
!4021 = !DILocation(line: 2582, column: 28, scope: !3734, inlinedAt: !4011)
!4022 = !DILocation(line: 2582, column: 13, scope: !3734, inlinedAt: !4011)
!4023 = !DILocation(line: 2583, column: 20, scope: !3734, inlinedAt: !4011)
!4024 = !DILocation(line: 2584, column: 9, scope: !3817, inlinedAt: !4011)
!4025 = !DILocation(line: 2584, column: 9, scope: !3734, inlinedAt: !4011)
!4026 = !DILocation(line: 2267, column: 50, scope: !3820, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 2585, column: 7, scope: !3826, inlinedAt: !4011)
!4028 = !DILocation(line: 2272, column: 5, scope: !3828, inlinedAt: !4027)
!4029 = !DILocation(line: 2272, column: 5, scope: !3830, inlinedAt: !4027)
!4030 = !DILocation(line: 2585, column: 7, scope: !3817, inlinedAt: !4011)
!4031 = !DILocation(line: 2272, column: 5, scope: !3833, inlinedAt: !4019)
!4032 = !DILocation(line: 2585, column: 7, scope: !3803, inlinedAt: !4004)
!4033 = !DILocation(line: 351, column: 1, scope: !3910)
