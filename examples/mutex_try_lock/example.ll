; ModuleID = 'example.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"class.std::__1::chrono::duration" = type { i64 }
%"class.std::__1::mutex" = type { %struct._opaque_pthread_mutex_t }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::chrono::duration.0" = type { x86_fp80 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"struct.std::__1::chrono::__duration_lt" = type { i8 }
%"class.std::__1::chrono::duration.3" = type { x86_fp80 }
%"struct.std::__1::chrono::__duration_cast.4" = type { i8 }
%"struct.std::__1::chrono::__duration_cast" = type { i8 }
%"struct.std::__1::chrono::__duration_lt.2" = type { i8 }
%"class.std::__1::chrono::duration.1" = type { i64 }
%"struct.std::__1::chrono::__duration_cast.5" = type { i8 }
%"struct.std::__1::chrono::__duration_lt.6" = type { i8 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.8" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.7, [23 x i8] }
%union.anon.7 = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::default_delete" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::__compressed_pair.9" = type { %"struct.std::__1::__compressed_pair_elem.10" }
%"struct.std::__1::__compressed_pair_elem.10" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.9" }
%"struct.std::__1::default_delete.17" = type { i8 }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.15" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.15" = type { void ()* }
%"class.std::__1::__compressed_pair.13" = type { %"struct.std::__1::__compressed_pair_elem.14" }
%"struct.std::__1::__compressed_pair_elem.14" = type { %"class.std::__1::tuple"* }
%"class.std::__1::unique_ptr.12" = type { %"class.std::__1::__compressed_pair.13" }
%"struct.std::__1::__compressed_pair_elem.11" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.16" = type { i8 }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"struct.std::__1::__tuple_indices.19" = type { i8 }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@interval = global %"class.std::__1::chrono::duration" { i64 100 }, align 8, !dbg !0
@mutex = global %"class.std::__1::mutex" { %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer } }, align 8, !dbg !2676
@__dso_handle = external global i8
@job_shared = global i32 0, align 4, !dbg !2678
@job_exclusive = global i32 0, align 4, !dbg !2680
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"job shared (\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"job exclusive (\00", align 1
@_ZZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EEE4_Max = internal constant %"class.std::__1::chrono::duration.0" { x86_fp80 0xK402089705F4136B4A596 }, align 16, !dbg !2682
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_example.cpp, i8* null }]

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init() #0 section "__TEXT,__StaticInit,regular,pure_instructions" !dbg !3592 {
entry:
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__1::mutex"*)* @_ZNSt3__15mutexD1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::mutex"* @mutex to i8*), i8* @__dso_handle) #2, !dbg !3593
  ret void, !dbg !3593
}

; Function Attrs: nounwind
declare void @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline ssp uwtable
define void @_Z5job_1v() #0 !dbg !3594 {
entry:
  call void @_ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE(%"class.std::__1::chrono::duration"* dereferenceable(8) @interval), !dbg !3595
  br label %while.body, !dbg !3596

while.body:                                       ; preds = %entry, %if.end
  %call = call zeroext i1 @_ZNSt3__15mutex8try_lockEv(%"class.std::__1::mutex"* @mutex) #2, !dbg !3597
  br i1 %call, label %if.then, label %if.else, !dbg !3600

if.then:                                          ; preds = %while.body
  %call1 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !3601
  %0 = load i32, i32* @job_shared, align 4, !dbg !3603
  %call2 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call1, i32 %0), !dbg !3604
  %call3 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !3606
  call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mutex) #2, !dbg !3608
  ret void, !dbg !3609

if.else:                                          ; preds = %while.body
  %1 = load i32, i32* @job_exclusive, align 4, !dbg !3610
  %inc = add nsw i32 %1, 1, !dbg !3610
  store i32 %inc, i32* @job_exclusive, align 4, !dbg !3610
  %call4 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !3612
  %2 = load i32, i32* @job_exclusive, align 4, !dbg !3613
  %call5 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call4, i32 %2), !dbg !3614
  %call6 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !3616
  call void @_ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE(%"class.std::__1::chrono::duration"* dereferenceable(8) @interval), !dbg !3618
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.body, !dbg !3619, !llvm.loop !3621
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE(%"class.std::__1::chrono::duration"* dereferenceable(8) %__d) #0 !dbg !2684 {
entry:
  %this.addr.i3.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i3.i.i.i, metadata !3623, metadata !3626), !dbg !3627
  %this.addr.i.i.i.i95 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i95, metadata !3623, metadata !3626), !dbg !3652
  %this.addr.i.i.i96 = alloca %"struct.std::__1::chrono::__duration_lt"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::chrono::__duration_lt"** %this.addr.i.i.i96, metadata !3654, metadata !3626), !dbg !3656
  %__lhs.addr.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__lhs.addr.i.i.i, metadata !3657, metadata !3626), !dbg !3658
  %__rhs.addr.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__rhs.addr.i.i.i, metadata !3659, metadata !3626), !dbg !3660
  %__lhs.addr.i.i97 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__lhs.addr.i.i97, metadata !3661, metadata !3626), !dbg !3662
  %__rhs.addr.i.i98 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__rhs.addr.i.i98, metadata !3663, metadata !3626), !dbg !3664
  %tmp.i.i = alloca %"struct.std::__1::chrono::__duration_lt", align 1
  %__lhs.addr.i99 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__lhs.addr.i99, metadata !3665, metadata !3626), !dbg !3666
  %__rhs.addr.i100 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__rhs.addr.i100, metadata !3667, metadata !3626), !dbg !3668
  %this.addr.i39.i.i = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i39.i.i, metadata !3669, metadata !3626), !dbg !3672
  %this.addr.i.i.i6.i.i = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i6.i.i, metadata !3669, metadata !3626), !dbg !3685
  %this.addr.i.i.i.i.i.i7.i.i = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i.i7.i.i, metadata !3701, metadata !3626), !dbg !3710
  %__r.addr.i.i.i.i.i.i8.i.i = alloca x86_fp80*, align 8
  call void @llvm.dbg.declare(metadata x86_fp80** %__r.addr.i.i.i.i.i.i8.i.i, metadata !3724, metadata !3626), !dbg !3725
  %.addr.i.i.i.i.i.i9.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i.i.i9.i.i, metadata !3726, metadata !3626), !dbg !3727
  %this.addr.i2.i.i.i.i10.i.i = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i2.i.i.i.i10.i.i, metadata !3728, metadata !3626), !dbg !3729
  %__r.addr.i.i.i.i.i11.i.i = alloca x86_fp80*, align 8
  call void @llvm.dbg.declare(metadata x86_fp80** %__r.addr.i.i.i.i.i11.i.i, metadata !3730, metadata !3626), !dbg !3731
  %.addr.i.i.i.i.i12.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i.i12.i.i, metadata !3732, metadata !3626), !dbg !3733
  %this.addr.i.i.i.i.i13.i.i = alloca %"class.std::__1::chrono::duration.0"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.0"** %this.addr.i.i.i.i.i13.i.i, metadata !3734, metadata !3626), !dbg !3737
  %retval.i.i.i.i14.i.i = alloca %"class.std::__1::chrono::duration.3", align 16
  %this.addr.i.i.i.i15.i.i = alloca %"struct.std::__1::chrono::__duration_cast.4"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::chrono::__duration_cast.4"** %this.addr.i.i.i.i15.i.i, metadata !3739, metadata !3626), !dbg !3741
  %__fd.addr.i.i.i.i16.i.i = alloca %"class.std::__1::chrono::duration.0"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.0"** %__fd.addr.i.i.i.i16.i.i, metadata !3742, metadata !3626), !dbg !3743
  %ref.tmp.i.i.i.i17.i.i = alloca x86_fp80, align 16
  %retval.i.i.i18.i.i = alloca %"class.std::__1::chrono::duration.3", align 16
  %__fd.addr.i.i.i19.i.i = alloca %"class.std::__1::chrono::duration.0"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.0"** %__fd.addr.i.i.i19.i.i, metadata !3744, metadata !3626), !dbg !3745
  %tmp.i.i.i20.i.i = alloca %"struct.std::__1::chrono::__duration_cast.4", align 1
  %this.addr.i.i21.i.i = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i.i21.i.i, metadata !3746, metadata !3626), !dbg !3747
  %__d.addr.i.i22.i.i = alloca %"class.std::__1::chrono::duration.0"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.0"** %__d.addr.i.i22.i.i, metadata !3748, metadata !3626), !dbg !3749
  %.addr.i.i23.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i23.i.i, metadata !3750, metadata !3626), !dbg !3751
  %ref.tmp.i.i24.i.i = alloca %"class.std::__1::chrono::duration.3", align 16
  %this.addr.i25.i.i = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i25.i.i, metadata !3752, metadata !3626), !dbg !3753
  %__d.addr.i26.i.i = alloca %"class.std::__1::chrono::duration.0"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.0"** %__d.addr.i26.i.i, metadata !3754, metadata !3626), !dbg !3755
  %.addr.i27.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i27.i.i, metadata !3756, metadata !3626), !dbg !3757
  %this.addr.i4.i.i48 = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i4.i.i48, metadata !3669, metadata !3626), !dbg !3758
  %this.addr.i.i.i.i.i49 = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i49, metadata !3669, metadata !3626), !dbg !3761
  %this.addr.i.i.i.i.i.i.i.i50 = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i.i.i.i50, metadata !3701, metadata !3626), !dbg !3772
  %__r.addr.i.i.i.i.i.i.i.i51 = alloca x86_fp80*, align 8
  call void @llvm.dbg.declare(metadata x86_fp80** %__r.addr.i.i.i.i.i.i.i.i51, metadata !3724, metadata !3626), !dbg !3791
  %.addr.i.i.i.i.i.i.i.i52 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i.i.i.i.i52, metadata !3726, metadata !3626), !dbg !3792
  %this.addr.i2.i.i.i.i.i.i53 = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i2.i.i.i.i.i.i53, metadata !3728, metadata !3626), !dbg !3793
  %__r.addr.i.i.i.i.i.i.i54 = alloca x86_fp80*, align 8
  call void @llvm.dbg.declare(metadata x86_fp80** %__r.addr.i.i.i.i.i.i.i54, metadata !3730, metadata !3626), !dbg !3794
  %.addr.i.i.i.i.i.i.i55 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i.i.i.i55, metadata !3732, metadata !3626), !dbg !3795
  %this.addr.i.i.i.i.i.i.i56 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i.i.i.i56, metadata !3623, metadata !3626), !dbg !3796
  %retval.i.i.i.i.i.i57 = alloca %"class.std::__1::chrono::duration.3", align 16
  %this.addr.i.i.i.i.i.i58 = alloca %"struct.std::__1::chrono::__duration_cast"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::chrono::__duration_cast"** %this.addr.i.i.i.i.i.i58, metadata !3798, metadata !3626), !dbg !3800
  %__fd.addr.i.i.i.i.i.i59 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i.i59, metadata !3801, metadata !3626), !dbg !3802
  %ref.tmp.i.i.i.i.i.i60 = alloca x86_fp80, align 16
  %retval.i.i.i.i.i61 = alloca %"class.std::__1::chrono::duration.3", align 16
  %__fd.addr.i.i.i.i.i62 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i62, metadata !3803, metadata !3626), !dbg !3804
  %tmp.i.i.i.i.i63 = alloca %"struct.std::__1::chrono::__duration_cast", align 1
  %this.addr.i.i.i.i64 = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i64, metadata !3805, metadata !3626), !dbg !3806
  %__d.addr.i.i.i.i65 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__d.addr.i.i.i.i65, metadata !3807, metadata !3626), !dbg !3808
  %.addr.i.i.i.i66 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i66, metadata !3809, metadata !3626), !dbg !3810
  %ref.tmp.i.i.i.i67 = alloca %"class.std::__1::chrono::duration.3", align 16
  %this.addr.i.i.i68 = alloca %"class.std::__1::chrono::duration.3"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i68, metadata !3811, metadata !3626), !dbg !3812
  %__d.addr.i.i.i69 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__d.addr.i.i.i69, metadata !3813, metadata !3626), !dbg !3814
  %.addr.i.i.i70 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i70, metadata !3815, metadata !3626), !dbg !3816
  %this.addr.i.i71 = alloca %"struct.std::__1::chrono::__duration_lt.2"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::chrono::__duration_lt.2"** %this.addr.i.i71, metadata !3817, metadata !3626), !dbg !3819
  %__lhs.addr.i.i72 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__lhs.addr.i.i72, metadata !3820, metadata !3626), !dbg !3821
  %__rhs.addr.i.i73 = alloca %"class.std::__1::chrono::duration.0"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.0"** %__rhs.addr.i.i73, metadata !3822, metadata !3626), !dbg !3823
  %ref.tmp.i.i74 = alloca %"class.std::__1::chrono::duration.3", align 16
  %ref.tmp2.i.i75 = alloca %"class.std::__1::chrono::duration.3", align 16
  %__lhs.addr.i76 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__lhs.addr.i76, metadata !3824, metadata !3626), !dbg !3825
  %__rhs.addr.i77 = alloca %"class.std::__1::chrono::duration.0"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.0"** %__rhs.addr.i77, metadata !3826, metadata !3626), !dbg !3827
  %tmp.i78 = alloca %"struct.std::__1::chrono::__duration_lt.2", align 1
  %this.addr.i.i.i.i33 = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i33, metadata !3828, metadata !3626), !dbg !3837
  %__r.addr.i.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i.i, metadata !3852, metadata !3626), !dbg !3853
  %.addr.i.i.i.i34 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i34, metadata !3854, metadata !3626), !dbg !3855
  %this.addr.i2.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i2.i.i, metadata !3856, metadata !3626), !dbg !3857
  %__r.addr.i.i.i35 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i35, metadata !3858, metadata !3626), !dbg !3859
  %.addr.i.i.i36 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i36, metadata !3860, metadata !3626), !dbg !3861
  %this.addr.i.i.i37 = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i.i37, metadata !3623, metadata !3626), !dbg !3862
  %retval.i.i = alloca %"class.std::__1::chrono::duration.1", align 8
  %this.addr.i.i38 = alloca %"struct.std::__1::chrono::__duration_cast.5"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::chrono::__duration_cast.5"** %this.addr.i.i38, metadata !3864, metadata !3626), !dbg !3866
  %__fd.addr.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__fd.addr.i.i, metadata !3867, metadata !3626), !dbg !3868
  %ref.tmp.i.i39 = alloca i64, align 8
  %retval.i40 = alloca %"class.std::__1::chrono::duration.1", align 8
  %__fd.addr.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__fd.addr.i, metadata !3869, metadata !3626), !dbg !3870
  %tmp.i41 = alloca %"struct.std::__1::chrono::__duration_cast.5", align 1
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i.i, metadata !3871, metadata !3626), !dbg !3874
  %this.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i.i.i.i.i, metadata !3828, metadata !3626), !dbg !3893
  %__r.addr.i.i.i.i.i.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i.i.i.i.i.i, metadata !3852, metadata !3626), !dbg !3898
  %.addr.i.i.i.i.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i.i.i.i.i, metadata !3854, metadata !3626), !dbg !3899
  %this.addr.i2.i.i.i.i.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i2.i.i.i.i.i.i, metadata !3856, metadata !3626), !dbg !3900
  %__r.addr.i.i.i.i.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i.i.i.i.i, metadata !3858, metadata !3626), !dbg !3901
  %.addr.i.i.i.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i.i.i.i, metadata !3860, metadata !3626), !dbg !3902
  %this.addr.i.i.i.i.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i.i.i.i, metadata !3623, metadata !3626), !dbg !3903
  %retval.i.i.i.i.i.i = alloca %"class.std::__1::chrono::duration.1", align 8
  %this.addr.i.i.i.i.i.i = alloca %"struct.std::__1::chrono::__duration_cast.5"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::chrono::__duration_cast.5"** %this.addr.i.i.i.i.i.i, metadata !3864, metadata !3626), !dbg !3905
  %__fd.addr.i.i.i.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i.i, metadata !3867, metadata !3626), !dbg !3906
  %ref.tmp.i.i.i.i.i.i = alloca i64, align 8
  %retval.i.i.i.i.i = alloca %"class.std::__1::chrono::duration.1", align 8
  %__fd.addr.i.i.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i, metadata !3869, metadata !3626), !dbg !3907
  %tmp.i.i.i.i.i = alloca %"struct.std::__1::chrono::__duration_cast.5", align 1
  %this.addr.i.i.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i, metadata !3908, metadata !3626), !dbg !3909
  %__d.addr.i.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__d.addr.i.i.i.i, metadata !3910, metadata !3626), !dbg !3911
  %.addr.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i, metadata !3912, metadata !3626), !dbg !3913
  %ref.tmp.i.i.i.i = alloca %"class.std::__1::chrono::duration.1", align 8
  %this.addr.i7.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i7.i.i, metadata !3914, metadata !3626), !dbg !3915
  %__d.addr.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__d.addr.i.i.i, metadata !3916, metadata !3626), !dbg !3917
  %.addr.i.i.i27 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i27, metadata !3918, metadata !3626), !dbg !3919
  %this.addr.i4.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i4.i.i, metadata !3871, metadata !3626), !dbg !3920
  %this.addr.i.i.i28 = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i28, metadata !3871, metadata !3626), !dbg !3923
  %this.addr.i.i29 = alloca %"struct.std::__1::chrono::__duration_lt.6"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::chrono::__duration_lt.6"** %this.addr.i.i29, metadata !3925, metadata !3626), !dbg !3927
  %__lhs.addr.i.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %__lhs.addr.i.i, metadata !3928, metadata !3626), !dbg !3929
  %__rhs.addr.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__rhs.addr.i.i, metadata !3930, metadata !3626), !dbg !3931
  %ref.tmp.i.i = alloca %"class.std::__1::chrono::duration.1", align 8
  %ref.tmp2.i.i = alloca %"class.std::__1::chrono::duration.1", align 8
  %__lhs.addr.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %__lhs.addr.i, metadata !3932, metadata !3626), !dbg !3933
  %__rhs.addr.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__rhs.addr.i, metadata !3934, metadata !3626), !dbg !3935
  %tmp.i = alloca %"struct.std::__1::chrono::__duration_lt.6", align 1
  %this.addr.i = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i, metadata !3936, metadata !3626), !dbg !3938
  %this.addr.i.i.i15 = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i15, metadata !3828, metadata !3626), !dbg !3940
  %__r.addr.i.i.i16 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i16, metadata !3852, metadata !3626), !dbg !3946
  %.addr.i.i.i17 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i17, metadata !3854, metadata !3626), !dbg !3947
  %this.addr.i.i18 = alloca %"class.std::__1::chrono::duration.1"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"** %this.addr.i.i18, metadata !3856, metadata !3626), !dbg !3948
  %__r.addr.i.i19 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i19, metadata !3858, metadata !3626), !dbg !3949
  %.addr.i.i20 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i20, metadata !3860, metadata !3626), !dbg !3950
  %retval.i21 = alloca %"class.std::__1::chrono::duration.1", align 8
  %ref.tmp.i22 = alloca i64, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i.i, metadata !3951, metadata !3626), !dbg !3957
  %__r.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i, metadata !3964, metadata !3626), !dbg !3965
  %.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i, metadata !3966, metadata !3626), !dbg !3967
  %this.addr.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i, metadata !3968, metadata !3626), !dbg !3969
  %__r.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i, metadata !3970, metadata !3626), !dbg !3971
  %.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i, metadata !3972, metadata !3626), !dbg !3973
  %retval.i = alloca %"class.std::__1::chrono::duration", align 8
  %ref.tmp.i = alloca i64, align 8
  %__d.addr = alloca %"class.std::__1::chrono::duration"*, align 8
  %ref.tmp = alloca %"class.std::__1::chrono::duration", align 8
  %__ns = alloca %"class.std::__1::chrono::duration.1", align 8
  %ref.tmp4 = alloca %"class.std::__1::chrono::duration.1", align 8
  %ref.tmp10 = alloca %"class.std::__1::chrono::duration.1", align 8
  store %"class.std::__1::chrono::duration"* %__d, %"class.std::__1::chrono::duration"** %__d.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__d.addr, metadata !3974, metadata !3626), !dbg !3975
  %0 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr, align 8, !dbg !3976
  store i64 0, i64* %ref.tmp.i, align 8, !dbg !3977
  store %"class.std::__1::chrono::duration"* %retval.i, %"class.std::__1::chrono::duration"** %this.addr.i.i, align 8
  store i64* %ref.tmp.i, i64** %__r.addr.i.i, align 8
  store i8* null, i8** %.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i, align 8
  %1 = load i64*, i64** %__r.addr.i.i, align 8, !dbg !3978
  %2 = load i8*, i8** %.addr.i.i, align 8, !dbg !3978
  store %"class.std::__1::chrono::duration"* %this1.i.i, %"class.std::__1::chrono::duration"** %this.addr.i.i.i, align 8
  store i64* %1, i64** %__r.addr.i.i.i, align 8
  store i8* %2, i8** %.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i.i, align 8
  %__rep_.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i.i.i, i32 0, i32 0, !dbg !3979
  %3 = load i64*, i64** %__r.addr.i.i.i, align 8, !dbg !3980
  %4 = load i64, i64* %3, align 8, !dbg !3980
  store i64 %4, i64* %__rep_.i.i.i, align 8, !dbg !3979
  %coerce.dive.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %retval.i, i32 0, i32 0, !dbg !3981
  %5 = load i64, i64* %coerce.dive.i, align 8, !dbg !3981
  %coerce.dive = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %ref.tmp, i32 0, i32 0, !dbg !3982
  store i64 %5, i64* %coerce.dive, align 8, !dbg !3982
  store %"class.std::__1::chrono::duration"* %0, %"class.std::__1::chrono::duration"** %__lhs.addr.i99, align 8
  store %"class.std::__1::chrono::duration"* %ref.tmp, %"class.std::__1::chrono::duration"** %__rhs.addr.i100, align 8
  %6 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__rhs.addr.i100, align 8, !dbg !3983
  %7 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__lhs.addr.i99, align 8, !dbg !3984
  store %"class.std::__1::chrono::duration"* %6, %"class.std::__1::chrono::duration"** %__lhs.addr.i.i97, align 8
  store %"class.std::__1::chrono::duration"* %7, %"class.std::__1::chrono::duration"** %__rhs.addr.i.i98, align 8
  %8 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__lhs.addr.i.i97, align 8, !dbg !3985
  %9 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__rhs.addr.i.i98, align 8, !dbg !3986
  store %"struct.std::__1::chrono::__duration_lt"* %tmp.i.i, %"struct.std::__1::chrono::__duration_lt"** %this.addr.i.i.i96, align 8
  store %"class.std::__1::chrono::duration"* %8, %"class.std::__1::chrono::duration"** %__lhs.addr.i.i.i, align 8
  store %"class.std::__1::chrono::duration"* %9, %"class.std::__1::chrono::duration"** %__rhs.addr.i.i.i, align 8
  %this1.i.i.i101 = load %"struct.std::__1::chrono::__duration_lt"*, %"struct.std::__1::chrono::__duration_lt"** %this.addr.i.i.i96, align 8
  %10 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__lhs.addr.i.i.i, align 8, !dbg !3987
  store %"class.std::__1::chrono::duration"* %10, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i95, align 8
  %this1.i.i.i.i102 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i95, align 8
  %__rep_.i.i.i.i103 = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i.i.i.i102, i32 0, i32 0, !dbg !3988
  %11 = load i64, i64* %__rep_.i.i.i.i103, align 8, !dbg !3988
  %12 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__rhs.addr.i.i.i, align 8, !dbg !3989
  store %"class.std::__1::chrono::duration"* %12, %"class.std::__1::chrono::duration"** %this.addr.i3.i.i.i, align 8
  %this1.i4.i.i.i = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i3.i.i.i, align 8
  %__rep_.i5.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i4.i.i.i, i32 0, i32 0, !dbg !3990
  %13 = load i64, i64* %__rep_.i5.i.i.i, align 8, !dbg !3990
  %cmp.i.i.i = icmp slt i64 %11, %13, !dbg !3991
  br i1 %cmp.i.i.i, label %if.then, label %if.end14, !dbg !3992

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration.1"* %__ns, metadata !3993, metadata !3626), !dbg !3995
  %14 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr, align 8, !dbg !3996
  store %"class.std::__1::chrono::duration"* %14, %"class.std::__1::chrono::duration"** %__lhs.addr.i76, align 8
  store %"class.std::__1::chrono::duration.0"* @_ZZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EEE4_Max, %"class.std::__1::chrono::duration.0"** %__rhs.addr.i77, align 8
  %15 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__lhs.addr.i76, align 8, !dbg !3997
  %16 = load %"class.std::__1::chrono::duration.0"*, %"class.std::__1::chrono::duration.0"** %__rhs.addr.i77, align 8, !dbg !3998
  store %"struct.std::__1::chrono::__duration_lt.2"* %tmp.i78, %"struct.std::__1::chrono::__duration_lt.2"** %this.addr.i.i71, align 8
  store %"class.std::__1::chrono::duration"* %15, %"class.std::__1::chrono::duration"** %__lhs.addr.i.i72, align 8
  store %"class.std::__1::chrono::duration.0"* %16, %"class.std::__1::chrono::duration.0"** %__rhs.addr.i.i73, align 8
  %this1.i.i79 = load %"struct.std::__1::chrono::__duration_lt.2"*, %"struct.std::__1::chrono::__duration_lt.2"** %this.addr.i.i71, align 8
  %17 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__lhs.addr.i.i72, align 8, !dbg !3999
  store %"class.std::__1::chrono::duration.3"* %ref.tmp.i.i74, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i68, align 8
  store %"class.std::__1::chrono::duration"* %17, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i69, align 8
  store i8* null, i8** %.addr.i.i.i70, align 8
  %this1.i.i.i80 = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i68, align 8
  %18 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i69, align 8, !dbg !4000
  %19 = load i8*, i8** %.addr.i.i.i70, align 8, !dbg !4000
  store %"class.std::__1::chrono::duration.3"* %this1.i.i.i80, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i64, align 8
  store %"class.std::__1::chrono::duration"* %18, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i.i65, align 8
  store i8* %19, i8** %.addr.i.i.i.i66, align 8
  %this1.i.i.i.i81 = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i64, align 8
  %__rep_.i.i.i.i82 = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i.i.i.i81, i32 0, i32 0, !dbg !4001
  %20 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i.i65, align 8, !dbg !4002
  store %"class.std::__1::chrono::duration"* %20, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i62, align 8
  %21 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i62, align 8, !dbg !4003
  store %"struct.std::__1::chrono::__duration_cast"* %tmp.i.i.i.i.i63, %"struct.std::__1::chrono::__duration_cast"** %this.addr.i.i.i.i.i.i58, align 8
  store %"class.std::__1::chrono::duration"* %21, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i.i59, align 8
  %this1.i.i.i.i.i.i83 = load %"struct.std::__1::chrono::__duration_cast"*, %"struct.std::__1::chrono::__duration_cast"** %this.addr.i.i.i.i.i.i58, align 8
  %22 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i.i59, align 8, !dbg !4004
  store %"class.std::__1::chrono::duration"* %22, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i.i.i.i56, align 8
  %this1.i.i.i.i.i.i.i84 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i.i.i.i56, align 8
  %__rep_.i.i.i.i.i.i.i85 = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i.i.i.i.i.i.i84, i32 0, i32 0, !dbg !4005
  %23 = load i64, i64* %__rep_.i.i.i.i.i.i.i85, align 8, !dbg !4005
  %conv.i.i.i.i.i.i = sitofp i64 %23 to x86_fp80, !dbg !4004
  store x86_fp80 %conv.i.i.i.i.i.i, x86_fp80* %ref.tmp.i.i.i.i.i.i60, align 16, !dbg !4006
  store %"class.std::__1::chrono::duration.3"* %retval.i.i.i.i.i.i57, %"class.std::__1::chrono::duration.3"** %this.addr.i2.i.i.i.i.i.i53, align 8
  store x86_fp80* %ref.tmp.i.i.i.i.i.i60, x86_fp80** %__r.addr.i.i.i.i.i.i.i54, align 8
  store i8* null, i8** %.addr.i.i.i.i.i.i.i55, align 8
  %this1.i3.i.i.i.i.i.i86 = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i2.i.i.i.i.i.i53, align 8
  %24 = load x86_fp80*, x86_fp80** %__r.addr.i.i.i.i.i.i.i54, align 8, !dbg !4007
  %25 = load i8*, i8** %.addr.i.i.i.i.i.i.i55, align 8, !dbg !4007
  store %"class.std::__1::chrono::duration.3"* %this1.i3.i.i.i.i.i.i86, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i.i.i.i50, align 8
  store x86_fp80* %24, x86_fp80** %__r.addr.i.i.i.i.i.i.i.i51, align 8
  store i8* %25, i8** %.addr.i.i.i.i.i.i.i.i52, align 8
  %this1.i.i.i.i.i.i.i.i87 = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i.i.i.i50, align 8
  %__rep_.i.i.i.i.i.i.i.i88 = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i.i.i.i.i.i.i.i87, i32 0, i32 0, !dbg !4008
  %26 = load x86_fp80*, x86_fp80** %__r.addr.i.i.i.i.i.i.i.i51, align 8, !dbg !4009
  %27 = load x86_fp80, x86_fp80* %26, align 16, !dbg !4009
  store x86_fp80 %27, x86_fp80* %__rep_.i.i.i.i.i.i.i.i88, align 16, !dbg !4008
  %28 = bitcast %"class.std::__1::chrono::duration.3"* %retval.i.i.i.i.i.i57 to x86_fp80*, !dbg !4010
  %29 = load x86_fp80, x86_fp80* %28, align 16, !dbg !4010
  %30 = bitcast %"class.std::__1::chrono::duration.3"* %retval.i.i.i.i.i61 to x86_fp80*, !dbg !4011
  store x86_fp80 %29, x86_fp80* %30, align 16, !dbg !4011
  %31 = bitcast %"class.std::__1::chrono::duration.3"* %retval.i.i.i.i.i61 to x86_fp80*, !dbg !4012
  %32 = load x86_fp80, x86_fp80* %31, align 16, !dbg !4012
  %33 = bitcast %"class.std::__1::chrono::duration.3"* %ref.tmp.i.i.i.i67 to x86_fp80*, !dbg !4013
  store x86_fp80 %32, x86_fp80* %33, align 16, !dbg !4013
  store %"class.std::__1::chrono::duration.3"* %ref.tmp.i.i.i.i67, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i49, align 8
  %this1.i.i.i.i.i89 = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i49, align 8
  %__rep_.i.i.i.i.i90 = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i.i.i.i.i89, i32 0, i32 0, !dbg !4014
  %34 = load x86_fp80, x86_fp80* %__rep_.i.i.i.i.i90, align 16, !dbg !4014
  store x86_fp80 %34, x86_fp80* %__rep_.i.i.i.i82, align 16, !dbg !4001
  store %"class.std::__1::chrono::duration.3"* %ref.tmp.i.i74, %"class.std::__1::chrono::duration.3"** %this.addr.i39.i.i, align 8
  %this1.i40.i.i = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i39.i.i, align 8
  %__rep_.i41.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i40.i.i, i32 0, i32 0, !dbg !4015
  %35 = load x86_fp80, x86_fp80* %__rep_.i41.i.i, align 16, !dbg !4015
  %36 = load %"class.std::__1::chrono::duration.0"*, %"class.std::__1::chrono::duration.0"** %__rhs.addr.i.i73, align 8, !dbg !4016
  store %"class.std::__1::chrono::duration.3"* %ref.tmp2.i.i75, %"class.std::__1::chrono::duration.3"** %this.addr.i25.i.i, align 8
  store %"class.std::__1::chrono::duration.0"* %36, %"class.std::__1::chrono::duration.0"** %__d.addr.i26.i.i, align 8
  store i8* null, i8** %.addr.i27.i.i, align 8
  %this1.i28.i.i = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i25.i.i, align 8
  %37 = load %"class.std::__1::chrono::duration.0"*, %"class.std::__1::chrono::duration.0"** %__d.addr.i26.i.i, align 8, !dbg !4017
  %38 = load i8*, i8** %.addr.i27.i.i, align 8, !dbg !4017
  store %"class.std::__1::chrono::duration.3"* %this1.i28.i.i, %"class.std::__1::chrono::duration.3"** %this.addr.i.i21.i.i, align 8
  store %"class.std::__1::chrono::duration.0"* %37, %"class.std::__1::chrono::duration.0"** %__d.addr.i.i22.i.i, align 8
  store i8* %38, i8** %.addr.i.i23.i.i, align 8
  %this1.i.i29.i.i = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i.i21.i.i, align 8
  %__rep_.i.i30.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i.i29.i.i, i32 0, i32 0, !dbg !4018
  %39 = load %"class.std::__1::chrono::duration.0"*, %"class.std::__1::chrono::duration.0"** %__d.addr.i.i22.i.i, align 8, !dbg !4019
  store %"class.std::__1::chrono::duration.0"* %39, %"class.std::__1::chrono::duration.0"** %__fd.addr.i.i.i19.i.i, align 8
  %40 = load %"class.std::__1::chrono::duration.0"*, %"class.std::__1::chrono::duration.0"** %__fd.addr.i.i.i19.i.i, align 8, !dbg !4020
  store %"struct.std::__1::chrono::__duration_cast.4"* %tmp.i.i.i20.i.i, %"struct.std::__1::chrono::__duration_cast.4"** %this.addr.i.i.i.i15.i.i, align 8
  store %"class.std::__1::chrono::duration.0"* %40, %"class.std::__1::chrono::duration.0"** %__fd.addr.i.i.i.i16.i.i, align 8
  %this1.i.i.i.i31.i.i = load %"struct.std::__1::chrono::__duration_cast.4"*, %"struct.std::__1::chrono::__duration_cast.4"** %this.addr.i.i.i.i15.i.i, align 8
  %41 = load %"class.std::__1::chrono::duration.0"*, %"class.std::__1::chrono::duration.0"** %__fd.addr.i.i.i.i16.i.i, align 8, !dbg !4021
  store %"class.std::__1::chrono::duration.0"* %41, %"class.std::__1::chrono::duration.0"** %this.addr.i.i.i.i.i13.i.i, align 8
  %this1.i.i.i.i.i32.i.i = load %"class.std::__1::chrono::duration.0"*, %"class.std::__1::chrono::duration.0"** %this.addr.i.i.i.i.i13.i.i, align 8
  %__rep_.i.i.i.i.i33.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.0", %"class.std::__1::chrono::duration.0"* %this1.i.i.i.i.i32.i.i, i32 0, i32 0, !dbg !4022
  %42 = load x86_fp80, x86_fp80* %__rep_.i.i.i.i.i33.i.i, align 16, !dbg !4022
  %mul.i.i.i.i.i.i91 = fmul x86_fp80 %42, 0xK4008FA00000000000000, !dbg !4023
  store x86_fp80 %mul.i.i.i.i.i.i91, x86_fp80* %ref.tmp.i.i.i.i17.i.i, align 16, !dbg !4024
  store %"class.std::__1::chrono::duration.3"* %retval.i.i.i.i14.i.i, %"class.std::__1::chrono::duration.3"** %this.addr.i2.i.i.i.i10.i.i, align 8
  store x86_fp80* %ref.tmp.i.i.i.i17.i.i, x86_fp80** %__r.addr.i.i.i.i.i11.i.i, align 8
  store i8* null, i8** %.addr.i.i.i.i.i12.i.i, align 8
  %this1.i3.i.i.i.i34.i.i = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i2.i.i.i.i10.i.i, align 8
  %43 = load x86_fp80*, x86_fp80** %__r.addr.i.i.i.i.i11.i.i, align 8, !dbg !4025
  %44 = load i8*, i8** %.addr.i.i.i.i.i12.i.i, align 8, !dbg !4025
  store %"class.std::__1::chrono::duration.3"* %this1.i3.i.i.i.i34.i.i, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i.i7.i.i, align 8
  store x86_fp80* %43, x86_fp80** %__r.addr.i.i.i.i.i.i8.i.i, align 8
  store i8* %44, i8** %.addr.i.i.i.i.i.i9.i.i, align 8
  %this1.i.i.i.i.i.i35.i.i = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i.i.i.i7.i.i, align 8
  %__rep_.i.i.i.i.i.i36.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i.i.i.i.i.i35.i.i, i32 0, i32 0, !dbg !4026
  %45 = load x86_fp80*, x86_fp80** %__r.addr.i.i.i.i.i.i8.i.i, align 8, !dbg !4027
  %46 = load x86_fp80, x86_fp80* %45, align 16, !dbg !4027
  store x86_fp80 %46, x86_fp80* %__rep_.i.i.i.i.i.i36.i.i, align 16, !dbg !4026
  %47 = bitcast %"class.std::__1::chrono::duration.3"* %retval.i.i.i.i14.i.i to x86_fp80*, !dbg !4028
  %48 = load x86_fp80, x86_fp80* %47, align 16, !dbg !4028
  %49 = bitcast %"class.std::__1::chrono::duration.3"* %retval.i.i.i18.i.i to x86_fp80*, !dbg !4029
  store x86_fp80 %48, x86_fp80* %49, align 16, !dbg !4029
  %50 = bitcast %"class.std::__1::chrono::duration.3"* %retval.i.i.i18.i.i to x86_fp80*, !dbg !4030
  %51 = load x86_fp80, x86_fp80* %50, align 16, !dbg !4030
  %52 = bitcast %"class.std::__1::chrono::duration.3"* %ref.tmp.i.i24.i.i to x86_fp80*, !dbg !4031
  store x86_fp80 %51, x86_fp80* %52, align 16, !dbg !4031
  store %"class.std::__1::chrono::duration.3"* %ref.tmp.i.i24.i.i, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i6.i.i, align 8
  %this1.i.i.i37.i.i = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i.i.i6.i.i, align 8
  %__rep_.i.i.i38.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i.i.i37.i.i, i32 0, i32 0, !dbg !4032
  %53 = load x86_fp80, x86_fp80* %__rep_.i.i.i38.i.i, align 16, !dbg !4032
  store x86_fp80 %53, x86_fp80* %__rep_.i.i30.i.i, align 16, !dbg !4018
  store %"class.std::__1::chrono::duration.3"* %ref.tmp2.i.i75, %"class.std::__1::chrono::duration.3"** %this.addr.i4.i.i48, align 8
  %this1.i5.i.i92 = load %"class.std::__1::chrono::duration.3"*, %"class.std::__1::chrono::duration.3"** %this.addr.i4.i.i48, align 8
  %__rep_.i.i.i93 = getelementptr inbounds %"class.std::__1::chrono::duration.3", %"class.std::__1::chrono::duration.3"* %this1.i5.i.i92, i32 0, i32 0, !dbg !4033
  %54 = load x86_fp80, x86_fp80* %__rep_.i.i.i93, align 16, !dbg !4033
  %cmp.i.i94 = fcmp olt x86_fp80 %35, %54, !dbg !4034
  br i1 %cmp.i.i94, label %if.then3, label %if.else, !dbg !4035

if.then3:                                         ; preds = %if.then
  %55 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr, align 8, !dbg !4036
  store %"class.std::__1::chrono::duration"* %55, %"class.std::__1::chrono::duration"** %__fd.addr.i, align 8
  %56 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__fd.addr.i, align 8, !dbg !4037
  store %"struct.std::__1::chrono::__duration_cast.5"* %tmp.i41, %"struct.std::__1::chrono::__duration_cast.5"** %this.addr.i.i38, align 8
  store %"class.std::__1::chrono::duration"* %56, %"class.std::__1::chrono::duration"** %__fd.addr.i.i, align 8
  %this1.i.i42 = load %"struct.std::__1::chrono::__duration_cast.5"*, %"struct.std::__1::chrono::__duration_cast.5"** %this.addr.i.i38, align 8
  %57 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__fd.addr.i.i, align 8, !dbg !4038
  store %"class.std::__1::chrono::duration"* %57, %"class.std::__1::chrono::duration"** %this.addr.i.i.i37, align 8
  %this1.i.i.i43 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i.i37, align 8
  %__rep_.i.i.i44 = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i.i.i43, i32 0, i32 0, !dbg !4039
  %58 = load i64, i64* %__rep_.i.i.i44, align 8, !dbg !4039
  %mul.i.i = mul nsw i64 %58, 1000000, !dbg !4040
  store i64 %mul.i.i, i64* %ref.tmp.i.i39, align 8, !dbg !4041
  store %"class.std::__1::chrono::duration.1"* %retval.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i2.i.i, align 8
  store i64* %ref.tmp.i.i39, i64** %__r.addr.i.i.i35, align 8
  store i8* null, i8** %.addr.i.i.i36, align 8
  %this1.i3.i.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i2.i.i, align 8
  %59 = load i64*, i64** %__r.addr.i.i.i35, align 8, !dbg !4042
  %60 = load i8*, i8** %.addr.i.i.i36, align 8, !dbg !4042
  store %"class.std::__1::chrono::duration.1"* %this1.i3.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i33, align 8
  store i64* %59, i64** %__r.addr.i.i.i.i, align 8
  store i8* %60, i8** %.addr.i.i.i.i34, align 8
  %this1.i.i.i.i45 = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i33, align 8
  %__rep_.i.i.i.i46 = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i.i.i.i45, i32 0, i32 0, !dbg !4043
  %61 = load i64*, i64** %__r.addr.i.i.i.i, align 8, !dbg !4044
  %62 = load i64, i64* %61, align 8, !dbg !4044
  store i64 %62, i64* %__rep_.i.i.i.i46, align 8, !dbg !4043
  %coerce.dive.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %retval.i.i, i32 0, i32 0, !dbg !4045
  %63 = load i64, i64* %coerce.dive.i.i, align 8, !dbg !4045
  %coerce.dive.i47 = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %retval.i40, i32 0, i32 0, !dbg !4046
  store i64 %63, i64* %coerce.dive.i47, align 8, !dbg !4046
  %coerce.dive1.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %retval.i40, i32 0, i32 0, !dbg !4047
  %64 = load i64, i64* %coerce.dive1.i, align 8, !dbg !4047
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %ref.tmp4, i32 0, i32 0, !dbg !4048
  store i64 %64, i64* %coerce.dive6, align 8, !dbg !4048
  %65 = bitcast %"class.std::__1::chrono::duration.1"* %__ns to i8*, !dbg !4049
  %66 = bitcast %"class.std::__1::chrono::duration.1"* %ref.tmp4 to i8*, !dbg !4049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 8, i32 8, i1 false), !dbg !4049
  %67 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr, align 8, !dbg !4050
  store %"class.std::__1::chrono::duration.1"* %__ns, %"class.std::__1::chrono::duration.1"** %__lhs.addr.i, align 8
  store %"class.std::__1::chrono::duration"* %67, %"class.std::__1::chrono::duration"** %__rhs.addr.i, align 8
  %68 = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %__lhs.addr.i, align 8, !dbg !4051
  %69 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__rhs.addr.i, align 8, !dbg !4052
  store %"struct.std::__1::chrono::__duration_lt.6"* %tmp.i, %"struct.std::__1::chrono::__duration_lt.6"** %this.addr.i.i29, align 8
  store %"class.std::__1::chrono::duration.1"* %68, %"class.std::__1::chrono::duration.1"** %__lhs.addr.i.i, align 8
  store %"class.std::__1::chrono::duration"* %69, %"class.std::__1::chrono::duration"** %__rhs.addr.i.i, align 8
  %this1.i.i30 = load %"struct.std::__1::chrono::__duration_lt.6"*, %"struct.std::__1::chrono::__duration_lt.6"** %this.addr.i.i29, align 8
  %70 = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %__lhs.addr.i.i, align 8, !dbg !4053
  %71 = bitcast %"class.std::__1::chrono::duration.1"* %ref.tmp.i.i to i8*, !dbg !4054
  %72 = bitcast %"class.std::__1::chrono::duration.1"* %70 to i8*, !dbg !4054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 8, i32 8, i1 false), !dbg !4054
  store %"class.std::__1::chrono::duration.1"* %ref.tmp.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i28, align 8
  %this1.i.i.i31 = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i28, align 8
  %__rep_.i.i.i32 = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i.i.i31, i32 0, i32 0, !dbg !4055
  %73 = load i64, i64* %__rep_.i.i.i32, align 8, !dbg !4055
  %74 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__rhs.addr.i.i, align 8, !dbg !4056
  store %"class.std::__1::chrono::duration.1"* %ref.tmp2.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i7.i.i, align 8
  store %"class.std::__1::chrono::duration"* %74, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i, align 8
  store i8* null, i8** %.addr.i.i.i27, align 8
  %this1.i8.i.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i7.i.i, align 8
  %75 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i, align 8, !dbg !4057
  %76 = load i8*, i8** %.addr.i.i.i27, align 8, !dbg !4057
  store %"class.std::__1::chrono::duration.1"* %this1.i8.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::chrono::duration"* %75, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i.i, align 8
  store i8* %76, i8** %.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i, align 8
  %__rep_.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i.i.i.i, i32 0, i32 0, !dbg !4058
  %77 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr.i.i.i.i, align 8, !dbg !4059
  store %"class.std::__1::chrono::duration"* %77, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i, align 8
  %78 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i, align 8, !dbg !4060
  store %"struct.std::__1::chrono::__duration_cast.5"* %tmp.i.i.i.i.i, %"struct.std::__1::chrono::__duration_cast.5"** %this.addr.i.i.i.i.i.i, align 8
  store %"class.std::__1::chrono::duration"* %78, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i = load %"struct.std::__1::chrono::__duration_cast.5"*, %"struct.std::__1::chrono::__duration_cast.5"** %this.addr.i.i.i.i.i.i, align 8
  %79 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__fd.addr.i.i.i.i.i.i, align 8, !dbg !4061
  store %"class.std::__1::chrono::duration"* %79, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i.i.i.i, align 8
  %__rep_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !4062
  %80 = load i64, i64* %__rep_.i.i.i.i.i.i.i, align 8, !dbg !4062
  %mul.i.i.i.i.i.i = mul nsw i64 %80, 1000000, !dbg !4063
  store i64 %mul.i.i.i.i.i.i, i64* %ref.tmp.i.i.i.i.i.i, align 8, !dbg !4064
  store %"class.std::__1::chrono::duration.1"* %retval.i.i.i.i.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i2.i.i.i.i.i.i, align 8
  store i64* %ref.tmp.i.i.i.i.i.i, i64** %__r.addr.i.i.i.i.i.i.i, align 8
  store i8* null, i8** %.addr.i.i.i.i.i.i.i, align 8
  %this1.i3.i.i.i.i.i.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i2.i.i.i.i.i.i, align 8
  %81 = load i64*, i64** %__r.addr.i.i.i.i.i.i.i, align 8, !dbg !4065
  %82 = load i8*, i8** %.addr.i.i.i.i.i.i.i, align 8, !dbg !4065
  store %"class.std::__1::chrono::duration.1"* %this1.i3.i.i.i.i.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i.i.i.i.i, align 8
  store i64* %81, i64** %__r.addr.i.i.i.i.i.i.i.i, align 8
  store i8* %82, i8** %.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i.i.i.i.i, align 8
  %__rep_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !4066
  %83 = load i64*, i64** %__r.addr.i.i.i.i.i.i.i.i, align 8, !dbg !4067
  %84 = load i64, i64* %83, align 8, !dbg !4067
  store i64 %84, i64* %__rep_.i.i.i.i.i.i.i.i, align 8, !dbg !4066
  %coerce.dive.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %retval.i.i.i.i.i.i, i32 0, i32 0, !dbg !4068
  %85 = load i64, i64* %coerce.dive.i.i.i.i.i.i, align 8, !dbg !4068
  %coerce.dive.i.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %retval.i.i.i.i.i, i32 0, i32 0, !dbg !4069
  store i64 %85, i64* %coerce.dive.i.i.i.i.i, align 8, !dbg !4069
  %coerce.dive1.i.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %retval.i.i.i.i.i, i32 0, i32 0, !dbg !4070
  %86 = load i64, i64* %coerce.dive1.i.i.i.i.i, align 8, !dbg !4070
  %coerce.dive.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %ref.tmp.i.i.i.i, i32 0, i32 0, !dbg !4071
  store i64 %86, i64* %coerce.dive.i.i.i.i, align 8, !dbg !4071
  store %"class.std::__1::chrono::duration.1"* %ref.tmp.i.i.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i.i.i, align 8
  %__rep_.i.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i.i.i.i.i, i32 0, i32 0, !dbg !4072
  %87 = load i64, i64* %__rep_.i.i.i.i.i, align 8, !dbg !4072
  store i64 %87, i64* %__rep_.i.i.i.i, align 8, !dbg !4058
  store %"class.std::__1::chrono::duration.1"* %ref.tmp2.i.i, %"class.std::__1::chrono::duration.1"** %this.addr.i4.i.i, align 8
  %this1.i5.i.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i4.i.i, align 8
  %__rep_.i6.i.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i5.i.i, i32 0, i32 0, !dbg !4073
  %88 = load i64, i64* %__rep_.i6.i.i, align 8, !dbg !4073
  %cmp.i.i = icmp slt i64 %73, %88, !dbg !4074
  br i1 %cmp.i.i, label %if.then8, label %if.end, !dbg !4075

if.then8:                                         ; preds = %if.then3
  store %"class.std::__1::chrono::duration.1"* %__ns, %"class.std::__1::chrono::duration.1"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i, align 8
  %__rep_.i = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i, i32 0, i32 0, !dbg !4076
  %89 = load i64, i64* %__rep_.i, align 8, !dbg !4077
  %inc.i = add nsw i64 %89, 1, !dbg !4077
  store i64 %inc.i, i64* %__rep_.i, align 8, !dbg !4077
  br label %if.end, !dbg !4078

if.end:                                           ; preds = %if.then8, %if.then3
  br label %if.end13, !dbg !4079

if.else:                                          ; preds = %if.then
  store i64 9223372036854775807, i64* %ref.tmp.i22, align 8, !dbg !4080
  store %"class.std::__1::chrono::duration.1"* %retval.i21, %"class.std::__1::chrono::duration.1"** %this.addr.i.i18, align 8
  store i64* %ref.tmp.i22, i64** %__r.addr.i.i19, align 8
  store i8* null, i8** %.addr.i.i20, align 8
  %this1.i.i23 = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i.i18, align 8
  %90 = load i64*, i64** %__r.addr.i.i19, align 8, !dbg !4081
  %91 = load i8*, i8** %.addr.i.i20, align 8, !dbg !4081
  store %"class.std::__1::chrono::duration.1"* %this1.i.i23, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i15, align 8
  store i64* %90, i64** %__r.addr.i.i.i16, align 8
  store i8* %91, i8** %.addr.i.i.i17, align 8
  %this1.i.i.i24 = load %"class.std::__1::chrono::duration.1"*, %"class.std::__1::chrono::duration.1"** %this.addr.i.i.i15, align 8
  %__rep_.i.i.i25 = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %this1.i.i.i24, i32 0, i32 0, !dbg !4082
  %92 = load i64*, i64** %__r.addr.i.i.i16, align 8, !dbg !4083
  %93 = load i64, i64* %92, align 8, !dbg !4083
  store i64 %93, i64* %__rep_.i.i.i25, align 8, !dbg !4082
  %coerce.dive.i26 = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %retval.i21, i32 0, i32 0, !dbg !4084
  %94 = load i64, i64* %coerce.dive.i26, align 8, !dbg !4084
  %coerce.dive12 = getelementptr inbounds %"class.std::__1::chrono::duration.1", %"class.std::__1::chrono::duration.1"* %ref.tmp10, i32 0, i32 0, !dbg !4085
  store i64 %94, i64* %coerce.dive12, align 8, !dbg !4085
  %95 = bitcast %"class.std::__1::chrono::duration.1"* %__ns to i8*, !dbg !4086
  %96 = bitcast %"class.std::__1::chrono::duration.1"* %ref.tmp10 to i8*, !dbg !4086
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 8, i32 8, i1 false), !dbg !4086
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end
  call void @_ZNSt3__111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE(%"class.std::__1::chrono::duration.1"* dereferenceable(8) %__ns), !dbg !4087
  br label %if.end14, !dbg !4088

if.end14:                                         ; preds = %if.end13, %entry
  ret void, !dbg !4089
}

; Function Attrs: nounwind
declare zeroext i1 @_ZNSt3__15mutex8try_lockEv(%"class.std::__1::mutex"*) #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str) #0 !dbg !4090 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !4094, metadata !3626), !dbg !4095
  store i8* %__str, i8** %__str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !4096, metadata !3626), !dbg !4097
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4098
  %1 = load i8*, i8** %__str.addr, align 8, !dbg !4099
  %2 = load i8*, i8** %__str.addr, align 8, !dbg !4100
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #2, !dbg !4101
  %call1 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %0, i8* %1, i64 %call), !dbg !4102
  ret %"class.std::__1::basic_ostream"* %call1, !dbg !4104
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #3

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"*) #1

; Function Attrs: noinline ssp uwtable
define void @_Z5job_2v() #0 !dbg !4105 {
entry:
  %this.addr.i.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i, metadata !3951, metadata !3626), !dbg !4106
  %__r.addr.i.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i.i, metadata !3964, metadata !3626), !dbg !4117
  %.addr.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i.i, metadata !3966, metadata !3626), !dbg !4118
  %this.addr.i2.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i2.i.i, metadata !3968, metadata !3626), !dbg !4119
  %__r.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__r.addr.i.i.i, metadata !3970, metadata !3626), !dbg !4120
  %.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr.i.i.i, metadata !3972, metadata !3626), !dbg !4121
  %this.addr.i.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %this.addr.i.i.i, metadata !3623, metadata !3626), !dbg !4122
  %retval.i.i = alloca %"class.std::__1::chrono::duration", align 8
  %__d.addr.i.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__d.addr.i.i, metadata !4124, metadata !3626), !dbg !4125
  %__s.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__s.addr.i.i, metadata !4126, metadata !3626), !dbg !4127
  %ref.tmp.i.i = alloca i64, align 8
  %ref.tmp1.i.i = alloca %"class.std::__1::chrono::duration", align 8
  %retval.i = alloca %"class.std::__1::chrono::duration", align 8
  %__s.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__s.addr.i, metadata !4128, metadata !3626), !dbg !4129
  %__d.addr.i = alloca %"class.std::__1::chrono::duration"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::chrono::duration"** %__d.addr.i, metadata !4130, metadata !3626), !dbg !4131
  %ref.tmp = alloca %"class.std::__1::chrono::duration", align 8
  %ref.tmp1 = alloca i32, align 4
  call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* @mutex), !dbg !4132
  store i32 5, i32* %ref.tmp1, align 4, !dbg !4133
  store i32* %ref.tmp1, i32** %__s.addr.i, align 8
  store %"class.std::__1::chrono::duration"* @interval, %"class.std::__1::chrono::duration"** %__d.addr.i, align 8
  %0 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr.i, align 8, !dbg !4134
  %1 = load i32*, i32** %__s.addr.i, align 8, !dbg !4135
  store %"class.std::__1::chrono::duration"* %0, %"class.std::__1::chrono::duration"** %__d.addr.i.i, align 8
  store i32* %1, i32** %__s.addr.i.i, align 8
  %2 = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %__d.addr.i.i, align 8, !dbg !4136
  %3 = bitcast %"class.std::__1::chrono::duration"* %ref.tmp1.i.i to i8*, !dbg !4137
  %4 = bitcast %"class.std::__1::chrono::duration"* %2 to i8*, !dbg !4137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false), !dbg !4137
  store %"class.std::__1::chrono::duration"* %ref.tmp1.i.i, %"class.std::__1::chrono::duration"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i.i, align 8
  %__rep_.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i.i.i, i32 0, i32 0, !dbg !4138
  %5 = load i64, i64* %__rep_.i.i.i, align 8, !dbg !4138
  %6 = load i32*, i32** %__s.addr.i.i, align 8, !dbg !4139
  %7 = load i32, i32* %6, align 4, !dbg !4139
  %conv.i.i = sext i32 %7 to i64, !dbg !4139
  %mul.i.i = mul nsw i64 %5, %conv.i.i, !dbg !4140
  store i64 %mul.i.i, i64* %ref.tmp.i.i, align 8, !dbg !4137
  store %"class.std::__1::chrono::duration"* %retval.i.i, %"class.std::__1::chrono::duration"** %this.addr.i2.i.i, align 8
  store i64* %ref.tmp.i.i, i64** %__r.addr.i.i.i, align 8
  store i8* null, i8** %.addr.i.i.i, align 8
  %this1.i3.i.i = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i2.i.i, align 8
  %8 = load i64*, i64** %__r.addr.i.i.i, align 8, !dbg !4141
  %9 = load i8*, i8** %.addr.i.i.i, align 8, !dbg !4141
  store %"class.std::__1::chrono::duration"* %this1.i3.i.i, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i, align 8
  store i64* %8, i64** %__r.addr.i.i.i.i, align 8
  store i8* %9, i8** %.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::chrono::duration"*, %"class.std::__1::chrono::duration"** %this.addr.i.i.i.i, align 8
  %__rep_.i.i.i.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %this1.i.i.i.i, i32 0, i32 0, !dbg !4142
  %10 = load i64*, i64** %__r.addr.i.i.i.i, align 8, !dbg !4143
  %11 = load i64, i64* %10, align 8, !dbg !4143
  store i64 %11, i64* %__rep_.i.i.i.i, align 8, !dbg !4142
  %coerce.dive.i.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %retval.i.i, i32 0, i32 0, !dbg !4144
  %12 = load i64, i64* %coerce.dive.i.i, align 8, !dbg !4144
  %coerce.dive.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %retval.i, i32 0, i32 0, !dbg !4145
  store i64 %12, i64* %coerce.dive.i, align 8, !dbg !4145
  %coerce.dive1.i = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %retval.i, i32 0, i32 0, !dbg !4146
  %13 = load i64, i64* %coerce.dive1.i, align 8, !dbg !4146
  %coerce.dive = getelementptr inbounds %"class.std::__1::chrono::duration", %"class.std::__1::chrono::duration"* %ref.tmp, i32 0, i32 0, !dbg !4147
  store i64 %13, i64* %coerce.dive, align 8, !dbg !4147
  call void @_ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE(%"class.std::__1::chrono::duration"* dereferenceable(8) %ref.tmp), !dbg !4148
  %14 = load i32, i32* @job_shared, align 4, !dbg !4150
  %inc = add nsw i32 %14, 1, !dbg !4150
  store i32 %inc, i32* @job_shared, align 4, !dbg !4150
  call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* @mutex) #2, !dbg !4151
  ret void, !dbg !4152
}

declare void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"*) #3

; Function Attrs: noinline norecurse ssp uwtable
define i32 @main() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4153 {
entry:
  %thread_1 = alloca %"class.std::__1::thread", align 8
  %thread_2 = alloca %"class.std::__1::thread", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"* %thread_1, metadata !4154, metadata !3626), !dbg !4230
  call void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %thread_1, void ()* @_Z5job_1v), !dbg !4230
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"* %thread_2, metadata !4231, metadata !3626), !dbg !4232
  invoke void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %thread_2, void ()* @_Z5job_2v)
          to label %invoke.cont unwind label %lpad, !dbg !4232

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %thread_1)
          to label %invoke.cont2 unwind label %lpad1, !dbg !4233

invoke.cont2:                                     ; preds = %invoke.cont
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %thread_2)
          to label %invoke.cont3 unwind label %lpad1, !dbg !4234

invoke.cont3:                                     ; preds = %invoke.cont2
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %thread_2) #2, !dbg !4235
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %thread_1) #2, !dbg !4236
  ret i32 0, !dbg !4235

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !dbg !4238
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !4238
  store i8* %1, i8** %exn.slot, align 8, !dbg !4238
  %2 = extractvalue { i8*, i32 } %0, 1, !dbg !4238
  store i32 %2, i32* %ehselector.slot, align 4, !dbg !4238
  br label %ehcleanup, !dbg !4238

lpad1:                                            ; preds = %invoke.cont2, %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup, !dbg !4240
  %4 = extractvalue { i8*, i32 } %3, 0, !dbg !4240
  store i8* %4, i8** %exn.slot, align 8, !dbg !4240
  %5 = extractvalue { i8*, i32 } %3, 1, !dbg !4240
  store i32 %5, i32* %ehselector.slot, align 4, !dbg !4240
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %thread_2) #2, !dbg !4240
  br label %ehcleanup, !dbg !4240

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %thread_1) #2, !dbg !4242
  br label %eh.resume, !dbg !4242

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4244
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4244
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4244
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4244
  resume { i8*, i32 } %lpad.val4, !dbg !4244
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 !dbg !4246 {
entry:
  %this.addr = alloca %"class.std::__1::thread"*, align 8
  %__f.addr = alloca void ()*, align 8
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"** %this.addr, metadata !4254, metadata !3626), !dbg !4256
  store void ()* %__f, void ()** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void ()** %__f.addr, metadata !4257, metadata !3626), !dbg !4258
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  %0 = load void ()*, void ()** %__f.addr, align 8, !dbg !4259
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this1, void ()* %0), !dbg !4259
  ret void, !dbg !4260
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) #3

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare void @_ZNSt3__111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE(%"class.std::__1::chrono::duration.1"* dereferenceable(8)) #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1650 {
entry:
  %this.addr.i.i.i47 = alloca %"class.std::__1::ctype"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ctype"** %this.addr.i.i.i47, metadata !4261, metadata !3626), !dbg !4352
  %__c.addr.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i.i.i, metadata !4364, metadata !3626), !dbg !4365
  %__l.addr.i.i.i = alloca %"class.std::__1::locale"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::locale"** %__l.addr.i.i.i, metadata !4366, metadata !3626), !dbg !4373
  %this.addr.i.i48 = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i.i48, metadata !4375, metadata !3626), !dbg !4377
  %__c.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i.i, metadata !4378, metadata !3626), !dbg !4379
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %exn.slot.i.i = alloca i8*
  %ehselector.slot.i.i = alloca i32
  %this.addr.i49 = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i49, metadata !4380, metadata !3626), !dbg !4381
  %this.addr.i45 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, metadata !4382, metadata !3626), !dbg !4385
  %this.addr.i43 = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i43, metadata !4388, metadata !3626), !dbg !4391
  %this.addr.i.i39 = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i.i39, metadata !4393, metadata !3626), !dbg !4396
  %__state.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__state.addr.i.i, metadata !4400, metadata !3626), !dbg !4401
  %this.addr.i40 = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i40, metadata !4402, metadata !3626), !dbg !4404
  %__state.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__state.addr.i, metadata !4405, metadata !3626), !dbg !4406
  %this.addr.i.i.i.i = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i.i.i.i, metadata !4407, metadata !3626), !dbg !4409
  %this.addr.i.i.i = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i.i.i, metadata !4417, metadata !3626), !dbg !4418
  %this.addr.i.i = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, metadata !4419, metadata !3626), !dbg !4421
  %__s.addr.i.i = alloca %"class.std::__1::basic_ostream"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr.i.i, metadata !4422, metadata !3626), !dbg !4423
  %this.addr.i37 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, metadata !4424, metadata !3626), !dbg !4425
  %__s.addr.i = alloca %"class.std::__1::basic_ostream"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr.i, metadata !4426, metadata !3626), !dbg !4427
  %this.addr.i = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, metadata !4428, metadata !3626), !dbg !4455
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !4457, metadata !3626), !dbg !4458
  store i8* %__str, i8** %__str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !4459, metadata !3626), !dbg !4460
  store i64 %__len, i64* %__len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__len.addr, metadata !4461, metadata !3626), !dbg !4462
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, metadata !4463, metadata !3626), !dbg !4464
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4465
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream"* dereferenceable(160) %0)
          to label %invoke.cont unwind label %lpad, !dbg !4464

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, align 8
  %__ok_.i = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this1.i, i32 0, i32 0, !dbg !4466
  %1 = load i8, i8* %__ok_.i, align 8, !dbg !4466
  %tobool.i = trunc i8 %1 to i1, !dbg !4466
  br label %invoke.cont2, !dbg !4467

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %tobool.i, label %if.then, label %if.end27, !dbg !4468

if.then:                                          ; preds = %invoke.cont2
  %2 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4470
  store %"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, align 8
  store %"class.std::__1::basic_ostream"* %2, %"class.std::__1::basic_ostream"** %__s.addr.i, align 8
  %this1.i38 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, align 8
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr.i, align 8, !dbg !4471
  store %"class.std::__1::ostreambuf_iterator"* %this1.i38, %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, align 8
  store %"class.std::__1::basic_ostream"* %3, %"class.std::__1::basic_ostream"** %__s.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, align 8
  %4 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1.i.i to %"struct.std::__1::iterator"*, !dbg !4472
  %__sbuf_.i.i = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1.i.i, i32 0, i32 0, !dbg !4473
  %5 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr.i.i, align 8, !dbg !4474
  %6 = bitcast %"class.std::__1::basic_ostream"* %5 to i8**, !dbg !4474
  %vtable.i.i = load i8*, i8** %6, align 8, !dbg !4474
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !dbg !4474
  %7 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !dbg !4474
  %vbase.offset.i.i = load i64, i64* %7, align 8, !dbg !4474
  %8 = bitcast %"class.std::__1::basic_ostream"* %5 to i8*, !dbg !4474
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i64 %vbase.offset.i.i, !dbg !4474
  %9 = bitcast i8* %add.ptr.i.i to %"class.std::__1::basic_ios"*, !dbg !4474
  store %"class.std::__1::basic_ios"* %9, %"class.std::__1::basic_ios"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i.i.i, align 8
  %10 = bitcast %"class.std::__1::basic_ios"* %this1.i.i.i to %"class.std::__1::ios_base"*, !dbg !4475
  store %"class.std::__1::ios_base"* %10, %"class.std::__1::ios_base"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i.i.i.i, align 8
  %__rdbuf_.i.i.i.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i.i.i.i, i32 0, i32 6, !dbg !4476
  %11 = load i8*, i8** %__rdbuf_.i.i.i.i, align 8, !dbg !4476
  %12 = bitcast i8* %11 to %"class.std::__1::basic_streambuf"*, !dbg !4477
  store %"class.std::__1::basic_streambuf"* %12, %"class.std::__1::basic_streambuf"** %__sbuf_.i.i, align 8, !dbg !4478
  %13 = load i8*, i8** %__str.addr, align 8, !dbg !4480
  %14 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4481
  %15 = bitcast %"class.std::__1::basic_ostream"* %14 to i8**, !dbg !4481
  %vtable = load i8*, i8** %15, align 8, !dbg !4481
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !4481
  %16 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !4481
  %vbase.offset = load i64, i64* %16, align 8, !dbg !4481
  %17 = bitcast %"class.std::__1::basic_ostream"* %14 to i8*, !dbg !4481
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %vbase.offset, !dbg !4481
  %18 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*, !dbg !4481
  store %"class.std::__1::ios_base"* %18, %"class.std::__1::ios_base"** %this.addr.i43, align 8
  %this1.i44 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i43, align 8
  %__fmtflags_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i44, i32 0, i32 1, !dbg !4482
  %19 = load i32, i32* %__fmtflags_.i, align 8, !dbg !4482
  br label %invoke.cont3, !dbg !4483

invoke.cont3:                                     ; preds = %if.then
  %and = and i32 %19, 176, !dbg !4484
  %cmp = icmp eq i32 %and, 32, !dbg !4485
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4486

cond.true:                                        ; preds = %invoke.cont3
  %20 = load i8*, i8** %__str.addr, align 8, !dbg !4487
  %21 = load i64, i64* %__len.addr, align 8, !dbg !4488
  %add.ptr5 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !4489
  br label %cond.end, !dbg !4490

cond.false:                                       ; preds = %invoke.cont3
  %22 = load i8*, i8** %__str.addr, align 8, !dbg !4492
  br label %cond.end, !dbg !4493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr5, %cond.true ], [ %22, %cond.false ], !dbg !4495
  %23 = load i8*, i8** %__str.addr, align 8, !dbg !4497
  %24 = load i64, i64* %__len.addr, align 8, !dbg !4498
  %add.ptr6 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !4499
  %25 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4500
  %26 = bitcast %"class.std::__1::basic_ostream"* %25 to i8**, !dbg !4500
  %vtable7 = load i8*, i8** %26, align 8, !dbg !4500
  %vbase.offset.ptr8 = getelementptr i8, i8* %vtable7, i64 -24, !dbg !4500
  %27 = bitcast i8* %vbase.offset.ptr8 to i64*, !dbg !4500
  %vbase.offset9 = load i64, i64* %27, align 8, !dbg !4500
  %28 = bitcast %"class.std::__1::basic_ostream"* %25 to i8*, !dbg !4500
  %add.ptr10 = getelementptr inbounds i8, i8* %28, i64 %vbase.offset9, !dbg !4500
  %29 = bitcast i8* %add.ptr10 to %"class.std::__1::ios_base"*, !dbg !4500
  %30 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4501
  %31 = bitcast %"class.std::__1::basic_ostream"* %30 to i8**, !dbg !4501
  %vtable11 = load i8*, i8** %31, align 8, !dbg !4501
  %vbase.offset.ptr12 = getelementptr i8, i8* %vtable11, i64 -24, !dbg !4501
  %32 = bitcast i8* %vbase.offset.ptr12 to i64*, !dbg !4501
  %vbase.offset13 = load i64, i64* %32, align 8, !dbg !4501
  %33 = bitcast %"class.std::__1::basic_ostream"* %30 to i8*, !dbg !4501
  %add.ptr14 = getelementptr inbounds i8, i8* %33, i64 %vbase.offset13, !dbg !4501
  %34 = bitcast i8* %add.ptr14 to %"class.std::__1::basic_ios"*, !dbg !4501
  store %"class.std::__1::basic_ios"* %34, %"class.std::__1::basic_ios"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i49, align 8
  %call.i = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #2, !dbg !4502
  %__fill_.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2, !dbg !4503
  %35 = load i32, i32* %__fill_.i, align 8, !dbg !4503
  %call2.i = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call.i, i32 %35) #2, !dbg !4504
  br i1 %call2.i, label %if.then.i, label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit, !dbg !4506

if.then.i:                                        ; preds = %cond.end
  store %"class.std::__1::basic_ios"* %this1.i50, %"class.std::__1::basic_ios"** %this.addr.i.i48, align 8
  store i8 32, i8* %__c.addr.i.i, align 1
  %this1.i.i51 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i.i48, align 8
  %36 = bitcast %"class.std::__1::basic_ios"* %this1.i.i51 to %"class.std::__1::ios_base"*, !dbg !4507
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %36)
          to label %.noexc unwind label %lpad1, !dbg !4507

.noexc:                                           ; preds = %if.then.i
  store %"class.std::__1::locale"* %ref.tmp.i.i, %"class.std::__1::locale"** %__l.addr.i.i.i, align 8
  %37 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr.i.i.i, align 8, !dbg !4508
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %37, %"class.std::__1::locale::id"* dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i unwind label %lpad.i.i, !dbg !4509

_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i: ; preds = %.noexc
  %38 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !dbg !4510
  %39 = load i8, i8* %__c.addr.i.i, align 1, !dbg !4511
  store %"class.std::__1::ctype"* %38, %"class.std::__1::ctype"** %this.addr.i.i.i47, align 8
  store i8 %39, i8* %__c.addr.i.i.i, align 1
  %this1.i.i.i52 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr.i.i.i47, align 8
  %40 = bitcast %"class.std::__1::ctype"* %this1.i.i.i52 to i8 (%"class.std::__1::ctype"*, i8)***, !dbg !4512
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %40, align 8, !dbg !4512
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !dbg !4512
  %41 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !dbg !4512
  %42 = load i8, i8* %__c.addr.i.i.i, align 1, !dbg !4513
  %call.i6.i.i = invoke signext i8 %41(%"class.std::__1::ctype"* %this1.i.i.i52, i8 signext %42)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !dbg !4512

lpad.i.i:                                         ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i, %.noexc
  %43 = landingpad { i8*, i32 }
          cleanup
          catch i8* null, !dbg !4514
  %44 = extractvalue { i8*, i32 } %43, 0, !dbg !4514
  store i8* %44, i8** %exn.slot.i.i, align 8, !dbg !4514
  %45 = extractvalue { i8*, i32 } %43, 1, !dbg !4514
  store i32 %45, i32* %ehselector.slot.i.i, align 4, !dbg !4514
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #2, !dbg !4515
  %exn.i.i = load i8*, i8** %exn.slot.i.i, align 8, !dbg !4517
  %sel.i.i = load i32, i32* %ehselector.slot.i.i, align 4, !dbg !4517
  %lpad.val.i.i = insertvalue { i8*, i32 } undef, i8* %exn.i.i, 0, !dbg !4517
  %lpad.val4.i.i = insertvalue { i8*, i32 } %lpad.val.i.i, i32 %sel.i.i, 1, !dbg !4517
  br label %lpad1.body

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #2, !dbg !4519
  %conv.i = sext i8 %call.i6.i.i to i32, !dbg !4521
  %__fill_4.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2, !dbg !4522
  store i32 %conv.i, i32* %__fill_4.i, align 8, !dbg !4523
  br label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit, !dbg !4522

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit: ; preds = %cond.end, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
  %__fill_5.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2, !dbg !4524
  %46 = load i32, i32* %__fill_5.i, align 8, !dbg !4524
  %conv6.i = trunc i32 %46 to i8, !dbg !4524
  br label %invoke.cont15, !dbg !4525

invoke.cont15:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0, !dbg !4526
  %47 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8, !dbg !4526
  %call18 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %47, i8* %13, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %29, i8 signext %conv6.i)
          to label %invoke.cont17 unwind label %lpad1, !dbg !4526

invoke.cont17:                                    ; preds = %invoke.cont15
  %coerce.dive19 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0, !dbg !4527
  store %"class.std::__1::basic_streambuf"* %call18, %"class.std::__1::basic_streambuf"** %coerce.dive19, align 8, !dbg !4527
  store %"class.std::__1::ostreambuf_iterator"* %ref.tmp, %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, align 8
  %this1.i46 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, align 8
  %__sbuf_.i = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1.i46, i32 0, i32 0, !dbg !4528
  %48 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_.i, align 8, !dbg !4528
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %48, null, !dbg !4529
  br i1 %cmp.i, label %if.then21, label %if.end, !dbg !4530

if.then21:                                        ; preds = %invoke.cont17
  %49 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4532
  %50 = bitcast %"class.std::__1::basic_ostream"* %49 to i8**, !dbg !4532
  %vtable22 = load i8*, i8** %50, align 8, !dbg !4532
  %vbase.offset.ptr23 = getelementptr i8, i8* %vtable22, i64 -24, !dbg !4532
  %51 = bitcast i8* %vbase.offset.ptr23 to i64*, !dbg !4532
  %vbase.offset24 = load i64, i64* %51, align 8, !dbg !4532
  %52 = bitcast %"class.std::__1::basic_ostream"* %49 to i8*, !dbg !4532
  %add.ptr25 = getelementptr inbounds i8, i8* %52, i64 %vbase.offset24, !dbg !4532
  %53 = bitcast i8* %add.ptr25 to %"class.std::__1::basic_ios"*, !dbg !4532
  store %"class.std::__1::basic_ios"* %53, %"class.std::__1::basic_ios"** %this.addr.i40, align 8
  store i32 5, i32* %__state.addr.i, align 4
  %this1.i41 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i40, align 8
  %54 = bitcast %"class.std::__1::basic_ios"* %this1.i41 to %"class.std::__1::ios_base"*, !dbg !4533
  %55 = load i32, i32* %__state.addr.i, align 4, !dbg !4534
  store %"class.std::__1::ios_base"* %54, %"class.std::__1::ios_base"** %this.addr.i.i39, align 8
  store i32 %55, i32* %__state.addr.i.i, align 4
  %this1.i.i42 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i.i39, align 8
  %__rdstate_.i.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i.i42, i32 0, i32 4, !dbg !4535
  %56 = load i32, i32* %__rdstate_.i.i, align 8, !dbg !4535
  %57 = load i32, i32* %__state.addr.i.i, align 4, !dbg !4536
  %or.i.i = or i32 %56, %57, !dbg !4537
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1.i.i42, i32 %or.i.i)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit unwind label %lpad1, !dbg !4538

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit: ; preds = %if.then21
  br label %invoke.cont26, !dbg !4539

invoke.cont26:                                    ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
  br label %if.end, !dbg !4540

lpad:                                             ; preds = %entry
  %58 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4541
  %59 = extractvalue { i8*, i32 } %58, 0, !dbg !4541
  store i8* %59, i8** %exn.slot, align 8, !dbg !4541
  %60 = extractvalue { i8*, i32 } %58, 1, !dbg !4541
  store i32 %60, i32* %ehselector.slot, align 4, !dbg !4541
  br label %catch, !dbg !4541

lpad1:                                            ; preds = %if.then.i, %if.then21, %invoke.cont15
  %61 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4542
  br label %lpad1.body, !dbg !4542

lpad1.body:                                       ; preds = %lpad.i.i, %lpad1
  %eh.lpad-body = phi { i8*, i32 } [ %61, %lpad1 ], [ %lpad.val4.i.i, %lpad.i.i ]
  %62 = extractvalue { i8*, i32 } %eh.lpad-body, 0, !dbg !4542
  store i8* %62, i8** %exn.slot, align 8, !dbg !4542
  %63 = extractvalue { i8*, i32 } %eh.lpad-body, 1, !dbg !4542
  store i32 %63, i32* %ehselector.slot, align 4, !dbg !4542
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #2, !dbg !4544
  br label %catch, !dbg !4544

catch:                                            ; preds = %lpad1.body, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4545
  %64 = call i8* @__cxa_begin_catch(i8* %exn) #2, !dbg !4545
  %65 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4546
  %66 = bitcast %"class.std::__1::basic_ostream"* %65 to i8**, !dbg !4546
  %vtable28 = load i8*, i8** %66, align 8, !dbg !4546
  %vbase.offset.ptr29 = getelementptr i8, i8* %vtable28, i64 -24, !dbg !4546
  %67 = bitcast i8* %vbase.offset.ptr29 to i64*, !dbg !4546
  %vbase.offset30 = load i64, i64* %67, align 8, !dbg !4546
  %68 = bitcast %"class.std::__1::basic_ostream"* %65 to i8*, !dbg !4546
  %add.ptr31 = getelementptr inbounds i8, i8* %68, i64 %vbase.offset30, !dbg !4546
  %69 = bitcast i8* %add.ptr31 to %"class.std::__1::ios_base"*, !dbg !4546
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %69)
          to label %invoke.cont33 unwind label %lpad32, !dbg !4548

invoke.cont33:                                    ; preds = %catch
  call void @__cxa_end_catch(), !dbg !4549
  br label %try.cont, !dbg !4549

try.cont:                                         ; preds = %invoke.cont33, %if.end27
  %70 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !4550
  ret %"class.std::__1::basic_ostream"* %70, !dbg !4551

if.end:                                           ; preds = %invoke.cont26, %invoke.cont17
  br label %if.end27, !dbg !4552

if.end27:                                         ; preds = %if.end, %invoke.cont2
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #2, !dbg !4553
  br label %try.cont, !dbg !4555

lpad32:                                           ; preds = %catch
  %71 = landingpad { i8*, i32 }
          cleanup, !dbg !4557
  %72 = extractvalue { i8*, i32 } %71, 0, !dbg !4557
  store i8* %72, i8** %exn.slot, align 8, !dbg !4557
  %73 = extractvalue { i8*, i32 } %71, 1, !dbg !4557
  store i32 %73, i32* %ehselector.slot, align 4, !dbg !4557
  invoke void @__cxa_end_catch()
          to label %invoke.cont34 unwind label %terminate.lpad, !dbg !4559

invoke.cont34:                                    ; preds = %lpad32
  br label %eh.resume, !dbg !4561

eh.resume:                                        ; preds = %invoke.cont34
  %exn35 = load i8*, i8** %exn.slot, align 8, !dbg !4562
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4562
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn35, 0, !dbg !4562
  %lpad.val36 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4562
  resume { i8*, i32 } %lpad.val36, !dbg !4562

terminate.lpad:                                   ; preds = %lpad32
  %74 = landingpad { i8*, i32 }
          catch i8* null, !dbg !4564
  %75 = extractvalue { i8*, i32 } %74, 0, !dbg !4564
  call void @__clang_call_terminate(i8* %75) #12, !dbg !4564
  unreachable, !dbg !4564
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #7 align 2 !dbg !4566 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !4567, metadata !3626), !dbg !4568
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !4569
  %call = call i64 @strlen(i8* %0) #2, !dbg !4570
  ret i64 %call, !dbg !4571
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4572 {
entry:
  %this.addr.i64 = alloca %"class.std::__1::basic_streambuf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr.i64, metadata !4576, metadata !3626), !dbg !4578
  %__s.addr.i65 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i65, metadata !4583, metadata !3626), !dbg !4584
  %__n.addr.i66 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i66, metadata !4585, metadata !3626), !dbg !4586
  %__p.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr.i.i, metadata !4587, metadata !3626), !dbg !4593
  %__x.addr.i.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__x.addr.i.i.i.i.i, metadata !4598, metadata !3626), !dbg !4602
  %__r.addr.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__r.addr.i.i.i.i, metadata !4627, metadata !3626), !dbg !4628
  %this.addr.i.i10.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i, metadata !4629, metadata !3626), !dbg !4632
  %this.addr.i11.i.i = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i11.i.i, metadata !4634, metadata !3626), !dbg !4636
  %this.addr.i.i4.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, metadata !4629, metadata !3626), !dbg !4637
  %this.addr.i5.i.i = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i5.i.i, metadata !4642, metadata !3626), !dbg !4643
  %this.addr.i.i.i.i56 = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i56, metadata !4629, metadata !3626), !dbg !4644
  %this.addr.i.i.i57 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i.i.i57, metadata !4648, metadata !3626), !dbg !4649
  %this.addr.i.i58 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i.i58, metadata !4650, metadata !3626), !dbg !4651
  %this.addr.i59 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i59, metadata !4652, metadata !3626), !dbg !4653
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, metadata !4654, metadata !3626), !dbg !4662
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, metadata !4670, metadata !3626), !dbg !4671
  %this.addr.i.i = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i.i, metadata !4672, metadata !3626), !dbg !4674
  %__n.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i.i, metadata !4675, metadata !3626), !dbg !4676
  %__c.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i.i, metadata !4677, metadata !3626), !dbg !4678
  %this.addr.i53 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i53, metadata !4679, metadata !3626), !dbg !4680
  %__n.addr.i54 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i54, metadata !4681, metadata !3626), !dbg !4682
  %__c.addr.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i, metadata !4683, metadata !3626), !dbg !4684
  %this.addr.i46 = alloca %"class.std::__1::basic_streambuf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr.i46, metadata !4576, metadata !3626), !dbg !4685
  %__s.addr.i47 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i47, metadata !4583, metadata !3626), !dbg !4690
  %__n.addr.i48 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i48, metadata !4585, metadata !3626), !dbg !4691
  %this.addr.i44 = alloca %"class.std::__1::basic_streambuf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr.i44, metadata !4576, metadata !3626), !dbg !4692
  %__s.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i, metadata !4583, metadata !3626), !dbg !4697
  %__n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i, metadata !4585, metadata !3626), !dbg !4698
  %this.addr.i41 = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i41, metadata !4699, metadata !3626), !dbg !4701
  %__wide.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__wide.addr.i, metadata !4703, metadata !3626), !dbg !4704
  %__r.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__r.i, metadata !4705, metadata !3626), !dbg !4706
  %this.addr.i = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i, metadata !4707, metadata !3626), !dbg !4709
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr = alloca i8*, align 8
  %__op.addr = alloca i8*, align 8
  %__oe.addr = alloca i8*, align 8
  %__iob.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__fl.addr = alloca i8, align 1
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %cleanup.dest.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %__s.coerce, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"* %__s, metadata !4711, metadata !3626), !dbg !4712
  store i8* %__ob, i8** %__ob.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__ob.addr, metadata !4713, metadata !3626), !dbg !4714
  store i8* %__op, i8** %__op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__op.addr, metadata !4715, metadata !3626), !dbg !4716
  store i8* %__oe, i8** %__oe.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__oe.addr, metadata !4717, metadata !3626), !dbg !4718
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %__iob.addr, metadata !4719, metadata !3626), !dbg !4720
  store i8 %__fl, i8* %__fl.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__fl.addr, metadata !4721, metadata !3626), !dbg !4722
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4723
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !4723
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null, !dbg !4725
  br i1 %cmp, label %if.then, label %if.end, !dbg !4726

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4727
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4727
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false), !dbg !4727
  br label %return, !dbg !4728

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__sz, metadata !4729, metadata !3626), !dbg !4730
  %3 = load i8*, i8** %__oe.addr, align 8, !dbg !4731
  %4 = load i8*, i8** %__ob.addr, align 8, !dbg !4732
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64, !dbg !4733
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64, !dbg !4733
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4733
  store i64 %sub.ptr.sub, i64* %__sz, align 8, !dbg !4730
  call void @llvm.dbg.declare(metadata i64* %__ns, metadata !4734, metadata !3626), !dbg !4735
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !4736
  store %"class.std::__1::ios_base"* %5, %"class.std::__1::ios_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i, align 8
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i, i32 0, i32 3, !dbg !4737
  %6 = load i64, i64* %__width_.i, align 8, !dbg !4737
  store i64 %6, i64* %__ns, align 8, !dbg !4735
  %7 = load i64, i64* %__ns, align 8, !dbg !4738
  %8 = load i64, i64* %__sz, align 8, !dbg !4740
  %cmp1 = icmp sgt i64 %7, %8, !dbg !4741
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4742

if.then2:                                         ; preds = %if.end
  %9 = load i64, i64* %__sz, align 8, !dbg !4743
  %10 = load i64, i64* %__ns, align 8, !dbg !4744
  %sub = sub nsw i64 %10, %9, !dbg !4744
  store i64 %sub, i64* %__ns, align 8, !dbg !4744
  br label %if.end3, !dbg !4745

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns, align 8, !dbg !4746
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  call void @llvm.dbg.declare(metadata i64* %__np, metadata !4747, metadata !3626), !dbg !4748
  %11 = load i8*, i8** %__op.addr, align 8, !dbg !4749
  %12 = load i8*, i8** %__ob.addr, align 8, !dbg !4750
  %sub.ptr.lhs.cast4 = ptrtoint i8* %11 to i64, !dbg !4751
  %sub.ptr.rhs.cast5 = ptrtoint i8* %12 to i64, !dbg !4751
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !4751
  store i64 %sub.ptr.sub6, i64* %__np, align 8, !dbg !4748
  %13 = load i64, i64* %__np, align 8, !dbg !4752
  %cmp7 = icmp sgt i64 %13, 0, !dbg !4753
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !4754

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4755
  %14 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9, align 8, !dbg !4755
  %15 = load i8*, i8** %__ob.addr, align 8, !dbg !4756
  %16 = load i64, i64* %__np, align 8, !dbg !4757
  store %"class.std::__1::basic_streambuf"* %14, %"class.std::__1::basic_streambuf"** %this.addr.i46, align 8
  store i8* %15, i8** %__s.addr.i47, align 8
  store i64 %16, i64* %__n.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i46, align 8
  %17 = bitcast %"class.std::__1::basic_streambuf"* %this1.i49 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4758
  %vtable.i50 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %17, align 8, !dbg !4758
  %vfn.i51 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i50, i64 12, !dbg !4758
  %18 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i51, align 8, !dbg !4758
  %19 = load i8*, i8** %__s.addr.i47, align 8, !dbg !4759
  %20 = load i64, i64* %__n.addr.i48, align 8, !dbg !4760
  %call.i52 = call i64 %18(%"class.std::__1::basic_streambuf"* %this1.i49, i8* %19, i64 %20), !dbg !4758
  %21 = load i64, i64* %__np, align 8, !dbg !4761
  %cmp11 = icmp ne i64 %call.i52, %21, !dbg !4762
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !4763

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4764
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8, !dbg !4766
  %22 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4767
  %23 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4767
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false), !dbg !4767
  br label %return, !dbg !4768

if.end14:                                         ; preds = %if.then8
  br label %if.end15, !dbg !4769

if.end15:                                         ; preds = %if.end14, %if.end3
  %24 = load i64, i64* %__ns, align 8, !dbg !4770
  %cmp16 = icmp sgt i64 %24, 0, !dbg !4771
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !4772

if.then17:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"* %__sp, metadata !4773, metadata !3626), !dbg !4774
  %25 = load i64, i64* %__ns, align 8, !dbg !4775
  %26 = load i8, i8* %__fl.addr, align 1, !dbg !4776
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %this.addr.i53, align 8
  store i64 %25, i64* %__n.addr.i54, align 8
  store i8 %26, i8* %__c.addr.i, align 1
  %this1.i55 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i53, align 8
  %27 = load i64, i64* %__n.addr.i54, align 8, !dbg !4777
  %28 = load i8, i8* %__c.addr.i, align 1, !dbg !4777
  store %"class.std::__1::basic_string"* %this1.i55, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  store i64 %27, i64* %__n.addr.i.i, align 8
  store i8 %28, i8* %__c.addr.i.i, align 1
  %this1.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  %29 = bitcast %"class.std::__1::basic_string"* %this1.i.i to %"class.std::__1::__basic_string_common"*, !dbg !4778
  %__r_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i, i32 0, i32 0, !dbg !4779
  store %"class.std::__1::__compressed_pair"* %__r_.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair"* %this1.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*, !dbg !4780
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %30), !dbg !4781
  %31 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*, !dbg !4780
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.8"* %31) #2, !dbg !4782
  %32 = load i64, i64* %__n.addr.i.i, align 8, !dbg !4784
  %33 = load i8, i8* %__c.addr.i.i, align 1, !dbg !4786
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1.i.i, i64 %32, i8 signext %33), !dbg !4787
  %__sbuf_18 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4788
  %34 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_18, align 8, !dbg !4788
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %this.addr.i59, align 8
  %this1.i60 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i59, align 8
  store %"class.std::__1::basic_string"* %this1.i60, %"class.std::__1::basic_string"** %this.addr.i.i58, align 8
  %this1.i.i61 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i58, align 8
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i.i.i57, align 8
  %this1.i.i.i62 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i.i57, align 8
  %__r_.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i.i62, i32 0, i32 0, !dbg !4789
  store %"class.std::__1::__compressed_pair"* %__r_.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i56, align 8
  %this1.i.i.i.i63 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i56, align 8
  %35 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i63 to %"struct.std::__1::__compressed_pair_elem"*, !dbg !4790
  %call.i.i.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %35) #2, !dbg !4791
  %36 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i.i.i, i32 0, i32 0, !dbg !4792
  %__s.i.i.i = bitcast %union.anon* %36 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !4792
  %37 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i32 0, i32 0, !dbg !4793
  %__size_.i.i.i = bitcast %union.anon.7* %37 to i8*, !dbg !4793
  %38 = load i8, i8* %__size_.i.i.i, align 8, !dbg !4793
  %conv.i.i.i = zext i8 %38 to i32, !dbg !4789
  %and.i.i.i = and i32 %conv.i.i.i, 1, !dbg !4794
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0, !dbg !4789
  br i1 %tobool.i.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !4795

cond.true.i.i:                                    ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %this1.i6.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %__r_.i7.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i6.i.i, i32 0, i32 0, !dbg !4796
  store %"class.std::__1::__compressed_pair"* %__r_.i7.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, align 8
  %this1.i.i8.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, align 8
  %39 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i8.i.i to %"struct.std::__1::__compressed_pair_elem"*, !dbg !4797
  %call.i.i9.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %39) #2, !dbg !4798
  %40 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i9.i.i, i32 0, i32 0, !dbg !4799
  %__l.i.i.i = bitcast %union.anon* %40 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*, !dbg !4799
  %__data_.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l.i.i.i, i32 0, i32 2, !dbg !4800
  %41 = load i8*, i8** %__data_.i.i.i, align 8, !dbg !4800
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit, !dbg !4801

cond.false.i.i:                                   ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %this1.i12.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %__r_.i13.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i12.i.i, i32 0, i32 0, !dbg !4802
  store %"class.std::__1::__compressed_pair"* %__r_.i13.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i, align 8
  %this1.i.i14.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i, align 8
  %42 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i14.i.i to %"struct.std::__1::__compressed_pair_elem"*, !dbg !4803
  %call.i.i15.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %42) #2, !dbg !4804
  %43 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i15.i.i, i32 0, i32 0, !dbg !4805
  %__s.i16.i.i = bitcast %union.anon* %43 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !4805
  %__data_.i17.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i16.i.i, i32 0, i32 1, !dbg !4806
  %arrayidx.i.i.i = getelementptr inbounds [23 x i8], [23 x i8]* %__data_.i17.i.i, i64 0, i64 0, !dbg !4802
  store i8* %arrayidx.i.i.i, i8** %__r.addr.i.i.i.i, align 8
  %44 = load i8*, i8** %__r.addr.i.i.i.i, align 8, !dbg !4807
  store i8* %44, i8** %__x.addr.i.i.i.i.i, align 8
  %45 = load i8*, i8** %__x.addr.i.i.i.i.i, align 8, !dbg !4808
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit, !dbg !4809

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit: ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i8* [ %41, %cond.true.i.i ], [ %45, %cond.false.i.i ], !dbg !4810
  store i8* %cond.i.i, i8** %__p.addr.i.i, align 8
  %46 = load i8*, i8** %__p.addr.i.i, align 8, !dbg !4812
  %47 = load i64, i64* %__ns, align 8, !dbg !4813
  store %"class.std::__1::basic_streambuf"* %34, %"class.std::__1::basic_streambuf"** %this.addr.i64, align 8
  store i8* %46, i8** %__s.addr.i65, align 8
  store i64 %47, i64* %__n.addr.i66, align 8
  %this1.i67 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i64, align 8
  %48 = bitcast %"class.std::__1::basic_streambuf"* %this1.i67 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4814
  %vtable.i68 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %48, align 8, !dbg !4814
  %vfn.i69 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i68, i64 12, !dbg !4814
  %49 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i69, align 8, !dbg !4814
  %50 = load i8*, i8** %__s.addr.i65, align 8, !dbg !4815
  %51 = load i64, i64* %__n.addr.i66, align 8, !dbg !4816
  %call.i7071 = invoke i64 %49(%"class.std::__1::basic_streambuf"* %this1.i67, i8* %50, i64 %51)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit unwind label %lpad, !dbg !4814

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit: ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  br label %invoke.cont, !dbg !4817

invoke.cont:                                      ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
  %52 = load i64, i64* %__ns, align 8, !dbg !4818
  %cmp21 = icmp ne i64 %call.i7071, %52, !dbg !4820
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !4821

if.then22:                                        ; preds = %invoke.cont
  %__sbuf_23 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4823
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_23, align 8, !dbg !4825
  %53 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4826
  %54 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 8, i32 8, i1 false), !dbg !4826
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4827

lpad:                                             ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  %55 = landingpad { i8*, i32 }
          cleanup, !dbg !4828
  %56 = extractvalue { i8*, i32 } %55, 0, !dbg !4828
  store i8* %56, i8** %exn.slot, align 8, !dbg !4828
  %57 = extractvalue { i8*, i32 } %55, 1, !dbg !4828
  store i32 %57, i32* %ehselector.slot, align 4, !dbg !4828
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #2, !dbg !4829
  br label %eh.resume, !dbg !4829

if.end24:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !4830
  br label %cleanup, !dbg !4830

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #2, !dbg !4832
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !4834

if.end25:                                         ; preds = %cleanup.cont, %if.end15
  %58 = load i8*, i8** %__oe.addr, align 8, !dbg !4836
  %59 = load i8*, i8** %__op.addr, align 8, !dbg !4837
  %sub.ptr.lhs.cast26 = ptrtoint i8* %58 to i64, !dbg !4838
  %sub.ptr.rhs.cast27 = ptrtoint i8* %59 to i64, !dbg !4838
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27, !dbg !4838
  store i64 %sub.ptr.sub28, i64* %__np, align 8, !dbg !4839
  %60 = load i64, i64* %__np, align 8, !dbg !4840
  %cmp29 = icmp sgt i64 %60, 0, !dbg !4841
  br i1 %cmp29, label %if.then30, label %if.end37, !dbg !4842

if.then30:                                        ; preds = %if.end25
  %__sbuf_31 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4843
  %61 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_31, align 8, !dbg !4843
  %62 = load i8*, i8** %__op.addr, align 8, !dbg !4844
  %63 = load i64, i64* %__np, align 8, !dbg !4845
  store %"class.std::__1::basic_streambuf"* %61, %"class.std::__1::basic_streambuf"** %this.addr.i44, align 8
  store i8* %62, i8** %__s.addr.i, align 8
  store i64 %63, i64* %__n.addr.i, align 8
  %this1.i45 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i44, align 8
  %64 = bitcast %"class.std::__1::basic_streambuf"* %this1.i45 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4846
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %64, align 8, !dbg !4846
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !dbg !4846
  %65 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !dbg !4846
  %66 = load i8*, i8** %__s.addr.i, align 8, !dbg !4847
  %67 = load i64, i64* %__n.addr.i, align 8, !dbg !4848
  %call.i = call i64 %65(%"class.std::__1::basic_streambuf"* %this1.i45, i8* %66, i64 %67), !dbg !4846
  %68 = load i64, i64* %__np, align 8, !dbg !4849
  %cmp33 = icmp ne i64 %call.i, %68, !dbg !4850
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !4851

if.then34:                                        ; preds = %if.then30
  %__sbuf_35 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4852
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_35, align 8, !dbg !4854
  %69 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4855
  %70 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 8, i1 false), !dbg !4855
  br label %return, !dbg !4856

if.end36:                                         ; preds = %if.then30
  br label %if.end37, !dbg !4857

if.end37:                                         ; preds = %if.end36, %if.end25
  %71 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !4858
  store %"class.std::__1::ios_base"* %71, %"class.std::__1::ios_base"** %this.addr.i41, align 8
  store i64 0, i64* %__wide.addr.i, align 8
  %this1.i42 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i41, align 8
  %__width_.i43 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i42, i32 0, i32 3, !dbg !4859
  %72 = load i64, i64* %__width_.i43, align 8, !dbg !4859
  store i64 %72, i64* %__r.i, align 8, !dbg !4706
  %73 = load i64, i64* %__wide.addr.i, align 8, !dbg !4860
  %__width_2.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i42, i32 0, i32 3, !dbg !4861
  store i64 %73, i64* %__width_2.i, align 8, !dbg !4862
  %74 = load i64, i64* %__r.i, align 8, !dbg !4863
  %75 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4864
  %76 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4864
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 8, i32 8, i1 false), !dbg !4864
  br label %return, !dbg !4865

return:                                           ; preds = %if.end37, %if.then34, %cleanup, %if.then12, %if.then
  %coerce.dive39 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0, !dbg !4866
  %77 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive39, align 8, !dbg !4866
  ret %"class.std::__1::basic_streambuf"* %77, !dbg !4866

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4868
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4868
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4868
  %lpad.val40 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4868
  resume { i8*, i32 } %lpad.val40, !dbg !4868

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #1

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #3

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #8 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #12
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #1

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #3

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %this) unnamed_addr #7 align 2 !dbg !4870 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !4871, metadata !3626), !dbg !4873
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !4874
  %0 = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_ to i8*, !dbg !4874
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false), !dbg !4874
  ret void, !dbg !4875
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.8"* %this) unnamed_addr #7 align 2 !dbg !4876 {
entry:
  %this.addr.i = alloca %"class.std::__1::allocator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::allocator"** %this.addr.i, metadata !4877, metadata !3626), !dbg !4880
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.8"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.8"* %this, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, metadata !4882, metadata !3626), !dbg !4884
  %this1 = load %"struct.std::__1::__compressed_pair_elem.8"*, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.8"* %this1 to %"class.std::__1::allocator"*, !dbg !4885
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr.i, align 8
  ret void, !dbg !4885
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #7 align 2 !dbg !4886 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !4887, metadata !3626), !dbg !4889
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !4890
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_, !dbg !4891
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #7 align 2 !dbg !4892 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__c1.addr, metadata !4893, metadata !3626), !dbg !4894
  store i32 %__c2, i32* %__c2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__c2.addr, metadata !4895, metadata !3626), !dbg !4896
  %0 = load i32, i32* %__c1.addr, align 4, !dbg !4897
  %1 = load i32, i32* %__c2.addr, align 4, !dbg !4898
  %cmp = icmp eq i32 %0, %1, !dbg !4899
  ret i1 %cmp, !dbg !4900
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #7 align 2 !dbg !4901 {
entry:
  ret i32 -1, !dbg !4902
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #3

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #1

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) #3

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #3

; Function Attrs: nounwind
declare i64 @strlen(i8*) #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4903 {
entry:
  %this.addr.i12.i.i.i115 = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, metadata !4904, metadata !3626), !dbg !4907
  %__ptr.addr.i.i.i.i116 = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, metadata !4919, metadata !3626), !dbg !4920
  %this.addr.i9.i.i.i117 = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i117, metadata !4921, metadata !3626), !dbg !4924
  %this.addr.i6.i.i.i118 = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i118, metadata !4926, metadata !3626), !dbg !4928
  %this.addr.i.i.i.i119 = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i119, metadata !4926, metadata !3626), !dbg !4930
  %this.addr.i.i.i120 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, metadata !4932, metadata !3626), !dbg !4934
  %__p.addr.i.i.i121 = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, metadata !4935, metadata !3626), !dbg !4936
  %__tmp.i.i.i122 = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, metadata !4937, metadata !3626), !dbg !4938
  %this.addr.i.i123 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i123, metadata !4939, metadata !3626), !dbg !4940
  %this.addr.i124 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i124, metadata !4941, metadata !3626), !dbg !4942
  %this.addr.i12.i.i.i86 = alloca %"struct.std::__1::default_delete.17"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i86, metadata !4943, metadata !3626), !dbg !4959
  %__ptr.addr.i.i.i.i87 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, metadata !5102, metadata !3626), !dbg !5103
  %this.addr.i9.i.i.i88 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i88, metadata !5104, metadata !3626), !dbg !5107
  %this.addr.i6.i.i.i89 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i89, metadata !5109, metadata !3626), !dbg !5111
  %this.addr.i.i.i.i90 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i90, metadata !5109, metadata !3626), !dbg !5113
  %this.addr.i.i.i91 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i91, metadata !5115, metadata !3626), !dbg !5117
  %__p.addr.i.i.i92 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i92, metadata !5118, metadata !3626), !dbg !5119
  %__tmp.i.i.i93 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i93, metadata !5120, metadata !3626), !dbg !5121
  %this.addr.i.i94 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i94, metadata !5122, metadata !3626), !dbg !5123
  %this.addr.i95 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i95, metadata !5124, metadata !3626), !dbg !5125
  %this.addr.i12.i.i.i59 = alloca %"struct.std::__1::default_delete.17"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i59, metadata !4943, metadata !3626), !dbg !5126
  %__ptr.addr.i.i.i.i60 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, metadata !5102, metadata !3626), !dbg !5132
  %this.addr.i9.i.i.i61 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i61, metadata !5104, metadata !3626), !dbg !5133
  %this.addr.i6.i.i.i62 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i62, metadata !5109, metadata !3626), !dbg !5135
  %this.addr.i.i.i.i63 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i63, metadata !5109, metadata !3626), !dbg !5137
  %this.addr.i.i.i64 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i64, metadata !5115, metadata !3626), !dbg !5139
  %__p.addr.i.i.i65 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i65, metadata !5118, metadata !3626), !dbg !5140
  %__tmp.i.i.i66 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i66, metadata !5120, metadata !3626), !dbg !5141
  %this.addr.i.i67 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i67, metadata !5122, metadata !3626), !dbg !5142
  %this.addr.i68 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i68, metadata !5124, metadata !3626), !dbg !5143
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i4.i, metadata !5109, metadata !3626), !dbg !5144
  %this.addr.i.i53 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i53, metadata !5109, metadata !3626), !dbg !5150
  %this.addr.i54 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i54, metadata !5152, metadata !3626), !dbg !5153
  %__t.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.i, metadata !5154, metadata !3626), !dbg !5155
  %__t.addr.i51 = alloca %struct._opaque_pthread_t**, align 8
  call void @llvm.dbg.declare(metadata %struct._opaque_pthread_t*** %__t.addr.i51, metadata !5156, metadata !3626), !dbg !5164
  %__func.addr.i = alloca i8* (i8*)*, align 8
  call void @llvm.dbg.declare(metadata i8* (i8*)** %__func.addr.i, metadata !5166, metadata !3626), !dbg !5167
  %__arg.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__arg.addr.i, metadata !5168, metadata !3626), !dbg !5169
  %this.addr.i.i47 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i47, metadata !5170, metadata !3626), !dbg !5173
  %this.addr.i48 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i48, metadata !5177, metadata !3626), !dbg !5179
  %__t.addr.i.i.i.i.i33 = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, metadata !5180, metadata !3626), !dbg !5189
  %this.addr.i.i.i.i34 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i34, metadata !5204, metadata !3626), !dbg !5205
  %__t.addr.i.i.i.i35 = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, metadata !5206, metadata !3626), !dbg !5207
  %this.addr.i.i.i36 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i36, metadata !5208, metadata !3626), !dbg !5209
  %__t.addr.i.i.i37 = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i37, metadata !5210, metadata !3626), !dbg !5211
  %this.addr.i.i38 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i38, metadata !5212, metadata !3626), !dbg !5213
  %__p.addr.i.i39 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i39, metadata !5214, metadata !3626), !dbg !5215
  %this.addr.i40 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i40, metadata !5216, metadata !3626), !dbg !5217
  %__p.addr.i41 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i41, metadata !5218, metadata !3626), !dbg !5219
  %__t.addr.i8.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i8.i.i, metadata !5220, metadata !3626), !dbg !5230
  %__t.addr.i3.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, metadata !5244, metadata !3626), !dbg !5253
  %__t.addr.i.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, metadata !5299, metadata !3626), !dbg !5307
  %this.addr.i.i10.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i10.i.i.i.i.i.i.i, metadata !5309, metadata !3626), !dbg !5310
  %__t1.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, metadata !5311, metadata !3626), !dbg !5312
  %__t2.addr.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, metadata !5313, metadata !3626), !dbg !5314
  %this.addr.i11.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i11.i.i.i.i.i.i.i, metadata !5315, metadata !3626), !dbg !5316
  %__t1.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, metadata !5317, metadata !3626), !dbg !5318
  %__t2.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, metadata !5319, metadata !3626), !dbg !5320
  %__t.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, metadata !5244, metadata !3626), !dbg !5321
  %this.addr.i.i4.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i4.i.i.i.i.i.i.i, metadata !4921, metadata !3626), !dbg !5324
  %this.addr.i5.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, metadata !5329, metadata !3626), !dbg !5330
  %this.addr.i4.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i4.i.i.i.i.i.i.i.i, metadata !4926, metadata !3626), !dbg !5331
  %this.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i.i.i.i.i.i, metadata !4926, metadata !3626), !dbg !5335
  %this.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, metadata !5337, metadata !3626), !dbg !5338
  %__t.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, metadata !5339, metadata !3626), !dbg !5340
  %this.addr.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, metadata !5341, metadata !3626), !dbg !5342
  %__u.addr.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, metadata !5343, metadata !3626), !dbg !5344
  %ref.tmp.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, metadata !5345, metadata !3626), !dbg !5346
  %__u.addr.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, metadata !5347, metadata !3626), !dbg !5348
  %__t.addr.i.i10.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, metadata !5349, metadata !3626), !dbg !5357
  %this.addr.i11.i.i.i.i = alloca %"class.std::__1::__tuple_leaf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, metadata !5359, metadata !3626), !dbg !5361
  %__t.addr.i12.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, metadata !5362, metadata !3626), !dbg !5363
  %__t.addr.i9.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i9.i.i.i.i, metadata !5220, metadata !3626), !dbg !5364
  %__t.addr.i.i.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i.i.i.i.i.i, metadata !5220, metadata !3626), !dbg !5367
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::__tuple_leaf.15"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf.15"** %this.addr.i.i.i.i.i, metadata !5376, metadata !3626), !dbg !5378
  %__t.addr.i8.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i8.i.i.i.i, metadata !5379, metadata !3626), !dbg !5380
  %__t.addr.i.i.i.i.i27 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, metadata !5349, metadata !3626), !dbg !5381
  %this.addr.i.i.i.i28 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, metadata !5383, metadata !3626), !dbg !5385
  %__u.addr.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, metadata !5386, metadata !3626), !dbg !5387
  %__u.addr5.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr5.i.i.i.i, metadata !5388, metadata !3626), !dbg !5387
  %this.addr.i.i.i29 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, metadata !5389, metadata !3626), !dbg !5390
  %__u.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, metadata !5391, metadata !3626), !dbg !5392
  %__u.addr5.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr5.i.i.i, metadata !5393, metadata !3626), !dbg !5392
  %__t.addr.i.i.i30 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, metadata !5349, metadata !3626), !dbg !5394
  %this.addr.i.i31 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr.i.i31, metadata !5396, metadata !3626), !dbg !5397
  %__u.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i, metadata !5398, metadata !3626), !dbg !5399
  %__u.addr2.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr2.i.i, metadata !5400, metadata !3626), !dbg !5399
  %this.addr.i32 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr.i32, metadata !5401, metadata !3626), !dbg !5402
  %__u.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i, metadata !5403, metadata !3626), !dbg !5404
  %__u.addr2.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr2.i, metadata !5405, metadata !3626), !dbg !5404
  %__t.addr.i.i = alloca void ()*, align 8
  call void @llvm.dbg.declare(metadata void ()** %__t.addr.i.i, metadata !5406, metadata !3626), !dbg !5415
  %__t.addr.i26 = alloca void ()*, align 8
  call void @llvm.dbg.declare(metadata void ()** %__t.addr.i26, metadata !5432, metadata !3626), !dbg !5433
  %__t.addr.i25 = alloca void ()*, align 8
  call void @llvm.dbg.declare(metadata void ()** %__t.addr.i25, metadata !5406, metadata !3626), !dbg !5434
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, metadata !4904, metadata !3626), !dbg !5436
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, metadata !4919, metadata !3626), !dbg !5442
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i, metadata !4921, metadata !3626), !dbg !5443
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i, metadata !4926, metadata !3626), !dbg !5445
  %this.addr.i.i.i.i17 = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i17, metadata !4926, metadata !3626), !dbg !5447
  %this.addr.i.i.i18 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, metadata !4932, metadata !3626), !dbg !5449
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, metadata !4935, metadata !3626), !dbg !5450
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__tmp.i.i.i, metadata !4937, metadata !3626), !dbg !5451
  %this.addr.i.i19 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i19, metadata !4939, metadata !3626), !dbg !5452
  %this.addr.i20 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i20, metadata !4941, metadata !3626), !dbg !5453
  %__t.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i, metadata !5454, metadata !3626), !dbg !5463
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, metadata !5466, metadata !3626), !dbg !5475
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i, metadata !5490, metadata !3626), !dbg !5491
  %__t.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, metadata !5492, metadata !3626), !dbg !5493
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i, metadata !5494, metadata !3626), !dbg !5495
  %__t.addr.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, metadata !5496, metadata !3626), !dbg !5497
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i, metadata !5498, metadata !3626), !dbg !5499
  %__p.addr.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i, metadata !5500, metadata !3626), !dbg !5501
  %this.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i, metadata !5502, metadata !3626), !dbg !5503
  %__p.addr.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i, metadata !5504, metadata !3626), !dbg !5505
  %this.addr = alloca %"class.std::__1::thread"*, align 8
  %__f.addr = alloca void ()*, align 8
  %__tsp = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__p = alloca %"class.std::__1::unique_ptr.12", align 8
  %ref.tmp = alloca void ()*, align 8
  %__ec = alloca i32, align 4
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"** %this.addr, metadata !5506, metadata !3626), !dbg !5507
  store void ()* %__f, void ()** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void ()** %__f.addr, metadata !5508, metadata !3626), !dbg !5509
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"* %__tsp, metadata !5510, metadata !3626), !dbg !5512
  %call = call i8* @_Znwm(i64 8) #13, !dbg !5513
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !5513
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* %0)
          to label %invoke.cont unwind label %lpad, !dbg !5514

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  store %"class.std::__1::__thread_struct"* %0, %"class.std::__1::__thread_struct"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i, align 8, !dbg !5515
  store %"class.std::__1::unique_ptr"* %this1.i, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  store %"class.std::__1::__thread_struct"* %1, %"class.std::__1::__thread_struct"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i, i32 0, i32 0, !dbg !5516
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %__p.addr.i.i, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i, align 8
  %2 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8, !dbg !5517
  store %"class.std::__1::__compressed_pair.9"* %this1.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %2, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5518
  %4 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8, !dbg !5519
  store %"class.std::__1::__thread_struct"** %4, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  %5 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8, !dbg !5520
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.10"* %3, %"class.std::__1::__thread_struct"** dereferenceable(8) %5) #2, !dbg !5521
  %6 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.11"*, !dbg !5518
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"* %__p, metadata !5523, metadata !3626), !dbg !5524
  %call4 = invoke i8* @_Znwm(i64 16) #13
          to label %invoke.cont3 unwind label %lpad2, !dbg !5525

invoke.cont3:                                     ; preds = %invoke.cont
  %7 = bitcast i8* %call4 to %"class.std::__1::tuple"*, !dbg !5526
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %__t.addr.i, align 8
  %8 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i, align 8, !dbg !5527
  %9 = load void ()*, void ()** %__f.addr, align 8, !dbg !5528
  store void ()* %9, void ()** %__t.addr.i25, align 8
  %10 = load void ()*, void ()** %__t.addr.i25, align 8, !dbg !5529
  store void ()* %10, void ()** %__t.addr.i26, align 8
  %11 = load void ()*, void ()** %__t.addr.i26, align 8, !dbg !5530
  store void ()* %11, void ()** %__t.addr.i.i, align 8
  %12 = load void ()*, void ()** %__t.addr.i.i, align 8, !dbg !5531
  br label %invoke.cont8, !dbg !5532

invoke.cont8:                                     ; preds = %invoke.cont3
  store void ()* %12, void ()** %ref.tmp, align 8, !dbg !5533
  store %"class.std::__1::tuple"* %7, %"class.std::__1::tuple"** %this.addr.i32, align 8
  store %"class.std::__1::unique_ptr"* %8, %"class.std::__1::unique_ptr"** %__u.addr.i, align 8
  store void ()** %ref.tmp, void ()*** %__u.addr2.i, align 8
  %this3.i = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr.i32, align 8
  %13 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i, align 8, !dbg !5534
  %14 = load void ()**, void ()*** %__u.addr2.i, align 8, !dbg !5534
  store %"class.std::__1::tuple"* %this3.i, %"class.std::__1::tuple"** %this.addr.i.i31, align 8
  store %"class.std::__1::unique_ptr"* %13, %"class.std::__1::unique_ptr"** %__u.addr.i.i, align 8
  store void ()** %14, void ()*** %__u.addr2.i.i, align 8
  %this3.i.i = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr.i.i31, align 8
  %base_.i.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %this3.i.i, i32 0, i32 0, !dbg !5535
  %15 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i, align 8, !dbg !5536
  store %"class.std::__1::unique_ptr"* %15, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, align 8
  %16 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, align 8, !dbg !5537
  %17 = load void ()**, void ()*** %__u.addr2.i.i, align 8, !dbg !5536
  store void ()** %17, void ()*** %__t.addr.i8.i.i, align 8
  %18 = load void ()**, void ()*** %__t.addr.i8.i.i, align 8, !dbg !5538
  store %"struct.std::__1::__tuple_impl"* %base_.i.i, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, align 8
  call void @llvm.dbg.declare(metadata !212, metadata !5539, metadata !3626) #2, !dbg !5540
  call void @llvm.dbg.declare(metadata !212, metadata !5541, metadata !3626) #2, !dbg !5542
  call void @llvm.dbg.declare(metadata !212, metadata !5543, metadata !3626) #2, !dbg !5544
  call void @llvm.dbg.declare(metadata !212, metadata !5545, metadata !3626) #2, !dbg !5546
  store %"class.std::__1::unique_ptr"* %16, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, align 8
  store void ()** %18, void ()*** %__u.addr5.i.i.i, align 8
  %this6.i.i.i = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, align 8
  %19 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, align 8, !dbg !5547
  %20 = load void ()**, void ()*** %__u.addr5.i.i.i, align 8, !dbg !5547
  store %"struct.std::__1::__tuple_impl"* %this6.i.i.i, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, align 8
  call void @llvm.dbg.declare(metadata !212, metadata !5548, metadata !3626) #2, !dbg !5549
  call void @llvm.dbg.declare(metadata !212, metadata !5550, metadata !3626) #2, !dbg !5551
  call void @llvm.dbg.declare(metadata !212, metadata !5552, metadata !3626) #2, !dbg !5553
  call void @llvm.dbg.declare(metadata !212, metadata !5554, metadata !3626) #2, !dbg !5555
  store %"class.std::__1::unique_ptr"* %19, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, align 8
  store void ()** %20, void ()*** %__u.addr5.i.i.i.i, align 8
  %this6.i.i.i.i = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, align 8
  %21 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to %"class.std::__1::__tuple_leaf"*, !dbg !5556
  %22 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, align 8, !dbg !5557
  store %"class.std::__1::unique_ptr"* %22, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, align 8
  %23 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, align 8, !dbg !5558
  store %"class.std::__1::__tuple_leaf"* %21, %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %23, %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, align 8
  %this1.i13.i.i.i.i = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, align 8
  %value.i14.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1.i13.i.i.i.i, i32 0, i32 0, !dbg !5559
  %24 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, align 8, !dbg !5560
  store %"class.std::__1::unique_ptr"* %24, %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, align 8
  %25 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, align 8, !dbg !5561
  store %"class.std::__1::unique_ptr"* %value.i14.i.i.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %25, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, align 8
  %26 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, align 8, !dbg !5562
  store %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %26, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, align 8
  %__ptr_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !5563
  %27 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8, !dbg !5564
  store %"class.std::__1::unique_ptr"* %27, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, align 8
  %__ptr_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !5565
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %28 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5566
  %call.i.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %28) #2, !dbg !5567
  %29 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i.i.i.i.i.i, align 8, !dbg !5568
  store %"class.std::__1::__thread_struct"* %29, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8, !dbg !5340
  %__ptr_2.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !5569
  store %"class.std::__1::__compressed_pair.9"* %__ptr_2.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %this1.i5.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i5.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5570
  %call.i6.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %30) #2, !dbg !5571
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i.i.i.i.i.i.i.i, align 8, !dbg !5572
  %31 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8, !dbg !5573
  store %"class.std::__1::__thread_struct"* %31, %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, align 8, !dbg !5564
  %32 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8, !dbg !5574
  store %"class.std::__1::unique_ptr"* %32, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %this1.i6.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %__ptr_.i7.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i6.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !5575
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i7.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %this1.i.i8.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %33 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i8.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.11"*, !dbg !5576
  %call.i.i9.i.i.i.i.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.11"* %33) #2, !dbg !5577
  store %"struct.std::__1::default_delete"* %call.i.i9.i.i.i.i.i.i.i, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  %34 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8, !dbg !5578
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %34, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i12.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  %35 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8, !dbg !5579
  %36 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8, !dbg !5579
  store %"class.std::__1::__compressed_pair.9"* %this1.i12.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %35, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %36, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i13.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  %37 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5580
  %38 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8, !dbg !5581
  store %"class.std::__1::__thread_struct"** %38, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  %39 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !5582
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.10"* %37, %"class.std::__1::__thread_struct"** dereferenceable(8) %39) #2, !dbg !5583
  %40 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.11"*, !dbg !5580
  %41 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8, !dbg !5585
  store %"struct.std::__1::default_delete"* %41, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  %42 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8, !dbg !5586
  call void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.11"* %40, %"struct.std::__1::default_delete"* dereferenceable(1) %42) #2, !dbg !5587
  %43 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to i8*, !dbg !5556
  %44 = getelementptr inbounds i8, i8* %43, i64 8, !dbg !5556
  %45 = bitcast i8* %44 to %"class.std::__1::__tuple_leaf.15"*, !dbg !5556
  %46 = load void ()**, void ()*** %__u.addr5.i.i.i.i, align 8, !dbg !5557
  store void ()** %46, void ()*** %__t.addr.i9.i.i.i.i, align 8
  %47 = load void ()**, void ()*** %__t.addr.i9.i.i.i.i, align 8, !dbg !5589
  store %"class.std::__1::__tuple_leaf.15"* %45, %"class.std::__1::__tuple_leaf.15"** %this.addr.i.i.i.i.i, align 8
  store void ()** %47, void ()*** %__t.addr.i8.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::__tuple_leaf.15"*, %"class.std::__1::__tuple_leaf.15"** %this.addr.i.i.i.i.i, align 8
  %value.i.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.15", %"class.std::__1::__tuple_leaf.15"* %this1.i.i.i.i.i, i32 0, i32 0, !dbg !5590
  %48 = load void ()**, void ()*** %__t.addr.i8.i.i.i.i, align 8, !dbg !5591
  store void ()** %48, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %49 = load void ()**, void ()*** %__t.addr.i.i.i.i.i.i, align 8, !dbg !5592
  %50 = load void ()*, void ()** %49, align 8, !dbg !5593
  store void ()* %50, void ()** %value.i.i.i.i.i, align 8, !dbg !5590
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i40, align 8
  store %"class.std::__1::tuple"* %7, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  %this1.i42 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i40, align 8
  %51 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i41, align 8, !dbg !5594
  store %"class.std::__1::unique_ptr.12"* %this1.i42, %"class.std::__1::unique_ptr.12"** %this.addr.i.i38, align 8
  store %"class.std::__1::tuple"* %51, %"class.std::__1::tuple"** %__p.addr.i.i39, align 8
  %this1.i.i43 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i38, align 8
  %__ptr_.i.i44 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i43, i32 0, i32 0, !dbg !5595
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i.i44, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i36, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i39, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  %this1.i.i.i45 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i36, align 8
  %52 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8, !dbg !5596
  store %"class.std::__1::__compressed_pair.13"* %this1.i.i.i45, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i34, align 8
  store %"class.std::__1::tuple"** %52, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  %this1.i.i.i.i46 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i34, align 8
  %53 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5597
  %54 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8, !dbg !5598
  store %"class.std::__1::tuple"** %54, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  %55 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8, !dbg !5599
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.14"* %53, %"class.std::__1::tuple"** dereferenceable(8) %55) #2, !dbg !5600
  %56 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.16"*, !dbg !5597
  call void @llvm.dbg.declare(metadata i32* %__ec, metadata !5602, metadata !3626), !dbg !5603
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1, i32 0, i32 0, !dbg !5604
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i48, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i49, i32 0, i32 0, !dbg !5605
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i47, align 8
  %this1.i.i50 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i47, align 8
  %57 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i50 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5606
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %57) #2, !dbg !5607
  %58 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i, align 8, !dbg !5608
  %59 = bitcast %"class.std::__1::tuple"* %58 to i8*, !dbg !5609
  store %struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_t*** %__t.addr.i51, align 8
  store i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* (i8*)** %__func.addr.i, align 8
  store i8* %59, i8** %__arg.addr.i, align 8
  %60 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %__t.addr.i51, align 8, !dbg !5610
  %61 = load i8* (i8*)*, i8* (i8*)** %__func.addr.i, align 8, !dbg !5611
  %62 = load i8*, i8** %__arg.addr.i, align 8, !dbg !5612
  %call.i52 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %60, %struct._opaque_pthread_attr_t* null, i8* (i8*)* %61, i8* %62)
          to label %_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit unwind label %lpad11, !dbg !5613

_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit: ; preds = %invoke.cont8
  br label %invoke.cont12, !dbg !5614

invoke.cont12:                                    ; preds = %_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit
  store i32 %call.i52, i32* %__ec, align 4, !dbg !5615
  %63 = load i32, i32* %__ec, align 4, !dbg !5616
  %cmp = icmp eq i32 %63, 0, !dbg !5617
  br i1 %cmp, label %if.then, label %if.else, !dbg !5618

if.then:                                          ; preds = %invoke.cont12
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i54, align 8
  %this1.i55 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i54, align 8
  %__ptr_.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i55, i32 0, i32 0, !dbg !5619
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i56, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i53, align 8
  %this1.i.i57 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i53, align 8
  %64 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i57 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5620
  %call.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %64) #2, !dbg !5621
  %65 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i58, align 8, !dbg !5622
  store %"class.std::__1::tuple"* %65, %"class.std::__1::tuple"** %__t.i, align 8, !dbg !5155
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i55, i32 0, i32 0, !dbg !5623
  store %"class.std::__1::__compressed_pair.13"* %__ptr_2.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i4.i, align 8
  %66 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5624
  %call.i6.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %66) #2, !dbg !5625
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %call.i6.i, align 8, !dbg !5626
  %67 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.i, align 8, !dbg !5627
  br label %if.end, !dbg !5628

lpad:                                             ; preds = %entry
  %68 = landingpad { i8*, i32 }
          cleanup, !dbg !5629
  %69 = extractvalue { i8*, i32 } %68, 0, !dbg !5629
  store i8* %69, i8** %exn.slot, align 8, !dbg !5629
  %70 = extractvalue { i8*, i32 } %68, 1, !dbg !5629
  store i32 %70, i32* %ehselector.slot, align 4, !dbg !5629
  call void @_ZdlPv(i8* %call) #14, !dbg !5630
  br label %eh.resume, !dbg !5630

lpad2:                                            ; preds = %invoke.cont
  %71 = landingpad { i8*, i32 }
          cleanup, !dbg !5631
  %72 = extractvalue { i8*, i32 } %71, 0, !dbg !5631
  store i8* %72, i8** %exn.slot, align 8, !dbg !5631
  %73 = extractvalue { i8*, i32 } %71, 1, !dbg !5631
  store i32 %73, i32* %ehselector.slot, align 4, !dbg !5631
  br label %ehcleanup, !dbg !5631

lpad7:                                            ; No predecessors!
  %74 = landingpad { i8*, i32 }
          cleanup, !dbg !5632
  %75 = extractvalue { i8*, i32 } %74, 0, !dbg !5632
  store i8* %75, i8** %exn.slot, align 8, !dbg !5632
  %76 = extractvalue { i8*, i32 } %74, 1, !dbg !5632
  store i32 %76, i32* %ehselector.slot, align 4, !dbg !5632
  call void @_ZdlPv(i8* %call4) #14, !dbg !5633
  br label %ehcleanup, !dbg !5633

lpad11:                                           ; preds = %invoke.cont8, %if.else
  %77 = landingpad { i8*, i32 }
          cleanup, !dbg !5635
  %78 = extractvalue { i8*, i32 } %77, 0, !dbg !5635
  store i8* %78, i8** %exn.slot, align 8, !dbg !5635
  %79 = extractvalue { i8*, i32 } %77, 1, !dbg !5635
  store i32 %79, i32* %ehselector.slot, align 4, !dbg !5635
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i68, align 8
  %this1.i69 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i68, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i69, %"class.std::__1::unique_ptr.12"** %this.addr.i.i67, align 8
  %this1.i.i70 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i67, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i.i70, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i64, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %this1.i.i.i71 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i64, align 8
  %__ptr_.i.i.i72 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i71, i32 0, i32 0, !dbg !5636
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i.i.i72, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i63, align 8
  %this1.i.i.i.i73 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i63, align 8
  %80 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i73 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5637
  %call.i.i.i.i74 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %80) #2, !dbg !5638
  %81 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i74, align 8, !dbg !5639
  store %"class.std::__1::tuple"* %81, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8, !dbg !5141
  %82 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8, !dbg !5640
  %__ptr_2.i.i.i75 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i71, i32 0, i32 0, !dbg !5641
  store %"class.std::__1::__compressed_pair.13"* %__ptr_2.i.i.i75, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i62, align 8
  %this1.i7.i.i.i76 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i62, align 8
  %83 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i7.i.i.i76 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5642
  %call.i8.i.i.i77 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %83) #2, !dbg !5643
  store %"class.std::__1::tuple"* %82, %"class.std::__1::tuple"** %call.i8.i.i.i77, align 8, !dbg !5644
  %84 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8, !dbg !5645
  %tobool.i.i.i78 = icmp ne %"class.std::__1::tuple"* %84, null, !dbg !5645
  br i1 %tobool.i.i.i78, label %if.then.i.i.i84, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !5646

if.then.i.i.i84:                                  ; preds = %lpad11
  %__ptr_4.i.i.i79 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i71, i32 0, i32 0, !dbg !5647
  store %"class.std::__1::__compressed_pair.13"* %__ptr_4.i.i.i79, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i61, align 8
  %this1.i10.i.i.i80 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i61, align 8
  %85 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i10.i.i.i80 to %"struct.std::__1::__compressed_pair_elem.16"*, !dbg !5648
  %call.i11.i.i.i81 = call dereferenceable(1) %"struct.std::__1::default_delete.17"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %85) #2, !dbg !5649
  %86 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8, !dbg !5650
  store %"struct.std::__1::default_delete.17"* %call.i11.i.i.i81, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i59, align 8
  store %"class.std::__1::tuple"* %86, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %this1.i13.i.i.i82 = load %"struct.std::__1::default_delete.17"*, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i59, align 8
  %87 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8, !dbg !5651
  %isnull.i.i.i.i83 = icmp eq %"class.std::__1::tuple"* %87, null, !dbg !5652
  br i1 %isnull.i.i.i.i83, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i85, !dbg !5652

delete.notnull.i.i.i.i85:                         ; preds = %if.then.i.i.i84
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %87) #2, !dbg !5653
  %88 = bitcast %"class.std::__1::tuple"* %87 to i8*, !dbg !5653
  call void @_ZdlPv(i8* %88) #14, !dbg !5655
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !5653

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i85, %if.then.i.i.i84
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !5647

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad11, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %ehcleanup, !dbg !5657

if.else:                                          ; preds = %invoke.cont12
  %89 = load i32, i32* %__ec, align 4, !dbg !5658
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #15
          to label %invoke.cont15 unwind label %lpad11, !dbg !5659

invoke.cont15:                                    ; preds = %if.else
  unreachable, !dbg !5660

if.end:                                           ; preds = %if.then
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i95, align 8
  %this1.i96 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i95, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i96, %"class.std::__1::unique_ptr.12"** %this.addr.i.i94, align 8
  %this1.i.i97 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i94, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i.i97, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i91, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %this1.i.i.i98 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i91, align 8
  %__ptr_.i.i.i99 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i98, i32 0, i32 0, !dbg !5662
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i.i.i99, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i90, align 8
  %this1.i.i.i.i100 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i90, align 8
  %90 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i100 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5663
  %call.i.i.i.i101 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %90) #2, !dbg !5664
  %91 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i101, align 8, !dbg !5665
  store %"class.std::__1::tuple"* %91, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8, !dbg !5121
  %92 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8, !dbg !5666
  %__ptr_2.i.i.i102 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i98, i32 0, i32 0, !dbg !5667
  store %"class.std::__1::__compressed_pair.13"* %__ptr_2.i.i.i102, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i89, align 8
  %this1.i7.i.i.i103 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i89, align 8
  %93 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i7.i.i.i103 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5668
  %call.i8.i.i.i104 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %93) #2, !dbg !5669
  store %"class.std::__1::tuple"* %92, %"class.std::__1::tuple"** %call.i8.i.i.i104, align 8, !dbg !5670
  %94 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8, !dbg !5671
  %tobool.i.i.i105 = icmp ne %"class.std::__1::tuple"* %94, null, !dbg !5671
  br i1 %tobool.i.i.i105, label %if.then.i.i.i111, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114, !dbg !5672

if.then.i.i.i111:                                 ; preds = %if.end
  %__ptr_4.i.i.i106 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i98, i32 0, i32 0, !dbg !5673
  store %"class.std::__1::__compressed_pair.13"* %__ptr_4.i.i.i106, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i88, align 8
  %this1.i10.i.i.i107 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i88, align 8
  %95 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i10.i.i.i107 to %"struct.std::__1::__compressed_pair_elem.16"*, !dbg !5674
  %call.i11.i.i.i108 = call dereferenceable(1) %"struct.std::__1::default_delete.17"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %95) #2, !dbg !5675
  %96 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8, !dbg !5676
  store %"struct.std::__1::default_delete.17"* %call.i11.i.i.i108, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i86, align 8
  store %"class.std::__1::tuple"* %96, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %this1.i13.i.i.i109 = load %"struct.std::__1::default_delete.17"*, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i86, align 8
  %97 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8, !dbg !5677
  %isnull.i.i.i.i110 = icmp eq %"class.std::__1::tuple"* %97, null, !dbg !5678
  br i1 %isnull.i.i.i.i110, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113, label %delete.notnull.i.i.i.i112, !dbg !5678

delete.notnull.i.i.i.i112:                        ; preds = %if.then.i.i.i111
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %97) #2, !dbg !5679
  %98 = bitcast %"class.std::__1::tuple"* %97 to i8*, !dbg !5679
  call void @_ZdlPv(i8* %98) #14, !dbg !5680
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113, !dbg !5679

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113: ; preds = %delete.notnull.i.i.i.i112, %if.then.i.i.i111
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114, !dbg !5673

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114: ; preds = %if.end, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i124, align 8
  %this1.i125 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i124, align 8
  store %"class.std::__1::unique_ptr"* %this1.i125, %"class.std::__1::unique_ptr"** %this.addr.i.i123, align 8
  %this1.i.i126 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i123, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i126, %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8
  %this1.i.i.i127 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, align 8
  %__ptr_.i.i.i128 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0, !dbg !5681
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i.i.i128, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i119, align 8
  %this1.i.i.i.i129 = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i119, align 8
  %99 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i.i.i129 to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5682
  %call.i.i.i.i130 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %99) #2, !dbg !5683
  %100 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i130, align 8, !dbg !5684
  store %"class.std::__1::__thread_struct"* %100, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8, !dbg !4938
  %101 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8, !dbg !5685
  %__ptr_2.i.i.i131 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0, !dbg !5686
  store %"class.std::__1::__compressed_pair.9"* %__ptr_2.i.i.i131, %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i118, align 8
  %this1.i7.i.i.i132 = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i118, align 8
  %102 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i7.i.i.i132 to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5687
  %call.i8.i.i.i133 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %102) #2, !dbg !5688
  store %"class.std::__1::__thread_struct"* %101, %"class.std::__1::__thread_struct"** %call.i8.i.i.i133, align 8, !dbg !5689
  %103 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8, !dbg !5690
  %tobool.i.i.i134 = icmp ne %"class.std::__1::__thread_struct"* %103, null, !dbg !5690
  br i1 %tobool.i.i.i134, label %if.then.i.i.i140, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143, !dbg !5691

if.then.i.i.i140:                                 ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114
  %__ptr_4.i.i.i135 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0, !dbg !5692
  store %"class.std::__1::__compressed_pair.9"* %__ptr_4.i.i.i135, %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i117, align 8
  %this1.i10.i.i.i136 = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i117, align 8
  %104 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i10.i.i.i136 to %"struct.std::__1::__compressed_pair_elem.11"*, !dbg !5693
  %call.i11.i.i.i137 = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.11"* %104) #2, !dbg !5694
  %105 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8, !dbg !5695
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i137, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  store %"class.std::__1::__thread_struct"* %105, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8
  %this1.i13.i.i.i138 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  %106 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8, !dbg !5696
  %isnull.i.i.i.i139 = icmp eq %"class.std::__1::__thread_struct"* %106, null, !dbg !5697
  br i1 %isnull.i.i.i.i139, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142, label %delete.notnull.i.i.i.i141, !dbg !5697

delete.notnull.i.i.i.i141:                        ; preds = %if.then.i.i.i140
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %106) #2, !dbg !5698
  %107 = bitcast %"class.std::__1::__thread_struct"* %106 to i8*, !dbg !5698
  call void @_ZdlPv(i8* %107) #14, !dbg !5700
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142, !dbg !5698

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142: ; preds = %delete.notnull.i.i.i.i141, %if.then.i.i.i140
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143, !dbg !5692

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143: ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142
  ret void, !dbg !5702

ehcleanup:                                        ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, %lpad7, %lpad2
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i20, align 8
  %this1.i21 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i20, align 8
  store %"class.std::__1::unique_ptr"* %this1.i21, %"class.std::__1::unique_ptr"** %this.addr.i.i19, align 8
  %this1.i.i22 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i19, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i22, %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %this1.i.i.i23 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0, !dbg !5703
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i17, align 8
  %this1.i.i.i.i24 = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i17, align 8
  %108 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i.i.i24 to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5704
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %108) #2, !dbg !5705
  %109 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8, !dbg !5706
  store %"class.std::__1::__thread_struct"* %109, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !5451
  %110 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8, !dbg !5707
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0, !dbg !5708
  store %"class.std::__1::__compressed_pair.9"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i, align 8
  %111 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5709
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %111) #2, !dbg !5710
  store %"class.std::__1::__thread_struct"* %110, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8, !dbg !5711
  %112 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !5712
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %112, null, !dbg !5712
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !5713

if.then.i.i.i:                                    ; preds = %ehcleanup
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0, !dbg !5714
  store %"class.std::__1::__compressed_pair.9"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i, align 8
  %113 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.11"*, !dbg !5715
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.11"* %113) #2, !dbg !5716
  %114 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !5717
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %114, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %115 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8, !dbg !5718
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %115, null, !dbg !5719
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i, !dbg !5719

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %115) #2, !dbg !5720
  %116 = bitcast %"class.std::__1::__thread_struct"* %115 to i8*, !dbg !5720
  call void @_ZdlPv(i8* %116) #14, !dbg !5721
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !5720

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !5714

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %ehcleanup, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  br label %eh.resume, !dbg !5722

eh.resume:                                        ; preds = %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !5723
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !5723
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !5723
  %lpad.val16 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !5723
  resume { i8*, i32 } %lpad.val16, !dbg !5723
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #9

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #10

; Function Attrs: noinline ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !5724 {
entry:
  %this.addr.i12.i.i.i40 = alloca %"struct.std::__1::default_delete.17"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i40, metadata !4943, metadata !3626), !dbg !5727
  %__ptr.addr.i.i.i.i41 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, metadata !5102, metadata !3626), !dbg !5732
  %this.addr.i9.i.i.i42 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i42, metadata !5104, metadata !3626), !dbg !5733
  %this.addr.i6.i.i.i43 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i43, metadata !5109, metadata !3626), !dbg !5735
  %this.addr.i.i.i.i44 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i44, metadata !5109, metadata !3626), !dbg !5737
  %this.addr.i.i.i45 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i45, metadata !5115, metadata !3626), !dbg !5739
  %__p.addr.i.i.i46 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i46, metadata !5118, metadata !3626), !dbg !5740
  %__tmp.i.i.i47 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i47, metadata !5120, metadata !3626), !dbg !5741
  %this.addr.i.i48 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i48, metadata !5122, metadata !3626), !dbg !5742
  %this.addr.i49 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i49, metadata !5124, metadata !3626), !dbg !5743
  %__t.addr.i2.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i2.i, metadata !5744, metadata !3626), !dbg !5753
  %__t.addr.i.i.i36 = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i.i.i36, metadata !5220, metadata !3626), !dbg !5765
  %__f.addr.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__f.addr.i.i, metadata !5773, metadata !3626), !dbg !5774
  %this.addr.i.i.i37 = alloca %"class.std::__1::__tuple_leaf.15"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf.15"** %this.addr.i.i.i37, metadata !5775, metadata !3626), !dbg !5777
  %__t.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.addr.i.i, metadata !5792, metadata !3626), !dbg !5793
  %__t.addr.i38 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.addr.i38, metadata !5794, metadata !3626), !dbg !5795
  %this.addr.i.i30 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i30, metadata !5170, metadata !3626), !dbg !5796
  %this.addr.i31 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i31, metadata !5800, metadata !3626), !dbg !5801
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i4.i, metadata !4926, metadata !3626), !dbg !5802
  %this.addr.i.i24 = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i24, metadata !4926, metadata !3626), !dbg !5806
  %this.addr.i25 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i25, metadata !5337, metadata !3626), !dbg !5808
  %__t.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__t.i, metadata !5339, metadata !3626), !dbg !5809
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete.17"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i, metadata !4943, metadata !3626), !dbg !5810
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, metadata !5102, metadata !3626), !dbg !5815
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i, metadata !5104, metadata !3626), !dbg !5816
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i, metadata !5109, metadata !3626), !dbg !5818
  %this.addr.i.i.i.i16 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i16, metadata !5109, metadata !3626), !dbg !5820
  %this.addr.i.i.i17 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i17, metadata !5115, metadata !3626), !dbg !5822
  %__p.addr.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i, metadata !5118, metadata !3626), !dbg !5823
  %__tmp.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i, metadata !5120, metadata !3626), !dbg !5824
  %this.addr.i.i18 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i18, metadata !5122, metadata !3626), !dbg !5825
  %this.addr.i19 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i19, metadata !5124, metadata !3626), !dbg !5826
  %this.addr.i.i14 = alloca %"class.std::__1::__tuple_leaf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, metadata !5827, metadata !3626), !dbg !5829
  %__t.addr.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.addr.i, metadata !5844, metadata !3626), !dbg !5845
  %this.addr.i.i10 = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i10, metadata !5170, metadata !3626), !dbg !5846
  %this.addr.i11 = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i11, metadata !5800, metadata !3626), !dbg !5849
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, metadata !5180, metadata !3626), !dbg !5850
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i, metadata !5204, metadata !3626), !dbg !5856
  %__t.addr.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, metadata !5206, metadata !3626), !dbg !5857
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.13"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i, metadata !5208, metadata !3626), !dbg !5858
  %__t.addr.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i, metadata !5210, metadata !3626), !dbg !5859
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i.i, metadata !5212, metadata !3626), !dbg !5860
  %__p.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i, metadata !5214, metadata !3626), !dbg !5861
  %this.addr.i = alloca %"class.std::__1::unique_ptr.12"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"** %this.addr.i, metadata !5216, metadata !3626), !dbg !5862
  %__p.addr.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i, metadata !5218, metadata !3626), !dbg !5863
  %__vp.addr = alloca i8*, align 8
  %__p = alloca %"class.std::__1::unique_ptr.12", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices.19", align 1
  store i8* %__vp, i8** %__vp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__vp.addr, metadata !5864, metadata !3626), !dbg !5865
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.12"* %__p, metadata !5866, metadata !3626), !dbg !5867
  %0 = load i8*, i8** %__vp.addr, align 8, !dbg !5868
  %1 = bitcast i8* %0 to %"class.std::__1::tuple"*, !dbg !5869
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i, align 8
  store %"class.std::__1::tuple"* %1, %"class.std::__1::tuple"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i, align 8
  %2 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i, align 8, !dbg !5870
  store %"class.std::__1::unique_ptr.12"* %this1.i, %"class.std::__1::unique_ptr.12"** %this.addr.i.i, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i, i32 0, i32 0, !dbg !5871
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i, align 8
  %3 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8, !dbg !5872
  store %"class.std::__1::__compressed_pair.13"* %this1.i.i.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %3, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5873
  %5 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8, !dbg !5874
  store %"class.std::__1::tuple"** %5, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  %6 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8, !dbg !5875
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.14"* %4, %"class.std::__1::tuple"** dereferenceable(8) %6) #2, !dbg !5876
  %7 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.16"*, !dbg !5873
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !5877

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i11, align 8
  %this1.i12 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i11, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i12, i32 0, i32 0, !dbg !5878
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i10, align 8
  %this1.i.i13 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i10, align 8
  %8 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i13 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5879
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %8) #2, !dbg !5880
  %9 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i, align 8, !dbg !5881
  br label %invoke.cont1, !dbg !5882

invoke.cont1:                                     ; preds = %invoke.cont
  store %"class.std::__1::tuple"* %9, %"class.std::__1::tuple"** %__t.addr.i, align 8
  %10 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i, align 8, !dbg !5883
  %base_.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %10, i32 0, i32 0, !dbg !5884
  %11 = bitcast %"struct.std::__1::__tuple_impl"* %base_.i to %"class.std::__1::__tuple_leaf"*, !dbg !5883
  store %"class.std::__1::__tuple_leaf"* %11, %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, align 8
  %this1.i.i15 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, align 8
  %value.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1.i.i15, i32 0, i32 0, !dbg !5885
  store %"class.std::__1::unique_ptr"* %value.i.i, %"class.std::__1::unique_ptr"** %this.addr.i25, align 8
  %this1.i26 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i25, align 8
  %__ptr_.i27 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0, !dbg !5886
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i27, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i24, align 8
  %this1.i.i28 = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i24, align 8
  %12 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i28 to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5887
  %call.i.i29 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %12) #2, !dbg !5888
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i29, align 8, !dbg !5889
  store %"class.std::__1::__thread_struct"* %13, %"class.std::__1::__thread_struct"** %__t.i, align 8, !dbg !5809
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0, !dbg !5890
  store %"class.std::__1::__compressed_pair.9"* %__ptr_2.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i4.i, align 8
  %14 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !5891
  %call.i6.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %14) #2, !dbg !5892
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i, align 8, !dbg !5893
  %15 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i, align 8, !dbg !5894
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %call, %"class.std::__1::__thread_struct"* %15)
          to label %invoke.cont5 unwind label %lpad, !dbg !5895

invoke.cont5:                                     ; preds = %invoke.cont1
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i31, align 8
  %this1.i32 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i31, align 8
  %__ptr_.i33 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i32, i32 0, i32 0, !dbg !5896
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i33, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i30, align 8
  %this1.i.i34 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i30, align 8
  %16 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i34 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5897
  %call.i.i35 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %16) #2, !dbg !5898
  %17 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i35, align 8, !dbg !5899
  br label %invoke.cont6, !dbg !5900

invoke.cont6:                                     ; preds = %invoke.cont5
  store %"class.std::__1::tuple"* %17, %"class.std::__1::tuple"** %__t.addr.i38, align 8
  call void @llvm.dbg.declare(metadata !212, metadata !5901, metadata !3626), !dbg !5902
  %18 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i38, align 8, !dbg !5903
  store %"class.std::__1::tuple"* %18, %"class.std::__1::tuple"** %__t.addr.i.i, align 8
  %19 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i.i, align 8, !dbg !5904
  %base_.i.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %19, i32 0, i32 0, !dbg !5905
  %20 = bitcast %"struct.std::__1::__tuple_impl"* %base_.i.i to i8*, !dbg !5904
  %add.ptr.i.i = getelementptr inbounds i8, i8* %20, i64 8, !dbg !5904
  %21 = bitcast i8* %add.ptr.i.i to %"class.std::__1::__tuple_leaf.15"*, !dbg !5904
  store %"class.std::__1::__tuple_leaf.15"* %21, %"class.std::__1::__tuple_leaf.15"** %this.addr.i.i.i37, align 8
  %this1.i.i.i39 = load %"class.std::__1::__tuple_leaf.15"*, %"class.std::__1::__tuple_leaf.15"** %this.addr.i.i.i37, align 8
  %value.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.15", %"class.std::__1::__tuple_leaf.15"* %this1.i.i.i39, i32 0, i32 0, !dbg !5906
  store void ()** %value.i.i.i, void ()*** %__t.addr.i2.i, align 8
  %22 = load void ()**, void ()*** %__t.addr.i2.i, align 8, !dbg !5907
  store void ()** %22, void ()*** %__f.addr.i.i, align 8
  %23 = load void ()**, void ()*** %__f.addr.i.i, align 8, !dbg !5908
  store void ()** %23, void ()*** %__t.addr.i.i.i36, align 8
  %24 = load void ()**, void ()*** %__t.addr.i.i.i36, align 8, !dbg !5909
  %25 = load void ()*, void ()** %24, align 8, !dbg !5908
  invoke void %25()
          to label %_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit unwind label %lpad, !dbg !5910

_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit: ; preds = %invoke.cont6
  br label %invoke.cont8, !dbg !5912

invoke.cont8:                                     ; preds = %_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i49, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i50, %"class.std::__1::unique_ptr.12"** %this.addr.i.i48, align 8
  %this1.i.i51 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i48, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i.i51, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i45, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %this1.i.i.i52 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i45, align 8
  %__ptr_.i.i.i53 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i52, i32 0, i32 0, !dbg !5913
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i.i.i53, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i44, align 8
  %this1.i.i.i.i54 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i44, align 8
  %26 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i54 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5914
  %call.i.i.i.i55 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %26) #2, !dbg !5915
  %27 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i55, align 8, !dbg !5916
  store %"class.std::__1::tuple"* %27, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8, !dbg !5741
  %28 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8, !dbg !5917
  %__ptr_2.i.i.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i52, i32 0, i32 0, !dbg !5918
  store %"class.std::__1::__compressed_pair.13"* %__ptr_2.i.i.i56, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i43, align 8
  %this1.i7.i.i.i57 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i43, align 8
  %29 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i7.i.i.i57 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5919
  %call.i8.i.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %29) #2, !dbg !5920
  store %"class.std::__1::tuple"* %28, %"class.std::__1::tuple"** %call.i8.i.i.i58, align 8, !dbg !5921
  %30 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8, !dbg !5922
  %tobool.i.i.i59 = icmp ne %"class.std::__1::tuple"* %30, null, !dbg !5922
  br i1 %tobool.i.i.i59, label %if.then.i.i.i65, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68, !dbg !5923

if.then.i.i.i65:                                  ; preds = %invoke.cont8
  %__ptr_4.i.i.i60 = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i52, i32 0, i32 0, !dbg !5924
  store %"class.std::__1::__compressed_pair.13"* %__ptr_4.i.i.i60, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i42, align 8
  %this1.i10.i.i.i61 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i42, align 8
  %31 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i10.i.i.i61 to %"struct.std::__1::__compressed_pair_elem.16"*, !dbg !5925
  %call.i11.i.i.i62 = call dereferenceable(1) %"struct.std::__1::default_delete.17"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %31) #2, !dbg !5926
  %32 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8, !dbg !5927
  store %"struct.std::__1::default_delete.17"* %call.i11.i.i.i62, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i40, align 8
  store %"class.std::__1::tuple"* %32, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %this1.i13.i.i.i63 = load %"struct.std::__1::default_delete.17"*, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i40, align 8
  %33 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8, !dbg !5928
  %isnull.i.i.i.i64 = icmp eq %"class.std::__1::tuple"* %33, null, !dbg !5929
  br i1 %isnull.i.i.i.i64, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67, label %delete.notnull.i.i.i.i66, !dbg !5929

delete.notnull.i.i.i.i66:                         ; preds = %if.then.i.i.i65
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %33) #2, !dbg !5930
  %34 = bitcast %"class.std::__1::tuple"* %33 to i8*, !dbg !5930
  call void @_ZdlPv(i8* %34) #14, !dbg !5931
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67, !dbg !5930

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67: ; preds = %delete.notnull.i.i.i.i66, %if.then.i.i.i65
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68, !dbg !5924

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68: ; preds = %invoke.cont8, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67
  ret i8* null, !dbg !5932

lpad:                                             ; preds = %invoke.cont6, %invoke.cont1, %entry
  %35 = landingpad { i8*, i32 }
          cleanup, !dbg !5933
  %36 = extractvalue { i8*, i32 } %35, 0, !dbg !5933
  store i8* %36, i8** %exn.slot, align 8, !dbg !5933
  %37 = extractvalue { i8*, i32 } %35, 1, !dbg !5933
  store i32 %37, i32* %ehselector.slot, align 4, !dbg !5933
  store %"class.std::__1::unique_ptr.12"* %__p, %"class.std::__1::unique_ptr.12"** %this.addr.i19, align 8
  %this1.i20 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i19, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i20, %"class.std::__1::unique_ptr.12"** %this.addr.i.i18, align 8
  %this1.i.i21 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i18, align 8
  store %"class.std::__1::unique_ptr.12"* %this1.i.i21, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i17, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %this1.i.i.i22 = load %"class.std::__1::unique_ptr.12"*, %"class.std::__1::unique_ptr.12"** %this.addr.i.i.i17, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i22, i32 0, i32 0, !dbg !5934
  store %"class.std::__1::__compressed_pair.13"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i16, align 8
  %this1.i.i.i.i23 = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i.i.i.i16, align 8
  %38 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i.i.i.i23 to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5935
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %38) #2, !dbg !5936
  %39 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i, align 8, !dbg !5937
  store %"class.std::__1::tuple"* %39, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8, !dbg !5824
  %40 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8, !dbg !5938
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i22, i32 0, i32 0, !dbg !5939
  store %"class.std::__1::__compressed_pair.13"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i6.i.i.i, align 8
  %41 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.14"*, !dbg !5940
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %41) #2, !dbg !5941
  store %"class.std::__1::tuple"* %40, %"class.std::__1::tuple"** %call.i8.i.i.i, align 8, !dbg !5942
  %42 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8, !dbg !5943
  %tobool.i.i.i = icmp ne %"class.std::__1::tuple"* %42, null, !dbg !5943
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !5944

if.then.i.i.i:                                    ; preds = %lpad
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.12", %"class.std::__1::unique_ptr.12"* %this1.i.i.i22, i32 0, i32 0, !dbg !5945
  store %"class.std::__1::__compressed_pair.13"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.13"*, %"class.std::__1::__compressed_pair.13"** %this.addr.i9.i.i.i, align 8
  %43 = bitcast %"class.std::__1::__compressed_pair.13"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.16"*, !dbg !5946
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete.17"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %43) #2, !dbg !5947
  %44 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8, !dbg !5948
  store %"struct.std::__1::default_delete.17"* %call.i11.i.i.i, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::tuple"* %44, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete.17"*, %"struct.std::__1::default_delete.17"** %this.addr.i12.i.i.i, align 8
  %45 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8, !dbg !5949
  %isnull.i.i.i.i = icmp eq %"class.std::__1::tuple"* %45, null, !dbg !5950
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i, !dbg !5950

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %45) #2, !dbg !5951
  %46 = bitcast %"class.std::__1::tuple"* %45 to i8*, !dbg !5951
  call void @_ZdlPv(i8* %46) #14, !dbg !5952
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !5951

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !5945

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %eh.resume, !dbg !5933

eh.resume:                                        ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !5953
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !5953
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !5953
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !5953
  resume { i8*, i32 } %lpad.val9, !dbg !5953
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) #11

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.10"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #7 align 2 !dbg !5954 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i, metadata !5466, metadata !3626), !dbg !5960
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.10"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.10"* %this, %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, metadata !5962, metadata !3626), !dbg !5964
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__u.addr, metadata !5965, metadata !3626), !dbg !5966
  %this1 = load %"struct.std::__1::__compressed_pair_elem.10"*, %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.10", %"struct.std::__1::__compressed_pair_elem.10"* %this1, i32 0, i32 0, !dbg !5967
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8, !dbg !5968
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8, !dbg !5969
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8, !dbg !5970
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8, !dbg !5967
  ret void, !dbg !5971
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %this) #7 align 2 !dbg !5972 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.10"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.10"* %this, %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, metadata !5973, metadata !3626), !dbg !5974
  %this1 = load %"struct.std::__1::__compressed_pair_elem.10"*, %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.10", %"struct.std::__1::__compressed_pair_elem.10"* %this1, i32 0, i32 0, !dbg !5975
  ret %"class.std::__1::__thread_struct"** %__value_, !dbg !5976
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.11"* %this) #7 align 2 !dbg !5977 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.11"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.11"* %this, %"struct.std::__1::__compressed_pair_elem.11"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.11"** %this.addr, metadata !5978, metadata !3626), !dbg !5980
  %this1 = load %"struct.std::__1::__compressed_pair_elem.11"*, %"struct.std::__1::__compressed_pair_elem.11"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.11"* %this1 to %"struct.std::__1::default_delete"*, !dbg !5981
  ret %"struct.std::__1::default_delete"* %0, !dbg !5982
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.10"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #7 align 2 !dbg !5983 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i, metadata !5299, metadata !3626), !dbg !5989
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.10"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.10"* %this, %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, metadata !5991, metadata !3626), !dbg !5992
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__u.addr, metadata !5993, metadata !3626), !dbg !5994
  %this1 = load %"struct.std::__1::__compressed_pair_elem.10"*, %"struct.std::__1::__compressed_pair_elem.10"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.10", %"struct.std::__1::__compressed_pair_elem.10"* %this1, i32 0, i32 0, !dbg !5995
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8, !dbg !5996
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8, !dbg !5997
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8, !dbg !5998
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8, !dbg !5995
  ret void, !dbg !5999
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.11"* %this, %"struct.std::__1::default_delete"* dereferenceable(1) %__u) unnamed_addr #7 align 2 !dbg !6000 {
entry:
  %__t.addr.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t.addr.i, metadata !5244, metadata !3626), !dbg !6006
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.11"*, align 8
  %__u.addr = alloca %"struct.std::__1::default_delete"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.11"* %this, %"struct.std::__1::__compressed_pair_elem.11"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.11"** %this.addr, metadata !6008, metadata !3626), !dbg !6009
  store %"struct.std::__1::default_delete"* %__u, %"struct.std::__1::default_delete"** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__u.addr, metadata !6010, metadata !3626), !dbg !6011
  %this1 = load %"struct.std::__1::__compressed_pair_elem.11"*, %"struct.std::__1::__compressed_pair_elem.11"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.11"* %this1 to %"struct.std::__1::default_delete"*, !dbg !6012
  %1 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__u.addr, align 8, !dbg !6013
  store %"struct.std::__1::default_delete"* %1, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  %2 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i, align 8, !dbg !6014
  ret void, !dbg !6015
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.14"* %this, %"class.std::__1::tuple"** dereferenceable(8) %__u) unnamed_addr #7 align 2 !dbg !6016 {
entry:
  %__t.addr.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i, metadata !5180, metadata !3626), !dbg !6022
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.14"*, align 8
  %__u.addr = alloca %"class.std::__1::tuple"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.14"* %this, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, metadata !6024, metadata !3626), !dbg !6026
  store %"class.std::__1::tuple"** %__u, %"class.std::__1::tuple"*** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__u.addr, metadata !6027, metadata !3626), !dbg !6028
  %this1 = load %"struct.std::__1::__compressed_pair_elem.14"*, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.14", %"struct.std::__1::__compressed_pair_elem.14"* %this1, i32 0, i32 0, !dbg !6029
  %0 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__u.addr, align 8, !dbg !6030
  store %"class.std::__1::tuple"** %0, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i, align 8, !dbg !6031
  %2 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %1, align 8, !dbg !6032
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__value_, align 8, !dbg !6029
  ret void, !dbg !6033
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_struct"* %__p) #0 align 2 !dbg !6034 {
entry:
  %__key.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__key.addr.i, metadata !6067, metadata !3626), !dbg !6071
  %__p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr.i, metadata !6073, metadata !3626), !dbg !6074
  %this.addr = alloca %"class.std::__1::__thread_specific_ptr"*, align 8
  %__p.addr = alloca %"class.std::__1::__thread_struct"*, align 8
  store %"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_specific_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_specific_ptr"** %this.addr, metadata !6075, metadata !3626), !dbg !6077
  store %"class.std::__1::__thread_struct"* %__p, %"class.std::__1::__thread_struct"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr, metadata !6078, metadata !3626), !dbg !6079
  %this1 = load %"class.std::__1::__thread_specific_ptr"*, %"class.std::__1::__thread_specific_ptr"** %this.addr, align 8
  %__key_ = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %this1, i32 0, i32 0, !dbg !6080
  %0 = load i64, i64* %__key_, align 8, !dbg !6080
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr, align 8, !dbg !6081
  %2 = bitcast %"class.std::__1::__thread_struct"* %1 to i8*, !dbg !6081
  store i64 %0, i64* %__key.addr.i, align 8
  store i8* %2, i8** %__p.addr.i, align 8
  %3 = load i64, i64* %__key.addr.i, align 8, !dbg !6082
  %4 = load i8*, i8** %__p.addr.i, align 8, !dbg !6083
  %call.i = call i32 @pthread_setspecific(i64 %3, i8* %4), !dbg !6084
  ret void, !dbg !6085
}

declare i32 @pthread_setspecific(i64, i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %this) #7 align 2 !dbg !6086 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.14"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.14"* %this, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, metadata !6087, metadata !3626), !dbg !6089
  %this1 = load %"struct.std::__1::__compressed_pair_elem.14"*, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.14", %"struct.std::__1::__compressed_pair_elem.14"* %this1, i32 0, i32 0, !dbg !6090
  ret %"class.std::__1::tuple"** %__value_, !dbg !6091
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %this) #7 align 2 !dbg !6092 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.14"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.14"* %this, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, metadata !6093, metadata !3626), !dbg !6094
  %this1 = load %"struct.std::__1::__compressed_pair_elem.14"*, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.14", %"struct.std::__1::__compressed_pair_elem.14"* %this1, i32 0, i32 0, !dbg !6095
  ret %"class.std::__1::tuple"** %__value_, !dbg !6096
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete.17"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %this) #7 align 2 !dbg !6097 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.16"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.16"* %this, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, metadata !6098, metadata !3626), !dbg !6100
  %this1 = load %"struct.std::__1::__compressed_pair_elem.16"*, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.16"* %this1 to %"struct.std::__1::default_delete.17"*, !dbg !6101
  ret %"struct.std::__1::default_delete.17"* %0, !dbg !6102
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %this) unnamed_addr #7 align 2 !dbg !6103 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr, metadata !6107, metadata !3626), !dbg !6108
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this1) #2, !dbg !6109
  ret void, !dbg !6109
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this) unnamed_addr #7 align 2 !dbg !6110 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr, metadata !6111, metadata !3626), !dbg !6112
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  %base_ = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %this1, i32 0, i32 0, !dbg !6113
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %base_) #2, !dbg !6113
  ret void, !dbg !6115
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #7 align 2 !dbg !6116 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr, metadata !6118, metadata !3626), !dbg !6119
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this1) #2, !dbg !6120
  ret void, !dbg !6120
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #7 align 2 !dbg !6121 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr, metadata !6122, metadata !3626), !dbg !6123
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__tuple_impl"* %this1 to %"class.std::__1::__tuple_leaf"*, !dbg !6124
  call void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %0) #2, !dbg !6124
  ret void, !dbg !6126
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %this) unnamed_addr #7 align 2 !dbg !6127 {
entry:
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, metadata !4904, metadata !3626), !dbg !6129
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, metadata !4919, metadata !3626), !dbg !6135
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i, metadata !4921, metadata !3626), !dbg !6136
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i, metadata !4926, metadata !3626), !dbg !6138
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.9"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i, metadata !4926, metadata !3626), !dbg !6140
  %this.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i, metadata !4932, metadata !3626), !dbg !6142
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, metadata !4935, metadata !3626), !dbg !6143
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__tmp.i.i.i, metadata !4937, metadata !3626), !dbg !6144
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i, metadata !4939, metadata !3626), !dbg !6145
  %this.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i, metadata !4941, metadata !3626), !dbg !6146
  %this.addr = alloca %"class.std::__1::__tuple_leaf"*, align 8
  store %"class.std::__1::__tuple_leaf"* %this, %"class.std::__1::__tuple_leaf"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf"** %this.addr, metadata !6147, metadata !3626), !dbg !6148
  %this1 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr, align 8
  %value = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1, i32 0, i32 0, !dbg !6149
  store %"class.std::__1::unique_ptr"* %value, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0, !dbg !6150
  store %"class.std::__1::__compressed_pair.9"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i.i.i.i, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !6151
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %0) #2, !dbg !6152
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8, !dbg !6153
  store %"class.std::__1::__thread_struct"* %1, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !6144
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8, !dbg !6154
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0, !dbg !6155
  store %"class.std::__1::__compressed_pair.9"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i6.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.10"*, !dbg !6156
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.10"* %3) #2, !dbg !6157
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8, !dbg !6158
  %4 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !6159
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %4, null, !dbg !6159
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !6160

if.then.i.i.i:                                    ; preds = %entry
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0, !dbg !6161
  store %"class.std::__1::__compressed_pair.9"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.9"*, %"class.std::__1::__compressed_pair.9"** %this.addr.i9.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair.9"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.11"*, !dbg !6162
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.11"* %5) #2, !dbg !6163
  %6 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !6164
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %6, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8, !dbg !6165
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !6166
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i, !dbg !6166

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %7) #2, !dbg !6167
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !6167
  call void @_ZdlPv(i8* %8) #14, !dbg !6168
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !6167

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !6161

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %entry, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  ret void, !dbg !6169
}

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: noinline ssp uwtable
define internal void @_GLOBAL__sub_I_example.cpp() #0 section "__TEXT,__StaticInit,regular,pure_instructions" !dbg !6170 {
entry:
  call void @__cxx_global_var_init(), !dbg !6172
  ret void
}

attributes #0 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3588, !3589, !3590}
!llvm.ident = !{!3591}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "interval", scope: !2, file: !3, line: 6, type: !3587, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1255, globals: !2675, imports: !2688)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!4 = !{!5, !14, !21, !1247, !1252}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !7, file: !6, line: 133, size: 32, elements: !10, identifier: "_ZTSNSt3__118float_denorm_styleE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/limits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!9 = !DINamespace(name: "std", scope: null, file: !8, line: 437)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "denorm_indeterminate", value: -1)
!12 = !DIEnumerator(name: "denorm_absent", value: 0)
!13 = !DIEnumerator(name: "denorm_present", value: 1)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_round_style", scope: !7, file: !6, line: 124, size: 32, elements: !15, identifier: "_ZTSNSt3__117float_round_styleE")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "round_indeterminate", value: -1)
!17 = !DIEnumerator(name: "round_toward_zero", value: 0)
!18 = !DIEnumerator(name: "round_to_nearest", value: 1)
!19 = !DIEnumerator(name: "round_toward_infinity", value: 2)
!20 = !DIEnumerator(name: "round_toward_neg_infinity", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "event", scope: !23, file: !22, line: 308, size: 32, elements: !1243, identifier: "_ZTSNSt3__18ios_base5eventE")
!22 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ios", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !7, file: !22, line: 231, size: 1088, elements: !24, vtableHolder: !23, identifier: "_ZTSNSt3__18ios_baseE")
!24 = !{!25, !31, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !55, !56, !57, !58, !61, !62, !63, !64, !65, !66, !67, !72, !73, !74, !75, !77, !78, !85, !87, !93, !94, !97, !99, !100, !101, !103, !104, !105, !110, !114, !115, !118, !121, !124, !127, !128, !129, !1181, !1184, !1185, !1189, !1193, !1196, !1199, !1203, !1206, !1209, !1212, !1215, !1216, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1230, !1233, !1234, !1237, !1238, !1241, !1242}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ios_base", scope: !22, file: !22, baseType: !26, size: 64, flags: DIFlagArtificial)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "boolalpha", scope: !23, file: !22, line: 237, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !23, file: !22, line: 236, baseType: !34)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !23, file: !22, line: 238, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !23, file: !22, line: 239, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !23, file: !22, line: 240, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !23, file: !22, line: 241, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !23, file: !22, line: 242, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "oct", scope: !23, file: !22, line: 243, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !23, file: !22, line: 244, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "scientific", scope: !23, file: !22, line: 245, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "showbase", scope: !23, file: !22, line: 246, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "showpoint", scope: !23, file: !22, line: 247, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "showpos", scope: !23, file: !22, line: 248, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2048)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "skipws", scope: !23, file: !22, line: 249, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "unitbuf", scope: !23, file: !22, line: 250, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "uppercase", scope: !23, file: !22, line: 251, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "adjustfield", scope: !23, file: !22, line: 252, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 176)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "basefield", scope: !23, file: !22, line: 253, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 74)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "floatfield", scope: !23, file: !22, line: 254, baseType: !32, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 260)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "badbit", scope: !23, file: !22, line: 257, baseType: !53, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !23, file: !22, line: 256, baseType: !34)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "eofbit", scope: !23, file: !22, line: 258, baseType: !53, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "failbit", scope: !23, file: !22, line: 259, baseType: !53, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "goodbit", scope: !23, file: !22, line: 260, baseType: !53, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "app", scope: !23, file: !22, line: 263, baseType: !59, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "openmode", scope: !23, file: !22, line: 262, baseType: !34)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ate", scope: !23, file: !22, line: 264, baseType: !59, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !23, file: !22, line: 265, baseType: !59, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !23, file: !22, line: 266, baseType: !59, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !23, file: !22, line: 267, baseType: !59, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "trunc", scope: !23, file: !22, line: 268, baseType: !59, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__fmtflags_", scope: !23, file: !22, line: 362, baseType: !33, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__precision_", scope: !23, file: !22, line: 363, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !7, file: !22, line: 229, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !70, line: 51, baseType: !71)
!70 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__width_", scope: !23, file: !22, line: 364, baseType: !68, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__rdstate_", scope: !23, file: !22, line: 365, baseType: !54, size: 32, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__exceptions_", scope: !23, file: !22, line: 366, baseType: !54, size: 32, offset: 288)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__rdbuf_", scope: !23, file: !22, line: 367, baseType: !76, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !23, file: !22, line: 368, baseType: !76, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__fn_", scope: !23, file: !22, line: 369, baseType: !79, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_callback", scope: !23, file: !22, line: 309, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !21, !84, !30}
!84 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__index_", scope: !23, file: !22, line: 370, baseType: !86, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__event_size_", scope: !23, file: !22, line: 371, baseType: !88, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 30, baseType: !90)
!89 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !91, line: 92, baseType: !92)
!91 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__event_cap_", scope: !23, file: !22, line: 372, baseType: !88, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__xindex_", scope: !23, file: !22, line: 376, baseType: !95, flags: DIFlagStaticMember)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !96, line: 1084, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__16atomicIiEE")
!96 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_", scope: !23, file: !22, line: 380, baseType: !98, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_size_", scope: !23, file: !22, line: 381, baseType: !88, size: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_cap_", scope: !23, file: !22, line: 382, baseType: !88, size: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_", scope: !23, file: !22, line: 383, baseType: !102, size: 64, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_size_", scope: !23, file: !22, line: 384, baseType: !88, size: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_cap_", scope: !23, file: !22, line: 385, baseType: !88, size: 64, offset: 1024)
!105 = !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !23, file: !22, line: 284, type: !106, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!33, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!110 = !DISubprogram(name: "flags", linkageName: "_ZNSt3__18ios_base5flagsEj", scope: !23, file: !22, line: 285, type: !111, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!111 = !DISubroutineType(types: !112)
!112 = !{!33, !113, !33}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!114 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEj", scope: !23, file: !22, line: 286, type: !111, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!115 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEjj", scope: !23, file: !22, line: 287, type: !116, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!116 = !DISubroutineType(types: !117)
!117 = !{!33, !113, !33, !33}
!118 = !DISubprogram(name: "unsetf", linkageName: "_ZNSt3__18ios_base6unsetfEj", scope: !23, file: !22, line: 288, type: !119, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !113, !33}
!121 = !DISubprogram(name: "precision", linkageName: "_ZNKSt3__18ios_base9precisionEv", scope: !23, file: !22, line: 290, type: !122, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!68, !108}
!124 = !DISubprogram(name: "precision", linkageName: "_ZNSt3__18ios_base9precisionEl", scope: !23, file: !22, line: 291, type: !125, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!68, !113, !68}
!127 = !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !23, file: !22, line: 292, type: !122, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!128 = !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !23, file: !22, line: 293, type: !125, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!129 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__18ios_base5imbueERKNS_6localeE", scope: !23, file: !22, line: 296, type: !130, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !113, !155}
!132 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "locale", scope: !7, file: !133, line: 83, size: 64, elements: !134, identifier: "_ZTSNSt3__16localeE")
!133 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!134 = !{!135, !138, !139, !140, !141, !142, !143, !144, !145, !148, !152, !157, !163, !1059, !1062, !1065, !1068, !1069, !1072, !1076, !1079, !1080, !1083, !1086, !1130, !1134, !1176}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "none", scope: !132, file: !133, line: 93, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "category", scope: !132, file: !133, line: 90, baseType: !30)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "collate", scope: !132, file: !133, line: 94, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !132, file: !133, line: 95, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "monetary", scope: !132, file: !133, line: 96, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "numeric", scope: !132, file: !133, line: 97, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !132, file: !133, line: 98, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !132, file: !133, line: 99, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !132, file: !133, line: 100, baseType: !136, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__locale_", scope: !132, file: !133, line: 136, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_class_type, name: "__imp", scope: !132, file: !133, line: 135, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__16locale5__impE")
!148 = !DISubprogram(name: "locale", scope: !132, file: !133, line: 103, type: !149, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!152 = !DISubprogram(name: "locale", scope: !132, file: !133, line: 104, type: !153, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !151, !155}
!155 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!157 = !DISubprogram(name: "locale", scope: !132, file: !133, line: 105, type: !158, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !151, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DISubprogram(name: "locale", scope: !132, file: !133, line: 106, type: !164, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !151, !166}
!166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !7, file: !169, line: 194, baseType: !170)
!169 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iosfwd", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!170 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !7, file: !171, line: 4038, size: 192, elements: !172, templateParams: !1057, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE")
!171 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!172 = !{!173, !185, !442, !444, !448, !454, !459, !462, !466, !469, !472, !475, !478, !481, !484, !487, !490, !493, !681, !684, !710, !713, !714, !718, !722, !725, !728, !733, !736, !741, !746, !747, !748, !753, !758, !759, !760, !761, !762, !763, !764, !767, !768, !769, !770, !773, !776, !777, !778, !779, !782, !787, !792, !793, !794, !795, !798, !799, !800, !801, !802, !803, !806, !809, !810, !813, !814, !817, !818, !821, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !837, !840, !843, !846, !849, !852, !855, !858, !861, !864, !867, !870, !873, !876, !879, !882, !885, !888, !891, !894, !897, !900, !903, !906, !910, !913, !916, !919, !920, !923, !926, !929, !932, !935, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !966, !969, !972, !975, !978, !981, !984, !987, !988, !989, !993, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1006, !1009, !1017, !1018, !1019, !1020, !1021, !1022, !1025, !1028, !1031, !1032, !1035, !1038, !1039, !1040, !1043, !1046, !1049, !1052, !1053, !1054, !1055, !1056}
!173 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !170, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__basic_string_common<true>", scope: !7, file: !171, line: 583, size: 8, elements: !175, templateParams: !182, identifier: "_ZTSNSt3__121__basic_string_commonILb1EEE")
!175 = !{!176, !181}
!176 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv", scope: !174, file: !171, line: 561, type: !177, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!181 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_out_of_rangeEv", scope: !174, file: !171, line: 562, type: !177, isLocal: false, isDefinition: false, scopeLine: 562, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!182 = !{!183}
!183 = !DITemplateValueParameter(type: !184, value: i8 1)
!184 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__r_", scope: !170, file: !171, line: 748, baseType: !186, size: 192)
!186 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >", scope: !7, file: !187, line: 2144, size: 192, elements: !188, templateParams: !439, identifier: "_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE")
!187 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!188 = !{!189, !396, !420, !424, !429, !432, !435}
!189 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !186, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>", scope: !7, file: !187, line: 2076, size: 192, elements: !191, templateParams: !392, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE")
!191 = !{!192, !375, !379, !384}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !190, file: !187, line: 2105, baseType: !193, size: 192, flags: DIFlagPrivate)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__rep", scope: !170, file: !171, line: 738, size: 192, elements: !194, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE")
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !171, line: 740, baseType: !196, size: 192)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !171, line: 740, size: 192, elements: !197, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repUt_E")
!197 = !{!198, !354, !368}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__l", scope: !196, file: !171, line: 742, baseType: !199, size: 192)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__long", scope: !170, file: !171, line: 699, size: 192, elements: !200, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE")
!200 = !{!201, !351, !352}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__cap_", scope: !199, file: !171, line: 701, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !170, file: !171, line: 643, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !204, file: !187, line: 1517, baseType: !346)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<char> >", scope: !7, file: !187, line: 1506, size: 8, elements: !205, templateParams: !345, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIcEEEE")
!205 = !{!206, !263, !290, !293, !298, !301, !318, !333, !336, !339, !342}
!206 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !204, file: !187, line: 1540, type: !207, isLocal: false, isDefinition: false, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !261, !203}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !204, file: !187, line: 1511, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !211, file: !187, line: 1031, baseType: !257)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char> >", scope: !7, file: !187, line: 1029, size: 8, elements: !212, templateParams: !213, identifier: "_ZTSNSt3__114__pointer_typeIcNS_9allocatorIcEEEE")
!212 = !{}
!213 = !{!214, !215}
!214 = !DITemplateTypeParameter(name: "_Tp", type: !162)
!215 = !DITemplateTypeParameter(name: "_Dp", type: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !7, file: !187, line: 1759, size: 8, elements: !217, templateParams: !256, identifier: "_ZTSNSt3__19allocatorIcEE")
!217 = !{!218, !222, !231, !237, !247, !250, !253}
!218 = !DISubprogram(name: "allocator", scope: !216, file: !187, line: 1775, type: !219, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!222 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERc", scope: !216, file: !187, line: 1777, type: !223, isLocal: false, isDefinition: false, scopeLine: 1777, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !227, !229}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !216, file: !187, line: 1764, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !216, file: !187, line: 1766, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !162, size: 64)
!231 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERKc", scope: !216, file: !187, line: 1779, type: !232, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !227, !235}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !216, file: !187, line: 1765, baseType: !160)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !216, file: !187, line: 1767, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !161, size: 64)
!237 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !216, file: !187, line: 1781, type: !238, isLocal: false, isDefinition: false, scopeLine: 1781, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!225, !221, !240, !241}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !187, line: 1762, baseType: !88)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !242, file: !187, line: 702, baseType: !245)
!242 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<void>", scope: !7, file: !187, line: 698, size: 8, elements: !212, templateParams: !243, identifier: "_ZTSNSt3__19allocatorIvEE")
!243 = !{!244}
!244 = !DITemplateTypeParameter(name: "_Tp", type: null)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!247 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !216, file: !187, line: 1788, type: !248, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !221, !225, !240}
!250 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIcE8max_sizeEv", scope: !216, file: !187, line: 1790, type: !251, isLocal: false, isDefinition: false, scopeLine: 1790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!240, !227}
!253 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIcE7destroyEPc", scope: !216, file: !187, line: 1853, type: !254, isLocal: false, isDefinition: false, scopeLine: 1853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !221, !225}
!256 = !{!214}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !258, file: !187, line: 1017, baseType: !225)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char>, true>", scope: !259, file: !187, line: 1015, size: 8, elements: !212, templateParams: !260, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeIcNS_9allocatorIcEELb1EEE")
!259 = !DINamespace(name: "__pointer_type_imp", scope: !7, file: !187, line: 1011)
!260 = !{!214, !215, !183}
!261 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !204, file: !187, line: 1508, baseType: !216)
!263 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKv", scope: !204, file: !187, line: 1543, type: !264, isLocal: false, isDefinition: false, scopeLine: 1543, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!209, !261, !203, !266}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !204, file: !187, line: 1514, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !268, file: !187, line: 1109, baseType: !273)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_void_pointer<char *, std::__1::allocator<char>, false>", scope: !7, file: !187, line: 1106, size: 8, elements: !212, templateParams: !269, identifier: "_ZTSNSt3__120__const_void_pointerIPcNS_9allocatorIcEELb0EEE")
!269 = !{!270, !271, !272}
!270 = !DITemplateTypeParameter(name: "_Ptr", type: !226)
!271 = !DITemplateTypeParameter(name: "_Alloc", type: !216)
!272 = !DITemplateValueParameter(type: !184, value: i8 0)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !274, file: !187, line: 974, baseType: !245)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !7, file: !187, line: 967, size: 8, elements: !275, templateParams: !289, identifier: "_ZTSNSt3__114pointer_traitsIPcEE")
!275 = !{!276}
!276 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPcE10pointer_toERc", scope: !274, file: !187, line: 983, type: !277, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: false)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !274, file: !187, line: 969, baseType: !226)
!280 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !283, file: !282, line: 414, baseType: !162)
!282 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<char *>::__nat, char>", scope: !7, file: !282, line: 414, size: 8, elements: !212, templateParams: !284, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPcE5__natEcEE")
!284 = !{!285, !286, !288}
!285 = !DITemplateValueParameter(name: "_Bp", type: !184, value: i8 0)
!286 = !DITemplateTypeParameter(name: "_If", type: !287)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !274, file: !187, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPcE5__natE")
!288 = !DITemplateTypeParameter(name: "_Then", type: !162)
!289 = !{!270}
!290 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !204, file: !187, line: 1548, type: !291, isLocal: false, isDefinition: false, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !261, !209, !203}
!293 = !DISubprogram(name: "max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_", scope: !204, file: !187, line: 1592, type: !294, isLocal: false, isDefinition: false, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!203, !296}
!296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!298 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionERKS2_", scope: !204, file: !187, line: 1597, type: !299, isLocal: false, isDefinition: false, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DISubroutineType(types: !300)
!300 = !{!262, !296}
!301 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb1EEE", scope: !204, file: !187, line: 1697, type: !302, isLocal: false, isDefinition: false, scopeLine: 1697, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!302 = !DISubroutineType(types: !303)
!303 = !{!209, !261, !203, !266, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !7, file: !282, line: 528, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !7, file: !282, line: 504, size: 8, elements: !306, templateParams: !315, identifier: "_ZTSNSt3__117integral_constantIbLb1EEE")
!306 = !{!307, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !282, line: 506, baseType: !308, flags: DIFlagStaticMember, extraData: i1 true)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!309 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb1EEcvbEv", scope: !305, file: !282, line: 510, type: !310, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !305, file: !282, line: 507, baseType: !184)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!315 = !{!316, !317}
!316 = !DITemplateTypeParameter(name: "_Tp", type: !184)
!317 = !DITemplateValueParameter(name: "__v", type: !184, value: i8 1)
!318 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb0EEE", scope: !204, file: !187, line: 1701, type: !319, isLocal: false, isDefinition: false, scopeLine: 1701, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!319 = !DISubroutineType(types: !320)
!320 = !{!209, !261, !203, !266, !321}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !7, file: !282, line: 529, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !7, file: !282, line: 504, size: 8, elements: !323, templateParams: !331, identifier: "_ZTSNSt3__117integral_constantIbLb0EEE")
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !282, line: 506, baseType: !308, flags: DIFlagStaticMember, extraData: i1 false)
!325 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb0EEcvbEv", scope: !322, file: !282, line: 510, type: !326, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !322, file: !282, line: 507, baseType: !184)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!331 = !{!316, !332}
!332 = !DITemplateValueParameter(name: "__v", type: !184, value: i8 0)
!333 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_", scope: !204, file: !187, line: 1730, type: !334, isLocal: false, isDefinition: false, scopeLine: 1730, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{!203, !304, !296}
!336 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb0EEERKS2_", scope: !204, file: !187, line: 1733, type: !337, isLocal: false, isDefinition: false, scopeLine: 1733, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{!203, !321, !296}
!339 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb1EEERKS2_", scope: !204, file: !187, line: 1738, type: !340, isLocal: false, isDefinition: false, scopeLine: 1738, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!340 = !DISubroutineType(types: !341)
!341 = !{!262, !304, !296}
!342 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS2_", scope: !204, file: !187, line: 1742, type: !343, isLocal: false, isDefinition: false, scopeLine: 1742, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{!262, !321, !296}
!345 = !{!271}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !347, file: !187, line: 1151, baseType: !350)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<char>, long, true>", scope: !7, file: !187, line: 1149, size: 8, elements: !212, templateParams: !348, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIcEElLb1EEE")
!348 = !{!271, !349, !183}
!349 = !DITemplateTypeParameter(name: "_DiffType", type: !71)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !216, file: !187, line: 1762, baseType: !88)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !199, file: !171, line: 702, baseType: !202, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !199, file: !171, line: 703, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !170, file: !171, line: 647, baseType: !209)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !196, file: !171, line: 743, baseType: !355, size: 192)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__short", scope: !170, file: !171, line: 717, size: 192, elements: !356, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortE")
!356 = !{!357, !364}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !171, line: 719, baseType: !358, size: 8)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !171, line: 719, size: 8, elements: !359, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortUt_E")
!359 = !{!360, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !358, file: !171, line: 721, baseType: !361, size: 8)
!361 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__lx", scope: !358, file: !171, line: 722, baseType: !363, size: 8)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !170, file: !171, line: 640, baseType: !162)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !355, file: !171, line: 724, baseType: !365, size: 184, offset: 8)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 184, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 23)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !196, file: !171, line: 744, baseType: !369, size: 192)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__raw", scope: !170, file: !171, line: 733, size: 192, elements: !370, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__rawE")
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__words", scope: !369, file: !171, line: 735, baseType: !372, size: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 192, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 3)
!375 = !DISubprogram(name: "__compressed_pair_elem", scope: !190, file: !187, line: 2082, type: !376, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!379 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !190, file: !187, line: 2101, type: !380, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !378}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !190, file: !187, line: 2078, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !193, size: 64)
!384 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !190, file: !187, line: 2102, type: !385, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !390}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !190, file: !187, line: 2079, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!392 = !{!393, !394, !395}
!393 = !DITemplateTypeParameter(name: "_Tp", type: !193)
!394 = !DITemplateValueParameter(name: "_Idx", type: !30, value: i32 0)
!395 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !184, value: i8 0)
!396 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !186, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<char>, 1, true>", scope: !7, file: !187, line: 2109, size: 8, elements: !398, templateParams: !416, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEE")
!398 = !{!399, !400, !404, !409}
!399 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !397, baseType: !216, flags: DIFlagPrivate)
!400 = !DISubprogram(name: "__compressed_pair_elem", scope: !397, file: !187, line: 2116, type: !401, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!404 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !397, file: !187, line: 2136, type: !405, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !403}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !397, file: !187, line: 2111, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !216, size: 64)
!409 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !397, file: !187, line: 2137, type: !410, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: false)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !397, file: !187, line: 2112, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !228, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!416 = !{!417, !418, !419}
!417 = !DITemplateTypeParameter(name: "_Tp", type: !216)
!418 = !DITemplateValueParameter(name: "_Idx", type: !30, value: i32 1)
!419 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !184, value: i8 1)
!420 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !186, file: !187, line: 2212, type: !421, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!421 = !DISubroutineType(types: !422)
!422 = !{!382, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!424 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !186, file: !187, line: 2217, type: !425, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!425 = !DISubroutineType(types: !426)
!426 = !{!387, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!429 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !186, file: !187, line: 2222, type: !430, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!407, !423}
!432 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !186, file: !187, line: 2227, type: !433, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!433 = !DISubroutineType(types: !434)
!434 = !{!412, !427}
!435 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E4swapERS8_", scope: !186, file: !187, line: 2232, type: !436, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !423, !438}
!438 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !186, size: 64)
!439 = !{!440, !441}
!440 = !DITemplateTypeParameter(name: "_T1", type: !193)
!441 = !DITemplateTypeParameter(name: "_T2", type: !216)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !170, file: !171, line: 751, baseType: !443, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!444 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 753, type: !445, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!448 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 756, type: !449, isLocal: false, isDefinition: false, scopeLine: 756, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !447, !451}
!451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !170, file: !171, line: 641, baseType: !216)
!454 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 763, type: !455, isLocal: false, isDefinition: false, scopeLine: 763, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !447, !457}
!457 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!459 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 764, type: !460, isLocal: false, isDefinition: false, scopeLine: 764, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !447, !457, !451}
!462 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 768, type: !463, isLocal: false, isDefinition: false, scopeLine: 768, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !447, !465}
!465 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !170, size: 64)
!466 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 776, type: !467, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !447, !465, !451}
!469 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 778, type: !470, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !447, !160}
!472 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 780, type: !473, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !447, !160, !413}
!475 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 782, type: !476, isLocal: false, isDefinition: false, scopeLine: 782, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !447, !160, !202}
!478 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 784, type: !479, isLocal: false, isDefinition: false, scopeLine: 784, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !447, !160, !202, !413}
!481 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 786, type: !482, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !447, !202, !162}
!484 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 788, type: !485, isLocal: false, isDefinition: false, scopeLine: 788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !447, !202, !162, !413}
!487 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 789, type: !488, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !447, !457, !202, !202, !413}
!490 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 792, type: !491, isLocal: false, isDefinition: false, scopeLine: 792, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !447, !457, !202, !413}
!493 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 800, type: !494, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !447, !496}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__self_view", scope: !170, file: !171, line: 638, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::__1::char_traits<char> >", scope: !7, file: !498, line: 184, size: 128, elements: !499, templateParams: !629, identifier: "_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE")
!498 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string_view", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!499 = !{!500, !503, !507, !508, !512, !517, !521, !524, !527, !533, !534, !535, !536, !542, !543, !544, !545, !548, !549, !550, !553, !557, !558, !561, !562, !565, !568, !569, !572, !576, !579, !582, !585, !588, !591, !594, !597, !600, !603, !606, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !497, file: !498, line: 199, baseType: !501, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !498, line: 197, baseType: !88)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !497, file: !498, line: 566, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !497, file: !498, line: 188, baseType: !162)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !497, file: !498, line: 567, baseType: !502, size: 64, offset: 64)
!508 = !DISubprogram(name: "basic_string_view", scope: !497, file: !498, line: 207, type: !509, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!512 = !DISubprogram(name: "basic_string_view", scope: !497, file: !498, line: 210, type: !513, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !511, !515}
!515 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!517 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEaSERKS3_", scope: !497, file: !498, line: 213, type: !518, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !511, !515}
!520 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !497, size: 64)
!521 = !DISubprogram(name: "basic_string_view", scope: !497, file: !498, line: 216, type: !522, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !511, !160, !502}
!524 = !DISubprogram(name: "basic_string_view", scope: !497, file: !498, line: 225, type: !525, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !511, !160}
!527 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginEv", scope: !497, file: !498, line: 230, type: !528, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !532}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !497, file: !498, line: 193, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !497, file: !498, line: 190, baseType: !160)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!533 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endEv", scope: !497, file: !498, line: 233, type: !528, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!534 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginEv", scope: !497, file: !498, line: 236, type: !528, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!535 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendEv", scope: !497, file: !498, line: 239, type: !528, isLocal: false, isDefinition: false, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!536 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6rbeginEv", scope: !497, file: !498, line: 242, type: !537, isLocal: false, isDefinition: false, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!539, !532}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !497, file: !498, line: 195, baseType: !540)
!540 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !7, file: !541, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorIPKcEE")
!541 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iterator", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!542 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4rendEv", scope: !497, file: !498, line: 245, type: !537, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!543 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7crbeginEv", scope: !497, file: !498, line: 248, type: !537, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!544 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5crendEv", scope: !497, file: !498, line: 251, type: !537, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!545 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv", scope: !497, file: !498, line: 255, type: !546, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!546 = !DISubroutineType(types: !547)
!547 = !{!502, !532}
!548 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6lengthEv", scope: !497, file: !498, line: 258, type: !546, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!549 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE8max_sizeEv", scope: !497, file: !498, line: 261, type: !546, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!550 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5emptyEv", scope: !497, file: !498, line: 264, type: !551, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!551 = !DISubroutineType(types: !552)
!552 = !{!184, !532}
!553 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEEixEm", scope: !497, file: !498, line: 268, type: !554, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !532, !502}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !497, file: !498, line: 192, baseType: !236)
!557 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE2atEm", scope: !497, file: !498, line: 271, type: !554, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!558 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5frontEv", scope: !497, file: !498, line: 279, type: !559, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!559 = !DISubroutineType(types: !560)
!560 = !{!556, !532}
!561 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4backEv", scope: !497, file: !498, line: 285, type: !559, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!562 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv", scope: !497, file: !498, line: 291, type: !563, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!563 = !DISubroutineType(types: !564)
!564 = !{!531, !532}
!565 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_prefixEm", scope: !497, file: !498, line: 295, type: !566, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !511, !502}
!568 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_suffixEm", scope: !497, file: !498, line: 303, type: !566, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!569 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE4swapERS3_", scope: !497, file: !498, line: 310, type: !570, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !511, !520}
!572 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4copyEPcmm", scope: !497, file: !498, line: 322, type: !573, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !532, !226, !502, !502}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !497, file: !498, line: 197, baseType: !88)
!576 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrEmm", scope: !497, file: !498, line: 332, type: !577, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!577 = !DISubroutineType(types: !578)
!578 = !{!497, !532, !502, !502}
!579 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_", scope: !497, file: !498, line: 339, type: !580, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!30, !532, !497}
!582 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_", scope: !497, file: !498, line: 349, type: !583, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!30, !532, !502, !502, !497}
!585 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_mm", scope: !497, file: !498, line: 355, type: !586, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!586 = !DISubroutineType(types: !587)
!587 = !{!30, !532, !502, !502, !497, !502, !502}
!588 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEPKc", scope: !497, file: !498, line: 362, type: !589, isLocal: false, isDefinition: false, scopeLine: 362, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!589 = !DISubroutineType(types: !590)
!590 = !{!30, !532, !160}
!591 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKc", scope: !497, file: !498, line: 368, type: !592, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!592 = !DISubroutineType(types: !593)
!593 = !{!30, !532, !502, !502, !160}
!594 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKcm", scope: !497, file: !498, line: 374, type: !595, isLocal: false, isDefinition: false, scopeLine: 374, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!595 = !DISubroutineType(types: !596)
!596 = !{!30, !532, !502, !502, !160, !502}
!597 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findES3_m", scope: !497, file: !498, line: 381, type: !598, isLocal: false, isDefinition: false, scopeLine: 381, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!598 = !DISubroutineType(types: !599)
!599 = !{!575, !532, !497, !502}
!600 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEcm", scope: !497, file: !498, line: 389, type: !601, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!601 = !DISubroutineType(types: !602)
!602 = !{!575, !532, !162, !502}
!603 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcmm", scope: !497, file: !498, line: 396, type: !604, isLocal: false, isDefinition: false, scopeLine: 396, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!604 = !DISubroutineType(types: !605)
!605 = !{!575, !532, !160, !502, !502}
!606 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcm", scope: !497, file: !498, line: 404, type: !607, isLocal: false, isDefinition: false, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!607 = !DISubroutineType(types: !608)
!608 = !{!575, !532, !160, !502}
!609 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindES3_m", scope: !497, file: !498, line: 413, type: !598, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!610 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEcm", scope: !497, file: !498, line: 421, type: !601, isLocal: false, isDefinition: false, scopeLine: 421, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!611 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcmm", scope: !497, file: !498, line: 428, type: !604, isLocal: false, isDefinition: false, scopeLine: 428, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!612 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcm", scope: !497, file: !498, line: 436, type: !607, isLocal: false, isDefinition: false, scopeLine: 436, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!613 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofES3_m", scope: !497, file: !498, line: 445, type: !598, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!614 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEcm", scope: !497, file: !498, line: 453, type: !601, isLocal: false, isDefinition: false, scopeLine: 453, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!615 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcmm", scope: !497, file: !498, line: 457, type: !604, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!616 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcm", scope: !497, file: !498, line: 465, type: !607, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!617 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofES3_m", scope: !497, file: !498, line: 474, type: !598, isLocal: false, isDefinition: false, scopeLine: 474, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!618 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEcm", scope: !497, file: !498, line: 482, type: !601, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!619 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcmm", scope: !497, file: !498, line: 486, type: !604, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!620 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcm", scope: !497, file: !498, line: 494, type: !607, isLocal: false, isDefinition: false, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!621 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofES3_m", scope: !497, file: !498, line: 503, type: !598, isLocal: false, isDefinition: false, scopeLine: 503, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!622 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEcm", scope: !497, file: !498, line: 511, type: !601, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!623 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcmm", scope: !497, file: !498, line: 518, type: !604, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!624 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcm", scope: !497, file: !498, line: 526, type: !607, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!625 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofES3_m", scope: !497, file: !498, line: 535, type: !598, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!626 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEcm", scope: !497, file: !498, line: 543, type: !601, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!627 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcmm", scope: !497, file: !498, line: 550, type: !604, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!628 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcm", scope: !497, file: !498, line: 558, type: !607, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!629 = !{!630, !631}
!630 = !DITemplateTypeParameter(name: "_CharT", type: !162)
!631 = !DITemplateTypeParameter(name: "_Traits", type: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !7, file: !633, line: 197, size: 8, elements: !634, templateParams: !680, identifier: "_ZTSNSt3__111char_traitsIcEE")
!633 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!634 = !{!635, !642, !645, !646, !650, !653, !656, !660, !661, !664, !668, !671, !674, !677}
!635 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !632, file: !633, line: 206, type: !636, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !638, !640}
!638 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !632, file: !633, line: 199, baseType: !162)
!640 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!642 = !DISubprogram(name: "eq", linkageName: "_ZNSt3__111char_traitsIcE2eqEcc", scope: !632, file: !633, line: 207, type: !643, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false)
!643 = !DISubroutineType(types: !644)
!644 = !{!184, !639, !639}
!645 = !DISubprogram(name: "lt", linkageName: "_ZNSt3__111char_traitsIcE2ltEcc", scope: !632, file: !633, line: 209, type: !643, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!646 = !DISubprogram(name: "compare", linkageName: "_ZNSt3__111char_traitsIcE7compareEPKcS3_m", scope: !632, file: !633, line: 213, type: !647, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!647 = !DISubroutineType(types: !648)
!648 = !{!30, !649, !649, !88}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!650 = !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !632, file: !633, line: 215, type: !651, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!651 = !DISubroutineType(types: !652)
!652 = !{!88, !649}
!653 = !DISubprogram(name: "find", linkageName: "_ZNSt3__111char_traitsIcE4findEPKcmRS2_", scope: !632, file: !633, line: 217, type: !654, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!654 = !DISubroutineType(types: !655)
!655 = !{!649, !649, !88, !640}
!656 = !DISubprogram(name: "move", linkageName: "_ZNSt3__111char_traitsIcE4moveEPcPKcm", scope: !632, file: !633, line: 218, type: !657, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !659, !649, !88}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!660 = !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !632, file: !633, line: 220, type: !657, isLocal: false, isDefinition: false, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !632, file: !633, line: 225, type: !662, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false)
!662 = !DISubroutineType(types: !663)
!663 = !{!659, !659, !88, !639}
!664 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt3__111char_traitsIcE7not_eofEi", scope: !632, file: !633, line: 228, type: !665, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !667}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !632, file: !633, line: 200, baseType: !30)
!668 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt3__111char_traitsIcE12to_char_typeEi", scope: !632, file: !633, line: 230, type: !669, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!639, !667}
!671 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt3__111char_traitsIcE11to_int_typeEc", scope: !632, file: !633, line: 232, type: !672, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false)
!672 = !DISubroutineType(types: !673)
!673 = !{!667, !639}
!674 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !632, file: !633, line: 234, type: !675, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false)
!675 = !DISubroutineType(types: !676)
!676 = !{!184, !667, !667}
!677 = !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !632, file: !633, line: 236, type: !678, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DISubroutineType(types: !679)
!679 = !{!667}
!680 = !{!630}
!681 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 802, type: !682, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !447, !496, !413}
!684 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 811, type: !685, isLocal: false, isDefinition: false, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !447, !687}
!687 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !9, file: !688, line: 59, size: 128, elements: !689, templateParams: !708, identifier: "_ZTSSt16initializer_listIcE")
!688 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/initializer_list", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!689 = !{!690, !691, !692, !696, !699, !704, !707}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !687, file: !688, line: 61, baseType: !160, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !687, file: !688, line: 62, baseType: !88, size: 64, offset: 64)
!692 = !DISubprogram(name: "initializer_list", scope: !687, file: !688, line: 66, type: !693, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !695, !160, !88}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!696 = !DISubprogram(name: "initializer_list", scope: !687, file: !688, line: 81, type: !697, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !695}
!699 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIcE4sizeEv", scope: !687, file: !688, line: 85, type: !700, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!700 = !DISubroutineType(types: !701)
!701 = !{!88, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!704 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIcE5beginEv", scope: !687, file: !688, line: 89, type: !705, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!705 = !DISubroutineType(types: !706)
!706 = !{!160, !702}
!707 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIcE3endEv", scope: !687, file: !688, line: 93, type: !705, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!708 = !{!709}
!709 = !DITemplateTypeParameter(name: "_Ep", type: !162)
!710 = !DISubprogram(name: "basic_string", scope: !170, file: !171, line: 813, type: !711, isLocal: false, isDefinition: false, scopeLine: 813, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !447, !687, !413}
!713 = !DISubprogram(name: "~basic_string", scope: !170, file: !171, line: 816, type: !445, isLocal: false, isDefinition: false, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!714 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv", scope: !170, file: !171, line: 819, type: !715, isLocal: false, isDefinition: false, scopeLine: 819, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{!496, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!718 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_", scope: !170, file: !171, line: 821, type: !719, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!721, !447, !457}
!721 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !170, size: 64)
!722 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEOS5_", scope: !170, file: !171, line: 830, type: !723, isLocal: false, isDefinition: false, scopeLine: 830, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!723 = !DISubroutineType(types: !724)
!724 = !{!721, !447, !465}
!725 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSESt16initializer_listIcE", scope: !170, file: !171, line: 833, type: !726, isLocal: false, isDefinition: false, scopeLine: 833, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!726 = !DISubroutineType(types: !727)
!727 = !{!721, !447, !687}
!728 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc", scope: !170, file: !171, line: 835, type: !729, isLocal: false, isDefinition: false, scopeLine: 835, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!729 = !DISubroutineType(types: !730)
!730 = !{!721, !447, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!733 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc", scope: !170, file: !171, line: 836, type: !734, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!721, !447, !363}
!736 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !170, file: !171, line: 853, type: !737, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!737 = !DISubroutineType(types: !738)
!738 = !{!739, !447}
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !170, file: !171, line: 659, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<char *>", scope: !7, file: !541, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPcEE")
!741 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !170, file: !171, line: 856, type: !742, isLocal: false, isDefinition: false, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!744, !717}
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !170, file: !171, line: 660, baseType: !745)
!745 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<const char *>", scope: !7, file: !541, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPKcEE")
!746 = !DISubprogram(name: "end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !170, file: !171, line: 859, type: !737, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!747 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !170, file: !171, line: 862, type: !742, isLocal: false, isDefinition: false, scopeLine: 862, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!748 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !170, file: !171, line: 866, type: !749, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{!751, !447}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !170, file: !171, line: 662, baseType: !752)
!752 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<char *> >", scope: !7, file: !541, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPcEEEE")
!753 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !170, file: !171, line: 869, type: !754, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!756, !717}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !170, file: !171, line: 663, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<const char *> >", scope: !7, file: !541, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKcEEEE")
!758 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !170, file: !171, line: 872, type: !749, isLocal: false, isDefinition: false, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!759 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !170, file: !171, line: 875, type: !754, isLocal: false, isDefinition: false, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!760 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6cbeginEv", scope: !170, file: !171, line: 879, type: !742, isLocal: false, isDefinition: false, scopeLine: 879, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!761 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4cendEv", scope: !170, file: !171, line: 882, type: !742, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!762 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7crbeginEv", scope: !170, file: !171, line: 885, type: !754, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!763 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5crendEv", scope: !170, file: !171, line: 888, type: !754, isLocal: false, isDefinition: false, scopeLine: 888, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!764 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !170, file: !171, line: 891, type: !765, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!202, !717}
!767 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv", scope: !170, file: !171, line: 893, type: !765, isLocal: false, isDefinition: false, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!768 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv", scope: !170, file: !171, line: 894, type: !765, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!769 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv", scope: !170, file: !171, line: 895, type: !765, isLocal: false, isDefinition: false, scopeLine: 895, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!770 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc", scope: !170, file: !171, line: 899, type: !771, isLocal: false, isDefinition: false, scopeLine: 899, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !447, !202, !363}
!773 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm", scope: !170, file: !171, line: 900, type: !774, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !447, !202}
!776 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm", scope: !170, file: !171, line: 902, type: !774, isLocal: false, isDefinition: false, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!777 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13shrink_to_fitEv", scope: !170, file: !171, line: 904, type: !445, isLocal: false, isDefinition: false, scopeLine: 904, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!778 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearEv", scope: !170, file: !171, line: 906, type: !445, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!779 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyEv", scope: !170, file: !171, line: 907, type: !780, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!780 = !DISubroutineType(types: !781)
!781 = !{!184, !717}
!782 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !170, file: !171, line: 909, type: !783, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{!785, !717, !202}
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !170, file: !171, line: 646, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !732, size: 64)
!787 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !170, file: !171, line: 910, type: !788, isLocal: false, isDefinition: false, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!788 = !DISubroutineType(types: !789)
!789 = !{!790, !447, !202}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !170, file: !171, line: 645, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !363, size: 64)
!792 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !170, file: !171, line: 912, type: !783, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!793 = !DISubprogram(name: "at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !170, file: !171, line: 913, type: !788, isLocal: false, isDefinition: false, scopeLine: 913, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!794 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLERKS5_", scope: !170, file: !171, line: 915, type: !719, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!795 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLENS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 916, type: !796, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{!721, !447, !496}
!798 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEPKc", scope: !170, file: !171, line: 917, type: !729, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!799 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc", scope: !170, file: !171, line: 918, type: !734, isLocal: false, isDefinition: false, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!800 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLESt16initializer_listIcE", scope: !170, file: !171, line: 920, type: !726, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!801 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_", scope: !170, file: !171, line: 924, type: !719, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!802 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendENS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 926, type: !796, isLocal: false, isDefinition: false, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!803 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm", scope: !170, file: !171, line: 927, type: !804, isLocal: false, isDefinition: false, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!804 = !DISubroutineType(types: !805)
!805 = !{!721, !447, !457, !202, !202}
!806 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm", scope: !170, file: !171, line: 936, type: !807, isLocal: false, isDefinition: false, scopeLine: 936, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!807 = !DISubroutineType(types: !808)
!808 = !{!721, !447, !731, !202}
!809 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc", scope: !170, file: !171, line: 937, type: !729, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!810 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc", scope: !170, file: !171, line: 938, type: !811, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!811 = !DISubroutineType(types: !812)
!812 = !{!721, !447, !202, !363}
!813 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendESt16initializer_listIcE", scope: !170, file: !171, line: 971, type: !726, isLocal: false, isDefinition: false, scopeLine: 971, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!814 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc", scope: !170, file: !171, line: 974, type: !815, isLocal: false, isDefinition: false, scopeLine: 974, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !447, !363}
!817 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backEv", scope: !170, file: !171, line: 976, type: !445, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!818 = !DISubprogram(name: "front", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !170, file: !171, line: 977, type: !819, isLocal: false, isDefinition: false, scopeLine: 977, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!819 = !DISubroutineType(types: !820)
!820 = !{!790, !447}
!821 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !170, file: !171, line: 978, type: !822, isLocal: false, isDefinition: false, scopeLine: 978, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!822 = !DISubroutineType(types: !823)
!823 = !{!785, !717}
!824 = !DISubprogram(name: "back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !170, file: !171, line: 979, type: !819, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!825 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !170, file: !171, line: 980, type: !822, isLocal: false, isDefinition: false, scopeLine: 980, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!826 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignENS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 983, type: !796, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!827 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_", scope: !170, file: !171, line: 985, type: !719, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!828 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEOS5_", scope: !170, file: !171, line: 988, type: !723, isLocal: false, isDefinition: false, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!829 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_mm", scope: !170, file: !171, line: 992, type: !804, isLocal: false, isDefinition: false, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!830 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm", scope: !170, file: !171, line: 1001, type: !807, isLocal: false, isDefinition: false, scopeLine: 1001, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!831 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc", scope: !170, file: !171, line: 1002, type: !729, isLocal: false, isDefinition: false, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!832 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEmc", scope: !170, file: !171, line: 1003, type: !811, isLocal: false, isDefinition: false, scopeLine: 1003, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!833 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignESt16initializer_listIcE", scope: !170, file: !171, line: 1024, type: !726, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!834 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_", scope: !170, file: !171, line: 1028, type: !835, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!835 = !DISubroutineType(types: !836)
!836 = !{!721, !447, !202, !457}
!837 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmNS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 1030, type: !838, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!838 = !DISubroutineType(types: !839)
!839 = !{!721, !447, !202, !496}
!840 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_mm", scope: !170, file: !171, line: 1039, type: !841, isLocal: false, isDefinition: false, scopeLine: 1039, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!841 = !DISubroutineType(types: !842)
!842 = !{!721, !447, !202, !457, !202, !202}
!843 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm", scope: !170, file: !171, line: 1040, type: !844, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!721, !447, !202, !731, !202}
!846 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc", scope: !170, file: !171, line: 1041, type: !847, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!847 = !DISubroutineType(types: !848)
!848 = !{!721, !447, !202, !731}
!849 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmmc", scope: !170, file: !171, line: 1042, type: !850, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!850 = !DISubroutineType(types: !851)
!851 = !{!721, !447, !202, !202, !363}
!852 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc", scope: !170, file: !171, line: 1043, type: !853, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!853 = !DISubroutineType(types: !854)
!854 = !{!739, !447, !744, !363}
!855 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEmc", scope: !170, file: !171, line: 1045, type: !856, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!856 = !DISubroutineType(types: !857)
!857 = !{!739, !447, !744, !202, !363}
!858 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEESt16initializer_listIcE", scope: !170, file: !171, line: 1066, type: !859, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!859 = !DISubroutineType(types: !860)
!860 = !{!739, !447, !744, !687}
!861 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm", scope: !170, file: !171, line: 1070, type: !862, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!862 = !DISubroutineType(types: !863)
!863 = !{!721, !447, !202, !202}
!864 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEE", scope: !170, file: !171, line: 1072, type: !865, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!865 = !DISubroutineType(types: !866)
!866 = !{!739, !447, !744}
!867 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEES9_", scope: !170, file: !171, line: 1074, type: !868, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!868 = !DISubroutineType(types: !869)
!869 = !{!739, !447, !744, !744}
!870 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_", scope: !170, file: !171, line: 1077, type: !871, isLocal: false, isDefinition: false, scopeLine: 1077, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!871 = !DISubroutineType(types: !872)
!872 = !{!721, !447, !202, !202, !457}
!873 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmNS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 1079, type: !874, isLocal: false, isDefinition: false, scopeLine: 1079, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!874 = !DISubroutineType(types: !875)
!875 = !{!721, !447, !202, !202, !496}
!876 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_mm", scope: !170, file: !171, line: 1080, type: !877, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!877 = !DISubroutineType(types: !878)
!878 = !{!721, !447, !202, !202, !457, !202, !202}
!879 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm", scope: !170, file: !171, line: 1089, type: !880, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!880 = !DISubroutineType(types: !881)
!881 = !{!721, !447, !202, !202, !731, !202}
!882 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKc", scope: !170, file: !171, line: 1090, type: !883, isLocal: false, isDefinition: false, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!883 = !DISubroutineType(types: !884)
!884 = !{!721, !447, !202, !202, !731}
!885 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmmc", scope: !170, file: !171, line: 1091, type: !886, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!886 = !DISubroutineType(types: !887)
!887 = !{!721, !447, !202, !202, !202, !363}
!888 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_RKS5_", scope: !170, file: !171, line: 1093, type: !889, isLocal: false, isDefinition: false, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!889 = !DISubroutineType(types: !890)
!890 = !{!721, !447, !744, !744, !457}
!891 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_NS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 1095, type: !892, isLocal: false, isDefinition: false, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!892 = !DISubroutineType(types: !893)
!893 = !{!721, !447, !744, !744, !496}
!894 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_m", scope: !170, file: !171, line: 1097, type: !895, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!895 = !DISubroutineType(types: !896)
!896 = !{!721, !447, !744, !744, !731, !202}
!897 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_", scope: !170, file: !171, line: 1099, type: !898, isLocal: false, isDefinition: false, scopeLine: 1099, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!898 = !DISubroutineType(types: !899)
!899 = !{!721, !447, !744, !744, !731}
!900 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_mc", scope: !170, file: !171, line: 1101, type: !901, isLocal: false, isDefinition: false, scopeLine: 1101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!901 = !DISubroutineType(types: !902)
!902 = !{!721, !447, !744, !744, !202, !363}
!903 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_St16initializer_listIcE", scope: !170, file: !171, line: 1112, type: !904, isLocal: false, isDefinition: false, scopeLine: 1112, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!721, !447, !744, !744, !687}
!906 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm", scope: !170, file: !171, line: 1116, type: !907, isLocal: false, isDefinition: false, scopeLine: 1116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!907 = !DISubroutineType(types: !908)
!908 = !{!202, !717, !909, !202, !202}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!910 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrEmm", scope: !170, file: !171, line: 1118, type: !911, isLocal: false, isDefinition: false, scopeLine: 1118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!911 = !DISubroutineType(types: !912)
!912 = !{!170, !717, !202, !202}
!913 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4swapERS5_", scope: !170, file: !171, line: 1121, type: !914, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !447, !721}
!916 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv", scope: !170, file: !171, line: 1130, type: !917, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!917 = !DISubroutineType(types: !918)
!918 = !{!731, !717}
!919 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !170, file: !171, line: 1132, type: !917, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!920 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv", scope: !170, file: !171, line: 1139, type: !921, isLocal: false, isDefinition: false, scopeLine: 1139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!921 = !DISubroutineType(types: !922)
!922 = !{!453, !717}
!923 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findERKS5_m", scope: !170, file: !171, line: 1142, type: !924, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!924 = !DISubroutineType(types: !925)
!925 = !{!202, !717, !457, !202}
!926 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findENS_17basic_string_viewIcS2_EEm", scope: !170, file: !171, line: 1144, type: !927, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!927 = !DISubroutineType(types: !928)
!928 = !{!202, !717, !496, !202}
!929 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcmm", scope: !170, file: !171, line: 1145, type: !930, isLocal: false, isDefinition: false, scopeLine: 1145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!930 = !DISubroutineType(types: !931)
!931 = !{!202, !717, !731, !202, !202}
!932 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcm", scope: !170, file: !171, line: 1147, type: !933, isLocal: false, isDefinition: false, scopeLine: 1147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!933 = !DISubroutineType(types: !934)
!934 = !{!202, !717, !731, !202}
!935 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm", scope: !170, file: !171, line: 1148, type: !936, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!936 = !DISubroutineType(types: !937)
!937 = !{!202, !717, !363, !202}
!938 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindERKS5_m", scope: !170, file: !171, line: 1151, type: !924, isLocal: false, isDefinition: false, scopeLine: 1151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!939 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindENS_17basic_string_viewIcS2_EEm", scope: !170, file: !171, line: 1153, type: !927, isLocal: false, isDefinition: false, scopeLine: 1153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!940 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcmm", scope: !170, file: !171, line: 1154, type: !930, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!941 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcm", scope: !170, file: !171, line: 1156, type: !933, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!942 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm", scope: !170, file: !171, line: 1157, type: !936, isLocal: false, isDefinition: false, scopeLine: 1157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!943 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofERKS5_m", scope: !170, file: !171, line: 1160, type: !924, isLocal: false, isDefinition: false, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!944 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofENS_17basic_string_viewIcS2_EEm", scope: !170, file: !171, line: 1162, type: !927, isLocal: false, isDefinition: false, scopeLine: 1162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!945 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcmm", scope: !170, file: !171, line: 1163, type: !930, isLocal: false, isDefinition: false, scopeLine: 1163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!946 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcm", scope: !170, file: !171, line: 1165, type: !933, isLocal: false, isDefinition: false, scopeLine: 1165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!947 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEcm", scope: !170, file: !171, line: 1167, type: !936, isLocal: false, isDefinition: false, scopeLine: 1167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!948 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofERKS5_m", scope: !170, file: !171, line: 1170, type: !924, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!949 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofENS_17basic_string_viewIcS2_EEm", scope: !170, file: !171, line: 1172, type: !927, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!950 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcmm", scope: !170, file: !171, line: 1173, type: !930, isLocal: false, isDefinition: false, scopeLine: 1173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!951 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcm", scope: !170, file: !171, line: 1175, type: !933, isLocal: false, isDefinition: false, scopeLine: 1175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!952 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEcm", scope: !170, file: !171, line: 1177, type: !936, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!953 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofERKS5_m", scope: !170, file: !171, line: 1180, type: !924, isLocal: false, isDefinition: false, scopeLine: 1180, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!954 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofENS_17basic_string_viewIcS2_EEm", scope: !170, file: !171, line: 1182, type: !927, isLocal: false, isDefinition: false, scopeLine: 1182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!955 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcmm", scope: !170, file: !171, line: 1183, type: !930, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!956 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcm", scope: !170, file: !171, line: 1185, type: !933, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!957 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEcm", scope: !170, file: !171, line: 1187, type: !936, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!958 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofERKS5_m", scope: !170, file: !171, line: 1190, type: !924, isLocal: false, isDefinition: false, scopeLine: 1190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!959 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofENS_17basic_string_viewIcS2_EEm", scope: !170, file: !171, line: 1192, type: !927, isLocal: false, isDefinition: false, scopeLine: 1192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!960 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcmm", scope: !170, file: !171, line: 1193, type: !930, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!961 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcm", scope: !170, file: !171, line: 1195, type: !933, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!962 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEcm", scope: !170, file: !171, line: 1197, type: !936, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!963 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_", scope: !170, file: !171, line: 1200, type: !964, isLocal: false, isDefinition: false, scopeLine: 1200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!964 = !DISubroutineType(types: !965)
!965 = !{!30, !717, !457}
!966 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareENS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 1202, type: !967, isLocal: false, isDefinition: false, scopeLine: 1202, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!967 = !DISubroutineType(types: !968)
!968 = !{!30, !717, !496}
!969 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmNS_17basic_string_viewIcS2_EE", scope: !170, file: !171, line: 1204, type: !970, isLocal: false, isDefinition: false, scopeLine: 1204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!970 = !DISubroutineType(types: !971)
!971 = !{!30, !717, !202, !202, !496}
!972 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_", scope: !170, file: !171, line: 1206, type: !973, isLocal: false, isDefinition: false, scopeLine: 1206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!30, !717, !202, !202, !457}
!975 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_mm", scope: !170, file: !171, line: 1207, type: !976, isLocal: false, isDefinition: false, scopeLine: 1207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!976 = !DISubroutineType(types: !977)
!977 = !{!30, !717, !202, !202, !457, !202, !202}
!978 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc", scope: !170, file: !171, line: 1216, type: !979, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!979 = !DISubroutineType(types: !980)
!980 = !{!30, !717, !731}
!981 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKc", scope: !170, file: !171, line: 1217, type: !982, isLocal: false, isDefinition: false, scopeLine: 1217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!982 = !DISubroutineType(types: !983)
!983 = !{!30, !717, !202, !202, !731}
!984 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm", scope: !170, file: !171, line: 1218, type: !985, isLocal: false, isDefinition: false, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!985 = !DISubroutineType(types: !986)
!986 = !{!30, !717, !202, !202, !731, !202}
!987 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12__invariantsEv", scope: !170, file: !171, line: 1220, type: !780, isLocal: false, isDefinition: false, scopeLine: 1220, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!988 = !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !170, file: !171, line: 1223, type: !780, isLocal: false, isDefinition: false, scopeLine: 1223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!989 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !170, file: !171, line: 1237, type: !990, isLocal: false, isDefinition: false, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: false)
!990 = !DISubroutineType(types: !991)
!991 = !{!992, !447}
!992 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !453, size: 64)
!993 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !170, file: !171, line: 1240, type: !994, isLocal: false, isDefinition: false, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: false)
!994 = !DISubroutineType(types: !995)
!995 = !{!451, !717}
!996 = !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !170, file: !171, line: 1264, type: !774, isLocal: false, isDefinition: false, scopeLine: 1264, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !170, file: !171, line: 1272, type: !765, isLocal: false, isDefinition: false, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: false)
!998 = !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !170, file: !171, line: 1282, type: !774, isLocal: false, isDefinition: false, scopeLine: 1282, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !170, file: !171, line: 1285, type: !765, isLocal: false, isDefinition: false, scopeLine: 1285, flags: DIFlagPrototyped, isOptimized: false)
!1000 = !DISubprogram(name: "__set_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm", scope: !170, file: !171, line: 1288, type: !774, isLocal: false, isDefinition: false, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !170, file: !171, line: 1292, type: !774, isLocal: false, isDefinition: false, scopeLine: 1292, flags: DIFlagPrototyped, isOptimized: false)
!1002 = !DISubprogram(name: "__get_long_cap", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv", scope: !170, file: !171, line: 1295, type: !765, isLocal: false, isDefinition: false, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !170, file: !171, line: 1299, type: !1004, isLocal: false, isDefinition: false, scopeLine: 1299, flags: DIFlagPrototyped, isOptimized: false)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !447, !353}
!1006 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !170, file: !171, line: 1302, type: !1007, isLocal: false, isDefinition: false, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!353, !447}
!1009 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !170, file: !171, line: 1305, type: !1010, isLocal: false, isDefinition: false, scopeLine: 1305, flags: DIFlagPrototyped, isOptimized: false)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!1012, !717}
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !170, file: !171, line: 648, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !204, file: !187, line: 1512, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1015, file: !187, line: 1048, baseType: !234)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<char, char *, std::__1::allocator<char>, true>", scope: !7, file: !187, line: 1046, size: 8, elements: !212, templateParams: !1016, identifier: "_ZTSNSt3__115__const_pointerIcPcNS_9allocatorIcEELb1EEE")
!1016 = !{!214, !270, !271, !183}
!1017 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !170, file: !171, line: 1308, type: !1007, isLocal: false, isDefinition: false, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: false)
!1018 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !170, file: !171, line: 1311, type: !1010, isLocal: false, isDefinition: false, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !170, file: !171, line: 1314, type: !1007, isLocal: false, isDefinition: false, scopeLine: 1314, flags: DIFlagPrototyped, isOptimized: false)
!1020 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !170, file: !171, line: 1317, type: !1010, isLocal: false, isDefinition: false, scopeLine: 1317, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DISubprogram(name: "__zero", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv", scope: !170, file: !171, line: 1321, type: !445, isLocal: false, isDefinition: false, scopeLine: 1321, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !170, file: !171, line: 1334, type: !1023, isLocal: false, isDefinition: false, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!202, !202}
!1025 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm", scope: !170, file: !171, line: 1340, type: !1026, isLocal: false, isDefinition: false, scopeLine: 1340, flags: DIFlagPrototyped, isOptimized: false)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !447, !731, !202, !202}
!1028 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !170, file: !171, line: 1342, type: !1029, isLocal: false, isDefinition: false, scopeLine: 1342, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !447, !731, !202}
!1031 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !170, file: !171, line: 1344, type: !771, isLocal: false, isDefinition: false, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: false)
!1032 = !DISubprogram(name: "__grow_by", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm", scope: !170, file: !171, line: 1364, type: !1033, isLocal: false, isDefinition: false, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !447, !202, !202, !202, !202, !202, !202}
!1035 = !DISubprogram(name: "__grow_by_and_replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc", scope: !170, file: !171, line: 1366, type: !1036, isLocal: false, isDefinition: false, scopeLine: 1366, flags: DIFlagPrototyped, isOptimized: false)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !447, !202, !202, !202, !202, !202, !202, !731}
!1038 = !DISubprogram(name: "__erase_to_end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endEm", scope: !170, file: !171, line: 1371, type: !774, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: false)
!1039 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_", scope: !170, file: !171, line: 1374, type: !455, isLocal: false, isDefinition: false, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb1EEE", scope: !170, file: !171, line: 1379, type: !1041, isLocal: false, isDefinition: false, scopeLine: 1379, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !447, !457, !304}
!1043 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb0EEE", scope: !170, file: !171, line: 1406, type: !1044, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !447, !457, !321}
!1046 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb0EEE", scope: !170, file: !171, line: 1411, type: !1047, isLocal: false, isDefinition: false, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !447, !721, !321}
!1049 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb1EEE", scope: !170, file: !171, line: 1414, type: !1050, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !447, !721, !304}
!1052 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_", scope: !170, file: !171, line: 1424, type: !914, isLocal: false, isDefinition: false, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb1EEE", scope: !170, file: !171, line: 1432, type: !1050, isLocal: false, isDefinition: false, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: false)
!1054 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb0EEE", scope: !170, file: !171, line: 1439, type: !1047, isLocal: false, isDefinition: false, scopeLine: 1439, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv", scope: !170, file: !171, line: 1443, type: !445, isLocal: false, isDefinition: false, scopeLine: 1443, flags: DIFlagPrototyped, isOptimized: false)
!1056 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm", scope: !170, file: !171, line: 1444, type: !774, isLocal: false, isDefinition: false, scopeLine: 1444, flags: DIFlagPrototyped, isOptimized: false)
!1057 = !{!630, !631, !1058}
!1058 = !DITemplateTypeParameter(name: "_Allocator", type: !216)
!1059 = !DISubprogram(name: "locale", scope: !132, file: !133, line: 107, type: !1060, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !151, !155, !160, !137}
!1062 = !DISubprogram(name: "locale", scope: !132, file: !133, line: 108, type: !1063, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !151, !155, !166, !137}
!1065 = !DISubprogram(name: "locale", scope: !132, file: !133, line: 111, type: !1066, isLocal: false, isDefinition: false, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !151, !155, !155, !137}
!1068 = !DISubprogram(name: "~locale", scope: !132, file: !133, line: 113, type: !149, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1069 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16localeaSERKS0_", scope: !132, file: !133, line: 115, type: !1070, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!155, !151, !155}
!1072 = !DISubprogram(name: "name", linkageName: "_ZNKSt3__16locale4nameEv", scope: !132, file: !133, line: 122, type: !1073, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!168, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1076 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt3__16localeeqERKS0_", scope: !132, file: !133, line: 123, type: !1077, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!184, !1075, !155}
!1079 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt3__16localeneERKS0_", scope: !132, file: !133, line: 124, type: !1077, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1080 = !DISubprogram(name: "global", linkageName: "_ZNSt3__16locale6globalERKS0_", scope: !132, file: !133, line: 131, type: !1081, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!132, !155}
!1083 = !DISubprogram(name: "classic", linkageName: "_ZNSt3__16locale7classicEv", scope: !132, file: !133, line: 132, type: !1084, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!155}
!1086 = !DISubprogram(name: "__install_ctor", linkageName: "_ZNSt3__16locale14__install_ctorERKS0_PNS0_5facetEl", scope: !132, file: !133, line: 138, type: !1087, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !151, !155, !1089, !71}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "facet", scope: !132, file: !133, line: 147, size: 128, elements: !1091, vtableHolder: !1093, identifier: "_ZTSNSt3__16locale5facetE")
!1091 = !{!1092, !1122, !1126, !1129}
!1092 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1090, baseType: !1093, flags: DIFlagPublic)
!1093 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count", scope: !7, file: !187, line: 3449, size: 128, elements: !1094, vtableHolder: !1093, identifier: "_ZTSNSt3__114__shared_countE")
!1094 = !{!1095, !1096, !1097, !1103, !1107, !1110, !1111, !1114, !1115, !1118}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$__shared_count", scope: !187, file: !187, baseType: !26, size: 64, flags: DIFlagArtificial)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "__shared_owners_", scope: !1093, file: !187, line: 3455, baseType: !71, size: 64, offset: 64, flags: DIFlagProtected)
!1097 = !DISubprogram(name: "__shared_count", scope: !1093, file: !187, line: 3451, type: !1098, isLocal: false, isDefinition: false, scopeLine: 3451, flags: DIFlagPrototyped, isOptimized: false)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1103 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__shared_countaSERKS0_", scope: !1093, file: !187, line: 3452, type: !1104, isLocal: false, isDefinition: false, scopeLine: 3452, flags: DIFlagPrototyped, isOptimized: false)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1106, !1100, !1101}
!1106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1093, size: 64)
!1107 = !DISubprogram(name: "~__shared_count", scope: !1093, file: !187, line: 3456, type: !1108, isLocal: false, isDefinition: false, scopeLine: 3456, containingType: !1093, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !1100}
!1110 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__114__shared_count16__on_zero_sharedEv", scope: !1093, file: !187, line: 3458, type: !1108, isLocal: false, isDefinition: false, scopeLine: 3458, containingType: !1093, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubprogram(name: "__shared_count", scope: !1093, file: !187, line: 3462, type: !1112, isLocal: false, isDefinition: false, scopeLine: 3462, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1100, !71}
!1114 = !DISubprogram(name: "__add_shared", linkageName: "_ZNSt3__114__shared_count12__add_sharedEv", scope: !1093, file: !187, line: 3471, type: !1108, isLocal: false, isDefinition: false, scopeLine: 3471, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1115 = !DISubprogram(name: "__release_shared", linkageName: "_ZNSt3__114__shared_count16__release_sharedEv", scope: !1093, file: !187, line: 3475, type: !1116, isLocal: false, isDefinition: false, scopeLine: 3475, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!184, !1100}
!1118 = !DISubprogram(name: "use_count", linkageName: "_ZNKSt3__114__shared_count9use_countEv", scope: !1093, file: !187, line: 3484, type: !1119, isLocal: false, isDefinition: false, scopeLine: 3484, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!71, !1121}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1122 = !DISubprogram(name: "facet", scope: !1090, file: !133, line: 152, type: !1123, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1125, !88}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1126 = !DISubprogram(name: "~facet", scope: !1090, file: !133, line: 155, type: !1127, isLocal: false, isDefinition: false, scopeLine: 155, containingType: !1090, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !1125}
!1129 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__16locale5facet16__on_zero_sharedEv", scope: !1090, file: !133, line: 160, type: !1127, isLocal: false, isDefinition: false, scopeLine: 160, containingType: !1090, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: false)
!1130 = !DISubprogram(name: "__global", linkageName: "_ZNSt3__16locale8__globalEv", scope: !132, file: !133, line: 139, type: !1131, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !132, size: 64)
!1134 = !DISubprogram(name: "has_facet", linkageName: "_ZNKSt3__16locale9has_facetERNS0_2idE", scope: !132, file: !133, line: 140, type: !1135, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!184, !1075, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !132, file: !133, line: 163, size: 128, elements: !1139, identifier: "_ZTSNSt3__16locale2idE")
!1139 = !{!1140, !1158, !1161, !1162, !1166, !1167, !1172, !1173}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "__flag_", scope: !1138, file: !133, line: 165, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "once_flag", scope: !7, file: !1142, line: 571, size: 64, elements: !1143, identifier: "_ZTSNSt3__19once_flagE")
!1142 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/mutex", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!1143 = !{!1144, !1145, !1149, !1154}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "__state_", scope: !1141, file: !1142, line: 581, baseType: !92, size: 64, flags: DIFlagPrivate)
!1145 = !DISubprogram(name: "once_flag", scope: !1141, file: !1142, line: 575, type: !1146, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1149 = !DISubprogram(name: "once_flag", scope: !1141, file: !1142, line: 578, type: !1150, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1148, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1154 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__19once_flagaSERKS0_", scope: !1141, file: !1142, line: 579, type: !1155, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157, !1148, !1152}
!1157 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1141, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1138, file: !133, line: 166, baseType: !1159, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1160, line: 30, baseType: !30)
!1160 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__next_id", scope: !1138, file: !133, line: 168, baseType: !1159, flags: DIFlagStaticMember)
!1162 = !DISubprogram(name: "id", scope: !1138, file: !133, line: 170, type: !1163, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1166 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__16locale2id6__initEv", scope: !1138, file: !133, line: 172, type: !1163, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16locale2idaSERKS1_", scope: !1138, file: !133, line: 173, type: !1168, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1165, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1172 = !DISubprogram(name: "id", scope: !1138, file: !133, line: 174, type: !1168, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!1173 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__16locale2id5__getEv", scope: !1138, file: !133, line: 176, type: !1174, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!71, !1165}
!1176 = !DISubprogram(name: "use_facet", linkageName: "_ZNKSt3__16locale9use_facetERNS0_2idE", scope: !132, file: !133, line: 141, type: !1177, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1179, !1075, !1137}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!1181 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__18ios_base6getlocEv", scope: !23, file: !22, line: 297, type: !1182, isLocal: false, isDefinition: false, scopeLine: 297, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!132, !108}
!1184 = !DISubprogram(name: "xalloc", linkageName: "_ZNSt3__18ios_base6xallocEv", scope: !23, file: !22, line: 300, type: !28, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1185 = !DISubprogram(name: "iword", linkageName: "_ZNSt3__18ios_base5iwordEi", scope: !23, file: !22, line: 301, type: !1186, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1188, !113, !30}
!1188 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 64)
!1189 = !DISubprogram(name: "pword", linkageName: "_ZNSt3__18ios_base5pwordEi", scope: !23, file: !22, line: 302, type: !1190, isLocal: false, isDefinition: false, scopeLine: 302, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!1192, !113, !30}
!1192 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !76, size: 64)
!1193 = !DISubprogram(name: "~ios_base", scope: !23, file: !22, line: 305, type: !1194, isLocal: false, isDefinition: false, scopeLine: 305, containingType: !23, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !113}
!1196 = !DISubprogram(name: "register_callback", linkageName: "_ZNSt3__18ios_base17register_callbackEPFvNS0_5eventERS0_iEi", scope: !23, file: !22, line: 310, type: !1197, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !113, !80, !30}
!1199 = !DISubprogram(name: "ios_base", scope: !23, file: !22, line: 313, type: !1200, isLocal: false, isDefinition: false, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !113, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 64)
!1203 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__18ios_baseaSERKS0_", scope: !23, file: !22, line: 314, type: !1204, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!84, !113, !1202}
!1206 = !DISubprogram(name: "sync_with_stdio", linkageName: "_ZNSt3__18ios_base15sync_with_stdioEb", scope: !23, file: !22, line: 317, type: !1207, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!184, !184}
!1209 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__18ios_base7rdstateEv", scope: !23, file: !22, line: 319, type: !1210, isLocal: false, isDefinition: false, scopeLine: 319, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!54, !108}
!1212 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__18ios_base5clearEj", scope: !23, file: !22, line: 320, type: !1213, isLocal: false, isDefinition: false, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !113, !54}
!1215 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !23, file: !22, line: 321, type: !1213, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1216 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__18ios_base4goodEv", scope: !23, file: !22, line: 323, type: !1217, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!184, !108}
!1219 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__18ios_base3eofEv", scope: !23, file: !22, line: 324, type: !1217, isLocal: false, isDefinition: false, scopeLine: 324, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1220 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__18ios_base4failEv", scope: !23, file: !22, line: 325, type: !1217, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1221 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__18ios_base3badEv", scope: !23, file: !22, line: 326, type: !1217, isLocal: false, isDefinition: false, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1222 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__18ios_base10exceptionsEv", scope: !23, file: !22, line: 328, type: !1210, isLocal: false, isDefinition: false, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1223 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__18ios_base10exceptionsEj", scope: !23, file: !22, line: 329, type: !1213, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1224 = !DISubprogram(name: "__set_badbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv", scope: !23, file: !22, line: 331, type: !1194, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1225 = !DISubprogram(name: "__set_failbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base34__set_failbit_and_consider_rethrowEv", scope: !23, file: !22, line: 332, type: !1194, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1226 = !DISubprogram(name: "ios_base", scope: !23, file: !22, line: 336, type: !1194, isLocal: false, isDefinition: false, scopeLine: 336, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1227 = !DISubprogram(name: "init", linkageName: "_ZNSt3__18ios_base4initEPv", scope: !23, file: !22, line: 339, type: !1228, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !113, !76}
!1230 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !23, file: !22, line: 340, type: !1231, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!76, !108}
!1233 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__18ios_base5rdbufEPv", scope: !23, file: !22, line: 343, type: !1228, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1234 = !DISubprogram(name: "__call_callbacks", linkageName: "_ZNSt3__18ios_base16__call_callbacksENS0_5eventE", scope: !23, file: !22, line: 349, type: !1235, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !113, !21}
!1237 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__18ios_base7copyfmtERKS0_", scope: !23, file: !22, line: 350, type: !1200, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1238 = !DISubprogram(name: "move", linkageName: "_ZNSt3__18ios_base4moveERS0_", scope: !23, file: !22, line: 351, type: !1239, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !113, !84}
!1241 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__18ios_base4swapERS0_", scope: !23, file: !22, line: 352, type: !1239, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1242 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__18ios_base9set_rdbufEPv", scope: !23, file: !22, line: 355, type: !1228, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIEnumerator(name: "erase_event", value: 0)
!1245 = !DIEnumerator(name: "imbue_event", value: 1)
!1246 = !DIEnumerator(name: "copyfmt_event", value: 2)
!1247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "seekdir", scope: !23, file: !22, line: 270, size: 32, elements: !1248, identifier: "_ZTSNSt3__18ios_base7seekdirE")
!1248 = !{!1249, !1250, !1251}
!1249 = !DIEnumerator(name: "beg", value: 0)
!1250 = !DIEnumerator(name: "cur", value: 1)
!1251 = !DIEnumerator(name: "end", value: 2)
!1252 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !170, file: !171, line: 710, size: 32, elements: !1253, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt_E")
!1253 = !{!1254}
!1254 = !DIEnumerator(name: "__short_mask", value: 1)
!1255 = !{!1256, !1340, !1266, !1270, !1360, !1441, !1492, !1538, !1600, !1631, !1648, !184, !1688, !667, !2000, !1505, !1613, !2632, !23}
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Cd", scope: !1258, file: !1257, line: 738, baseType: !1266)
!1257 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!1258 = distinct !DISubprogram(name: "operator*<long long, std::__1::ratio<1, 1000>, int>", linkageName: "_ZNSt3__16chronomlIxNS_5ratioILl1ELl1000EEEiEENS_9enable_ifIXsr14is_convertibleIT1_NS_11common_typeIJT_S5_EE4typeEEE5valueENS0_8durationIS9_T0_EEE4typeERKNSA_IS7_SB_EERKS5_", scope: !1259, file: !1257, line: 735, type: !1260, isLocal: false, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !1337, variables: !212)
!1259 = !DINamespace(name: "chrono", scope: !7, file: !1257, line: 316)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!1262, !1302, !1335}
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1263, file: !282, line: 424, baseType: !1266)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> > >", scope: !7, file: !282, line: 424, size: 8, elements: !212, templateParams: !1264, identifier: "_ZTSNSt3__19enable_ifILb1ENS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEEEE")
!1264 = !{!183, !1265}
!1265 = !DITemplateTypeParameter(name: "_Tp", type: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000> >", scope: !1259, file: !1257, line: 488, size: 64, elements: !1267, templateParams: !1317, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEE")
!1267 = !{!1268, !1271, !1275, !1280, !1289, !1290, !1294, !1297, !1298, !1299, !1303, !1304, !1309, !1310, !1311, !1312, !1315, !1316}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1266, file: !1257, line: 528, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1266, file: !1257, line: 525, baseType: !1270)
!1270 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1271 = !DISubprogram(name: "duration", scope: !1266, file: !1257, line: 533, type: !1272, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1275 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv", scope: !1266, file: !1257, line: 564, type: !1276, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1269, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!1280 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEpsEv", scope: !1266, file: !1257, line: 568, type: !1281, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1283, !1278}
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1284, file: !1257, line: 343, baseType: !1266)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> > >", scope: !7, file: !1257, line: 339, size: 8, elements: !212, templateParams: !1285, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEES5_EEE")
!1285 = !{!1286}
!1286 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1287)
!1287 = !{!1288, !1288}
!1288 = !DITemplateTypeParameter(type: !1266)
!1289 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEngEv", scope: !1266, file: !1257, line: 569, type: !1281, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1290 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEppEv", scope: !1266, file: !1257, line: 570, type: !1291, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!1293, !1274}
!1293 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1266, size: 64)
!1294 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEppEi", scope: !1266, file: !1257, line: 571, type: !1295, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1266, !1274, !30}
!1297 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEmmEv", scope: !1266, file: !1257, line: 572, type: !1291, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1298 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEmmEi", scope: !1266, file: !1257, line: 573, type: !1295, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1299 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEpLERKS4_", scope: !1266, file: !1257, line: 575, type: !1300, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!1293, !1274, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1279, size: 64)
!1303 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEmIERKS4_", scope: !1266, file: !1257, line: 576, type: !1300, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1304 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEmLERKx", scope: !1266, file: !1257, line: 578, type: !1305, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1293, !1274, !1307}
!1307 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1309 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEdVERKx", scope: !1266, file: !1257, line: 579, type: !1305, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1310 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEErMERKx", scope: !1266, file: !1257, line: 580, type: !1305, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1311 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEErMERKS4_", scope: !1266, file: !1257, line: 581, type: !1300, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1312 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE4zeroEv", scope: !1266, file: !1257, line: 585, type: !1313, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1266}
!1315 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE3minEv", scope: !1266, file: !1257, line: 586, type: !1313, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1316 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE3maxEv", scope: !1266, file: !1257, line: 587, type: !1313, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1317 = !{!1318, !1319}
!1318 = !DITemplateTypeParameter(name: "_Rep", type: !1270)
!1319 = !DITemplateTypeParameter(name: "_Period", type: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000>", scope: !7, file: !1321, line: 247, size: 8, elements: !1322, templateParams: !1332, identifier: "_ZTSNSt3__15ratioILl1ELl1000EEE")
!1321 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!1322 = !{!1323, !1327, !1328, !1329, !1330, !1331}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1320, file: !1321, line: 252, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1326, line: 32, baseType: !71)
!1326 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1320, file: !1321, line: 253, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1000)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1320, file: !1321, line: 254, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1320, file: !1321, line: 255, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1320, file: !1321, line: 257, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1320, file: !1321, line: 258, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000)
!1332 = !{!1333, !1334}
!1333 = !DITemplateValueParameter(name: "_Num", type: !71, value: i64 1)
!1334 = !DITemplateValueParameter(name: "_Den", type: !71, value: i64 1000)
!1335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1337 = !{!1338, !1319, !1339}
!1338 = !DITemplateTypeParameter(name: "_Rep1", type: !1270)
!1339 = !DITemplateTypeParameter(name: "_Rep2", type: !30)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Cr", scope: !1258, file: !1257, line: 737, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1342, file: !282, line: 2032, baseType: !1347)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__common_type2_imp<long long, int, void>", scope: !7, file: !282, line: 2025, size: 8, elements: !212, templateParams: !1343, identifier: "_ZTSNSt3__118__common_type2_impIxivEE")
!1343 = !{!1344, !1345, !1346}
!1344 = !DITemplateTypeParameter(name: "_Tp", type: !1270)
!1345 = !DITemplateTypeParameter(name: "_Up", type: !30)
!1346 = !DITemplateTypeParameter(type: null)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1348, file: !282, line: 1305, baseType: !1350)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decay<long long>", scope: !7, file: !282, line: 1300, size: 8, elements: !212, templateParams: !1349, identifier: "_ZTSNSt3__15decayIxEE")
!1349 = !{!1344}
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1351, file: !282, line: 1296, baseType: !1354)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__decay<long long, true>", scope: !7, file: !282, line: 1284, size: 8, elements: !212, templateParams: !1352, identifier: "_ZTSNSt3__17__decayIxLb1EEE")
!1352 = !{!1353, !183}
!1353 = !DITemplateTypeParameter(name: "_Up", type: !1270)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1355, file: !282, line: 414, baseType: !1270)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, long long *, long long>", scope: !7, file: !282, line: 414, size: 8, elements: !212, templateParams: !1356, identifier: "_ZTSNSt3__111conditionalILb0EPxxEE")
!1356 = !{!285, !1357, !1359}
!1357 = !DITemplateTypeParameter(name: "_If", type: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1359 = !DITemplateTypeParameter(name: "_Then", type: !1270)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ct", scope: !1361, file: !1257, line: 646, baseType: !1436)
!1361 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEclERKS5_RKS7_", scope: !1362, file: !1257, line: 644, type: !1365, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1364, variables: !212)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_lt<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> >, std::__1::chrono::duration<long double, std::__1::ratio<1, 1> > >", scope: !1259, file: !1257, line: 641, size: 8, elements: !1363, templateParams: !1433, identifier: "_ZTSNSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEE")
!1363 = !{!1364}
!1364 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEclERKS5_RKS7_", scope: !1362, file: !1257, line: 644, type: !1365, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!184, !1367, !1302, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long double, std::__1::ratio<1, 1> >", scope: !1259, file: !1257, line: 488, size: 128, elements: !1372, templateParams: !1420, identifier: "_ZTSNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEE")
!1372 = !{!1373, !1376, !1380, !1384, !1393, !1394, !1398, !1401, !1402, !1403, !1406, !1407, !1412, !1413, !1414, !1415, !1418, !1419}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1371, file: !1257, line: 528, baseType: !1374, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1371, file: !1257, line: 525, baseType: !1375)
!1375 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1376 = !DISubprogram(name: "duration", scope: !1371, file: !1257, line: 533, type: !1377, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1380 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE5countEv", scope: !1371, file: !1257, line: 564, type: !1381, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1374, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1384 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEpsEv", scope: !1371, file: !1257, line: 568, type: !1385, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1387, !1383}
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1388, file: !1257, line: 343, baseType: !1371)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long double, std::__1::ratio<1, 1> >, std::__1::chrono::duration<long double, std::__1::ratio<1, 1> > >", scope: !7, file: !1257, line: 339, size: 8, elements: !212, templateParams: !1389, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIeNS_5ratioILl1ELl1EEEEES5_EEE")
!1389 = !{!1390}
!1390 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1391)
!1391 = !{!1392, !1392}
!1392 = !DITemplateTypeParameter(type: !1371)
!1393 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEngEv", scope: !1371, file: !1257, line: 569, type: !1385, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1394 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEppEv", scope: !1371, file: !1257, line: 570, type: !1395, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1397, !1379}
!1397 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1371, size: 64)
!1398 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEppEi", scope: !1371, file: !1257, line: 571, type: !1399, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1371, !1379, !30}
!1401 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEmmEv", scope: !1371, file: !1257, line: 572, type: !1395, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1402 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEmmEi", scope: !1371, file: !1257, line: 573, type: !1399, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1403 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEpLERKS4_", scope: !1371, file: !1257, line: 575, type: !1404, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!1397, !1379, !1369}
!1406 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEmIERKS4_", scope: !1371, file: !1257, line: 576, type: !1404, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1407 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEmLERKe", scope: !1371, file: !1257, line: 578, type: !1408, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1397, !1379, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1412 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEEdVERKe", scope: !1371, file: !1257, line: 579, type: !1408, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1413 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEErMERKe", scope: !1371, file: !1257, line: 580, type: !1408, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1414 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEErMERKS4_", scope: !1371, file: !1257, line: 581, type: !1404, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1415 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE4zeroEv", scope: !1371, file: !1257, line: 585, type: !1416, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1371}
!1418 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE3minEv", scope: !1371, file: !1257, line: 586, type: !1416, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1419 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE3maxEv", scope: !1371, file: !1257, line: 587, type: !1416, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1420 = !{!1421, !1422}
!1421 = !DITemplateTypeParameter(name: "_Rep", type: !1375)
!1422 = !DITemplateTypeParameter(name: "_Period", type: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1>", scope: !7, file: !1321, line: 247, size: 8, elements: !1424, templateParams: !1431, identifier: "_ZTSNSt3__15ratioILl1ELl1EEE")
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1423, file: !1321, line: 252, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1423, file: !1321, line: 253, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1423, file: !1321, line: 254, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1423, file: !1321, line: 255, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1423, file: !1321, line: 257, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1423, file: !1321, line: 258, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1431 = !{!1333, !1432}
!1432 = !DITemplateValueParameter(name: "_Den", type: !71, value: i64 1)
!1433 = !{!1434, !1435}
!1434 = !DITemplateTypeParameter(name: "_LhsDuration", type: !1266)
!1435 = !DITemplateTypeParameter(name: "_RhsDuration", type: !1371)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1437, file: !1257, line: 343, baseType: !1441)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> >, std::__1::chrono::duration<long double, std::__1::ratio<1, 1> > >", scope: !7, file: !1257, line: 339, size: 8, elements: !212, templateParams: !1438, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEEE")
!1438 = !{!1439}
!1439 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1440)
!1440 = !{!1288, !1392}
!1441 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long double, std::__1::ratio<1, 1000> >", scope: !1259, file: !1257, line: 488, size: 128, elements: !1442, templateParams: !1491, identifier: "_ZTSNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEE")
!1442 = !{!1443, !1445, !1449, !1454, !1463, !1464, !1468, !1471, !1472, !1473, !1477, !1478, !1483, !1484, !1485, !1486, !1489, !1490}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1441, file: !1257, line: 528, baseType: !1444, size: 128)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1441, file: !1257, line: 525, baseType: !1375)
!1445 = !DISubprogram(name: "duration", scope: !1441, file: !1257, line: 533, type: !1446, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1449 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv", scope: !1441, file: !1257, line: 564, type: !1450, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!1444, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1454 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEpsEv", scope: !1441, file: !1257, line: 568, type: !1455, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1457, !1452}
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1458, file: !1257, line: 343, baseType: !1441)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long double, std::__1::ratio<1, 1000> >, std::__1::chrono::duration<long double, std::__1::ratio<1, 1000> > >", scope: !7, file: !1257, line: 339, size: 8, elements: !212, templateParams: !1459, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIeNS_5ratioILl1ELl1000EEEEES5_EEE")
!1459 = !{!1460}
!1460 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1461)
!1461 = !{!1462, !1462}
!1462 = !DITemplateTypeParameter(type: !1441)
!1463 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEngEv", scope: !1441, file: !1257, line: 569, type: !1455, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1464 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEppEv", scope: !1441, file: !1257, line: 570, type: !1465, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1467, !1448}
!1467 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1441, size: 64)
!1468 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEppEi", scope: !1441, file: !1257, line: 571, type: !1469, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1441, !1448, !30}
!1471 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEmmEv", scope: !1441, file: !1257, line: 572, type: !1465, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1472 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEmmEi", scope: !1441, file: !1257, line: 573, type: !1469, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1473 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEpLERKS4_", scope: !1441, file: !1257, line: 575, type: !1474, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1467, !1448, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1453, size: 64)
!1477 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEmIERKS4_", scope: !1441, file: !1257, line: 576, type: !1474, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1478 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEmLERKe", scope: !1441, file: !1257, line: 578, type: !1479, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1467, !1448, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1483 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEdVERKe", scope: !1441, file: !1257, line: 579, type: !1479, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1484 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEErMERKe", scope: !1441, file: !1257, line: 580, type: !1479, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1485 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEErMERKS4_", scope: !1441, file: !1257, line: 581, type: !1474, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1486 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE4zeroEv", scope: !1441, file: !1257, line: 585, type: !1487, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!1441}
!1489 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE3minEv", scope: !1441, file: !1257, line: 586, type: !1487, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1490 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE3maxEv", scope: !1441, file: !1257, line: 587, type: !1487, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1491 = !{!1421, !1319}
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ct", scope: !1493, file: !1257, line: 384, baseType: !1515)
!1493 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono15__duration_castINS0_8durationIeNS_5ratioILl1ELl1EEEEENS2_IeNS3_ILl1ELl1000EEEEENS3_ILl1000ELl1EEELb0ELb1EEclERKS5_", scope: !1494, file: !1257, line: 382, type: !1497, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1496, variables: !212)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_cast<std::__1::chrono::duration<long double, std::__1::ratio<1, 1> >, std::__1::chrono::duration<long double, std::__1::ratio<1, 1000> >, std::__1::ratio<1000, 1>, false, true>", scope: !1259, file: !1257, line: 379, size: 8, elements: !1495, templateParams: !1501, identifier: "_ZTSNSt3__16chrono15__duration_castINS0_8durationIeNS_5ratioILl1ELl1EEEEENS2_IeNS3_ILl1ELl1000EEEEENS3_ILl1000ELl1EEELb0ELb1EEE")
!1495 = !{!1496}
!1496 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono15__duration_castINS0_8durationIeNS_5ratioILl1ELl1EEEEENS2_IeNS3_ILl1ELl1000EEEEENS3_ILl1000ELl1EEELb0ELb1EEclERKS5_", scope: !1494, file: !1257, line: 382, type: !1497, isLocal: false, isDefinition: false, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1441, !1499, !1369}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1501 = !{!1502, !1503, !1504, !272, !183}
!1502 = !DITemplateTypeParameter(name: "_FromDuration", type: !1371)
!1503 = !DITemplateTypeParameter(name: "_ToDuration", type: !1441)
!1504 = !DITemplateTypeParameter(name: "_Period", type: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1000, 1>", scope: !7, file: !1321, line: 247, size: 8, elements: !1506, templateParams: !1513, identifier: "_ZTSNSt3__15ratioILl1000ELl1EEE")
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1505, file: !1321, line: 252, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1000)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1505, file: !1321, line: 253, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1505, file: !1321, line: 254, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1505, file: !1321, line: 255, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1505, file: !1321, line: 257, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1505, file: !1321, line: 258, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1513 = !{!1514, !1432}
!1514 = !DITemplateValueParameter(name: "_Num", type: !71, value: i64 1000)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1516, file: !282, line: 2061, baseType: !1520)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__common_type_impl<std::__1::__common_types<long double, long>, void>", scope: !7, file: !282, line: 2057, size: 8, elements: !212, templateParams: !1517, identifier: "_ZTSNSt3__118__common_type_implINS_14__common_typesIJelEEEvEE")
!1517 = !{!1518, !1346}
!1518 = !DITemplateTypeParameter(type: !1519)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "__common_types<long double, long>", scope: !7, file: !282, line: 2051, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114__common_typesIJelEEE")
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1521, file: !282, line: 2032, baseType: !1525)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__common_type2_imp<long double, long, void>", scope: !7, file: !282, line: 2025, size: 8, elements: !212, templateParams: !1522, identifier: "_ZTSNSt3__118__common_type2_impIelvEE")
!1522 = !{!1523, !1524, !1346}
!1523 = !DITemplateTypeParameter(name: "_Tp", type: !1375)
!1524 = !DITemplateTypeParameter(name: "_Up", type: !71)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1526, file: !282, line: 1305, baseType: !1528)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decay<long double>", scope: !7, file: !282, line: 1300, size: 8, elements: !212, templateParams: !1527, identifier: "_ZTSNSt3__15decayIeEE")
!1527 = !{!1523}
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1529, file: !282, line: 1296, baseType: !1532)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__decay<long double, true>", scope: !7, file: !282, line: 1284, size: 8, elements: !212, templateParams: !1530, identifier: "_ZTSNSt3__17__decayIeLb1EEE")
!1530 = !{!1531, !183}
!1531 = !DITemplateTypeParameter(name: "_Up", type: !1375)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1533, file: !282, line: 414, baseType: !1375)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, long double *, long double>", scope: !7, file: !282, line: 414, size: 8, elements: !212, templateParams: !1534, identifier: "_ZTSNSt3__111conditionalILb0EPeeEE")
!1534 = !{!285, !1535, !1537}
!1535 = !DITemplateTypeParameter(name: "_If", type: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1537 = !DITemplateTypeParameter(name: "_Then", type: !1375)
!1538 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000000> >", scope: !1259, file: !1257, line: 488, size: 64, elements: !1539, templateParams: !1588, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE")
!1539 = !{!1540, !1542, !1546, !1551, !1560, !1561, !1565, !1568, !1569, !1570, !1574, !1575, !1580, !1581, !1582, !1583, !1586, !1587}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1538, file: !1257, line: 528, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1538, file: !1257, line: 525, baseType: !1270)
!1542 = !DISubprogram(name: "duration", scope: !1538, file: !1257, line: 533, type: !1543, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1546 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv", scope: !1538, file: !1257, line: 564, type: !1547, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1541, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1551 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpsEv", scope: !1538, file: !1257, line: 568, type: !1552, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1554, !1549}
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1555, file: !1257, line: 343, baseType: !1538)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !7, file: !1257, line: 339, size: 8, elements: !212, templateParams: !1556, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEES5_EEE")
!1556 = !{!1557}
!1557 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1558)
!1558 = !{!1559, !1559}
!1559 = !DITemplateTypeParameter(type: !1538)
!1560 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEngEv", scope: !1538, file: !1257, line: 569, type: !1552, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1561 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv", scope: !1538, file: !1257, line: 570, type: !1562, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1564, !1545}
!1564 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1538, size: 64)
!1565 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEi", scope: !1538, file: !1257, line: 571, type: !1566, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1538, !1545, !30}
!1568 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEv", scope: !1538, file: !1257, line: 572, type: !1562, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1569 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEi", scope: !1538, file: !1257, line: 573, type: !1566, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1570 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpLERKS4_", scope: !1538, file: !1257, line: 575, type: !1571, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1564, !1545, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1550, size: 64)
!1574 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmIERKS4_", scope: !1538, file: !1257, line: 576, type: !1571, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1575 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmLERKx", scope: !1538, file: !1257, line: 578, type: !1576, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1564, !1545, !1578}
!1578 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1541)
!1580 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEdVERKx", scope: !1538, file: !1257, line: 579, type: !1576, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1581 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKx", scope: !1538, file: !1257, line: 580, type: !1576, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1582 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKS4_", scope: !1538, file: !1257, line: 581, type: !1571, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1583 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE4zeroEv", scope: !1538, file: !1257, line: 585, type: !1584, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1538}
!1586 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3minEv", scope: !1538, file: !1257, line: 586, type: !1584, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1587 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv", scope: !1538, file: !1257, line: 587, type: !1584, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1588 = !{!1318, !1589}
!1589 = !DITemplateTypeParameter(name: "_Period", type: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000000>", scope: !7, file: !1321, line: 247, size: 8, elements: !1591, templateParams: !1598, identifier: "_ZTSNSt3__15ratioILl1ELl1000000000EEE")
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1590, file: !1321, line: 252, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1590, file: !1321, line: 253, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1000000000)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1590, file: !1321, line: 254, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1590, file: !1321, line: 255, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1590, file: !1321, line: 257, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1590, file: !1321, line: 258, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000000)
!1598 = !{!1333, !1599}
!1599 = !DITemplateValueParameter(name: "_Den", type: !71, value: i64 1000000000)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ct", scope: !1601, file: !1257, line: 384, baseType: !1623)
!1601 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IxNS3_ILl1ELl1000000000EEEEENS3_ILl1000000ELl1EEELb0ELb1EEclERKS5_", scope: !1602, file: !1257, line: 382, type: !1605, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1604, variables: !212)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_cast<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::ratio<1000000, 1>, false, true>", scope: !1259, file: !1257, line: 379, size: 8, elements: !1603, templateParams: !1609, identifier: "_ZTSNSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IxNS3_ILl1ELl1000000000EEEEENS3_ILl1000000ELl1EEELb0ELb1EEE")
!1603 = !{!1604}
!1604 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IxNS3_ILl1ELl1000000000EEEEENS3_ILl1000000ELl1EEELb0ELb1EEclERKS5_", scope: !1602, file: !1257, line: 382, type: !1605, isLocal: false, isDefinition: false, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!1538, !1607, !1302}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1609 = !{!1610, !1611, !1612, !272, !183}
!1610 = !DITemplateTypeParameter(name: "_FromDuration", type: !1266)
!1611 = !DITemplateTypeParameter(name: "_ToDuration", type: !1538)
!1612 = !DITemplateTypeParameter(name: "_Period", type: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1000000, 1>", scope: !7, file: !1321, line: 247, size: 8, elements: !1614, templateParams: !1621, identifier: "_ZTSNSt3__15ratioILl1000000ELl1EEE")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1613, file: !1321, line: 252, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1000000)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1613, file: !1321, line: 253, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1613, file: !1321, line: 254, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1613, file: !1321, line: 255, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1613, file: !1321, line: 257, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1613, file: !1321, line: 258, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1621 = !{!1622, !1432}
!1622 = !DITemplateValueParameter(name: "_Num", type: !71, value: i64 1000000)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1624, file: !282, line: 2061, baseType: !1628)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__common_type_impl<std::__1::__common_types<long long, long>, void>", scope: !7, file: !282, line: 2057, size: 8, elements: !212, templateParams: !1625, identifier: "_ZTSNSt3__118__common_type_implINS_14__common_typesIJxlEEEvEE")
!1625 = !{!1626, !1346}
!1626 = !DITemplateTypeParameter(type: !1627)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "__common_types<long long, long>", scope: !7, file: !282, line: 2051, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114__common_typesIJxlEEE")
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1629, file: !282, line: 2032, baseType: !1347)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__common_type2_imp<long long, long, void>", scope: !7, file: !282, line: 2025, size: 8, elements: !212, templateParams: !1630, identifier: "_ZTSNSt3__118__common_type2_impIxlvEE")
!1630 = !{!1344, !1524, !1346}
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ct", scope: !1632, file: !1257, line: 646, baseType: !1643)
!1632 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEclERKS5_RKS7_", scope: !1633, file: !1257, line: 644, type: !1636, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1635, variables: !212)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_lt<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> > >", scope: !1259, file: !1257, line: 641, size: 8, elements: !1634, templateParams: !1640, identifier: "_ZTSNSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEE")
!1634 = !{!1635}
!1635 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEclERKS5_RKS7_", scope: !1633, file: !1257, line: 644, type: !1636, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!184, !1638, !1573, !1302}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1640 = !{!1641, !1642}
!1641 = !DITemplateTypeParameter(name: "_LhsDuration", type: !1538)
!1642 = !DITemplateTypeParameter(name: "_RhsDuration", type: !1266)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1644, file: !1257, line: 343, baseType: !1538)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> > >", scope: !7, file: !1257, line: 339, size: 8, elements: !212, templateParams: !1645, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEEE")
!1645 = !{!1646}
!1646 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1647)
!1647 = !{!1559, !1288}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ip", scope: !1650, file: !1649, line: 724, baseType: !1962)
!1649 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ostream", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!1650 = distinct !DISubprogram(name: "__put_character_sequence<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m", scope: !7, file: !1649, line: 714, type: !1651, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !629, variables: !212)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1653, !1653, !160, !88}
!1653 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::__1::char_traits<char> >", scope: !7, file: !1649, line: 1084, size: 1280, elements: !1655, vtableHolder: !1654, templateParams: !629, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE")
!1655 = !{!1656, !1847, !1848, !1852, !1855, !1859, !1862, !1865, !1870, !1873, !1879, !1885, !1891, !1894, !1898, !1902, !1905, !1908, !1911, !1914, !1917, !1921, !1925, !1929, !1932, !1935, !1938, !1942, !1947, !1950, !1954, !1957, !1961}
!1656 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1654, baseType: !1657, offset: 24, flags: DIFlagPublic | DIFlagVirtual)
!1657 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::__1::char_traits<char> >", scope: !7, file: !1658, line: 483, size: 1216, elements: !1659, vtableHolder: !23, templateParams: !629, identifier: "_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE")
!1658 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/streambuf", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!1659 = !{!1660, !1661, !1663, !1665, !1670, !1671, !1674, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1800, !1803, !1806, !1809, !1812, !1815, !1820, !1824, !1827, !1830, !1833, !1836, !1837, !1838, !1841, !1845, !1846}
!1660 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1657, baseType: !23, flags: DIFlagPublic)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "__tie_", scope: !1657, file: !22, line: 669, baseType: !1662, size: 64, offset: 1088)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "__fill_", scope: !1657, file: !22, line: 670, baseType: !1664, size: 32, offset: 1152)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1657, file: !22, line: 591, baseType: !667)
!1665 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbEv", scope: !1657, file: !22, line: 605, type: !1666, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!184, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1670 = !DISubprogram(name: "operator!", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntEv", scope: !1657, file: !22, line: 608, type: !1666, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1671 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE7rdstateEv", scope: !1657, file: !22, line: 609, type: !1672, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!54, !1668}
!1674 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj", scope: !1657, file: !22, line: 610, type: !1675, isLocal: false, isDefinition: false, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1677, !54}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1678 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1657, file: !22, line: 611, type: !1675, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1679 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodEv", scope: !1657, file: !22, line: 612, type: !1666, isLocal: false, isDefinition: false, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1680 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3eofEv", scope: !1657, file: !22, line: 613, type: !1666, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1681 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv", scope: !1657, file: !22, line: 614, type: !1666, isLocal: false, isDefinition: false, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1682 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3badEv", scope: !1657, file: !22, line: 615, type: !1666, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1683 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEv", scope: !1657, file: !22, line: 617, type: !1672, isLocal: false, isDefinition: false, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1684 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEj", scope: !1657, file: !22, line: 618, type: !1675, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1685 = !DISubprogram(name: "basic_ios", scope: !1657, file: !22, line: 622, type: !1686, isLocal: false, isDefinition: false, scopeLine: 622, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1677, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_streambuf<char, std::__1::char_traits<char> >", scope: !7, file: !1658, line: 480, size: 512, elements: !1690, vtableHolder: !1689, templateParams: !629, identifier: "_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE")
!1690 = !{!1691, !1692, !1693, !1696, !1697, !1698, !1699, !1700, !1701, !1705, !1708, !1713, !1716, !1726, !1729, !1732, !1735, !1739, !1740, !1741, !1744, !1747, !1748, !1749, !1754, !1755, !1759, !1763, !1766, !1769, !1770, !1771, !1774, !1777, !1778, !1779, !1780, !1781, !1784, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1798, !1799}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_streambuf", scope: !1658, file: !1658, baseType: !26, size: 64, flags: DIFlagArtificial)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !1689, file: !1658, line: 287, baseType: !132, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__binp_", scope: !1689, file: !1658, line: 288, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1689, file: !1658, line: 126, baseType: !162)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "__ninp_", scope: !1689, file: !1658, line: 289, baseType: !1694, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__einp_", scope: !1689, file: !1658, line: 290, baseType: !1694, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "__bout_", scope: !1689, file: !1658, line: 291, baseType: !1694, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__nout_", scope: !1689, file: !1658, line: 292, baseType: !1694, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "__eout_", scope: !1689, file: !1658, line: 293, baseType: !1694, size: 64, offset: 448)
!1701 = !DISubprogram(name: "~basic_streambuf", scope: !1689, file: !1658, line: 132, type: !1702, isLocal: false, isDefinition: false, scopeLine: 132, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1705 = !DISubprogram(name: "pubimbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueERKNS_6localeE", scope: !1689, file: !1658, line: 136, type: !1706, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!132, !1704, !155}
!1708 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv", scope: !1689, file: !1658, line: 144, type: !1709, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!132, !1711}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1713 = !DISubprogram(name: "pubsetbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufEPcl", scope: !1689, file: !1658, line: 148, type: !1714, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1688, !1704, !1694, !68}
!1716 = !DISubprogram(name: "pubseekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffExNS_8ios_base7seekdirEj", scope: !1689, file: !1658, line: 152, type: !1717, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!1719, !1704, !1723, !1247, !60}
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1689, file: !1658, line: 129, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !632, file: !633, line: 202, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "streampos", scope: !7, file: !169, line: 176, baseType: !1722)
!1722 = !DICompositeType(tag: DW_TAG_class_type, name: "fpos<__mbstate_t>", scope: !7, file: !169, line: 175, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__14fposI11__mbstate_tEE")
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1689, file: !1658, line: 130, baseType: !1724)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !632, file: !633, line: 201, baseType: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamoff", scope: !7, file: !169, line: 187, baseType: !1270)
!1726 = !DISubprogram(name: "pubseekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekposENS_4fposI11__mbstate_tEEj", scope: !1689, file: !1658, line: 157, type: !1727, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1719, !1704, !1719, !60}
!1729 = !DISubprogram(name: "pubsync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncEv", scope: !1689, file: !1658, line: 162, type: !1730, isLocal: false, isDefinition: false, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!30, !1704}
!1732 = !DISubprogram(name: "in_avail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availEv", scope: !1689, file: !1658, line: 167, type: !1733, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!68, !1704}
!1735 = !DISubprogram(name: "snextc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6snextcEv", scope: !1689, file: !1658, line: 174, type: !1736, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738, !1704}
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1689, file: !1658, line: 128, baseType: !667)
!1739 = !DISubprogram(name: "sbumpc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv", scope: !1689, file: !1658, line: 181, type: !1736, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1740 = !DISubprogram(name: "sgetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv", scope: !1689, file: !1658, line: 188, type: !1736, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1741 = !DISubprogram(name: "sgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetnEPcl", scope: !1689, file: !1658, line: 195, type: !1742, isLocal: false, isDefinition: false, scopeLine: 195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!68, !1704, !1694, !68}
!1744 = !DISubprogram(name: "sputbackc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9sputbackcEc", scope: !1689, file: !1658, line: 200, type: !1745, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1738, !1704, !1695}
!1747 = !DISubprogram(name: "sungetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7sungetcEv", scope: !1689, file: !1658, line: 207, type: !1736, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1748 = !DISubprogram(name: "sputc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc", scope: !1689, file: !1658, line: 215, type: !1745, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1749 = !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1689, file: !1658, line: 223, type: !1750, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!68, !1704, !1752, !68}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1754 = !DISubprogram(name: "basic_streambuf", scope: !1689, file: !1658, line: 227, type: !1702, isLocal: false, isDefinition: false, scopeLine: 227, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1755 = !DISubprogram(name: "basic_streambuf", scope: !1689, file: !1658, line: 228, type: !1756, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1704, !1758}
!1758 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1712, size: 64)
!1759 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEaSERKS3_", scope: !1689, file: !1658, line: 229, type: !1760, isLocal: false, isDefinition: false, scopeLine: 229, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!1762, !1704, !1758}
!1762 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1689, size: 64)
!1763 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_", scope: !1689, file: !1658, line: 230, type: !1764, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1704, !1762}
!1766 = !DISubprogram(name: "eback", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv", scope: !1689, file: !1658, line: 233, type: !1767, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1694, !1711}
!1769 = !DISubprogram(name: "gptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv", scope: !1689, file: !1658, line: 234, type: !1767, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1770 = !DISubprogram(name: "egptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv", scope: !1689, file: !1658, line: 235, type: !1767, isLocal: false, isDefinition: false, scopeLine: 235, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1771 = !DISubprogram(name: "gbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi", scope: !1689, file: !1658, line: 238, type: !1772, isLocal: false, isDefinition: false, scopeLine: 238, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1704, !30}
!1774 = !DISubprogram(name: "setg", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_", scope: !1689, file: !1658, line: 241, type: !1775, isLocal: false, isDefinition: false, scopeLine: 241, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !1704, !1694, !1694, !1694}
!1777 = !DISubprogram(name: "pbase", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv", scope: !1689, file: !1658, line: 248, type: !1767, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1778 = !DISubprogram(name: "pptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv", scope: !1689, file: !1658, line: 249, type: !1767, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1779 = !DISubprogram(name: "epptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv", scope: !1689, file: !1658, line: 250, type: !1767, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1780 = !DISubprogram(name: "pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi", scope: !1689, file: !1658, line: 253, type: !1772, isLocal: false, isDefinition: false, scopeLine: 253, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1781 = !DISubprogram(name: "setp", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_", scope: !1689, file: !1658, line: 256, type: !1782, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1704, !1694, !1694}
!1784 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1689, file: !1658, line: 263, type: !1785, isLocal: false, isDefinition: false, scopeLine: 263, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !1704, !155}
!1787 = !DISubprogram(name: "setbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl", scope: !1689, file: !1658, line: 266, type: !1714, isLocal: false, isDefinition: false, scopeLine: 266, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1788 = !DISubprogram(name: "seekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj", scope: !1689, file: !1658, line: 267, type: !1717, isLocal: false, isDefinition: false, scopeLine: 267, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1789 = !DISubprogram(name: "seekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj", scope: !1689, file: !1658, line: 269, type: !1727, isLocal: false, isDefinition: false, scopeLine: 269, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1790 = !DISubprogram(name: "sync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv", scope: !1689, file: !1658, line: 271, type: !1730, isLocal: false, isDefinition: false, scopeLine: 271, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1791 = !DISubprogram(name: "showmanyc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv", scope: !1689, file: !1658, line: 274, type: !1733, isLocal: false, isDefinition: false, scopeLine: 274, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1792 = !DISubprogram(name: "xsgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl", scope: !1689, file: !1658, line: 275, type: !1742, isLocal: false, isDefinition: false, scopeLine: 275, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1793 = !DISubprogram(name: "underflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9underflowEv", scope: !1689, file: !1658, line: 276, type: !1736, isLocal: false, isDefinition: false, scopeLine: 276, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1794 = !DISubprogram(name: "uflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv", scope: !1689, file: !1658, line: 277, type: !1736, isLocal: false, isDefinition: false, scopeLine: 277, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1795 = !DISubprogram(name: "pbackfail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi", scope: !1689, file: !1658, line: 280, type: !1796, isLocal: false, isDefinition: false, scopeLine: 280, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 11, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!1738, !1704, !1738}
!1798 = !DISubprogram(name: "xsputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl", scope: !1689, file: !1658, line: 283, type: !1750, isLocal: false, isDefinition: false, scopeLine: 283, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 12, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1799 = !DISubprogram(name: "overflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8overflowEi", scope: !1689, file: !1658, line: 284, type: !1796, isLocal: false, isDefinition: false, scopeLine: 284, containingType: !1689, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 13, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1800 = !DISubprogram(name: "~basic_ios", scope: !1657, file: !22, line: 623, type: !1801, isLocal: false, isDefinition: false, scopeLine: 623, containingType: !1657, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1677}
!1803 = !DISubprogram(name: "tie", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEv", scope: !1657, file: !22, line: 627, type: !1804, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1662, !1668}
!1806 = !DISubprogram(name: "tie", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEPNS_13basic_ostreamIcS2_EE", scope: !1657, file: !22, line: 629, type: !1807, isLocal: false, isDefinition: false, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1662, !1677, !1662}
!1809 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1657, file: !22, line: 632, type: !1810, isLocal: false, isDefinition: false, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1688, !1668}
!1812 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEPNS_15basic_streambufIcS2_EE", scope: !1657, file: !22, line: 634, type: !1813, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!1688, !1677, !1688}
!1815 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_", scope: !1657, file: !22, line: 636, type: !1816, isLocal: false, isDefinition: false, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1818, !1677, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1657, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1669, size: 64)
!1820 = !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1657, file: !22, line: 639, type: !1821, isLocal: false, isDefinition: false, scopeLine: 639, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !1668}
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1657, file: !22, line: 588, baseType: !162)
!1824 = !DISubprogram(name: "fill", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEc", scope: !1657, file: !22, line: 641, type: !1825, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!1823, !1677, !1823}
!1827 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1657, file: !22, line: 644, type: !1828, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!132, !1677, !155}
!1830 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE6narrowEcc", scope: !1657, file: !22, line: 647, type: !1831, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!162, !1668, !1823, !162}
!1833 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1657, file: !22, line: 649, type: !1834, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1823, !1668, !162}
!1836 = !DISubprogram(name: "basic_ios", scope: !1657, file: !22, line: 653, type: !1801, isLocal: false, isDefinition: false, scopeLine: 653, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1837 = !DISubprogram(name: "init", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE", scope: !1657, file: !22, line: 656, type: !1686, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1838 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveERS3_", scope: !1657, file: !22, line: 659, type: !1839, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !1677, !1818}
!1841 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveEOS3_", scope: !1657, file: !22, line: 662, type: !1842, isLocal: false, isDefinition: false, scopeLine: 662, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1677, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1657, size: 64)
!1845 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4swapERS3_", scope: !1657, file: !22, line: 665, type: !1839, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1846 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE9set_rdbufEPNS_15basic_streambufIcS2_EE", scope: !1657, file: !22, line: 667, type: !1686, isLocal: false, isDefinition: false, scopeLine: 667, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_ostream", scope: !1649, file: !1649, baseType: !26, size: 64, flags: DIFlagArtificial)
!1848 = !DISubprogram(name: "basic_ostream", scope: !1654, file: !1649, line: 164, type: !1849, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1851, !1688}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1852 = !DISubprogram(name: "~basic_ostream", scope: !1654, file: !1649, line: 166, type: !1853, isLocal: false, isDefinition: false, scopeLine: 166, containingType: !1654, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1851}
!1855 = !DISubprogram(name: "basic_ostream", scope: !1654, file: !1649, line: 170, type: !1856, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1851, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1654, size: 64)
!1859 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSEOS3_", scope: !1654, file: !1649, line: 174, type: !1860, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1653, !1851, !1858}
!1862 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE4swapERS3_", scope: !1654, file: !1649, line: 177, type: !1863, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1851, !1653}
!1865 = !DISubprogram(name: "basic_ostream", scope: !1654, file: !1649, line: 181, type: !1866, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1851, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1870 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSERKS3_", scope: !1654, file: !1649, line: 182, type: !1871, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1653, !1851, !1868}
!1873 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E", scope: !1654, file: !1649, line: 194, type: !1874, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1653, !1851, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1653, !1653}
!1879 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_9basic_iosIcS2_EES6_E", scope: !1654, file: !1649, line: 198, type: !1880, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1653, !1851, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1818, !1818}
!1885 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E", scope: !1654, file: !1649, line: 203, type: !1886, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1653, !1851, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!84, !84}
!1891 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb", scope: !1654, file: !1649, line: 206, type: !1892, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1653, !1851, !184}
!1894 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEs", scope: !1654, file: !1649, line: 207, type: !1895, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1653, !1851, !1897}
!1897 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1898 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt", scope: !1654, file: !1649, line: 208, type: !1899, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1653, !1851, !1901}
!1901 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1902 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi", scope: !1654, file: !1649, line: 209, type: !1903, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1653, !1851, !30}
!1905 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj", scope: !1654, file: !1649, line: 210, type: !1906, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1653, !1851, !34}
!1908 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl", scope: !1654, file: !1649, line: 211, type: !1909, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1653, !1851, !71}
!1911 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm", scope: !1654, file: !1649, line: 212, type: !1912, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1653, !1851, !92}
!1914 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx", scope: !1654, file: !1649, line: 213, type: !1915, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1653, !1851, !1270}
!1917 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy", scope: !1654, file: !1649, line: 214, type: !1918, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1653, !1851, !1920}
!1920 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1921 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf", scope: !1654, file: !1649, line: 215, type: !1922, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1653, !1851, !1924}
!1924 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1925 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd", scope: !1654, file: !1649, line: 216, type: !1926, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1653, !1851, !1928}
!1928 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1929 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEe", scope: !1654, file: !1649, line: 217, type: !1930, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1653, !1851, !1375}
!1932 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv", scope: !1654, file: !1649, line: 218, type: !1933, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1653, !1851, !245}
!1935 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPNS_15basic_streambufIcS2_EE", scope: !1654, file: !1649, line: 219, type: !1936, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1653, !1851, !1688}
!1938 = !DISubprogram(name: "put", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc", scope: !1654, file: !1649, line: 222, type: !1939, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1653, !1851, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1654, file: !1649, line: 156, baseType: !162)
!1942 = !DISubprogram(name: "write", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl", scope: !1654, file: !1649, line: 223, type: !1943, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1653, !1851, !1945, !68}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1947 = !DISubprogram(name: "flush", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv", scope: !1654, file: !1649, line: 224, type: !1948, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1653, !1851}
!1950 = !DISubprogram(name: "tellp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5tellpEv", scope: !1654, file: !1649, line: 228, type: !1951, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1953, !1851}
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1654, file: !1649, line: 159, baseType: !1720)
!1954 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpENS_4fposI11__mbstate_tEE", scope: !1654, file: !1649, line: 230, type: !1955, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1653, !1851, !1953}
!1957 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpExNS_8ios_base7seekdirE", scope: !1654, file: !1649, line: 232, type: !1958, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1653, !1851, !1960, !1247}
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1654, file: !1649, line: 160, baseType: !1724)
!1961 = !DISubprogram(name: "basic_ostream", scope: !1654, file: !1649, line: 236, type: !1853, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1962 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ostreambuf_iterator<char, std::__1::char_traits<char> >", scope: !7, file: !541, line: 1020, size: 64, elements: !1963, templateParams: !629, identifier: "_ZTSNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEE")
!1963 = !{!1964, !1972, !1975, !1981, !1984, !1988, !1991, !1992, !1995}
!1964 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1962, baseType: !1965, flags: DIFlagPublic)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::__1::output_iterator_tag, void, void, void, void>", scope: !7, file: !541, line: 531, size: 8, elements: !212, templateParams: !1966, identifier: "_ZTSNSt3__18iteratorINS_19output_iterator_tagEvvvvEE")
!1966 = !{!1967, !244, !1969, !1970, !1971}
!1967 = !DITemplateTypeParameter(name: "_Category", type: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_iterator_tag", scope: !7, file: !541, line: 444, size: 8, elements: !212, identifier: "_ZTSNSt3__119output_iterator_tagE")
!1969 = !DITemplateTypeParameter(name: "_Distance", type: null)
!1970 = !DITemplateTypeParameter(name: "_Pointer", type: null)
!1971 = !DITemplateTypeParameter(name: "_Reference", type: null)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "__sbuf_", scope: !1962, file: !541, line: 1029, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "streambuf_type", scope: !1962, file: !541, line: 1026, baseType: !1689)
!1975 = !DISubprogram(name: "ostreambuf_iterator", scope: !1962, file: !541, line: 1031, type: !1976, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1979 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream_type", scope: !1962, file: !541, line: 1027, baseType: !1654)
!1981 = !DISubprogram(name: "ostreambuf_iterator", scope: !1962, file: !541, line: 1033, type: !1982, isLocal: false, isDefinition: false, scopeLine: 1033, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1978, !1973}
!1984 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEaSEc", scope: !1962, file: !541, line: 1035, type: !1985, isLocal: false, isDefinition: false, scopeLine: 1035, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1987, !1978, !162}
!1987 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1962, size: 64)
!1988 = !DISubprogram(name: "operator*", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEdeEv", scope: !1962, file: !541, line: 1041, type: !1989, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1987, !1978}
!1991 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEv", scope: !1962, file: !541, line: 1042, type: !1989, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1992 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEi", scope: !1962, file: !541, line: 1043, type: !1993, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1987, !1978, !30}
!1995 = !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1962, file: !541, line: 1044, type: !1996, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!184, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1962)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2002, line: 474, size: 128, elements: !2003, templateParams: !2631, identifier: "_ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!2002 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2003 = !{!2004, !2582, !2583, !2589, !2593, !2620, !2628}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "base_", scope: !2001, file: !2002, line: 478, baseType: !2005, size: 128)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "base", scope: !2001, file: !2002, line: 476, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_impl<std::__1::__tuple_indices<0, 1>, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2002, line: 369, size: 128, elements: !2007, templateParams: !2569, identifier: "_ZTSNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEE")
!2007 = !{!2008, !2506, !2546, !2550, !2555, !2559, !2563, !2566}
!2008 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2006, baseType: !2009)
!2009 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, false>", scope: !7, file: !2002, line: 170, size: 64, elements: !2010, templateParams: !2503, identifier: "_ZTSNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEE")
!2010 = !{!2011, !2475, !2482, !2485, !2488, !2492, !2495, !2498}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2009, file: !2002, line: 172, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !187, line: 2334, size: 64, elements: !2013, templateParams: !2447, identifier: "_ZTSNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2013 = !{!2014, !2413, !2418, !2422, !2425, !2431, !2441, !2452, !2453, !2458, !2463, !2466, !2469, !2472}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !2012, file: !187, line: 2344, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !187, line: 2144, size: 64, elements: !2016, templateParams: !2410, identifier: "_ZTSNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEE")
!2016 = !{!2017, !2356, !2391, !2395, !2400, !2403, !2406}
!2017 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2015, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::__thread_struct *, 0, false>", scope: !7, file: !187, line: 2076, size: 64, elements: !2019, templateParams: !2354, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE")
!2019 = !{!2020, !2337, !2341, !2346}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !2018, file: !187, line: 2105, baseType: !2021, size: 64, flags: DIFlagPrivate)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct", scope: !7, file: !2023, line: 123, size: 64, elements: !2024, identifier: "_ZTSNSt3__115__thread_structE")
!2023 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2024 = !{!2025, !2028, !2034, !2038, !2041, !2042, !2332}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "__p_", scope: !2022, file: !2023, line: 125, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct_imp", scope: !7, file: !2023, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__119__thread_struct_impE")
!2028 = !DISubprogram(name: "__thread_struct", scope: !2022, file: !2023, line: 127, type: !2029, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2034 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115__thread_structaSERKS0_", scope: !2022, file: !2023, line: 128, type: !2035, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2037, !2031, !2032}
!2037 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2022, size: 64)
!2038 = !DISubprogram(name: "__thread_struct", scope: !2022, file: !2023, line: 130, type: !2039, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !2031}
!2041 = !DISubprogram(name: "~__thread_struct", scope: !2022, file: !2023, line: 131, type: !2039, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2042 = !DISubprogram(name: "notify_all_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE", scope: !2022, file: !2023, line: 133, type: !2043, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !2031, !2045, !2331}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "condition_variable", scope: !7, file: !2047, line: 281, size: 384, elements: !2048, identifier: "_ZTSNSt3__118condition_variableE")
!2047 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2048 = !{!2049, !2063, !2067, !2068, !2073, !2077, !2078, !2079, !2184, !2189}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !2046, file: !2047, line: 284, baseType: !2050, size: 384)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !7, file: !2051, line: 59, baseType: !2052)
!2051 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !2053, line: 30, baseType: !2054)
!2053 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !2055, line: 110, baseType: !2056)
!2055 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_cond_t", file: !2055, line: 68, size: 384, elements: !2057, identifier: "_ZTS22_opaque_pthread_cond_t")
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !2056, file: !2055, line: 69, baseType: !71, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !2056, file: !2055, line: 70, baseType: !2060, size: 320, offset: 64)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 320, elements: !2061)
!2061 = !{!2062}
!2062 = !DISubrange(count: 40)
!2063 = !DISubprogram(name: "condition_variable", scope: !2046, file: !2047, line: 292, type: !2064, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !2066}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2067 = !DISubprogram(name: "~condition_variable", scope: !2046, file: !2047, line: 296, type: !2064, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2068 = !DISubprogram(name: "condition_variable", scope: !2046, file: !2047, line: 299, type: !2069, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !2066, !2071}
!2071 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2046)
!2073 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118condition_variableaSERKS0_", scope: !2046, file: !2047, line: 300, type: !2074, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!2076, !2066, !2071}
!2076 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2046, size: 64)
!2077 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt3__118condition_variable10notify_oneEv", scope: !2046, file: !2047, line: 303, type: !2064, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2078 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt3__118condition_variable10notify_allEv", scope: !2046, file: !2047, line: 304, type: !2064, isLocal: false, isDefinition: false, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2079 = !DISubprogram(name: "wait", linkageName: "_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE", scope: !2046, file: !2047, line: 306, type: !2080, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2066, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_lock<std::__1::mutex>", scope: !7, file: !2047, line: 110, size: 128, elements: !2084, templateParams: !2182, identifier: "_ZTSNSt3__111unique_lockINS_5mutexEEE")
!2084 = !{!2085, !2126, !2127, !2131, !2135, !2139, !2143, !2147, !2148, !2153, !2156, !2160, !2163, !2164, !2167, !2168, !2171, !2174, !2178, !2179}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !2083, file: !2047, line: 116, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !2083, file: !2047, line: 113, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "mutex", scope: !7, file: !2047, line: 36, size: 512, elements: !2089, identifier: "_ZTSNSt3__15mutexE")
!2089 = !{!2090, !2102, !2106, !2107, !2112, !2116, !2117, !2120, !2121}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !2088, file: !2047, line: 39, baseType: !2091, size: 512)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_mutex_t", scope: !7, file: !2051, line: 53, baseType: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !2093, line: 30, baseType: !2094)
!2093 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !2055, line: 113, baseType: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !2055, line: 78, size: 512, elements: !2096, identifier: "_ZTS23_opaque_pthread_mutex_t")
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !2095, file: !2055, line: 79, baseType: !71, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !2095, file: !2055, line: 80, baseType: !2099, size: 448, offset: 64)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 448, elements: !2100)
!2100 = !{!2101}
!2101 = !DISubrange(count: 56)
!2102 = !DISubprogram(name: "mutex", scope: !2088, file: !2047, line: 47, type: !2103, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2106 = !DISubprogram(name: "~mutex", scope: !2088, file: !2047, line: 51, type: !2103, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2107 = !DISubprogram(name: "mutex", scope: !2088, file: !2047, line: 54, type: !2108, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !2105, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2112 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15mutexaSERKS0_", scope: !2088, file: !2047, line: 55, type: !2113, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!2115, !2105, !2110}
!2115 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2088, size: 64)
!2116 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__15mutex4lockEv", scope: !2088, file: !2047, line: 58, type: !2103, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2117 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__15mutex8try_lockEv", scope: !2088, file: !2047, line: 59, type: !2118, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!184, !2105}
!2120 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__15mutex6unlockEv", scope: !2088, file: !2047, line: 60, type: !2103, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2121 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__15mutex13native_handleEv", scope: !2088, file: !2047, line: 63, type: !2122, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2124, !2105}
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !2088, file: !2047, line: 62, baseType: !2125)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "__owns_", scope: !2083, file: !2047, line: 117, baseType: !184, size: 8, offset: 64)
!2127 = !DISubprogram(name: "unique_lock", scope: !2083, file: !2047, line: 121, type: !2128, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2131 = !DISubprogram(name: "unique_lock", scope: !2083, file: !2047, line: 123, type: !2132, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2130, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2087, size: 64)
!2135 = !DISubprogram(name: "unique_lock", scope: !2083, file: !2047, line: 126, type: !2136, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2130, !2134, !2138}
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defer_lock_t", scope: !7, file: !2047, line: 66, size: 8, elements: !212, identifier: "_ZTSNSt3__112defer_lock_tE")
!2139 = !DISubprogram(name: "unique_lock", scope: !2083, file: !2047, line: 129, type: !2140, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2130, !2134, !2142}
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "try_to_lock_t", scope: !7, file: !2047, line: 67, size: 8, elements: !212, identifier: "_ZTSNSt3__113try_to_lock_tE")
!2143 = !DISubprogram(name: "unique_lock", scope: !2083, file: !2047, line: 132, type: !2144, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2130, !2134, !2146}
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adopt_lock_t", scope: !7, file: !2047, line: 68, size: 8, elements: !212, identifier: "_ZTSNSt3__112adopt_lock_tE")
!2147 = !DISubprogram(name: "~unique_lock", scope: !2083, file: !2047, line: 143, type: !2128, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2148 = !DISubprogram(name: "unique_lock", scope: !2083, file: !2047, line: 150, type: !2149, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !2130, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2153 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSERKS2_", scope: !2083, file: !2047, line: 151, type: !2154, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2082, !2130, !2151}
!2156 = !DISubprogram(name: "unique_lock", scope: !2083, file: !2047, line: 156, type: !2157, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2130, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2083, size: 64)
!2160 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSEOS2_", scope: !2083, file: !2047, line: 160, type: !2161, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2082, !2130, !2159}
!2163 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4lockEv", scope: !2083, file: !2047, line: 173, type: !2128, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2164 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE8try_lockEv", scope: !2083, file: !2047, line: 174, type: !2165, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!184, !2130}
!2167 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE6unlockEv", scope: !2083, file: !2047, line: 181, type: !2128, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2168 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4swapERS2_", scope: !2083, file: !2047, line: 184, type: !2169, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2130, !2082}
!2171 = !DISubprogram(name: "release", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE7releaseEv", scope: !2083, file: !2047, line: 190, type: !2172, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!2086, !2130}
!2174 = !DISubprogram(name: "owns_lock", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE9owns_lockEv", scope: !2083, file: !2047, line: 199, type: !2175, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!184, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2178 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEEcvbEv", scope: !2083, file: !2047, line: 202, type: !2175, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!2179 = !DISubprogram(name: "mutex", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE5mutexEv", scope: !2083, file: !2047, line: 204, type: !2180, isLocal: false, isDefinition: false, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2086, !2177}
!2182 = !{!2183}
!2183 = !DITemplateTypeParameter(name: "_Mutex", type: !2088)
!2184 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__118condition_variable13native_handleEv", scope: !2046, file: !2047, line: 338, type: !2185, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2187, !2066}
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !2046, file: !2047, line: 337, baseType: !2188)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2189 = !DISubprogram(name: "__do_timed_wait", linkageName: "_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE", scope: !2046, file: !2047, line: 341, type: !2190, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !2066, !2082, !2192}
!2192 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !1259, file: !1257, line: 831, size: 64, elements: !2193, templateParams: !2219, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE")
!2193 = !{!2194, !2196, !2200, !2205, !2210, !2214, !2215, !2218}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !2192, file: !1257, line: 841, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !2192, file: !1257, line: 837, baseType: !1538)
!2196 = !DISubprogram(name: "time_point", scope: !2192, file: !1257, line: 844, type: !2197, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2200 = !DISubprogram(name: "time_point", scope: !2192, file: !1257, line: 845, type: !2201, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2199, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2195)
!2205 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv", scope: !2192, file: !1257, line: 859, type: !2206, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!2195, !2208}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2210 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEpLERKS6_", scope: !2192, file: !1257, line: 863, type: !2211, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!2213, !2199, !2203}
!2213 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2192, size: 64)
!2214 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEmIERKS6_", scope: !2192, file: !1257, line: 864, type: !2211, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2215 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3minEv", scope: !2192, file: !1257, line: 868, type: !2216, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!2192}
!2218 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3maxEv", scope: !2192, file: !1257, line: 869, type: !2216, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2219 = !{!2220, !2330}
!2220 = !DITemplateTypeParameter(name: "_Clock", type: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "system_clock", scope: !1259, file: !1257, line: 1047, size: 8, elements: !2222, identifier: "_ZTSNSt3__16chrono12system_clockE")
!2222 = !{!2223, !2224, !2319, !2327}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "is_steady", scope: !2221, file: !1257, line: 1054, baseType: !308, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 false)
!2224 = !DISubprogram(name: "now", linkageName: "_ZNSt3__16chrono12system_clock3nowEv", scope: !2221, file: !1257, line: 1056, type: !2225, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!2227}
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_point", scope: !2221, file: !1257, line: 1053, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !1259, file: !1257, line: 831, size: 64, elements: !2229, templateParams: !2317, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE")
!2229 = !{!2230, !2294, !2298, !2303, !2308, !2312, !2313, !2316}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !2228, file: !1257, line: 841, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !2228, file: !1257, line: 837, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000> >", scope: !1259, file: !1257, line: 488, size: 64, elements: !2233, templateParams: !2282, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEE")
!2233 = !{!2234, !2236, !2240, !2245, !2254, !2255, !2259, !2262, !2263, !2264, !2268, !2269, !2274, !2275, !2276, !2277, !2280, !2281}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !2232, file: !1257, line: 528, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !2232, file: !1257, line: 525, baseType: !1270)
!2236 = !DISubprogram(name: "duration", scope: !2232, file: !1257, line: 533, type: !2237, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !2239}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2240 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv", scope: !2232, file: !1257, line: 564, type: !2241, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2235, !2243}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2232)
!2245 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpsEv", scope: !2232, file: !1257, line: 568, type: !2246, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!2248, !2243}
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2249, file: !1257, line: 343, baseType: !2232)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !7, file: !1257, line: 339, size: 8, elements: !212, templateParams: !2250, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEES5_EEE")
!2250 = !{!2251}
!2251 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2252)
!2252 = !{!2253, !2253}
!2253 = !DITemplateTypeParameter(type: !2232)
!2254 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEngEv", scope: !2232, file: !1257, line: 569, type: !2246, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2255 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEv", scope: !2232, file: !1257, line: 570, type: !2256, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2258, !2239}
!2258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2232, size: 64)
!2259 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEi", scope: !2232, file: !1257, line: 571, type: !2260, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!2232, !2239, !30}
!2262 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEv", scope: !2232, file: !1257, line: 572, type: !2256, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2263 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEi", scope: !2232, file: !1257, line: 573, type: !2260, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2264 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpLERKS4_", scope: !2232, file: !1257, line: 575, type: !2265, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!2258, !2239, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2244, size: 64)
!2268 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmIERKS4_", scope: !2232, file: !1257, line: 576, type: !2265, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2269 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmLERKx", scope: !2232, file: !1257, line: 578, type: !2270, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2258, !2239, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2235)
!2274 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEdVERKx", scope: !2232, file: !1257, line: 579, type: !2270, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2275 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKx", scope: !2232, file: !1257, line: 580, type: !2270, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2276 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKS4_", scope: !2232, file: !1257, line: 581, type: !2265, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2277 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE4zeroEv", scope: !2232, file: !1257, line: 585, type: !2278, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!2232}
!2280 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3minEv", scope: !2232, file: !1257, line: 586, type: !2278, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2281 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3maxEv", scope: !2232, file: !1257, line: 587, type: !2278, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2282 = !{!1318, !2283}
!2283 = !DITemplateTypeParameter(name: "_Period", type: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000>", scope: !7, file: !1321, line: 247, size: 8, elements: !2285, templateParams: !2292, identifier: "_ZTSNSt3__15ratioILl1ELl1000000EEE")
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !2284, file: !1321, line: 252, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !2284, file: !1321, line: 253, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1000000)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !2284, file: !1321, line: 254, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !2284, file: !1321, line: 255, baseType: !1324, flags: DIFlagStaticMember, extraData: i64 1)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2284, file: !1321, line: 257, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !2284, file: !1321, line: 258, baseType: !1324, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000)
!2292 = !{!1333, !2293}
!2293 = !DITemplateValueParameter(name: "_Den", type: !71, value: i64 1000000)
!2294 = !DISubprogram(name: "time_point", scope: !2228, file: !1257, line: 844, type: !2295, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2298 = !DISubprogram(name: "time_point", scope: !2228, file: !1257, line: 845, type: !2299, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !2297, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2303 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochEv", scope: !2228, file: !1257, line: 859, type: !2304, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!2231, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2228)
!2308 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEpLERKS6_", scope: !2228, file: !1257, line: 863, type: !2309, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!2311, !2297, !2301}
!2311 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2228, size: 64)
!2312 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEmIERKS6_", scope: !2228, file: !1257, line: 864, type: !2309, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2313 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3minEv", scope: !2228, file: !1257, line: 868, type: !2314, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!2228}
!2316 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3maxEv", scope: !2228, file: !1257, line: 869, type: !2314, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2317 = !{!2220, !2318}
!2318 = !DITemplateTypeParameter(name: "_Duration", type: !2232)
!2319 = !DISubprogram(name: "to_time_t", linkageName: "_ZNSt3__16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE", scope: !2221, file: !1257, line: 1057, type: !2320, isLocal: false, isDefinition: false, scopeLine: 1057, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2322, !2325}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2323, line: 30, baseType: !2324)
!2323 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !91, line: 120, baseType: !71)
!2325 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2227)
!2327 = !DISubprogram(name: "from_time_t", linkageName: "_ZNSt3__16chrono12system_clock11from_time_tEl", scope: !2221, file: !1257, line: 1058, type: !2328, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!2227, !2322}
!2330 = !DITemplateTypeParameter(name: "_Duration", type: !1538)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2332 = !DISubprogram(name: "__make_ready_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct27__make_ready_at_thread_exitEPNS_17__assoc_sub_stateE", scope: !2022, file: !2023, line: 134, type: !2333, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2031, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_class_type, name: "__assoc_sub_state", scope: !7, file: !2023, line: 119, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__117__assoc_sub_stateE")
!2337 = !DISubprogram(name: "__compressed_pair_elem", scope: !2018, file: !187, line: 2082, type: !2338, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2341 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2018, file: !187, line: 2101, type: !2342, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2344, !2340}
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2018, file: !187, line: 2078, baseType: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2021, size: 64)
!2346 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2018, file: !187, line: 2102, type: !2347, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2349, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2018, file: !187, line: 2079, baseType: !2350)
!2350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2021)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2354 = !{!2355, !394, !395}
!2355 = !DITemplateTypeParameter(name: "_Tp", type: !2021)
!2356 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2015, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, 1, true>", scope: !7, file: !187, line: 2109, size: 8, elements: !2358, templateParams: !2389, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEE")
!2358 = !{!2359, !2373, !2377, !2382}
!2359 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2357, baseType: !2360, flags: DIFlagPrivate)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::__thread_struct>", scope: !7, file: !187, line: 2253, size: 8, elements: !2361, templateParams: !2371, identifier: "_ZTSNSt3__114default_deleteINS_15__thread_structEEE")
!2361 = !{!2362, !2366}
!2362 = !DISubprogram(name: "default_delete", scope: !2360, file: !187, line: 2257, type: !2363, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: false)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2366 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2360, file: !187, line: 2267, type: !2367, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !2369, !2021}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!2371 = !{!2372}
!2372 = !DITemplateTypeParameter(name: "_Tp", type: !2022)
!2373 = !DISubprogram(name: "__compressed_pair_elem", scope: !2357, file: !187, line: 2116, type: !2374, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2377 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2357, file: !187, line: 2136, type: !2378, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2380, !2376}
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2357, file: !187, line: 2111, baseType: !2381)
!2381 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2360, size: 64)
!2382 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2357, file: !187, line: 2137, type: !2383, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: false)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!2385, !2387}
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2357, file: !187, line: 2112, baseType: !2386)
!2386 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2370, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2389 = !{!2390, !418, !419}
!2390 = !DITemplateTypeParameter(name: "_Tp", type: !2360)
!2391 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2015, file: !187, line: 2212, type: !2392, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!2344, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2395 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2015, file: !187, line: 2217, type: !2396, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!2349, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2015)
!2400 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !2015, file: !187, line: 2222, type: !2401, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!2380, !2394}
!2403 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !2015, file: !187, line: 2227, type: !2404, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!2385, !2398}
!2406 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE4swapERS5_", scope: !2015, file: !187, line: 2232, type: !2407, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2394, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2015, size: 64)
!2410 = !{!2411, !2412}
!2411 = !DITemplateTypeParameter(name: "_T1", type: !2021)
!2412 = !DITemplateTypeParameter(name: "_T2", type: !2360)
!2413 = !DISubprogram(name: "unique_ptr", scope: !2012, file: !187, line: 2427, type: !2414, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2417 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2012, size: 64)
!2418 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEOS4_", scope: !2012, file: !187, line: 2450, type: !2419, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2421, !2416, !2417}
!2421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2012, size: 64)
!2422 = !DISubprogram(name: "~unique_ptr", scope: !2012, file: !187, line: 2539, type: !2423, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2416}
!2425 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEDn", scope: !2012, file: !187, line: 2542, type: !2426, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!2421, !2416, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !9, file: !2429, line: 57, baseType: !2430)
!2429 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2430 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!2431 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !2012, file: !187, line: 2549, type: !2432, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!2434, !2439}
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2435, file: !282, line: 1084, baseType: !2436)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::__thread_struct>", scope: !7, file: !282, line: 1083, size: 8, elements: !212, templateParams: !2371, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_15__thread_structEEE")
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2437, file: !282, line: 1081, baseType: !2037)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::__thread_struct, true>", scope: !7, file: !282, line: 1081, size: 8, elements: !212, templateParams: !2438, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_15__thread_structELb1EEE")
!2438 = !{!2372, !183}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2441 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEptEv", scope: !2012, file: !187, line: 2553, type: !2442, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2444, !2439}
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2012, file: !187, line: 2338, baseType: !2445)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2446, file: !187, line: 1031, baseType: !2449)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !187, line: 1029, size: 8, elements: !212, templateParams: !2447, identifier: "_ZTSNSt3__114__pointer_typeINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2447 = !{!2372, !2448}
!2448 = !DITemplateTypeParameter(name: "_Dp", type: !2360)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2450, file: !187, line: 1023, baseType: !2021)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>, false>", scope: !259, file: !187, line: 1021, size: 8, elements: !212, templateParams: !2451, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_15__thread_structENS_14default_deleteIS2_EELb0EEE")
!2451 = !{!2372, !2448, !272}
!2452 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE3getEv", scope: !2012, file: !187, line: 2557, type: !2442, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2453 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !2012, file: !187, line: 2561, type: !2454, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!2456, !2416}
!2456 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !2012, file: !187, line: 2337, baseType: !2360)
!2458 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !2012, file: !187, line: 2565, type: !2459, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!2461, !2439}
!2461 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2463 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEcvbEv", scope: !2012, file: !187, line: 2569, type: !2464, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!184, !2439}
!2466 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !2012, file: !187, line: 2574, type: !2467, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!2444, !2416}
!2469 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !2012, file: !187, line: 2581, type: !2470, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2416, !2444}
!2472 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE4swapERS4_", scope: !2012, file: !187, line: 2589, type: !2473, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !2416, !2421}
!2475 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEaSERKS6_", scope: !2009, file: !2002, line: 188, type: !2476, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!2478, !2479, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2009, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2480 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2482 = !DISubprogram(name: "__tuple_leaf", scope: !2009, file: !2002, line: 190, type: !2483, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !2479}
!2485 = !DISubprogram(name: "__tuple_leaf", scope: !2009, file: !2002, line: 251, type: !2486, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !2479, !2480}
!2488 = !DISubprogram(name: "__tuple_leaf", scope: !2009, file: !2002, line: 252, type: !2489, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2479, !2491}
!2491 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2009, size: 64)
!2492 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE4swapERS6_", scope: !2009, file: !2002, line: 264, type: !2493, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!30, !2479, !2478}
!2495 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !2009, file: !2002, line: 270, type: !2496, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!2421, !2479}
!2498 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !2009, file: !2002, line: 271, type: !2499, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2440, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2503 = !{!2504, !2505, !272}
!2504 = !DITemplateValueParameter(name: "_Ip", type: !92, value: i64 0)
!2505 = !DITemplateTypeParameter(name: "_Hp", type: !2012)
!2506 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2006, baseType: !2507, offset: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<1, void (*)(), false>", scope: !7, file: !2002, line: 170, size: 64, elements: !2508, templateParams: !2543, identifier: "_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE")
!2508 = !{!2509, !2513, !2520, !2523, !2526, !2530, !2533, !2537}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2507, file: !2002, line: 172, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null}
!2513 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEaSERKS3_", scope: !2507, file: !2002, line: 188, type: !2514, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2507, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2518 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2520 = !DISubprogram(name: "__tuple_leaf", scope: !2507, file: !2002, line: 190, type: !2521, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !2517}
!2523 = !DISubprogram(name: "__tuple_leaf", scope: !2507, file: !2002, line: 251, type: !2524, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2517, !2518}
!2526 = !DISubprogram(name: "__tuple_leaf", scope: !2507, file: !2002, line: 252, type: !2527, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !2517, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2507, size: 64)
!2530 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE4swapERS3_", scope: !2507, file: !2002, line: 264, type: !2531, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!30, !2517, !2516}
!2533 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2507, file: !2002, line: 270, type: !2534, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!2536, !2517}
!2536 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2510, size: 64)
!2537 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2507, file: !2002, line: 271, type: !2538, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2540, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2510)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2543 = !{!2544, !2545, !272}
!2544 = !DITemplateValueParameter(name: "_Ip", type: !92, value: i64 1)
!2545 = !DITemplateTypeParameter(name: "_Hp", type: !2510)
!2546 = !DISubprogram(name: "__tuple_impl", scope: !2006, file: !2002, line: 373, type: !2547, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2550 = !DISubprogram(name: "__tuple_impl", scope: !2006, file: !2002, line: 444, type: !2551, isLocal: false, isDefinition: false, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: false)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !2549, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2006)
!2555 = !DISubprogram(name: "__tuple_impl", scope: !2006, file: !2002, line: 445, type: !2556, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: false)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2549, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2006, size: 64)
!2559 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSERKSA_", scope: !2006, file: !2002, line: 449, type: !2560, isLocal: false, isDefinition: false, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!2562, !2549, !2553}
!2562 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2006, size: 64)
!2563 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSEOSA_", scope: !2006, file: !2002, line: 457, type: !2564, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!2562, !2549, !2558}
!2566 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEE4swapERSA_", scope: !2006, file: !2002, line: 464, type: !2567, isLocal: false, isDefinition: false, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: false)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !2549, !2562}
!2569 = !{!2570, !2578}
!2570 = !DITemplateTypeParameter(name: "_Indx", type: !2571)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<0, 1>", scope: !7, file: !2572, line: 90, size: 8, elements: !212, templateParams: !2573, identifier: "_ZTSNSt3__115__tuple_indicesIJLm0ELm1EEEE")
!2572 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2573 = !{!2574}
!2574 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !2575)
!2575 = !{!2576, !2577}
!2576 = !DITemplateValueParameter(type: !92, value: i64 0)
!2577 = !DITemplateValueParameter(type: !92, value: i64 1)
!2578 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2579)
!2579 = !{!2580, !2581}
!2580 = !DITemplateTypeParameter(type: !2012)
!2581 = !DITemplateTypeParameter(type: !2510)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_EnableImplicitReducedArityExtension", scope: !2001, file: !2002, line: 483, baseType: !308, flags: DIFlagStaticMember, extraData: i1 false)
!2583 = !DISubprogram(name: "tuple", scope: !2001, file: !2002, line: 620, type: !2584, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2587 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2589 = !DISubprogram(name: "tuple", scope: !2001, file: !2002, line: 621, type: !2590, isLocal: false, isDefinition: false, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !2586, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2001, size: 64)
!2593 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSERKNS_5__natE", scope: !2001, file: !2002, line: 876, type: !2594, isLocal: false, isDefinition: false, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2596, !2586, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2001, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2599)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2600, file: !282, line: 414, baseType: !2604)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !282, line: 414, size: 8, elements: !212, templateParams: !2601, identifier: "_ZTSNSt3__111conditionalILb0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2601 = !{!285, !2602, !2603}
!2602 = !DITemplateTypeParameter(name: "_If", type: !2001)
!2603 = !DITemplateTypeParameter(name: "_Then", type: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !7, file: !282, line: 1584, size: 8, elements: !2605, identifier: "_ZTSNSt3__15__natE")
!2605 = !{!2606, !2610, !2615, !2619}
!2606 = !DISubprogram(name: "__nat", scope: !2604, file: !282, line: 1587, type: !2607, isLocal: false, isDefinition: false, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: false)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2610 = !DISubprogram(name: "__nat", scope: !2604, file: !282, line: 1588, type: !2611, isLocal: false, isDefinition: false, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: false)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2609, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2615 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15__nataSERKS0_", scope: !2604, file: !282, line: 1589, type: !2616, isLocal: false, isDefinition: false, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: false)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2618, !2609, !2613}
!2618 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2604, size: 64)
!2619 = !DISubprogram(name: "~__nat", scope: !2604, file: !282, line: 1590, type: !2607, isLocal: false, isDefinition: false, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: false)
!2620 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSEOS8_", scope: !2001, file: !2002, line: 884, type: !2621, isLocal: false, isDefinition: false, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!2596, !2586, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2625, file: !282, line: 412, baseType: !2001)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !282, line: 412, size: 8, elements: !212, templateParams: !2626, identifier: "_ZTSNSt3__111conditionalILb1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2626 = !{!2627, !2602, !2603}
!2627 = !DITemplateValueParameter(name: "_Bp", type: !184, value: i8 1)
!2628 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEE4swapERS8_", scope: !2001, file: !2002, line: 906, type: !2629, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !2586, !2596}
!2631 = !{!2578}
!2632 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__libcpp_numeric_limits<long long, true>", scope: !7, file: !6, line: 198, size: 8, elements: !2633, templateParams: !2674, identifier: "_ZTSNSt3__123__libcpp_numeric_limitsIxLb1EEE")
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2663, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "is_specialized", scope: !2632, file: !6, line: 203, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2632, file: !6, line: 205, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !2632, file: !6, line: 206, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 63)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "digits10", scope: !2632, file: !6, line: 207, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 18)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "max_digits10", scope: !2632, file: !6, line: 208, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "__min", scope: !2632, file: !6, line: 209, baseType: !2640, flags: DIFlagProtected | DIFlagStaticMember, extraData: i64 -9223372036854775808)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2641)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2632, file: !6, line: 201, baseType: !1270)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "__max", scope: !2632, file: !6, line: 210, baseType: !2640, flags: DIFlagProtected | DIFlagStaticMember, extraData: i64 9223372036854775807)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "is_integer", scope: !2632, file: !6, line: 215, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "is_exact", scope: !2632, file: !6, line: 216, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !2632, file: !6, line: 217, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 2)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent", scope: !2632, file: !6, line: 221, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent10", scope: !2632, file: !6, line: 222, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent", scope: !2632, file: !6, line: 223, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent10", scope: !2632, file: !6, line: 224, baseType: !1336, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "has_infinity", scope: !2632, file: !6, line: 226, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "has_quiet_NaN", scope: !2632, file: !6, line: 227, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "has_signaling_NaN", scope: !2632, file: !6, line: 228, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !2632, file: !6, line: 229, baseType: !2654, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!2654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm_loss", scope: !2632, file: !6, line: 230, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "is_iec559", scope: !2632, file: !6, line: 236, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "is_bounded", scope: !2632, file: !6, line: 237, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "is_modulo", scope: !2632, file: !6, line: 238, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !2632, file: !6, line: 242, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 true)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "tinyness_before", scope: !2632, file: !6, line: 246, baseType: !308, flags: DIFlagProtected | DIFlagStaticMember, extraData: i1 false)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "round_style", scope: !2632, file: !6, line: 247, baseType: !2662, flags: DIFlagProtected | DIFlagStaticMember, extraData: i32 0)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2663 = !DISubprogram(name: "min", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3minEv", scope: !2632, file: !6, line: 211, type: !2664, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!2641}
!2666 = !DISubprogram(name: "max", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxEv", scope: !2632, file: !6, line: 212, type: !2664, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2667 = !DISubprogram(name: "lowest", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE6lowestEv", scope: !2632, file: !6, line: 213, type: !2664, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2668 = !DISubprogram(name: "epsilon", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE7epsilonEv", scope: !2632, file: !6, line: 218, type: !2664, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2669 = !DISubprogram(name: "round_error", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE11round_errorEv", scope: !2632, file: !6, line: 219, type: !2664, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2670 = !DISubprogram(name: "infinity", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE8infinityEv", scope: !2632, file: !6, line: 231, type: !2664, isLocal: false, isDefinition: false, scopeLine: 231, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2671 = !DISubprogram(name: "quiet_NaN", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE9quiet_NaNEv", scope: !2632, file: !6, line: 232, type: !2664, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2672 = !DISubprogram(name: "signaling_NaN", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE13signaling_NaNEv", scope: !2632, file: !6, line: 233, type: !2664, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2673 = !DISubprogram(name: "denorm_min", linkageName: "_ZNSt3__123__libcpp_numeric_limitsIxLb1EE10denorm_minEv", scope: !2632, file: !6, line: 234, type: !2664, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!2674 = !{!1344, !183}
!2675 = !{!0, !2676, !2678, !2680, !2682}
!2676 = !DIGlobalVariableExpression(var: !2677)
!2677 = distinct !DIGlobalVariable(name: "mutex", scope: !2, file: !3, line: 8, type: !2088, isLocal: false, isDefinition: true)
!2678 = !DIGlobalVariableExpression(var: !2679)
!2679 = distinct !DIGlobalVariable(name: "job_shared", scope: !2, file: !3, line: 9, type: !30, isLocal: false, isDefinition: true)
!2680 = !DIGlobalVariableExpression(var: !2681)
!2681 = distinct !DIGlobalVariable(name: "job_exclusive", scope: !2, file: !3, line: 12, type: !30, isLocal: false, isDefinition: true)
!2682 = !DIGlobalVariableExpression(var: !2683)
!2683 = distinct !DIGlobalVariable(name: "_Max", scope: !2684, file: !2023, line: 435, type: !1370, isLocal: true, isDefinition: true)
!2684 = distinct !DISubprogram(name: "sleep_for<long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE", scope: !2685, file: !2023, line: 430, type: !2686, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !1317, variables: !212)
!2685 = !DINamespace(name: "this_thread", scope: !7, file: !2023, line: 204)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !1302}
!2688 = !{!2689, !2693, !2694, !2695, !2710, !2714, !2718, !2723, !2728, !2734, !2740, !2744, !2746, !2750, !2751, !2752, !2755, !2759, !2762, !2763, !2766, !2769, !2772, !2775, !2778, !2781, !2783, !2785, !2787, !2789, !2791, !2793, !2795, !2797, !2799, !2801, !2803, !2805, !2807, !2809, !2811, !2815, !2818, !2819, !2822, !2823, !2830, !2836, !2842, !2846, !2850, !2854, !2858, !2863, !2867, !2871, !2875, !2879, !2883, !2887, !2889, !2893, !2897, !2901, !2905, !2909, !2911, !2915, !2919, !2921, !2925, !2927, !2934, !2938, !2943, !2947, !2949, !2953, !2957, !2959, !2963, !2969, !2973, !2977, !2983, !2984, !2989, !2991, !2995, !2999, !3001, !3003, !3007, !3011, !3015, !3017, !3021, !3026, !3030, !3034, !3036, !3038, !3040, !3042, !3044, !3046, !3050, !3054, !3106, !3107, !3108, !3113, !3115, !3119, !3123, !3127, !3129, !3133, !3137, !3141, !3152, !3154, !3158, !3162, !3166, !3168, !3172, !3176, !3180, !3182, !3184, !3186, !3190, !3194, !3199, !3203, !3209, !3213, !3217, !3219, !3221, !3223, !3227, !3231, !3235, !3237, !3239, !3243, !3247, !3249, !3251, !3255, !3259, !3261, !3265, !3267, !3269, !3272, !3274, !3276, !3278, !3280, !3282, !3284, !3286, !3288, !3290, !3292, !3294, !3296, !3298, !3302, !3307, !3312, !3317, !3319, !3322, !3324, !3326, !3328, !3330, !3332, !3334, !3336, !3338, !3340, !3344, !3348, !3352, !3354, !3358, !3362, !3374, !3375, !3376, !3377, !3378, !3383, !3385, !3389, !3393, !3397, !3401, !3403, !3407, !3411, !3415, !3419, !3423, !3427, !3429, !3431, !3435, !3440, !3444, !3448, !3452, !3456, !3460, !3464, !3468, !3472, !3474, !3476, !3480, !3482, !3486, !3490, !3495, !3497, !3499, !3501, !3505, !3509, !3513, !3515, !3519, !3521, !3523, !3525, !3527, !3531, !3535, !3537, !3543, !3548, !3552, !3556, !3561, !3566, !3570, !3574, !3578, !3582, !3584, !3586}
!2689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2690, line: 56)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !2691, line: 30, baseType: !2692)
!2691 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !91, line: 117, baseType: !92)
!2693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !88, line: 57)
!2694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2322, line: 58)
!2695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2696, line: 59)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2697, line: 73, size: 448, elements: !2698, identifier: "_ZTS2tm")
!2697 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2696, file: !2697, line: 74, baseType: !30, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2696, file: !2697, line: 75, baseType: !30, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2696, file: !2697, line: 76, baseType: !30, size: 32, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2696, file: !2697, line: 77, baseType: !30, size: 32, offset: 96)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2696, file: !2697, line: 78, baseType: !30, size: 32, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2696, file: !2697, line: 79, baseType: !30, size: 32, offset: 160)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2696, file: !2697, line: 80, baseType: !30, size: 32, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2696, file: !2697, line: 81, baseType: !30, size: 32, offset: 224)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2696, file: !2697, line: 82, baseType: !30, size: 32, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2696, file: !2697, line: 83, baseType: !71, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2696, file: !2697, line: 84, baseType: !226, size: 64, offset: 384)
!2710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2711, line: 60)
!2711 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !2697, file: !2697, line: 107, type: !2712, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!2690}
!2714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2715, line: 61)
!2715 = !DISubprogram(name: "difftime", scope: !2697, file: !2697, line: 109, type: !2716, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!1928, !2322, !2322}
!2718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2719, line: 62)
!2719 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !2697, file: !2697, line: 113, type: !2720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!2322, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2724, line: 63)
!2724 = !DISubprogram(name: "time", scope: !2697, file: !2697, line: 116, type: !2725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!2322, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2729, line: 65)
!2729 = !DISubprogram(name: "asctime", scope: !2697, file: !2697, line: 106, type: !2730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!226, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2735, line: 66)
!2735 = !DISubprogram(name: "ctime", scope: !2697, file: !2697, line: 108, type: !2736, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!226, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2741, line: 67)
!2741 = !DISubprogram(name: "gmtime", scope: !2697, file: !2697, line: 111, type: !2742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!2722, !2738}
!2744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2745, line: 68)
!2745 = !DISubprogram(name: "localtime", scope: !2697, file: !2697, line: 112, type: !2742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2747, line: 70)
!2747 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !2697, file: !2697, line: 114, type: !2748, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!88, !226, !88, !160, !2732}
!2750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !69, line: 49)
!2751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !88, line: 50)
!2752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2753, line: 55)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !2754, line: 32, baseType: !1375)
!2754 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2756, line: 153)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !2757, line: 30, baseType: !2758)
!2757 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2758 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2760, line: 154)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !2761, line: 30, baseType: !1897)
!2761 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1159, line: 155)
!2763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2764, line: 156)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !2765, line: 30, baseType: !1270)
!2765 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2767, line: 158)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !2768, line: 31, baseType: !361)
!2768 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2770, line: 159)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !2771, line: 31, baseType: !1901)
!2771 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2773, line: 160)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !2774, line: 31, baseType: !34)
!2774 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2776, line: 161)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !2777, line: 31, baseType: !1920)
!2777 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2779, line: 163)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !2780, line: 29, baseType: !2756)
!2780 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2782, line: 164)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !2780, line: 30, baseType: !2760)
!2783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2784, line: 165)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !2780, line: 31, baseType: !1159)
!2785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2786, line: 166)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !2780, line: 32, baseType: !2764)
!2787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2788, line: 168)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !2780, line: 33, baseType: !2767)
!2789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2790, line: 169)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !2780, line: 34, baseType: !2770)
!2791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2792, line: 170)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !2780, line: 35, baseType: !2773)
!2793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2794, line: 171)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !2780, line: 36, baseType: !2776)
!2795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2796, line: 173)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !2780, line: 40, baseType: !2756)
!2797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2798, line: 174)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !2780, line: 41, baseType: !2760)
!2799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2800, line: 175)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !2780, line: 42, baseType: !1159)
!2801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2802, line: 176)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !2780, line: 43, baseType: !2764)
!2803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2804, line: 178)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !2780, line: 44, baseType: !2767)
!2805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2806, line: 179)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !2780, line: 45, baseType: !2770)
!2807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2808, line: 180)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !2780, line: 46, baseType: !2773)
!2809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2810, line: 181)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !2780, line: 47, baseType: !2776)
!2811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2812, line: 183)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !2813, line: 30, baseType: !2814)
!2813 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !91, line: 49, baseType: !71)
!2815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2816, line: 184)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !2817, line: 30, baseType: !92)
!2817 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1325, line: 186)
!2819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2820, line: 187)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2821, line: 32, baseType: !92)
!2821 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !88, line: 100)
!2823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2824, line: 101)
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !2825, line: 85, baseType: !2826)
!2825 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2825, line: 82, size: 64, elements: !2827, identifier: "_ZTS5div_t")
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2826, file: !2825, line: 83, baseType: !30, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2826, file: !2825, line: 84, baseType: !30, size: 32, offset: 32)
!2830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2831, line: 102)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !2825, line: 90, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2825, line: 87, size: 128, elements: !2833, identifier: "_ZTS6ldiv_t")
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2832, file: !2825, line: 88, baseType: !71, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2832, file: !2825, line: 89, baseType: !71, size: 64, offset: 64)
!2836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2837, line: 104)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !2825, line: 96, baseType: !2838)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2825, line: 93, size: 128, elements: !2839, identifier: "_ZTS7lldiv_t")
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2838, file: !2825, line: 94, baseType: !1270, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2838, file: !2825, line: 95, baseType: !1270, size: 64, offset: 64)
!2842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2843, line: 106)
!2843 = !DISubprogram(name: "atof", scope: !2825, file: !2825, line: 131, type: !2844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!1928, !160}
!2846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2847, line: 107)
!2847 = !DISubprogram(name: "atoi", scope: !2825, file: !2825, line: 132, type: !2848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!30, !160}
!2850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2851, line: 108)
!2851 = !DISubprogram(name: "atol", scope: !2825, file: !2825, line: 133, type: !2852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!71, !160}
!2854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2855, line: 110)
!2855 = !DISubprogram(name: "atoll", scope: !2825, file: !2825, line: 136, type: !2856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!1270, !160}
!2858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2859, line: 112)
!2859 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !2825, file: !2825, line: 162, type: !2860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!1928, !160, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!2863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2864, line: 113)
!2864 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !2825, file: !2825, line: 163, type: !2865, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!1924, !160, !2862}
!2867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2868, line: 114)
!2868 = !DISubprogram(name: "strtold", scope: !2825, file: !2825, line: 166, type: !2869, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!1375, !160, !2862}
!2871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2872, line: 115)
!2872 = !DISubprogram(name: "strtol", scope: !2825, file: !2825, line: 164, type: !2873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!71, !160, !2862, !30}
!2875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2876, line: 117)
!2876 = !DISubprogram(name: "strtoll", scope: !2825, file: !2825, line: 169, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!1270, !160, !2862, !30}
!2879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2880, line: 119)
!2880 = !DISubprogram(name: "strtoul", scope: !2825, file: !2825, line: 172, type: !2881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!92, !160, !2862, !30}
!2883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2884, line: 121)
!2884 = !DISubprogram(name: "strtoull", scope: !2825, file: !2825, line: 175, type: !2885, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!1920, !160, !2862, !30}
!2887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2888, line: 123)
!2888 = !DISubprogram(name: "rand", scope: !2825, file: !2825, line: 159, type: !28, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2890, line: 124)
!2890 = !DISubprogram(name: "srand", scope: !2825, file: !2825, line: 161, type: !2891, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !34}
!2893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2894, line: 125)
!2894 = !DISubprogram(name: "calloc", scope: !2825, file: !2825, line: 140, type: !2895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!76, !88, !88}
!2897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2898, line: 126)
!2898 = !DISubprogram(name: "free", scope: !2825, file: !2825, line: 143, type: !2899, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !76}
!2901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2902, line: 127)
!2902 = !DISubprogram(name: "malloc", scope: !2825, file: !2825, line: 152, type: !2903, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!76, !88}
!2905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2906, line: 128)
!2906 = !DISubprogram(name: "realloc", scope: !2825, file: !2825, line: 160, type: !2907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!76, !76, !88}
!2909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2910, line: 129)
!2910 = !DISubprogram(name: "abort", scope: !2825, file: !2825, line: 128, type: !2511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2912, line: 130)
!2912 = !DISubprogram(name: "atexit", scope: !2825, file: !2825, line: 130, type: !2913, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!30, !2510}
!2915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2916, line: 131)
!2916 = !DISubprogram(name: "exit", scope: !2825, file: !2825, line: 142, type: !2917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !30}
!2919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2920, line: 132)
!2920 = !DISubprogram(name: "_Exit", scope: !2825, file: !2825, line: 182, type: !2917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2922, line: 134)
!2922 = !DISubprogram(name: "getenv", scope: !2825, file: !2825, line: 144, type: !2923, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!226, !160}
!2925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2926, line: 135)
!2926 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !2825, file: !2825, line: 177, type: !2848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2928, line: 137)
!2928 = !DISubprogram(name: "bsearch", scope: !2825, file: !2825, line: 138, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!76, !245, !245, !88, !88, !2931}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!30, !245, !245}
!2934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2935, line: 138)
!2935 = !DISubprogram(name: "qsort", scope: !2825, file: !2825, line: 157, type: !2936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !76, !88, !88, !2931}
!2938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2939, line: 139)
!2939 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !2940, file: !2940, line: 113, type: !2941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2940 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!1270, !1270}
!2943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2944, line: 140)
!2944 = !DISubprogram(name: "labs", scope: !2825, file: !2825, line: 145, type: !2945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!71, !71}
!2947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2948, line: 142)
!2948 = !DISubprogram(name: "llabs", scope: !2825, file: !2825, line: 149, type: !2941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2950, line: 144)
!2950 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !2940, file: !2940, line: 118, type: !2951, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!2837, !1270, !1270}
!2953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2954, line: 145)
!2954 = !DISubprogram(name: "ldiv", scope: !2825, file: !2825, line: 146, type: !2955, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!2831, !71, !71}
!2957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2958, line: 147)
!2958 = !DISubprogram(name: "lldiv", scope: !2825, file: !2825, line: 150, type: !2951, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2960, line: 149)
!2960 = !DISubprogram(name: "mblen", scope: !2825, file: !2825, line: 153, type: !2961, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!30, !160, !88}
!2963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2964, line: 150)
!2964 = !DISubprogram(name: "mbtowc", scope: !2825, file: !2825, line: 155, type: !2965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!30, !2967, !160, !88}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!2969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2970, line: 151)
!2970 = !DISubprogram(name: "wctomb", scope: !2825, file: !2825, line: 179, type: !2971, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!30, !226, !2968}
!2973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2974, line: 152)
!2974 = !DISubprogram(name: "mbstowcs", scope: !2825, file: !2825, line: 154, type: !2975, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!88, !2967, !160, !88}
!2977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2978, line: 153)
!2978 = !DISubprogram(name: "wcstombs", scope: !2825, file: !2825, line: 178, type: !2979, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!88, !226, !2981, !88}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !88, line: 69)
!2984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2985, line: 70)
!2985 = !DISubprogram(name: "memcpy", scope: !2986, file: !2986, line: 72, type: !2987, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2986 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!76, !76, !245, !88}
!2989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2990, line: 71)
!2990 = !DISubprogram(name: "memmove", scope: !2986, file: !2986, line: 73, type: !2987, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2992, line: 72)
!2992 = !DISubprogram(name: "strcpy", scope: !2986, file: !2986, line: 79, type: !2993, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!226, !226, !160}
!2995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2996, line: 73)
!2996 = !DISubprogram(name: "strncpy", scope: !2986, file: !2986, line: 85, type: !2997, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!226, !226, !160, !88}
!2999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3000, line: 74)
!3000 = !DISubprogram(name: "strcat", scope: !2986, file: !2986, line: 75, type: !2993, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3002, line: 75)
!3002 = !DISubprogram(name: "strncat", scope: !2986, file: !2986, line: 83, type: !2997, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3004, line: 76)
!3004 = !DISubprogram(name: "memcmp", scope: !2986, file: !2986, line: 71, type: !3005, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!30, !245, !245, !88}
!3007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3008, line: 77)
!3008 = !DISubprogram(name: "strcmp", scope: !2986, file: !2986, line: 77, type: !3009, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!30, !160, !160}
!3011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3012, line: 78)
!3012 = !DISubprogram(name: "strncmp", scope: !2986, file: !2986, line: 84, type: !3013, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!30, !160, !160, !88}
!3015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3016, line: 79)
!3016 = !DISubprogram(name: "strcoll", scope: !2986, file: !2986, line: 78, type: !3009, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3018, line: 80)
!3018 = !DISubprogram(name: "strxfrm", scope: !2986, file: !2986, line: 91, type: !3019, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!88, !226, !160, !88}
!3021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3022, line: 81)
!3022 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !3023, file: !3023, line: 99, type: !3024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3023 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!76, !76, !30, !88}
!3026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3027, line: 82)
!3027 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !3023, file: !3023, line: 78, type: !3028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!226, !226, !30}
!3030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3031, line: 83)
!3031 = !DISubprogram(name: "strcspn", scope: !2986, file: !2986, line: 80, type: !3032, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!88, !160, !160}
!3034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3035, line: 84)
!3035 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !3023, file: !3023, line: 85, type: !2993, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3037, line: 85)
!3037 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !3023, file: !3023, line: 92, type: !3028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3039, line: 86)
!3039 = !DISubprogram(name: "strspn", scope: !2986, file: !2986, line: 88, type: !3032, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3041, line: 87)
!3041 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !3023, file: !3023, line: 106, type: !2993, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3043, line: 89)
!3043 = !DISubprogram(name: "strtok", scope: !2986, file: !2986, line: 90, type: !2993, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3045, line: 91)
!3045 = !DISubprogram(name: "memset", scope: !2986, file: !2986, line: 74, type: !3024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3047, line: 92)
!3047 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !2986, file: !2986, line: 81, type: !3048, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!226, !30}
!3050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3051, line: 93)
!3051 = !DISubprogram(name: "strlen", scope: !2986, file: !2986, line: 82, type: !3052, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!88, !160}
!3054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3055, line: 108)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3056, line: 153, baseType: !3057)
!3056 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !3056, line: 122, size: 1216, elements: !3058, identifier: "_ZTS7__sFILE")
!3058 = !{!3059, !3061, !3062, !3063, !3064, !3065, !3070, !3071, !3072, !3076, !3080, !3088, !3092, !3093, !3096, !3097, !3099, !3103, !3104, !3105}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !3057, file: !3056, line: 123, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !3057, file: !3056, line: 124, baseType: !30, size: 32, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !3057, file: !3056, line: 125, baseType: !30, size: 32, offset: 96)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3057, file: !3056, line: 126, baseType: !1897, size: 16, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !3057, file: !3056, line: 127, baseType: !1897, size: 16, offset: 144)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !3057, file: !3056, line: 128, baseType: !3066, size: 128, offset: 192)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !3056, line: 88, size: 128, elements: !3067, identifier: "_ZTS6__sbuf")
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !3066, file: !3056, line: 89, baseType: !3060, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !3066, file: !3056, line: 90, baseType: !30, size: 32, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !3057, file: !3056, line: 129, baseType: !30, size: 32, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !3057, file: !3056, line: 132, baseType: !76, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !3057, file: !3056, line: 133, baseType: !3073, size: 64, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!30, !76}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !3057, file: !3056, line: 134, baseType: !3077, size: 64, offset: 512)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!30, !76, !226, !30}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !3057, file: !3056, line: 135, baseType: !3081, size: 64, offset: 576)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!3084, !76, !3084, !30}
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !3056, line: 77, baseType: !3085)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !3086, line: 71, baseType: !3087)
!3086 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !91, line: 46, baseType: !1270)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !3057, file: !3056, line: 136, baseType: !3089, size: 64, offset: 640)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!30, !76, !160, !30}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !3057, file: !3056, line: 139, baseType: !3066, size: 128, offset: 704)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !3057, file: !3056, line: 140, baseType: !3094, size: 64, offset: 832)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !3056, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !3057, file: !3056, line: 141, baseType: !30, size: 32, offset: 896)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !3057, file: !3056, line: 144, baseType: !3098, size: 24, offset: 928)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 24, elements: !373)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !3057, file: !3056, line: 145, baseType: !3100, size: 8, offset: 952)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 8, elements: !3101)
!3101 = !{!3102}
!3102 = !DISubrange(count: 1)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !3057, file: !3056, line: 148, baseType: !3066, size: 128, offset: 960)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !3057, file: !3056, line: 151, baseType: !30, size: 32, offset: 1088)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3057, file: !3056, line: 152, baseType: !3084, size: 64, offset: 1152)
!3106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3084, line: 109)
!3107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !88, line: 110)
!3108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3109, line: 112)
!3109 = !DISubprogram(name: "fclose", scope: !3056, file: !3056, line: 232, type: !3110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!30, !3112}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3114, line: 113)
!3114 = !DISubprogram(name: "fflush", scope: !3056, file: !3056, line: 235, type: !3110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3116, line: 114)
!3116 = !DISubprogram(name: "setbuf", scope: !3056, file: !3056, line: 267, type: !3117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !3112, !226}
!3119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3120, line: 115)
!3120 = !DISubprogram(name: "setvbuf", scope: !3056, file: !3056, line: 268, type: !3121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!30, !3112, !226, !30, !88}
!3123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3124, line: 116)
!3124 = !DISubprogram(name: "fprintf", scope: !3056, file: !3056, line: 244, type: !3125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!30, !3112, !160, null}
!3127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3128, line: 117)
!3128 = !DISubprogram(name: "fscanf", scope: !3056, file: !3056, line: 250, type: !3125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3130, line: 118)
!3130 = !DISubprogram(name: "snprintf", scope: !3056, file: !3056, line: 421, type: !3131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!30, !226, !88, !160, null}
!3133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3134, line: 119)
!3134 = !DISubprogram(name: "sprintf", scope: !3056, file: !3056, line: 269, type: !3135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!30, !226, !160, null}
!3137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3138, line: 120)
!3138 = !DISubprogram(name: "sscanf", scope: !3056, file: !3056, line: 270, type: !3139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!30, !160, !160, null}
!3141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3142, line: 121)
!3142 = !DISubprogram(name: "vfprintf", scope: !3056, file: !3056, line: 278, type: !3143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!30, !3112, !160, !3145}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !3147, identifier: "_ZTS13__va_list_tag")
!3147 = !{!3148, !3149, !3150, !3151}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3146, file: !3, baseType: !34, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3146, file: !3, baseType: !34, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3146, file: !3, baseType: !76, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3146, file: !3, baseType: !76, size: 64, offset: 128)
!3152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3153, line: 122)
!3153 = !DISubprogram(name: "vfscanf", scope: !3056, file: !3056, line: 422, type: !3143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3155, line: 123)
!3155 = !DISubprogram(name: "vsscanf", scope: !3056, file: !3056, line: 425, type: !3156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!30, !160, !160, !3145}
!3158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3159, line: 124)
!3159 = !DISubprogram(name: "vsnprintf", scope: !3056, file: !3056, line: 424, type: !3160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!30, !226, !88, !160, !3145}
!3162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3163, line: 125)
!3163 = !DISubprogram(name: "vsprintf", scope: !3056, file: !3056, line: 280, type: !3164, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!30, !226, !160, !3145}
!3166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3167, line: 126)
!3167 = !DISubprogram(name: "fgetc", scope: !3056, file: !3056, line: 236, type: !3110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3169, line: 127)
!3169 = !DISubprogram(name: "fgets", scope: !3056, file: !3056, line: 238, type: !3170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!226, !226, !30, !3112}
!3172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3173, line: 128)
!3173 = !DISubprogram(name: "fputc", scope: !3056, file: !3056, line: 245, type: !3174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!30, !30, !3112}
!3176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3177, line: 129)
!3177 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !3056, file: !3056, line: 246, type: !3178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!30, !160, !3112}
!3180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3181, line: 130)
!3181 = !DISubprogram(name: "getc", scope: !3056, file: !3056, line: 255, type: !3110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3183, line: 131)
!3183 = !DISubprogram(name: "putc", scope: !3056, file: !3056, line: 260, type: !3174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3185, line: 132)
!3185 = !DISubprogram(name: "ungetc", scope: !3056, file: !3056, line: 277, type: !3174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3187, line: 133)
!3187 = !DISubprogram(name: "fread", scope: !3056, file: !3056, line: 247, type: !3188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!88, !76, !88, !88, !3112}
!3190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3191, line: 134)
!3191 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !3056, file: !3056, line: 254, type: !3192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!88, !245, !88, !88, !3112}
!3194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3195, line: 135)
!3195 = !DISubprogram(name: "fgetpos", scope: !3056, file: !3056, line: 237, type: !3196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!30, !3112, !3198}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3200, line: 136)
!3200 = !DISubprogram(name: "fseek", scope: !3056, file: !3056, line: 251, type: !3201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!30, !3112, !71, !30}
!3203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3204, line: 137)
!3204 = !DISubprogram(name: "fsetpos", scope: !3056, file: !3056, line: 252, type: !3205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!30, !3112, !3207}
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3084)
!3209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3210, line: 138)
!3210 = !DISubprogram(name: "ftell", scope: !3056, file: !3056, line: 253, type: !3211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!71, !3112}
!3213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3214, line: 139)
!3214 = !DISubprogram(name: "rewind", scope: !3056, file: !3056, line: 265, type: !3215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !3112}
!3217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3218, line: 140)
!3218 = !DISubprogram(name: "clearerr", scope: !3056, file: !3056, line: 231, type: !3215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3220, line: 141)
!3220 = !DISubprogram(name: "feof", scope: !3056, file: !3056, line: 233, type: !3110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3222, line: 142)
!3222 = !DISubprogram(name: "ferror", scope: !3056, file: !3056, line: 234, type: !3110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3224, line: 143)
!3224 = !DISubprogram(name: "perror", scope: !3056, file: !3056, line: 258, type: !3225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !160}
!3227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3228, line: 146)
!3228 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !3056, file: !3056, line: 242, type: !3229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!3112, !160, !160}
!3231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3232, line: 147)
!3232 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !3056, file: !3056, line: 248, type: !3233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!3112, !160, !160, !3112}
!3235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3236, line: 148)
!3236 = !DISubprogram(name: "remove", scope: !3056, file: !3056, line: 263, type: !2848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3238, line: 149)
!3238 = !DISubprogram(name: "rename", scope: !3056, file: !3056, line: 264, type: !3009, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3240, line: 150)
!3240 = !DISubprogram(name: "tmpfile", scope: !3056, file: !3056, line: 271, type: !3241, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!3112}
!3243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3244, line: 151)
!3244 = !DISubprogram(name: "tmpnam", scope: !3056, file: !3056, line: 276, type: !3245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!226, !226}
!3247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3248, line: 155)
!3248 = !DISubprogram(name: "getchar", scope: !3056, file: !3056, line: 256, type: !28, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3250, line: 157)
!3250 = !DISubprogram(name: "gets", scope: !3056, file: !3056, line: 257, type: !3245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3252, line: 159)
!3252 = !DISubprogram(name: "scanf", scope: !3056, file: !3056, line: 266, type: !3253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!30, !160, null}
!3255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3256, line: 160)
!3256 = !DISubprogram(name: "vscanf", scope: !3056, file: !3056, line: 423, type: !3257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!30, !160, !3145}
!3259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3260, line: 164)
!3260 = !DISubprogram(name: "printf", scope: !3056, file: !3056, line: 259, type: !3253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3262, line: 165)
!3262 = !DISubprogram(name: "putchar", scope: !3056, file: !3056, line: 261, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!30, !30}
!3265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3266, line: 166)
!3266 = !DISubprogram(name: "puts", scope: !3056, file: !3056, line: 262, type: !2848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3268, line: 167)
!3268 = !DISubprogram(name: "vprintf", scope: !3056, file: !3056, line: 279, type: !3257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3270, line: 104)
!3270 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !3271, file: !3271, line: 212, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3271 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3273, line: 105)
!3273 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !3271, file: !3271, line: 218, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3275, line: 106)
!3275 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !3271, file: !3271, line: 224, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3277, line: 107)
!3277 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !3271, file: !3271, line: 230, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3279, line: 108)
!3279 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !3271, file: !3271, line: 237, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3281, line: 109)
!3281 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !3271, file: !3271, line: 243, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3283, line: 110)
!3283 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !3271, file: !3271, line: 249, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3285, line: 111)
!3285 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !3271, file: !3271, line: 255, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3287, line: 112)
!3287 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !3271, file: !3271, line: 261, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3289, line: 113)
!3289 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !3271, file: !3271, line: 267, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3291, line: 114)
!3291 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !3271, file: !3271, line: 273, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3293, line: 115)
!3293 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !3271, file: !3271, line: 280, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3295, line: 116)
!3295 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !3271, file: !3271, line: 292, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3297, line: 117)
!3297 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !3271, file: !3271, line: 298, type: !3263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3299, line: 63)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3300, line: 31, baseType: !3301)
!3300 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !91, line: 112, baseType: !30)
!3302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3303, line: 64)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !3304, line: 31, baseType: !3305)
!3304 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !3306, line: 40, baseType: !30)
!3306 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3308, line: 65)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !3309, line: 31, baseType: !3310)
!3309 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !3306, line: 42, baseType: !3311)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !91, line: 45, baseType: !34)
!3312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3313, line: 66)
!3313 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !3314, file: !3314, line: 66, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3314 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!30, !3299}
!3317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3318, line: 67)
!3318 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !3314, file: !3314, line: 72, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3320, line: 68)
!3320 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !3321, file: !3321, line: 50, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3321 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3323, line: 69)
!3323 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !3314, file: !3314, line: 78, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3325, line: 70)
!3325 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !3314, file: !3314, line: 90, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3327, line: 71)
!3327 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !3314, file: !3314, line: 96, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3329, line: 72)
!3329 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !3314, file: !3314, line: 102, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3331, line: 73)
!3331 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !3314, file: !3314, line: 108, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3333, line: 74)
!3333 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !3314, file: !3314, line: 114, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3335, line: 75)
!3335 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !3314, file: !3314, line: 120, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3337, line: 76)
!3337 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !3314, file: !3314, line: 126, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3339, line: 77)
!3339 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !3314, file: !3314, line: 132, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3341, line: 78)
!3341 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !3314, file: !3314, line: 84, type: !3342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!30, !3299, !3308}
!3344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3345, line: 79)
!3345 = !DISubprogram(name: "wctype", scope: !3314, file: !3314, line: 172, type: !3346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!3308, !160}
!3348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3349, line: 80)
!3349 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !3314, file: !3314, line: 138, type: !3350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!3299, !3299}
!3352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3353, line: 81)
!3353 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !3314, file: !3314, line: 144, type: !3350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3355, line: 82)
!3355 = !DISubprogram(name: "towctrans", scope: !3321, file: !3321, line: 121, type: !3356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!3299, !3299, !3303}
!3358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3359, line: 83)
!3359 = !DISubprogram(name: "wctrans", scope: !3321, file: !3321, line: 123, type: !3360, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!3303, !160}
!3362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3363, line: 116)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3364, line: 31, baseType: !3365)
!3364 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !91, line: 81, baseType: !3366)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !91, line: 79, baseType: !3367)
!3367 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !91, line: 76, size: 1024, elements: !3368, identifier: "_ZTS11__mbstate_t")
!3368 = !{!3369, !3373}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !3367, file: !91, line: 77, baseType: !3370, size: 1024)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !3371)
!3371 = !{!3372}
!3372 = !DISubrange(count: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !3367, file: !91, line: 78, baseType: !1270, size: 64)
!3374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !88, line: 117)
!3375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2696, line: 118)
!3376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3299, line: 119)
!3377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3055, line: 120)
!3378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3379, line: 121)
!3379 = !DISubprogram(name: "fwprintf", scope: !3380, file: !3380, line: 103, type: !3381, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3380 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!30, !3112, !2981, null}
!3383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3384, line: 122)
!3384 = !DISubprogram(name: "fwscanf", scope: !3380, file: !3380, line: 104, type: !3381, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3386, line: 123)
!3386 = !DISubprogram(name: "swprintf", scope: !3380, file: !3380, line: 115, type: !3387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!30, !2967, !88, !2981, null}
!3389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3390, line: 124)
!3390 = !DISubprogram(name: "vfwprintf", scope: !3380, file: !3380, line: 118, type: !3391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!30, !3112, !2981, !3145}
!3393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3394, line: 125)
!3394 = !DISubprogram(name: "vswprintf", scope: !3380, file: !3380, line: 120, type: !3395, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!30, !2967, !88, !2981, !3145}
!3397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3398, line: 126)
!3398 = !DISubprogram(name: "swscanf", scope: !3380, file: !3380, line: 116, type: !3399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!30, !2981, !2981, null}
!3401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3402, line: 127)
!3402 = !DISubprogram(name: "vfwscanf", scope: !3380, file: !3380, line: 170, type: !3391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3404, line: 128)
!3404 = !DISubprogram(name: "vswscanf", scope: !3380, file: !3380, line: 172, type: !3405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!30, !2981, !2981, !3145}
!3407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3408, line: 129)
!3408 = !DISubprogram(name: "fgetwc", scope: !3380, file: !3380, line: 98, type: !3409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!3299, !3112}
!3411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3412, line: 130)
!3412 = !DISubprogram(name: "fgetws", scope: !3380, file: !3380, line: 99, type: !3413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!2967, !2967, !30, !3112}
!3415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3416, line: 131)
!3416 = !DISubprogram(name: "fputwc", scope: !3380, file: !3380, line: 100, type: !3417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!3299, !2968, !3112}
!3419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3420, line: 132)
!3420 = !DISubprogram(name: "fputws", scope: !3380, file: !3380, line: 101, type: !3421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!30, !2981, !3112}
!3423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3424, line: 133)
!3424 = !DISubprogram(name: "fwide", scope: !3380, file: !3380, line: 102, type: !3425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!30, !3112, !30}
!3427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3428, line: 134)
!3428 = !DISubprogram(name: "getwc", scope: !3380, file: !3380, line: 105, type: !3409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3430, line: 135)
!3430 = !DISubprogram(name: "putwc", scope: !3380, file: !3380, line: 113, type: !3417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3432, line: 136)
!3432 = !DISubprogram(name: "ungetwc", scope: !3380, file: !3380, line: 117, type: !3433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!3299, !3299, !3112}
!3435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3436, line: 137)
!3436 = !DISubprogram(name: "wcstod", scope: !3380, file: !3380, line: 144, type: !3437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!1928, !2981, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!3440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3441, line: 138)
!3441 = !DISubprogram(name: "wcstof", scope: !3380, file: !3380, line: 175, type: !3442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!1924, !2981, !3439}
!3444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3445, line: 139)
!3445 = !DISubprogram(name: "wcstold", scope: !3380, file: !3380, line: 177, type: !3446, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!1375, !2981, !3439}
!3448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3449, line: 140)
!3449 = !DISubprogram(name: "wcstol", scope: !3380, file: !3380, line: 147, type: !3450, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!71, !2981, !3439, !30}
!3452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3453, line: 142)
!3453 = !DISubprogram(name: "wcstoll", scope: !3380, file: !3380, line: 180, type: !3454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!1270, !2981, !3439, !30}
!3456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3457, line: 144)
!3457 = !DISubprogram(name: "wcstoul", scope: !3380, file: !3380, line: 149, type: !3458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!92, !2981, !3439, !30}
!3460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3461, line: 146)
!3461 = !DISubprogram(name: "wcstoull", scope: !3380, file: !3380, line: 182, type: !3462, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!1920, !2981, !3439, !30}
!3464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3465, line: 148)
!3465 = !DISubprogram(name: "wcscpy", scope: !3380, file: !3380, line: 128, type: !3466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!2967, !2967, !2981}
!3468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3469, line: 149)
!3469 = !DISubprogram(name: "wcsncpy", scope: !3380, file: !3380, line: 135, type: !3470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!2967, !2967, !2981, !88}
!3472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3473, line: 150)
!3473 = !DISubprogram(name: "wcscat", scope: !3380, file: !3380, line: 124, type: !3466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3475, line: 151)
!3475 = !DISubprogram(name: "wcsncat", scope: !3380, file: !3380, line: 133, type: !3470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3477, line: 152)
!3477 = !DISubprogram(name: "wcscmp", scope: !3380, file: !3380, line: 126, type: !3478, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!30, !2981, !2981}
!3480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3481, line: 153)
!3481 = !DISubprogram(name: "wcscoll", scope: !3380, file: !3380, line: 127, type: !3478, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3483, line: 154)
!3483 = !DISubprogram(name: "wcsncmp", scope: !3380, file: !3380, line: 134, type: !3484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!30, !2981, !2981, !88}
!3486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3487, line: 155)
!3487 = !DISubprogram(name: "wcsxfrm", scope: !3380, file: !3380, line: 142, type: !3488, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!88, !2967, !2981, !88}
!3490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3491, line: 156)
!3491 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !3492, file: !3492, line: 137, type: !3493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3492 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!2967, !2967, !2968}
!3495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3496, line: 157)
!3496 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !3492, file: !3492, line: 144, type: !3466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3498, line: 158)
!3498 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !3492, file: !3492, line: 151, type: !3493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3500, line: 159)
!3500 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !3492, file: !3492, line: 158, type: !3466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3502, line: 160)
!3502 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !3492, file: !3492, line: 165, type: !3503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!2967, !2967, !2968, !88}
!3505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3506, line: 161)
!3506 = !DISubprogram(name: "wcscspn", scope: !3380, file: !3380, line: 129, type: !3507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!88, !2981, !2981}
!3509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3510, line: 162)
!3510 = !DISubprogram(name: "wcslen", scope: !3380, file: !3380, line: 132, type: !3511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!88, !2981}
!3513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3514, line: 163)
!3514 = !DISubprogram(name: "wcsspn", scope: !3380, file: !3380, line: 140, type: !3507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3516, line: 164)
!3516 = !DISubprogram(name: "wcstok", scope: !3380, file: !3380, line: 145, type: !3517, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!2967, !2967, !2981, !3439}
!3519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3520, line: 165)
!3520 = !DISubprogram(name: "wmemcmp", scope: !3380, file: !3380, line: 151, type: !3484, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3522, line: 166)
!3522 = !DISubprogram(name: "wmemcpy", scope: !3380, file: !3380, line: 152, type: !3470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3524, line: 167)
!3524 = !DISubprogram(name: "wmemmove", scope: !3380, file: !3380, line: 153, type: !3470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3526, line: 168)
!3526 = !DISubprogram(name: "wmemset", scope: !3380, file: !3380, line: 154, type: !3503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3528, line: 169)
!3528 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !3380, file: !3380, line: 130, type: !3529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!88, !2967, !88, !2981, !2732}
!3531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3532, line: 170)
!3532 = !DISubprogram(name: "btowc", scope: !3380, file: !3380, line: 97, type: !3533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!3299, !30}
!3535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3536, line: 171)
!3536 = !DISubprogram(name: "wctob", scope: !3380, file: !3380, line: 143, type: !3315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3538, line: 172)
!3538 = !DISubprogram(name: "mbsinit", scope: !3380, file: !3380, line: 110, type: !3539, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!30, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!3543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3544, line: 173)
!3544 = !DISubprogram(name: "mbrlen", scope: !3380, file: !3380, line: 107, type: !3545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!88, !160, !88, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3549, line: 174)
!3549 = !DISubprogram(name: "mbrtowc", scope: !3380, file: !3380, line: 108, type: !3550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!88, !2967, !160, !88, !3547}
!3552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3553, line: 175)
!3553 = !DISubprogram(name: "wcrtomb", scope: !3380, file: !3380, line: 123, type: !3554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!88, !226, !2968, !3547}
!3556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3557, line: 176)
!3557 = !DISubprogram(name: "mbsrtowcs", scope: !3380, file: !3380, line: 111, type: !3558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!88, !2967, !3560, !88, !3547}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3562, line: 177)
!3562 = !DISubprogram(name: "wcsrtombs", scope: !3380, file: !3380, line: 138, type: !3563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!88, !226, !3565, !88, !3547}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!3566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3567, line: 180)
!3567 = !DISubprogram(name: "getwchar", scope: !3380, file: !3380, line: 106, type: !3568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!3299}
!3570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3571, line: 181)
!3571 = !DISubprogram(name: "vwscanf", scope: !3380, file: !3380, line: 174, type: !3572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!30, !2981, !3145}
!3574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3575, line: 182)
!3575 = !DISubprogram(name: "wscanf", scope: !3380, file: !3380, line: 156, type: !3576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!30, !2981, null}
!3578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3579, line: 186)
!3579 = !DISubprogram(name: "putwchar", scope: !3380, file: !3380, line: 114, type: !3580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!3299, !2968}
!3582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3583, line: 187)
!3583 = !DISubprogram(name: "vwprintf", scope: !3380, file: !3380, line: 122, type: !3572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3585, line: 188)
!3585 = !DISubprogram(name: "wprintf", scope: !3380, file: !3380, line: 155, type: !3576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3586 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2684, entity: !1259, line: 432)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "milliseconds", scope: !1259, file: !1257, line: 592, baseType: !1266)
!3588 = !{i32 2, !"Dwarf Version", i32 2}
!3589 = !{i32 2, !"Debug Info Version", i32 3}
!3590 = !{i32 1, !"PIC Level", i32 2}
!3591 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!3592 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 8, type: !2511, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !212)
!3593 = !DILocation(line: 8, column: 12, scope: !3592)
!3594 = distinct !DISubprogram(name: "job_1", linkageName: "_Z5job_1v", scope: !3, file: !3, line: 16, type: !2511, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !212)
!3595 = !DILocation(line: 18, column: 5, scope: !3594)
!3596 = !DILocation(line: 20, column: 5, scope: !3594)
!3597 = !DILocation(line: 22, column: 19, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 22, column: 13)
!3599 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 20, column: 18)
!3600 = !DILocation(line: 22, column: 13, scope: !3599)
!3601 = !DILocation(line: 23, column: 23, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 22, column: 31)
!3603 = !DILocation(line: 23, column: 44, scope: !3602)
!3604 = !DILocation(line: 23, column: 41, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3602, file: !3, discriminator: 1)
!3606 = !DILocation(line: 23, column: 55, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !3602, file: !3, discriminator: 2)
!3608 = !DILocation(line: 24, column: 19, scope: !3602)
!3609 = !DILocation(line: 25, column: 13, scope: !3602)
!3610 = !DILocation(line: 29, column: 13, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 26, column: 16)
!3612 = !DILocation(line: 30, column: 23, scope: !3611)
!3613 = !DILocation(line: 30, column: 47, scope: !3611)
!3614 = !DILocation(line: 30, column: 44, scope: !3615)
!3615 = !DILexicalBlockFile(scope: !3611, file: !3, discriminator: 1)
!3616 = !DILocation(line: 30, column: 61, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !3611, file: !3, discriminator: 2)
!3618 = !DILocation(line: 31, column: 13, scope: !3611)
!3619 = !DILocation(line: 20, column: 5, scope: !3620)
!3620 = !DILexicalBlockFile(scope: !3594, file: !3, discriminator: 1)
!3621 = distinct !{!3621, !3596, !3622}
!3622 = !DILocation(line: 33, column: 5, scope: !3594)
!3623 = !DILocalVariable(name: "this", arg: 1, scope: !3624, type: !3625, flags: DIFlagArtificial | DIFlagObjectPointer)
!3624 = distinct !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv", scope: !1266, file: !1257, line: 564, type: !1276, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1275, variables: !212)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!3626 = !DIExpression()
!3627 = !DILocation(line: 0, scope: !3624, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 656, column: 39, scope: !3629, inlinedAt: !3639)
!3629 = !DILexicalBlockFile(scope: !3630, file: !1257, discriminator: 1)
!3630 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEES5_EclERKS5_S8_", scope: !3631, file: !1257, line: 655, type: !3634, isLocal: false, isDefinition: true, scopeLine: 656, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3633, variables: !212)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_lt<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> > >", scope: !1259, file: !1257, line: 652, size: 8, elements: !3632, templateParams: !3638, identifier: "_ZTSNSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEES5_EE")
!3632 = !{!3633}
!3633 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEES5_EclERKS5_S8_", scope: !3631, file: !1257, line: 655, type: !3634, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!184, !3636, !1302, !1302}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3631)
!3638 = !{!1434, !1642}
!3639 = distinct !DILocation(line: 665, column: 12, scope: !3640, inlinedAt: !3647)
!3640 = distinct !DISubprogram(name: "operator<<long long, std::__1::ratio<1, 1000>, long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE", scope: !1259, file: !1257, line: 663, type: !3641, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3643, variables: !212)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!184, !1302, !1302}
!3643 = !{!1338, !3644, !3645, !3646}
!3644 = !DITemplateTypeParameter(name: "_Period1", type: !1320)
!3645 = !DITemplateTypeParameter(name: "_Rep2", type: !1270)
!3646 = !DITemplateTypeParameter(name: "_Period2", type: !1320)
!3647 = distinct !DILocation(line: 676, column: 18, scope: !3648, inlinedAt: !3649)
!3648 = distinct !DISubprogram(name: "operator><long long, std::__1::ratio<1, 1000>, long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chronogtIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE", scope: !1259, file: !1257, line: 674, type: !3641, isLocal: false, isDefinition: true, scopeLine: 675, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3643, variables: !212)
!3649 = distinct !DILocation(line: 433, column: 13, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3651, file: !2023, discriminator: 1)
!3651 = distinct !DILexicalBlock(scope: !2684, file: !2023, line: 433, column: 9)
!3652 = !DILocation(line: 0, scope: !3624, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 656, column: 23, scope: !3630, inlinedAt: !3639)
!3654 = !DILocalVariable(name: "this", arg: 1, scope: !3630, type: !3655, flags: DIFlagArtificial | DIFlagObjectPointer)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3656 = !DILocation(line: 0, scope: !3630, inlinedAt: !3639)
!3657 = !DILocalVariable(name: "__lhs", arg: 2, scope: !3630, file: !1257, line: 655, type: !1302)
!3658 = !DILocation(line: 655, column: 41, scope: !3630, inlinedAt: !3639)
!3659 = !DILocalVariable(name: "__rhs", arg: 3, scope: !3630, file: !1257, line: 655, type: !1302)
!3660 = !DILocation(line: 655, column: 68, scope: !3630, inlinedAt: !3639)
!3661 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3640, file: !1257, line: 663, type: !1302)
!3662 = !DILocation(line: 663, column: 45, scope: !3640, inlinedAt: !3647)
!3663 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3640, file: !1257, line: 663, type: !1302)
!3664 = !DILocation(line: 663, column: 85, scope: !3640, inlinedAt: !3647)
!3665 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3648, file: !1257, line: 674, type: !1302)
!3666 = !DILocation(line: 674, column: 45, scope: !3648, inlinedAt: !3649)
!3667 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3648, file: !1257, line: 674, type: !1302)
!3668 = !DILocation(line: 674, column: 85, scope: !3648, inlinedAt: !3649)
!3669 = !DILocalVariable(name: "this", arg: 1, scope: !3670, type: !3671, flags: DIFlagArtificial | DIFlagObjectPointer)
!3670 = distinct !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv", scope: !1441, file: !1257, line: 564, type: !1450, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1449, variables: !212)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!3672 = !DILocation(line: 0, scope: !3670, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 647, column: 31, scope: !3674, inlinedAt: !3675)
!3674 = !DILexicalBlockFile(scope: !1361, file: !1257, discriminator: 1)
!3675 = distinct !DILocation(line: 665, column: 12, scope: !3676, inlinedAt: !3682)
!3676 = distinct !DISubprogram(name: "operator<<long long, std::__1::ratio<1, 1000>, long double, std::__1::ratio<1, 1> >", linkageName: "_ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEEeNS2_ILl1ELl1EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE", scope: !1259, file: !1257, line: 663, type: !3677, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3679, variables: !212)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!184, !1302, !1369}
!3679 = !{!1338, !3644, !3680, !3681}
!3680 = !DITemplateTypeParameter(name: "_Rep2", type: !1375)
!3681 = !DITemplateTypeParameter(name: "_Period2", type: !1423)
!3682 = distinct !DILocation(line: 437, column: 17, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !2023, line: 437, column: 13)
!3684 = distinct !DILexicalBlock(scope: !3651, file: !2023, line: 434, column: 5)
!3685 = !DILocation(line: 0, scope: !3670, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 560, column: 70, scope: !3687, inlinedAt: !3697)
!3687 = !DILexicalBlockFile(scope: !3688, file: !1257, discriminator: 1)
!3688 = distinct !DISubprogram(name: "duration<long double, std::__1::ratio<1, 1> >", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE", scope: !1441, file: !1257, line: 552, type: !3689, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3695, declaration: !3696, variables: !212)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !1448, !1369, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3693, file: !282, line: 424, baseType: null)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, void>", scope: !7, file: !282, line: 424, size: 8, elements: !212, templateParams: !3694, identifier: "_ZTSNSt3__19enable_ifILb1EvEE")
!3694 = !{!183, !244}
!3695 = !{!3680, !3681}
!3696 = !DISubprogram(name: "duration<long double, std::__1::ratio<1, 1> >", scope: !1441, file: !1257, line: 552, type: !3689, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !3695)
!3697 = distinct !DILocation(line: 560, column: 79, scope: !3698, inlinedAt: !3699)
!3698 = distinct !DISubprogram(name: "duration<long double, std::__1::ratio<1, 1> >", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE", scope: !1441, file: !1257, line: 552, type: !3689, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3695, declaration: !3696, variables: !212)
!3699 = distinct !DILocation(line: 647, column: 41, scope: !3700, inlinedAt: !3675)
!3700 = !DILexicalBlockFile(scope: !1361, file: !1257, discriminator: 2)
!3701 = !DILocalVariable(name: "this", arg: 1, scope: !3702, type: !3709, flags: DIFlagArtificial | DIFlagObjectPointer)
!3702 = distinct !DISubprogram(name: "duration<long double>", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1441, file: !1257, line: 540, type: !3703, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3707, declaration: !3708, variables: !212)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !1448, !3705, !3691}
!3705 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!3707 = !{!3680}
!3708 = !DISubprogram(name: "duration<long double>", scope: !1441, file: !1257, line: 540, type: !3703, isLocal: false, isDefinition: false, scopeLine: 540, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !3707)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!3710 = !DILocation(line: 0, scope: !3702, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 547, column: 31, scope: !3712, inlinedAt: !3713)
!3712 = distinct !DISubprogram(name: "duration<long double>", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1441, file: !1257, line: 540, type: !3703, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3707, declaration: !3708, variables: !212)
!3713 = distinct !DILocation(line: 385, column: 16, scope: !1493, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 413, column: 12, scope: !3715, inlinedAt: !3723)
!3715 = distinct !DISubprogram(name: "duration_cast<std::__1::chrono::duration<long double, std::__1::ratio<1, 1000> >, long double, std::__1::ratio<1, 1> >", linkageName: "_ZNSt3__16chrono13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEEeNS3_ILl1ELl1EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE", scope: !1259, file: !1257, line: 411, type: !3716, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3722, variables: !212)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!3718, !1369}
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3719, file: !282, line: 424, baseType: !1441)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, std::__1::chrono::duration<long double, std::__1::ratio<1, 1000> > >", scope: !7, file: !282, line: 424, size: 8, elements: !212, templateParams: !3720, identifier: "_ZTSNSt3__19enable_ifILb1ENS_6chrono8durationIeNS_5ratioILl1ELl1000EEEEEEE")
!3720 = !{!183, !3721}
!3721 = !DITemplateTypeParameter(name: "_Tp", type: !1441)
!3722 = !{!1503, !1421, !1422}
!3723 = distinct !DILocation(line: 560, column: 26, scope: !3688, inlinedAt: !3697)
!3724 = !DILocalVariable(name: "__r", arg: 2, scope: !3702, file: !1257, line: 540, type: !3705)
!3725 = !DILocation(line: 540, column: 40, scope: !3702, inlinedAt: !3711)
!3726 = !DILocalVariable(arg: 3, scope: !3702, file: !1257, line: 546, type: !3691)
!3727 = !DILocation(line: 546, column: 22, scope: !3702, inlinedAt: !3711)
!3728 = !DILocalVariable(name: "this", arg: 1, scope: !3712, type: !3709, flags: DIFlagArtificial | DIFlagObjectPointer)
!3729 = !DILocation(line: 0, scope: !3712, inlinedAt: !3713)
!3730 = !DILocalVariable(name: "__r", arg: 2, scope: !3712, file: !1257, line: 540, type: !3705)
!3731 = !DILocation(line: 540, column: 40, scope: !3712, inlinedAt: !3713)
!3732 = !DILocalVariable(arg: 3, scope: !3712, file: !1257, line: 546, type: !3691)
!3733 = !DILocation(line: 546, column: 22, scope: !3712, inlinedAt: !3713)
!3734 = !DILocalVariable(name: "this", arg: 1, scope: !3735, type: !3736, flags: DIFlagArtificial | DIFlagObjectPointer)
!3735 = distinct !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE5countEv", scope: !1371, file: !1257, line: 564, type: !1381, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1380, variables: !212)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!3737 = !DILocation(line: 0, scope: !3735, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 386, column: 50, scope: !1493, inlinedAt: !3714)
!3739 = !DILocalVariable(name: "this", arg: 1, scope: !1493, type: !3740, flags: DIFlagArtificial | DIFlagObjectPointer)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!3741 = !DILocation(line: 0, scope: !1493, inlinedAt: !3714)
!3742 = !DILocalVariable(name: "__fd", arg: 2, scope: !1493, file: !1257, line: 382, type: !1369)
!3743 = !DILocation(line: 382, column: 49, scope: !1493, inlinedAt: !3714)
!3744 = !DILocalVariable(name: "__fd", arg: 1, scope: !3715, file: !1257, line: 411, type: !1369)
!3745 = !DILocation(line: 411, column: 46, scope: !3715, inlinedAt: !3723)
!3746 = !DILocalVariable(name: "this", arg: 1, scope: !3688, type: !3709, flags: DIFlagArtificial | DIFlagObjectPointer)
!3747 = !DILocation(line: 0, scope: !3688, inlinedAt: !3697)
!3748 = !DILocalVariable(name: "__d", arg: 2, scope: !3688, file: !1257, line: 552, type: !1369)
!3749 = !DILocation(line: 552, column: 51, scope: !3688, inlinedAt: !3697)
!3750 = !DILocalVariable(arg: 3, scope: !3688, file: !1257, line: 559, type: !3691)
!3751 = !DILocation(line: 559, column: 22, scope: !3688, inlinedAt: !3697)
!3752 = !DILocalVariable(name: "this", arg: 1, scope: !3698, type: !3709, flags: DIFlagArtificial | DIFlagObjectPointer)
!3753 = !DILocation(line: 0, scope: !3698, inlinedAt: !3699)
!3754 = !DILocalVariable(name: "__d", arg: 2, scope: !3698, file: !1257, line: 552, type: !1369)
!3755 = !DILocation(line: 552, column: 51, scope: !3698, inlinedAt: !3699)
!3756 = !DILocalVariable(arg: 3, scope: !3698, file: !1257, line: 559, type: !3691)
!3757 = !DILocation(line: 559, column: 22, scope: !3698, inlinedAt: !3699)
!3758 = !DILocation(line: 0, scope: !3670, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 647, column: 52, scope: !3760, inlinedAt: !3675)
!3760 = !DILexicalBlockFile(scope: !1361, file: !1257, discriminator: 3)
!3761 = !DILocation(line: 0, scope: !3670, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 560, column: 70, scope: !3763, inlinedAt: !3769)
!3763 = !DILexicalBlockFile(scope: !3764, file: !1257, discriminator: 1)
!3764 = distinct !DISubprogram(name: "duration<long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1441, file: !1257, line: 552, type: !3765, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3767, declaration: !3768, variables: !212)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !1448, !1302, !3691}
!3767 = !{!3645, !3646}
!3768 = !DISubprogram(name: "duration<long long, std::__1::ratio<1, 1000> >", scope: !1441, file: !1257, line: 552, type: !3765, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !3767)
!3769 = distinct !DILocation(line: 560, column: 79, scope: !3770, inlinedAt: !3771)
!3770 = distinct !DISubprogram(name: "duration<long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1441, file: !1257, line: 552, type: !3765, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3767, declaration: !3768, variables: !212)
!3771 = distinct !DILocation(line: 647, column: 20, scope: !1361, inlinedAt: !3675)
!3772 = !DILocation(line: 0, scope: !3702, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 547, column: 31, scope: !3712, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 362, column: 16, scope: !3775, inlinedAt: !3785)
!3775 = !DILexicalBlockFile(scope: !3776, file: !1257, discriminator: 1)
!3776 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeS4_EENS3_ILl1ELl1EEELb1ELb1EEclERKS5_", scope: !3777, file: !1257, line: 360, type: !3780, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3779, variables: !212)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_cast<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000> >, std::__1::chrono::duration<long double, std::__1::ratio<1, 1000> >, std::__1::ratio<1, 1>, true, true>", scope: !1259, file: !1257, line: 357, size: 8, elements: !3778, templateParams: !3784, identifier: "_ZTSNSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeS4_EENS3_ILl1ELl1EEELb1ELb1EEE")
!3778 = !{!3779}
!3779 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeS4_EENS3_ILl1ELl1EEELb1ELb1EEclERKS5_", scope: !3777, file: !1257, line: 360, type: !3780, isLocal: false, isDefinition: false, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!1441, !3782, !1302}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3777)
!3784 = !{!1610, !1503, !1422, !183, !183}
!3785 = distinct !DILocation(line: 413, column: 12, scope: !3786, inlinedAt: !3790)
!3786 = distinct !DISubprogram(name: "duration_cast<std::__1::chrono::duration<long double, std::__1::ratio<1, 1000> >, long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chrono13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE", scope: !1259, file: !1257, line: 411, type: !3787, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3789, variables: !212)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!3718, !1302}
!3789 = !{!1503, !1318, !1319}
!3790 = distinct !DILocation(line: 560, column: 26, scope: !3764, inlinedAt: !3769)
!3791 = !DILocation(line: 540, column: 40, scope: !3702, inlinedAt: !3773)
!3792 = !DILocation(line: 546, column: 22, scope: !3702, inlinedAt: !3773)
!3793 = !DILocation(line: 0, scope: !3712, inlinedAt: !3774)
!3794 = !DILocation(line: 540, column: 40, scope: !3712, inlinedAt: !3774)
!3795 = !DILocation(line: 546, column: 22, scope: !3712, inlinedAt: !3774)
!3796 = !DILocation(line: 0, scope: !3624, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 362, column: 72, scope: !3776, inlinedAt: !3785)
!3798 = !DILocalVariable(name: "this", arg: 1, scope: !3776, type: !3799, flags: DIFlagArtificial | DIFlagObjectPointer)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3800 = !DILocation(line: 0, scope: !3776, inlinedAt: !3785)
!3801 = !DILocalVariable(name: "__fd", arg: 2, scope: !3776, file: !1257, line: 360, type: !1302)
!3802 = !DILocation(line: 360, column: 49, scope: !3776, inlinedAt: !3785)
!3803 = !DILocalVariable(name: "__fd", arg: 1, scope: !3786, file: !1257, line: 411, type: !1302)
!3804 = !DILocation(line: 411, column: 46, scope: !3786, inlinedAt: !3790)
!3805 = !DILocalVariable(name: "this", arg: 1, scope: !3764, type: !3709, flags: DIFlagArtificial | DIFlagObjectPointer)
!3806 = !DILocation(line: 0, scope: !3764, inlinedAt: !3769)
!3807 = !DILocalVariable(name: "__d", arg: 2, scope: !3764, file: !1257, line: 552, type: !1302)
!3808 = !DILocation(line: 552, column: 51, scope: !3764, inlinedAt: !3769)
!3809 = !DILocalVariable(arg: 3, scope: !3764, file: !1257, line: 559, type: !3691)
!3810 = !DILocation(line: 559, column: 22, scope: !3764, inlinedAt: !3769)
!3811 = !DILocalVariable(name: "this", arg: 1, scope: !3770, type: !3709, flags: DIFlagArtificial | DIFlagObjectPointer)
!3812 = !DILocation(line: 0, scope: !3770, inlinedAt: !3771)
!3813 = !DILocalVariable(name: "__d", arg: 2, scope: !3770, file: !1257, line: 552, type: !1302)
!3814 = !DILocation(line: 552, column: 51, scope: !3770, inlinedAt: !3771)
!3815 = !DILocalVariable(arg: 3, scope: !3770, file: !1257, line: 559, type: !3691)
!3816 = !DILocation(line: 559, column: 22, scope: !3770, inlinedAt: !3771)
!3817 = !DILocalVariable(name: "this", arg: 1, scope: !1361, type: !3818, flags: DIFlagArtificial | DIFlagObjectPointer)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!3819 = !DILocation(line: 0, scope: !1361, inlinedAt: !3675)
!3820 = !DILocalVariable(name: "__lhs", arg: 2, scope: !1361, file: !1257, line: 644, type: !1302)
!3821 = !DILocation(line: 644, column: 41, scope: !1361, inlinedAt: !3675)
!3822 = !DILocalVariable(name: "__rhs", arg: 3, scope: !1361, file: !1257, line: 644, type: !1369)
!3823 = !DILocation(line: 644, column: 68, scope: !1361, inlinedAt: !3675)
!3824 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3676, file: !1257, line: 663, type: !1302)
!3825 = !DILocation(line: 663, column: 45, scope: !3676, inlinedAt: !3682)
!3826 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3676, file: !1257, line: 663, type: !1369)
!3827 = !DILocation(line: 663, column: 85, scope: !3676, inlinedAt: !3682)
!3828 = !DILocalVariable(name: "this", arg: 1, scope: !3829, type: !3836, flags: DIFlagArtificial | DIFlagObjectPointer)
!3829 = distinct !DISubprogram(name: "duration<long long>", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1538, file: !1257, line: 540, type: !3830, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3834, declaration: !3835, variables: !212)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !1545, !3832, !3691}
!3832 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!3834 = !{!3645}
!3835 = !DISubprogram(name: "duration<long long>", scope: !1538, file: !1257, line: 540, type: !3830, isLocal: false, isDefinition: false, scopeLine: 540, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !3834)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!3837 = !DILocation(line: 0, scope: !3829, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 547, column: 31, scope: !3839, inlinedAt: !3840)
!3839 = distinct !DISubprogram(name: "duration<long long>", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1538, file: !1257, line: 540, type: !3830, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3834, declaration: !3835, variables: !212)
!3840 = distinct !DILocation(line: 385, column: 16, scope: !1601, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 413, column: 12, scope: !3842, inlinedAt: !3850)
!3842 = distinct !DISubprogram(name: "duration_cast<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chrono13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExNS3_ILl1ELl1000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE", scope: !1259, file: !1257, line: 411, type: !3843, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3849, variables: !212)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!3845, !1302}
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3846, file: !282, line: 424, baseType: !1538)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !7, file: !282, line: 424, size: 8, elements: !212, templateParams: !3847, identifier: "_ZTSNSt3__19enable_ifILb1ENS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEEEE")
!3847 = !{!183, !3848}
!3848 = !DITemplateTypeParameter(name: "_Tp", type: !1538)
!3849 = !{!1611, !1318, !1319}
!3850 = distinct !DILocation(line: 439, column: 20, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3683, file: !2023, line: 438, column: 9)
!3852 = !DILocalVariable(name: "__r", arg: 2, scope: !3829, file: !1257, line: 540, type: !3832)
!3853 = !DILocation(line: 540, column: 40, scope: !3829, inlinedAt: !3838)
!3854 = !DILocalVariable(arg: 3, scope: !3829, file: !1257, line: 546, type: !3691)
!3855 = !DILocation(line: 546, column: 22, scope: !3829, inlinedAt: !3838)
!3856 = !DILocalVariable(name: "this", arg: 1, scope: !3839, type: !3836, flags: DIFlagArtificial | DIFlagObjectPointer)
!3857 = !DILocation(line: 0, scope: !3839, inlinedAt: !3840)
!3858 = !DILocalVariable(name: "__r", arg: 2, scope: !3839, file: !1257, line: 540, type: !3832)
!3859 = !DILocation(line: 540, column: 40, scope: !3839, inlinedAt: !3840)
!3860 = !DILocalVariable(arg: 3, scope: !3839, file: !1257, line: 546, type: !3691)
!3861 = !DILocation(line: 546, column: 22, scope: !3839, inlinedAt: !3840)
!3862 = !DILocation(line: 0, scope: !3624, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 386, column: 50, scope: !1601, inlinedAt: !3841)
!3864 = !DILocalVariable(name: "this", arg: 1, scope: !1601, type: !3865, flags: DIFlagArtificial | DIFlagObjectPointer)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!3866 = !DILocation(line: 0, scope: !1601, inlinedAt: !3841)
!3867 = !DILocalVariable(name: "__fd", arg: 2, scope: !1601, file: !1257, line: 382, type: !1302)
!3868 = !DILocation(line: 382, column: 49, scope: !1601, inlinedAt: !3841)
!3869 = !DILocalVariable(name: "__fd", arg: 1, scope: !3842, file: !1257, line: 411, type: !1302)
!3870 = !DILocation(line: 411, column: 46, scope: !3842, inlinedAt: !3850)
!3871 = !DILocalVariable(name: "this", arg: 1, scope: !3872, type: !3873, flags: DIFlagArtificial | DIFlagObjectPointer)
!3872 = distinct !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv", scope: !1538, file: !1257, line: 564, type: !1547, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1546, variables: !212)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!3874 = !DILocation(line: 0, scope: !3872, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 560, column: 70, scope: !3876, inlinedAt: !3881)
!3876 = !DILexicalBlockFile(scope: !3877, file: !1257, discriminator: 1)
!3877 = distinct !DISubprogram(name: "duration<long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE", scope: !1538, file: !1257, line: 552, type: !3878, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3767, declaration: !3880, variables: !212)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !1545, !1302, !3691}
!3880 = !DISubprogram(name: "duration<long long, std::__1::ratio<1, 1000> >", scope: !1538, file: !1257, line: 552, type: !3878, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !3767)
!3881 = distinct !DILocation(line: 560, column: 79, scope: !3882, inlinedAt: !3883)
!3882 = distinct !DISubprogram(name: "duration<long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE", scope: !1538, file: !1257, line: 552, type: !3878, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3767, declaration: !3880, variables: !212)
!3883 = distinct !DILocation(line: 647, column: 41, scope: !3884, inlinedAt: !3885)
!3884 = !DILexicalBlockFile(scope: !1632, file: !1257, discriminator: 1)
!3885 = distinct !DILocation(line: 665, column: 12, scope: !3886, inlinedAt: !3891)
!3886 = distinct !DISubprogram(name: "operator<<long long, std::__1::ratio<1, 1000000000>, long long, std::__1::ratio<1, 1000> >", linkageName: "_ZNSt3__16chronoltIxNS_5ratioILl1ELl1000000000EEExNS2_ILl1ELl1000EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE", scope: !1259, file: !1257, line: 663, type: !3887, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3889, variables: !212)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!184, !1573, !1302}
!3889 = !{!1338, !3890, !3645, !3646}
!3890 = !DITemplateTypeParameter(name: "_Period1", type: !1590)
!3891 = distinct !DILocation(line: 440, column: 22, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3851, file: !2023, line: 440, column: 17)
!3893 = !DILocation(line: 0, scope: !3829, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 547, column: 31, scope: !3839, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 385, column: 16, scope: !1601, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 413, column: 12, scope: !3842, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 560, column: 26, scope: !3877, inlinedAt: !3881)
!3898 = !DILocation(line: 540, column: 40, scope: !3829, inlinedAt: !3894)
!3899 = !DILocation(line: 546, column: 22, scope: !3829, inlinedAt: !3894)
!3900 = !DILocation(line: 0, scope: !3839, inlinedAt: !3895)
!3901 = !DILocation(line: 540, column: 40, scope: !3839, inlinedAt: !3895)
!3902 = !DILocation(line: 546, column: 22, scope: !3839, inlinedAt: !3895)
!3903 = !DILocation(line: 0, scope: !3624, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 386, column: 50, scope: !1601, inlinedAt: !3896)
!3905 = !DILocation(line: 0, scope: !1601, inlinedAt: !3896)
!3906 = !DILocation(line: 382, column: 49, scope: !1601, inlinedAt: !3896)
!3907 = !DILocation(line: 411, column: 46, scope: !3842, inlinedAt: !3897)
!3908 = !DILocalVariable(name: "this", arg: 1, scope: !3877, type: !3836, flags: DIFlagArtificial | DIFlagObjectPointer)
!3909 = !DILocation(line: 0, scope: !3877, inlinedAt: !3881)
!3910 = !DILocalVariable(name: "__d", arg: 2, scope: !3877, file: !1257, line: 552, type: !1302)
!3911 = !DILocation(line: 552, column: 51, scope: !3877, inlinedAt: !3881)
!3912 = !DILocalVariable(arg: 3, scope: !3877, file: !1257, line: 559, type: !3691)
!3913 = !DILocation(line: 559, column: 22, scope: !3877, inlinedAt: !3881)
!3914 = !DILocalVariable(name: "this", arg: 1, scope: !3882, type: !3836, flags: DIFlagArtificial | DIFlagObjectPointer)
!3915 = !DILocation(line: 0, scope: !3882, inlinedAt: !3883)
!3916 = !DILocalVariable(name: "__d", arg: 2, scope: !3882, file: !1257, line: 552, type: !1302)
!3917 = !DILocation(line: 552, column: 51, scope: !3882, inlinedAt: !3883)
!3918 = !DILocalVariable(arg: 3, scope: !3882, file: !1257, line: 559, type: !3691)
!3919 = !DILocation(line: 559, column: 22, scope: !3882, inlinedAt: !3883)
!3920 = !DILocation(line: 0, scope: !3872, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 647, column: 52, scope: !3922, inlinedAt: !3885)
!3922 = !DILexicalBlockFile(scope: !1632, file: !1257, discriminator: 2)
!3923 = !DILocation(line: 0, scope: !3872, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 647, column: 31, scope: !1632, inlinedAt: !3885)
!3925 = !DILocalVariable(name: "this", arg: 1, scope: !1632, type: !3926, flags: DIFlagArtificial | DIFlagObjectPointer)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!3927 = !DILocation(line: 0, scope: !1632, inlinedAt: !3885)
!3928 = !DILocalVariable(name: "__lhs", arg: 2, scope: !1632, file: !1257, line: 644, type: !1573)
!3929 = !DILocation(line: 644, column: 41, scope: !1632, inlinedAt: !3885)
!3930 = !DILocalVariable(name: "__rhs", arg: 3, scope: !1632, file: !1257, line: 644, type: !1302)
!3931 = !DILocation(line: 644, column: 68, scope: !1632, inlinedAt: !3885)
!3932 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3886, file: !1257, line: 663, type: !1573)
!3933 = !DILocation(line: 663, column: 45, scope: !3886, inlinedAt: !3891)
!3934 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3886, file: !1257, line: 663, type: !1302)
!3935 = !DILocation(line: 663, column: 85, scope: !3886, inlinedAt: !3891)
!3936 = !DILocalVariable(name: "this", arg: 1, scope: !3937, type: !3836, flags: DIFlagArtificial | DIFlagObjectPointer)
!3937 = distinct !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv", scope: !1538, file: !1257, line: 570, type: !1562, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1561, variables: !212)
!3938 = !DILocation(line: 0, scope: !3937, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 441, column: 17, scope: !3892)
!3940 = !DILocation(line: 0, scope: !3829, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 547, column: 31, scope: !3839, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 587, column: 80, scope: !3943, inlinedAt: !3945)
!3943 = !DILexicalBlockFile(scope: !3944, file: !1257, discriminator: 1)
!3944 = distinct !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv", scope: !1538, file: !1257, line: 587, type: !1584, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1587, variables: !212)
!3945 = distinct !DILocation(line: 444, column: 20, scope: !3683)
!3946 = !DILocation(line: 540, column: 40, scope: !3829, inlinedAt: !3941)
!3947 = !DILocation(line: 546, column: 22, scope: !3829, inlinedAt: !3941)
!3948 = !DILocation(line: 0, scope: !3839, inlinedAt: !3942)
!3949 = !DILocation(line: 540, column: 40, scope: !3839, inlinedAt: !3942)
!3950 = !DILocation(line: 546, column: 22, scope: !3839, inlinedAt: !3942)
!3951 = !DILocalVariable(name: "this", arg: 1, scope: !3952, type: !3956, flags: DIFlagArtificial | DIFlagObjectPointer)
!3952 = distinct !DISubprogram(name: "duration<long long>", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1266, file: !1257, line: 540, type: !3953, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3834, declaration: !3955, variables: !212)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !1274, !3832, !3691}
!3955 = !DISubprogram(name: "duration<long long>", scope: !1266, file: !1257, line: 540, type: !3953, isLocal: false, isDefinition: false, scopeLine: 540, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !3834)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!3957 = !DILocation(line: 0, scope: !3952, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 547, column: 31, scope: !3959, inlinedAt: !3960)
!3959 = distinct !DISubprogram(name: "duration<long long>", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE", scope: !1266, file: !1257, line: 540, type: !3953, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3834, declaration: !3955, variables: !212)
!3960 = distinct !DILocation(line: 585, column: 80, scope: !3961, inlinedAt: !3963)
!3961 = !DILexicalBlockFile(scope: !3962, file: !1257, discriminator: 1)
!3962 = distinct !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE4zeroEv", scope: !1266, file: !1257, line: 585, type: !1313, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1312, variables: !212)
!3963 = distinct !DILocation(line: 433, column: 15, scope: !3651)
!3964 = !DILocalVariable(name: "__r", arg: 2, scope: !3952, file: !1257, line: 540, type: !3832)
!3965 = !DILocation(line: 540, column: 40, scope: !3952, inlinedAt: !3958)
!3966 = !DILocalVariable(arg: 3, scope: !3952, file: !1257, line: 546, type: !3691)
!3967 = !DILocation(line: 546, column: 22, scope: !3952, inlinedAt: !3958)
!3968 = !DILocalVariable(name: "this", arg: 1, scope: !3959, type: !3956, flags: DIFlagArtificial | DIFlagObjectPointer)
!3969 = !DILocation(line: 0, scope: !3959, inlinedAt: !3960)
!3970 = !DILocalVariable(name: "__r", arg: 2, scope: !3959, file: !1257, line: 540, type: !3832)
!3971 = !DILocation(line: 540, column: 40, scope: !3959, inlinedAt: !3960)
!3972 = !DILocalVariable(arg: 3, scope: !3959, file: !1257, line: 546, type: !3691)
!3973 = !DILocation(line: 546, column: 22, scope: !3959, inlinedAt: !3960)
!3974 = !DILocalVariable(name: "__d", arg: 1, scope: !2684, file: !2023, line: 430, type: !1302)
!3975 = !DILocation(line: 430, column: 50, scope: !2684)
!3976 = !DILocation(line: 433, column: 9, scope: !3651)
!3977 = !DILocation(line: 585, column: 89, scope: !3962, inlinedAt: !3963)
!3978 = !DILocation(line: 547, column: 31, scope: !3959, inlinedAt: !3960)
!3979 = !DILocation(line: 547, column: 19, scope: !3952, inlinedAt: !3958)
!3980 = !DILocation(line: 547, column: 26, scope: !3952, inlinedAt: !3958)
!3981 = !DILocation(line: 585, column: 73, scope: !3962, inlinedAt: !3963)
!3982 = !DILocation(line: 433, column: 15, scope: !3651)
!3983 = !DILocation(line: 676, column: 12, scope: !3648, inlinedAt: !3649)
!3984 = !DILocation(line: 676, column: 20, scope: !3648, inlinedAt: !3649)
!3985 = !DILocation(line: 665, column: 83, scope: !3640, inlinedAt: !3647)
!3986 = !DILocation(line: 665, column: 90, scope: !3640, inlinedAt: !3647)
!3987 = !DILocation(line: 656, column: 17, scope: !3630, inlinedAt: !3639)
!3988 = !DILocation(line: 564, column: 75, scope: !3624, inlinedAt: !3653)
!3989 = !DILocation(line: 656, column: 33, scope: !3630, inlinedAt: !3639)
!3990 = !DILocation(line: 564, column: 75, scope: !3624, inlinedAt: !3628)
!3991 = !DILocation(line: 656, column: 31, scope: !3630, inlinedAt: !3639)
!3992 = !DILocation(line: 433, column: 9, scope: !2684)
!3993 = !DILocalVariable(name: "__ns", scope: !3684, file: !2023, line: 436, type: !3994)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "nanoseconds", scope: !1259, file: !1257, line: 590, baseType: !1538)
!3995 = !DILocation(line: 436, column: 21, scope: !3684)
!3996 = !DILocation(line: 437, column: 13, scope: !3683)
!3997 = !DILocation(line: 665, column: 83, scope: !3676, inlinedAt: !3682)
!3998 = !DILocation(line: 665, column: 90, scope: !3676, inlinedAt: !3682)
!3999 = !DILocation(line: 647, column: 24, scope: !1361, inlinedAt: !3675)
!4000 = !DILocation(line: 560, column: 79, scope: !3770, inlinedAt: !3771)
!4001 = !DILocation(line: 560, column: 19, scope: !3764, inlinedAt: !3769)
!4002 = !DILocation(line: 560, column: 65, scope: !3764, inlinedAt: !3769)
!4003 = !DILocation(line: 413, column: 68, scope: !3786, inlinedAt: !3790)
!4004 = !DILocation(line: 362, column: 67, scope: !3776, inlinedAt: !3785)
!4005 = !DILocation(line: 564, column: 75, scope: !3624, inlinedAt: !3797)
!4006 = !DILocation(line: 362, column: 28, scope: !3776, inlinedAt: !3785)
!4007 = !DILocation(line: 547, column: 31, scope: !3712, inlinedAt: !3774)
!4008 = !DILocation(line: 547, column: 19, scope: !3702, inlinedAt: !3773)
!4009 = !DILocation(line: 547, column: 26, scope: !3702, inlinedAt: !3773)
!4010 = !DILocation(line: 362, column: 9, scope: !3776, inlinedAt: !3785)
!4011 = !DILocation(line: 413, column: 12, scope: !3786, inlinedAt: !3790)
!4012 = !DILocation(line: 413, column: 5, scope: !3786, inlinedAt: !3790)
!4013 = !DILocation(line: 560, column: 26, scope: !3764, inlinedAt: !3769)
!4014 = !DILocation(line: 564, column: 75, scope: !3670, inlinedAt: !3762)
!4015 = !DILocation(line: 564, column: 75, scope: !3670, inlinedAt: !3673)
!4016 = !DILocation(line: 647, column: 45, scope: !1361, inlinedAt: !3675)
!4017 = !DILocation(line: 560, column: 79, scope: !3698, inlinedAt: !3699)
!4018 = !DILocation(line: 560, column: 19, scope: !3688, inlinedAt: !3697)
!4019 = !DILocation(line: 560, column: 65, scope: !3688, inlinedAt: !3697)
!4020 = !DILocation(line: 413, column: 68, scope: !3715, inlinedAt: !3723)
!4021 = !DILocation(line: 386, column: 45, scope: !1493, inlinedAt: !3714)
!4022 = !DILocation(line: 564, column: 75, scope: !3735, inlinedAt: !3738)
!4023 = !DILocation(line: 386, column: 59, scope: !1493, inlinedAt: !3714)
!4024 = !DILocation(line: 385, column: 28, scope: !1493, inlinedAt: !3714)
!4025 = !DILocation(line: 547, column: 31, scope: !3712, inlinedAt: !3713)
!4026 = !DILocation(line: 547, column: 19, scope: !3702, inlinedAt: !3711)
!4027 = !DILocation(line: 547, column: 26, scope: !3702, inlinedAt: !3711)
!4028 = !DILocation(line: 385, column: 9, scope: !1493, inlinedAt: !3714)
!4029 = !DILocation(line: 413, column: 12, scope: !3715, inlinedAt: !3723)
!4030 = !DILocation(line: 413, column: 5, scope: !3715, inlinedAt: !3723)
!4031 = !DILocation(line: 560, column: 26, scope: !3688, inlinedAt: !3697)
!4032 = !DILocation(line: 564, column: 75, scope: !3670, inlinedAt: !3686)
!4033 = !DILocation(line: 564, column: 75, scope: !3670, inlinedAt: !3759)
!4034 = !DILocation(line: 647, column: 39, scope: !1361, inlinedAt: !3675)
!4035 = !DILocation(line: 437, column: 13, scope: !3684)
!4036 = !DILocation(line: 439, column: 47, scope: !3851)
!4037 = !DILocation(line: 413, column: 68, scope: !3842, inlinedAt: !3850)
!4038 = !DILocation(line: 386, column: 45, scope: !1601, inlinedAt: !3841)
!4039 = !DILocation(line: 564, column: 75, scope: !3624, inlinedAt: !3863)
!4040 = !DILocation(line: 386, column: 59, scope: !1601, inlinedAt: !3841)
!4041 = !DILocation(line: 385, column: 28, scope: !1601, inlinedAt: !3841)
!4042 = !DILocation(line: 547, column: 31, scope: !3839, inlinedAt: !3840)
!4043 = !DILocation(line: 547, column: 19, scope: !3829, inlinedAt: !3838)
!4044 = !DILocation(line: 547, column: 26, scope: !3829, inlinedAt: !3838)
!4045 = !DILocation(line: 385, column: 9, scope: !1601, inlinedAt: !3841)
!4046 = !DILocation(line: 413, column: 12, scope: !3842, inlinedAt: !3850)
!4047 = !DILocation(line: 413, column: 5, scope: !3842, inlinedAt: !3850)
!4048 = !DILocation(line: 439, column: 20, scope: !3851)
!4049 = !DILocation(line: 439, column: 18, scope: !3851)
!4050 = !DILocation(line: 440, column: 24, scope: !3892)
!4051 = !DILocation(line: 665, column: 83, scope: !3886, inlinedAt: !3891)
!4052 = !DILocation(line: 665, column: 90, scope: !3886, inlinedAt: !3891)
!4053 = !DILocation(line: 647, column: 24, scope: !1632, inlinedAt: !3885)
!4054 = !DILocation(line: 647, column: 20, scope: !1632, inlinedAt: !3885)
!4055 = !DILocation(line: 564, column: 75, scope: !3872, inlinedAt: !3924)
!4056 = !DILocation(line: 647, column: 45, scope: !1632, inlinedAt: !3885)
!4057 = !DILocation(line: 560, column: 79, scope: !3882, inlinedAt: !3883)
!4058 = !DILocation(line: 560, column: 19, scope: !3877, inlinedAt: !3881)
!4059 = !DILocation(line: 560, column: 65, scope: !3877, inlinedAt: !3881)
!4060 = !DILocation(line: 413, column: 68, scope: !3842, inlinedAt: !3897)
!4061 = !DILocation(line: 386, column: 45, scope: !1601, inlinedAt: !3896)
!4062 = !DILocation(line: 564, column: 75, scope: !3624, inlinedAt: !3904)
!4063 = !DILocation(line: 386, column: 59, scope: !1601, inlinedAt: !3896)
!4064 = !DILocation(line: 385, column: 28, scope: !1601, inlinedAt: !3896)
!4065 = !DILocation(line: 547, column: 31, scope: !3839, inlinedAt: !3895)
!4066 = !DILocation(line: 547, column: 19, scope: !3829, inlinedAt: !3894)
!4067 = !DILocation(line: 547, column: 26, scope: !3829, inlinedAt: !3894)
!4068 = !DILocation(line: 385, column: 9, scope: !1601, inlinedAt: !3896)
!4069 = !DILocation(line: 413, column: 12, scope: !3842, inlinedAt: !3897)
!4070 = !DILocation(line: 413, column: 5, scope: !3842, inlinedAt: !3897)
!4071 = !DILocation(line: 560, column: 26, scope: !3877, inlinedAt: !3881)
!4072 = !DILocation(line: 564, column: 75, scope: !3872, inlinedAt: !3875)
!4073 = !DILocation(line: 564, column: 75, scope: !3872, inlinedAt: !3921)
!4074 = !DILocation(line: 647, column: 39, scope: !1632, inlinedAt: !3885)
!4075 = !DILocation(line: 440, column: 17, scope: !3851)
!4076 = !DILocation(line: 570, column: 92, scope: !3937, inlinedAt: !3939)
!4077 = !DILocation(line: 570, column: 90, scope: !3937, inlinedAt: !3939)
!4078 = !DILocation(line: 441, column: 17, scope: !3892)
!4079 = !DILocation(line: 442, column: 9, scope: !3851)
!4080 = !DILocation(line: 587, column: 89, scope: !3944, inlinedAt: !3945)
!4081 = !DILocation(line: 547, column: 31, scope: !3839, inlinedAt: !3942)
!4082 = !DILocation(line: 547, column: 19, scope: !3829, inlinedAt: !3941)
!4083 = !DILocation(line: 547, column: 26, scope: !3829, inlinedAt: !3941)
!4084 = !DILocation(line: 587, column: 73, scope: !3944, inlinedAt: !3945)
!4085 = !DILocation(line: 444, column: 20, scope: !3683)
!4086 = !DILocation(line: 444, column: 18, scope: !3683)
!4087 = !DILocation(line: 445, column: 9, scope: !3684)
!4088 = !DILocation(line: 446, column: 5, scope: !3684)
!4089 = !DILocation(line: 447, column: 1, scope: !2684)
!4090 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc", scope: !7, file: !1649, line: 862, type: !4091, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4093, variables: !212)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!1653, !1653, !160}
!4093 = !{!631}
!4094 = !DILocalVariable(name: "__os", arg: 1, scope: !4090, file: !1649, line: 862, type: !1653)
!4095 = !DILocation(line: 862, column: 42, scope: !4090)
!4096 = !DILocalVariable(name: "__str", arg: 2, scope: !4090, file: !1649, line: 862, type: !160)
!4097 = !DILocation(line: 862, column: 60, scope: !4090)
!4098 = !DILocation(line: 864, column: 44, scope: !4090)
!4099 = !DILocation(line: 864, column: 50, scope: !4090)
!4100 = !DILocation(line: 864, column: 73, scope: !4090)
!4101 = !DILocation(line: 864, column: 57, scope: !4090)
!4102 = !DILocation(line: 864, column: 12, scope: !4103)
!4103 = !DILexicalBlockFile(scope: !4090, file: !1649, discriminator: 1)
!4104 = !DILocation(line: 864, column: 5, scope: !4090)
!4105 = distinct !DISubprogram(name: "job_2", linkageName: "_Z5job_2v", scope: !3, file: !3, line: 37, type: !2511, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !212)
!4106 = !DILocation(line: 0, scope: !3952, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 547, column: 31, scope: !3959, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 739, column: 12, scope: !4109, inlinedAt: !4110)
!4109 = !DILexicalBlockFile(scope: !1258, file: !1257, discriminator: 1)
!4110 = distinct !DILocation(line: 752, column: 16, scope: !4111, inlinedAt: !4116)
!4111 = distinct !DISubprogram(name: "operator*<int, std::__1::ratio<1, 1000>, long long>", linkageName: "_ZNSt3__16chronomlIiNS_5ratioILl1ELl1000EEExEENS_9enable_ifIXsr14is_convertibleIT_NS_11common_typeIJS5_T1_EE4typeEEE5valueENS0_8durationIS9_T0_EEE4typeERKS5_RKNSA_IS7_SB_EE", scope: !1259, file: !1257, line: 750, type: !4112, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4114, variables: !212)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!1262, !1335, !1302}
!4114 = !{!4115, !1319, !3645}
!4115 = !DITemplateTypeParameter(name: "_Rep1", type: !30)
!4116 = distinct !DILocation(line: 40, column: 35, scope: !4105)
!4117 = !DILocation(line: 540, column: 40, scope: !3952, inlinedAt: !4107)
!4118 = !DILocation(line: 546, column: 22, scope: !3952, inlinedAt: !4107)
!4119 = !DILocation(line: 0, scope: !3959, inlinedAt: !4108)
!4120 = !DILocation(line: 540, column: 40, scope: !3959, inlinedAt: !4108)
!4121 = !DILocation(line: 546, column: 22, scope: !3959, inlinedAt: !4108)
!4122 = !DILocation(line: 0, scope: !3624, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 739, column: 25, scope: !1258, inlinedAt: !4110)
!4124 = !DILocalVariable(name: "__d", arg: 1, scope: !1258, file: !1257, line: 735, type: !1302)
!4125 = !DILocation(line: 735, column: 43, scope: !1258, inlinedAt: !4110)
!4126 = !DILocalVariable(name: "__s", arg: 2, scope: !1258, file: !1257, line: 735, type: !1335)
!4127 = !DILocation(line: 735, column: 61, scope: !1258, inlinedAt: !4110)
!4128 = !DILocalVariable(name: "__s", arg: 1, scope: !4111, file: !1257, line: 750, type: !1335)
!4129 = !DILocation(line: 750, column: 24, scope: !4111, inlinedAt: !4116)
!4130 = !DILocalVariable(name: "__d", arg: 2, scope: !4111, file: !1257, line: 750, type: !1302)
!4131 = !DILocation(line: 750, column: 61, scope: !4111, inlinedAt: !4116)
!4132 = !DILocation(line: 39, column: 11, scope: !4105)
!4133 = !DILocation(line: 40, column: 33, scope: !4105)
!4134 = !DILocation(line: 752, column: 12, scope: !4111, inlinedAt: !4116)
!4135 = !DILocation(line: 752, column: 18, scope: !4111, inlinedAt: !4116)
!4136 = !DILocation(line: 739, column: 20, scope: !1258, inlinedAt: !4110)
!4137 = !DILocation(line: 739, column: 16, scope: !1258, inlinedAt: !4110)
!4138 = !DILocation(line: 564, column: 75, scope: !3624, inlinedAt: !4123)
!4139 = !DILocation(line: 739, column: 52, scope: !1258, inlinedAt: !4110)
!4140 = !DILocation(line: 739, column: 33, scope: !1258, inlinedAt: !4110)
!4141 = !DILocation(line: 547, column: 31, scope: !3959, inlinedAt: !4108)
!4142 = !DILocation(line: 547, column: 19, scope: !3952, inlinedAt: !4107)
!4143 = !DILocation(line: 547, column: 26, scope: !3952, inlinedAt: !4107)
!4144 = !DILocation(line: 739, column: 5, scope: !1258, inlinedAt: !4110)
!4145 = !DILocation(line: 752, column: 16, scope: !4111, inlinedAt: !4116)
!4146 = !DILocation(line: 752, column: 5, scope: !4111, inlinedAt: !4116)
!4147 = !DILocation(line: 40, column: 35, scope: !4105)
!4148 = !DILocation(line: 40, column: 5, scope: !4149)
!4149 = !DILexicalBlockFile(scope: !4105, file: !3, discriminator: 1)
!4150 = !DILocation(line: 41, column: 5, scope: !4105)
!4151 = !DILocation(line: 42, column: 11, scope: !4105)
!4152 = !DILocation(line: 43, column: 1, scope: !4105)
!4153 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 45, type: !28, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !212)
!4154 = !DILocalVariable(name: "thread_1", scope: !4153, file: !3, line: 47, type: !4155)
!4155 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !7, file: !2023, line: 282, size: 64, elements: !4156, identifier: "_ZTSNSt3__16threadE")
!4156 = !{!4157, !4178, !4184, !4188, !4191, !4192, !4196, !4199, !4202, !4206, !4207, !4208, !4223, !4227}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !4155, file: !2023, line: 284, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !7, file: !2051, line: 72, baseType: !4159)
!4159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !4160, line: 30, baseType: !4161)
!4160 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !2055, line: 118, baseType: !4162)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !2055, line: 103, size: 65536, elements: !4164, identifier: "_ZTS17_opaque_pthread_t")
!4164 = !{!4165, !4166, !4174}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !4163, file: !2055, line: 104, baseType: !71, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !4163, file: !2055, line: 105, baseType: !4167, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !2055, line: 57, size: 192, elements: !4169, identifier: "_ZTS28__darwin_pthread_handler_rec")
!4169 = !{!4170, !4172, !4173}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !4168, file: !2055, line: 58, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !4168, file: !2055, line: 59, baseType: !76, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !4168, file: !2055, line: 60, baseType: !4167, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !4163, file: !2055, line: 106, baseType: !4175, size: 65408, offset: 128)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 65408, elements: !4176)
!4176 = !{!4177}
!4177 = !DISubrange(count: 8176)
!4178 = !DISubprogram(name: "thread", scope: !4155, file: !2023, line: 286, type: !4179, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !4181, !4182}
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4184 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !4155, file: !2023, line: 287, type: !4185, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!4187, !4181, !4182}
!4187 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4155, size: 64)
!4188 = !DISubprogram(name: "thread", scope: !4155, file: !2023, line: 293, type: !4189, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !4181}
!4191 = !DISubprogram(name: "~thread", scope: !4155, file: !2023, line: 308, type: !4189, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4192 = !DISubprogram(name: "thread", scope: !4155, file: !2023, line: 312, type: !4193, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4181, !4195}
!4195 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4155, size: 64)
!4196 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !4155, file: !2023, line: 314, type: !4197, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!4187, !4181, !4195}
!4199 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !4155, file: !2023, line: 318, type: !4200, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4181, !4187}
!4202 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !4155, file: !2023, line: 321, type: !4203, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!184, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4206 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !4155, file: !2023, line: 322, type: !4189, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4207 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !4155, file: !2023, line: 323, type: !4189, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4208 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !4155, file: !2023, line: 325, type: !4209, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!4211, !4205}
!4211 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !4155, file: !2023, line: 289, baseType: !4212)
!4212 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !7, file: !2023, line: 213, size: 64, elements: !4213, identifier: "_ZTSNSt3__111__thread_idE")
!4213 = !{!4214, !4216, !4220}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !4212, file: !2023, line: 218, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !7, file: !2051, line: 67, baseType: !4159)
!4216 = !DISubprogram(name: "__thread_id", scope: !4212, file: !2023, line: 222, type: !4217, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !4219}
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4220 = !DISubprogram(name: "__thread_id", scope: !4212, file: !2023, line: 252, type: !4221, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{null, !4219, !4215}
!4223 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !4155, file: !2023, line: 327, type: !4224, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!4226, !4181}
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !4155, file: !2023, line: 290, baseType: !4158)
!4227 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !4155, file: !2023, line: 329, type: !4228, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!34}
!4230 = !DILocation(line: 47, column: 17, scope: !4153)
!4231 = !DILocalVariable(name: "thread_2", scope: !4153, file: !3, line: 48, type: !4155)
!4232 = !DILocation(line: 48, column: 17, scope: !4153)
!4233 = !DILocation(line: 50, column: 14, scope: !4153)
!4234 = !DILocation(line: 51, column: 14, scope: !4153)
!4235 = !DILocation(line: 52, column: 1, scope: !4153)
!4236 = !DILocation(line: 52, column: 1, scope: !4237)
!4237 = !DILexicalBlockFile(scope: !4153, file: !3, discriminator: 5)
!4238 = !DILocation(line: 52, column: 1, scope: !4239)
!4239 = !DILexicalBlockFile(scope: !4153, file: !3, discriminator: 1)
!4240 = !DILocation(line: 52, column: 1, scope: !4241)
!4241 = !DILexicalBlockFile(scope: !4153, file: !3, discriminator: 2)
!4242 = !DILocation(line: 52, column: 1, scope: !4243)
!4243 = !DILexicalBlockFile(scope: !4153, file: !3, discriminator: 3)
!4244 = !DILocation(line: 52, column: 1, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !4153, file: !3, discriminator: 4)
!4246 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !4155, file: !2023, line: 356, type: !4247, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4250, declaration: !4253, variables: !212)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4181, !4249}
!4249 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2511, size: 64)
!4250 = !{!4251, !4252, !1346}
!4251 = !DITemplateTypeParameter(name: "_Fp", type: !4249)
!4252 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !212)
!4253 = !DISubprogram(name: "thread<void (&)(), void>", scope: !4155, file: !2023, line: 356, type: !4247, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4250)
!4254 = !DILocalVariable(name: "this", arg: 1, scope: !4246, type: !4255, flags: DIFlagArtificial | DIFlagObjectPointer)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4256 = !DILocation(line: 0, scope: !4246)
!4257 = !DILocalVariable(name: "__f", arg: 2, scope: !4246, file: !2023, line: 356, type: !4249)
!4258 = !DILocation(line: 356, column: 22, scope: !4246)
!4259 = !DILocation(line: 357, column: 1, scope: !4246)
!4260 = !DILocation(line: 370, column: 1, scope: !4246)
!4261 = !DILocalVariable(name: "this", arg: 1, scope: !4262, type: !4351, flags: DIFlagArtificial | DIFlagObjectPointer)
!4262 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !4263, file: !133, line: 625, type: !4323, isLocal: false, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4322, variables: !212)
!4263 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !7, file: !133, line: 558, size: 256, elements: !4264, vtableHolder: !1093, templateParams: !680, identifier: "_ZTSNSt3__15ctypeIcEE")
!4264 = !{!4265, !4266, !4287, !4289, !4290, !4291, !4293, !4297, !4303, !4309, !4312, !4313, !4316, !4320, !4321, !4322, !4325, !4328, !4331, !4334, !4337, !4340, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350}
!4265 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4263, baseType: !1090, flags: DIFlagPublic)
!4266 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4263, baseType: !4267, flags: DIFlagPublic)
!4267 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype_base", scope: !7, file: !133, line: 355, size: 8, elements: !4268, identifier: "_ZTSNSt3__110ctype_baseE")
!4268 = !{!4269, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !4267, file: !133, line: 391, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "mask", scope: !4267, file: !133, line: 385, baseType: !3311)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !4267, file: !133, line: 392, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 262144)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl", scope: !4267, file: !133, line: 393, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !4267, file: !133, line: 394, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32768)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !4267, file: !133, line: 395, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !4267, file: !133, line: 396, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "digit", scope: !4267, file: !133, line: 397, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !4267, file: !133, line: 398, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "xdigit", scope: !4267, file: !133, line: 399, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 65536)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "blank", scope: !4267, file: !133, line: 404, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 131072)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "alnum", scope: !4267, file: !133, line: 447, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1280)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !4267, file: !133, line: 448, baseType: !4270, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 9472)
!4283 = !DISubprogram(name: "ctype_base", scope: !4267, file: !133, line: 450, type: !4284, isLocal: false, isDefinition: false, scopeLine: 450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "__tab_", scope: !4263, file: !133, line: 561, baseType: !4288, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__del_", scope: !4263, file: !133, line: 562, baseType: !184, size: 8, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4263, file: !133, line: 648, baseType: !1138, flags: DIFlagPublic | DIFlagStaticMember)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !4263, file: !133, line: 651, baseType: !4292, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 256)
!4292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!4293 = !DISubprogram(name: "ctype", scope: !4263, file: !133, line: 566, type: !4294, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{null, !4296, !4288, !184, !88}
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4297 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEjc", scope: !4263, file: !133, line: 569, type: !4298, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!184, !4300, !4271, !4302}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4263)
!4302 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !4263, file: !133, line: 564, baseType: !162)
!4303 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEPKcS3_Pj", scope: !4263, file: !133, line: 575, type: !4304, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!4306, !4300, !4306, !4306, !4308}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4302)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4309 = !DISubprogram(name: "scan_is", linkageName: "_ZNKSt3__15ctypeIcE7scan_isEjPKcS3_", scope: !4263, file: !133, line: 583, type: !4310, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!4306, !4300, !4271, !4306, !4306}
!4312 = !DISubprogram(name: "scan_not", linkageName: "_ZNKSt3__15ctypeIcE8scan_notEjPKcS3_", scope: !4263, file: !133, line: 592, type: !4310, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4313 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEc", scope: !4263, file: !133, line: 601, type: !4314, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!4302, !4300, !4302}
!4316 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEPcPKc", scope: !4263, file: !133, line: 607, type: !4317, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!4306, !4300, !4319, !4306}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4320 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEc", scope: !4263, file: !133, line: 613, type: !4314, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4321 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEPcPKc", scope: !4263, file: !133, line: 619, type: !4317, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4322 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !4263, file: !133, line: 625, type: !4323, isLocal: false, isDefinition: false, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!4302, !4300, !162}
!4325 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEPKcS3_Pc", scope: !4263, file: !133, line: 631, type: !4326, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!160, !4300, !160, !160, !4319}
!4328 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEcc", scope: !4263, file: !133, line: 637, type: !4329, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!162, !4300, !4302, !162}
!4331 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEPKcS3_cPc", scope: !4263, file: !133, line: 643, type: !4332, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!160, !4300, !4306, !4306, !162, !226}
!4334 = !DISubprogram(name: "table", linkageName: "_ZNKSt3__15ctypeIcE5tableEv", scope: !4263, file: !133, line: 655, type: !4335, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4288, !4300}
!4337 = !DISubprogram(name: "classic_table", linkageName: "_ZNSt3__15ctypeIcE13classic_tableEv", scope: !4263, file: !133, line: 656, type: !4338, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!4288}
!4340 = !DISubprogram(name: "~ctype", scope: !4263, file: !133, line: 667, type: !4341, isLocal: false, isDefinition: false, scopeLine: 667, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{null, !4296}
!4343 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEc", scope: !4263, file: !133, line: 668, type: !4314, isLocal: false, isDefinition: false, scopeLine: 668, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4344 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEPcPKc", scope: !4263, file: !133, line: 669, type: !4317, isLocal: false, isDefinition: false, scopeLine: 669, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4345 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEc", scope: !4263, file: !133, line: 670, type: !4314, isLocal: false, isDefinition: false, scopeLine: 670, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4346 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEPcPKc", scope: !4263, file: !133, line: 671, type: !4317, isLocal: false, isDefinition: false, scopeLine: 671, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4347 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEc", scope: !4263, file: !133, line: 672, type: !4323, isLocal: false, isDefinition: false, scopeLine: 672, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4348 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEPKcS3_Pc", scope: !4263, file: !133, line: 673, type: !4326, isLocal: false, isDefinition: false, scopeLine: 673, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4349 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEcc", scope: !4263, file: !133, line: 674, type: !4329, isLocal: false, isDefinition: false, scopeLine: 674, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4350 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEPKcS3_cPc", scope: !4263, file: !133, line: 675, type: !4332, isLocal: false, isDefinition: false, scopeLine: 675, containingType: !4263, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4352 = !DILocation(line: 0, scope: !4262, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 756, column: 51, scope: !4354, inlinedAt: !4356)
!4354 = !DILexicalBlockFile(scope: !4355, file: !22, discriminator: 1)
!4355 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1657, file: !22, line: 754, type: !1834, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1833, variables: !212)
!4356 = distinct !DILocation(line: 765, column: 19, scope: !4357, inlinedAt: !4359)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !22, line: 764, column: 9)
!4358 = distinct !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1657, file: !22, line: 762, type: !1821, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1820, variables: !212)
!4359 = distinct !DILocation(line: 732, column: 39, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !1649, line: 725, column: 17)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !1649, line: 723, column: 9)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !1649, line: 722, column: 13)
!4363 = distinct !DILexicalBlock(scope: !1650, file: !1649, line: 719, column: 5)
!4364 = !DILocalVariable(name: "__c", arg: 2, scope: !4262, file: !133, line: 625, type: !162)
!4365 = !DILocation(line: 625, column: 26, scope: !4262, inlinedAt: !4353)
!4366 = !DILocalVariable(name: "__l", arg: 1, scope: !4367, file: !133, line: 210, type: !155)
!4367 = distinct !DISubprogram(name: "use_facet<std::__1::ctype<char> >", linkageName: "_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE", scope: !7, file: !133, line: 210, type: !4368, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4371, variables: !212)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!4370, !155}
!4370 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4301, size: 64)
!4371 = !{!4372}
!4372 = !DITemplateTypeParameter(name: "_Facet", type: !4263)
!4373 = !DILocation(line: 210, column: 25, scope: !4367, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 756, column: 12, scope: !4355, inlinedAt: !4356)
!4375 = !DILocalVariable(name: "this", arg: 1, scope: !4355, type: !4376, flags: DIFlagArtificial | DIFlagObjectPointer)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!4377 = !DILocation(line: 0, scope: !4355, inlinedAt: !4356)
!4378 = !DILocalVariable(name: "__c", arg: 2, scope: !4355, file: !22, line: 649, type: !162)
!4379 = !DILocation(line: 649, column: 26, scope: !4355, inlinedAt: !4356)
!4380 = !DILocalVariable(name: "this", arg: 1, scope: !4358, type: !4376, flags: DIFlagArtificial | DIFlagObjectPointer)
!4381 = !DILocation(line: 0, scope: !4358, inlinedAt: !4359)
!4382 = !DILocalVariable(name: "this", arg: 1, scope: !4383, type: !4384, flags: DIFlagArtificial | DIFlagObjectPointer)
!4383 = distinct !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1962, file: !541, line: 1044, type: !1996, isLocal: false, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1995, variables: !212)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!4385 = !DILocation(line: 0, scope: !4383, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 732, column: 47, scope: !4387)
!4387 = !DILexicalBlockFile(scope: !4360, file: !1649, discriminator: 1)
!4388 = !DILocalVariable(name: "this", arg: 1, scope: !4389, type: !4390, flags: DIFlagArtificial | DIFlagObjectPointer)
!4389 = distinct !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !23, file: !22, line: 440, type: !106, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !105, variables: !212)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!4391 = !DILocation(line: 0, scope: !4389, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 727, column: 40, scope: !4360)
!4393 = !DILocalVariable(name: "this", arg: 1, scope: !4394, type: !4395, flags: DIFlagArtificial | DIFlagObjectPointer)
!4394 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !23, file: !22, line: 527, type: !1213, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1215, variables: !212)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!4396 = !DILocation(line: 0, scope: !4394, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 611, column: 69, scope: !4398, inlinedAt: !4399)
!4398 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1657, file: !22, line: 611, type: !1675, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1678, variables: !212)
!4399 = distinct !DILocation(line: 733, column: 22, scope: !4360)
!4400 = !DILocalVariable(name: "__state", arg: 2, scope: !4394, file: !22, line: 527, type: !54)
!4401 = !DILocation(line: 527, column: 28, scope: !4394, inlinedAt: !4397)
!4402 = !DILocalVariable(name: "this", arg: 1, scope: !4398, type: !4403, flags: DIFlagArtificial | DIFlagObjectPointer)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!4404 = !DILocation(line: 0, scope: !4398, inlinedAt: !4399)
!4405 = !DILocalVariable(name: "__state", arg: 2, scope: !4398, file: !22, line: 611, type: !54)
!4406 = !DILocation(line: 611, column: 49, scope: !4398, inlinedAt: !4399)
!4407 = !DILocalVariable(name: "this", arg: 1, scope: !4408, type: !4390, flags: DIFlagArtificial | DIFlagObjectPointer)
!4408 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !23, file: !22, line: 340, type: !1231, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1230, variables: !212)
!4409 = !DILocation(line: 0, scope: !4408, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 718, column: 76, scope: !4411, inlinedAt: !4412)
!4411 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1657, file: !22, line: 716, type: !1810, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1809, variables: !212)
!4412 = distinct !DILocation(line: 1032, column: 23, scope: !4413, inlinedAt: !4414)
!4413 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE", scope: !1962, file: !541, line: 1031, type: !1976, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1975, variables: !212)
!4414 = distinct !DILocation(line: 1032, column: 32, scope: !4415, inlinedAt: !4416)
!4415 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE", scope: !1962, file: !541, line: 1031, type: !1976, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1975, variables: !212)
!4416 = distinct !DILocation(line: 725, column: 34, scope: !4360)
!4417 = !DILocalVariable(name: "this", arg: 1, scope: !4411, type: !4376, flags: DIFlagArtificial | DIFlagObjectPointer)
!4418 = !DILocation(line: 0, scope: !4411, inlinedAt: !4412)
!4419 = !DILocalVariable(name: "this", arg: 1, scope: !4413, type: !4420, flags: DIFlagArtificial | DIFlagObjectPointer)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!4421 = !DILocation(line: 0, scope: !4413, inlinedAt: !4414)
!4422 = !DILocalVariable(name: "__s", arg: 2, scope: !4413, file: !541, line: 1031, type: !1979)
!4423 = !DILocation(line: 1031, column: 65, scope: !4413, inlinedAt: !4414)
!4424 = !DILocalVariable(name: "this", arg: 1, scope: !4415, type: !4420, flags: DIFlagArtificial | DIFlagObjectPointer)
!4425 = !DILocation(line: 0, scope: !4415, inlinedAt: !4416)
!4426 = !DILocalVariable(name: "__s", arg: 2, scope: !4415, file: !541, line: 1031, type: !1979)
!4427 = !DILocation(line: 1031, column: 65, scope: !4415, inlinedAt: !4416)
!4428 = !DILocalVariable(name: "this", arg: 1, scope: !4429, type: !4454, flags: DIFlagArtificial | DIFlagObjectPointer)
!4429 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !4430, file: !1649, line: 254, type: !4451, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4450, variables: !212)
!4430 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "sentry", scope: !1654, file: !1649, line: 190, size: 128, elements: !4431, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE")
!4431 = !{!4432, !4433, !4434, !4440, !4444, !4447, !4450}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "__ok_", scope: !4430, file: !1649, line: 242, baseType: !184, size: 8)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "__os_", scope: !4430, file: !1649, line: 243, baseType: !1653, size: 64, offset: 64)
!4434 = !DISubprogram(name: "sentry", scope: !4430, file: !1649, line: 245, type: !4435, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !4437, !4438}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4438 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4430)
!4440 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryaSERKS4_", scope: !4430, file: !1649, line: 246, type: !4441, isLocal: false, isDefinition: false, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!4443, !4437, !4438}
!4443 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4430, size: 64)
!4444 = !DISubprogram(name: "sentry", scope: !4430, file: !1649, line: 249, type: !4445, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !4437, !1653}
!4447 = !DISubprogram(name: "~sentry", scope: !4430, file: !1649, line: 250, type: !4448, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !4437}
!4450 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !4430, file: !1649, line: 254, type: !4451, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!184, !4453}
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4455 = !DILocation(line: 0, scope: !4429, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 722, column: 13, scope: !4362)
!4457 = !DILocalVariable(name: "__os", arg: 1, scope: !1650, file: !1649, line: 714, type: !1653)
!4458 = !DILocation(line: 714, column: 58, scope: !1650)
!4459 = !DILocalVariable(name: "__str", arg: 2, scope: !1650, file: !1649, line: 715, type: !160)
!4460 = !DILocation(line: 715, column: 41, scope: !1650)
!4461 = !DILocalVariable(name: "__len", arg: 3, scope: !1650, file: !1649, line: 715, type: !88)
!4462 = !DILocation(line: 715, column: 55, scope: !1650)
!4463 = !DILocalVariable(name: "__s", scope: !4363, file: !1649, line: 721, type: !4430)
!4464 = !DILocation(line: 721, column: 57, scope: !4363)
!4465 = !DILocation(line: 721, column: 61, scope: !4363)
!4466 = !DILocation(line: 254, column: 39, scope: !4429, inlinedAt: !4456)
!4467 = !DILocation(line: 254, column: 32, scope: !4429, inlinedAt: !4456)
!4468 = !DILocation(line: 722, column: 13, scope: !4469)
!4469 = !DILexicalBlockFile(scope: !4363, file: !1649, discriminator: 1)
!4470 = !DILocation(line: 725, column: 38, scope: !4360)
!4471 = !DILocation(line: 1032, column: 32, scope: !4415, inlinedAt: !4416)
!4472 = !DILocation(line: 1032, column: 32, scope: !4413, inlinedAt: !4414)
!4473 = !DILocation(line: 1032, column: 11, scope: !4413, inlinedAt: !4414)
!4474 = !DILocation(line: 1032, column: 19, scope: !4413, inlinedAt: !4414)
!4475 = !DILocation(line: 718, column: 76, scope: !4411, inlinedAt: !4412)
!4476 = !DILocation(line: 340, column: 55, scope: !4408, inlinedAt: !4410)
!4477 = !DILocation(line: 718, column: 12, scope: !4411, inlinedAt: !4412)
!4478 = !DILocation(line: 1032, column: 11, scope: !4479, inlinedAt: !4414)
!4479 = !DILexicalBlockFile(scope: !4413, file: !541, discriminator: 1)
!4480 = !DILocation(line: 726, column: 34, scope: !4360)
!4481 = !DILocation(line: 727, column: 35, scope: !4360)
!4482 = !DILocation(line: 442, column: 12, scope: !4389, inlinedAt: !4392)
!4483 = !DILocation(line: 442, column: 5, scope: !4389, inlinedAt: !4392)
!4484 = !DILocation(line: 727, column: 48, scope: !4387)
!4485 = !DILocation(line: 727, column: 73, scope: !4387)
!4486 = !DILocation(line: 727, column: 34, scope: !4387)
!4487 = !DILocation(line: 728, column: 38, scope: !4360)
!4488 = !DILocation(line: 728, column: 46, scope: !4360)
!4489 = !DILocation(line: 728, column: 44, scope: !4360)
!4490 = !DILocation(line: 727, column: 34, scope: !4491)
!4491 = !DILexicalBlockFile(scope: !4360, file: !1649, discriminator: 2)
!4492 = !DILocation(line: 729, column: 38, scope: !4360)
!4493 = !DILocation(line: 727, column: 34, scope: !4494)
!4494 = !DILexicalBlockFile(scope: !4360, file: !1649, discriminator: 3)
!4495 = !DILocation(line: 727, column: 34, scope: !4496)
!4496 = !DILexicalBlockFile(scope: !4360, file: !1649, discriminator: 4)
!4497 = !DILocation(line: 730, column: 34, scope: !4360)
!4498 = !DILocation(line: 730, column: 42, scope: !4360)
!4499 = !DILocation(line: 730, column: 40, scope: !4360)
!4500 = !DILocation(line: 731, column: 34, scope: !4360)
!4501 = !DILocation(line: 732, column: 34, scope: !4360)
!4502 = !DILocation(line: 764, column: 34, scope: !4357, inlinedAt: !4359)
!4503 = !DILocation(line: 764, column: 54, scope: !4357, inlinedAt: !4359)
!4504 = !DILocation(line: 764, column: 9, scope: !4505, inlinedAt: !4359)
!4505 = !DILexicalBlockFile(scope: !4357, file: !22, discriminator: 1)
!4506 = !DILocation(line: 764, column: 9, scope: !4358, inlinedAt: !4359)
!4507 = !DILocation(line: 756, column: 41, scope: !4355, inlinedAt: !4356)
!4508 = !DILocation(line: 212, column: 40, scope: !4367, inlinedAt: !4374)
!4509 = !DILocation(line: 212, column: 44, scope: !4367, inlinedAt: !4374)
!4510 = !DILocation(line: 212, column: 12, scope: !4367, inlinedAt: !4374)
!4511 = !DILocation(line: 756, column: 57, scope: !4354, inlinedAt: !4356)
!4512 = !DILocation(line: 627, column: 16, scope: !4262, inlinedAt: !4353)
!4513 = !DILocation(line: 627, column: 25, scope: !4262, inlinedAt: !4353)
!4514 = !DILocation(line: 757, column: 1, scope: !4355, inlinedAt: !4356)
!4515 = !DILocation(line: 756, column: 5, scope: !4516, inlinedAt: !4356)
!4516 = !DILexicalBlockFile(scope: !4355, file: !22, discriminator: 3)
!4517 = !DILocation(line: 756, column: 5, scope: !4518, inlinedAt: !4356)
!4518 = !DILexicalBlockFile(scope: !4355, file: !22, discriminator: 4)
!4519 = !DILocation(line: 756, column: 5, scope: !4520, inlinedAt: !4356)
!4520 = !DILexicalBlockFile(scope: !4355, file: !22, discriminator: 2)
!4521 = !DILocation(line: 765, column: 19, scope: !4357, inlinedAt: !4359)
!4522 = !DILocation(line: 765, column: 9, scope: !4357, inlinedAt: !4359)
!4523 = !DILocation(line: 765, column: 17, scope: !4357, inlinedAt: !4359)
!4524 = !DILocation(line: 766, column: 12, scope: !4358, inlinedAt: !4359)
!4525 = !DILocation(line: 766, column: 5, scope: !4358, inlinedAt: !4359)
!4526 = !DILocation(line: 725, column: 17, scope: !4387)
!4527 = !DILocation(line: 725, column: 17, scope: !4491)
!4528 = !DILocation(line: 1044, column: 69, scope: !4383, inlinedAt: !4386)
!4529 = !DILocation(line: 1044, column: 77, scope: !4383, inlinedAt: !4386)
!4530 = !DILocation(line: 725, column: 17, scope: !4531)
!4531 = !DILexicalBlockFile(scope: !4361, file: !1649, discriminator: 2)
!4532 = !DILocation(line: 733, column: 17, scope: !4360)
!4533 = !DILocation(line: 611, column: 69, scope: !4398, inlinedAt: !4399)
!4534 = !DILocation(line: 611, column: 78, scope: !4398, inlinedAt: !4399)
!4535 = !DILocation(line: 529, column: 11, scope: !4394, inlinedAt: !4397)
!4536 = !DILocation(line: 529, column: 24, scope: !4394, inlinedAt: !4397)
!4537 = !DILocation(line: 529, column: 22, scope: !4394, inlinedAt: !4397)
!4538 = !DILocation(line: 529, column: 5, scope: !4394, inlinedAt: !4397)
!4539 = !DILocation(line: 611, column: 87, scope: !4398, inlinedAt: !4399)
!4540 = !DILocation(line: 733, column: 17, scope: !4387)
!4541 = !DILocation(line: 743, column: 1, scope: !4363)
!4542 = !DILocation(line: 743, column: 1, scope: !4543)
!4543 = !DILexicalBlockFile(scope: !4362, file: !1649, discriminator: 1)
!4544 = !DILocation(line: 736, column: 5, scope: !1650)
!4545 = !DILocation(line: 736, column: 5, scope: !4469)
!4546 = !DILocation(line: 739, column: 9, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !1650, file: !1649, line: 738, column: 5)
!4548 = !DILocation(line: 739, column: 14, scope: !4547)
!4549 = !DILocation(line: 740, column: 5, scope: !4547)
!4550 = !DILocation(line: 742, column: 12, scope: !1650)
!4551 = !DILocation(line: 742, column: 5, scope: !1650)
!4552 = !DILocation(line: 734, column: 9, scope: !4361)
!4553 = !DILocation(line: 736, column: 5, scope: !4554)
!4554 = !DILexicalBlockFile(scope: !1650, file: !1649, discriminator: 2)
!4555 = !DILocation(line: 736, column: 5, scope: !4556)
!4556 = !DILexicalBlockFile(scope: !4363, file: !1649, discriminator: 2)
!4557 = !DILocation(line: 743, column: 1, scope: !4558)
!4558 = !DILexicalBlockFile(scope: !4547, file: !1649, discriminator: 2)
!4559 = !DILocation(line: 740, column: 5, scope: !4560)
!4560 = !DILexicalBlockFile(scope: !4547, file: !1649, discriminator: 1)
!4561 = !DILocation(line: 740, column: 5, scope: !4558)
!4562 = !DILocation(line: 740, column: 5, scope: !4563)
!4563 = !DILexicalBlockFile(scope: !4547, file: !1649, discriminator: 3)
!4564 = !DILocation(line: 740, column: 5, scope: !4565)
!4565 = !DILexicalBlockFile(scope: !4547, file: !1649, discriminator: 4)
!4566 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !632, file: !633, line: 215, type: !651, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !650, variables: !212)
!4567 = !DILocalVariable(name: "__s", arg: 1, scope: !4566, file: !633, line: 215, type: !649)
!4568 = !DILocation(line: 215, column: 29, scope: !4566)
!4569 = !DILocation(line: 215, column: 70, scope: !4566)
!4570 = !DILocation(line: 215, column: 53, scope: !4566)
!4571 = !DILocation(line: 215, column: 46, scope: !4566)
!4572 = distinct !DISubprogram(name: "__pad_and_output<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", scope: !7, file: !4573, line: 1326, type: !4574, isLocal: false, isDefinition: true, scopeLine: 1329, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !629, variables: !212)
!4573 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!1962, !1962, !160, !160, !160, !84, !162}
!4576 = !DILocalVariable(name: "this", arg: 1, scope: !4577, type: !1688, flags: DIFlagArtificial | DIFlagObjectPointer)
!4577 = distinct !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1689, file: !1658, line: 223, type: !1750, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1749, variables: !212)
!4578 = !DILocation(line: 0, scope: !4577, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 1350, column: 26, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !4573, line: 1350, column: 13)
!4581 = distinct !DILexicalBlock(scope: !4582, file: !4573, line: 1348, column: 5)
!4582 = distinct !DILexicalBlock(scope: !4572, file: !4573, line: 1347, column: 9)
!4583 = !DILocalVariable(name: "__s", arg: 2, scope: !4577, file: !1658, line: 223, type: !1752)
!4584 = !DILocation(line: 223, column: 39, scope: !4577, inlinedAt: !4579)
!4585 = !DILocalVariable(name: "__n", arg: 3, scope: !4577, file: !1658, line: 223, type: !68)
!4586 = !DILocation(line: 223, column: 55, scope: !4577, inlinedAt: !4579)
!4587 = !DILocalVariable(name: "__p", arg: 1, scope: !4588, file: !187, line: 1118, type: !160)
!4588 = distinct !DISubprogram(name: "__to_raw_pointer<const char>", linkageName: "_ZNSt3__116__to_raw_pointerIKcEEPT_S3_", scope: !7, file: !187, line: 1118, type: !4589, isLocal: false, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4591, variables: !212)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!160, !160}
!4591 = !{!4592}
!4592 = !DITemplateTypeParameter(name: "_Tp", type: !161)
!4593 = !DILocation(line: 1118, column: 23, scope: !4588, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 1132, column: 55, scope: !4595, inlinedAt: !4597)
!4595 = !DILexicalBlockFile(scope: !4596, file: !171, discriminator: 1)
!4596 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !170, file: !171, line: 1132, type: !917, isLocal: false, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !919, variables: !212)
!4597 = distinct !DILocation(line: 1350, column: 37, scope: !4580)
!4598 = !DILocalVariable(name: "__x", arg: 1, scope: !4599, file: !282, line: 437, type: !236)
!4599 = distinct !DISubprogram(name: "addressof<const char>", linkageName: "_ZNSt3__19addressofIKcEEPT_RS2_", scope: !7, file: !282, line: 437, type: !4600, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4591, variables: !212)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!160, !236}
!4602 = !DILocation(line: 437, column: 16, scope: !4599, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 985, column: 17, scope: !4604, inlinedAt: !4620)
!4604 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_", scope: !4605, file: !187, line: 983, type: !4608, isLocal: false, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4607, variables: !212)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<const char *>", scope: !7, file: !187, line: 967, size: 8, elements: !4606, templateParams: !4618, identifier: "_ZTSNSt3__114pointer_traitsIPKcEE")
!4606 = !{!4607}
!4607 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_", scope: !4605, file: !187, line: 983, type: !4608, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: false)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4610, !4611}
!4610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !4605, file: !187, line: 969, baseType: !160)
!4611 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4613, file: !282, line: 414, baseType: !161)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<const char *>::__nat, const char>", scope: !7, file: !282, line: 414, size: 8, elements: !212, templateParams: !4614, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPKcE5__natES2_EE")
!4614 = !{!285, !4615, !4617}
!4615 = !DITemplateTypeParameter(name: "_If", type: !4616)
!4616 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !4605, file: !187, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPKcE5__natE")
!4617 = !DITemplateTypeParameter(name: "_Then", type: !161)
!4618 = !{!4619}
!4619 = !DITemplateTypeParameter(name: "_Ptr", type: !160)
!4620 = distinct !DILocation(line: 1312, column: 17, scope: !4621, inlinedAt: !4623)
!4621 = !DILexicalBlockFile(scope: !4622, file: !171, discriminator: 1)
!4622 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !170, file: !171, line: 1311, type: !1010, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1018, variables: !212)
!4623 = distinct !DILocation(line: 1318, column: 54, scope: !4624, inlinedAt: !4626)
!4624 = !DILexicalBlockFile(scope: !4625, file: !171, discriminator: 2)
!4625 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !170, file: !171, line: 1317, type: !1010, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1020, variables: !212)
!4626 = distinct !DILocation(line: 1132, column: 79, scope: !4596, inlinedAt: !4597)
!4627 = !DILocalVariable(name: "__r", arg: 1, scope: !4604, file: !187, line: 984, type: !4611)
!4628 = !DILocation(line: 984, column: 67, scope: !4604, inlinedAt: !4620)
!4629 = !DILocalVariable(name: "this", arg: 1, scope: !4630, type: !4631, flags: DIFlagArtificial | DIFlagObjectPointer)
!4630 = distinct !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !186, file: !187, line: 2217, type: !425, isLocal: false, isDefinition: true, scopeLine: 2217, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !424, variables: !212)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!4632 = !DILocation(line: 0, scope: !4630, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 1312, column: 64, scope: !4622, inlinedAt: !4623)
!4634 = !DILocalVariable(name: "this", arg: 1, scope: !4622, type: !4635, flags: DIFlagArtificial | DIFlagObjectPointer)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!4636 = !DILocation(line: 0, scope: !4622, inlinedAt: !4623)
!4637 = !DILocation(line: 0, scope: !4630, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 1306, column: 22, scope: !4639, inlinedAt: !4640)
!4639 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !170, file: !171, line: 1305, type: !1010, isLocal: false, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1009, variables: !212)
!4640 = distinct !DILocation(line: 1318, column: 31, scope: !4641, inlinedAt: !4626)
!4641 = !DILexicalBlockFile(scope: !4625, file: !171, discriminator: 1)
!4642 = !DILocalVariable(name: "this", arg: 1, scope: !4639, type: !4635, flags: DIFlagArtificial | DIFlagObjectPointer)
!4643 = !DILocation(line: 0, scope: !4639, inlinedAt: !4640)
!4644 = !DILocation(line: 0, scope: !4630, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 1224, column: 27, scope: !4646, inlinedAt: !4647)
!4646 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !170, file: !171, line: 1223, type: !780, isLocal: false, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !988, variables: !212)
!4647 = distinct !DILocation(line: 1318, column: 17, scope: !4625, inlinedAt: !4626)
!4648 = !DILocalVariable(name: "this", arg: 1, scope: !4646, type: !4635, flags: DIFlagArtificial | DIFlagObjectPointer)
!4649 = !DILocation(line: 0, scope: !4646, inlinedAt: !4647)
!4650 = !DILocalVariable(name: "this", arg: 1, scope: !4625, type: !4635, flags: DIFlagArtificial | DIFlagObjectPointer)
!4651 = !DILocation(line: 0, scope: !4625, inlinedAt: !4626)
!4652 = !DILocalVariable(name: "this", arg: 1, scope: !4596, type: !4635, flags: DIFlagArtificial | DIFlagObjectPointer)
!4653 = !DILocation(line: 0, scope: !4596, inlinedAt: !4597)
!4654 = !DILocalVariable(name: "this", arg: 1, scope: !4655, type: !4661, flags: DIFlagArtificial | DIFlagObjectPointer)
!4655 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv", scope: !186, file: !187, line: 2167, type: !4656, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4658, declaration: !4660, variables: !212)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !423}
!4658 = !{!4659, !1346}
!4659 = !DITemplateValueParameter(name: "_Dummy", type: !184, value: i8 1)
!4660 = !DISubprogram(name: "__compressed_pair<true, void>", scope: !186, file: !187, line: 2167, type: !4656, isLocal: false, isDefinition: false, scopeLine: 2167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !4658)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!4662 = !DILocation(line: 0, scope: !4655, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 2167, column: 33, scope: !4664, inlinedAt: !4665)
!4664 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv", scope: !186, file: !187, line: 2167, type: !4656, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4658, declaration: !4660, variables: !212)
!4665 = distinct !DILocation(line: 786, column: 5, scope: !4666, inlinedAt: !4667)
!4666 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc", scope: !170, file: !171, line: 1709, type: !482, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !481, variables: !212)
!4667 = distinct !DILocation(line: 1710, column: 1, scope: !4668, inlinedAt: !4669)
!4668 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc", scope: !170, file: !171, line: 1709, type: !482, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !481, variables: !212)
!4669 = distinct !DILocation(line: 1349, column: 39, scope: !4581)
!4670 = !DILocalVariable(name: "this", arg: 1, scope: !4664, type: !4661, flags: DIFlagArtificial | DIFlagObjectPointer)
!4671 = !DILocation(line: 0, scope: !4664, inlinedAt: !4665)
!4672 = !DILocalVariable(name: "this", arg: 1, scope: !4666, type: !4673, flags: DIFlagArtificial | DIFlagObjectPointer)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!4674 = !DILocation(line: 0, scope: !4666, inlinedAt: !4667)
!4675 = !DILocalVariable(name: "__n", arg: 2, scope: !4666, file: !171, line: 786, type: !202)
!4676 = !DILocation(line: 786, column: 28, scope: !4666, inlinedAt: !4667)
!4677 = !DILocalVariable(name: "__c", arg: 3, scope: !4666, file: !171, line: 786, type: !162)
!4678 = !DILocation(line: 786, column: 40, scope: !4666, inlinedAt: !4667)
!4679 = !DILocalVariable(name: "this", arg: 1, scope: !4668, type: !4673, flags: DIFlagArtificial | DIFlagObjectPointer)
!4680 = !DILocation(line: 0, scope: !4668, inlinedAt: !4669)
!4681 = !DILocalVariable(name: "__n", arg: 2, scope: !4668, file: !171, line: 786, type: !202)
!4682 = !DILocation(line: 786, column: 28, scope: !4668, inlinedAt: !4669)
!4683 = !DILocalVariable(name: "__c", arg: 3, scope: !4668, file: !171, line: 786, type: !162)
!4684 = !DILocation(line: 786, column: 40, scope: !4668, inlinedAt: !4669)
!4685 = !DILocation(line: 0, scope: !4577, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 1341, column: 26, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !4573, line: 1341, column: 13)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !4573, line: 1340, column: 5)
!4689 = distinct !DILexicalBlock(scope: !4572, file: !4573, line: 1339, column: 9)
!4690 = !DILocation(line: 223, column: 39, scope: !4577, inlinedAt: !4686)
!4691 = !DILocation(line: 223, column: 55, scope: !4577, inlinedAt: !4686)
!4692 = !DILocation(line: 0, scope: !4577, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 1359, column: 26, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !4573, line: 1359, column: 13)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !4573, line: 1358, column: 5)
!4696 = distinct !DILexicalBlock(scope: !4572, file: !4573, line: 1357, column: 9)
!4697 = !DILocation(line: 223, column: 39, scope: !4577, inlinedAt: !4693)
!4698 = !DILocation(line: 223, column: 55, scope: !4577, inlinedAt: !4693)
!4699 = !DILocalVariable(name: "this", arg: 1, scope: !4700, type: !4395, flags: DIFlagArtificial | DIFlagObjectPointer)
!4700 = distinct !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !23, file: !22, line: 509, type: !125, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !128, variables: !212)
!4701 = !DILocation(line: 0, scope: !4700, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 1365, column: 11, scope: !4572)
!4703 = !DILocalVariable(name: "__wide", arg: 2, scope: !4700, file: !22, line: 509, type: !68)
!4704 = !DILocation(line: 509, column: 28, scope: !4700, inlinedAt: !4702)
!4705 = !DILocalVariable(name: "__r", scope: !4700, file: !22, line: 511, type: !68)
!4706 = !DILocation(line: 511, column: 16, scope: !4700, inlinedAt: !4702)
!4707 = !DILocalVariable(name: "this", arg: 1, scope: !4708, type: !4390, flags: DIFlagArtificial | DIFlagObjectPointer)
!4708 = distinct !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !23, file: !22, line: 502, type: !122, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !127, variables: !212)
!4709 = !DILocation(line: 0, scope: !4708, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 1333, column: 29, scope: !4572)
!4711 = !DILocalVariable(name: "__s", arg: 1, scope: !4572, file: !4573, line: 1326, type: !1962)
!4712 = !DILocation(line: 1326, column: 55, scope: !4572)
!4713 = !DILocalVariable(name: "__ob", arg: 2, scope: !4572, file: !4573, line: 1327, type: !160)
!4714 = !DILocation(line: 1327, column: 32, scope: !4572)
!4715 = !DILocalVariable(name: "__op", arg: 3, scope: !4572, file: !4573, line: 1327, type: !160)
!4716 = !DILocation(line: 1327, column: 52, scope: !4572)
!4717 = !DILocalVariable(name: "__oe", arg: 4, scope: !4572, file: !4573, line: 1327, type: !160)
!4718 = !DILocation(line: 1327, column: 72, scope: !4572)
!4719 = !DILocalVariable(name: "__iob", arg: 5, scope: !4572, file: !4573, line: 1328, type: !84)
!4720 = !DILocation(line: 1328, column: 28, scope: !4572)
!4721 = !DILocalVariable(name: "__fl", arg: 6, scope: !4572, file: !4573, line: 1328, type: !162)
!4722 = !DILocation(line: 1328, column: 42, scope: !4572)
!4723 = !DILocation(line: 1330, column: 13, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4572, file: !4573, line: 1330, column: 9)
!4725 = !DILocation(line: 1330, column: 21, scope: !4724)
!4726 = !DILocation(line: 1330, column: 9, scope: !4572)
!4727 = !DILocation(line: 1331, column: 16, scope: !4724)
!4728 = !DILocation(line: 1331, column: 9, scope: !4724)
!4729 = !DILocalVariable(name: "__sz", scope: !4572, file: !4573, line: 1332, type: !68)
!4730 = !DILocation(line: 1332, column: 16, scope: !4572)
!4731 = !DILocation(line: 1332, column: 23, scope: !4572)
!4732 = !DILocation(line: 1332, column: 30, scope: !4572)
!4733 = !DILocation(line: 1332, column: 28, scope: !4572)
!4734 = !DILocalVariable(name: "__ns", scope: !4572, file: !4573, line: 1333, type: !68)
!4735 = !DILocation(line: 1333, column: 16, scope: !4572)
!4736 = !DILocation(line: 1333, column: 23, scope: !4572)
!4737 = !DILocation(line: 504, column: 12, scope: !4708, inlinedAt: !4710)
!4738 = !DILocation(line: 1334, column: 9, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4572, file: !4573, line: 1334, column: 9)
!4740 = !DILocation(line: 1334, column: 16, scope: !4739)
!4741 = !DILocation(line: 1334, column: 14, scope: !4739)
!4742 = !DILocation(line: 1334, column: 9, scope: !4572)
!4743 = !DILocation(line: 1335, column: 17, scope: !4739)
!4744 = !DILocation(line: 1335, column: 14, scope: !4739)
!4745 = !DILocation(line: 1335, column: 9, scope: !4739)
!4746 = !DILocation(line: 1337, column: 14, scope: !4739)
!4747 = !DILocalVariable(name: "__np", scope: !4572, file: !4573, line: 1338, type: !68)
!4748 = !DILocation(line: 1338, column: 16, scope: !4572)
!4749 = !DILocation(line: 1338, column: 23, scope: !4572)
!4750 = !DILocation(line: 1338, column: 30, scope: !4572)
!4751 = !DILocation(line: 1338, column: 28, scope: !4572)
!4752 = !DILocation(line: 1339, column: 9, scope: !4689)
!4753 = !DILocation(line: 1339, column: 14, scope: !4689)
!4754 = !DILocation(line: 1339, column: 9, scope: !4572)
!4755 = !DILocation(line: 1341, column: 17, scope: !4687)
!4756 = !DILocation(line: 1341, column: 32, scope: !4687)
!4757 = !DILocation(line: 1341, column: 38, scope: !4687)
!4758 = !DILocation(line: 224, column: 14, scope: !4577, inlinedAt: !4686)
!4759 = !DILocation(line: 224, column: 21, scope: !4577, inlinedAt: !4686)
!4760 = !DILocation(line: 224, column: 26, scope: !4577, inlinedAt: !4686)
!4761 = !DILocation(line: 1341, column: 47, scope: !4687)
!4762 = !DILocation(line: 1341, column: 44, scope: !4687)
!4763 = !DILocation(line: 1341, column: 13, scope: !4688)
!4764 = !DILocation(line: 1343, column: 17, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4687, file: !4573, line: 1342, column: 9)
!4766 = !DILocation(line: 1343, column: 25, scope: !4765)
!4767 = !DILocation(line: 1344, column: 20, scope: !4765)
!4768 = !DILocation(line: 1344, column: 13, scope: !4765)
!4769 = !DILocation(line: 1346, column: 5, scope: !4688)
!4770 = !DILocation(line: 1347, column: 9, scope: !4582)
!4771 = !DILocation(line: 1347, column: 14, scope: !4582)
!4772 = !DILocation(line: 1347, column: 9, scope: !4572)
!4773 = !DILocalVariable(name: "__sp", scope: !4581, file: !4573, line: 1349, type: !170)
!4774 = !DILocation(line: 1349, column: 39, scope: !4581)
!4775 = !DILocation(line: 1349, column: 44, scope: !4581)
!4776 = !DILocation(line: 1349, column: 50, scope: !4581)
!4777 = !DILocation(line: 1710, column: 1, scope: !4668, inlinedAt: !4669)
!4778 = !DILocation(line: 1710, column: 1, scope: !4666, inlinedAt: !4667)
!4779 = !DILocation(line: 786, column: 5, scope: !4666, inlinedAt: !4667)
!4780 = !DILocation(line: 2167, column: 33, scope: !4655, inlinedAt: !4663)
!4781 = !DILocation(line: 2167, column: 13, scope: !4655, inlinedAt: !4663)
!4782 = !DILocation(line: 2167, column: 13, scope: !4783, inlinedAt: !4663)
!4783 = !DILexicalBlockFile(scope: !4655, file: !187, discriminator: 1)
!4784 = !DILocation(line: 1711, column: 12, scope: !4785, inlinedAt: !4667)
!4785 = distinct !DILexicalBlock(scope: !4666, file: !171, line: 1710, column: 1)
!4786 = !DILocation(line: 1711, column: 17, scope: !4785, inlinedAt: !4667)
!4787 = !DILocation(line: 1711, column: 5, scope: !4785, inlinedAt: !4667)
!4788 = !DILocation(line: 1350, column: 17, scope: !4580)
!4789 = !DILocation(line: 1224, column: 22, scope: !4646, inlinedAt: !4647)
!4790 = !DILocation(line: 2218, column: 39, scope: !4630, inlinedAt: !4645)
!4791 = !DILocation(line: 2218, column: 46, scope: !4630, inlinedAt: !4645)
!4792 = !DILocation(line: 1224, column: 35, scope: !4646, inlinedAt: !4647)
!4793 = !DILocation(line: 1224, column: 39, scope: !4646, inlinedAt: !4647)
!4794 = !DILocation(line: 1224, column: 47, scope: !4646, inlinedAt: !4647)
!4795 = !DILocation(line: 1318, column: 17, scope: !4625, inlinedAt: !4626)
!4796 = !DILocation(line: 1306, column: 17, scope: !4639, inlinedAt: !4640)
!4797 = !DILocation(line: 2218, column: 39, scope: !4630, inlinedAt: !4638)
!4798 = !DILocation(line: 2218, column: 46, scope: !4630, inlinedAt: !4638)
!4799 = !DILocation(line: 1306, column: 30, scope: !4639, inlinedAt: !4640)
!4800 = !DILocation(line: 1306, column: 34, scope: !4639, inlinedAt: !4640)
!4801 = !DILocation(line: 1318, column: 17, scope: !4641, inlinedAt: !4626)
!4802 = !DILocation(line: 1312, column: 59, scope: !4622, inlinedAt: !4623)
!4803 = !DILocation(line: 2218, column: 39, scope: !4630, inlinedAt: !4633)
!4804 = !DILocation(line: 2218, column: 46, scope: !4630, inlinedAt: !4633)
!4805 = !DILocation(line: 1312, column: 72, scope: !4622, inlinedAt: !4623)
!4806 = !DILocation(line: 1312, column: 76, scope: !4622, inlinedAt: !4623)
!4807 = !DILocation(line: 985, column: 34, scope: !4604, inlinedAt: !4620)
!4808 = !DILocation(line: 439, column: 32, scope: !4599, inlinedAt: !4603)
!4809 = !DILocation(line: 1318, column: 17, scope: !4624, inlinedAt: !4626)
!4810 = !DILocation(line: 1318, column: 17, scope: !4811, inlinedAt: !4626)
!4811 = !DILexicalBlockFile(scope: !4625, file: !171, discriminator: 3)
!4812 = !DILocation(line: 1120, column: 12, scope: !4588, inlinedAt: !4594)
!4813 = !DILocation(line: 1350, column: 45, scope: !4580)
!4814 = !DILocation(line: 224, column: 14, scope: !4577, inlinedAt: !4579)
!4815 = !DILocation(line: 224, column: 21, scope: !4577, inlinedAt: !4579)
!4816 = !DILocation(line: 224, column: 26, scope: !4577, inlinedAt: !4579)
!4817 = !DILocation(line: 224, column: 7, scope: !4577, inlinedAt: !4579)
!4818 = !DILocation(line: 1350, column: 54, scope: !4819)
!4819 = !DILexicalBlockFile(scope: !4580, file: !4573, discriminator: 1)
!4820 = !DILocation(line: 1350, column: 51, scope: !4819)
!4821 = !DILocation(line: 1350, column: 13, scope: !4822)
!4822 = !DILexicalBlockFile(scope: !4581, file: !4573, discriminator: 1)
!4823 = !DILocation(line: 1352, column: 17, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4580, file: !4573, line: 1351, column: 9)
!4825 = !DILocation(line: 1352, column: 25, scope: !4824)
!4826 = !DILocation(line: 1353, column: 20, scope: !4824)
!4827 = !DILocation(line: 1353, column: 13, scope: !4824)
!4828 = !DILocation(line: 1367, column: 1, scope: !4580)
!4829 = !DILocation(line: 1355, column: 5, scope: !4582)
!4830 = !DILocation(line: 1355, column: 5, scope: !4831)
!4831 = !DILexicalBlockFile(scope: !4582, file: !4573, discriminator: 1)
!4832 = !DILocation(line: 1355, column: 5, scope: !4833)
!4833 = !DILexicalBlockFile(scope: !4582, file: !4573, discriminator: 2)
!4834 = !DILocation(line: 1355, column: 5, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4581, file: !4573, discriminator: 3)
!4836 = !DILocation(line: 1356, column: 12, scope: !4572)
!4837 = !DILocation(line: 1356, column: 19, scope: !4572)
!4838 = !DILocation(line: 1356, column: 17, scope: !4572)
!4839 = !DILocation(line: 1356, column: 10, scope: !4572)
!4840 = !DILocation(line: 1357, column: 9, scope: !4696)
!4841 = !DILocation(line: 1357, column: 14, scope: !4696)
!4842 = !DILocation(line: 1357, column: 9, scope: !4572)
!4843 = !DILocation(line: 1359, column: 17, scope: !4694)
!4844 = !DILocation(line: 1359, column: 32, scope: !4694)
!4845 = !DILocation(line: 1359, column: 38, scope: !4694)
!4846 = !DILocation(line: 224, column: 14, scope: !4577, inlinedAt: !4693)
!4847 = !DILocation(line: 224, column: 21, scope: !4577, inlinedAt: !4693)
!4848 = !DILocation(line: 224, column: 26, scope: !4577, inlinedAt: !4693)
!4849 = !DILocation(line: 1359, column: 47, scope: !4694)
!4850 = !DILocation(line: 1359, column: 44, scope: !4694)
!4851 = !DILocation(line: 1359, column: 13, scope: !4695)
!4852 = !DILocation(line: 1361, column: 17, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4694, file: !4573, line: 1360, column: 9)
!4854 = !DILocation(line: 1361, column: 25, scope: !4853)
!4855 = !DILocation(line: 1362, column: 20, scope: !4853)
!4856 = !DILocation(line: 1362, column: 13, scope: !4853)
!4857 = !DILocation(line: 1364, column: 5, scope: !4695)
!4858 = !DILocation(line: 1365, column: 5, scope: !4572)
!4859 = !DILocation(line: 511, column: 22, scope: !4700, inlinedAt: !4702)
!4860 = !DILocation(line: 512, column: 16, scope: !4700, inlinedAt: !4702)
!4861 = !DILocation(line: 512, column: 5, scope: !4700, inlinedAt: !4702)
!4862 = !DILocation(line: 512, column: 14, scope: !4700, inlinedAt: !4702)
!4863 = !DILocation(line: 513, column: 12, scope: !4700, inlinedAt: !4702)
!4864 = !DILocation(line: 1366, column: 12, scope: !4572)
!4865 = !DILocation(line: 1366, column: 5, scope: !4572)
!4866 = !DILocation(line: 1367, column: 1, scope: !4867)
!4867 = !DILexicalBlockFile(scope: !4572, file: !4573, discriminator: 1)
!4868 = !DILocation(line: 1355, column: 5, scope: !4869)
!4869 = !DILexicalBlockFile(scope: !4582, file: !4573, discriminator: 4)
!4870 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev", scope: !190, file: !187, line: 2082, type: !376, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !375, variables: !212)
!4871 = !DILocalVariable(name: "this", arg: 1, scope: !4870, type: !4872, flags: DIFlagArtificial | DIFlagObjectPointer)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!4873 = !DILocation(line: 0, scope: !4870)
!4874 = !DILocation(line: 2082, column: 40, scope: !4870)
!4875 = !DILocation(line: 2082, column: 52, scope: !4870)
!4876 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev", scope: !397, file: !187, line: 2116, type: !401, isLocal: false, isDefinition: true, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !400, variables: !212)
!4877 = !DILocalVariable(name: "this", arg: 1, scope: !4878, type: !4879, flags: DIFlagArtificial | DIFlagObjectPointer)
!4878 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSt3__19allocatorIcEC2Ev", scope: !216, file: !187, line: 1775, type: !219, isLocal: false, isDefinition: true, scopeLine: 1775, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !218, variables: !212)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!4880 = !DILocation(line: 0, scope: !4878, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 2116, column: 13, scope: !4876)
!4882 = !DILocalVariable(name: "this", arg: 1, scope: !4876, type: !4883, flags: DIFlagArtificial | DIFlagObjectPointer)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!4884 = !DILocation(line: 0, scope: !4876)
!4885 = !DILocation(line: 2116, column: 46, scope: !4876)
!4886 = distinct !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !190, file: !187, line: 2102, type: !385, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !384, variables: !212)
!4887 = !DILocalVariable(name: "this", arg: 1, scope: !4886, type: !4888, flags: DIFlagArtificial | DIFlagObjectPointer)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!4889 = !DILocation(line: 0, scope: !4886)
!4890 = !DILocation(line: 2102, column: 52, scope: !4886)
!4891 = !DILocation(line: 2102, column: 45, scope: !4886)
!4892 = distinct !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !632, file: !633, line: 234, type: !675, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !674, variables: !212)
!4893 = !DILocalVariable(name: "__c1", arg: 1, scope: !4892, file: !633, line: 234, type: !667)
!4894 = !DILocation(line: 234, column: 63, scope: !4892)
!4895 = !DILocalVariable(name: "__c2", arg: 2, scope: !4892, file: !633, line: 234, type: !667)
!4896 = !DILocation(line: 234, column: 78, scope: !4892)
!4897 = !DILocation(line: 235, column: 17, scope: !4892)
!4898 = !DILocation(line: 235, column: 25, scope: !4892)
!4899 = !DILocation(line: 235, column: 22, scope: !4892)
!4900 = !DILocation(line: 235, column: 10, scope: !4892)
!4901 = distinct !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !632, file: !633, line: 236, type: !678, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !677, variables: !212)
!4902 = !DILocation(line: 237, column: 10, scope: !4901)
!4903 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !4155, file: !2023, line: 356, type: !4247, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4250, declaration: !4253, variables: !212)
!4904 = !DILocalVariable(name: "this", arg: 1, scope: !4905, type: !4906, flags: DIFlagArtificial | DIFlagObjectPointer)
!4905 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2360, file: !187, line: 2267, type: !2367, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2366, variables: !212)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!4907 = !DILocation(line: 0, scope: !4905, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 2585, column: 7, scope: !4909, inlinedAt: !4912)
!4909 = !DILexicalBlockFile(scope: !4910, file: !187, discriminator: 1)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !187, line: 2584, column: 9)
!4911 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !2012, file: !187, line: 2581, type: !2470, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2469, variables: !212)
!4912 = distinct !DILocation(line: 2539, column: 19, scope: !4913, inlinedAt: !4915)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !187, line: 2539, column: 17)
!4914 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !2012, file: !187, line: 2539, type: !2423, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2422, variables: !212)
!4915 = distinct !DILocation(line: 2539, column: 17, scope: !4916, inlinedAt: !4917)
!4916 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !2012, file: !187, line: 2539, type: !2423, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2422, variables: !212)
!4917 = distinct !DILocation(line: 370, column: 1, scope: !4918)
!4918 = !DILexicalBlockFile(scope: !4903, file: !2023, discriminator: 6)
!4919 = !DILocalVariable(name: "__ptr", arg: 2, scope: !4905, file: !187, line: 2267, type: !2021)
!4920 = !DILocation(line: 2267, column: 50, scope: !4905, inlinedAt: !4908)
!4921 = !DILocalVariable(name: "this", arg: 1, scope: !4922, type: !4923, flags: DIFlagArtificial | DIFlagObjectPointer)
!4922 = distinct !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !2015, file: !187, line: 2222, type: !2401, isLocal: false, isDefinition: true, scopeLine: 2222, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2400, variables: !212)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!4924 = !DILocation(line: 0, scope: !4922, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 2585, column: 14, scope: !4910, inlinedAt: !4912)
!4926 = !DILocalVariable(name: "this", arg: 1, scope: !4927, type: !4923, flags: DIFlagArtificial | DIFlagObjectPointer)
!4927 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !2015, file: !187, line: 2212, type: !2392, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2391, variables: !212)
!4928 = !DILocation(line: 0, scope: !4927, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 2583, column: 12, scope: !4911, inlinedAt: !4912)
!4930 = !DILocation(line: 0, scope: !4927, inlinedAt: !4931)
!4931 = distinct !DILocation(line: 2582, column: 28, scope: !4911, inlinedAt: !4912)
!4932 = !DILocalVariable(name: "this", arg: 1, scope: !4911, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!4934 = !DILocation(line: 0, scope: !4911, inlinedAt: !4912)
!4935 = !DILocalVariable(name: "__p", arg: 2, scope: !4911, file: !187, line: 2581, type: !2444)
!4936 = !DILocation(line: 2581, column: 22, scope: !4911, inlinedAt: !4912)
!4937 = !DILocalVariable(name: "__tmp", scope: !4911, file: !187, line: 2582, type: !2444)
!4938 = !DILocation(line: 2582, column: 13, scope: !4911, inlinedAt: !4912)
!4939 = !DILocalVariable(name: "this", arg: 1, scope: !4914, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!4940 = !DILocation(line: 0, scope: !4914, inlinedAt: !4915)
!4941 = !DILocalVariable(name: "this", arg: 1, scope: !4916, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!4942 = !DILocation(line: 0, scope: !4916, inlinedAt: !4917)
!4943 = !DILocalVariable(name: "this", arg: 1, scope: !4944, type: !4958, flags: DIFlagArtificial | DIFlagObjectPointer)
!4944 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !4945, file: !187, line: 2267, type: !4952, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4951, variables: !212)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !187, line: 2253, size: 8, elements: !4946, templateParams: !4956, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!4946 = !{!4947, !4951}
!4947 = !DISubprogram(name: "default_delete", scope: !4945, file: !187, line: 2257, type: !4948, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: false)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{null, !4950}
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4951 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !4945, file: !187, line: 2267, type: !4952, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{null, !4954, !2000}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4945)
!4956 = !{!4957}
!4957 = !DITemplateTypeParameter(name: "_Tp", type: !2001)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4959 = !DILocation(line: 0, scope: !4944, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 2585, column: 7, scope: !4961, inlinedAt: !5095)
!4961 = !DILexicalBlockFile(scope: !4962, file: !187, discriminator: 1)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !187, line: 2584, column: 9)
!4963 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !4964, file: !187, line: 2581, type: !5090, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5089, variables: !212)
!4964 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !187, line: 2334, size: 64, elements: !4965, templateParams: !5067, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!4965 = !{!4966, !5036, !5041, !5045, !5048, !5051, !5061, !5072, !5073, !5078, !5083, !5086, !5089, !5092}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !4964, file: !187, line: 2344, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !187, line: 2144, size: 64, elements: !4968, templateParams: !5033, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!4968 = !{!4969, !4992, !5014, !5018, !5023, !5026, !5029}
!4969 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4967, baseType: !4970)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !7, file: !187, line: 2076, size: 64, elements: !4971, templateParams: !4990, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!4971 = !{!4972, !4973, !4977, !4982}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !4970, file: !187, line: 2105, baseType: !2000, size: 64, flags: DIFlagPrivate)
!4973 = !DISubprogram(name: "__compressed_pair_elem", scope: !4970, file: !187, line: 2082, type: !4974, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{null, !4976}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4977 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4970, file: !187, line: 2101, type: !4978, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!4980, !4976}
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !4970, file: !187, line: 2078, baseType: !4981)
!4981 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2000, size: 64)
!4982 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4970, file: !187, line: 2102, type: !4983, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!4985, !4988}
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !4970, file: !187, line: 2079, baseType: !4986)
!4986 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4970)
!4990 = !{!4991, !394, !395}
!4991 = !DITemplateTypeParameter(name: "_Tp", type: !2000)
!4992 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4967, baseType: !4993)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !7, file: !187, line: 2109, size: 8, elements: !4994, templateParams: !5012, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!4994 = !{!4995, !4996, !5000, !5005}
!4995 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4993, baseType: !4945, flags: DIFlagPrivate)
!4996 = !DISubprogram(name: "__compressed_pair_elem", scope: !4993, file: !187, line: 2116, type: !4997, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{null, !4999}
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5000 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4993, file: !187, line: 2136, type: !5001, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!5003, !4999}
!5003 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !4993, file: !187, line: 2111, baseType: !5004)
!5004 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4945, size: 64)
!5005 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4993, file: !187, line: 2137, type: !5006, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: false)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!5008, !5010}
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !4993, file: !187, line: 2112, baseType: !5009)
!5009 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4955, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4993)
!5012 = !{!5013, !418, !419}
!5013 = !DITemplateTypeParameter(name: "_Tp", type: !4945)
!5014 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4967, file: !187, line: 2212, type: !5015, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!4980, !5017}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5018 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4967, file: !187, line: 2217, type: !5019, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!4985, !5021}
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4967)
!5023 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4967, file: !187, line: 2222, type: !5024, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!5003, !5017}
!5026 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4967, file: !187, line: 2227, type: !5027, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!5008, !5021}
!5029 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !4967, file: !187, line: 2232, type: !5030, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !5017, !5032}
!5032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4967, size: 64)
!5033 = !{!5034, !5035}
!5034 = !DITemplateTypeParameter(name: "_T1", type: !2000)
!5035 = !DITemplateTypeParameter(name: "_T2", type: !4945)
!5036 = !DISubprogram(name: "unique_ptr", scope: !4964, file: !187, line: 2427, type: !5037, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !5039, !5040}
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5040 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4964, size: 64)
!5041 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !4964, file: !187, line: 2450, type: !5042, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!5044, !5039, !5040}
!5044 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4964, size: 64)
!5045 = !DISubprogram(name: "~unique_ptr", scope: !4964, file: !187, line: 2539, type: !5046, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{null, !5039}
!5048 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !4964, file: !187, line: 2542, type: !5049, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!5044, !5039, !2428}
!5051 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !4964, file: !187, line: 2549, type: !5052, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!5054, !5059}
!5054 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5055, file: !282, line: 1084, baseType: !5056)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !282, line: 1083, size: 8, elements: !212, templateParams: !4956, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5056 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5057, file: !282, line: 1081, baseType: !2596)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !7, file: !282, line: 1081, size: 8, elements: !212, templateParams: !5058, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!5058 = !{!4957, !183}
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4964)
!5061 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !4964, file: !187, line: 2553, type: !5062, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!5064, !5059}
!5064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !4964, file: !187, line: 2338, baseType: !5065)
!5065 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5066, file: !187, line: 1031, baseType: !5069)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !187, line: 1029, size: 8, elements: !212, templateParams: !5067, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!5067 = !{!4957, !5068}
!5068 = !DITemplateTypeParameter(name: "_Dp", type: !4945)
!5069 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5070, file: !187, line: 1023, baseType: !2000)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !259, file: !187, line: 1021, size: 8, elements: !212, templateParams: !5071, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!5071 = !{!4957, !5068, !272}
!5072 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !4964, file: !187, line: 2557, type: !5062, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5073 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !4964, file: !187, line: 2561, type: !5074, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!5076, !5039}
!5076 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5077, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !4964, file: !187, line: 2337, baseType: !4945)
!5078 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !4964, file: !187, line: 2565, type: !5079, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!5081, !5059}
!5081 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5077)
!5083 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !4964, file: !187, line: 2569, type: !5084, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!184, !5059}
!5086 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !4964, file: !187, line: 2574, type: !5087, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!5064, !5039}
!5089 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !4964, file: !187, line: 2581, type: !5090, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !5039, !5064}
!5092 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !4964, file: !187, line: 2589, type: !5093, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{null, !5039, !5044}
!5095 = distinct !DILocation(line: 2539, column: 19, scope: !5096, inlinedAt: !5098)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !187, line: 2539, column: 17)
!5097 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !4964, file: !187, line: 2539, type: !5046, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5045, variables: !212)
!5098 = distinct !DILocation(line: 2539, column: 17, scope: !5099, inlinedAt: !5100)
!5099 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !4964, file: !187, line: 2539, type: !5046, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5045, variables: !212)
!5100 = distinct !DILocation(line: 370, column: 1, scope: !5101)
!5101 = !DILexicalBlockFile(scope: !4903, file: !2023, discriminator: 4)
!5102 = !DILocalVariable(name: "__ptr", arg: 2, scope: !4944, file: !187, line: 2267, type: !2000)
!5103 = !DILocation(line: 2267, column: 50, scope: !4944, inlinedAt: !4960)
!5104 = !DILocalVariable(name: "this", arg: 1, scope: !5105, type: !5106, flags: DIFlagArtificial | DIFlagObjectPointer)
!5105 = distinct !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4967, file: !187, line: 2222, type: !5024, isLocal: false, isDefinition: true, scopeLine: 2222, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5023, variables: !212)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!5107 = !DILocation(line: 0, scope: !5105, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 2585, column: 14, scope: !4962, inlinedAt: !5095)
!5109 = !DILocalVariable(name: "this", arg: 1, scope: !5110, type: !5106, flags: DIFlagArtificial | DIFlagObjectPointer)
!5110 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4967, file: !187, line: 2212, type: !5015, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5014, variables: !212)
!5111 = !DILocation(line: 0, scope: !5110, inlinedAt: !5112)
!5112 = distinct !DILocation(line: 2583, column: 12, scope: !4963, inlinedAt: !5095)
!5113 = !DILocation(line: 0, scope: !5110, inlinedAt: !5114)
!5114 = distinct !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5095)
!5115 = !DILocalVariable(name: "this", arg: 1, scope: !4963, type: !5116, flags: DIFlagArtificial | DIFlagObjectPointer)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!5117 = !DILocation(line: 0, scope: !4963, inlinedAt: !5095)
!5118 = !DILocalVariable(name: "__p", arg: 2, scope: !4963, file: !187, line: 2581, type: !5064)
!5119 = !DILocation(line: 2581, column: 22, scope: !4963, inlinedAt: !5095)
!5120 = !DILocalVariable(name: "__tmp", scope: !4963, file: !187, line: 2582, type: !5064)
!5121 = !DILocation(line: 2582, column: 13, scope: !4963, inlinedAt: !5095)
!5122 = !DILocalVariable(name: "this", arg: 1, scope: !5097, type: !5116, flags: DIFlagArtificial | DIFlagObjectPointer)
!5123 = !DILocation(line: 0, scope: !5097, inlinedAt: !5098)
!5124 = !DILocalVariable(name: "this", arg: 1, scope: !5099, type: !5116, flags: DIFlagArtificial | DIFlagObjectPointer)
!5125 = !DILocation(line: 0, scope: !5099, inlinedAt: !5100)
!5126 = !DILocation(line: 0, scope: !4944, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 2585, column: 7, scope: !4961, inlinedAt: !5128)
!5128 = distinct !DILocation(line: 2539, column: 19, scope: !5096, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 2539, column: 17, scope: !5099, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 370, column: 1, scope: !5131)
!5131 = !DILexicalBlockFile(scope: !4903, file: !2023, discriminator: 3)
!5132 = !DILocation(line: 2267, column: 50, scope: !4944, inlinedAt: !5127)
!5133 = !DILocation(line: 0, scope: !5105, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 2585, column: 14, scope: !4962, inlinedAt: !5128)
!5135 = !DILocation(line: 0, scope: !5110, inlinedAt: !5136)
!5136 = distinct !DILocation(line: 2583, column: 12, scope: !4963, inlinedAt: !5128)
!5137 = !DILocation(line: 0, scope: !5110, inlinedAt: !5138)
!5138 = distinct !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5128)
!5139 = !DILocation(line: 0, scope: !4963, inlinedAt: !5128)
!5140 = !DILocation(line: 2581, column: 22, scope: !4963, inlinedAt: !5128)
!5141 = !DILocation(line: 2582, column: 13, scope: !4963, inlinedAt: !5128)
!5142 = !DILocation(line: 0, scope: !5097, inlinedAt: !5129)
!5143 = !DILocation(line: 0, scope: !5099, inlinedAt: !5130)
!5144 = !DILocation(line: 0, scope: !5110, inlinedAt: !5145)
!5145 = distinct !DILocation(line: 2576, column: 12, scope: !5146, inlinedAt: !5147)
!5146 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !4964, file: !187, line: 2574, type: !5087, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5086, variables: !212)
!5147 = distinct !DILocation(line: 367, column: 13, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !2023, line: 366, column: 9)
!5149 = distinct !DILexicalBlock(scope: !4903, file: !2023, line: 357, column: 1)
!5150 = !DILocation(line: 0, scope: !5110, inlinedAt: !5151)
!5151 = distinct !DILocation(line: 2575, column: 26, scope: !5146, inlinedAt: !5147)
!5152 = !DILocalVariable(name: "this", arg: 1, scope: !5146, type: !5116, flags: DIFlagArtificial | DIFlagObjectPointer)
!5153 = !DILocation(line: 0, scope: !5146, inlinedAt: !5147)
!5154 = !DILocalVariable(name: "__t", scope: !5146, file: !187, line: 2575, type: !5064)
!5155 = !DILocation(line: 2575, column: 13, scope: !5146, inlinedAt: !5147)
!5156 = !DILocalVariable(name: "__t", arg: 1, scope: !5157, file: !2051, line: 321, type: !5160)
!5157 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !7, file: !2051, line: 321, type: !5158, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !212)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!30, !5160, !5161, !76}
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!76, !76}
!5164 = !DILocation(line: 321, column: 47, scope: !5157, inlinedAt: !5165)
!5165 = distinct !DILocation(line: 365, column: 16, scope: !5149)
!5166 = !DILocalVariable(name: "__func", arg: 2, scope: !5157, file: !2051, line: 321, type: !5161)
!5167 = !DILocation(line: 321, column: 60, scope: !5157, inlinedAt: !5165)
!5168 = !DILocalVariable(name: "__arg", arg: 3, scope: !5157, file: !2051, line: 322, type: !76)
!5169 = !DILocation(line: 322, column: 34, scope: !5157, inlinedAt: !5165)
!5170 = !DILocalVariable(name: "this", arg: 1, scope: !5171, type: !5172, flags: DIFlagArtificial | DIFlagObjectPointer)
!5171 = distinct !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4967, file: !187, line: 2217, type: !5019, isLocal: false, isDefinition: true, scopeLine: 2217, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5018, variables: !212)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5173 = !DILocation(line: 0, scope: !5171, inlinedAt: !5174)
!5174 = distinct !DILocation(line: 2558, column: 19, scope: !5175, inlinedAt: !5176)
!5175 = distinct !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !4964, file: !187, line: 2557, type: !5062, isLocal: false, isDefinition: true, scopeLine: 2557, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5072, variables: !212)
!5176 = distinct !DILocation(line: 365, column: 72, scope: !5149)
!5177 = !DILocalVariable(name: "this", arg: 1, scope: !5175, type: !5178, flags: DIFlagArtificial | DIFlagObjectPointer)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5179 = !DILocation(line: 0, scope: !5175, inlinedAt: !5176)
!5180 = !DILocalVariable(name: "__t", arg: 1, scope: !5181, file: !282, line: 2219, type: !5184)
!5181 = distinct !DISubprogram(name: "forward<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&>", linkageName: "_ZNSt3__17forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEOT_RNS_16remove_referenceISC_E4typeE", scope: !7, file: !282, line: 2219, type: !5182, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5187, variables: !212)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!4981, !5184}
!5184 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5185, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5186, file: !282, line: 1069, baseType: !2000)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&>", scope: !7, file: !282, line: 1069, size: 8, elements: !212, templateParams: !5187, identifier: "_ZTSNSt3__116remove_referenceIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5187 = !{!5188}
!5188 = !DITemplateTypeParameter(name: "_Tp", type: !4981)
!5189 = !DILocation(line: 2219, column: 47, scope: !5181, inlinedAt: !5190)
!5190 = distinct !DILocation(line: 2174, column: 16, scope: !5191, inlinedAt: !5196)
!5191 = distinct !DISubprogram(name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEC2IRSA_Lb1EEEOT_", scope: !4967, file: !187, line: 2173, type: !5192, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5194, declaration: !5195, variables: !212)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !5017, !4981}
!5194 = !{!5188, !183}
!5195 = !DISubprogram(name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, true>", scope: !4967, file: !187, line: 2173, type: !5192, isLocal: false, isDefinition: false, scopeLine: 2173, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5194)
!5196 = distinct !DILocation(line: 2174, column: 50, scope: !5197, inlinedAt: !5198)
!5197 = distinct !DISubprogram(name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEC1IRSA_Lb1EEEOT_", scope: !4967, file: !187, line: 2173, type: !5192, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5194, declaration: !5195, variables: !212)
!5198 = distinct !DILocation(line: 2404, column: 47, scope: !5199, inlinedAt: !5201)
!5199 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEC2ILb1EvEEPS8_", scope: !4964, file: !187, line: 2404, type: !5090, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4658, declaration: !5200, variables: !212)
!5200 = !DISubprogram(name: "unique_ptr<true, void>", scope: !4964, file: !187, line: 2404, type: !5090, isLocal: false, isDefinition: false, scopeLine: 2404, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4658)
!5201 = distinct !DILocation(line: 2404, column: 59, scope: !5202, inlinedAt: !5203)
!5202 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEC1ILb1EvEEPS8_", scope: !4964, file: !187, line: 2404, type: !5090, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4658, declaration: !5200, variables: !212)
!5203 = distinct !DILocation(line: 361, column: 28, scope: !5149)
!5204 = !DILocalVariable(name: "this", arg: 1, scope: !5191, type: !5106, flags: DIFlagArtificial | DIFlagObjectPointer)
!5205 = !DILocation(line: 0, scope: !5191, inlinedAt: !5196)
!5206 = !DILocalVariable(name: "__t", arg: 2, scope: !5191, file: !187, line: 2173, type: !4981)
!5207 = !DILocation(line: 2173, column: 27, scope: !5191, inlinedAt: !5196)
!5208 = !DILocalVariable(name: "this", arg: 1, scope: !5197, type: !5106, flags: DIFlagArtificial | DIFlagObjectPointer)
!5209 = !DILocation(line: 0, scope: !5197, inlinedAt: !5198)
!5210 = !DILocalVariable(name: "__t", arg: 2, scope: !5197, file: !187, line: 2173, type: !4981)
!5211 = !DILocation(line: 2173, column: 27, scope: !5197, inlinedAt: !5198)
!5212 = !DILocalVariable(name: "this", arg: 1, scope: !5199, type: !5116, flags: DIFlagArtificial | DIFlagObjectPointer)
!5213 = !DILocation(line: 0, scope: !5199, inlinedAt: !5201)
!5214 = !DILocalVariable(name: "__p", arg: 2, scope: !5199, file: !187, line: 2404, type: !5064)
!5215 = !DILocation(line: 2404, column: 31, scope: !5199, inlinedAt: !5201)
!5216 = !DILocalVariable(name: "this", arg: 1, scope: !5202, type: !5116, flags: DIFlagArtificial | DIFlagObjectPointer)
!5217 = !DILocation(line: 0, scope: !5202, inlinedAt: !5203)
!5218 = !DILocalVariable(name: "__p", arg: 2, scope: !5202, file: !187, line: 2404, type: !5064)
!5219 = !DILocation(line: 2404, column: 31, scope: !5202, inlinedAt: !5203)
!5220 = !DILocalVariable(name: "__t", arg: 1, scope: !5221, file: !282, line: 2219, type: !5225)
!5221 = distinct !DISubprogram(name: "forward<void (*)()>", linkageName: "_ZNSt3__17forwardIPFvvEEEOT_RNS_16remove_referenceIS3_E4typeE", scope: !7, file: !282, line: 2219, type: !5222, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5228, variables: !212)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!5224, !5225}
!5224 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2510, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5226, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5227, file: !282, line: 1068, baseType: !2510)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (*)()>", scope: !7, file: !282, line: 1068, size: 8, elements: !212, templateParams: !5228, identifier: "_ZTSNSt3__116remove_referenceIPFvvEEE")
!5228 = !{!5229}
!5229 = !DITemplateTypeParameter(name: "_Tp", type: !2510)
!5230 = !DILocation(line: 2219, column: 47, scope: !5221, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 742, column: 21, scope: !5232, inlinedAt: !5240)
!5232 = !DILexicalBlockFile(scope: !5233, file: !2002, discriminator: 1)
!5233 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !2001, file: !2002, line: 728, type: !5234, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5236, declaration: !5239, variables: !212)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !2586, !2417, !5224}
!5236 = !{!5237, !5238, !272}
!5237 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !2579)
!5238 = !DITemplateValueParameter(name: "_PackIsTuple", type: !184, value: i8 0)
!5239 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !2001, file: !2002, line: 728, type: !5234, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !5236)
!5240 = distinct !DILocation(line: 742, column: 50, scope: !5241, inlinedAt: !5242)
!5241 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !2001, file: !2002, line: 728, type: !5234, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5236, declaration: !5239, variables: !212)
!5242 = distinct !DILocation(line: 362, column: 17, scope: !5243)
!5243 = !DILexicalBlockFile(scope: !5149, file: !2023, discriminator: 2)
!5244 = !DILocalVariable(name: "__t", arg: 1, scope: !5245, file: !282, line: 2219, type: !5249)
!5245 = distinct !DISubprogram(name: "forward<std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__17forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE", scope: !7, file: !282, line: 2219, type: !5246, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5252, variables: !212)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!5248, !5249}
!5248 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2360, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5250, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5251, file: !282, line: 1068, baseType: !2360)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !282, line: 1068, size: 8, elements: !212, templateParams: !5252, identifier: "_ZTSNSt3__116remove_referenceINS_14default_deleteINS_15__thread_structEEEEE")
!5252 = !{!2390}
!5253 = !DILocation(line: 2219, column: 47, scope: !5245, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 2184, column: 49, scope: !5255, inlinedAt: !5264)
!5255 = !DILexicalBlockFile(scope: !5256, file: !187, discriminator: 2)
!5256 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !2015, file: !187, line: 2183, type: !5257, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5260, declaration: !5263, variables: !212)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !2394, !5259, !5248}
!5259 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2021, size: 64)
!5260 = !{!5261, !5262}
!5261 = !DITemplateTypeParameter(name: "_U1", type: !2021)
!5262 = !DITemplateTypeParameter(name: "_U2", type: !2360)
!5263 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !2015, file: !187, line: 2183, type: !5257, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !5260)
!5264 = distinct !DILocation(line: 2184, column: 74, scope: !5265, inlinedAt: !5266)
!5265 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !2015, file: !187, line: 2183, type: !5257, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5260, declaration: !5263, variables: !212)
!5266 = distinct !DILocation(line: 2428, column: 9, scope: !5267, inlinedAt: !5268)
!5267 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !2012, file: !187, line: 2427, type: !2414, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2413, variables: !212)
!5268 = distinct !DILocation(line: 2428, column: 80, scope: !5269, inlinedAt: !5270)
!5269 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !2012, file: !187, line: 2427, type: !2414, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2413, variables: !212)
!5270 = distinct !DILocation(line: 226, column: 15, scope: !5271, inlinedAt: !5278)
!5271 = !DILexicalBlockFile(scope: !5272, file: !2002, discriminator: 1)
!5272 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !2009, file: !2002, line: 225, type: !5273, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5275, declaration: !5277, variables: !212)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{null, !2479, !2417}
!5275 = !{!5276, !1346}
!5276 = !DITemplateTypeParameter(name: "_Tp", type: !2012)
!5277 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !2009, file: !2002, line: 225, type: !5273, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5275)
!5278 = distinct !DILocation(line: 385, column: 13, scope: !5279, inlinedAt: !5296)
!5279 = !DILexicalBlockFile(scope: !5280, file: !2002, discriminator: 1)
!5280 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !2006, file: !2002, line: 380, type: !5281, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5290, declaration: !5295, variables: !212)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !2549, !2571, !5283, !5284, !5287, !2417, !5224}
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !2572, line: 253, size: 8, elements: !212, templateParams: !2631, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !7, file: !2572, line: 90, size: 8, elements: !212, templateParams: !5285, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!5285 = !{!5286}
!5286 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !212)
!5287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !7, file: !2572, line: 253, size: 8, elements: !212, templateParams: !5288, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!5288 = !{!5289}
!5289 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !212)
!5290 = !{!5291, !5292, !5293, !5294, !5237}
!5291 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !2575)
!5292 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !2579)
!5293 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !212)
!5294 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !212)
!5295 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !2006, file: !2002, line: 380, type: !5281, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5290)
!5296 = distinct !DILocation(line: 387, column: 13, scope: !5297, inlinedAt: !5298)
!5297 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !2006, file: !2002, line: 380, type: !5281, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5290, declaration: !5295, variables: !212)
!5298 = distinct !DILocation(line: 738, column: 15, scope: !5233, inlinedAt: !5240)
!5299 = !DILocalVariable(name: "__t", arg: 1, scope: !5300, file: !282, line: 2219, type: !5303)
!5300 = distinct !DISubprogram(name: "forward<std::__1::__thread_struct *>", linkageName: "_ZNSt3__17forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE", scope: !7, file: !282, line: 2219, type: !5301, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5306, variables: !212)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!5259, !5303}
!5303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5304, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5305, file: !282, line: 1068, baseType: !2021)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::__thread_struct *>", scope: !7, file: !282, line: 1068, size: 8, elements: !212, templateParams: !5306, identifier: "_ZTSNSt3__116remove_referenceIPNS_15__thread_structEEE")
!5306 = !{!2355}
!5307 = !DILocation(line: 2219, column: 47, scope: !5300, inlinedAt: !5308)
!5308 = distinct !DILocation(line: 2184, column: 16, scope: !5256, inlinedAt: !5264)
!5309 = !DILocalVariable(name: "this", arg: 1, scope: !5256, type: !4923, flags: DIFlagArtificial | DIFlagObjectPointer)
!5310 = !DILocation(line: 0, scope: !5256, inlinedAt: !5264)
!5311 = !DILocalVariable(name: "__t1", arg: 2, scope: !5256, file: !187, line: 2183, type: !5259)
!5312 = !DILocation(line: 2183, column: 27, scope: !5256, inlinedAt: !5264)
!5313 = !DILocalVariable(name: "__t2", arg: 3, scope: !5256, file: !187, line: 2183, type: !5248)
!5314 = !DILocation(line: 2183, column: 39, scope: !5256, inlinedAt: !5264)
!5315 = !DILocalVariable(name: "this", arg: 1, scope: !5265, type: !4923, flags: DIFlagArtificial | DIFlagObjectPointer)
!5316 = !DILocation(line: 0, scope: !5265, inlinedAt: !5266)
!5317 = !DILocalVariable(name: "__t1", arg: 2, scope: !5265, file: !187, line: 2183, type: !5259)
!5318 = !DILocation(line: 2183, column: 27, scope: !5265, inlinedAt: !5266)
!5319 = !DILocalVariable(name: "__t2", arg: 3, scope: !5265, file: !187, line: 2183, type: !5248)
!5320 = !DILocation(line: 2183, column: 39, scope: !5265, inlinedAt: !5266)
!5321 = !DILocation(line: 2219, column: 47, scope: !5245, inlinedAt: !5322)
!5322 = distinct !DILocation(line: 2428, column: 31, scope: !5323, inlinedAt: !5268)
!5323 = !DILexicalBlockFile(scope: !5267, file: !187, discriminator: 3)
!5324 = !DILocation(line: 0, scope: !4922, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 2562, column: 19, scope: !5326, inlinedAt: !5327)
!5326 = distinct !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !2012, file: !187, line: 2561, type: !2454, isLocal: false, isDefinition: true, scopeLine: 2561, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2453, variables: !212)
!5327 = distinct !DILocation(line: 2428, column: 64, scope: !5328, inlinedAt: !5268)
!5328 = !DILexicalBlockFile(scope: !5267, file: !187, discriminator: 2)
!5329 = !DILocalVariable(name: "this", arg: 1, scope: !5326, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!5330 = !DILocation(line: 0, scope: !5326, inlinedAt: !5327)
!5331 = !DILocation(line: 0, scope: !4927, inlinedAt: !5332)
!5332 = distinct !DILocation(line: 2576, column: 12, scope: !5333, inlinedAt: !5334)
!5333 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !2012, file: !187, line: 2574, type: !2467, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2466, variables: !212)
!5334 = distinct !DILocation(line: 2428, column: 20, scope: !5267, inlinedAt: !5268)
!5335 = !DILocation(line: 0, scope: !4927, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 2575, column: 26, scope: !5333, inlinedAt: !5334)
!5337 = !DILocalVariable(name: "this", arg: 1, scope: !5333, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!5338 = !DILocation(line: 0, scope: !5333, inlinedAt: !5334)
!5339 = !DILocalVariable(name: "__t", scope: !5333, file: !187, line: 2575, type: !2444)
!5340 = !DILocation(line: 2575, column: 13, scope: !5333, inlinedAt: !5334)
!5341 = !DILocalVariable(name: "this", arg: 1, scope: !5267, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!5342 = !DILocation(line: 0, scope: !5267, inlinedAt: !5268)
!5343 = !DILocalVariable(name: "__u", arg: 2, scope: !5267, file: !187, line: 2427, type: !2417)
!5344 = !DILocation(line: 2427, column: 27, scope: !5267, inlinedAt: !5268)
!5345 = !DILocalVariable(name: "this", arg: 1, scope: !5269, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!5346 = !DILocation(line: 0, scope: !5269, inlinedAt: !5270)
!5347 = !DILocalVariable(name: "__u", arg: 2, scope: !5269, file: !187, line: 2427, type: !2417)
!5348 = !DILocation(line: 2427, column: 27, scope: !5269, inlinedAt: !5270)
!5349 = !DILocalVariable(name: "__t", arg: 1, scope: !5350, file: !282, line: 2219, type: !5353)
!5350 = distinct !DISubprogram(name: "forward<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > >", linkageName: "_ZNSt3__17forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE", scope: !7, file: !282, line: 2219, type: !5351, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5356, variables: !212)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!2417, !5353}
!5353 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5354, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5355, file: !282, line: 1068, baseType: !2012)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > >", scope: !7, file: !282, line: 1068, size: 8, elements: !212, templateParams: !5356, identifier: "_ZTSNSt3__116remove_referenceINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEE")
!5356 = !{!5276}
!5357 = !DILocation(line: 2219, column: 47, scope: !5350, inlinedAt: !5358)
!5358 = distinct !DILocation(line: 226, column: 21, scope: !5272, inlinedAt: !5278)
!5359 = !DILocalVariable(name: "this", arg: 1, scope: !5272, type: !5360, flags: DIFlagArtificial | DIFlagObjectPointer)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!5361 = !DILocation(line: 0, scope: !5272, inlinedAt: !5278)
!5362 = !DILocalVariable(name: "__t", arg: 2, scope: !5272, file: !2002, line: 225, type: !2417)
!5363 = !DILocation(line: 225, column: 37, scope: !5272, inlinedAt: !5278)
!5364 = !DILocation(line: 2219, column: 47, scope: !5221, inlinedAt: !5365)
!5365 = distinct !DILocation(line: 385, column: 36, scope: !5366, inlinedAt: !5296)
!5366 = !DILexicalBlockFile(scope: !5280, file: !2002, discriminator: 2)
!5367 = !DILocation(line: 2219, column: 47, scope: !5221, inlinedAt: !5368)
!5368 = distinct !DILocation(line: 226, column: 21, scope: !5369, inlinedAt: !5374)
!5369 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !2507, file: !2002, line: 225, type: !5370, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5372, declaration: !5373, variables: !212)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{null, !2517, !5224}
!5372 = !{!5229, !1346}
!5373 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !2507, file: !2002, line: 225, type: !5370, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5372)
!5374 = distinct !DILocation(line: 385, column: 13, scope: !5375, inlinedAt: !5296)
!5375 = !DILexicalBlockFile(scope: !5280, file: !2002, discriminator: 3)
!5376 = !DILocalVariable(name: "this", arg: 1, scope: !5369, type: !5377, flags: DIFlagArtificial | DIFlagObjectPointer)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!5378 = !DILocation(line: 0, scope: !5369, inlinedAt: !5374)
!5379 = !DILocalVariable(name: "__t", arg: 2, scope: !5369, file: !2002, line: 225, type: !5224)
!5380 = !DILocation(line: 225, column: 37, scope: !5369, inlinedAt: !5374)
!5381 = !DILocation(line: 2219, column: 47, scope: !5350, inlinedAt: !5382)
!5382 = distinct !DILocation(line: 385, column: 36, scope: !5280, inlinedAt: !5296)
!5383 = !DILocalVariable(name: "this", arg: 1, scope: !5280, type: !5384, flags: DIFlagArtificial | DIFlagObjectPointer)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!5385 = !DILocation(line: 0, scope: !5280, inlinedAt: !5296)
!5386 = !DILocalVariable(name: "__u", arg: 6, scope: !5280, file: !2002, line: 382, type: !2417)
!5387 = !DILocation(line: 382, column: 31, scope: !5280, inlinedAt: !5296)
!5388 = !DILocalVariable(name: "__u", arg: 7, scope: !5280, file: !2002, line: 382, type: !5224)
!5389 = !DILocalVariable(name: "this", arg: 1, scope: !5297, type: !5384, flags: DIFlagArtificial | DIFlagObjectPointer)
!5390 = !DILocation(line: 0, scope: !5297, inlinedAt: !5298)
!5391 = !DILocalVariable(name: "__u", arg: 6, scope: !5297, file: !2002, line: 382, type: !2417)
!5392 = !DILocation(line: 382, column: 31, scope: !5297, inlinedAt: !5298)
!5393 = !DILocalVariable(name: "__u", arg: 7, scope: !5297, file: !2002, line: 382, type: !5224)
!5394 = !DILocation(line: 2219, column: 47, scope: !5350, inlinedAt: !5395)
!5395 = distinct !DILocation(line: 742, column: 21, scope: !5233, inlinedAt: !5240)
!5396 = !DILocalVariable(name: "this", arg: 1, scope: !5233, type: !2000, flags: DIFlagArtificial | DIFlagObjectPointer)
!5397 = !DILocation(line: 0, scope: !5233, inlinedAt: !5240)
!5398 = !DILocalVariable(name: "__u", arg: 2, scope: !5233, file: !2002, line: 728, type: !2417)
!5399 = !DILocation(line: 728, column: 24, scope: !5233, inlinedAt: !5240)
!5400 = !DILocalVariable(name: "__u", arg: 3, scope: !5233, file: !2002, line: 728, type: !5224)
!5401 = !DILocalVariable(name: "this", arg: 1, scope: !5241, type: !2000, flags: DIFlagArtificial | DIFlagObjectPointer)
!5402 = !DILocation(line: 0, scope: !5241, inlinedAt: !5242)
!5403 = !DILocalVariable(name: "__u", arg: 2, scope: !5241, file: !2002, line: 728, type: !2417)
!5404 = !DILocation(line: 728, column: 24, scope: !5241, inlinedAt: !5242)
!5405 = !DILocalVariable(name: "__u", arg: 3, scope: !5241, file: !2002, line: 728, type: !5224)
!5406 = !DILocalVariable(name: "__t", arg: 1, scope: !5407, file: !282, line: 2219, type: !5410)
!5407 = distinct !DISubprogram(name: "forward<void (&)()>", linkageName: "_ZNSt3__17forwardIRFvvEEEOT_RNS_16remove_referenceIS3_E4typeE", scope: !7, file: !282, line: 2219, type: !5408, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5413, variables: !212)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!4249, !5410}
!5410 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5411, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5412, file: !282, line: 1069, baseType: !2511)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (&)()>", scope: !7, file: !282, line: 1069, size: 8, elements: !212, templateParams: !5413, identifier: "_ZTSNSt3__116remove_referenceIRFvvEEE")
!5413 = !{!5414}
!5414 = !DITemplateTypeParameter(name: "_Tp", type: !4249)
!5415 = !DILocation(line: 2219, column: 47, scope: !5407, inlinedAt: !5416)
!5416 = distinct !DILocation(line: 2282, column: 12, scope: !5417, inlinedAt: !5431)
!5417 = distinct !DISubprogram(name: "__decay_copy<void (&)()>", linkageName: "_ZNSt3__112__decay_copyIRFvvEEENS_5decayIT_E4typeEOS4_", scope: !7, file: !282, line: 2280, type: !5418, isLocal: false, isDefinition: true, scopeLine: 2281, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5413, variables: !212)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!5420, !4249}
!5420 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5421, file: !282, line: 1305, baseType: !5422)
!5421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decay<void (&)()>", scope: !7, file: !282, line: 1300, size: 8, elements: !212, templateParams: !5413, identifier: "_ZTSNSt3__15decayIRFvvEEE")
!5422 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5423, file: !282, line: 1296, baseType: !5426)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__decay<void (), true>", scope: !7, file: !282, line: 1284, size: 8, elements: !212, templateParams: !5424, identifier: "_ZTSNSt3__17__decayIFvvELb1EEE")
!5424 = !{!5425, !183}
!5425 = !DITemplateTypeParameter(name: "_Up", type: !2511)
!5426 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5427, file: !282, line: 414, baseType: !2510)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, void (*)(), void (*)()>", scope: !7, file: !282, line: 414, size: 8, elements: !212, templateParams: !5428, identifier: "_ZTSNSt3__111conditionalILb0EPFvvES2_EE")
!5428 = !{!285, !5429, !5430}
!5429 = !DITemplateTypeParameter(name: "_If", type: !2510)
!5430 = !DITemplateTypeParameter(name: "_Then", type: !2510)
!5431 = distinct !DILocation(line: 363, column: 21, scope: !5149)
!5432 = !DILocalVariable(name: "__t", arg: 1, scope: !5417, file: !282, line: 2280, type: !4249)
!5433 = !DILocation(line: 2280, column: 20, scope: !5417, inlinedAt: !5431)
!5434 = !DILocation(line: 2219, column: 47, scope: !5407, inlinedAt: !5435)
!5435 = distinct !DILocation(line: 363, column: 34, scope: !5149)
!5436 = !DILocation(line: 0, scope: !4905, inlinedAt: !5437)
!5437 = distinct !DILocation(line: 2585, column: 7, scope: !4909, inlinedAt: !5438)
!5438 = distinct !DILocation(line: 2539, column: 19, scope: !4913, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 2539, column: 17, scope: !4916, inlinedAt: !5440)
!5440 = distinct !DILocation(line: 370, column: 1, scope: !5441)
!5441 = !DILexicalBlockFile(scope: !4903, file: !2023, discriminator: 5)
!5442 = !DILocation(line: 2267, column: 50, scope: !4905, inlinedAt: !5437)
!5443 = !DILocation(line: 0, scope: !4922, inlinedAt: !5444)
!5444 = distinct !DILocation(line: 2585, column: 14, scope: !4910, inlinedAt: !5438)
!5445 = !DILocation(line: 0, scope: !4927, inlinedAt: !5446)
!5446 = distinct !DILocation(line: 2583, column: 12, scope: !4911, inlinedAt: !5438)
!5447 = !DILocation(line: 0, scope: !4927, inlinedAt: !5448)
!5448 = distinct !DILocation(line: 2582, column: 28, scope: !4911, inlinedAt: !5438)
!5449 = !DILocation(line: 0, scope: !4911, inlinedAt: !5438)
!5450 = !DILocation(line: 2581, column: 22, scope: !4911, inlinedAt: !5438)
!5451 = !DILocation(line: 2582, column: 13, scope: !4911, inlinedAt: !5438)
!5452 = !DILocation(line: 0, scope: !4914, inlinedAt: !5439)
!5453 = !DILocation(line: 0, scope: !4916, inlinedAt: !5440)
!5454 = !DILocalVariable(name: "__t", arg: 1, scope: !5455, file: !282, line: 2210, type: !2421)
!5455 = distinct !DISubprogram(name: "move<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > &>", linkageName: "_ZNSt3__14moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_", scope: !7, file: !282, line: 2210, type: !5456, isLocal: false, isDefinition: true, scopeLine: 2211, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5461, variables: !212)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!5458, !2421}
!5458 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5459, size: 64)
!5459 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5460, file: !282, line: 1069, baseType: !2012)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > &>", scope: !7, file: !282, line: 1069, size: 8, elements: !212, templateParams: !5461, identifier: "_ZTSNSt3__116remove_referenceIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEE")
!5461 = !{!5462}
!5462 = !DITemplateTypeParameter(name: "_Tp", type: !2421)
!5463 = !DILocation(line: 2210, column: 12, scope: !5455, inlinedAt: !5464)
!5464 = distinct !DILocation(line: 362, column: 21, scope: !5465)
!5465 = !DILexicalBlockFile(scope: !5149, file: !2023, discriminator: 1)
!5466 = !DILocalVariable(name: "__t", arg: 1, scope: !5467, file: !282, line: 2219, type: !5470)
!5467 = distinct !DISubprogram(name: "forward<std::__1::__thread_struct *&>", linkageName: "_ZNSt3__17forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE", scope: !7, file: !282, line: 2219, type: !5468, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5473, variables: !212)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!2345, !5470}
!5470 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5471, size: 64)
!5471 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5472, file: !282, line: 1069, baseType: !2021)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::__thread_struct *&>", scope: !7, file: !282, line: 1069, size: 8, elements: !212, templateParams: !5473, identifier: "_ZTSNSt3__116remove_referenceIRPNS_15__thread_structEEE")
!5473 = !{!5474}
!5474 = !DITemplateTypeParameter(name: "_Tp", type: !2345)
!5475 = !DILocation(line: 2219, column: 47, scope: !5467, inlinedAt: !5476)
!5476 = distinct !DILocation(line: 2174, column: 16, scope: !5477, inlinedAt: !5482)
!5477 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_", scope: !2015, file: !187, line: 2173, type: !5478, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5480, declaration: !5481, variables: !212)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{null, !2394, !2345}
!5480 = !{!5474, !183}
!5481 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *&, true>", scope: !2015, file: !187, line: 2173, type: !5478, isLocal: false, isDefinition: false, scopeLine: 2173, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5480)
!5482 = distinct !DILocation(line: 2174, column: 50, scope: !5483, inlinedAt: !5484)
!5483 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_", scope: !2015, file: !187, line: 2173, type: !5478, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5480, declaration: !5481, variables: !212)
!5484 = distinct !DILocation(line: 2404, column: 47, scope: !5485, inlinedAt: !5487)
!5485 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_", scope: !2012, file: !187, line: 2404, type: !2470, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4658, declaration: !5486, variables: !212)
!5486 = !DISubprogram(name: "unique_ptr<true, void>", scope: !2012, file: !187, line: 2404, type: !2470, isLocal: false, isDefinition: false, scopeLine: 2404, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4658)
!5487 = distinct !DILocation(line: 2404, column: 59, scope: !5488, inlinedAt: !5489)
!5488 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_", scope: !2012, file: !187, line: 2404, type: !2470, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4658, declaration: !5486, variables: !212)
!5489 = distinct !DILocation(line: 359, column: 12, scope: !5465)
!5490 = !DILocalVariable(name: "this", arg: 1, scope: !5477, type: !4923, flags: DIFlagArtificial | DIFlagObjectPointer)
!5491 = !DILocation(line: 0, scope: !5477, inlinedAt: !5482)
!5492 = !DILocalVariable(name: "__t", arg: 2, scope: !5477, file: !187, line: 2173, type: !2345)
!5493 = !DILocation(line: 2173, column: 27, scope: !5477, inlinedAt: !5482)
!5494 = !DILocalVariable(name: "this", arg: 1, scope: !5483, type: !4923, flags: DIFlagArtificial | DIFlagObjectPointer)
!5495 = !DILocation(line: 0, scope: !5483, inlinedAt: !5484)
!5496 = !DILocalVariable(name: "__t", arg: 2, scope: !5483, file: !187, line: 2173, type: !2345)
!5497 = !DILocation(line: 2173, column: 27, scope: !5483, inlinedAt: !5484)
!5498 = !DILocalVariable(name: "this", arg: 1, scope: !5485, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!5499 = !DILocation(line: 0, scope: !5485, inlinedAt: !5487)
!5500 = !DILocalVariable(name: "__p", arg: 2, scope: !5485, file: !187, line: 2404, type: !2444)
!5501 = !DILocation(line: 2404, column: 31, scope: !5485, inlinedAt: !5487)
!5502 = !DILocalVariable(name: "this", arg: 1, scope: !5488, type: !4933, flags: DIFlagArtificial | DIFlagObjectPointer)
!5503 = !DILocation(line: 0, scope: !5488, inlinedAt: !5489)
!5504 = !DILocalVariable(name: "__p", arg: 2, scope: !5488, file: !187, line: 2404, type: !2444)
!5505 = !DILocation(line: 2404, column: 31, scope: !5488, inlinedAt: !5489)
!5506 = !DILocalVariable(name: "this", arg: 1, scope: !4903, type: !4255, flags: DIFlagArtificial | DIFlagObjectPointer)
!5507 = !DILocation(line: 0, scope: !4903)
!5508 = !DILocalVariable(name: "__f", arg: 2, scope: !4903, file: !2023, line: 356, type: !4249)
!5509 = !DILocation(line: 356, column: 22, scope: !4903)
!5510 = !DILocalVariable(name: "__tsp", scope: !5149, file: !2023, line: 359, type: !5511)
!5511 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !2023, line: 358, baseType: !2012)
!5512 = !DILocation(line: 359, column: 12, scope: !5149)
!5513 = !DILocation(line: 359, column: 18, scope: !5149)
!5514 = !DILocation(line: 359, column: 22, scope: !5149)
!5515 = !DILocation(line: 2404, column: 59, scope: !5488, inlinedAt: !5489)
!5516 = !DILocation(line: 2404, column: 47, scope: !5485, inlinedAt: !5487)
!5517 = !DILocation(line: 2174, column: 50, scope: !5483, inlinedAt: !5484)
!5518 = !DILocation(line: 2174, column: 50, scope: !5477, inlinedAt: !5482)
!5519 = !DILocation(line: 2174, column: 34, scope: !5477, inlinedAt: !5482)
!5520 = !DILocation(line: 2221, column: 31, scope: !5467, inlinedAt: !5476)
!5521 = !DILocation(line: 2174, column: 9, scope: !5522, inlinedAt: !5482)
!5522 = !DILexicalBlockFile(scope: !5477, file: !187, discriminator: 1)
!5523 = !DILocalVariable(name: "__p", scope: !5149, file: !2023, line: 361, type: !4964)
!5524 = !DILocation(line: 361, column: 28, scope: !5149)
!5525 = !DILocation(line: 362, column: 13, scope: !5149)
!5526 = !DILocation(line: 362, column: 13, scope: !5465)
!5527 = !DILocation(line: 2213, column: 31, scope: !5455, inlinedAt: !5464)
!5528 = !DILocation(line: 363, column: 54, scope: !5149)
!5529 = !DILocation(line: 2221, column: 31, scope: !5407, inlinedAt: !5435)
!5530 = !DILocation(line: 2282, column: 32, scope: !5417, inlinedAt: !5431)
!5531 = !DILocation(line: 2221, column: 31, scope: !5407, inlinedAt: !5416)
!5532 = !DILocation(line: 2282, column: 5, scope: !5417, inlinedAt: !5431)
!5533 = !DILocation(line: 363, column: 21, scope: !5465)
!5534 = !DILocation(line: 742, column: 50, scope: !5241, inlinedAt: !5242)
!5535 = !DILocation(line: 738, column: 15, scope: !5233, inlinedAt: !5240)
!5536 = !DILocation(line: 742, column: 41, scope: !5233, inlinedAt: !5240)
!5537 = !DILocation(line: 2221, column: 31, scope: !5350, inlinedAt: !5395)
!5538 = !DILocation(line: 2221, column: 31, scope: !5221, inlinedAt: !5231)
!5539 = !DILocalVariable(arg: 2, scope: !5297, file: !2002, line: 380, type: !2571)
!5540 = !DILocation(line: 380, column: 45, scope: !5297, inlinedAt: !5298)
!5541 = !DILocalVariable(arg: 3, scope: !5297, file: !2002, line: 380, type: !5283)
!5542 = !DILocation(line: 380, column: 68, scope: !5297, inlinedAt: !5298)
!5543 = !DILocalVariable(arg: 4, scope: !5297, file: !2002, line: 381, type: !5284)
!5544 = !DILocation(line: 381, column: 45, scope: !5297, inlinedAt: !5298)
!5545 = !DILocalVariable(arg: 5, scope: !5297, file: !2002, line: 381, type: !5287)
!5546 = !DILocation(line: 381, column: 68, scope: !5297, inlinedAt: !5298)
!5547 = !DILocation(line: 387, column: 13, scope: !5297, inlinedAt: !5298)
!5548 = !DILocalVariable(arg: 2, scope: !5280, file: !2002, line: 380, type: !2571)
!5549 = !DILocation(line: 380, column: 45, scope: !5280, inlinedAt: !5296)
!5550 = !DILocalVariable(arg: 3, scope: !5280, file: !2002, line: 380, type: !5283)
!5551 = !DILocation(line: 380, column: 68, scope: !5280, inlinedAt: !5296)
!5552 = !DILocalVariable(arg: 4, scope: !5280, file: !2002, line: 381, type: !5284)
!5553 = !DILocation(line: 381, column: 45, scope: !5280, inlinedAt: !5296)
!5554 = !DILocalVariable(arg: 5, scope: !5280, file: !2002, line: 381, type: !5287)
!5555 = !DILocation(line: 381, column: 68, scope: !5280, inlinedAt: !5296)
!5556 = !DILocation(line: 387, column: 13, scope: !5280, inlinedAt: !5296)
!5557 = !DILocation(line: 385, column: 56, scope: !5280, inlinedAt: !5296)
!5558 = !DILocation(line: 2221, column: 31, scope: !5350, inlinedAt: !5382)
!5559 = !DILocation(line: 226, column: 15, scope: !5272, inlinedAt: !5278)
!5560 = !DILocation(line: 226, column: 41, scope: !5272, inlinedAt: !5278)
!5561 = !DILocation(line: 2221, column: 31, scope: !5350, inlinedAt: !5358)
!5562 = !DILocation(line: 2428, column: 80, scope: !5269, inlinedAt: !5270)
!5563 = !DILocation(line: 2428, column: 9, scope: !5267, inlinedAt: !5268)
!5564 = !DILocation(line: 2428, column: 16, scope: !5267, inlinedAt: !5268)
!5565 = !DILocation(line: 2575, column: 19, scope: !5333, inlinedAt: !5334)
!5566 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !5336)
!5567 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !5336)
!5568 = !DILocation(line: 2575, column: 26, scope: !5333, inlinedAt: !5334)
!5569 = !DILocation(line: 2576, column: 5, scope: !5333, inlinedAt: !5334)
!5570 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !5332)
!5571 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !5332)
!5572 = !DILocation(line: 2576, column: 20, scope: !5333, inlinedAt: !5334)
!5573 = !DILocation(line: 2577, column: 12, scope: !5333, inlinedAt: !5334)
!5574 = !DILocation(line: 2428, column: 60, scope: !5267, inlinedAt: !5268)
!5575 = !DILocation(line: 2562, column: 12, scope: !5326, inlinedAt: !5327)
!5576 = !DILocation(line: 2223, column: 33, scope: !4922, inlinedAt: !5325)
!5577 = !DILocation(line: 2223, column: 40, scope: !4922, inlinedAt: !5325)
!5578 = !DILocation(line: 2221, column: 31, scope: !5245, inlinedAt: !5322)
!5579 = !DILocation(line: 2184, column: 74, scope: !5265, inlinedAt: !5266)
!5580 = !DILocation(line: 2184, column: 74, scope: !5256, inlinedAt: !5264)
!5581 = !DILocation(line: 2184, column: 34, scope: !5256, inlinedAt: !5264)
!5582 = !DILocation(line: 2221, column: 31, scope: !5300, inlinedAt: !5308)
!5583 = !DILocation(line: 2184, column: 9, scope: !5584, inlinedAt: !5264)
!5584 = !DILexicalBlockFile(scope: !5256, file: !187, discriminator: 1)
!5585 = !DILocation(line: 2184, column: 67, scope: !5256, inlinedAt: !5264)
!5586 = !DILocation(line: 2221, column: 31, scope: !5245, inlinedAt: !5254)
!5587 = !DILocation(line: 2184, column: 42, scope: !5588, inlinedAt: !5264)
!5588 = !DILexicalBlockFile(scope: !5256, file: !187, discriminator: 3)
!5589 = !DILocation(line: 2221, column: 31, scope: !5221, inlinedAt: !5365)
!5590 = !DILocation(line: 226, column: 15, scope: !5369, inlinedAt: !5374)
!5591 = !DILocation(line: 226, column: 41, scope: !5369, inlinedAt: !5374)
!5592 = !DILocation(line: 2221, column: 31, scope: !5221, inlinedAt: !5368)
!5593 = !DILocation(line: 226, column: 21, scope: !5369, inlinedAt: !5374)
!5594 = !DILocation(line: 2404, column: 59, scope: !5202, inlinedAt: !5203)
!5595 = !DILocation(line: 2404, column: 47, scope: !5199, inlinedAt: !5201)
!5596 = !DILocation(line: 2174, column: 50, scope: !5197, inlinedAt: !5198)
!5597 = !DILocation(line: 2174, column: 50, scope: !5191, inlinedAt: !5196)
!5598 = !DILocation(line: 2174, column: 34, scope: !5191, inlinedAt: !5196)
!5599 = !DILocation(line: 2221, column: 31, scope: !5181, inlinedAt: !5190)
!5600 = !DILocation(line: 2174, column: 9, scope: !5601, inlinedAt: !5196)
!5601 = !DILexicalBlockFile(scope: !5191, file: !187, discriminator: 1)
!5602 = !DILocalVariable(name: "__ec", scope: !5149, file: !2023, line: 365, type: !30)
!5603 = !DILocation(line: 365, column: 9, scope: !5149)
!5604 = !DILocation(line: 365, column: 40, scope: !5149)
!5605 = !DILocation(line: 2558, column: 12, scope: !5175, inlinedAt: !5176)
!5606 = !DILocation(line: 2218, column: 39, scope: !5171, inlinedAt: !5174)
!5607 = !DILocation(line: 2218, column: 46, scope: !5171, inlinedAt: !5174)
!5608 = !DILocation(line: 2558, column: 19, scope: !5175, inlinedAt: !5176)
!5609 = !DILocation(line: 365, column: 68, scope: !5149)
!5610 = !DILocation(line: 324, column: 25, scope: !5157, inlinedAt: !5165)
!5611 = !DILocation(line: 324, column: 33, scope: !5157, inlinedAt: !5165)
!5612 = !DILocation(line: 324, column: 41, scope: !5157, inlinedAt: !5165)
!5613 = !DILocation(line: 324, column: 10, scope: !5157, inlinedAt: !5165)
!5614 = !DILocation(line: 324, column: 3, scope: !5157, inlinedAt: !5165)
!5615 = !DILocation(line: 365, column: 9, scope: !5465)
!5616 = !DILocation(line: 366, column: 9, scope: !5148)
!5617 = !DILocation(line: 366, column: 14, scope: !5148)
!5618 = !DILocation(line: 366, column: 9, scope: !5149)
!5619 = !DILocation(line: 2575, column: 19, scope: !5146, inlinedAt: !5147)
!5620 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5151)
!5621 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5151)
!5622 = !DILocation(line: 2575, column: 26, scope: !5146, inlinedAt: !5147)
!5623 = !DILocation(line: 2576, column: 5, scope: !5146, inlinedAt: !5147)
!5624 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5145)
!5625 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5145)
!5626 = !DILocation(line: 2576, column: 20, scope: !5146, inlinedAt: !5147)
!5627 = !DILocation(line: 2577, column: 12, scope: !5146, inlinedAt: !5147)
!5628 = !DILocation(line: 367, column: 9, scope: !5148)
!5629 = !DILocation(line: 370, column: 1, scope: !5149)
!5630 = !DILocation(line: 359, column: 18, scope: !5243)
!5631 = !DILocation(line: 370, column: 1, scope: !5465)
!5632 = !DILocation(line: 370, column: 1, scope: !5243)
!5633 = !DILocation(line: 362, column: 13, scope: !5634)
!5634 = !DILexicalBlockFile(scope: !5149, file: !2023, discriminator: 3)
!5635 = !DILocation(line: 370, column: 1, scope: !5634)
!5636 = !DILocation(line: 2582, column: 21, scope: !4963, inlinedAt: !5128)
!5637 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5138)
!5638 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5138)
!5639 = !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5128)
!5640 = !DILocation(line: 2583, column: 22, scope: !4963, inlinedAt: !5128)
!5641 = !DILocation(line: 2583, column: 5, scope: !4963, inlinedAt: !5128)
!5642 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5136)
!5643 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5136)
!5644 = !DILocation(line: 2583, column: 20, scope: !4963, inlinedAt: !5128)
!5645 = !DILocation(line: 2584, column: 9, scope: !4962, inlinedAt: !5128)
!5646 = !DILocation(line: 2584, column: 9, scope: !4963, inlinedAt: !5128)
!5647 = !DILocation(line: 2585, column: 7, scope: !4962, inlinedAt: !5128)
!5648 = !DILocation(line: 2223, column: 33, scope: !5105, inlinedAt: !5134)
!5649 = !DILocation(line: 2223, column: 40, scope: !5105, inlinedAt: !5134)
!5650 = !DILocation(line: 2585, column: 23, scope: !4962, inlinedAt: !5128)
!5651 = !DILocation(line: 2272, column: 12, scope: !4944, inlinedAt: !5127)
!5652 = !DILocation(line: 2272, column: 5, scope: !4944, inlinedAt: !5127)
!5653 = !DILocation(line: 2272, column: 5, scope: !5654, inlinedAt: !5127)
!5654 = !DILexicalBlockFile(scope: !4944, file: !187, discriminator: 1)
!5655 = !DILocation(line: 2272, column: 5, scope: !5656, inlinedAt: !5127)
!5656 = !DILexicalBlockFile(scope: !4944, file: !187, discriminator: 2)
!5657 = !DILocation(line: 370, column: 1, scope: !5131)
!5658 = !DILocation(line: 369, column: 30, scope: !5148)
!5659 = !DILocation(line: 369, column: 9, scope: !5148)
!5660 = !DILocation(line: 369, column: 9, scope: !5661)
!5661 = !DILexicalBlockFile(scope: !5148, file: !2023, discriminator: 1)
!5662 = !DILocation(line: 2582, column: 21, scope: !4963, inlinedAt: !5095)
!5663 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5114)
!5664 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5114)
!5665 = !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5095)
!5666 = !DILocation(line: 2583, column: 22, scope: !4963, inlinedAt: !5095)
!5667 = !DILocation(line: 2583, column: 5, scope: !4963, inlinedAt: !5095)
!5668 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5112)
!5669 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5112)
!5670 = !DILocation(line: 2583, column: 20, scope: !4963, inlinedAt: !5095)
!5671 = !DILocation(line: 2584, column: 9, scope: !4962, inlinedAt: !5095)
!5672 = !DILocation(line: 2584, column: 9, scope: !4963, inlinedAt: !5095)
!5673 = !DILocation(line: 2585, column: 7, scope: !4962, inlinedAt: !5095)
!5674 = !DILocation(line: 2223, column: 33, scope: !5105, inlinedAt: !5108)
!5675 = !DILocation(line: 2223, column: 40, scope: !5105, inlinedAt: !5108)
!5676 = !DILocation(line: 2585, column: 23, scope: !4962, inlinedAt: !5095)
!5677 = !DILocation(line: 2272, column: 12, scope: !4944, inlinedAt: !4960)
!5678 = !DILocation(line: 2272, column: 5, scope: !4944, inlinedAt: !4960)
!5679 = !DILocation(line: 2272, column: 5, scope: !5654, inlinedAt: !4960)
!5680 = !DILocation(line: 2272, column: 5, scope: !5656, inlinedAt: !4960)
!5681 = !DILocation(line: 2582, column: 21, scope: !4911, inlinedAt: !4912)
!5682 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !4931)
!5683 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !4931)
!5684 = !DILocation(line: 2582, column: 28, scope: !4911, inlinedAt: !4912)
!5685 = !DILocation(line: 2583, column: 22, scope: !4911, inlinedAt: !4912)
!5686 = !DILocation(line: 2583, column: 5, scope: !4911, inlinedAt: !4912)
!5687 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !4929)
!5688 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !4929)
!5689 = !DILocation(line: 2583, column: 20, scope: !4911, inlinedAt: !4912)
!5690 = !DILocation(line: 2584, column: 9, scope: !4910, inlinedAt: !4912)
!5691 = !DILocation(line: 2584, column: 9, scope: !4911, inlinedAt: !4912)
!5692 = !DILocation(line: 2585, column: 7, scope: !4910, inlinedAt: !4912)
!5693 = !DILocation(line: 2223, column: 33, scope: !4922, inlinedAt: !4925)
!5694 = !DILocation(line: 2223, column: 40, scope: !4922, inlinedAt: !4925)
!5695 = !DILocation(line: 2585, column: 23, scope: !4910, inlinedAt: !4912)
!5696 = !DILocation(line: 2272, column: 12, scope: !4905, inlinedAt: !4908)
!5697 = !DILocation(line: 2272, column: 5, scope: !4905, inlinedAt: !4908)
!5698 = !DILocation(line: 2272, column: 5, scope: !5699, inlinedAt: !4908)
!5699 = !DILexicalBlockFile(scope: !4905, file: !187, discriminator: 1)
!5700 = !DILocation(line: 2272, column: 5, scope: !5701, inlinedAt: !4908)
!5701 = !DILexicalBlockFile(scope: !4905, file: !187, discriminator: 2)
!5702 = !DILocation(line: 370, column: 1, scope: !5101)
!5703 = !DILocation(line: 2582, column: 21, scope: !4911, inlinedAt: !5438)
!5704 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !5448)
!5705 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !5448)
!5706 = !DILocation(line: 2582, column: 28, scope: !4911, inlinedAt: !5438)
!5707 = !DILocation(line: 2583, column: 22, scope: !4911, inlinedAt: !5438)
!5708 = !DILocation(line: 2583, column: 5, scope: !4911, inlinedAt: !5438)
!5709 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !5446)
!5710 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !5446)
!5711 = !DILocation(line: 2583, column: 20, scope: !4911, inlinedAt: !5438)
!5712 = !DILocation(line: 2584, column: 9, scope: !4910, inlinedAt: !5438)
!5713 = !DILocation(line: 2584, column: 9, scope: !4911, inlinedAt: !5438)
!5714 = !DILocation(line: 2585, column: 7, scope: !4910, inlinedAt: !5438)
!5715 = !DILocation(line: 2223, column: 33, scope: !4922, inlinedAt: !5444)
!5716 = !DILocation(line: 2223, column: 40, scope: !4922, inlinedAt: !5444)
!5717 = !DILocation(line: 2585, column: 23, scope: !4910, inlinedAt: !5438)
!5718 = !DILocation(line: 2272, column: 12, scope: !4905, inlinedAt: !5437)
!5719 = !DILocation(line: 2272, column: 5, scope: !4905, inlinedAt: !5437)
!5720 = !DILocation(line: 2272, column: 5, scope: !5699, inlinedAt: !5437)
!5721 = !DILocation(line: 2272, column: 5, scope: !5701, inlinedAt: !5437)
!5722 = !DILocation(line: 370, column: 1, scope: !5441)
!5723 = !DILocation(line: 359, column: 18, scope: !5634)
!5724 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !7, file: !2023, line: 343, type: !5162, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5725, variables: !212)
!5725 = !{!5726}
!5726 = !DITemplateTypeParameter(name: "_Fp", type: !2001)
!5727 = !DILocation(line: 0, scope: !4944, inlinedAt: !5728)
!5728 = distinct !DILocation(line: 2585, column: 7, scope: !4961, inlinedAt: !5729)
!5729 = distinct !DILocation(line: 2539, column: 19, scope: !5096, inlinedAt: !5730)
!5730 = distinct !DILocation(line: 2539, column: 17, scope: !5099, inlinedAt: !5731)
!5731 = distinct !DILocation(line: 351, column: 1, scope: !5724)
!5732 = !DILocation(line: 2267, column: 50, scope: !4944, inlinedAt: !5728)
!5733 = !DILocation(line: 0, scope: !5105, inlinedAt: !5734)
!5734 = distinct !DILocation(line: 2585, column: 14, scope: !4962, inlinedAt: !5729)
!5735 = !DILocation(line: 0, scope: !5110, inlinedAt: !5736)
!5736 = distinct !DILocation(line: 2583, column: 12, scope: !4963, inlinedAt: !5729)
!5737 = !DILocation(line: 0, scope: !5110, inlinedAt: !5738)
!5738 = distinct !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5729)
!5739 = !DILocation(line: 0, scope: !4963, inlinedAt: !5729)
!5740 = !DILocation(line: 2581, column: 22, scope: !4963, inlinedAt: !5729)
!5741 = !DILocation(line: 2582, column: 13, scope: !4963, inlinedAt: !5729)
!5742 = !DILocation(line: 0, scope: !5097, inlinedAt: !5730)
!5743 = !DILocation(line: 0, scope: !5099, inlinedAt: !5731)
!5744 = !DILocalVariable(name: "__t", arg: 1, scope: !5745, file: !282, line: 2210, type: !2536)
!5745 = distinct !DISubprogram(name: "move<void (*&)()>", linkageName: "_ZNSt3__14moveIRPFvvEEEONS_16remove_referenceIT_E4typeEOS5_", scope: !7, file: !282, line: 2210, type: !5746, isLocal: false, isDefinition: true, scopeLine: 2211, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5751, variables: !212)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{!5748, !2536}
!5748 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5749, size: 64)
!5749 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5750, file: !282, line: 1069, baseType: !2510)
!5750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (*&)()>", scope: !7, file: !282, line: 1069, size: 8, elements: !212, templateParams: !5751, identifier: "_ZTSNSt3__116remove_referenceIRPFvvEEE")
!5751 = !{!5752}
!5752 = !DITemplateTypeParameter(name: "_Tp", type: !2536)
!5753 = !DILocation(line: 2210, column: 12, scope: !5745, inlinedAt: !5754)
!5754 = distinct !DILocation(line: 339, column: 14, scope: !5755, inlinedAt: !5763)
!5755 = !DILexicalBlockFile(scope: !5756, file: !2023, discriminator: 1)
!5756 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !7, file: !2023, line: 337, type: !5757, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5759, variables: !212)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{null, !2596, !5284}
!5759 = !{!5760, !5761, !4252, !5762}
!5760 = !DITemplateTypeParameter(name: "_TSp", type: !2012)
!5761 = !DITemplateTypeParameter(name: "_Fp", type: !2510)
!5762 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !212)
!5763 = distinct !DILocation(line: 349, column: 5, scope: !5764)
!5764 = !DILexicalBlockFile(scope: !5724, file: !2023, discriminator: 1)
!5765 = !DILocation(line: 2219, column: 47, scope: !5221, inlinedAt: !5766)
!5766 = distinct !DILocation(line: 4323, column: 1, scope: !5767, inlinedAt: !5771)
!5767 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !7, file: !282, line: 4322, type: !5768, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5770, variables: !212)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{null, !5224}
!5770 = !{!5761, !4252}
!5771 = distinct !DILocation(line: 339, column: 5, scope: !5772, inlinedAt: !5763)
!5772 = !DILexicalBlockFile(scope: !5756, file: !2023, discriminator: 2)
!5773 = !DILocalVariable(name: "__f", arg: 1, scope: !5767, file: !282, line: 4322, type: !5224)
!5774 = !DILocation(line: 4322, column: 16, scope: !5767, inlinedAt: !5771)
!5775 = !DILocalVariable(name: "this", arg: 1, scope: !5776, type: !5377, flags: DIFlagArtificial | DIFlagObjectPointer)
!5776 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2507, file: !2002, line: 270, type: !2534, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2533, variables: !212)
!5777 = !DILocation(line: 0, scope: !5776, inlinedAt: !5778)
!5778 = distinct !DILocation(line: 951, column: 61, scope: !5779, inlinedAt: !5791)
!5779 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !2002, line: 948, type: !5780, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5790, variables: !212)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{!5782, !2596}
!5782 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5783, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5784, file: !2572, line: 463, baseType: !5786)
!5784 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2572, line: 460, size: 8, elements: !212, templateParams: !5785, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5785 = !{!2544, !4957}
!5786 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5787, file: !2572, line: 289, baseType: !2510)
!5787 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2572, line: 285, size: 8, elements: !212, templateParams: !5788, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5788 = !{!2544, !5789}
!5789 = !DITemplateTypeParameter(name: "_Tp", type: !5283)
!5790 = !{!2544, !2578}
!5791 = distinct !DILocation(line: 339, column: 26, scope: !5756, inlinedAt: !5763)
!5792 = !DILocalVariable(name: "__t", arg: 1, scope: !5779, file: !2002, line: 948, type: !2596)
!5793 = !DILocation(line: 948, column: 20, scope: !5779, inlinedAt: !5791)
!5794 = !DILocalVariable(name: "__t", arg: 1, scope: !5756, file: !2023, line: 337, type: !2596)
!5795 = !DILocation(line: 337, column: 46, scope: !5756, inlinedAt: !5763)
!5796 = !DILocation(line: 0, scope: !5171, inlinedAt: !5797)
!5797 = distinct !DILocation(line: 2550, column: 20, scope: !5798, inlinedAt: !5799)
!5798 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !4964, file: !187, line: 2549, type: !5052, isLocal: false, isDefinition: true, scopeLine: 2549, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5051, variables: !212)
!5799 = distinct !DILocation(line: 349, column: 22, scope: !5724)
!5800 = !DILocalVariable(name: "this", arg: 1, scope: !5798, type: !5178, flags: DIFlagArtificial | DIFlagObjectPointer)
!5801 = !DILocation(line: 0, scope: !5798, inlinedAt: !5799)
!5802 = !DILocation(line: 0, scope: !4927, inlinedAt: !5803)
!5803 = distinct !DILocation(line: 2576, column: 12, scope: !5333, inlinedAt: !5804)
!5804 = distinct !DILocation(line: 347, column: 59, scope: !5805)
!5805 = !DILexicalBlockFile(scope: !5724, file: !2023, discriminator: 3)
!5806 = !DILocation(line: 0, scope: !4927, inlinedAt: !5807)
!5807 = distinct !DILocation(line: 2575, column: 26, scope: !5333, inlinedAt: !5804)
!5808 = !DILocation(line: 0, scope: !5333, inlinedAt: !5804)
!5809 = !DILocation(line: 2575, column: 13, scope: !5333, inlinedAt: !5804)
!5810 = !DILocation(line: 0, scope: !4944, inlinedAt: !5811)
!5811 = distinct !DILocation(line: 2585, column: 7, scope: !4961, inlinedAt: !5812)
!5812 = distinct !DILocation(line: 2539, column: 19, scope: !5096, inlinedAt: !5813)
!5813 = distinct !DILocation(line: 2539, column: 17, scope: !5099, inlinedAt: !5814)
!5814 = distinct !DILocation(line: 351, column: 1, scope: !5764)
!5815 = !DILocation(line: 2267, column: 50, scope: !4944, inlinedAt: !5811)
!5816 = !DILocation(line: 0, scope: !5105, inlinedAt: !5817)
!5817 = distinct !DILocation(line: 2585, column: 14, scope: !4962, inlinedAt: !5812)
!5818 = !DILocation(line: 0, scope: !5110, inlinedAt: !5819)
!5819 = distinct !DILocation(line: 2583, column: 12, scope: !4963, inlinedAt: !5812)
!5820 = !DILocation(line: 0, scope: !5110, inlinedAt: !5821)
!5821 = distinct !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5812)
!5822 = !DILocation(line: 0, scope: !4963, inlinedAt: !5812)
!5823 = !DILocation(line: 2581, column: 22, scope: !4963, inlinedAt: !5812)
!5824 = !DILocation(line: 2582, column: 13, scope: !4963, inlinedAt: !5812)
!5825 = !DILocation(line: 0, scope: !5097, inlinedAt: !5813)
!5826 = !DILocation(line: 0, scope: !5099, inlinedAt: !5814)
!5827 = !DILocalVariable(name: "this", arg: 1, scope: !5828, type: !5360, flags: DIFlagArtificial | DIFlagObjectPointer)
!5828 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !2009, file: !2002, line: 270, type: !2496, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2495, variables: !212)
!5829 = !DILocation(line: 0, scope: !5828, inlinedAt: !5830)
!5830 = distinct !DILocation(line: 951, column: 61, scope: !5831, inlinedAt: !5842)
!5831 = distinct !DISubprogram(name: "get<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !2002, line: 948, type: !5832, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5841, variables: !212)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!5834, !2596}
!5834 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5835, size: 64)
!5835 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5836, file: !2572, line: 463, baseType: !5838)
!5836 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<0, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2572, line: 460, size: 8, elements: !212, templateParams: !5837, identifier: "_ZTSNSt3__113tuple_elementILm0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5837 = !{!2504, !4957}
!5838 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5839, file: !2572, line: 289, baseType: !2012)
!5839 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<0, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !2572, line: 285, size: 8, elements: !212, templateParams: !5840, identifier: "_ZTSNSt3__113tuple_elementILm0ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5840 = !{!2504, !5789}
!5841 = !{!2504, !2578}
!5842 = distinct !DILocation(line: 347, column: 39, scope: !5843)
!5843 = !DILexicalBlockFile(scope: !5724, file: !2023, discriminator: 2)
!5844 = !DILocalVariable(name: "__t", arg: 1, scope: !5831, file: !2002, line: 948, type: !2596)
!5845 = !DILocation(line: 948, column: 20, scope: !5831, inlinedAt: !5842)
!5846 = !DILocation(line: 0, scope: !5171, inlinedAt: !5847)
!5847 = distinct !DILocation(line: 2550, column: 20, scope: !5798, inlinedAt: !5848)
!5848 = distinct !DILocation(line: 347, column: 53, scope: !5764)
!5849 = !DILocation(line: 0, scope: !5798, inlinedAt: !5848)
!5850 = !DILocation(line: 2219, column: 47, scope: !5181, inlinedAt: !5851)
!5851 = distinct !DILocation(line: 2174, column: 16, scope: !5191, inlinedAt: !5852)
!5852 = distinct !DILocation(line: 2174, column: 50, scope: !5197, inlinedAt: !5853)
!5853 = distinct !DILocation(line: 2404, column: 47, scope: !5199, inlinedAt: !5854)
!5854 = distinct !DILocation(line: 2404, column: 59, scope: !5202, inlinedAt: !5855)
!5855 = distinct !DILocation(line: 346, column: 26, scope: !5724)
!5856 = !DILocation(line: 0, scope: !5191, inlinedAt: !5852)
!5857 = !DILocation(line: 2173, column: 27, scope: !5191, inlinedAt: !5852)
!5858 = !DILocation(line: 0, scope: !5197, inlinedAt: !5853)
!5859 = !DILocation(line: 2173, column: 27, scope: !5197, inlinedAt: !5853)
!5860 = !DILocation(line: 0, scope: !5199, inlinedAt: !5854)
!5861 = !DILocation(line: 2404, column: 31, scope: !5199, inlinedAt: !5854)
!5862 = !DILocation(line: 0, scope: !5202, inlinedAt: !5855)
!5863 = !DILocation(line: 2404, column: 31, scope: !5202, inlinedAt: !5855)
!5864 = !DILocalVariable(name: "__vp", arg: 1, scope: !5724, file: !2023, line: 343, type: !76)
!5865 = !DILocation(line: 343, column: 28, scope: !5724)
!5866 = !DILocalVariable(name: "__p", scope: !5724, file: !2023, line: 346, type: !4964)
!5867 = !DILocation(line: 346, column: 26, scope: !5724)
!5868 = !DILocation(line: 346, column: 48, scope: !5724)
!5869 = !DILocation(line: 346, column: 30, scope: !5724)
!5870 = !DILocation(line: 2404, column: 59, scope: !5202, inlinedAt: !5855)
!5871 = !DILocation(line: 2404, column: 47, scope: !5199, inlinedAt: !5854)
!5872 = !DILocation(line: 2174, column: 50, scope: !5197, inlinedAt: !5853)
!5873 = !DILocation(line: 2174, column: 50, scope: !5191, inlinedAt: !5852)
!5874 = !DILocation(line: 2174, column: 34, scope: !5191, inlinedAt: !5852)
!5875 = !DILocation(line: 2221, column: 31, scope: !5181, inlinedAt: !5851)
!5876 = !DILocation(line: 2174, column: 9, scope: !5601, inlinedAt: !5852)
!5877 = !DILocation(line: 347, column: 5, scope: !5724)
!5878 = !DILocation(line: 2550, column: 13, scope: !5798, inlinedAt: !5848)
!5879 = !DILocation(line: 2218, column: 39, scope: !5171, inlinedAt: !5847)
!5880 = !DILocation(line: 2218, column: 46, scope: !5171, inlinedAt: !5847)
!5881 = !DILocation(line: 2550, column: 20, scope: !5798, inlinedAt: !5848)
!5882 = !DILocation(line: 2550, column: 5, scope: !5798, inlinedAt: !5848)
!5883 = !DILocation(line: 951, column: 50, scope: !5831, inlinedAt: !5842)
!5884 = !DILocation(line: 951, column: 54, scope: !5831, inlinedAt: !5842)
!5885 = !DILocation(line: 270, column: 102, scope: !5828, inlinedAt: !5830)
!5886 = !DILocation(line: 2575, column: 19, scope: !5333, inlinedAt: !5804)
!5887 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !5807)
!5888 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !5807)
!5889 = !DILocation(line: 2575, column: 26, scope: !5333, inlinedAt: !5804)
!5890 = !DILocation(line: 2576, column: 5, scope: !5333, inlinedAt: !5804)
!5891 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !5803)
!5892 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !5803)
!5893 = !DILocation(line: 2576, column: 20, scope: !5333, inlinedAt: !5804)
!5894 = !DILocation(line: 2577, column: 12, scope: !5333, inlinedAt: !5804)
!5895 = !DILocation(line: 347, column: 27, scope: !5843)
!5896 = !DILocation(line: 2550, column: 13, scope: !5798, inlinedAt: !5799)
!5897 = !DILocation(line: 2218, column: 39, scope: !5171, inlinedAt: !5797)
!5898 = !DILocation(line: 2218, column: 46, scope: !5171, inlinedAt: !5797)
!5899 = !DILocation(line: 2550, column: 20, scope: !5798, inlinedAt: !5799)
!5900 = !DILocation(line: 2550, column: 5, scope: !5798, inlinedAt: !5799)
!5901 = !DILocalVariable(arg: 2, scope: !5756, file: !2023, line: 337, type: !5284)
!5902 = !DILocation(line: 337, column: 79, scope: !5756, inlinedAt: !5763)
!5903 = !DILocation(line: 339, column: 40, scope: !5756, inlinedAt: !5763)
!5904 = !DILocation(line: 951, column: 50, scope: !5779, inlinedAt: !5791)
!5905 = !DILocation(line: 951, column: 54, scope: !5779, inlinedAt: !5791)
!5906 = !DILocation(line: 270, column: 102, scope: !5776, inlinedAt: !5778)
!5907 = !DILocation(line: 2213, column: 31, scope: !5745, inlinedAt: !5754)
!5908 = !DILocation(line: 4323, column: 1, scope: !5767, inlinedAt: !5771)
!5909 = !DILocation(line: 2221, column: 31, scope: !5221, inlinedAt: !5766)
!5910 = !DILocation(line: 4323, column: 1, scope: !5911, inlinedAt: !5771)
!5911 = !DILexicalBlockFile(scope: !5767, file: !282, discriminator: 1)
!5912 = !DILocation(line: 340, column: 1, scope: !5756, inlinedAt: !5763)
!5913 = !DILocation(line: 2582, column: 21, scope: !4963, inlinedAt: !5729)
!5914 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5738)
!5915 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5738)
!5916 = !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5729)
!5917 = !DILocation(line: 2583, column: 22, scope: !4963, inlinedAt: !5729)
!5918 = !DILocation(line: 2583, column: 5, scope: !4963, inlinedAt: !5729)
!5919 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5736)
!5920 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5736)
!5921 = !DILocation(line: 2583, column: 20, scope: !4963, inlinedAt: !5729)
!5922 = !DILocation(line: 2584, column: 9, scope: !4962, inlinedAt: !5729)
!5923 = !DILocation(line: 2584, column: 9, scope: !4963, inlinedAt: !5729)
!5924 = !DILocation(line: 2585, column: 7, scope: !4962, inlinedAt: !5729)
!5925 = !DILocation(line: 2223, column: 33, scope: !5105, inlinedAt: !5734)
!5926 = !DILocation(line: 2223, column: 40, scope: !5105, inlinedAt: !5734)
!5927 = !DILocation(line: 2585, column: 23, scope: !4962, inlinedAt: !5729)
!5928 = !DILocation(line: 2272, column: 12, scope: !4944, inlinedAt: !5728)
!5929 = !DILocation(line: 2272, column: 5, scope: !4944, inlinedAt: !5728)
!5930 = !DILocation(line: 2272, column: 5, scope: !5654, inlinedAt: !5728)
!5931 = !DILocation(line: 2272, column: 5, scope: !5656, inlinedAt: !5728)
!5932 = !DILocation(line: 351, column: 1, scope: !5724)
!5933 = !DILocation(line: 351, column: 1, scope: !5764)
!5934 = !DILocation(line: 2582, column: 21, scope: !4963, inlinedAt: !5812)
!5935 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5821)
!5936 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5821)
!5937 = !DILocation(line: 2582, column: 28, scope: !4963, inlinedAt: !5812)
!5938 = !DILocation(line: 2583, column: 22, scope: !4963, inlinedAt: !5812)
!5939 = !DILocation(line: 2583, column: 5, scope: !4963, inlinedAt: !5812)
!5940 = !DILocation(line: 2213, column: 33, scope: !5110, inlinedAt: !5819)
!5941 = !DILocation(line: 2213, column: 40, scope: !5110, inlinedAt: !5819)
!5942 = !DILocation(line: 2583, column: 20, scope: !4963, inlinedAt: !5812)
!5943 = !DILocation(line: 2584, column: 9, scope: !4962, inlinedAt: !5812)
!5944 = !DILocation(line: 2584, column: 9, scope: !4963, inlinedAt: !5812)
!5945 = !DILocation(line: 2585, column: 7, scope: !4962, inlinedAt: !5812)
!5946 = !DILocation(line: 2223, column: 33, scope: !5105, inlinedAt: !5817)
!5947 = !DILocation(line: 2223, column: 40, scope: !5105, inlinedAt: !5817)
!5948 = !DILocation(line: 2585, column: 23, scope: !4962, inlinedAt: !5812)
!5949 = !DILocation(line: 2272, column: 12, scope: !4944, inlinedAt: !5811)
!5950 = !DILocation(line: 2272, column: 5, scope: !4944, inlinedAt: !5811)
!5951 = !DILocation(line: 2272, column: 5, scope: !5654, inlinedAt: !5811)
!5952 = !DILocation(line: 2272, column: 5, scope: !5656, inlinedAt: !5811)
!5953 = !DILocation(line: 351, column: 1, scope: !5843)
!5954 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *&, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_", scope: !2018, file: !187, line: 2088, type: !5955, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5957, declaration: !5959, variables: !212)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{null, !2340, !2345}
!5957 = !{!5958, !1346}
!5958 = !DITemplateTypeParameter(name: "_Up", type: !2345)
!5959 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *&, void>", scope: !2018, file: !187, line: 2088, type: !5955, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5957)
!5960 = !DILocation(line: 2219, column: 47, scope: !5467, inlinedAt: !5961)
!5961 = distinct !DILocation(line: 2089, column: 18, scope: !5954)
!5962 = !DILocalVariable(name: "this", arg: 1, scope: !5954, type: !5963, flags: DIFlagArtificial | DIFlagObjectPointer)
!5963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!5964 = !DILocation(line: 0, scope: !5954)
!5965 = !DILocalVariable(name: "__u", arg: 2, scope: !5954, file: !187, line: 2088, type: !2345)
!5966 = !DILocation(line: 2088, column: 32, scope: !5954)
!5967 = !DILocation(line: 2089, column: 9, scope: !5954)
!5968 = !DILocation(line: 2089, column: 38, scope: !5954)
!5969 = !DILocation(line: 2221, column: 31, scope: !5467, inlinedAt: !5961)
!5970 = !DILocation(line: 2089, column: 18, scope: !5954)
!5971 = !DILocation(line: 2089, column: 44, scope: !5954)
!5972 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !2018, file: !187, line: 2101, type: !2342, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2341, variables: !212)
!5973 = !DILocalVariable(name: "this", arg: 1, scope: !5972, type: !5963, flags: DIFlagArtificial | DIFlagObjectPointer)
!5974 = !DILocation(line: 0, scope: !5972)
!5975 = !DILocation(line: 2101, column: 40, scope: !5972)
!5976 = !DILocation(line: 2101, column: 33, scope: !5972)
!5977 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2357, file: !187, line: 2136, type: !2378, isLocal: false, isDefinition: true, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2377, variables: !212)
!5978 = !DILocalVariable(name: "this", arg: 1, scope: !5977, type: !5979, flags: DIFlagArtificial | DIFlagObjectPointer)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!5980 = !DILocation(line: 0, scope: !5977)
!5981 = !DILocation(line: 2136, column: 40, scope: !5977)
!5982 = !DILocation(line: 2136, column: 33, scope: !5977)
!5983 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !2018, file: !187, line: 2088, type: !5984, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5986, declaration: !5988, variables: !212)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{null, !2340, !5259}
!5986 = !{!5987, !1346}
!5987 = !DITemplateTypeParameter(name: "_Up", type: !2021)
!5988 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !2018, file: !187, line: 2088, type: !5984, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5986)
!5989 = !DILocation(line: 2219, column: 47, scope: !5300, inlinedAt: !5990)
!5990 = distinct !DILocation(line: 2089, column: 18, scope: !5983)
!5991 = !DILocalVariable(name: "this", arg: 1, scope: !5983, type: !5963, flags: DIFlagArtificial | DIFlagObjectPointer)
!5992 = !DILocation(line: 0, scope: !5983)
!5993 = !DILocalVariable(name: "__u", arg: 2, scope: !5983, file: !187, line: 2088, type: !5259)
!5994 = !DILocation(line: 2088, column: 32, scope: !5983)
!5995 = !DILocation(line: 2089, column: 9, scope: !5983)
!5996 = !DILocation(line: 2089, column: 38, scope: !5983)
!5997 = !DILocation(line: 2221, column: 31, scope: !5300, inlinedAt: !5990)
!5998 = !DILocation(line: 2089, column: 18, scope: !5983)
!5999 = !DILocation(line: 2089, column: 44, scope: !5983)
!6000 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, void>", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_", scope: !2357, file: !187, line: 2122, type: !6001, isLocal: false, isDefinition: true, scopeLine: 2123, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !6003, declaration: !6005, variables: !212)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{null, !2376, !5248}
!6003 = !{!6004, !1346}
!6004 = !DITemplateTypeParameter(name: "_Up", type: !2360)
!6005 = !DISubprogram(name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, void>", scope: !2357, file: !187, line: 2122, type: !6001, isLocal: false, isDefinition: false, scopeLine: 2122, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !6003)
!6006 = !DILocation(line: 2219, column: 47, scope: !5245, inlinedAt: !6007)
!6007 = distinct !DILocation(line: 2123, column: 22, scope: !6000)
!6008 = !DILocalVariable(name: "this", arg: 1, scope: !6000, type: !5979, flags: DIFlagArtificial | DIFlagObjectPointer)
!6009 = !DILocation(line: 0, scope: !6000)
!6010 = !DILocalVariable(name: "__u", arg: 2, scope: !6000, file: !187, line: 2122, type: !5248)
!6011 = !DILocation(line: 2122, column: 32, scope: !6000)
!6012 = !DILocation(line: 2123, column: 47, scope: !6000)
!6013 = !DILocation(line: 2123, column: 42, scope: !6000)
!6014 = !DILocation(line: 2221, column: 31, scope: !5245, inlinedAt: !6007)
!6015 = !DILocation(line: 2123, column: 48, scope: !6000)
!6016 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_", scope: !4970, file: !187, line: 2088, type: !6017, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !6019, declaration: !6021, variables: !212)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{null, !4976, !4981}
!6019 = !{!6020, !1346}
!6020 = !DITemplateTypeParameter(name: "_Up", type: !4981)
!6021 = !DISubprogram(name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, void>", scope: !4970, file: !187, line: 2088, type: !6017, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !6019)
!6022 = !DILocation(line: 2219, column: 47, scope: !5181, inlinedAt: !6023)
!6023 = distinct !DILocation(line: 2089, column: 18, scope: !6016)
!6024 = !DILocalVariable(name: "this", arg: 1, scope: !6016, type: !6025, flags: DIFlagArtificial | DIFlagObjectPointer)
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!6026 = !DILocation(line: 0, scope: !6016)
!6027 = !DILocalVariable(name: "__u", arg: 2, scope: !6016, file: !187, line: 2088, type: !4981)
!6028 = !DILocation(line: 2088, column: 32, scope: !6016)
!6029 = !DILocation(line: 2089, column: 9, scope: !6016)
!6030 = !DILocation(line: 2089, column: 38, scope: !6016)
!6031 = !DILocation(line: 2221, column: 31, scope: !5181, inlinedAt: !6023)
!6032 = !DILocation(line: 2089, column: 18, scope: !6016)
!6033 = !DILocation(line: 2089, column: 44, scope: !6016)
!6034 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !6035, file: !2023, line: 194, type: !6065, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !6064, variables: !212)
!6035 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !7, file: !2023, line: 138, size: 64, elements: !6036, templateParams: !2371, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!6036 = !{!6037, !6042, !6046, !6051, !6055, !6056, !6057, !6062, !6063, !6064}
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !6035, file: !2023, line: 140, baseType: !6038, size: 64)
!6038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !7, file: !2051, line: 75, baseType: !6039)
!6039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !6040, line: 30, baseType: !6041)
!6040 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex_try_lock")
!6041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !2055, line: 112, baseType: !92)
!6042 = !DISubprogram(name: "__thread_specific_ptr", scope: !6035, file: !2023, line: 145, type: !6043, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{null, !6045}
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6035, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!6046 = !DISubprogram(name: "__thread_specific_ptr", scope: !6035, file: !2023, line: 148, type: !6047, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false)
!6047 = !DISubroutineType(types: !6048)
!6048 = !{null, !6045, !6049}
!6049 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6050, size: 64)
!6050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6035)
!6051 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !6035, file: !2023, line: 149, type: !6052, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!6054, !6045, !6049}
!6054 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6035, size: 64)
!6055 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !6035, file: !2023, line: 151, type: !2899, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false)
!6056 = !DISubprogram(name: "~__thread_specific_ptr", scope: !6035, file: !2023, line: 156, type: !6043, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!6057 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !6035, file: !2023, line: 159, type: !6058, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!6058 = !DISubroutineType(types: !6059)
!6059 = !{!6060, !6061}
!6060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !6035, file: !2023, line: 154, baseType: !2021)
!6061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!6062 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !6035, file: !2023, line: 161, type: !6058, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!6063 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !6035, file: !2023, line: 163, type: !6058, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!6064 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !6035, file: !2023, line: 164, type: !6065, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{null, !6045, !6060}
!6067 = !DILocalVariable(name: "__key", arg: 1, scope: !6068, file: !2051, line: 385, type: !6038)
!6068 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !7, file: !2051, line: 385, type: !6069, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !212)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!30, !6038, !76}
!6071 = !DILocation(line: 385, column: 39, scope: !6068, inlinedAt: !6072)
!6072 = distinct !DILocation(line: 198, column: 5, scope: !6034)
!6073 = !DILocalVariable(name: "__p", arg: 2, scope: !6068, file: !2051, line: 385, type: !76)
!6074 = !DILocation(line: 385, column: 52, scope: !6068, inlinedAt: !6072)
!6075 = !DILocalVariable(name: "this", arg: 1, scope: !6034, type: !6076, flags: DIFlagArtificial | DIFlagObjectPointer)
!6076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6035, size: 64)
!6077 = !DILocation(line: 0, scope: !6034)
!6078 = !DILocalVariable(name: "__p", arg: 2, scope: !6034, file: !2023, line: 164, type: !6060)
!6079 = !DILocation(line: 164, column: 30, scope: !6034)
!6080 = !DILocation(line: 198, column: 22, scope: !6034)
!6081 = !DILocation(line: 198, column: 30, scope: !6034)
!6082 = !DILocation(line: 387, column: 32, scope: !6068, inlinedAt: !6072)
!6083 = !DILocation(line: 387, column: 39, scope: !6068, inlinedAt: !6072)
!6084 = !DILocation(line: 387, column: 12, scope: !6068, inlinedAt: !6072)
!6085 = !DILocation(line: 199, column: 1, scope: !6034)
!6086 = distinct !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4970, file: !187, line: 2102, type: !4983, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4982, variables: !212)
!6087 = !DILocalVariable(name: "this", arg: 1, scope: !6086, type: !6088, flags: DIFlagArtificial | DIFlagObjectPointer)
!6088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!6089 = !DILocation(line: 0, scope: !6086)
!6090 = !DILocation(line: 2102, column: 52, scope: !6086)
!6091 = !DILocation(line: 2102, column: 45, scope: !6086)
!6092 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4970, file: !187, line: 2101, type: !4978, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4977, variables: !212)
!6093 = !DILocalVariable(name: "this", arg: 1, scope: !6092, type: !6025, flags: DIFlagArtificial | DIFlagObjectPointer)
!6094 = !DILocation(line: 0, scope: !6092)
!6095 = !DILocation(line: 2101, column: 40, scope: !6092)
!6096 = !DILocation(line: 2101, column: 33, scope: !6092)
!6097 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4993, file: !187, line: 2136, type: !5001, isLocal: false, isDefinition: true, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5000, variables: !212)
!6098 = !DILocalVariable(name: "this", arg: 1, scope: !6097, type: !6099, flags: DIFlagArtificial | DIFlagObjectPointer)
!6099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!6100 = !DILocation(line: 0, scope: !6097)
!6101 = !DILocation(line: 2136, column: 40, scope: !6097)
!6102 = !DILocation(line: 2136, column: 33, scope: !6097)
!6103 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !2001, file: !2002, line: 474, type: !6104, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !6106, variables: !212)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{null, !2586}
!6106 = !DISubprogram(name: "~tuple", scope: !2001, type: !6104, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!6107 = !DILocalVariable(name: "this", arg: 1, scope: !6103, type: !2000, flags: DIFlagArtificial | DIFlagObjectPointer)
!6108 = !DILocation(line: 0, scope: !6103)
!6109 = !DILocation(line: 474, column: 28, scope: !6103)
!6110 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !2001, file: !2002, line: 474, type: !6104, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !6106, variables: !212)
!6111 = !DILocalVariable(name: "this", arg: 1, scope: !6110, type: !2000, flags: DIFlagArtificial | DIFlagObjectPointer)
!6112 = !DILocation(line: 0, scope: !6110)
!6113 = !DILocation(line: 474, column: 28, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6110, file: !2002, line: 474, column: 28)
!6115 = !DILocation(line: 474, column: 28, scope: !6110)
!6116 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !2006, file: !2002, line: 369, type: !2547, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !6117, variables: !212)
!6117 = !DISubprogram(name: "~__tuple_impl", scope: !2006, type: !2547, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!6118 = !DILocalVariable(name: "this", arg: 1, scope: !6116, type: !5384, flags: DIFlagArtificial | DIFlagObjectPointer)
!6119 = !DILocation(line: 0, scope: !6116)
!6120 = !DILocation(line: 369, column: 37, scope: !6116)
!6121 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !2006, file: !2002, line: 369, type: !2547, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !6117, variables: !212)
!6122 = !DILocalVariable(name: "this", arg: 1, scope: !6121, type: !5384, flags: DIFlagArtificial | DIFlagObjectPointer)
!6123 = !DILocation(line: 0, scope: !6121)
!6124 = !DILocation(line: 369, column: 37, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6121, file: !2002, line: 369, column: 37)
!6126 = !DILocation(line: 369, column: 37, scope: !6121)
!6127 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !2009, file: !2002, line: 170, type: !2483, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !6128, variables: !212)
!6128 = !DISubprogram(name: "~__tuple_leaf", scope: !2009, type: !2483, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!6129 = !DILocation(line: 0, scope: !4905, inlinedAt: !6130)
!6130 = distinct !DILocation(line: 2585, column: 7, scope: !4909, inlinedAt: !6131)
!6131 = distinct !DILocation(line: 2539, column: 19, scope: !4913, inlinedAt: !6132)
!6132 = distinct !DILocation(line: 2539, column: 17, scope: !4916, inlinedAt: !6133)
!6133 = distinct !DILocation(line: 170, column: 7, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6127, file: !2002, line: 170, column: 7)
!6135 = !DILocation(line: 2267, column: 50, scope: !4905, inlinedAt: !6130)
!6136 = !DILocation(line: 0, scope: !4922, inlinedAt: !6137)
!6137 = distinct !DILocation(line: 2585, column: 14, scope: !4910, inlinedAt: !6131)
!6138 = !DILocation(line: 0, scope: !4927, inlinedAt: !6139)
!6139 = distinct !DILocation(line: 2583, column: 12, scope: !4911, inlinedAt: !6131)
!6140 = !DILocation(line: 0, scope: !4927, inlinedAt: !6141)
!6141 = distinct !DILocation(line: 2582, column: 28, scope: !4911, inlinedAt: !6131)
!6142 = !DILocation(line: 0, scope: !4911, inlinedAt: !6131)
!6143 = !DILocation(line: 2581, column: 22, scope: !4911, inlinedAt: !6131)
!6144 = !DILocation(line: 2582, column: 13, scope: !4911, inlinedAt: !6131)
!6145 = !DILocation(line: 0, scope: !4914, inlinedAt: !6132)
!6146 = !DILocation(line: 0, scope: !4916, inlinedAt: !6133)
!6147 = !DILocalVariable(name: "this", arg: 1, scope: !6127, type: !5360, flags: DIFlagArtificial | DIFlagObjectPointer)
!6148 = !DILocation(line: 0, scope: !6127)
!6149 = !DILocation(line: 170, column: 7, scope: !6134)
!6150 = !DILocation(line: 2582, column: 21, scope: !4911, inlinedAt: !6131)
!6151 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !6141)
!6152 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !6141)
!6153 = !DILocation(line: 2582, column: 28, scope: !4911, inlinedAt: !6131)
!6154 = !DILocation(line: 2583, column: 22, scope: !4911, inlinedAt: !6131)
!6155 = !DILocation(line: 2583, column: 5, scope: !4911, inlinedAt: !6131)
!6156 = !DILocation(line: 2213, column: 33, scope: !4927, inlinedAt: !6139)
!6157 = !DILocation(line: 2213, column: 40, scope: !4927, inlinedAt: !6139)
!6158 = !DILocation(line: 2583, column: 20, scope: !4911, inlinedAt: !6131)
!6159 = !DILocation(line: 2584, column: 9, scope: !4910, inlinedAt: !6131)
!6160 = !DILocation(line: 2584, column: 9, scope: !4911, inlinedAt: !6131)
!6161 = !DILocation(line: 2585, column: 7, scope: !4910, inlinedAt: !6131)
!6162 = !DILocation(line: 2223, column: 33, scope: !4922, inlinedAt: !6137)
!6163 = !DILocation(line: 2223, column: 40, scope: !4922, inlinedAt: !6137)
!6164 = !DILocation(line: 2585, column: 23, scope: !4910, inlinedAt: !6131)
!6165 = !DILocation(line: 2272, column: 12, scope: !4905, inlinedAt: !6130)
!6166 = !DILocation(line: 2272, column: 5, scope: !4905, inlinedAt: !6130)
!6167 = !DILocation(line: 2272, column: 5, scope: !5699, inlinedAt: !6130)
!6168 = !DILocation(line: 2272, column: 5, scope: !5701, inlinedAt: !6130)
!6169 = !DILocation(line: 170, column: 7, scope: !6127)
!6170 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_example.cpp", scope: !3, file: !3, type: !6171, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, unit: !2, variables: !212)
!6171 = !DISubroutineType(types: !212)
!6172 = !DILocation(line: 0, scope: !6170)
