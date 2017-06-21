; ModuleID = 'example.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"class.std::__1::mutex" = type { %struct._opaque_pthread_mutex_t }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::lock_guard" = type { %"class.std::__1::mutex"* }
%"class.std::__1::__thread_id" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
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
%"struct.std::__1::__compressed_pair_elem.1" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::default_delete" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::__compressed_pair.2" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.3" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.2" }
%"struct.std::__1::default_delete.10" = type { i8 }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.8" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.8" = type { void ()* }
%"class.std::__1::__compressed_pair.6" = type { %"struct.std::__1::__compressed_pair_elem.7" }
%"struct.std::__1::__compressed_pair_elem.7" = type { %"class.std::__1::tuple"* }
%"class.std::__1::unique_ptr.5" = type { %"class.std::__1::__compressed_pair.6" }
%"struct.std::__1::__compressed_pair_elem.4" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.9" = type { i8 }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"struct.std::__1::__tuple_indices.12" = type { i8 }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@g_i = global i32 0, align 4, !dbg !0
@g_i_mutex = global %"class.std::__1::mutex" { %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer } }, align 8, !dbg !2300
@__dso_handle = external global i8
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_example.cpp, i8* null }]

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init() #0 section "__TEXT,__StaticInit,regular,pure_instructions" !dbg !3204 {
entry:
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__1::mutex"*)* @_ZNSt3__15mutexD1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::mutex"* @g_i_mutex to i8*), i8* @__dso_handle) #2, !dbg !3205
  ret void, !dbg !3205
}

; Function Attrs: nounwind
declare void @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline ssp uwtable
define void @_Z14safe_incrementv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3206 {
entry:
  %this.addr.i.i20 = alloca %"class.std::__1::lock_guard"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::lock_guard"** %this.addr.i.i20, metadata !3207, metadata !3234), !dbg !3235
  %this.addr.i21 = alloca %"class.std::__1::lock_guard"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::lock_guard"** %this.addr.i21, metadata !3240, metadata !3234), !dbg !3241
  %this.addr.i.i14 = alloca %"class.std::__1::lock_guard"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::lock_guard"** %this.addr.i.i14, metadata !3207, metadata !3234), !dbg !3242
  %this.addr.i15 = alloca %"class.std::__1::lock_guard"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::lock_guard"** %this.addr.i15, metadata !3240, metadata !3234), !dbg !3245
  %__id.i = alloca %"class.std::__1::__thread_id", align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_id"* %__id.i, metadata !3246, metadata !3234), !dbg !3280
  %__os.addr.i = alloca %"class.std::__1::basic_ostream"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr.i, metadata !3282, metadata !3234), !dbg !3283
  %this.addr.i.i.i = alloca %"class.std::__1::__thread_id"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_id"** %this.addr.i.i.i, metadata !3284, metadata !3234), !dbg !3287
  %__id.addr.i.i.i = alloca %struct._opaque_pthread_t*, align 8
  call void @llvm.dbg.declare(metadata %struct._opaque_pthread_t** %__id.addr.i.i.i, metadata !3297, metadata !3234), !dbg !3298
  %this.addr.i.i10 = alloca %"class.std::__1::__thread_id"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_id"** %this.addr.i.i10, metadata !3299, metadata !3234), !dbg !3300
  %__id.addr.i.i = alloca %struct._opaque_pthread_t*, align 8
  call void @llvm.dbg.declare(metadata %struct._opaque_pthread_t** %__id.addr.i.i, metadata !3301, metadata !3234), !dbg !3302
  %retval.i = alloca %"class.std::__1::__thread_id", align 8
  %this.addr.i.i = alloca %"class.std::__1::lock_guard"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::lock_guard"** %this.addr.i.i, metadata !3303, metadata !3234), !dbg !3305
  %__m.addr.i.i = alloca %"class.std::__1::mutex"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::mutex"** %__m.addr.i.i, metadata !3309, metadata !3234), !dbg !3310
  %this.addr.i = alloca %"class.std::__1::lock_guard"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::lock_guard"** %this.addr.i, metadata !3311, metadata !3234), !dbg !3312
  %__m.addr.i = alloca %"class.std::__1::mutex"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::mutex"** %__m.addr.i, metadata !3313, metadata !3234), !dbg !3314
  %lock = alloca %"class.std::__1::lock_guard", align 8
  %agg.tmp = alloca %"class.std::__1::__thread_id", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @llvm.dbg.declare(metadata %"class.std::__1::lock_guard"* %lock, metadata !3315, metadata !3234), !dbg !3316
  store %"class.std::__1::lock_guard"* %lock, %"class.std::__1::lock_guard"** %this.addr.i, align 8
  store %"class.std::__1::mutex"* @g_i_mutex, %"class.std::__1::mutex"** %__m.addr.i, align 8
  %this1.i = load %"class.std::__1::lock_guard"*, %"class.std::__1::lock_guard"** %this.addr.i, align 8
  %0 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %__m.addr.i, align 8, !dbg !3317
  store %"class.std::__1::lock_guard"* %this1.i, %"class.std::__1::lock_guard"** %this.addr.i.i, align 8
  store %"class.std::__1::mutex"* %0, %"class.std::__1::mutex"** %__m.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::lock_guard"*, %"class.std::__1::lock_guard"** %this.addr.i.i, align 8
  %__m_.i.i = getelementptr inbounds %"class.std::__1::lock_guard", %"class.std::__1::lock_guard"* %this1.i.i, i32 0, i32 0, !dbg !3318
  %1 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %__m.addr.i.i, align 8, !dbg !3319
  store %"class.std::__1::mutex"* %1, %"class.std::__1::mutex"** %__m_.i.i, align 8, !dbg !3318
  %__m_2.i.i = getelementptr inbounds %"class.std::__1::lock_guard", %"class.std::__1::lock_guard"* %this1.i.i, i32 0, i32 0, !dbg !3320
  %ref.i.i = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %__m_2.i.i, align 8, !dbg !3320
  call void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"* %ref.i.i), !dbg !3322
  %2 = load i32, i32* @g_i, align 4, !dbg !3323
  %inc = add nsw i32 %2, 1, !dbg !3323
  store i32 %inc, i32* @g_i, align 4, !dbg !3323
  %call.i2.i = invoke %struct._opaque_pthread_t* @pthread_self()
          to label %_ZNSt3__111this_thread6get_idEv.exit unwind label %terminate.lpad.i, !dbg !3324

terminate.lpad.i:                                 ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3329
  %4 = extractvalue { i8*, i32 } %3, 0, !dbg !3329
  call void @__clang_call_terminate(i8* %4) #12, !dbg !3329
  unreachable, !dbg !3329

_ZNSt3__111this_thread6get_idEv.exit:             ; preds = %entry
  store %"class.std::__1::__thread_id"* %retval.i, %"class.std::__1::__thread_id"** %this.addr.i.i10, align 8
  store %struct._opaque_pthread_t* %call.i2.i, %struct._opaque_pthread_t** %__id.addr.i.i, align 8
  %this1.i.i11 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i10, align 8
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i, align 8, !dbg !3331
  store %"class.std::__1::__thread_id"* %this1.i.i11, %"class.std::__1::__thread_id"** %this.addr.i.i.i, align 8
  store %struct._opaque_pthread_t* %5, %struct._opaque_pthread_t** %__id.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i.i, align 8
  %__id_.i.i.i = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %this1.i.i.i, i32 0, i32 0, !dbg !3332
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i.i, align 8, !dbg !3333
  store %struct._opaque_pthread_t* %6, %struct._opaque_pthread_t** %__id_.i.i.i, align 8, !dbg !3332
  %coerce.dive.i = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %retval.i, i32 0, i32 0, !dbg !3334
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive.i, align 8, !dbg !3334
  %coerce.dive = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp, i32 0, i32 0, !dbg !3336
  store %struct._opaque_pthread_t* %7, %struct._opaque_pthread_t** %coerce.dive, align 8, !dbg !3336
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp, i32 0, i32 0, !dbg !3337
  %8 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive1, align 8, !dbg !3337
  %coerce.dive.i12 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %__id.i, i32 0, i32 0
  store %struct._opaque_pthread_t* %8, %struct._opaque_pthread_t** %coerce.dive.i12, align 8
  store %"class.std::__1::basic_ostream"* @_ZNSt3__14coutE, %"class.std::__1::basic_ostream"** %__os.addr.i, align 8
  %9 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr.i, align 8, !dbg !3338
  %__id_.i = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %__id.i, i32 0, i32 0, !dbg !3339
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id_.i, align 8, !dbg !3339
  %11 = bitcast %struct._opaque_pthread_t* %10 to i8*, !dbg !3340
  %call.i13 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* %9, i8* %11)
          to label %_ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE.exit unwind label %lpad, !dbg !3341

_ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE.exit: ; preds = %_ZNSt3__111this_thread6get_idEv.exit
  br label %invoke.cont, !dbg !3342

invoke.cont:                                      ; preds = %_ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE.exit
  %call4 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call.i13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont3 unwind label %lpad, !dbg !3343

invoke.cont3:                                     ; preds = %invoke.cont
  %12 = load i32, i32* @g_i, align 4, !dbg !3344
  %call6 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call4, i32 %12)
          to label %invoke.cont5 unwind label %lpad, !dbg !3346

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c(%"class.std::__1::basic_ostream"* dereferenceable(160) %call6, i8 signext 10)
          to label %invoke.cont7 unwind label %lpad, !dbg !3347

invoke.cont7:                                     ; preds = %invoke.cont5
  store %"class.std::__1::lock_guard"* %lock, %"class.std::__1::lock_guard"** %this.addr.i15, align 8
  %this1.i16 = load %"class.std::__1::lock_guard"*, %"class.std::__1::lock_guard"** %this.addr.i15, align 8
  store %"class.std::__1::lock_guard"* %this1.i16, %"class.std::__1::lock_guard"** %this.addr.i.i14, align 8
  %this1.i.i17 = load %"class.std::__1::lock_guard"*, %"class.std::__1::lock_guard"** %this.addr.i.i14, align 8
  %__m_.i.i18 = getelementptr inbounds %"class.std::__1::lock_guard", %"class.std::__1::lock_guard"* %this1.i.i17, i32 0, i32 0, !dbg !3349
  %ref.i.i19 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %__m_.i.i18, align 8, !dbg !3349
  call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* %ref.i.i19) #2, !dbg !3351
  ret void, !dbg !3352

lpad:                                             ; preds = %_ZNSt3__111this_thread6get_idEv.exit, %invoke.cont5, %invoke.cont3, %invoke.cont
  %13 = landingpad { i8*, i32 }
          cleanup, !dbg !3353
  %14 = extractvalue { i8*, i32 } %13, 0, !dbg !3353
  store i8* %14, i8** %exn.slot, align 8, !dbg !3353
  %15 = extractvalue { i8*, i32 } %13, 1, !dbg !3353
  store i32 %15, i32* %ehselector.slot, align 4, !dbg !3353
  store %"class.std::__1::lock_guard"* %lock, %"class.std::__1::lock_guard"** %this.addr.i21, align 8
  %this1.i22 = load %"class.std::__1::lock_guard"*, %"class.std::__1::lock_guard"** %this.addr.i21, align 8
  store %"class.std::__1::lock_guard"* %this1.i22, %"class.std::__1::lock_guard"** %this.addr.i.i20, align 8
  %this1.i.i23 = load %"class.std::__1::lock_guard"*, %"class.std::__1::lock_guard"** %this.addr.i.i20, align 8
  %__m_.i.i24 = getelementptr inbounds %"class.std::__1::lock_guard", %"class.std::__1::lock_guard"* %this1.i.i23, i32 0, i32 0, !dbg !3354
  %ref.i.i25 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %__m_.i.i24, align 8, !dbg !3354
  call void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"* %ref.i.i25) #2, !dbg !3355
  br label %eh.resume, !dbg !3353

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3356
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3356
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3356
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3356
  resume { i8*, i32 } %lpad.val9, !dbg !3356
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8 signext %__c) #0 !dbg !3357 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !3361, metadata !3234), !dbg !3362
  store i8 %__c, i8* %__c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !3363, metadata !3234), !dbg !3364
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3365
  %call = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %0, i8* %__c.addr, i64 1), !dbg !3366
  ret %"class.std::__1::basic_ostream"* %call, !dbg !3367
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str) #0 !dbg !3368 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !3371, metadata !3234), !dbg !3372
  store i8* %__str, i8** %__str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !3373, metadata !3234), !dbg !3374
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3375
  %1 = load i8*, i8** %__str.addr, align 8, !dbg !3376
  %2 = load i8*, i8** %__str.addr, align 8, !dbg !3377
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #2, !dbg !3378
  %call1 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %0, i8* %1, i64 %call), !dbg !3379
  ret %"class.std::__1::basic_ostream"* %call1, !dbg !3381
}

declare i32 @__gxx_personality_v0(...)

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #4

; Function Attrs: noinline norecurse ssp uwtable
define i32 @main() #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3382 {
entry:
  %t1 = alloca %"class.std::__1::thread", align 8
  %t2 = alloca %"class.std::__1::thread", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %call = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0)), !dbg !3383
  %call1 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !3384
  %0 = load i32, i32* @g_i, align 4, !dbg !3386
  %call2 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call1, i32 %0), !dbg !3387
  %call3 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c(%"class.std::__1::basic_ostream"* dereferenceable(160) %call2, i8 signext 10), !dbg !3389
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"* %t1, metadata !3391, metadata !3234), !dbg !3437
  call void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %t1, void ()* @_Z14safe_incrementv), !dbg !3437
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"* %t2, metadata !3438, metadata !3234), !dbg !3439
  invoke void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %t2, void ()* @_Z14safe_incrementv)
          to label %invoke.cont unwind label %lpad, !dbg !3439

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %t1)
          to label %invoke.cont5 unwind label %lpad4, !dbg !3440

invoke.cont5:                                     ; preds = %invoke.cont
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %t2)
          to label %invoke.cont6 unwind label %lpad4, !dbg !3441

invoke.cont6:                                     ; preds = %invoke.cont5
  %call8 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0))
          to label %invoke.cont7 unwind label %lpad4, !dbg !3442

invoke.cont7:                                     ; preds = %invoke.cont6
  %call10 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont9 unwind label %lpad4, !dbg !3443

invoke.cont9:                                     ; preds = %invoke.cont7
  %1 = load i32, i32* @g_i, align 4, !dbg !3444
  %call12 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call10, i32 %1)
          to label %invoke.cont11 unwind label %lpad4, !dbg !3445

invoke.cont11:                                    ; preds = %invoke.cont9
  %call14 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c(%"class.std::__1::basic_ostream"* dereferenceable(160) %call12, i8 signext 10)
          to label %invoke.cont13 unwind label %lpad4, !dbg !3446

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t2) #2, !dbg !3447
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t1) #2, !dbg !3448
  ret i32 0, !dbg !3447

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !3450
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !3450
  store i8* %3, i8** %exn.slot, align 8, !dbg !3450
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !3450
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !3450
  br label %ehcleanup, !dbg !3450

lpad4:                                            ; preds = %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont6, %invoke.cont5, %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !3451
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !3451
  store i8* %6, i8** %exn.slot, align 8, !dbg !3451
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !3451
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !3451
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t2) #2, !dbg !3451
  br label %ehcleanup, !dbg !3451

ehcleanup:                                        ; preds = %lpad4, %lpad
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t1) #2, !dbg !3452
  br label %eh.resume, !dbg !3452

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3453
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3453
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !3453
  %lpad.val15 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3453
  resume { i8*, i32 } %lpad.val15, !dbg !3453
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 !dbg !3455 {
entry:
  %this.addr = alloca %"class.std::__1::thread"*, align 8
  %__f.addr = alloca void ()*, align 8
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"** %this.addr, metadata !3464, metadata !3234), !dbg !3466
  store void ()* %__f, void ()** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void ()** %__f.addr, metadata !3467, metadata !3234), !dbg !3468
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  %0 = load void ()*, void ()** %__f.addr, align 8, !dbg !3469
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this1, void ()* %0), !dbg !3469
  ret void, !dbg !3470
}

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) #4

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #12
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare %struct._opaque_pthread_t* @pthread_self() #4

declare void @_ZNSt3__15mutex4lockEv(%"class.std::__1::mutex"*) #4

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(%"class.std::__1::mutex"*) #1

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) #4

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1245 {
entry:
  %this.addr.i.i.i47 = alloca %"class.std::__1::ctype"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ctype"** %this.addr.i.i.i47, metadata !3471, metadata !3234), !dbg !3562
  %__c.addr.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i.i.i, metadata !3574, metadata !3234), !dbg !3575
  %__l.addr.i.i.i = alloca %"class.std::__1::locale"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::locale"** %__l.addr.i.i.i, metadata !3576, metadata !3234), !dbg !3583
  %this.addr.i.i48 = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i.i48, metadata !3585, metadata !3234), !dbg !3587
  %__c.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i.i, metadata !3588, metadata !3234), !dbg !3589
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %exn.slot.i.i = alloca i8*
  %ehselector.slot.i.i = alloca i32
  %this.addr.i49 = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i49, metadata !3590, metadata !3234), !dbg !3591
  %this.addr.i45 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, metadata !3592, metadata !3234), !dbg !3595
  %this.addr.i43 = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i43, metadata !3598, metadata !3234), !dbg !3601
  %this.addr.i.i39 = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i.i39, metadata !3603, metadata !3234), !dbg !3606
  %__state.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__state.addr.i.i, metadata !3610, metadata !3234), !dbg !3611
  %this.addr.i40 = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i40, metadata !3612, metadata !3234), !dbg !3614
  %__state.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__state.addr.i, metadata !3615, metadata !3234), !dbg !3616
  %this.addr.i.i.i.i = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i.i.i.i, metadata !3617, metadata !3234), !dbg !3619
  %this.addr.i.i.i = alloca %"class.std::__1::basic_ios"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ios"** %this.addr.i.i.i, metadata !3627, metadata !3234), !dbg !3628
  %this.addr.i.i = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, metadata !3629, metadata !3234), !dbg !3631
  %__s.addr.i.i = alloca %"class.std::__1::basic_ostream"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr.i.i, metadata !3632, metadata !3234), !dbg !3633
  %this.addr.i37 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, metadata !3634, metadata !3234), !dbg !3635
  %__s.addr.i = alloca %"class.std::__1::basic_ostream"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__s.addr.i, metadata !3636, metadata !3234), !dbg !3637
  %this.addr.i = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, metadata !3638, metadata !3234), !dbg !3665
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream"** %__os.addr, metadata !3667, metadata !3234), !dbg !3668
  store i8* %__str, i8** %__str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__str.addr, metadata !3669, metadata !3234), !dbg !3670
  store i64 %__len, i64* %__len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__len.addr, metadata !3671, metadata !3234), !dbg !3672
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, metadata !3673, metadata !3234), !dbg !3674
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3675
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream"* dereferenceable(160) %0)
          to label %invoke.cont unwind label %lpad, !dbg !3674

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, align 8
  %__ok_.i = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this1.i, i32 0, i32 0, !dbg !3676
  %1 = load i8, i8* %__ok_.i, align 8, !dbg !3676
  %tobool.i = trunc i8 %1 to i1, !dbg !3676
  br label %invoke.cont2, !dbg !3677

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %tobool.i, label %if.then, label %if.end27, !dbg !3678

if.then:                                          ; preds = %invoke.cont2
  %2 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3680
  store %"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, align 8
  store %"class.std::__1::basic_ostream"* %2, %"class.std::__1::basic_ostream"** %__s.addr.i, align 8
  %this1.i38 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, align 8
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr.i, align 8, !dbg !3681
  store %"class.std::__1::ostreambuf_iterator"* %this1.i38, %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, align 8
  store %"class.std::__1::basic_ostream"* %3, %"class.std::__1::basic_ostream"** %__s.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, align 8
  %4 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1.i.i to %"struct.std::__1::iterator"*, !dbg !3682
  %__sbuf_.i.i = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1.i.i, i32 0, i32 0, !dbg !3683
  %5 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr.i.i, align 8, !dbg !3684
  %6 = bitcast %"class.std::__1::basic_ostream"* %5 to i8**, !dbg !3684
  %vtable.i.i = load i8*, i8** %6, align 8, !dbg !3684
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !dbg !3684
  %7 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !dbg !3684
  %vbase.offset.i.i = load i64, i64* %7, align 8, !dbg !3684
  %8 = bitcast %"class.std::__1::basic_ostream"* %5 to i8*, !dbg !3684
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i64 %vbase.offset.i.i, !dbg !3684
  %9 = bitcast i8* %add.ptr.i.i to %"class.std::__1::basic_ios"*, !dbg !3684
  store %"class.std::__1::basic_ios"* %9, %"class.std::__1::basic_ios"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i.i.i, align 8
  %10 = bitcast %"class.std::__1::basic_ios"* %this1.i.i.i to %"class.std::__1::ios_base"*, !dbg !3685
  store %"class.std::__1::ios_base"* %10, %"class.std::__1::ios_base"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i.i.i.i, align 8
  %__rdbuf_.i.i.i.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i.i.i.i, i32 0, i32 6, !dbg !3686
  %11 = load i8*, i8** %__rdbuf_.i.i.i.i, align 8, !dbg !3686
  %12 = bitcast i8* %11 to %"class.std::__1::basic_streambuf"*, !dbg !3687
  store %"class.std::__1::basic_streambuf"* %12, %"class.std::__1::basic_streambuf"** %__sbuf_.i.i, align 8, !dbg !3688
  %13 = load i8*, i8** %__str.addr, align 8, !dbg !3690
  %14 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3691
  %15 = bitcast %"class.std::__1::basic_ostream"* %14 to i8**, !dbg !3691
  %vtable = load i8*, i8** %15, align 8, !dbg !3691
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !3691
  %16 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !3691
  %vbase.offset = load i64, i64* %16, align 8, !dbg !3691
  %17 = bitcast %"class.std::__1::basic_ostream"* %14 to i8*, !dbg !3691
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %vbase.offset, !dbg !3691
  %18 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*, !dbg !3691
  store %"class.std::__1::ios_base"* %18, %"class.std::__1::ios_base"** %this.addr.i43, align 8
  %this1.i44 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i43, align 8
  %__fmtflags_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i44, i32 0, i32 1, !dbg !3692
  %19 = load i32, i32* %__fmtflags_.i, align 8, !dbg !3692
  br label %invoke.cont3, !dbg !3693

invoke.cont3:                                     ; preds = %if.then
  %and = and i32 %19, 176, !dbg !3694
  %cmp = icmp eq i32 %and, 32, !dbg !3695
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3696

cond.true:                                        ; preds = %invoke.cont3
  %20 = load i8*, i8** %__str.addr, align 8, !dbg !3697
  %21 = load i64, i64* %__len.addr, align 8, !dbg !3698
  %add.ptr5 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !3699
  br label %cond.end, !dbg !3700

cond.false:                                       ; preds = %invoke.cont3
  %22 = load i8*, i8** %__str.addr, align 8, !dbg !3702
  br label %cond.end, !dbg !3703

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr5, %cond.true ], [ %22, %cond.false ], !dbg !3705
  %23 = load i8*, i8** %__str.addr, align 8, !dbg !3707
  %24 = load i64, i64* %__len.addr, align 8, !dbg !3708
  %add.ptr6 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !3709
  %25 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3710
  %26 = bitcast %"class.std::__1::basic_ostream"* %25 to i8**, !dbg !3710
  %vtable7 = load i8*, i8** %26, align 8, !dbg !3710
  %vbase.offset.ptr8 = getelementptr i8, i8* %vtable7, i64 -24, !dbg !3710
  %27 = bitcast i8* %vbase.offset.ptr8 to i64*, !dbg !3710
  %vbase.offset9 = load i64, i64* %27, align 8, !dbg !3710
  %28 = bitcast %"class.std::__1::basic_ostream"* %25 to i8*, !dbg !3710
  %add.ptr10 = getelementptr inbounds i8, i8* %28, i64 %vbase.offset9, !dbg !3710
  %29 = bitcast i8* %add.ptr10 to %"class.std::__1::ios_base"*, !dbg !3710
  %30 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3711
  %31 = bitcast %"class.std::__1::basic_ostream"* %30 to i8**, !dbg !3711
  %vtable11 = load i8*, i8** %31, align 8, !dbg !3711
  %vbase.offset.ptr12 = getelementptr i8, i8* %vtable11, i64 -24, !dbg !3711
  %32 = bitcast i8* %vbase.offset.ptr12 to i64*, !dbg !3711
  %vbase.offset13 = load i64, i64* %32, align 8, !dbg !3711
  %33 = bitcast %"class.std::__1::basic_ostream"* %30 to i8*, !dbg !3711
  %add.ptr14 = getelementptr inbounds i8, i8* %33, i64 %vbase.offset13, !dbg !3711
  %34 = bitcast i8* %add.ptr14 to %"class.std::__1::basic_ios"*, !dbg !3711
  store %"class.std::__1::basic_ios"* %34, %"class.std::__1::basic_ios"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i49, align 8
  %call.i = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #2, !dbg !3712
  %__fill_.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2, !dbg !3713
  %35 = load i32, i32* %__fill_.i, align 8, !dbg !3713
  %call2.i = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call.i, i32 %35) #2, !dbg !3714
  br i1 %call2.i, label %if.then.i, label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit, !dbg !3716

if.then.i:                                        ; preds = %cond.end
  store %"class.std::__1::basic_ios"* %this1.i50, %"class.std::__1::basic_ios"** %this.addr.i.i48, align 8
  store i8 32, i8* %__c.addr.i.i, align 1
  %this1.i.i51 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i.i48, align 8
  %36 = bitcast %"class.std::__1::basic_ios"* %this1.i.i51 to %"class.std::__1::ios_base"*, !dbg !3717
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %36)
          to label %.noexc unwind label %lpad1, !dbg !3717

.noexc:                                           ; preds = %if.then.i
  store %"class.std::__1::locale"* %ref.tmp.i.i, %"class.std::__1::locale"** %__l.addr.i.i.i, align 8
  %37 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr.i.i.i, align 8, !dbg !3718
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %37, %"class.std::__1::locale::id"* dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i unwind label %lpad.i.i, !dbg !3719

_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i: ; preds = %.noexc
  %38 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*, !dbg !3720
  %39 = load i8, i8* %__c.addr.i.i, align 1, !dbg !3721
  store %"class.std::__1::ctype"* %38, %"class.std::__1::ctype"** %this.addr.i.i.i47, align 8
  store i8 %39, i8* %__c.addr.i.i.i, align 1
  %this1.i.i.i52 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr.i.i.i47, align 8
  %40 = bitcast %"class.std::__1::ctype"* %this1.i.i.i52 to i8 (%"class.std::__1::ctype"*, i8)***, !dbg !3722
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %40, align 8, !dbg !3722
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7, !dbg !3722
  %41 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8, !dbg !3722
  %42 = load i8, i8* %__c.addr.i.i.i, align 1, !dbg !3723
  %call.i6.i.i = invoke signext i8 %41(%"class.std::__1::ctype"* %this1.i.i.i52, i8 signext %42)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i, !dbg !3722

lpad.i.i:                                         ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i, %.noexc
  %43 = landingpad { i8*, i32 }
          cleanup
          catch i8* null, !dbg !3724
  %44 = extractvalue { i8*, i32 } %43, 0, !dbg !3724
  store i8* %44, i8** %exn.slot.i.i, align 8, !dbg !3724
  %45 = extractvalue { i8*, i32 } %43, 1, !dbg !3724
  store i32 %45, i32* %ehselector.slot.i.i, align 4, !dbg !3724
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #2, !dbg !3725
  %exn.i.i = load i8*, i8** %exn.slot.i.i, align 8, !dbg !3727
  %sel.i.i = load i32, i32* %ehselector.slot.i.i, align 4, !dbg !3727
  %lpad.val.i.i = insertvalue { i8*, i32 } undef, i8* %exn.i.i, 0, !dbg !3727
  %lpad.val4.i.i = insertvalue { i8*, i32 } %lpad.val.i.i, i32 %sel.i.i, 1, !dbg !3727
  br label %lpad1.body

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #2, !dbg !3729
  %conv.i = sext i8 %call.i6.i.i to i32, !dbg !3731
  %__fill_4.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2, !dbg !3732
  store i32 %conv.i, i32* %__fill_4.i, align 8, !dbg !3733
  br label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit, !dbg !3732

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit: ; preds = %cond.end, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
  %__fill_5.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2, !dbg !3734
  %46 = load i32, i32* %__fill_5.i, align 8, !dbg !3734
  %conv6.i = trunc i32 %46 to i8, !dbg !3734
  br label %invoke.cont15, !dbg !3735

invoke.cont15:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0, !dbg !3736
  %47 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8, !dbg !3736
  %call18 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %47, i8* %13, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %29, i8 signext %conv6.i)
          to label %invoke.cont17 unwind label %lpad1, !dbg !3736

invoke.cont17:                                    ; preds = %invoke.cont15
  %coerce.dive19 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0, !dbg !3737
  store %"class.std::__1::basic_streambuf"* %call18, %"class.std::__1::basic_streambuf"** %coerce.dive19, align 8, !dbg !3737
  store %"class.std::__1::ostreambuf_iterator"* %ref.tmp, %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, align 8
  %this1.i46 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, align 8
  %__sbuf_.i = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1.i46, i32 0, i32 0, !dbg !3738
  %48 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_.i, align 8, !dbg !3738
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %48, null, !dbg !3739
  br i1 %cmp.i, label %if.then21, label %if.end, !dbg !3740

if.then21:                                        ; preds = %invoke.cont17
  %49 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3742
  %50 = bitcast %"class.std::__1::basic_ostream"* %49 to i8**, !dbg !3742
  %vtable22 = load i8*, i8** %50, align 8, !dbg !3742
  %vbase.offset.ptr23 = getelementptr i8, i8* %vtable22, i64 -24, !dbg !3742
  %51 = bitcast i8* %vbase.offset.ptr23 to i64*, !dbg !3742
  %vbase.offset24 = load i64, i64* %51, align 8, !dbg !3742
  %52 = bitcast %"class.std::__1::basic_ostream"* %49 to i8*, !dbg !3742
  %add.ptr25 = getelementptr inbounds i8, i8* %52, i64 %vbase.offset24, !dbg !3742
  %53 = bitcast i8* %add.ptr25 to %"class.std::__1::basic_ios"*, !dbg !3742
  store %"class.std::__1::basic_ios"* %53, %"class.std::__1::basic_ios"** %this.addr.i40, align 8
  store i32 5, i32* %__state.addr.i, align 4
  %this1.i41 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i40, align 8
  %54 = bitcast %"class.std::__1::basic_ios"* %this1.i41 to %"class.std::__1::ios_base"*, !dbg !3743
  %55 = load i32, i32* %__state.addr.i, align 4, !dbg !3744
  store %"class.std::__1::ios_base"* %54, %"class.std::__1::ios_base"** %this.addr.i.i39, align 8
  store i32 %55, i32* %__state.addr.i.i, align 4
  %this1.i.i42 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i.i39, align 8
  %__rdstate_.i.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i.i42, i32 0, i32 4, !dbg !3745
  %56 = load i32, i32* %__rdstate_.i.i, align 8, !dbg !3745
  %57 = load i32, i32* %__state.addr.i.i, align 4, !dbg !3746
  %or.i.i = or i32 %56, %57, !dbg !3747
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1.i.i42, i32 %or.i.i)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit unwind label %lpad1, !dbg !3748

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit: ; preds = %if.then21
  br label %invoke.cont26, !dbg !3749

invoke.cont26:                                    ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
  br label %if.end, !dbg !3750

lpad:                                             ; preds = %entry
  %58 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3751
  %59 = extractvalue { i8*, i32 } %58, 0, !dbg !3751
  store i8* %59, i8** %exn.slot, align 8, !dbg !3751
  %60 = extractvalue { i8*, i32 } %58, 1, !dbg !3751
  store i32 %60, i32* %ehselector.slot, align 4, !dbg !3751
  br label %catch, !dbg !3751

lpad1:                                            ; preds = %if.then.i, %if.then21, %invoke.cont15
  %61 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3752
  br label %lpad1.body, !dbg !3752

lpad1.body:                                       ; preds = %lpad.i.i, %lpad1
  %eh.lpad-body = phi { i8*, i32 } [ %61, %lpad1 ], [ %lpad.val4.i.i, %lpad.i.i ]
  %62 = extractvalue { i8*, i32 } %eh.lpad-body, 0, !dbg !3752
  store i8* %62, i8** %exn.slot, align 8, !dbg !3752
  %63 = extractvalue { i8*, i32 } %eh.lpad-body, 1, !dbg !3752
  store i32 %63, i32* %ehselector.slot, align 4, !dbg !3752
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #2, !dbg !3754
  br label %catch, !dbg !3754

catch:                                            ; preds = %lpad1.body, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !3755
  %64 = call i8* @__cxa_begin_catch(i8* %exn) #2, !dbg !3755
  %65 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3756
  %66 = bitcast %"class.std::__1::basic_ostream"* %65 to i8**, !dbg !3756
  %vtable28 = load i8*, i8** %66, align 8, !dbg !3756
  %vbase.offset.ptr29 = getelementptr i8, i8* %vtable28, i64 -24, !dbg !3756
  %67 = bitcast i8* %vbase.offset.ptr29 to i64*, !dbg !3756
  %vbase.offset30 = load i64, i64* %67, align 8, !dbg !3756
  %68 = bitcast %"class.std::__1::basic_ostream"* %65 to i8*, !dbg !3756
  %add.ptr31 = getelementptr inbounds i8, i8* %68, i64 %vbase.offset30, !dbg !3756
  %69 = bitcast i8* %add.ptr31 to %"class.std::__1::ios_base"*, !dbg !3756
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %69)
          to label %invoke.cont33 unwind label %lpad32, !dbg !3758

invoke.cont33:                                    ; preds = %catch
  call void @__cxa_end_catch(), !dbg !3759
  br label %try.cont, !dbg !3759

try.cont:                                         ; preds = %invoke.cont33, %if.end27
  %70 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8, !dbg !3760
  ret %"class.std::__1::basic_ostream"* %70, !dbg !3761

if.end:                                           ; preds = %invoke.cont26, %invoke.cont17
  br label %if.end27, !dbg !3762

if.end27:                                         ; preds = %if.end, %invoke.cont2
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #2, !dbg !3763
  br label %try.cont, !dbg !3765

lpad32:                                           ; preds = %catch
  %71 = landingpad { i8*, i32 }
          cleanup, !dbg !3767
  %72 = extractvalue { i8*, i32 } %71, 0, !dbg !3767
  store i8* %72, i8** %exn.slot, align 8, !dbg !3767
  %73 = extractvalue { i8*, i32 } %71, 1, !dbg !3767
  store i32 %73, i32* %ehselector.slot, align 4, !dbg !3767
  invoke void @__cxa_end_catch()
          to label %invoke.cont34 unwind label %terminate.lpad, !dbg !3769

invoke.cont34:                                    ; preds = %lpad32
  br label %eh.resume, !dbg !3771

eh.resume:                                        ; preds = %invoke.cont34
  %exn35 = load i8*, i8** %exn.slot, align 8, !dbg !3772
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !3772
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn35, 0, !dbg !3772
  %lpad.val36 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !3772
  resume { i8*, i32 } %lpad.val36, !dbg !3772

terminate.lpad:                                   ; preds = %lpad32
  %74 = landingpad { i8*, i32 }
          catch i8* null, !dbg !3774
  %75 = extractvalue { i8*, i32 } %74, 0, !dbg !3774
  call void @__clang_call_terminate(i8* %75) #12, !dbg !3774
  unreachable, !dbg !3774
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #7 align 2 !dbg !3776 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !3777, metadata !3234), !dbg !3778
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !3779
  %call = call i64 @strlen(i8* %0) #2, !dbg !3780
  ret i64 %call, !dbg !3781
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #4

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3782 {
entry:
  %this.addr.i64 = alloca %"class.std::__1::basic_streambuf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr.i64, metadata !3786, metadata !3234), !dbg !3788
  %__s.addr.i65 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i65, metadata !3793, metadata !3234), !dbg !3794
  %__n.addr.i66 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i66, metadata !3795, metadata !3234), !dbg !3796
  %__p.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr.i.i, metadata !3797, metadata !3234), !dbg !3803
  %__x.addr.i.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__x.addr.i.i.i.i.i, metadata !3808, metadata !3234), !dbg !3812
  %__r.addr.i.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__r.addr.i.i.i.i, metadata !3837, metadata !3234), !dbg !3838
  %this.addr.i.i10.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i, metadata !3839, metadata !3234), !dbg !3842
  %this.addr.i11.i.i = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i11.i.i, metadata !3844, metadata !3234), !dbg !3846
  %this.addr.i.i4.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, metadata !3839, metadata !3234), !dbg !3847
  %this.addr.i5.i.i = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i5.i.i, metadata !3852, metadata !3234), !dbg !3853
  %this.addr.i.i.i.i56 = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i56, metadata !3839, metadata !3234), !dbg !3854
  %this.addr.i.i.i57 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i.i.i57, metadata !3858, metadata !3234), !dbg !3859
  %this.addr.i.i58 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i.i58, metadata !3860, metadata !3234), !dbg !3861
  %this.addr.i59 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i59, metadata !3862, metadata !3234), !dbg !3863
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, metadata !3864, metadata !3234), !dbg !3872
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, metadata !3880, metadata !3234), !dbg !3881
  %this.addr.i.i = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i.i, metadata !3882, metadata !3234), !dbg !3884
  %__n.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i.i, metadata !3885, metadata !3234), !dbg !3886
  %__c.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i.i, metadata !3887, metadata !3234), !dbg !3888
  %this.addr.i53 = alloca %"class.std::__1::basic_string"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"** %this.addr.i53, metadata !3889, metadata !3234), !dbg !3890
  %__n.addr.i54 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i54, metadata !3891, metadata !3234), !dbg !3892
  %__c.addr.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__c.addr.i, metadata !3893, metadata !3234), !dbg !3894
  %this.addr.i46 = alloca %"class.std::__1::basic_streambuf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr.i46, metadata !3786, metadata !3234), !dbg !3895
  %__s.addr.i47 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i47, metadata !3793, metadata !3234), !dbg !3900
  %__n.addr.i48 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i48, metadata !3795, metadata !3234), !dbg !3901
  %this.addr.i44 = alloca %"class.std::__1::basic_streambuf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_streambuf"** %this.addr.i44, metadata !3786, metadata !3234), !dbg !3902
  %__s.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__s.addr.i, metadata !3793, metadata !3234), !dbg !3907
  %__n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__n.addr.i, metadata !3795, metadata !3234), !dbg !3908
  %this.addr.i41 = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i41, metadata !3909, metadata !3234), !dbg !3911
  %__wide.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__wide.addr.i, metadata !3913, metadata !3234), !dbg !3914
  %__r.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__r.i, metadata !3915, metadata !3234), !dbg !3916
  %this.addr.i = alloca %"class.std::__1::ios_base"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %this.addr.i, metadata !3917, metadata !3234), !dbg !3919
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
  call void @llvm.dbg.declare(metadata %"class.std::__1::ostreambuf_iterator"* %__s, metadata !3921, metadata !3234), !dbg !3922
  store i8* %__ob, i8** %__ob.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__ob.addr, metadata !3923, metadata !3234), !dbg !3924
  store i8* %__op, i8** %__op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__op.addr, metadata !3925, metadata !3234), !dbg !3926
  store i8* %__oe, i8** %__oe.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__oe.addr, metadata !3927, metadata !3234), !dbg !3928
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::ios_base"** %__iob.addr, metadata !3929, metadata !3234), !dbg !3930
  store i8 %__fl, i8* %__fl.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__fl.addr, metadata !3931, metadata !3234), !dbg !3932
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !3933
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8, !dbg !3933
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null, !dbg !3935
  br i1 %cmp, label %if.then, label %if.end, !dbg !3936

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !3937
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !3937
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false), !dbg !3937
  br label %return, !dbg !3938

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__sz, metadata !3939, metadata !3234), !dbg !3940
  %3 = load i8*, i8** %__oe.addr, align 8, !dbg !3941
  %4 = load i8*, i8** %__ob.addr, align 8, !dbg !3942
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64, !dbg !3943
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64, !dbg !3943
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3943
  store i64 %sub.ptr.sub, i64* %__sz, align 8, !dbg !3940
  call void @llvm.dbg.declare(metadata i64* %__ns, metadata !3944, metadata !3234), !dbg !3945
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !3946
  store %"class.std::__1::ios_base"* %5, %"class.std::__1::ios_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i, align 8
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i, i32 0, i32 3, !dbg !3947
  %6 = load i64, i64* %__width_.i, align 8, !dbg !3947
  store i64 %6, i64* %__ns, align 8, !dbg !3945
  %7 = load i64, i64* %__ns, align 8, !dbg !3948
  %8 = load i64, i64* %__sz, align 8, !dbg !3950
  %cmp1 = icmp sgt i64 %7, %8, !dbg !3951
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3952

if.then2:                                         ; preds = %if.end
  %9 = load i64, i64* %__sz, align 8, !dbg !3953
  %10 = load i64, i64* %__ns, align 8, !dbg !3954
  %sub = sub nsw i64 %10, %9, !dbg !3954
  store i64 %sub, i64* %__ns, align 8, !dbg !3954
  br label %if.end3, !dbg !3955

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns, align 8, !dbg !3956
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  call void @llvm.dbg.declare(metadata i64* %__np, metadata !3957, metadata !3234), !dbg !3958
  %11 = load i8*, i8** %__op.addr, align 8, !dbg !3959
  %12 = load i8*, i8** %__ob.addr, align 8, !dbg !3960
  %sub.ptr.lhs.cast4 = ptrtoint i8* %11 to i64, !dbg !3961
  %sub.ptr.rhs.cast5 = ptrtoint i8* %12 to i64, !dbg !3961
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !3961
  store i64 %sub.ptr.sub6, i64* %__np, align 8, !dbg !3958
  %13 = load i64, i64* %__np, align 8, !dbg !3962
  %cmp7 = icmp sgt i64 %13, 0, !dbg !3963
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !3964

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !3965
  %14 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9, align 8, !dbg !3965
  %15 = load i8*, i8** %__ob.addr, align 8, !dbg !3966
  %16 = load i64, i64* %__np, align 8, !dbg !3967
  store %"class.std::__1::basic_streambuf"* %14, %"class.std::__1::basic_streambuf"** %this.addr.i46, align 8
  store i8* %15, i8** %__s.addr.i47, align 8
  store i64 %16, i64* %__n.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i46, align 8
  %17 = bitcast %"class.std::__1::basic_streambuf"* %this1.i49 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !3968
  %vtable.i50 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %17, align 8, !dbg !3968
  %vfn.i51 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i50, i64 12, !dbg !3968
  %18 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i51, align 8, !dbg !3968
  %19 = load i8*, i8** %__s.addr.i47, align 8, !dbg !3969
  %20 = load i64, i64* %__n.addr.i48, align 8, !dbg !3970
  %call.i52 = call i64 %18(%"class.std::__1::basic_streambuf"* %this1.i49, i8* %19, i64 %20), !dbg !3968
  %21 = load i64, i64* %__np, align 8, !dbg !3971
  %cmp11 = icmp ne i64 %call.i52, %21, !dbg !3972
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !3973

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !3974
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8, !dbg !3976
  %22 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !3977
  %23 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !3977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false), !dbg !3977
  br label %return, !dbg !3978

if.end14:                                         ; preds = %if.then8
  br label %if.end15, !dbg !3979

if.end15:                                         ; preds = %if.end14, %if.end3
  %24 = load i64, i64* %__ns, align 8, !dbg !3980
  %cmp16 = icmp sgt i64 %24, 0, !dbg !3981
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !3982

if.then17:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata %"class.std::__1::basic_string"* %__sp, metadata !3983, metadata !3234), !dbg !3984
  %25 = load i64, i64* %__ns, align 8, !dbg !3985
  %26 = load i8, i8* %__fl.addr, align 1, !dbg !3986
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %this.addr.i53, align 8
  store i64 %25, i64* %__n.addr.i54, align 8
  store i8 %26, i8* %__c.addr.i, align 1
  %this1.i55 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i53, align 8
  %27 = load i64, i64* %__n.addr.i54, align 8, !dbg !3987
  %28 = load i8, i8* %__c.addr.i, align 1, !dbg !3987
  store %"class.std::__1::basic_string"* %this1.i55, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  store i64 %27, i64* %__n.addr.i.i, align 8
  store i8 %28, i8* %__c.addr.i.i, align 1
  %this1.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  %29 = bitcast %"class.std::__1::basic_string"* %this1.i.i to %"class.std::__1::__basic_string_common"*, !dbg !3988
  %__r_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i, i32 0, i32 0, !dbg !3989
  store %"class.std::__1::__compressed_pair"* %__r_.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair"* %this1.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*, !dbg !3990
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %30), !dbg !3991
  %31 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.1"*, !dbg !3990
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %31) #2, !dbg !3992
  %32 = load i64, i64* %__n.addr.i.i, align 8, !dbg !3994
  %33 = load i8, i8* %__c.addr.i.i, align 1, !dbg !3996
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1.i.i, i64 %32, i8 signext %33), !dbg !3997
  %__sbuf_18 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !3998
  %34 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_18, align 8, !dbg !3998
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %this.addr.i59, align 8
  %this1.i60 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i59, align 8
  store %"class.std::__1::basic_string"* %this1.i60, %"class.std::__1::basic_string"** %this.addr.i.i58, align 8
  %this1.i.i61 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i58, align 8
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i.i.i57, align 8
  %this1.i.i.i62 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i.i57, align 8
  %__r_.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i.i62, i32 0, i32 0, !dbg !3999
  store %"class.std::__1::__compressed_pair"* %__r_.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i56, align 8
  %this1.i.i.i.i63 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i56, align 8
  %35 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i63 to %"struct.std::__1::__compressed_pair_elem"*, !dbg !4000
  %call.i.i.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %35) #2, !dbg !4001
  %36 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i.i.i, i32 0, i32 0, !dbg !4002
  %__s.i.i.i = bitcast %union.anon* %36 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !4002
  %37 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i32 0, i32 0, !dbg !4003
  %__size_.i.i.i = bitcast %union.anon.0* %37 to i8*, !dbg !4003
  %38 = load i8, i8* %__size_.i.i.i, align 8, !dbg !4003
  %conv.i.i.i = zext i8 %38 to i32, !dbg !3999
  %and.i.i.i = and i32 %conv.i.i.i, 1, !dbg !4004
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0, !dbg !3999
  br i1 %tobool.i.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !4005

cond.true.i.i:                                    ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %this1.i6.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %__r_.i7.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i6.i.i, i32 0, i32 0, !dbg !4006
  store %"class.std::__1::__compressed_pair"* %__r_.i7.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, align 8
  %this1.i.i8.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, align 8
  %39 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i8.i.i to %"struct.std::__1::__compressed_pair_elem"*, !dbg !4007
  %call.i.i9.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %39) #2, !dbg !4008
  %40 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i9.i.i, i32 0, i32 0, !dbg !4009
  %__l.i.i.i = bitcast %union.anon* %40 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*, !dbg !4009
  %__data_.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l.i.i.i, i32 0, i32 2, !dbg !4010
  %41 = load i8*, i8** %__data_.i.i.i, align 8, !dbg !4010
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit, !dbg !4011

cond.false.i.i:                                   ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %this1.i12.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %__r_.i13.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i12.i.i, i32 0, i32 0, !dbg !4012
  store %"class.std::__1::__compressed_pair"* %__r_.i13.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i, align 8
  %this1.i.i14.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i, align 8
  %42 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i14.i.i to %"struct.std::__1::__compressed_pair_elem"*, !dbg !4013
  %call.i.i15.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %42) #2, !dbg !4014
  %43 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i15.i.i, i32 0, i32 0, !dbg !4015
  %__s.i16.i.i = bitcast %union.anon* %43 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*, !dbg !4015
  %__data_.i17.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i16.i.i, i32 0, i32 1, !dbg !4016
  %arrayidx.i.i.i = getelementptr inbounds [23 x i8], [23 x i8]* %__data_.i17.i.i, i64 0, i64 0, !dbg !4012
  store i8* %arrayidx.i.i.i, i8** %__r.addr.i.i.i.i, align 8
  %44 = load i8*, i8** %__r.addr.i.i.i.i, align 8, !dbg !4017
  store i8* %44, i8** %__x.addr.i.i.i.i.i, align 8
  %45 = load i8*, i8** %__x.addr.i.i.i.i.i, align 8, !dbg !4018
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit, !dbg !4019

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit: ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i8* [ %41, %cond.true.i.i ], [ %45, %cond.false.i.i ], !dbg !4020
  store i8* %cond.i.i, i8** %__p.addr.i.i, align 8
  %46 = load i8*, i8** %__p.addr.i.i, align 8, !dbg !4022
  %47 = load i64, i64* %__ns, align 8, !dbg !4023
  store %"class.std::__1::basic_streambuf"* %34, %"class.std::__1::basic_streambuf"** %this.addr.i64, align 8
  store i8* %46, i8** %__s.addr.i65, align 8
  store i64 %47, i64* %__n.addr.i66, align 8
  %this1.i67 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i64, align 8
  %48 = bitcast %"class.std::__1::basic_streambuf"* %this1.i67 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4024
  %vtable.i68 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %48, align 8, !dbg !4024
  %vfn.i69 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i68, i64 12, !dbg !4024
  %49 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i69, align 8, !dbg !4024
  %50 = load i8*, i8** %__s.addr.i65, align 8, !dbg !4025
  %51 = load i64, i64* %__n.addr.i66, align 8, !dbg !4026
  %call.i7071 = invoke i64 %49(%"class.std::__1::basic_streambuf"* %this1.i67, i8* %50, i64 %51)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit unwind label %lpad, !dbg !4024

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit: ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  br label %invoke.cont, !dbg !4027

invoke.cont:                                      ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
  %52 = load i64, i64* %__ns, align 8, !dbg !4028
  %cmp21 = icmp ne i64 %call.i7071, %52, !dbg !4030
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !4031

if.then22:                                        ; preds = %invoke.cont
  %__sbuf_23 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4033
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_23, align 8, !dbg !4035
  %53 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4036
  %54 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 8, i32 8, i1 false), !dbg !4036
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4037

lpad:                                             ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  %55 = landingpad { i8*, i32 }
          cleanup, !dbg !4038
  %56 = extractvalue { i8*, i32 } %55, 0, !dbg !4038
  store i8* %56, i8** %exn.slot, align 8, !dbg !4038
  %57 = extractvalue { i8*, i32 } %55, 1, !dbg !4038
  store i32 %57, i32* %ehselector.slot, align 4, !dbg !4038
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #2, !dbg !4039
  br label %eh.resume, !dbg !4039

if.end24:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !4040
  br label %cleanup, !dbg !4040

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #2, !dbg !4042
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !4044

if.end25:                                         ; preds = %cleanup.cont, %if.end15
  %58 = load i8*, i8** %__oe.addr, align 8, !dbg !4046
  %59 = load i8*, i8** %__op.addr, align 8, !dbg !4047
  %sub.ptr.lhs.cast26 = ptrtoint i8* %58 to i64, !dbg !4048
  %sub.ptr.rhs.cast27 = ptrtoint i8* %59 to i64, !dbg !4048
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27, !dbg !4048
  store i64 %sub.ptr.sub28, i64* %__np, align 8, !dbg !4049
  %60 = load i64, i64* %__np, align 8, !dbg !4050
  %cmp29 = icmp sgt i64 %60, 0, !dbg !4051
  br i1 %cmp29, label %if.then30, label %if.end37, !dbg !4052

if.then30:                                        ; preds = %if.end25
  %__sbuf_31 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4053
  %61 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_31, align 8, !dbg !4053
  %62 = load i8*, i8** %__op.addr, align 8, !dbg !4054
  %63 = load i64, i64* %__np, align 8, !dbg !4055
  store %"class.std::__1::basic_streambuf"* %61, %"class.std::__1::basic_streambuf"** %this.addr.i44, align 8
  store i8* %62, i8** %__s.addr.i, align 8
  store i64 %63, i64* %__n.addr.i, align 8
  %this1.i45 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i44, align 8
  %64 = bitcast %"class.std::__1::basic_streambuf"* %this1.i45 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***, !dbg !4056
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %64, align 8, !dbg !4056
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12, !dbg !4056
  %65 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8, !dbg !4056
  %66 = load i8*, i8** %__s.addr.i, align 8, !dbg !4057
  %67 = load i64, i64* %__n.addr.i, align 8, !dbg !4058
  %call.i = call i64 %65(%"class.std::__1::basic_streambuf"* %this1.i45, i8* %66, i64 %67), !dbg !4056
  %68 = load i64, i64* %__np, align 8, !dbg !4059
  %cmp33 = icmp ne i64 %call.i, %68, !dbg !4060
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !4061

if.then34:                                        ; preds = %if.then30
  %__sbuf_35 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0, !dbg !4062
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_35, align 8, !dbg !4064
  %69 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4065
  %70 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 8, i1 false), !dbg !4065
  br label %return, !dbg !4066

if.end36:                                         ; preds = %if.then30
  br label %if.end37, !dbg !4067

if.end37:                                         ; preds = %if.end36, %if.end25
  %71 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8, !dbg !4068
  store %"class.std::__1::ios_base"* %71, %"class.std::__1::ios_base"** %this.addr.i41, align 8
  store i64 0, i64* %__wide.addr.i, align 8
  %this1.i42 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i41, align 8
  %__width_.i43 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i42, i32 0, i32 3, !dbg !4069
  %72 = load i64, i64* %__width_.i43, align 8, !dbg !4069
  store i64 %72, i64* %__r.i, align 8, !dbg !3916
  %73 = load i64, i64* %__wide.addr.i, align 8, !dbg !4070
  %__width_2.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i42, i32 0, i32 3, !dbg !4071
  store i64 %73, i64* %__width_2.i, align 8, !dbg !4072
  %74 = load i64, i64* %__r.i, align 8, !dbg !4073
  %75 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*, !dbg !4074
  %76 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*, !dbg !4074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 8, i32 8, i1 false), !dbg !4074
  br label %return, !dbg !4075

return:                                           ; preds = %if.end37, %if.then34, %cleanup, %if.then12, %if.then
  %coerce.dive39 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0, !dbg !4076
  %77 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive39, align 8, !dbg !4076
  ret %"class.std::__1::basic_streambuf"* %77, !dbg !4076

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4078
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4078
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4078
  %lpad.val40 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4078
  resume { i8*, i32 } %lpad.val40, !dbg !4078

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #1

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #4

declare void @__cxa_end_catch()

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #1

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #4

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %this) unnamed_addr #7 align 2 !dbg !4080 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !4081, metadata !3234), !dbg !4083
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !4084
  %0 = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_ to i8*, !dbg !4084
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false), !dbg !4084
  ret void, !dbg !4085
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %this) unnamed_addr #7 align 2 !dbg !4086 {
entry:
  %this.addr.i = alloca %"class.std::__1::allocator"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::allocator"** %this.addr.i, metadata !4087, metadata !3234), !dbg !4090
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, metadata !4092, metadata !3234), !dbg !4094
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"class.std::__1::allocator"*, !dbg !4095
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr.i, align 8
  ret void, !dbg !4095
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #7 align 2 !dbg !4096 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem"** %this.addr, metadata !4097, metadata !3234), !dbg !4099
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0, !dbg !4100
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_, !dbg !4101
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #7 align 2 !dbg !4102 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__c1.addr, metadata !4103, metadata !3234), !dbg !4104
  store i32 %__c2, i32* %__c2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %__c2.addr, metadata !4105, metadata !3234), !dbg !4106
  %0 = load i32, i32* %__c1.addr, align 4, !dbg !4107
  %1 = load i32, i32* %__c2.addr, align 4, !dbg !4108
  %cmp = icmp eq i32 %0, %1, !dbg !4109
  ret i1 %cmp, !dbg !4110
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #7 align 2 !dbg !4111 {
entry:
  ret i32 -1, !dbg !4112
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #4

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #1

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) #4

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #4

; Function Attrs: nounwind
declare i64 @strlen(i8*) #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4113 {
entry:
  %this.addr.i12.i.i.i115 = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, metadata !4114, metadata !3234), !dbg !4117
  %__ptr.addr.i.i.i.i116 = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, metadata !4129, metadata !3234), !dbg !4130
  %this.addr.i9.i.i.i117 = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i117, metadata !4131, metadata !3234), !dbg !4134
  %this.addr.i6.i.i.i118 = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i118, metadata !4136, metadata !3234), !dbg !4138
  %this.addr.i.i.i.i119 = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i119, metadata !4136, metadata !3234), !dbg !4140
  %this.addr.i.i.i120 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, metadata !4142, metadata !3234), !dbg !4144
  %__p.addr.i.i.i121 = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, metadata !4145, metadata !3234), !dbg !4146
  %__tmp.i.i.i122 = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, metadata !4147, metadata !3234), !dbg !4148
  %this.addr.i.i123 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i123, metadata !4149, metadata !3234), !dbg !4150
  %this.addr.i124 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i124, metadata !4151, metadata !3234), !dbg !4152
  %this.addr.i12.i.i.i86 = alloca %"struct.std::__1::default_delete.10"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i86, metadata !4153, metadata !3234), !dbg !4169
  %__ptr.addr.i.i.i.i87 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, metadata !4312, metadata !3234), !dbg !4313
  %this.addr.i9.i.i.i88 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i88, metadata !4314, metadata !3234), !dbg !4317
  %this.addr.i6.i.i.i89 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i89, metadata !4319, metadata !3234), !dbg !4321
  %this.addr.i.i.i.i90 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i90, metadata !4319, metadata !3234), !dbg !4323
  %this.addr.i.i.i91 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i91, metadata !4325, metadata !3234), !dbg !4327
  %__p.addr.i.i.i92 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i92, metadata !4328, metadata !3234), !dbg !4329
  %__tmp.i.i.i93 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i93, metadata !4330, metadata !3234), !dbg !4331
  %this.addr.i.i94 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i94, metadata !4332, metadata !3234), !dbg !4333
  %this.addr.i95 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i95, metadata !4334, metadata !3234), !dbg !4335
  %this.addr.i12.i.i.i59 = alloca %"struct.std::__1::default_delete.10"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i59, metadata !4153, metadata !3234), !dbg !4336
  %__ptr.addr.i.i.i.i60 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, metadata !4312, metadata !3234), !dbg !4342
  %this.addr.i9.i.i.i61 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i61, metadata !4314, metadata !3234), !dbg !4343
  %this.addr.i6.i.i.i62 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i62, metadata !4319, metadata !3234), !dbg !4345
  %this.addr.i.i.i.i63 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i63, metadata !4319, metadata !3234), !dbg !4347
  %this.addr.i.i.i64 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i64, metadata !4325, metadata !3234), !dbg !4349
  %__p.addr.i.i.i65 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i65, metadata !4328, metadata !3234), !dbg !4350
  %__tmp.i.i.i66 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i66, metadata !4330, metadata !3234), !dbg !4351
  %this.addr.i.i67 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i67, metadata !4332, metadata !3234), !dbg !4352
  %this.addr.i68 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i68, metadata !4334, metadata !3234), !dbg !4353
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i4.i, metadata !4319, metadata !3234), !dbg !4354
  %this.addr.i.i53 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i53, metadata !4319, metadata !3234), !dbg !4360
  %this.addr.i54 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i54, metadata !4362, metadata !3234), !dbg !4363
  %__t.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.i, metadata !4364, metadata !3234), !dbg !4365
  %__t.addr.i51 = alloca %struct._opaque_pthread_t**, align 8
  call void @llvm.dbg.declare(metadata %struct._opaque_pthread_t*** %__t.addr.i51, metadata !4366, metadata !3234), !dbg !4374
  %__func.addr.i = alloca i8* (i8*)*, align 8
  call void @llvm.dbg.declare(metadata i8* (i8*)** %__func.addr.i, metadata !4376, metadata !3234), !dbg !4377
  %__arg.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__arg.addr.i, metadata !4378, metadata !3234), !dbg !4379
  %this.addr.i.i47 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i47, metadata !4380, metadata !3234), !dbg !4383
  %this.addr.i48 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i48, metadata !4387, metadata !3234), !dbg !4389
  %__t.addr.i.i.i.i.i33 = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, metadata !4390, metadata !3234), !dbg !4399
  %this.addr.i.i.i.i34 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i34, metadata !4414, metadata !3234), !dbg !4415
  %__t.addr.i.i.i.i35 = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, metadata !4416, metadata !3234), !dbg !4417
  %this.addr.i.i.i36 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i36, metadata !4418, metadata !3234), !dbg !4419
  %__t.addr.i.i.i37 = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i37, metadata !4420, metadata !3234), !dbg !4421
  %this.addr.i.i38 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i38, metadata !4422, metadata !3234), !dbg !4423
  %__p.addr.i.i39 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i39, metadata !4424, metadata !3234), !dbg !4425
  %this.addr.i40 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i40, metadata !4426, metadata !3234), !dbg !4427
  %__p.addr.i41 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i41, metadata !4428, metadata !3234), !dbg !4429
  %__t.addr.i8.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i8.i.i, metadata !4430, metadata !3234), !dbg !4440
  %__t.addr.i3.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, metadata !4454, metadata !3234), !dbg !4463
  %__t.addr.i.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, metadata !4509, metadata !3234), !dbg !4517
  %this.addr.i.i10.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i10.i.i.i.i.i.i.i, metadata !4519, metadata !3234), !dbg !4520
  %__t1.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, metadata !4521, metadata !3234), !dbg !4522
  %__t2.addr.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, metadata !4523, metadata !3234), !dbg !4524
  %this.addr.i11.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i11.i.i.i.i.i.i.i, metadata !4525, metadata !3234), !dbg !4526
  %__t1.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, metadata !4527, metadata !3234), !dbg !4528
  %__t2.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, metadata !4529, metadata !3234), !dbg !4530
  %__t.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, metadata !4454, metadata !3234), !dbg !4531
  %this.addr.i.i4.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i4.i.i.i.i.i.i.i, metadata !4131, metadata !3234), !dbg !4534
  %this.addr.i5.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, metadata !4539, metadata !3234), !dbg !4540
  %this.addr.i4.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i4.i.i.i.i.i.i.i.i, metadata !4136, metadata !3234), !dbg !4541
  %this.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i.i.i.i.i.i, metadata !4136, metadata !3234), !dbg !4545
  %this.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, metadata !4547, metadata !3234), !dbg !4548
  %__t.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, metadata !4549, metadata !3234), !dbg !4550
  %this.addr.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, metadata !4551, metadata !3234), !dbg !4552
  %__u.addr.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, metadata !4553, metadata !3234), !dbg !4554
  %ref.tmp.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, metadata !4555, metadata !3234), !dbg !4556
  %__u.addr.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, metadata !4557, metadata !3234), !dbg !4558
  %__t.addr.i.i10.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, metadata !4559, metadata !3234), !dbg !4567
  %this.addr.i11.i.i.i.i = alloca %"class.std::__1::__tuple_leaf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, metadata !4569, metadata !3234), !dbg !4571
  %__t.addr.i12.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, metadata !4572, metadata !3234), !dbg !4573
  %__t.addr.i9.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i9.i.i.i.i, metadata !4430, metadata !3234), !dbg !4574
  %__t.addr.i.i.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i.i.i.i.i.i, metadata !4430, metadata !3234), !dbg !4577
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::__tuple_leaf.8"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf.8"** %this.addr.i.i.i.i.i, metadata !4586, metadata !3234), !dbg !4588
  %__t.addr.i8.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i8.i.i.i.i, metadata !4589, metadata !3234), !dbg !4590
  %__t.addr.i.i.i.i.i27 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, metadata !4559, metadata !3234), !dbg !4591
  %this.addr.i.i.i.i28 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, metadata !4593, metadata !3234), !dbg !4595
  %__u.addr.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, metadata !4596, metadata !3234), !dbg !4597
  %__u.addr5.i.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr5.i.i.i.i, metadata !4598, metadata !3234), !dbg !4597
  %this.addr.i.i.i29 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, metadata !4599, metadata !3234), !dbg !4600
  %__u.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, metadata !4601, metadata !3234), !dbg !4602
  %__u.addr5.i.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr5.i.i.i, metadata !4603, metadata !3234), !dbg !4602
  %__t.addr.i.i.i30 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, metadata !4559, metadata !3234), !dbg !4604
  %this.addr.i.i31 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr.i.i31, metadata !4606, metadata !3234), !dbg !4607
  %__u.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i.i, metadata !4608, metadata !3234), !dbg !4609
  %__u.addr2.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr2.i.i, metadata !4610, metadata !3234), !dbg !4609
  %this.addr.i32 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr.i32, metadata !4611, metadata !3234), !dbg !4612
  %__u.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__u.addr.i, metadata !4613, metadata !3234), !dbg !4614
  %__u.addr2.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__u.addr2.i, metadata !4615, metadata !3234), !dbg !4614
  %__t.addr.i.i = alloca void ()*, align 8
  call void @llvm.dbg.declare(metadata void ()** %__t.addr.i.i, metadata !4616, metadata !3234), !dbg !4625
  %__t.addr.i26 = alloca void ()*, align 8
  call void @llvm.dbg.declare(metadata void ()** %__t.addr.i26, metadata !4642, metadata !3234), !dbg !4643
  %__t.addr.i25 = alloca void ()*, align 8
  call void @llvm.dbg.declare(metadata void ()** %__t.addr.i25, metadata !4616, metadata !3234), !dbg !4644
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, metadata !4114, metadata !3234), !dbg !4646
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, metadata !4129, metadata !3234), !dbg !4652
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i, metadata !4131, metadata !3234), !dbg !4653
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i, metadata !4136, metadata !3234), !dbg !4655
  %this.addr.i.i.i.i17 = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i17, metadata !4136, metadata !3234), !dbg !4657
  %this.addr.i.i.i18 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, metadata !4142, metadata !3234), !dbg !4659
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, metadata !4145, metadata !3234), !dbg !4660
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__tmp.i.i.i, metadata !4147, metadata !3234), !dbg !4661
  %this.addr.i.i19 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i19, metadata !4149, metadata !3234), !dbg !4662
  %this.addr.i20 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i20, metadata !4151, metadata !3234), !dbg !4663
  %__t.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %__t.addr.i, metadata !4664, metadata !3234), !dbg !4673
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, metadata !4676, metadata !3234), !dbg !4685
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i, metadata !4700, metadata !3234), !dbg !4701
  %__t.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, metadata !4702, metadata !3234), !dbg !4703
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i, metadata !4704, metadata !3234), !dbg !4705
  %__t.addr.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, metadata !4706, metadata !3234), !dbg !4707
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i, metadata !4708, metadata !3234), !dbg !4709
  %__p.addr.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i, metadata !4710, metadata !3234), !dbg !4711
  %this.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i, metadata !4712, metadata !3234), !dbg !4713
  %__p.addr.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i, metadata !4714, metadata !3234), !dbg !4715
  %this.addr = alloca %"class.std::__1::thread"*, align 8
  %__f.addr = alloca void ()*, align 8
  %__tsp = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__p = alloca %"class.std::__1::unique_ptr.5", align 8
  %ref.tmp = alloca void ()*, align 8
  %__ec = alloca i32, align 4
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::thread"** %this.addr, metadata !4716, metadata !3234), !dbg !4717
  store void ()* %__f, void ()** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void ()** %__f.addr, metadata !4718, metadata !3234), !dbg !4719
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"* %__tsp, metadata !4720, metadata !3234), !dbg !4722
  %call = call i8* @_Znwm(i64 8) #13, !dbg !4723
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !4723
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* %0)
          to label %invoke.cont unwind label %lpad, !dbg !4724

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  store %"class.std::__1::__thread_struct"* %0, %"class.std::__1::__thread_struct"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i, align 8, !dbg !4725
  store %"class.std::__1::unique_ptr"* %this1.i, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  store %"class.std::__1::__thread_struct"* %1, %"class.std::__1::__thread_struct"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i, i32 0, i32 0, !dbg !4726
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %__p.addr.i.i, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i, align 8
  %2 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8, !dbg !4727
  store %"class.std::__1::__compressed_pair.2"* %this1.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %2, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4728
  %4 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8, !dbg !4729
  store %"class.std::__1::__thread_struct"** %4, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  %5 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8, !dbg !4730
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.3"* %3, %"class.std::__1::__thread_struct"** dereferenceable(8) %5) #2, !dbg !4731
  %6 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.4"*, !dbg !4728
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"* %__p, metadata !4733, metadata !3234), !dbg !4734
  %call4 = invoke i8* @_Znwm(i64 16) #13
          to label %invoke.cont3 unwind label %lpad2, !dbg !4735

invoke.cont3:                                     ; preds = %invoke.cont
  %7 = bitcast i8* %call4 to %"class.std::__1::tuple"*, !dbg !4736
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %__t.addr.i, align 8
  %8 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i, align 8, !dbg !4737
  %9 = load void ()*, void ()** %__f.addr, align 8, !dbg !4738
  store void ()* %9, void ()** %__t.addr.i25, align 8
  %10 = load void ()*, void ()** %__t.addr.i25, align 8, !dbg !4739
  store void ()* %10, void ()** %__t.addr.i26, align 8
  %11 = load void ()*, void ()** %__t.addr.i26, align 8, !dbg !4740
  store void ()* %11, void ()** %__t.addr.i.i, align 8
  %12 = load void ()*, void ()** %__t.addr.i.i, align 8, !dbg !4741
  br label %invoke.cont8, !dbg !4742

invoke.cont8:                                     ; preds = %invoke.cont3
  store void ()* %12, void ()** %ref.tmp, align 8, !dbg !4743
  store %"class.std::__1::tuple"* %7, %"class.std::__1::tuple"** %this.addr.i32, align 8
  store %"class.std::__1::unique_ptr"* %8, %"class.std::__1::unique_ptr"** %__u.addr.i, align 8
  store void ()** %ref.tmp, void ()*** %__u.addr2.i, align 8
  %this3.i = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr.i32, align 8
  %13 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i, align 8, !dbg !4744
  %14 = load void ()**, void ()*** %__u.addr2.i, align 8, !dbg !4744
  store %"class.std::__1::tuple"* %this3.i, %"class.std::__1::tuple"** %this.addr.i.i31, align 8
  store %"class.std::__1::unique_ptr"* %13, %"class.std::__1::unique_ptr"** %__u.addr.i.i, align 8
  store void ()** %14, void ()*** %__u.addr2.i.i, align 8
  %this3.i.i = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr.i.i31, align 8
  %base_.i.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %this3.i.i, i32 0, i32 0, !dbg !4745
  %15 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i, align 8, !dbg !4746
  store %"class.std::__1::unique_ptr"* %15, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, align 8
  %16 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, align 8, !dbg !4747
  %17 = load void ()**, void ()*** %__u.addr2.i.i, align 8, !dbg !4746
  store void ()** %17, void ()*** %__t.addr.i8.i.i, align 8
  %18 = load void ()**, void ()*** %__t.addr.i8.i.i, align 8, !dbg !4748
  store %"struct.std::__1::__tuple_impl"* %base_.i.i, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, align 8
  call void @llvm.dbg.declare(metadata !199, metadata !4749, metadata !3234) #2, !dbg !4750
  call void @llvm.dbg.declare(metadata !199, metadata !4751, metadata !3234) #2, !dbg !4752
  call void @llvm.dbg.declare(metadata !199, metadata !4753, metadata !3234) #2, !dbg !4754
  call void @llvm.dbg.declare(metadata !199, metadata !4755, metadata !3234) #2, !dbg !4756
  store %"class.std::__1::unique_ptr"* %16, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, align 8
  store void ()** %18, void ()*** %__u.addr5.i.i.i, align 8
  %this6.i.i.i = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, align 8
  %19 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, align 8, !dbg !4757
  %20 = load void ()**, void ()*** %__u.addr5.i.i.i, align 8, !dbg !4757
  store %"struct.std::__1::__tuple_impl"* %this6.i.i.i, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, align 8
  call void @llvm.dbg.declare(metadata !199, metadata !4758, metadata !3234) #2, !dbg !4759
  call void @llvm.dbg.declare(metadata !199, metadata !4760, metadata !3234) #2, !dbg !4761
  call void @llvm.dbg.declare(metadata !199, metadata !4762, metadata !3234) #2, !dbg !4763
  call void @llvm.dbg.declare(metadata !199, metadata !4764, metadata !3234) #2, !dbg !4765
  store %"class.std::__1::unique_ptr"* %19, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, align 8
  store void ()** %20, void ()*** %__u.addr5.i.i.i.i, align 8
  %this6.i.i.i.i = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, align 8
  %21 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to %"class.std::__1::__tuple_leaf"*, !dbg !4766
  %22 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, align 8, !dbg !4767
  store %"class.std::__1::unique_ptr"* %22, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, align 8
  %23 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, align 8, !dbg !4768
  store %"class.std::__1::__tuple_leaf"* %21, %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %23, %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, align 8
  %this1.i13.i.i.i.i = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, align 8
  %value.i14.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1.i13.i.i.i.i, i32 0, i32 0, !dbg !4769
  %24 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, align 8, !dbg !4770
  store %"class.std::__1::unique_ptr"* %24, %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, align 8
  %25 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, align 8, !dbg !4771
  store %"class.std::__1::unique_ptr"* %value.i14.i.i.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %25, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, align 8
  %26 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, align 8, !dbg !4772
  store %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %26, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, align 8
  %__ptr_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !4773
  %27 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8, !dbg !4774
  store %"class.std::__1::unique_ptr"* %27, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, align 8
  %__ptr_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !4775
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %28 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4776
  %call.i.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %28) #2, !dbg !4777
  %29 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i.i.i.i.i.i, align 8, !dbg !4778
  store %"class.std::__1::__thread_struct"* %29, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8, !dbg !4550
  %__ptr_2.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !4779
  store %"class.std::__1::__compressed_pair.2"* %__ptr_2.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %this1.i5.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i5.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4780
  %call.i6.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %30) #2, !dbg !4781
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i.i.i.i.i.i.i.i, align 8, !dbg !4782
  %31 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8, !dbg !4783
  store %"class.std::__1::__thread_struct"* %31, %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, align 8, !dbg !4774
  %32 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8, !dbg !4784
  store %"class.std::__1::unique_ptr"* %32, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %this1.i6.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %__ptr_.i7.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i6.i.i.i.i.i.i.i, i32 0, i32 0, !dbg !4785
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i7.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %this1.i.i8.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %33 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i8.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.4"*, !dbg !4786
  %call.i.i9.i.i.i.i.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %33) #2, !dbg !4787
  store %"struct.std::__1::default_delete"* %call.i.i9.i.i.i.i.i.i.i, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  %34 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8, !dbg !4788
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %34, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i12.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  %35 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8, !dbg !4789
  %36 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8, !dbg !4789
  store %"class.std::__1::__compressed_pair.2"* %this1.i12.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %35, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %36, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i13.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  %37 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4790
  %38 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8, !dbg !4791
  store %"class.std::__1::__thread_struct"** %38, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  %39 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !4792
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.3"* %37, %"class.std::__1::__thread_struct"** dereferenceable(8) %39) #2, !dbg !4793
  %40 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.4"*, !dbg !4790
  %41 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8, !dbg !4795
  store %"struct.std::__1::default_delete"* %41, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  %42 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8, !dbg !4796
  call void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.4"* %40, %"struct.std::__1::default_delete"* dereferenceable(1) %42) #2, !dbg !4797
  %43 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to i8*, !dbg !4766
  %44 = getelementptr inbounds i8, i8* %43, i64 8, !dbg !4766
  %45 = bitcast i8* %44 to %"class.std::__1::__tuple_leaf.8"*, !dbg !4766
  %46 = load void ()**, void ()*** %__u.addr5.i.i.i.i, align 8, !dbg !4767
  store void ()** %46, void ()*** %__t.addr.i9.i.i.i.i, align 8
  %47 = load void ()**, void ()*** %__t.addr.i9.i.i.i.i, align 8, !dbg !4799
  store %"class.std::__1::__tuple_leaf.8"* %45, %"class.std::__1::__tuple_leaf.8"** %this.addr.i.i.i.i.i, align 8
  store void ()** %47, void ()*** %__t.addr.i8.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::__tuple_leaf.8"*, %"class.std::__1::__tuple_leaf.8"** %this.addr.i.i.i.i.i, align 8
  %value.i.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.8", %"class.std::__1::__tuple_leaf.8"* %this1.i.i.i.i.i, i32 0, i32 0, !dbg !4800
  %48 = load void ()**, void ()*** %__t.addr.i8.i.i.i.i, align 8, !dbg !4801
  store void ()** %48, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %49 = load void ()**, void ()*** %__t.addr.i.i.i.i.i.i, align 8, !dbg !4802
  %50 = load void ()*, void ()** %49, align 8, !dbg !4803
  store void ()* %50, void ()** %value.i.i.i.i.i, align 8, !dbg !4800
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i40, align 8
  store %"class.std::__1::tuple"* %7, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  %this1.i42 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i40, align 8
  %51 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i41, align 8, !dbg !4804
  store %"class.std::__1::unique_ptr.5"* %this1.i42, %"class.std::__1::unique_ptr.5"** %this.addr.i.i38, align 8
  store %"class.std::__1::tuple"* %51, %"class.std::__1::tuple"** %__p.addr.i.i39, align 8
  %this1.i.i43 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i38, align 8
  %__ptr_.i.i44 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i43, i32 0, i32 0, !dbg !4805
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i.i44, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i36, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i39, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  %this1.i.i.i45 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i36, align 8
  %52 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8, !dbg !4806
  store %"class.std::__1::__compressed_pair.6"* %this1.i.i.i45, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i34, align 8
  store %"class.std::__1::tuple"** %52, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  %this1.i.i.i.i46 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i34, align 8
  %53 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4807
  %54 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8, !dbg !4808
  store %"class.std::__1::tuple"** %54, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  %55 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8, !dbg !4809
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.7"* %53, %"class.std::__1::tuple"** dereferenceable(8) %55) #2, !dbg !4810
  %56 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.9"*, !dbg !4807
  call void @llvm.dbg.declare(metadata i32* %__ec, metadata !4812, metadata !3234), !dbg !4813
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1, i32 0, i32 0, !dbg !4814
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i48, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i49, i32 0, i32 0, !dbg !4815
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i47, align 8
  %this1.i.i50 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i47, align 8
  %57 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i50 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4816
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %57) #2, !dbg !4817
  %58 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i, align 8, !dbg !4818
  %59 = bitcast %"class.std::__1::tuple"* %58 to i8*, !dbg !4819
  store %struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_t*** %__t.addr.i51, align 8
  store i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* (i8*)** %__func.addr.i, align 8
  store i8* %59, i8** %__arg.addr.i, align 8
  %60 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %__t.addr.i51, align 8, !dbg !4820
  %61 = load i8* (i8*)*, i8* (i8*)** %__func.addr.i, align 8, !dbg !4821
  %62 = load i8*, i8** %__arg.addr.i, align 8, !dbg !4822
  %call.i52 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %60, %struct._opaque_pthread_attr_t* null, i8* (i8*)* %61, i8* %62)
          to label %_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit unwind label %lpad11, !dbg !4823

_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit: ; preds = %invoke.cont8
  br label %invoke.cont12, !dbg !4824

invoke.cont12:                                    ; preds = %_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit
  store i32 %call.i52, i32* %__ec, align 4, !dbg !4825
  %63 = load i32, i32* %__ec, align 4, !dbg !4826
  %cmp = icmp eq i32 %63, 0, !dbg !4827
  br i1 %cmp, label %if.then, label %if.else, !dbg !4828

if.then:                                          ; preds = %invoke.cont12
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i54, align 8
  %this1.i55 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i54, align 8
  %__ptr_.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i55, i32 0, i32 0, !dbg !4829
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i56, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i53, align 8
  %this1.i.i57 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i53, align 8
  %64 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i57 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4830
  %call.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %64) #2, !dbg !4831
  %65 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i58, align 8, !dbg !4832
  store %"class.std::__1::tuple"* %65, %"class.std::__1::tuple"** %__t.i, align 8, !dbg !4365
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i55, i32 0, i32 0, !dbg !4833
  store %"class.std::__1::__compressed_pair.6"* %__ptr_2.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i4.i, align 8
  %66 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4834
  %call.i6.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %66) #2, !dbg !4835
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %call.i6.i, align 8, !dbg !4836
  %67 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.i, align 8, !dbg !4837
  br label %if.end, !dbg !4838

lpad:                                             ; preds = %entry
  %68 = landingpad { i8*, i32 }
          cleanup, !dbg !4839
  %69 = extractvalue { i8*, i32 } %68, 0, !dbg !4839
  store i8* %69, i8** %exn.slot, align 8, !dbg !4839
  %70 = extractvalue { i8*, i32 } %68, 1, !dbg !4839
  store i32 %70, i32* %ehselector.slot, align 4, !dbg !4839
  call void @_ZdlPv(i8* %call) #14, !dbg !4840
  br label %eh.resume, !dbg !4840

lpad2:                                            ; preds = %invoke.cont
  %71 = landingpad { i8*, i32 }
          cleanup, !dbg !4841
  %72 = extractvalue { i8*, i32 } %71, 0, !dbg !4841
  store i8* %72, i8** %exn.slot, align 8, !dbg !4841
  %73 = extractvalue { i8*, i32 } %71, 1, !dbg !4841
  store i32 %73, i32* %ehselector.slot, align 4, !dbg !4841
  br label %ehcleanup, !dbg !4841

lpad7:                                            ; No predecessors!
  %74 = landingpad { i8*, i32 }
          cleanup, !dbg !4842
  %75 = extractvalue { i8*, i32 } %74, 0, !dbg !4842
  store i8* %75, i8** %exn.slot, align 8, !dbg !4842
  %76 = extractvalue { i8*, i32 } %74, 1, !dbg !4842
  store i32 %76, i32* %ehselector.slot, align 4, !dbg !4842
  call void @_ZdlPv(i8* %call4) #14, !dbg !4843
  br label %ehcleanup, !dbg !4843

lpad11:                                           ; preds = %invoke.cont8, %if.else
  %77 = landingpad { i8*, i32 }
          cleanup, !dbg !4845
  %78 = extractvalue { i8*, i32 } %77, 0, !dbg !4845
  store i8* %78, i8** %exn.slot, align 8, !dbg !4845
  %79 = extractvalue { i8*, i32 } %77, 1, !dbg !4845
  store i32 %79, i32* %ehselector.slot, align 4, !dbg !4845
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i68, align 8
  %this1.i69 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i68, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i69, %"class.std::__1::unique_ptr.5"** %this.addr.i.i67, align 8
  %this1.i.i70 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i67, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i.i70, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i64, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %this1.i.i.i71 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i64, align 8
  %__ptr_.i.i.i72 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i71, i32 0, i32 0, !dbg !4846
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i.i.i72, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i63, align 8
  %this1.i.i.i.i73 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i63, align 8
  %80 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i73 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4847
  %call.i.i.i.i74 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %80) #2, !dbg !4848
  %81 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i74, align 8, !dbg !4849
  store %"class.std::__1::tuple"* %81, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8, !dbg !4351
  %82 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8, !dbg !4850
  %__ptr_2.i.i.i75 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i71, i32 0, i32 0, !dbg !4851
  store %"class.std::__1::__compressed_pair.6"* %__ptr_2.i.i.i75, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i62, align 8
  %this1.i7.i.i.i76 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i62, align 8
  %83 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i7.i.i.i76 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4852
  %call.i8.i.i.i77 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %83) #2, !dbg !4853
  store %"class.std::__1::tuple"* %82, %"class.std::__1::tuple"** %call.i8.i.i.i77, align 8, !dbg !4854
  %84 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8, !dbg !4855
  %tobool.i.i.i78 = icmp ne %"class.std::__1::tuple"* %84, null, !dbg !4855
  br i1 %tobool.i.i.i78, label %if.then.i.i.i84, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !4856

if.then.i.i.i84:                                  ; preds = %lpad11
  %__ptr_4.i.i.i79 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i71, i32 0, i32 0, !dbg !4857
  store %"class.std::__1::__compressed_pair.6"* %__ptr_4.i.i.i79, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i61, align 8
  %this1.i10.i.i.i80 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i61, align 8
  %85 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i10.i.i.i80 to %"struct.std::__1::__compressed_pair_elem.9"*, !dbg !4858
  %call.i11.i.i.i81 = call dereferenceable(1) %"struct.std::__1::default_delete.10"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %85) #2, !dbg !4859
  %86 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8, !dbg !4860
  store %"struct.std::__1::default_delete.10"* %call.i11.i.i.i81, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i59, align 8
  store %"class.std::__1::tuple"* %86, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %this1.i13.i.i.i82 = load %"struct.std::__1::default_delete.10"*, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i59, align 8
  %87 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8, !dbg !4861
  %isnull.i.i.i.i83 = icmp eq %"class.std::__1::tuple"* %87, null, !dbg !4862
  br i1 %isnull.i.i.i.i83, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i85, !dbg !4862

delete.notnull.i.i.i.i85:                         ; preds = %if.then.i.i.i84
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %87) #2, !dbg !4863
  %88 = bitcast %"class.std::__1::tuple"* %87 to i8*, !dbg !4863
  call void @_ZdlPv(i8* %88) #14, !dbg !4865
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !4863

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i85, %if.then.i.i.i84
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !4857

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad11, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %ehcleanup, !dbg !4867

if.else:                                          ; preds = %invoke.cont12
  %89 = load i32, i32* %__ec, align 4, !dbg !4868
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #15
          to label %invoke.cont15 unwind label %lpad11, !dbg !4869

invoke.cont15:                                    ; preds = %if.else
  unreachable, !dbg !4870

if.end:                                           ; preds = %if.then
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i95, align 8
  %this1.i96 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i95, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i96, %"class.std::__1::unique_ptr.5"** %this.addr.i.i94, align 8
  %this1.i.i97 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i94, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i.i97, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i91, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %this1.i.i.i98 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i91, align 8
  %__ptr_.i.i.i99 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i98, i32 0, i32 0, !dbg !4872
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i.i.i99, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i90, align 8
  %this1.i.i.i.i100 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i90, align 8
  %90 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i100 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4873
  %call.i.i.i.i101 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %90) #2, !dbg !4874
  %91 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i101, align 8, !dbg !4875
  store %"class.std::__1::tuple"* %91, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8, !dbg !4331
  %92 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8, !dbg !4876
  %__ptr_2.i.i.i102 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i98, i32 0, i32 0, !dbg !4877
  store %"class.std::__1::__compressed_pair.6"* %__ptr_2.i.i.i102, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i89, align 8
  %this1.i7.i.i.i103 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i89, align 8
  %93 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i7.i.i.i103 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !4878
  %call.i8.i.i.i104 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %93) #2, !dbg !4879
  store %"class.std::__1::tuple"* %92, %"class.std::__1::tuple"** %call.i8.i.i.i104, align 8, !dbg !4880
  %94 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8, !dbg !4881
  %tobool.i.i.i105 = icmp ne %"class.std::__1::tuple"* %94, null, !dbg !4881
  br i1 %tobool.i.i.i105, label %if.then.i.i.i111, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114, !dbg !4882

if.then.i.i.i111:                                 ; preds = %if.end
  %__ptr_4.i.i.i106 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i98, i32 0, i32 0, !dbg !4883
  store %"class.std::__1::__compressed_pair.6"* %__ptr_4.i.i.i106, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i88, align 8
  %this1.i10.i.i.i107 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i88, align 8
  %95 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i10.i.i.i107 to %"struct.std::__1::__compressed_pair_elem.9"*, !dbg !4884
  %call.i11.i.i.i108 = call dereferenceable(1) %"struct.std::__1::default_delete.10"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %95) #2, !dbg !4885
  %96 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8, !dbg !4886
  store %"struct.std::__1::default_delete.10"* %call.i11.i.i.i108, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i86, align 8
  store %"class.std::__1::tuple"* %96, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %this1.i13.i.i.i109 = load %"struct.std::__1::default_delete.10"*, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i86, align 8
  %97 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8, !dbg !4887
  %isnull.i.i.i.i110 = icmp eq %"class.std::__1::tuple"* %97, null, !dbg !4888
  br i1 %isnull.i.i.i.i110, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113, label %delete.notnull.i.i.i.i112, !dbg !4888

delete.notnull.i.i.i.i112:                        ; preds = %if.then.i.i.i111
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %97) #2, !dbg !4889
  %98 = bitcast %"class.std::__1::tuple"* %97 to i8*, !dbg !4889
  call void @_ZdlPv(i8* %98) #14, !dbg !4890
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113, !dbg !4889

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113: ; preds = %delete.notnull.i.i.i.i112, %if.then.i.i.i111
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114, !dbg !4883

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114: ; preds = %if.end, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i124, align 8
  %this1.i125 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i124, align 8
  store %"class.std::__1::unique_ptr"* %this1.i125, %"class.std::__1::unique_ptr"** %this.addr.i.i123, align 8
  %this1.i.i126 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i123, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i126, %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8
  %this1.i.i.i127 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, align 8
  %__ptr_.i.i.i128 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0, !dbg !4891
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i.i.i128, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i119, align 8
  %this1.i.i.i.i129 = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i119, align 8
  %99 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i.i.i129 to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4892
  %call.i.i.i.i130 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %99) #2, !dbg !4893
  %100 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i130, align 8, !dbg !4894
  store %"class.std::__1::__thread_struct"* %100, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8, !dbg !4148
  %101 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8, !dbg !4895
  %__ptr_2.i.i.i131 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0, !dbg !4896
  store %"class.std::__1::__compressed_pair.2"* %__ptr_2.i.i.i131, %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i118, align 8
  %this1.i7.i.i.i132 = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i118, align 8
  %102 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i7.i.i.i132 to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4897
  %call.i8.i.i.i133 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %102) #2, !dbg !4898
  store %"class.std::__1::__thread_struct"* %101, %"class.std::__1::__thread_struct"** %call.i8.i.i.i133, align 8, !dbg !4899
  %103 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8, !dbg !4900
  %tobool.i.i.i134 = icmp ne %"class.std::__1::__thread_struct"* %103, null, !dbg !4900
  br i1 %tobool.i.i.i134, label %if.then.i.i.i140, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143, !dbg !4901

if.then.i.i.i140:                                 ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114
  %__ptr_4.i.i.i135 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0, !dbg !4902
  store %"class.std::__1::__compressed_pair.2"* %__ptr_4.i.i.i135, %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i117, align 8
  %this1.i10.i.i.i136 = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i117, align 8
  %104 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i10.i.i.i136 to %"struct.std::__1::__compressed_pair_elem.4"*, !dbg !4903
  %call.i11.i.i.i137 = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %104) #2, !dbg !4904
  %105 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8, !dbg !4905
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i137, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  store %"class.std::__1::__thread_struct"* %105, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8
  %this1.i13.i.i.i138 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  %106 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8, !dbg !4906
  %isnull.i.i.i.i139 = icmp eq %"class.std::__1::__thread_struct"* %106, null, !dbg !4907
  br i1 %isnull.i.i.i.i139, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142, label %delete.notnull.i.i.i.i141, !dbg !4907

delete.notnull.i.i.i.i141:                        ; preds = %if.then.i.i.i140
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %106) #2, !dbg !4908
  %107 = bitcast %"class.std::__1::__thread_struct"* %106 to i8*, !dbg !4908
  call void @_ZdlPv(i8* %107) #14, !dbg !4910
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142, !dbg !4908

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142: ; preds = %delete.notnull.i.i.i.i141, %if.then.i.i.i140
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143, !dbg !4902

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143: ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142
  ret void, !dbg !4912

ehcleanup:                                        ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, %lpad7, %lpad2
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i20, align 8
  %this1.i21 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i20, align 8
  store %"class.std::__1::unique_ptr"* %this1.i21, %"class.std::__1::unique_ptr"** %this.addr.i.i19, align 8
  %this1.i.i22 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i19, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i22, %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %this1.i.i.i23 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0, !dbg !4913
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i17, align 8
  %this1.i.i.i.i24 = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i17, align 8
  %108 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i.i.i24 to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4914
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %108) #2, !dbg !4915
  %109 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8, !dbg !4916
  store %"class.std::__1::__thread_struct"* %109, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !4661
  %110 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8, !dbg !4917
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0, !dbg !4918
  store %"class.std::__1::__compressed_pair.2"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i, align 8
  %111 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !4919
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %111) #2, !dbg !4920
  store %"class.std::__1::__thread_struct"* %110, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8, !dbg !4921
  %112 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !4922
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %112, null, !dbg !4922
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !4923

if.then.i.i.i:                                    ; preds = %ehcleanup
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0, !dbg !4924
  store %"class.std::__1::__compressed_pair.2"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i, align 8
  %113 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.4"*, !dbg !4925
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %113) #2, !dbg !4926
  %114 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !4927
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %114, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %115 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8, !dbg !4928
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %115, null, !dbg !4929
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i, !dbg !4929

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %115) #2, !dbg !4930
  %116 = bitcast %"class.std::__1::__thread_struct"* %115 to i8*, !dbg !4930
  call void @_ZdlPv(i8* %116) #14, !dbg !4931
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !4930

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !4924

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %ehcleanup, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  br label %eh.resume, !dbg !4932

eh.resume:                                        ; preds = %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !4933
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !4933
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !4933
  %lpad.val16 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !4933
  resume { i8*, i32 } %lpad.val16, !dbg !4933
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #9

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #10

; Function Attrs: noinline ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !4934 {
entry:
  %this.addr.i12.i.i.i40 = alloca %"struct.std::__1::default_delete.10"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i40, metadata !4153, metadata !3234), !dbg !4937
  %__ptr.addr.i.i.i.i41 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, metadata !4312, metadata !3234), !dbg !4942
  %this.addr.i9.i.i.i42 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i42, metadata !4314, metadata !3234), !dbg !4943
  %this.addr.i6.i.i.i43 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i43, metadata !4319, metadata !3234), !dbg !4945
  %this.addr.i.i.i.i44 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i44, metadata !4319, metadata !3234), !dbg !4947
  %this.addr.i.i.i45 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i45, metadata !4325, metadata !3234), !dbg !4949
  %__p.addr.i.i.i46 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i46, metadata !4328, metadata !3234), !dbg !4950
  %__tmp.i.i.i47 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i47, metadata !4330, metadata !3234), !dbg !4951
  %this.addr.i.i48 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i48, metadata !4332, metadata !3234), !dbg !4952
  %this.addr.i49 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i49, metadata !4334, metadata !3234), !dbg !4953
  %__t.addr.i2.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i2.i, metadata !4954, metadata !3234), !dbg !4963
  %__t.addr.i.i.i36 = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__t.addr.i.i.i36, metadata !4430, metadata !3234), !dbg !4975
  %__f.addr.i.i = alloca void ()**, align 8
  call void @llvm.dbg.declare(metadata void ()*** %__f.addr.i.i, metadata !4983, metadata !3234), !dbg !4984
  %this.addr.i.i.i37 = alloca %"class.std::__1::__tuple_leaf.8"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf.8"** %this.addr.i.i.i37, metadata !4985, metadata !3234), !dbg !4987
  %__t.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.addr.i.i, metadata !5002, metadata !3234), !dbg !5003
  %__t.addr.i38 = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.addr.i38, metadata !5004, metadata !3234), !dbg !5005
  %this.addr.i.i30 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i30, metadata !4380, metadata !3234), !dbg !5006
  %this.addr.i31 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i31, metadata !5010, metadata !3234), !dbg !5011
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i4.i, metadata !4136, metadata !3234), !dbg !5012
  %this.addr.i.i24 = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i24, metadata !4136, metadata !3234), !dbg !5016
  %this.addr.i25 = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i25, metadata !4547, metadata !3234), !dbg !5018
  %__t.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__t.i, metadata !4549, metadata !3234), !dbg !5019
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete.10"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i, metadata !4153, metadata !3234), !dbg !5020
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, metadata !4312, metadata !3234), !dbg !5025
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i, metadata !4314, metadata !3234), !dbg !5026
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i, metadata !4319, metadata !3234), !dbg !5028
  %this.addr.i.i.i.i16 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i16, metadata !4319, metadata !3234), !dbg !5030
  %this.addr.i.i.i17 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i17, metadata !4325, metadata !3234), !dbg !5032
  %__p.addr.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i.i, metadata !4328, metadata !3234), !dbg !5033
  %__tmp.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__tmp.i.i.i, metadata !4330, metadata !3234), !dbg !5034
  %this.addr.i.i18 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i18, metadata !4332, metadata !3234), !dbg !5035
  %this.addr.i19 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i19, metadata !4334, metadata !3234), !dbg !5036
  %this.addr.i.i14 = alloca %"class.std::__1::__tuple_leaf"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, metadata !5037, metadata !3234), !dbg !5039
  %__t.addr.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__t.addr.i, metadata !5054, metadata !3234), !dbg !5055
  %this.addr.i.i10 = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i10, metadata !4380, metadata !3234), !dbg !5056
  %this.addr.i11 = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i11, metadata !5010, metadata !3234), !dbg !5059
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, metadata !4390, metadata !3234), !dbg !5060
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i, metadata !4414, metadata !3234), !dbg !5066
  %__t.addr.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, metadata !4416, metadata !3234), !dbg !5067
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.6"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i, metadata !4418, metadata !3234), !dbg !5068
  %__t.addr.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i.i.i, metadata !4420, metadata !3234), !dbg !5069
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i.i, metadata !4422, metadata !3234), !dbg !5070
  %__p.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i.i, metadata !4424, metadata !3234), !dbg !5071
  %this.addr.i = alloca %"class.std::__1::unique_ptr.5"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"** %this.addr.i, metadata !4426, metadata !3234), !dbg !5072
  %__p.addr.i = alloca %"class.std::__1::tuple"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %__p.addr.i, metadata !4428, metadata !3234), !dbg !5073
  %__vp.addr = alloca i8*, align 8
  %__p = alloca %"class.std::__1::unique_ptr.5", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices.12", align 1
  store i8* %__vp, i8** %__vp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__vp.addr, metadata !5074, metadata !3234), !dbg !5075
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr.5"* %__p, metadata !5076, metadata !3234), !dbg !5077
  %0 = load i8*, i8** %__vp.addr, align 8, !dbg !5078
  %1 = bitcast i8* %0 to %"class.std::__1::tuple"*, !dbg !5079
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i, align 8
  store %"class.std::__1::tuple"* %1, %"class.std::__1::tuple"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i, align 8
  %2 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i, align 8, !dbg !5080
  store %"class.std::__1::unique_ptr.5"* %this1.i, %"class.std::__1::unique_ptr.5"** %this.addr.i.i, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i, i32 0, i32 0, !dbg !5081
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i, align 8
  %3 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8, !dbg !5082
  store %"class.std::__1::__compressed_pair.6"* %this1.i.i.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %3, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !5083
  %5 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8, !dbg !5084
  store %"class.std::__1::tuple"** %5, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  %6 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8, !dbg !5085
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.7"* %4, %"class.std::__1::tuple"** dereferenceable(8) %6) #2, !dbg !5086
  %7 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.9"*, !dbg !5083
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !5087

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i11, align 8
  %this1.i12 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i11, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i12, i32 0, i32 0, !dbg !5088
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i10, align 8
  %this1.i.i13 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i10, align 8
  %8 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i13 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !5089
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %8) #2, !dbg !5090
  %9 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i, align 8, !dbg !5091
  br label %invoke.cont1, !dbg !5092

invoke.cont1:                                     ; preds = %invoke.cont
  store %"class.std::__1::tuple"* %9, %"class.std::__1::tuple"** %__t.addr.i, align 8
  %10 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i, align 8, !dbg !5093
  %base_.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %10, i32 0, i32 0, !dbg !5094
  %11 = bitcast %"struct.std::__1::__tuple_impl"* %base_.i to %"class.std::__1::__tuple_leaf"*, !dbg !5093
  store %"class.std::__1::__tuple_leaf"* %11, %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, align 8
  %this1.i.i15 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, align 8
  %value.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1.i.i15, i32 0, i32 0, !dbg !5095
  store %"class.std::__1::unique_ptr"* %value.i.i, %"class.std::__1::unique_ptr"** %this.addr.i25, align 8
  %this1.i26 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i25, align 8
  %__ptr_.i27 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0, !dbg !5096
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i27, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i24, align 8
  %this1.i.i28 = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i24, align 8
  %12 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i28 to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !5097
  %call.i.i29 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %12) #2, !dbg !5098
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i29, align 8, !dbg !5099
  store %"class.std::__1::__thread_struct"* %13, %"class.std::__1::__thread_struct"** %__t.i, align 8, !dbg !5019
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0, !dbg !5100
  store %"class.std::__1::__compressed_pair.2"* %__ptr_2.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i4.i, align 8
  %14 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !5101
  %call.i6.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %14) #2, !dbg !5102
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i, align 8, !dbg !5103
  %15 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i, align 8, !dbg !5104
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %call, %"class.std::__1::__thread_struct"* %15)
          to label %invoke.cont5 unwind label %lpad, !dbg !5105

invoke.cont5:                                     ; preds = %invoke.cont1
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i31, align 8
  %this1.i32 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i31, align 8
  %__ptr_.i33 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i32, i32 0, i32 0, !dbg !5106
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i33, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i30, align 8
  %this1.i.i34 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i30, align 8
  %16 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i34 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !5107
  %call.i.i35 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %16) #2, !dbg !5108
  %17 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i35, align 8, !dbg !5109
  br label %invoke.cont6, !dbg !5110

invoke.cont6:                                     ; preds = %invoke.cont5
  store %"class.std::__1::tuple"* %17, %"class.std::__1::tuple"** %__t.addr.i38, align 8
  call void @llvm.dbg.declare(metadata !199, metadata !5111, metadata !3234), !dbg !5112
  %18 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i38, align 8, !dbg !5113
  store %"class.std::__1::tuple"* %18, %"class.std::__1::tuple"** %__t.addr.i.i, align 8
  %19 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i.i, align 8, !dbg !5114
  %base_.i.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %19, i32 0, i32 0, !dbg !5115
  %20 = bitcast %"struct.std::__1::__tuple_impl"* %base_.i.i to i8*, !dbg !5114
  %add.ptr.i.i = getelementptr inbounds i8, i8* %20, i64 8, !dbg !5114
  %21 = bitcast i8* %add.ptr.i.i to %"class.std::__1::__tuple_leaf.8"*, !dbg !5114
  store %"class.std::__1::__tuple_leaf.8"* %21, %"class.std::__1::__tuple_leaf.8"** %this.addr.i.i.i37, align 8
  %this1.i.i.i39 = load %"class.std::__1::__tuple_leaf.8"*, %"class.std::__1::__tuple_leaf.8"** %this.addr.i.i.i37, align 8
  %value.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.8", %"class.std::__1::__tuple_leaf.8"* %this1.i.i.i39, i32 0, i32 0, !dbg !5116
  store void ()** %value.i.i.i, void ()*** %__t.addr.i2.i, align 8
  %22 = load void ()**, void ()*** %__t.addr.i2.i, align 8, !dbg !5117
  store void ()** %22, void ()*** %__f.addr.i.i, align 8
  %23 = load void ()**, void ()*** %__f.addr.i.i, align 8, !dbg !5118
  store void ()** %23, void ()*** %__t.addr.i.i.i36, align 8
  %24 = load void ()**, void ()*** %__t.addr.i.i.i36, align 8, !dbg !5119
  %25 = load void ()*, void ()** %24, align 8, !dbg !5118
  invoke void %25()
          to label %_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit unwind label %lpad, !dbg !5120

_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit: ; preds = %invoke.cont6
  br label %invoke.cont8, !dbg !5122

invoke.cont8:                                     ; preds = %_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i49, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i50, %"class.std::__1::unique_ptr.5"** %this.addr.i.i48, align 8
  %this1.i.i51 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i48, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i.i51, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i45, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %this1.i.i.i52 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i45, align 8
  %__ptr_.i.i.i53 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i52, i32 0, i32 0, !dbg !5123
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i.i.i53, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i44, align 8
  %this1.i.i.i.i54 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i44, align 8
  %26 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i54 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !5124
  %call.i.i.i.i55 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %26) #2, !dbg !5125
  %27 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i55, align 8, !dbg !5126
  store %"class.std::__1::tuple"* %27, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8, !dbg !4951
  %28 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8, !dbg !5127
  %__ptr_2.i.i.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i52, i32 0, i32 0, !dbg !5128
  store %"class.std::__1::__compressed_pair.6"* %__ptr_2.i.i.i56, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i43, align 8
  %this1.i7.i.i.i57 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i43, align 8
  %29 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i7.i.i.i57 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !5129
  %call.i8.i.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %29) #2, !dbg !5130
  store %"class.std::__1::tuple"* %28, %"class.std::__1::tuple"** %call.i8.i.i.i58, align 8, !dbg !5131
  %30 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8, !dbg !5132
  %tobool.i.i.i59 = icmp ne %"class.std::__1::tuple"* %30, null, !dbg !5132
  br i1 %tobool.i.i.i59, label %if.then.i.i.i65, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68, !dbg !5133

if.then.i.i.i65:                                  ; preds = %invoke.cont8
  %__ptr_4.i.i.i60 = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i52, i32 0, i32 0, !dbg !5134
  store %"class.std::__1::__compressed_pair.6"* %__ptr_4.i.i.i60, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i42, align 8
  %this1.i10.i.i.i61 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i42, align 8
  %31 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i10.i.i.i61 to %"struct.std::__1::__compressed_pair_elem.9"*, !dbg !5135
  %call.i11.i.i.i62 = call dereferenceable(1) %"struct.std::__1::default_delete.10"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %31) #2, !dbg !5136
  %32 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8, !dbg !5137
  store %"struct.std::__1::default_delete.10"* %call.i11.i.i.i62, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i40, align 8
  store %"class.std::__1::tuple"* %32, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %this1.i13.i.i.i63 = load %"struct.std::__1::default_delete.10"*, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i40, align 8
  %33 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8, !dbg !5138
  %isnull.i.i.i.i64 = icmp eq %"class.std::__1::tuple"* %33, null, !dbg !5139
  br i1 %isnull.i.i.i.i64, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67, label %delete.notnull.i.i.i.i66, !dbg !5139

delete.notnull.i.i.i.i66:                         ; preds = %if.then.i.i.i65
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %33) #2, !dbg !5140
  %34 = bitcast %"class.std::__1::tuple"* %33 to i8*, !dbg !5140
  call void @_ZdlPv(i8* %34) #14, !dbg !5141
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67, !dbg !5140

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67: ; preds = %delete.notnull.i.i.i.i66, %if.then.i.i.i65
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68, !dbg !5134

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68: ; preds = %invoke.cont8, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67
  ret i8* null, !dbg !5142

lpad:                                             ; preds = %invoke.cont6, %invoke.cont1, %entry
  %35 = landingpad { i8*, i32 }
          cleanup, !dbg !5143
  %36 = extractvalue { i8*, i32 } %35, 0, !dbg !5143
  store i8* %36, i8** %exn.slot, align 8, !dbg !5143
  %37 = extractvalue { i8*, i32 } %35, 1, !dbg !5143
  store i32 %37, i32* %ehselector.slot, align 4, !dbg !5143
  store %"class.std::__1::unique_ptr.5"* %__p, %"class.std::__1::unique_ptr.5"** %this.addr.i19, align 8
  %this1.i20 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i19, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i20, %"class.std::__1::unique_ptr.5"** %this.addr.i.i18, align 8
  %this1.i.i21 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i18, align 8
  store %"class.std::__1::unique_ptr.5"* %this1.i.i21, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i17, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %this1.i.i.i22 = load %"class.std::__1::unique_ptr.5"*, %"class.std::__1::unique_ptr.5"** %this.addr.i.i.i17, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i22, i32 0, i32 0, !dbg !5144
  store %"class.std::__1::__compressed_pair.6"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i16, align 8
  %this1.i.i.i.i23 = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i.i.i.i16, align 8
  %38 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i.i.i.i23 to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !5145
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %38) #2, !dbg !5146
  %39 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i, align 8, !dbg !5147
  store %"class.std::__1::tuple"* %39, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8, !dbg !5034
  %40 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8, !dbg !5148
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i22, i32 0, i32 0, !dbg !5149
  store %"class.std::__1::__compressed_pair.6"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i6.i.i.i, align 8
  %41 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.7"*, !dbg !5150
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %41) #2, !dbg !5151
  store %"class.std::__1::tuple"* %40, %"class.std::__1::tuple"** %call.i8.i.i.i, align 8, !dbg !5152
  %42 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8, !dbg !5153
  %tobool.i.i.i = icmp ne %"class.std::__1::tuple"* %42, null, !dbg !5153
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !5154

if.then.i.i.i:                                    ; preds = %lpad
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.5", %"class.std::__1::unique_ptr.5"* %this1.i.i.i22, i32 0, i32 0, !dbg !5155
  store %"class.std::__1::__compressed_pair.6"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.6"*, %"class.std::__1::__compressed_pair.6"** %this.addr.i9.i.i.i, align 8
  %43 = bitcast %"class.std::__1::__compressed_pair.6"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.9"*, !dbg !5156
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete.10"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %43) #2, !dbg !5157
  %44 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8, !dbg !5158
  store %"struct.std::__1::default_delete.10"* %call.i11.i.i.i, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::tuple"* %44, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete.10"*, %"struct.std::__1::default_delete.10"** %this.addr.i12.i.i.i, align 8
  %45 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8, !dbg !5159
  %isnull.i.i.i.i = icmp eq %"class.std::__1::tuple"* %45, null, !dbg !5160
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i, !dbg !5160

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %45) #2, !dbg !5161
  %46 = bitcast %"class.std::__1::tuple"* %45 to i8*, !dbg !5161
  call void @_ZdlPv(i8* %46) #14, !dbg !5162
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !5161

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !5155

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %eh.resume, !dbg !5143

eh.resume:                                        ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !5163
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !5163
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !5163
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !5163
  resume { i8*, i32 } %lpad.val9, !dbg !5163
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) #11

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.3"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #7 align 2 !dbg !5164 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i, metadata !4676, metadata !3234), !dbg !5170
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.3"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.3"* %this, %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, metadata !5172, metadata !3234), !dbg !5174
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__u.addr, metadata !5175, metadata !3234), !dbg !5176
  %this1 = load %"struct.std::__1::__compressed_pair_elem.3"*, %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.3", %"struct.std::__1::__compressed_pair_elem.3"* %this1, i32 0, i32 0, !dbg !5177
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8, !dbg !5178
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8, !dbg !5179
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8, !dbg !5180
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8, !dbg !5177
  ret void, !dbg !5181
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %this) #7 align 2 !dbg !5182 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.3"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.3"* %this, %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, metadata !5183, metadata !3234), !dbg !5184
  %this1 = load %"struct.std::__1::__compressed_pair_elem.3"*, %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.3", %"struct.std::__1::__compressed_pair_elem.3"* %this1, i32 0, i32 0, !dbg !5185
  ret %"class.std::__1::__thread_struct"** %__value_, !dbg !5186
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %this) #7 align 2 !dbg !5187 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.4"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.4"* %this, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, metadata !5188, metadata !3234), !dbg !5190
  %this1 = load %"struct.std::__1::__compressed_pair_elem.4"*, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.4"* %this1 to %"struct.std::__1::default_delete"*, !dbg !5191
  ret %"struct.std::__1::default_delete"* %0, !dbg !5192
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.3"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #7 align 2 !dbg !5193 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__t.addr.i, metadata !4509, metadata !3234), !dbg !5199
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.3"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.3"* %this, %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, metadata !5201, metadata !3234), !dbg !5202
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"*** %__u.addr, metadata !5203, metadata !3234), !dbg !5204
  %this1 = load %"struct.std::__1::__compressed_pair_elem.3"*, %"struct.std::__1::__compressed_pair_elem.3"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.3", %"struct.std::__1::__compressed_pair_elem.3"* %this1, i32 0, i32 0, !dbg !5205
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8, !dbg !5206
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8, !dbg !5207
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8, !dbg !5208
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8, !dbg !5205
  ret void, !dbg !5209
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.4"* %this, %"struct.std::__1::default_delete"* dereferenceable(1) %__u) unnamed_addr #7 align 2 !dbg !5210 {
entry:
  %__t.addr.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__t.addr.i, metadata !4454, metadata !3234), !dbg !5216
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.4"*, align 8
  %__u.addr = alloca %"struct.std::__1::default_delete"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.4"* %this, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, metadata !5218, metadata !3234), !dbg !5219
  store %"struct.std::__1::default_delete"* %__u, %"struct.std::__1::default_delete"** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %__u.addr, metadata !5220, metadata !3234), !dbg !5221
  %this1 = load %"struct.std::__1::__compressed_pair_elem.4"*, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.4"* %this1 to %"struct.std::__1::default_delete"*, !dbg !5222
  %1 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__u.addr, align 8, !dbg !5223
  store %"struct.std::__1::default_delete"* %1, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  %2 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i, align 8, !dbg !5224
  ret void, !dbg !5225
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.7"* %this, %"class.std::__1::tuple"** dereferenceable(8) %__u) unnamed_addr #7 align 2 !dbg !5226 {
entry:
  %__t.addr.i = alloca %"class.std::__1::tuple"**, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__t.addr.i, metadata !4390, metadata !3234), !dbg !5232
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.7"*, align 8
  %__u.addr = alloca %"class.std::__1::tuple"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.7"* %this, %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, metadata !5234, metadata !3234), !dbg !5236
  store %"class.std::__1::tuple"** %__u, %"class.std::__1::tuple"*** %__u.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"*** %__u.addr, metadata !5237, metadata !3234), !dbg !5238
  %this1 = load %"struct.std::__1::__compressed_pair_elem.7"*, %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.7", %"struct.std::__1::__compressed_pair_elem.7"* %this1, i32 0, i32 0, !dbg !5239
  %0 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__u.addr, align 8, !dbg !5240
  store %"class.std::__1::tuple"** %0, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i, align 8, !dbg !5241
  %2 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %1, align 8, !dbg !5242
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__value_, align 8, !dbg !5239
  ret void, !dbg !5243
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) #4

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() #4

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_struct"* %__p) #0 align 2 !dbg !5244 {
entry:
  %__key.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__key.addr.i, metadata !5277, metadata !3234), !dbg !5281
  %__p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__p.addr.i, metadata !5283, metadata !3234), !dbg !5284
  %this.addr = alloca %"class.std::__1::__thread_specific_ptr"*, align 8
  %__p.addr = alloca %"class.std::__1::__thread_struct"*, align 8
  store %"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_specific_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_specific_ptr"** %this.addr, metadata !5285, metadata !3234), !dbg !5287
  store %"class.std::__1::__thread_struct"* %__p, %"class.std::__1::__thread_struct"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr, metadata !5288, metadata !3234), !dbg !5289
  %this1 = load %"class.std::__1::__thread_specific_ptr"*, %"class.std::__1::__thread_specific_ptr"** %this.addr, align 8
  %__key_ = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %this1, i32 0, i32 0, !dbg !5290
  %0 = load i64, i64* %__key_, align 8, !dbg !5290
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr, align 8, !dbg !5291
  %2 = bitcast %"class.std::__1::__thread_struct"* %1 to i8*, !dbg !5291
  store i64 %0, i64* %__key.addr.i, align 8
  store i8* %2, i8** %__p.addr.i, align 8
  %3 = load i64, i64* %__key.addr.i, align 8, !dbg !5292
  %4 = load i8*, i8** %__p.addr.i, align 8, !dbg !5293
  %call.i = call i32 @pthread_setspecific(i64 %3, i8* %4), !dbg !5294
  ret void, !dbg !5295
}

declare i32 @pthread_setspecific(i64, i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %this) #7 align 2 !dbg !5296 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.7"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.7"* %this, %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, metadata !5297, metadata !3234), !dbg !5299
  %this1 = load %"struct.std::__1::__compressed_pair_elem.7"*, %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.7", %"struct.std::__1::__compressed_pair_elem.7"* %this1, i32 0, i32 0, !dbg !5300
  ret %"class.std::__1::tuple"** %__value_, !dbg !5301
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.7"* %this) #7 align 2 !dbg !5302 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.7"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.7"* %this, %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, metadata !5303, metadata !3234), !dbg !5304
  %this1 = load %"struct.std::__1::__compressed_pair_elem.7"*, %"struct.std::__1::__compressed_pair_elem.7"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.7", %"struct.std::__1::__compressed_pair_elem.7"* %this1, i32 0, i32 0, !dbg !5305
  ret %"class.std::__1::tuple"** %__value_, !dbg !5306
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete.10"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %this) #7 align 2 !dbg !5307 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.9"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.9"* %this, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, metadata !5308, metadata !3234), !dbg !5310
  %this1 = load %"struct.std::__1::__compressed_pair_elem.9"*, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.9"* %this1 to %"struct.std::__1::default_delete.10"*, !dbg !5311
  ret %"struct.std::__1::default_delete.10"* %0, !dbg !5312
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %this) unnamed_addr #7 align 2 !dbg !5313 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr, metadata !5317, metadata !3234), !dbg !5318
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this1) #2, !dbg !5319
  ret void, !dbg !5319
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this) unnamed_addr #7 align 2 !dbg !5320 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::tuple"** %this.addr, metadata !5321, metadata !3234), !dbg !5322
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  %base_ = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %this1, i32 0, i32 0, !dbg !5323
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %base_) #2, !dbg !5323
  ret void, !dbg !5325
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #7 align 2 !dbg !5326 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr, metadata !5328, metadata !3234), !dbg !5329
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this1) #2, !dbg !5330
  ret void, !dbg !5330
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #7 align 2 !dbg !5331 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__tuple_impl"** %this.addr, metadata !5332, metadata !3234), !dbg !5333
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__tuple_impl"* %this1 to %"class.std::__1::__tuple_leaf"*, !dbg !5334
  call void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %0) #2, !dbg !5334
  ret void, !dbg !5336
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %this) unnamed_addr #7 align 2 !dbg !5337 {
entry:
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, metadata !4114, metadata !3234), !dbg !5339
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, metadata !4129, metadata !3234), !dbg !5345
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i, metadata !4131, metadata !3234), !dbg !5346
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i, metadata !4136, metadata !3234), !dbg !5348
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.2"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i, metadata !4136, metadata !3234), !dbg !5350
  %this.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i.i, metadata !4142, metadata !3234), !dbg !5352
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, metadata !4145, metadata !3234), !dbg !5353
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__thread_struct"** %__tmp.i.i.i, metadata !4147, metadata !3234), !dbg !5354
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i.i, metadata !4149, metadata !3234), !dbg !5355
  %this.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::unique_ptr"** %this.addr.i, metadata !4151, metadata !3234), !dbg !5356
  %this.addr = alloca %"class.std::__1::__tuple_leaf"*, align 8
  store %"class.std::__1::__tuple_leaf"* %this, %"class.std::__1::__tuple_leaf"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__1::__tuple_leaf"** %this.addr, metadata !5357, metadata !3234), !dbg !5358
  %this1 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr, align 8
  %value = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1, i32 0, i32 0, !dbg !5359
  store %"class.std::__1::unique_ptr"* %value, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0, !dbg !5360
  store %"class.std::__1::__compressed_pair.2"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i.i.i.i, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !5361
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %0) #2, !dbg !5362
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8, !dbg !5363
  store %"class.std::__1::__thread_struct"* %1, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !5354
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8, !dbg !5364
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0, !dbg !5365
  store %"class.std::__1::__compressed_pair.2"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i6.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.3"*, !dbg !5366
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* %3) #2, !dbg !5367
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8, !dbg !5368
  %4 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !5369
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %4, null, !dbg !5369
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !5370

if.then.i.i.i:                                    ; preds = %entry
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0, !dbg !5371
  store %"class.std::__1::__compressed_pair.2"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.2"*, %"class.std::__1::__compressed_pair.2"** %this.addr.i9.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair.2"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.4"*, !dbg !5372
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %5) #2, !dbg !5373
  %6 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8, !dbg !5374
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %6, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8, !dbg !5375
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !5376
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i, !dbg !5376

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %7) #2, !dbg !5377
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !5377
  call void @_ZdlPv(i8* %8) #14, !dbg !5378
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !5377

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, !dbg !5371

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %entry, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  ret void, !dbg !5379
}

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: noinline ssp uwtable
define internal void @_GLOBAL__sub_I_example.cpp() #0 section "__TEXT,__StaticInit,regular,pure_instructions" !dbg !5380 {
entry:
  call void @__cxx_global_var_init(), !dbg !5382
  ret void
}

attributes #0 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3200, !3201, !3202}
!llvm.ident = !{!3203}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "g_i", scope: !2, file: !3, line: 5, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1242, globals: !2299, imports: !2302)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!4 = !{!5, !1234, !1239}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "event", scope: !7, file: !6, line: 308, size: 32, elements: !1230, identifier: "_ZTSNSt3__18ios_base5eventE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ios", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !8, file: !6, line: 231, size: 1088, elements: !11, vtableHolder: !7, identifier: "_ZTSNSt3__18ios_baseE")
!8 = !DINamespace(name: "__1", scope: !10, file: !9, line: 438, exportSymbols: true)
!9 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!10 = !DINamespace(name: "std", scope: null, file: !9, line: 437)
!11 = !{!12, !18, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !42, !43, !44, !45, !48, !49, !50, !51, !52, !53, !54, !59, !60, !61, !62, !64, !65, !72, !74, !80, !81, !84, !86, !87, !88, !90, !91, !92, !97, !101, !102, !105, !108, !111, !114, !115, !116, !1168, !1171, !1172, !1176, !1180, !1183, !1186, !1190, !1193, !1196, !1199, !1202, !1203, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1217, !1220, !1221, !1224, !1225, !1228, !1229}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ios_base", scope: !6, file: !6, baseType: !13, size: 64, flags: DIFlagArtificial)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "boolalpha", scope: !7, file: !6, line: 237, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !7, file: !6, line: 236, baseType: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !7, file: !6, line: 238, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !7, file: !6, line: 239, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !7, file: !6, line: 240, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !7, file: !6, line: 241, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !7, file: !6, line: 242, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "oct", scope: !7, file: !6, line: 243, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !7, file: !6, line: 244, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "scientific", scope: !7, file: !6, line: 245, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "showbase", scope: !7, file: !6, line: 246, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "showpoint", scope: !7, file: !6, line: 247, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "showpos", scope: !7, file: !6, line: 248, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2048)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "skipws", scope: !7, file: !6, line: 249, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "unitbuf", scope: !7, file: !6, line: 250, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "uppercase", scope: !7, file: !6, line: 251, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "adjustfield", scope: !7, file: !6, line: 252, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 176)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "basefield", scope: !7, file: !6, line: 253, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 74)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "floatfield", scope: !7, file: !6, line: 254, baseType: !19, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 260)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "badbit", scope: !7, file: !6, line: 257, baseType: !40, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !7, file: !6, line: 256, baseType: !21)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "eofbit", scope: !7, file: !6, line: 258, baseType: !40, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "failbit", scope: !7, file: !6, line: 259, baseType: !40, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "goodbit", scope: !7, file: !6, line: 260, baseType: !40, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "app", scope: !7, file: !6, line: 263, baseType: !46, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "openmode", scope: !7, file: !6, line: 262, baseType: !21)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ate", scope: !7, file: !6, line: 264, baseType: !46, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !7, file: !6, line: 265, baseType: !46, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !7, file: !6, line: 266, baseType: !46, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !7, file: !6, line: 267, baseType: !46, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "trunc", scope: !7, file: !6, line: 268, baseType: !46, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__fmtflags_", scope: !7, file: !6, line: 362, baseType: !20, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__precision_", scope: !7, file: !6, line: 363, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !8, file: !6, line: 229, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !57, line: 51, baseType: !58)
!57 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__width_", scope: !7, file: !6, line: 364, baseType: !55, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__rdstate_", scope: !7, file: !6, line: 365, baseType: !41, size: 32, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__exceptions_", scope: !7, file: !6, line: 366, baseType: !41, size: 32, offset: 288)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__rdbuf_", scope: !7, file: !6, line: 367, baseType: !63, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !7, file: !6, line: 368, baseType: !63, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__fn_", scope: !7, file: !6, line: 369, baseType: !66, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_callback", scope: !7, file: !6, line: 309, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !5, !71, !17}
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__index_", scope: !7, file: !6, line: 370, baseType: !73, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__event_size_", scope: !7, file: !6, line: 371, baseType: !75, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 30, baseType: !77)
!76 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !78, line: 92, baseType: !79)
!78 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__event_cap_", scope: !7, file: !6, line: 372, baseType: !75, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__xindex_", scope: !7, file: !6, line: 376, baseType: !82, flags: DIFlagStaticMember)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !8, file: !83, line: 1084, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__16atomicIiEE")
!83 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_", scope: !7, file: !6, line: 380, baseType: !85, size: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_size_", scope: !7, file: !6, line: 381, baseType: !75, size: 64, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__iarray_cap_", scope: !7, file: !6, line: 382, baseType: !75, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_", scope: !7, file: !6, line: 383, baseType: !89, size: 64, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_size_", scope: !7, file: !6, line: 384, baseType: !75, size: 64, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__parray_cap_", scope: !7, file: !6, line: 385, baseType: !75, size: 64, offset: 1024)
!92 = !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !7, file: !6, line: 284, type: !93, isLocal: false, isDefinition: false, scopeLine: 284, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!93 = !DISubroutineType(types: !94)
!94 = !{!20, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!97 = !DISubprogram(name: "flags", linkageName: "_ZNSt3__18ios_base5flagsEj", scope: !7, file: !6, line: 285, type: !98, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!98 = !DISubroutineType(types: !99)
!99 = !{!20, !100, !20}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEj", scope: !7, file: !6, line: 286, type: !98, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!102 = !DISubprogram(name: "setf", linkageName: "_ZNSt3__18ios_base4setfEjj", scope: !7, file: !6, line: 287, type: !103, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!103 = !DISubroutineType(types: !104)
!104 = !{!20, !100, !20, !20}
!105 = !DISubprogram(name: "unsetf", linkageName: "_ZNSt3__18ios_base6unsetfEj", scope: !7, file: !6, line: 288, type: !106, isLocal: false, isDefinition: false, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !100, !20}
!108 = !DISubprogram(name: "precision", linkageName: "_ZNKSt3__18ios_base9precisionEv", scope: !7, file: !6, line: 290, type: !109, isLocal: false, isDefinition: false, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!109 = !DISubroutineType(types: !110)
!110 = !{!55, !95}
!111 = !DISubprogram(name: "precision", linkageName: "_ZNSt3__18ios_base9precisionEl", scope: !7, file: !6, line: 291, type: !112, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{!55, !100, !55}
!114 = !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !7, file: !6, line: 292, type: !109, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!115 = !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !7, file: !6, line: 293, type: !112, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!116 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__18ios_base5imbueERKNS_6localeE", scope: !7, file: !6, line: 296, type: !117, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !100, !142}
!119 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "locale", scope: !8, file: !120, line: 83, size: 64, elements: !121, identifier: "_ZTSNSt3__16localeE")
!120 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!121 = !{!122, !125, !126, !127, !128, !129, !130, !131, !132, !135, !139, !144, !150, !1046, !1049, !1052, !1055, !1056, !1059, !1063, !1066, !1067, !1070, !1073, !1117, !1121, !1163}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "none", scope: !119, file: !120, line: 93, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 0)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "category", scope: !119, file: !120, line: 90, baseType: !17)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "collate", scope: !119, file: !120, line: 94, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !119, file: !120, line: 95, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 2)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "monetary", scope: !119, file: !120, line: 96, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "numeric", scope: !119, file: !120, line: 97, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !119, file: !120, line: 98, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !119, file: !120, line: 99, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !119, file: !120, line: 100, baseType: !123, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__locale_", scope: !119, file: !120, line: 136, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_class_type, name: "__imp", scope: !119, file: !120, line: 135, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__16locale5__impE")
!135 = !DISubprogram(name: "locale", scope: !119, file: !120, line: 103, type: !136, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!139 = !DISubprogram(name: "locale", scope: !119, file: !120, line: 104, type: !140, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !138, !142}
!142 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!144 = !DISubprogram(name: "locale", scope: !119, file: !120, line: 105, type: !145, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !138, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!150 = !DISubprogram(name: "locale", scope: !119, file: !120, line: 106, type: !151, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !138, !153}
!153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !8, file: !156, line: 194, baseType: !157)
!156 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iosfwd", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!157 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >", scope: !8, file: !158, line: 4038, size: 192, elements: !159, templateParams: !1044, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE")
!158 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!159 = !{!160, !172, !429, !431, !435, !441, !446, !449, !453, !456, !459, !462, !465, !468, !471, !474, !477, !480, !668, !671, !697, !700, !701, !705, !709, !712, !715, !720, !723, !728, !733, !734, !735, !740, !745, !746, !747, !748, !749, !750, !751, !754, !755, !756, !757, !760, !763, !764, !765, !766, !769, !774, !779, !780, !781, !782, !785, !786, !787, !788, !789, !790, !793, !796, !797, !800, !801, !804, !805, !808, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !824, !827, !830, !833, !836, !839, !842, !845, !848, !851, !854, !857, !860, !863, !866, !869, !872, !875, !878, !881, !884, !887, !890, !893, !897, !900, !903, !906, !907, !910, !913, !916, !919, !922, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !953, !956, !959, !962, !965, !968, !971, !974, !975, !976, !980, !983, !984, !985, !986, !987, !988, !989, !990, !993, !996, !1004, !1005, !1006, !1007, !1008, !1009, !1012, !1015, !1018, !1019, !1022, !1025, !1026, !1027, !1030, !1033, !1036, !1039, !1040, !1041, !1042, !1043}
!160 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !157, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__basic_string_common<true>", scope: !8, file: !158, line: 583, size: 8, elements: !162, templateParams: !169, identifier: "_ZTSNSt3__121__basic_string_commonILb1EEE")
!162 = !{!163, !168}
!163 = !DISubprogram(name: "__throw_length_error", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv", scope: !161, file: !158, line: 561, type: !164, isLocal: false, isDefinition: false, scopeLine: 561, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!168 = !DISubprogram(name: "__throw_out_of_range", linkageName: "_ZNKSt3__121__basic_string_commonILb1EE20__throw_out_of_rangeEv", scope: !161, file: !158, line: 562, type: !164, isLocal: false, isDefinition: false, scopeLine: 562, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!169 = !{!170}
!170 = !DITemplateValueParameter(type: !171, value: i8 1)
!171 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__r_", scope: !157, file: !158, line: 748, baseType: !173, size: 192)
!173 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >", scope: !8, file: !174, line: 2144, size: 192, elements: !175, templateParams: !426, identifier: "_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE")
!174 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!175 = !{!176, !383, !407, !411, !416, !419, !422}
!176 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !173, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>", scope: !8, file: !174, line: 2076, size: 192, elements: !178, templateParams: !379, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE")
!178 = !{!179, !362, !366, !371}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !177, file: !174, line: 2105, baseType: !180, size: 192, flags: DIFlagPrivate)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__rep", scope: !157, file: !158, line: 738, size: 192, elements: !181, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE")
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !158, line: 740, baseType: !183, size: 192)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !158, line: 740, size: 192, elements: !184, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repUt_E")
!184 = !{!185, !341, !355}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__l", scope: !183, file: !158, line: 742, baseType: !186, size: 192)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__long", scope: !157, file: !158, line: 699, size: 192, elements: !187, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE")
!187 = !{!188, !338, !339}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__cap_", scope: !186, file: !158, line: 701, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !157, file: !158, line: 643, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !191, file: !174, line: 1517, baseType: !333)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::__1::allocator<char> >", scope: !8, file: !174, line: 1506, size: 8, elements: !192, templateParams: !332, identifier: "_ZTSNSt3__116allocator_traitsINS_9allocatorIcEEEE")
!192 = !{!193, !250, !277, !280, !285, !288, !305, !320, !323, !326, !329}
!193 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m", scope: !191, file: !174, line: 1540, type: !194, isLocal: false, isDefinition: false, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !248, !190}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !191, file: !174, line: 1511, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !198, file: !174, line: 1031, baseType: !244)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char> >", scope: !8, file: !174, line: 1029, size: 8, elements: !199, templateParams: !200, identifier: "_ZTSNSt3__114__pointer_typeIcNS_9allocatorIcEEEE")
!199 = !{}
!200 = !{!201, !202}
!201 = !DITemplateTypeParameter(name: "_Tp", type: !149)
!202 = !DITemplateTypeParameter(name: "_Dp", type: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !8, file: !174, line: 1759, size: 8, elements: !204, templateParams: !243, identifier: "_ZTSNSt3__19allocatorIcEE")
!204 = !{!205, !209, !218, !224, !234, !237, !240}
!205 = !DISubprogram(name: "allocator", scope: !203, file: !174, line: 1775, type: !206, isLocal: false, isDefinition: false, scopeLine: 1775, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERc", scope: !203, file: !174, line: 1777, type: !210, isLocal: false, isDefinition: false, scopeLine: 1777, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !214, !216}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !203, file: !174, line: 1764, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !203, file: !174, line: 1766, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !149, size: 64)
!218 = !DISubprogram(name: "address", linkageName: "_ZNKSt3__19allocatorIcE7addressERKc", scope: !203, file: !174, line: 1779, type: !219, isLocal: false, isDefinition: false, scopeLine: 1779, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !214, !222}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !203, file: !174, line: 1765, baseType: !147)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !203, file: !174, line: 1767, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !148, size: 64)
!224 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__19allocatorIcE8allocateEmPKv", scope: !203, file: !174, line: 1781, type: !225, isLocal: false, isDefinition: false, scopeLine: 1781, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!212, !208, !227, !228}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !174, line: 1762, baseType: !75)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !229, file: !174, line: 702, baseType: !232)
!229 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<void>", scope: !8, file: !174, line: 698, size: 8, elements: !199, templateParams: !230, identifier: "_ZTSNSt3__19allocatorIvEE")
!230 = !{!231}
!231 = !DITemplateTypeParameter(name: "_Tp", type: null)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!234 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__19allocatorIcE10deallocateEPcm", scope: !203, file: !174, line: 1788, type: !235, isLocal: false, isDefinition: false, scopeLine: 1788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !208, !212, !227}
!237 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__19allocatorIcE8max_sizeEv", scope: !203, file: !174, line: 1790, type: !238, isLocal: false, isDefinition: false, scopeLine: 1790, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!227, !214}
!240 = !DISubprogram(name: "destroy", linkageName: "_ZNSt3__19allocatorIcE7destroyEPc", scope: !203, file: !174, line: 1853, type: !241, isLocal: false, isDefinition: false, scopeLine: 1853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !208, !212}
!243 = !{!201}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !245, file: !174, line: 1017, baseType: !212)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<char, std::__1::allocator<char>, true>", scope: !246, file: !174, line: 1015, size: 8, elements: !199, templateParams: !247, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeIcNS_9allocatorIcEELb1EEE")
!246 = !DINamespace(name: "__pointer_type_imp", scope: !8, file: !174, line: 1011)
!247 = !{!201, !202, !170}
!248 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !191, file: !174, line: 1508, baseType: !203)
!250 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKv", scope: !191, file: !174, line: 1543, type: !251, isLocal: false, isDefinition: false, scopeLine: 1543, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!196, !248, !190, !253}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", scope: !191, file: !174, line: 1514, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !255, file: !174, line: 1109, baseType: !260)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_void_pointer<char *, std::__1::allocator<char>, false>", scope: !8, file: !174, line: 1106, size: 8, elements: !199, templateParams: !256, identifier: "_ZTSNSt3__120__const_void_pointerIPcNS_9allocatorIcEELb0EEE")
!256 = !{!257, !258, !259}
!257 = !DITemplateTypeParameter(name: "_Ptr", type: !213)
!258 = !DITemplateTypeParameter(name: "_Alloc", type: !203)
!259 = !DITemplateValueParameter(type: !171, value: i8 0)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind<const void>", scope: !261, file: !174, line: 974, baseType: !232)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !8, file: !174, line: 967, size: 8, elements: !262, templateParams: !276, identifier: "_ZTSNSt3__114pointer_traitsIPcEE")
!262 = !{!263}
!263 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPcE10pointer_toERc", scope: !261, file: !174, line: 983, type: !264, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !261, file: !174, line: 969, baseType: !213)
!267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !270, file: !269, line: 414, baseType: !149)
!269 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<char *>::__nat, char>", scope: !8, file: !269, line: 414, size: 8, elements: !199, templateParams: !271, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPcE5__natEcEE")
!271 = !{!272, !273, !275}
!272 = !DITemplateValueParameter(name: "_Bp", type: !171, value: i8 0)
!273 = !DITemplateTypeParameter(name: "_If", type: !274)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !261, file: !174, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPcE5__natE")
!275 = !DITemplateTypeParameter(name: "_Then", type: !149)
!276 = !{!257}
!277 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm", scope: !191, file: !174, line: 1548, type: !278, isLocal: false, isDefinition: false, scopeLine: 1548, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !248, !196, !190}
!280 = !DISubprogram(name: "max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_", scope: !191, file: !174, line: 1592, type: !281, isLocal: false, isDefinition: false, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DISubroutineType(types: !282)
!282 = !{!190, !283}
!283 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!285 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionERKS2_", scope: !191, file: !174, line: 1597, type: !286, isLocal: false, isDefinition: false, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DISubroutineType(types: !287)
!287 = !{!249, !283}
!288 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb1EEE", scope: !191, file: !174, line: 1697, type: !289, isLocal: false, isDefinition: false, scopeLine: 1697, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!289 = !DISubroutineType(types: !290)
!290 = !{!196, !248, !190, !253, !291}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !8, file: !269, line: 528, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !8, file: !269, line: 504, size: 8, elements: !293, templateParams: !302, identifier: "_ZTSNSt3__117integral_constantIbLb1EEE")
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !269, line: 506, baseType: !295, flags: DIFlagStaticMember, extraData: i1 true)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!296 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb1EEcvbEv", scope: !292, file: !269, line: 510, type: !297, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !292, file: !269, line: 507, baseType: !171)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!302 = !{!303, !304}
!303 = !DITemplateTypeParameter(name: "_Tp", type: !171)
!304 = !DITemplateValueParameter(name: "__v", type: !171, value: i8 1)
!305 = !DISubprogram(name: "allocate", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_mPKvNS_17integral_constantIbLb0EEE", scope: !191, file: !174, line: 1701, type: !306, isLocal: false, isDefinition: false, scopeLine: 1701, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!306 = !DISubroutineType(types: !307)
!307 = !{!196, !248, !190, !253, !308}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !8, file: !269, line: 529, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !8, file: !269, line: 504, size: 8, elements: !310, templateParams: !318, identifier: "_ZTSNSt3__117integral_constantIbLb0EEE")
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !269, line: 506, baseType: !295, flags: DIFlagStaticMember, extraData: i1 false)
!312 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__117integral_constantIbLb0EEcvbEv", scope: !309, file: !269, line: 510, type: !313, isLocal: false, isDefinition: false, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !309, file: !269, line: 507, baseType: !171)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!318 = !{!303, !319}
!319 = !DITemplateValueParameter(name: "__v", type: !171, value: i8 0)
!320 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_", scope: !191, file: !174, line: 1730, type: !321, isLocal: false, isDefinition: false, scopeLine: 1730, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{!190, !291, !283}
!323 = !DISubprogram(name: "__max_size", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb0EEERKS2_", scope: !191, file: !174, line: 1733, type: !324, isLocal: false, isDefinition: false, scopeLine: 1733, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!190, !308, !283}
!326 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb1EEERKS2_", scope: !191, file: !174, line: 1738, type: !327, isLocal: false, isDefinition: false, scopeLine: 1738, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{!249, !291, !283}
!329 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS2_", scope: !191, file: !174, line: 1742, type: !330, isLocal: false, isDefinition: false, scopeLine: 1742, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!330 = !DISubroutineType(types: !331)
!331 = !{!249, !308, !283}
!332 = !{!258}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !334, file: !174, line: 1151, baseType: !337)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__size_type<std::__1::allocator<char>, long, true>", scope: !8, file: !174, line: 1149, size: 8, elements: !199, templateParams: !335, identifier: "_ZTSNSt3__111__size_typeINS_9allocatorIcEElLb1EEE")
!335 = !{!258, !336, !170}
!336 = !DITemplateTypeParameter(name: "_DiffType", type: !58)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !203, file: !174, line: 1762, baseType: !75)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !186, file: !158, line: 702, baseType: !189, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !186, file: !158, line: 703, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !157, file: !158, line: 647, baseType: !196)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !183, file: !158, line: 743, baseType: !342, size: 192)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__short", scope: !157, file: !158, line: 717, size: 192, elements: !343, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortE")
!343 = !{!344, !351}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !158, line: 719, baseType: !345, size: 8)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !158, line: 719, size: 8, elements: !346, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__shortUt_E")
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !345, file: !158, line: 721, baseType: !348, size: 8)
!348 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__lx", scope: !345, file: !158, line: 722, baseType: !350, size: 8)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !157, file: !158, line: 640, baseType: !149)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__data_", scope: !342, file: !158, line: 724, baseType: !352, size: 184, offset: 8)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 184, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 23)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !183, file: !158, line: 744, baseType: !356, size: 192)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__raw", scope: !157, file: !158, line: 733, size: 192, elements: !357, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__rawE")
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__words", scope: !356, file: !158, line: 735, baseType: !359, size: 192)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 192, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 3)
!362 = !DISubprogram(name: "__compressed_pair_elem", scope: !177, file: !174, line: 2082, type: !363, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!366 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !177, file: !174, line: 2101, type: !367, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !365}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !177, file: !174, line: 2078, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !180, size: 64)
!371 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !177, file: !174, line: 2102, type: !372, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !377}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !177, file: !174, line: 2079, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!379 = !{!380, !381, !382}
!380 = !DITemplateTypeParameter(name: "_Tp", type: !180)
!381 = !DITemplateValueParameter(name: "_Idx", type: !17, value: i32 0)
!382 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !171, value: i8 0)
!383 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !173, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::allocator<char>, 1, true>", scope: !8, file: !174, line: 2109, size: 8, elements: !385, templateParams: !403, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEE")
!385 = !{!386, !387, !391, !396}
!386 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !384, baseType: !203, flags: DIFlagPrivate)
!387 = !DISubprogram(name: "__compressed_pair_elem", scope: !384, file: !174, line: 2116, type: !388, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!391 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !384, file: !174, line: 2136, type: !392, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !390}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !384, file: !174, line: 2111, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !203, size: 64)
!396 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv", scope: !384, file: !174, line: 2137, type: !397, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: false)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !384, file: !174, line: 2112, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !215, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!403 = !{!404, !405, !406}
!404 = !DITemplateTypeParameter(name: "_Tp", type: !203)
!405 = !DITemplateValueParameter(name: "_Idx", type: !17, value: i32 1)
!406 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !171, value: i8 1)
!407 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !173, file: !174, line: 2212, type: !408, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!369, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!411 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !173, file: !174, line: 2217, type: !412, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!374, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!416 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !173, file: !174, line: 2222, type: !417, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!417 = !DISubroutineType(types: !418)
!418 = !{!394, !410}
!419 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv", scope: !173, file: !174, line: 2227, type: !420, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!399, !414}
!422 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E4swapERS8_", scope: !173, file: !174, line: 2232, type: !423, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !410, !425}
!425 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !173, size: 64)
!426 = !{!427, !428}
!427 = !DITemplateTypeParameter(name: "_T1", type: !180)
!428 = !DITemplateTypeParameter(name: "_T2", type: !203)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !157, file: !158, line: 751, baseType: !430, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!431 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 753, type: !432, isLocal: false, isDefinition: false, scopeLine: 753, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!435 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 756, type: !436, isLocal: false, isDefinition: false, scopeLine: 756, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !434, !438}
!438 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !157, file: !158, line: 641, baseType: !203)
!441 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 763, type: !442, isLocal: false, isDefinition: false, scopeLine: 763, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !434, !444}
!444 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!446 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 764, type: !447, isLocal: false, isDefinition: false, scopeLine: 764, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !434, !444, !438}
!449 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 768, type: !450, isLocal: false, isDefinition: false, scopeLine: 768, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !434, !452}
!452 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !157, size: 64)
!453 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 776, type: !454, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !434, !452, !438}
!456 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 778, type: !457, isLocal: false, isDefinition: false, scopeLine: 778, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !434, !147}
!459 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 780, type: !460, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !434, !147, !400}
!462 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 782, type: !463, isLocal: false, isDefinition: false, scopeLine: 782, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !434, !147, !189}
!465 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 784, type: !466, isLocal: false, isDefinition: false, scopeLine: 784, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !434, !147, !189, !400}
!468 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 786, type: !469, isLocal: false, isDefinition: false, scopeLine: 786, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !434, !189, !149}
!471 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 788, type: !472, isLocal: false, isDefinition: false, scopeLine: 788, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !434, !189, !149, !400}
!474 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 789, type: !475, isLocal: false, isDefinition: false, scopeLine: 789, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !434, !444, !189, !189, !400}
!477 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 792, type: !478, isLocal: false, isDefinition: false, scopeLine: 792, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !434, !444, !189, !400}
!480 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 800, type: !481, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !434, !483}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__self_view", scope: !157, file: !158, line: 638, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::__1::char_traits<char> >", scope: !8, file: !485, line: 184, size: 128, elements: !486, templateParams: !616, identifier: "_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE")
!485 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string_view", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!486 = !{!487, !490, !494, !495, !499, !504, !508, !511, !514, !520, !521, !522, !523, !529, !530, !531, !532, !535, !536, !537, !540, !544, !545, !548, !549, !552, !555, !556, !559, !563, !566, !569, !572, !575, !578, !581, !584, !587, !590, !593, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !484, file: !485, line: 199, baseType: !488, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !485, line: 197, baseType: !75)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !484, file: !485, line: 566, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !484, file: !485, line: 188, baseType: !149)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !484, file: !485, line: 567, baseType: !489, size: 64, offset: 64)
!495 = !DISubprogram(name: "basic_string_view", scope: !484, file: !485, line: 207, type: !496, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!499 = !DISubprogram(name: "basic_string_view", scope: !484, file: !485, line: 210, type: !500, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !498, !502}
!502 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!504 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEaSERKS3_", scope: !484, file: !485, line: 213, type: !505, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !498, !502}
!507 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !484, size: 64)
!508 = !DISubprogram(name: "basic_string_view", scope: !484, file: !485, line: 216, type: !509, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !498, !147, !489}
!511 = !DISubprogram(name: "basic_string_view", scope: !484, file: !485, line: 225, type: !512, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !498, !147}
!514 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginEv", scope: !484, file: !485, line: 230, type: !515, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !519}
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !484, file: !485, line: 193, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !484, file: !485, line: 190, baseType: !147)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!520 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endEv", scope: !484, file: !485, line: 233, type: !515, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!521 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginEv", scope: !484, file: !485, line: 236, type: !515, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!522 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendEv", scope: !484, file: !485, line: 239, type: !515, isLocal: false, isDefinition: false, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!523 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6rbeginEv", scope: !484, file: !485, line: 242, type: !524, isLocal: false, isDefinition: false, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!526, !519}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !484, file: !485, line: 195, baseType: !527)
!527 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !8, file: !528, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorIPKcEE")
!528 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/iterator", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!529 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4rendEv", scope: !484, file: !485, line: 245, type: !524, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!530 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7crbeginEv", scope: !484, file: !485, line: 248, type: !524, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!531 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5crendEv", scope: !484, file: !485, line: 251, type: !524, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!532 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv", scope: !484, file: !485, line: 255, type: !533, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!489, !519}
!535 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6lengthEv", scope: !484, file: !485, line: 258, type: !533, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!536 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE8max_sizeEv", scope: !484, file: !485, line: 261, type: !533, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!537 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5emptyEv", scope: !484, file: !485, line: 264, type: !538, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!171, !519}
!540 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEEixEm", scope: !484, file: !485, line: 268, type: !541, isLocal: false, isDefinition: false, scopeLine: 268, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !519, !489}
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !484, file: !485, line: 192, baseType: !223)
!544 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE2atEm", scope: !484, file: !485, line: 271, type: !541, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!545 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5frontEv", scope: !484, file: !485, line: 279, type: !546, isLocal: false, isDefinition: false, scopeLine: 279, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!546 = !DISubroutineType(types: !547)
!547 = !{!543, !519}
!548 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4backEv", scope: !484, file: !485, line: 285, type: !546, isLocal: false, isDefinition: false, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!549 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv", scope: !484, file: !485, line: 291, type: !550, isLocal: false, isDefinition: false, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{!518, !519}
!552 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_prefixEm", scope: !484, file: !485, line: 295, type: !553, isLocal: false, isDefinition: false, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !498, !489}
!555 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE13remove_suffixEm", scope: !484, file: !485, line: 303, type: !553, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!556 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEE4swapERS3_", scope: !484, file: !485, line: 310, type: !557, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !498, !507}
!559 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4copyEPcmm", scope: !484, file: !485, line: 322, type: !560, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !519, !213, !489, !489}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !484, file: !485, line: 197, baseType: !75)
!563 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrEmm", scope: !484, file: !485, line: 332, type: !564, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!484, !519, !489, !489}
!566 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_", scope: !484, file: !485, line: 339, type: !567, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!17, !519, !484}
!569 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_", scope: !484, file: !485, line: 349, type: !570, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!570 = !DISubroutineType(types: !571)
!571 = !{!17, !519, !489, !489, !484}
!572 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmS3_mm", scope: !484, file: !485, line: 355, type: !573, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!573 = !DISubroutineType(types: !574)
!574 = !{!17, !519, !489, !489, !484, !489, !489}
!575 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEPKc", scope: !484, file: !485, line: 362, type: !576, isLocal: false, isDefinition: false, scopeLine: 362, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!17, !519, !147}
!578 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKc", scope: !484, file: !485, line: 368, type: !579, isLocal: false, isDefinition: false, scopeLine: 368, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!17, !519, !489, !489, !147}
!581 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareEmmPKcm", scope: !484, file: !485, line: 374, type: !582, isLocal: false, isDefinition: false, scopeLine: 374, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!582 = !DISubroutineType(types: !583)
!583 = !{!17, !519, !489, !489, !147, !489}
!584 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findES3_m", scope: !484, file: !485, line: 381, type: !585, isLocal: false, isDefinition: false, scopeLine: 381, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!585 = !DISubroutineType(types: !586)
!586 = !{!562, !519, !484, !489}
!587 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEcm", scope: !484, file: !485, line: 389, type: !588, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!562, !519, !149, !489}
!590 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcmm", scope: !484, file: !485, line: 396, type: !591, isLocal: false, isDefinition: false, scopeLine: 396, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!562, !519, !147, !489, !489}
!593 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4findEPKcm", scope: !484, file: !485, line: 404, type: !594, isLocal: false, isDefinition: false, scopeLine: 404, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!594 = !DISubroutineType(types: !595)
!595 = !{!562, !519, !147, !489}
!596 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindES3_m", scope: !484, file: !485, line: 413, type: !585, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!597 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEcm", scope: !484, file: !485, line: 421, type: !588, isLocal: false, isDefinition: false, scopeLine: 421, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!598 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcmm", scope: !484, file: !485, line: 428, type: !591, isLocal: false, isDefinition: false, scopeLine: 428, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!599 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5rfindEPKcm", scope: !484, file: !485, line: 436, type: !594, isLocal: false, isDefinition: false, scopeLine: 436, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!600 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofES3_m", scope: !484, file: !485, line: 445, type: !585, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!601 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEcm", scope: !484, file: !485, line: 453, type: !588, isLocal: false, isDefinition: false, scopeLine: 453, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!602 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcmm", scope: !484, file: !485, line: 457, type: !591, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!603 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE13find_first_ofEPKcm", scope: !484, file: !485, line: 465, type: !594, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!604 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofES3_m", scope: !484, file: !485, line: 474, type: !585, isLocal: false, isDefinition: false, scopeLine: 474, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!605 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEcm", scope: !484, file: !485, line: 482, type: !588, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!606 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcmm", scope: !484, file: !485, line: 486, type: !591, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!607 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE12find_last_ofEPKcm", scope: !484, file: !485, line: 494, type: !594, isLocal: false, isDefinition: false, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!608 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofES3_m", scope: !484, file: !485, line: 503, type: !585, isLocal: false, isDefinition: false, scopeLine: 503, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!609 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEcm", scope: !484, file: !485, line: 511, type: !588, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!610 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcmm", scope: !484, file: !485, line: 518, type: !591, isLocal: false, isDefinition: false, scopeLine: 518, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!611 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE17find_first_not_ofEPKcm", scope: !484, file: !485, line: 526, type: !594, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!612 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofES3_m", scope: !484, file: !485, line: 535, type: !585, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!613 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEcm", scope: !484, file: !485, line: 543, type: !588, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!614 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcmm", scope: !484, file: !485, line: 550, type: !591, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!615 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE16find_last_not_ofEPKcm", scope: !484, file: !485, line: 558, type: !594, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!616 = !{!617, !618}
!617 = !DITemplateTypeParameter(name: "_CharT", type: !149)
!618 = !DITemplateTypeParameter(name: "_Traits", type: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !8, file: !620, line: 197, size: 8, elements: !621, templateParams: !667, identifier: "_ZTSNSt3__111char_traitsIcEE")
!620 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__string", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!621 = !{!622, !629, !632, !633, !637, !640, !643, !647, !648, !651, !655, !658, !661, !664}
!622 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignERcRKc", scope: !619, file: !620, line: 206, type: !623, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625, !627}
!625 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !619, file: !620, line: 199, baseType: !149)
!627 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!629 = !DISubprogram(name: "eq", linkageName: "_ZNSt3__111char_traitsIcE2eqEcc", scope: !619, file: !620, line: 207, type: !630, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false)
!630 = !DISubroutineType(types: !631)
!631 = !{!171, !626, !626}
!632 = !DISubprogram(name: "lt", linkageName: "_ZNSt3__111char_traitsIcE2ltEcc", scope: !619, file: !620, line: 209, type: !630, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!633 = !DISubprogram(name: "compare", linkageName: "_ZNSt3__111char_traitsIcE7compareEPKcS3_m", scope: !619, file: !620, line: 213, type: !634, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!634 = !DISubroutineType(types: !635)
!635 = !{!17, !636, !636, !75}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!637 = !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !619, file: !620, line: 215, type: !638, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!638 = !DISubroutineType(types: !639)
!639 = !{!75, !636}
!640 = !DISubprogram(name: "find", linkageName: "_ZNSt3__111char_traitsIcE4findEPKcmRS2_", scope: !619, file: !620, line: 217, type: !641, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!641 = !DISubroutineType(types: !642)
!642 = !{!636, !636, !75, !627}
!643 = !DISubprogram(name: "move", linkageName: "_ZNSt3__111char_traitsIcE4moveEPcPKcm", scope: !619, file: !620, line: 218, type: !644, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !646, !636, !75}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!647 = !DISubprogram(name: "copy", linkageName: "_ZNSt3__111char_traitsIcE4copyEPcPKcm", scope: !619, file: !620, line: 220, type: !644, isLocal: false, isDefinition: false, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false)
!648 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__111char_traitsIcE6assignEPcmc", scope: !619, file: !620, line: 225, type: !649, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false)
!649 = !DISubroutineType(types: !650)
!650 = !{!646, !646, !75, !626}
!651 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt3__111char_traitsIcE7not_eofEi", scope: !619, file: !620, line: 228, type: !652, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false)
!652 = !DISubroutineType(types: !653)
!653 = !{!654, !654}
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !619, file: !620, line: 200, baseType: !17)
!655 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt3__111char_traitsIcE12to_char_typeEi", scope: !619, file: !620, line: 230, type: !656, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!656 = !DISubroutineType(types: !657)
!657 = !{!626, !654}
!658 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt3__111char_traitsIcE11to_int_typeEc", scope: !619, file: !620, line: 232, type: !659, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false)
!659 = !DISubroutineType(types: !660)
!660 = !{!654, !626}
!661 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !619, file: !620, line: 234, type: !662, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false)
!662 = !DISubroutineType(types: !663)
!663 = !{!171, !654, !654}
!664 = !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !619, file: !620, line: 236, type: !665, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!654}
!667 = !{!617}
!668 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 802, type: !669, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !434, !483, !400}
!671 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 811, type: !672, isLocal: false, isDefinition: false, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !434, !674}
!674 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !10, file: !675, line: 59, size: 128, elements: !676, templateParams: !695, identifier: "_ZTSSt16initializer_listIcE")
!675 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/initializer_list", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!676 = !{!677, !678, !679, !683, !686, !691, !694}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__begin_", scope: !674, file: !675, line: 61, baseType: !147, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__size_", scope: !674, file: !675, line: 62, baseType: !75, size: 64, offset: 64)
!679 = !DISubprogram(name: "initializer_list", scope: !674, file: !675, line: 66, type: !680, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682, !147, !75}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!683 = !DISubprogram(name: "initializer_list", scope: !674, file: !675, line: 81, type: !684, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !682}
!686 = !DISubprogram(name: "size", linkageName: "_ZNKSt16initializer_listIcE4sizeEv", scope: !674, file: !675, line: 85, type: !687, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!687 = !DISubroutineType(types: !688)
!688 = !{!75, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!691 = !DISubprogram(name: "begin", linkageName: "_ZNKSt16initializer_listIcE5beginEv", scope: !674, file: !675, line: 89, type: !692, isLocal: false, isDefinition: false, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!692 = !DISubroutineType(types: !693)
!693 = !{!147, !689}
!694 = !DISubprogram(name: "end", linkageName: "_ZNKSt16initializer_listIcE3endEv", scope: !674, file: !675, line: 93, type: !692, isLocal: false, isDefinition: false, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!695 = !{!696}
!696 = !DITemplateTypeParameter(name: "_Ep", type: !149)
!697 = !DISubprogram(name: "basic_string", scope: !157, file: !158, line: 813, type: !698, isLocal: false, isDefinition: false, scopeLine: 813, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !434, !674, !400}
!700 = !DISubprogram(name: "~basic_string", scope: !157, file: !158, line: 816, type: !432, isLocal: false, isDefinition: false, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!701 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv", scope: !157, file: !158, line: 819, type: !702, isLocal: false, isDefinition: false, scopeLine: 819, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!702 = !DISubroutineType(types: !703)
!703 = !{!483, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!705 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_", scope: !157, file: !158, line: 821, type: !706, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!706 = !DISubroutineType(types: !707)
!707 = !{!708, !434, !444}
!708 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !157, size: 64)
!709 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEOS5_", scope: !157, file: !158, line: 830, type: !710, isLocal: false, isDefinition: false, scopeLine: 830, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!710 = !DISubroutineType(types: !711)
!711 = !{!708, !434, !452}
!712 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSESt16initializer_listIcE", scope: !157, file: !158, line: 833, type: !713, isLocal: false, isDefinition: false, scopeLine: 833, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!713 = !DISubroutineType(types: !714)
!714 = !{!708, !434, !674}
!715 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc", scope: !157, file: !158, line: 835, type: !716, isLocal: false, isDefinition: false, scopeLine: 835, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!716 = !DISubroutineType(types: !717)
!717 = !{!708, !434, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!720 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc", scope: !157, file: !158, line: 836, type: !721, isLocal: false, isDefinition: false, scopeLine: 836, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!721 = !DISubroutineType(types: !722)
!722 = !{!708, !434, !350}
!723 = !DISubprogram(name: "begin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !157, file: !158, line: 853, type: !724, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!724 = !DISubroutineType(types: !725)
!725 = !{!726, !434}
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !157, file: !158, line: 659, baseType: !727)
!727 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<char *>", scope: !8, file: !528, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPcEE")
!728 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginEv", scope: !157, file: !158, line: 856, type: !729, isLocal: false, isDefinition: false, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!729 = !DISubroutineType(types: !730)
!730 = !{!731, !704}
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !157, file: !158, line: 660, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_class_type, name: "__wrap_iter<const char *>", scope: !8, file: !528, line: 1279, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__111__wrap_iterIPKcEE")
!733 = !DISubprogram(name: "end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !157, file: !158, line: 859, type: !724, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!734 = !DISubprogram(name: "end", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endEv", scope: !157, file: !158, line: 862, type: !729, isLocal: false, isDefinition: false, scopeLine: 862, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!735 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !157, file: !158, line: 866, type: !736, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!736 = !DISubroutineType(types: !737)
!737 = !{!738, !434}
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !157, file: !158, line: 662, baseType: !739)
!739 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<char *> >", scope: !8, file: !528, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPcEEEE")
!740 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6rbeginEv", scope: !157, file: !158, line: 869, type: !741, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!743, !704}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !157, file: !158, line: 663, baseType: !744)
!744 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::__1::__wrap_iter<const char *> >", scope: !8, file: !528, line: 636, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__116reverse_iteratorINS_11__wrap_iterIPKcEEEE")
!745 = !DISubprogram(name: "rend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !157, file: !158, line: 872, type: !736, isLocal: false, isDefinition: false, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!746 = !DISubprogram(name: "rend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4rendEv", scope: !157, file: !158, line: 875, type: !741, isLocal: false, isDefinition: false, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!747 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6cbeginEv", scope: !157, file: !158, line: 879, type: !729, isLocal: false, isDefinition: false, scopeLine: 879, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!748 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4cendEv", scope: !157, file: !158, line: 882, type: !729, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!749 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7crbeginEv", scope: !157, file: !158, line: 885, type: !741, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!750 = !DISubprogram(name: "crend", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5crendEv", scope: !157, file: !158, line: 888, type: !741, isLocal: false, isDefinition: false, scopeLine: 888, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!751 = !DISubprogram(name: "size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv", scope: !157, file: !158, line: 891, type: !752, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!752 = !DISubroutineType(types: !753)
!753 = !{!189, !704}
!754 = !DISubprogram(name: "length", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv", scope: !157, file: !158, line: 893, type: !752, isLocal: false, isDefinition: false, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!755 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv", scope: !157, file: !158, line: 894, type: !752, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!756 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv", scope: !157, file: !158, line: 895, type: !752, isLocal: false, isDefinition: false, scopeLine: 895, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!757 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc", scope: !157, file: !158, line: 899, type: !758, isLocal: false, isDefinition: false, scopeLine: 899, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !434, !189, !350}
!760 = !DISubprogram(name: "resize", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm", scope: !157, file: !158, line: 900, type: !761, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !434, !189}
!763 = !DISubprogram(name: "reserve", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm", scope: !157, file: !158, line: 902, type: !761, isLocal: false, isDefinition: false, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!764 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13shrink_to_fitEv", scope: !157, file: !158, line: 904, type: !432, isLocal: false, isDefinition: false, scopeLine: 904, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!765 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearEv", scope: !157, file: !158, line: 906, type: !432, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!766 = !DISubprogram(name: "empty", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyEv", scope: !157, file: !158, line: 907, type: !767, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!767 = !DISubroutineType(types: !768)
!768 = !{!171, !704}
!769 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !157, file: !158, line: 909, type: !770, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!770 = !DISubroutineType(types: !771)
!771 = !{!772, !704, !189}
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !157, file: !158, line: 646, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !719, size: 64)
!774 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEixEm", scope: !157, file: !158, line: 910, type: !775, isLocal: false, isDefinition: false, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{!777, !434, !189}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !157, file: !158, line: 645, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !350, size: 64)
!779 = !DISubprogram(name: "at", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !157, file: !158, line: 912, type: !770, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!780 = !DISubprogram(name: "at", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE2atEm", scope: !157, file: !158, line: 913, type: !775, isLocal: false, isDefinition: false, scopeLine: 913, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!781 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLERKS5_", scope: !157, file: !158, line: 915, type: !706, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!782 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLENS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 916, type: !783, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{!708, !434, !483}
!785 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEPKc", scope: !157, file: !158, line: 917, type: !716, isLocal: false, isDefinition: false, scopeLine: 917, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!786 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc", scope: !157, file: !158, line: 918, type: !721, isLocal: false, isDefinition: false, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!787 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLESt16initializer_listIcE", scope: !157, file: !158, line: 920, type: !713, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!788 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_", scope: !157, file: !158, line: 924, type: !706, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!789 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendENS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 926, type: !783, isLocal: false, isDefinition: false, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!790 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm", scope: !157, file: !158, line: 927, type: !791, isLocal: false, isDefinition: false, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!791 = !DISubroutineType(types: !792)
!792 = !{!708, !434, !444, !189, !189}
!793 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm", scope: !157, file: !158, line: 936, type: !794, isLocal: false, isDefinition: false, scopeLine: 936, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!794 = !DISubroutineType(types: !795)
!795 = !{!708, !434, !718, !189}
!796 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc", scope: !157, file: !158, line: 937, type: !716, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!797 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc", scope: !157, file: !158, line: 938, type: !798, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!798 = !DISubroutineType(types: !799)
!799 = !{!708, !434, !189, !350}
!800 = !DISubprogram(name: "append", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendESt16initializer_listIcE", scope: !157, file: !158, line: 971, type: !713, isLocal: false, isDefinition: false, scopeLine: 971, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!801 = !DISubprogram(name: "push_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc", scope: !157, file: !158, line: 974, type: !802, isLocal: false, isDefinition: false, scopeLine: 974, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !434, !350}
!804 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backEv", scope: !157, file: !158, line: 976, type: !432, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!805 = !DISubprogram(name: "front", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !157, file: !158, line: 977, type: !806, isLocal: false, isDefinition: false, scopeLine: 977, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!806 = !DISubroutineType(types: !807)
!807 = !{!777, !434}
!808 = !DISubprogram(name: "front", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5frontEv", scope: !157, file: !158, line: 978, type: !809, isLocal: false, isDefinition: false, scopeLine: 978, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!809 = !DISubroutineType(types: !810)
!810 = !{!772, !704}
!811 = !DISubprogram(name: "back", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !157, file: !158, line: 979, type: !806, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!812 = !DISubprogram(name: "back", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backEv", scope: !157, file: !158, line: 980, type: !809, isLocal: false, isDefinition: false, scopeLine: 980, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!813 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignENS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 983, type: !783, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!814 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_", scope: !157, file: !158, line: 985, type: !706, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!815 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEOS5_", scope: !157, file: !158, line: 988, type: !710, isLocal: false, isDefinition: false, scopeLine: 988, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!816 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignERKS5_mm", scope: !157, file: !158, line: 992, type: !791, isLocal: false, isDefinition: false, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!817 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm", scope: !157, file: !158, line: 1001, type: !794, isLocal: false, isDefinition: false, scopeLine: 1001, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!818 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc", scope: !157, file: !158, line: 1002, type: !716, isLocal: false, isDefinition: false, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!819 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEmc", scope: !157, file: !158, line: 1003, type: !798, isLocal: false, isDefinition: false, scopeLine: 1003, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!820 = !DISubprogram(name: "assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignESt16initializer_listIcE", scope: !157, file: !158, line: 1024, type: !713, isLocal: false, isDefinition: false, scopeLine: 1024, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!821 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_", scope: !157, file: !158, line: 1028, type: !822, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!822 = !DISubroutineType(types: !823)
!823 = !{!708, !434, !189, !444}
!824 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmNS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 1030, type: !825, isLocal: false, isDefinition: false, scopeLine: 1030, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!825 = !DISubroutineType(types: !826)
!826 = !{!708, !434, !189, !483}
!827 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmRKS5_mm", scope: !157, file: !158, line: 1039, type: !828, isLocal: false, isDefinition: false, scopeLine: 1039, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!708, !434, !189, !444, !189, !189}
!830 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm", scope: !157, file: !158, line: 1040, type: !831, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!831 = !DISubroutineType(types: !832)
!832 = !{!708, !434, !189, !718, !189}
!833 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc", scope: !157, file: !158, line: 1041, type: !834, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!834 = !DISubroutineType(types: !835)
!835 = !{!708, !434, !189, !718}
!836 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmmc", scope: !157, file: !158, line: 1042, type: !837, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!837 = !DISubroutineType(types: !838)
!838 = !{!708, !434, !189, !189, !350}
!839 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc", scope: !157, file: !158, line: 1043, type: !840, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!840 = !DISubroutineType(types: !841)
!841 = !{!726, !434, !731, !350}
!842 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEmc", scope: !157, file: !158, line: 1045, type: !843, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!843 = !DISubroutineType(types: !844)
!844 = !{!726, !434, !731, !189, !350}
!845 = !DISubprogram(name: "insert", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEESt16initializer_listIcE", scope: !157, file: !158, line: 1066, type: !846, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!846 = !DISubroutineType(types: !847)
!847 = !{!726, !434, !731, !674}
!848 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm", scope: !157, file: !158, line: 1070, type: !849, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!849 = !DISubroutineType(types: !850)
!850 = !{!708, !434, !189, !189}
!851 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEE", scope: !157, file: !158, line: 1072, type: !852, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!726, !434, !731}
!854 = !DISubprogram(name: "erase", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseENS_11__wrap_iterIPKcEES9_", scope: !157, file: !158, line: 1074, type: !855, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!855 = !DISubroutineType(types: !856)
!856 = !{!726, !434, !731, !731}
!857 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_", scope: !157, file: !158, line: 1077, type: !858, isLocal: false, isDefinition: false, scopeLine: 1077, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!858 = !DISubroutineType(types: !859)
!859 = !{!708, !434, !189, !189, !444}
!860 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmNS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 1079, type: !861, isLocal: false, isDefinition: false, scopeLine: 1079, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!861 = !DISubroutineType(types: !862)
!862 = !{!708, !434, !189, !189, !483}
!863 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmRKS5_mm", scope: !157, file: !158, line: 1080, type: !864, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!708, !434, !189, !189, !444, !189, !189}
!866 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm", scope: !157, file: !158, line: 1089, type: !867, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!867 = !DISubroutineType(types: !868)
!868 = !{!708, !434, !189, !189, !718, !189}
!869 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKc", scope: !157, file: !158, line: 1090, type: !870, isLocal: false, isDefinition: false, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!870 = !DISubroutineType(types: !871)
!871 = !{!708, !434, !189, !189, !718}
!872 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmmc", scope: !157, file: !158, line: 1091, type: !873, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!873 = !DISubroutineType(types: !874)
!874 = !{!708, !434, !189, !189, !189, !350}
!875 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_RKS5_", scope: !157, file: !158, line: 1093, type: !876, isLocal: false, isDefinition: false, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!876 = !DISubroutineType(types: !877)
!877 = !{!708, !434, !731, !731, !444}
!878 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_NS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 1095, type: !879, isLocal: false, isDefinition: false, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!879 = !DISubroutineType(types: !880)
!880 = !{!708, !434, !731, !731, !483}
!881 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_m", scope: !157, file: !158, line: 1097, type: !882, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!882 = !DISubroutineType(types: !883)
!883 = !{!708, !434, !731, !731, !718, !189}
!884 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_S8_", scope: !157, file: !158, line: 1099, type: !885, isLocal: false, isDefinition: false, scopeLine: 1099, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!885 = !DISubroutineType(types: !886)
!886 = !{!708, !434, !731, !731, !718}
!887 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_mc", scope: !157, file: !158, line: 1101, type: !888, isLocal: false, isDefinition: false, scopeLine: 1101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!888 = !DISubroutineType(types: !889)
!889 = !{!708, !434, !731, !731, !189, !350}
!890 = !DISubprogram(name: "replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceENS_11__wrap_iterIPKcEES9_St16initializer_listIcE", scope: !157, file: !158, line: 1112, type: !891, isLocal: false, isDefinition: false, scopeLine: 1112, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!891 = !DISubroutineType(types: !892)
!892 = !{!708, !434, !731, !731, !674}
!893 = !DISubprogram(name: "copy", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4copyEPcmm", scope: !157, file: !158, line: 1116, type: !894, isLocal: false, isDefinition: false, scopeLine: 1116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!894 = !DISubroutineType(types: !895)
!895 = !{!189, !704, !896, !189, !189}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!897 = !DISubprogram(name: "substr", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrEmm", scope: !157, file: !158, line: 1118, type: !898, isLocal: false, isDefinition: false, scopeLine: 1118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!898 = !DISubroutineType(types: !899)
!899 = !{!157, !704, !189, !189}
!900 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4swapERS5_", scope: !157, file: !158, line: 1121, type: !901, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !434, !708}
!903 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv", scope: !157, file: !158, line: 1130, type: !904, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!718, !704}
!906 = !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !157, file: !158, line: 1132, type: !904, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!907 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv", scope: !157, file: !158, line: 1139, type: !908, isLocal: false, isDefinition: false, scopeLine: 1139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!908 = !DISubroutineType(types: !909)
!909 = !{!440, !704}
!910 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findERKS5_m", scope: !157, file: !158, line: 1142, type: !911, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!911 = !DISubroutineType(types: !912)
!912 = !{!189, !704, !444, !189}
!913 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findENS_17basic_string_viewIcS2_EEm", scope: !157, file: !158, line: 1144, type: !914, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!914 = !DISubroutineType(types: !915)
!915 = !{!189, !704, !483, !189}
!916 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcmm", scope: !157, file: !158, line: 1145, type: !917, isLocal: false, isDefinition: false, scopeLine: 1145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!917 = !DISubroutineType(types: !918)
!918 = !{!189, !704, !718, !189, !189}
!919 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEPKcm", scope: !157, file: !158, line: 1147, type: !920, isLocal: false, isDefinition: false, scopeLine: 1147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!920 = !DISubroutineType(types: !921)
!921 = !{!189, !704, !718, !189}
!922 = !DISubprogram(name: "find", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm", scope: !157, file: !158, line: 1148, type: !923, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!923 = !DISubroutineType(types: !924)
!924 = !{!189, !704, !350, !189}
!925 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindERKS5_m", scope: !157, file: !158, line: 1151, type: !911, isLocal: false, isDefinition: false, scopeLine: 1151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!926 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindENS_17basic_string_viewIcS2_EEm", scope: !157, file: !158, line: 1153, type: !914, isLocal: false, isDefinition: false, scopeLine: 1153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!927 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcmm", scope: !157, file: !158, line: 1154, type: !917, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!928 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEPKcm", scope: !157, file: !158, line: 1156, type: !920, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!929 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm", scope: !157, file: !158, line: 1157, type: !923, isLocal: false, isDefinition: false, scopeLine: 1157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!930 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofERKS5_m", scope: !157, file: !158, line: 1160, type: !911, isLocal: false, isDefinition: false, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!931 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofENS_17basic_string_viewIcS2_EEm", scope: !157, file: !158, line: 1162, type: !914, isLocal: false, isDefinition: false, scopeLine: 1162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!932 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcmm", scope: !157, file: !158, line: 1163, type: !917, isLocal: false, isDefinition: false, scopeLine: 1163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!933 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEPKcm", scope: !157, file: !158, line: 1165, type: !920, isLocal: false, isDefinition: false, scopeLine: 1165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!934 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13find_first_ofEcm", scope: !157, file: !158, line: 1167, type: !923, isLocal: false, isDefinition: false, scopeLine: 1167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!935 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofERKS5_m", scope: !157, file: !158, line: 1170, type: !911, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!936 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofENS_17basic_string_viewIcS2_EEm", scope: !157, file: !158, line: 1172, type: !914, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!937 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcmm", scope: !157, file: !158, line: 1173, type: !917, isLocal: false, isDefinition: false, scopeLine: 1173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!938 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEPKcm", scope: !157, file: !158, line: 1175, type: !920, isLocal: false, isDefinition: false, scopeLine: 1175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!939 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12find_last_ofEcm", scope: !157, file: !158, line: 1177, type: !923, isLocal: false, isDefinition: false, scopeLine: 1177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!940 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofERKS5_m", scope: !157, file: !158, line: 1180, type: !911, isLocal: false, isDefinition: false, scopeLine: 1180, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!941 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofENS_17basic_string_viewIcS2_EEm", scope: !157, file: !158, line: 1182, type: !914, isLocal: false, isDefinition: false, scopeLine: 1182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!942 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcmm", scope: !157, file: !158, line: 1183, type: !917, isLocal: false, isDefinition: false, scopeLine: 1183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!943 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEPKcm", scope: !157, file: !158, line: 1185, type: !920, isLocal: false, isDefinition: false, scopeLine: 1185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!944 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofEcm", scope: !157, file: !158, line: 1187, type: !923, isLocal: false, isDefinition: false, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!945 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofERKS5_m", scope: !157, file: !158, line: 1190, type: !911, isLocal: false, isDefinition: false, scopeLine: 1190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!946 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofENS_17basic_string_viewIcS2_EEm", scope: !157, file: !158, line: 1192, type: !914, isLocal: false, isDefinition: false, scopeLine: 1192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!947 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcmm", scope: !157, file: !158, line: 1193, type: !917, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!948 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEPKcm", scope: !157, file: !158, line: 1195, type: !920, isLocal: false, isDefinition: false, scopeLine: 1195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!949 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofEcm", scope: !157, file: !158, line: 1197, type: !923, isLocal: false, isDefinition: false, scopeLine: 1197, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!950 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_", scope: !157, file: !158, line: 1200, type: !951, isLocal: false, isDefinition: false, scopeLine: 1200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!951 = !DISubroutineType(types: !952)
!952 = !{!17, !704, !444}
!953 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareENS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 1202, type: !954, isLocal: false, isDefinition: false, scopeLine: 1202, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!954 = !DISubroutineType(types: !955)
!955 = !{!17, !704, !483}
!956 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmNS_17basic_string_viewIcS2_EE", scope: !157, file: !158, line: 1204, type: !957, isLocal: false, isDefinition: false, scopeLine: 1204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!957 = !DISubroutineType(types: !958)
!958 = !{!17, !704, !189, !189, !483}
!959 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_", scope: !157, file: !158, line: 1206, type: !960, isLocal: false, isDefinition: false, scopeLine: 1206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!960 = !DISubroutineType(types: !961)
!961 = !{!17, !704, !189, !189, !444}
!962 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmRKS5_mm", scope: !157, file: !158, line: 1207, type: !963, isLocal: false, isDefinition: false, scopeLine: 1207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!963 = !DISubroutineType(types: !964)
!964 = !{!17, !704, !189, !189, !444, !189, !189}
!965 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc", scope: !157, file: !158, line: 1216, type: !966, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!966 = !DISubroutineType(types: !967)
!967 = !{!17, !704, !718}
!968 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKc", scope: !157, file: !158, line: 1217, type: !969, isLocal: false, isDefinition: false, scopeLine: 1217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!17, !704, !189, !189, !718}
!971 = !DISubprogram(name: "compare", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm", scope: !157, file: !158, line: 1218, type: !972, isLocal: false, isDefinition: false, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!972 = !DISubroutineType(types: !973)
!973 = !{!17, !704, !189, !189, !718, !189}
!974 = !DISubprogram(name: "__invariants", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE12__invariantsEv", scope: !157, file: !158, line: 1220, type: !767, isLocal: false, isDefinition: false, scopeLine: 1220, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!975 = !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !157, file: !158, line: 1223, type: !767, isLocal: false, isDefinition: false, scopeLine: 1223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!976 = !DISubprogram(name: "__alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !157, file: !158, line: 1237, type: !977, isLocal: false, isDefinition: false, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DISubroutineType(types: !978)
!978 = !{!979, !434}
!979 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !440, size: 64)
!980 = !DISubprogram(name: "__alloc", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv", scope: !157, file: !158, line: 1240, type: !981, isLocal: false, isDefinition: false, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DISubroutineType(types: !982)
!982 = !{!438, !704}
!983 = !DISubprogram(name: "__set_short_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm", scope: !157, file: !158, line: 1264, type: !761, isLocal: false, isDefinition: false, scopeLine: 1264, flags: DIFlagPrototyped, isOptimized: false)
!984 = !DISubprogram(name: "__get_short_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv", scope: !157, file: !158, line: 1272, type: !752, isLocal: false, isDefinition: false, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DISubprogram(name: "__set_long_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm", scope: !157, file: !158, line: 1282, type: !761, isLocal: false, isDefinition: false, scopeLine: 1282, flags: DIFlagPrototyped, isOptimized: false)
!986 = !DISubprogram(name: "__get_long_size", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv", scope: !157, file: !158, line: 1285, type: !752, isLocal: false, isDefinition: false, scopeLine: 1285, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DISubprogram(name: "__set_size", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm", scope: !157, file: !158, line: 1288, type: !761, isLocal: false, isDefinition: false, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: false)
!988 = !DISubprogram(name: "__set_long_cap", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm", scope: !157, file: !158, line: 1292, type: !761, isLocal: false, isDefinition: false, scopeLine: 1292, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DISubprogram(name: "__get_long_cap", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv", scope: !157, file: !158, line: 1295, type: !752, isLocal: false, isDefinition: false, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: false)
!990 = !DISubprogram(name: "__set_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc", scope: !157, file: !158, line: 1299, type: !991, isLocal: false, isDefinition: false, scopeLine: 1299, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !434, !340}
!993 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !157, file: !158, line: 1302, type: !994, isLocal: false, isDefinition: false, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: false)
!994 = !DISubroutineType(types: !995)
!995 = !{!340, !434}
!996 = !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !157, file: !158, line: 1305, type: !997, isLocal: false, isDefinition: false, scopeLine: 1305, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !704}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !157, file: !158, line: 648, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !191, file: !174, line: 1512, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1002, file: !174, line: 1048, baseType: !221)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__const_pointer<char, char *, std::__1::allocator<char>, true>", scope: !8, file: !174, line: 1046, size: 8, elements: !199, templateParams: !1003, identifier: "_ZTSNSt3__115__const_pointerIcPcNS_9allocatorIcEELb1EEE")
!1003 = !{!201, !257, !258, !170}
!1004 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !157, file: !158, line: 1308, type: !994, isLocal: false, isDefinition: false, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: false)
!1005 = !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !157, file: !158, line: 1311, type: !997, isLocal: false, isDefinition: false, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: false)
!1006 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !157, file: !158, line: 1314, type: !994, isLocal: false, isDefinition: false, scopeLine: 1314, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !157, file: !158, line: 1317, type: !997, isLocal: false, isDefinition: false, scopeLine: 1317, flags: DIFlagPrototyped, isOptimized: false)
!1008 = !DISubprogram(name: "__zero", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv", scope: !157, file: !158, line: 1321, type: !432, isLocal: false, isDefinition: false, scopeLine: 1321, flags: DIFlagPrototyped, isOptimized: false)
!1009 = !DISubprogram(name: "__recommend", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm", scope: !157, file: !158, line: 1334, type: !1010, isLocal: false, isDefinition: false, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: false)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!189, !189}
!1012 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcmm", scope: !157, file: !158, line: 1340, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1340, flags: DIFlagPrototyped, isOptimized: false)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !434, !718, !189, !189}
!1015 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm", scope: !157, file: !158, line: 1342, type: !1016, isLocal: false, isDefinition: false, scopeLine: 1342, flags: DIFlagPrototyped, isOptimized: false)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !434, !718, !189}
!1018 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc", scope: !157, file: !158, line: 1344, type: !758, isLocal: false, isDefinition: false, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DISubprogram(name: "__grow_by", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm", scope: !157, file: !158, line: 1364, type: !1020, isLocal: false, isDefinition: false, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: false)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !434, !189, !189, !189, !189, !189, !189}
!1022 = !DISubprogram(name: "__grow_by_and_replace", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc", scope: !157, file: !158, line: 1366, type: !1023, isLocal: false, isDefinition: false, scopeLine: 1366, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !434, !189, !189, !189, !189, !189, !189, !718}
!1025 = !DISubprogram(name: "__erase_to_end", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endEm", scope: !157, file: !158, line: 1371, type: !761, isLocal: false, isDefinition: false, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: false)
!1026 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_", scope: !157, file: !158, line: 1374, type: !442, isLocal: false, isDefinition: false, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb1EEE", scope: !157, file: !158, line: 1379, type: !1028, isLocal: false, isDefinition: false, scopeLine: 1379, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !434, !444, !291}
!1030 = !DISubprogram(name: "__copy_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__copy_assign_allocERKS5_NS_17integral_constantIbLb0EEE", scope: !157, file: !158, line: 1406, type: !1031, isLocal: false, isDefinition: false, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !434, !444, !308}
!1033 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb0EEE", scope: !157, file: !158, line: 1411, type: !1034, isLocal: false, isDefinition: false, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: false)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !434, !708, !308}
!1036 = !DISubprogram(name: "__move_assign", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignERS5_NS_17integral_constantIbLb1EEE", scope: !157, file: !158, line: 1414, type: !1037, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !434, !708, !291}
!1039 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_", scope: !157, file: !158, line: 1424, type: !901, isLocal: false, isDefinition: false, scopeLine: 1424, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb1EEE", scope: !157, file: !158, line: 1432, type: !1037, isLocal: false, isDefinition: false, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubprogram(name: "__move_assign_alloc", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocERS5_NS_17integral_constantIbLb0EEE", scope: !157, file: !158, line: 1439, type: !1034, isLocal: false, isDefinition: false, scopeLine: 1439, flags: DIFlagPrototyped, isOptimized: false)
!1042 = !DISubprogram(name: "__invalidate_all_iterators", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv", scope: !157, file: !158, line: 1443, type: !432, isLocal: false, isDefinition: false, scopeLine: 1443, flags: DIFlagPrototyped, isOptimized: false)
!1043 = !DISubprogram(name: "__invalidate_iterators_past", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm", scope: !157, file: !158, line: 1444, type: !761, isLocal: false, isDefinition: false, scopeLine: 1444, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !{!617, !618, !1045}
!1045 = !DITemplateTypeParameter(name: "_Allocator", type: !203)
!1046 = !DISubprogram(name: "locale", scope: !119, file: !120, line: 107, type: !1047, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !138, !142, !147, !124}
!1049 = !DISubprogram(name: "locale", scope: !119, file: !120, line: 108, type: !1050, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !138, !142, !153, !124}
!1052 = !DISubprogram(name: "locale", scope: !119, file: !120, line: 111, type: !1053, isLocal: false, isDefinition: false, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !138, !142, !142, !124}
!1055 = !DISubprogram(name: "~locale", scope: !119, file: !120, line: 113, type: !136, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1056 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16localeaSERKS0_", scope: !119, file: !120, line: 115, type: !1057, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!142, !138, !142}
!1059 = !DISubprogram(name: "name", linkageName: "_ZNKSt3__16locale4nameEv", scope: !119, file: !120, line: 122, type: !1060, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!155, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1063 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt3__16localeeqERKS0_", scope: !119, file: !120, line: 123, type: !1064, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!171, !1062, !142}
!1066 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt3__16localeneERKS0_", scope: !119, file: !120, line: 124, type: !1064, isLocal: false, isDefinition: false, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1067 = !DISubprogram(name: "global", linkageName: "_ZNSt3__16locale6globalERKS0_", scope: !119, file: !120, line: 131, type: !1068, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!119, !142}
!1070 = !DISubprogram(name: "classic", linkageName: "_ZNSt3__16locale7classicEv", scope: !119, file: !120, line: 132, type: !1071, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!142}
!1073 = !DISubprogram(name: "__install_ctor", linkageName: "_ZNSt3__16locale14__install_ctorERKS0_PNS0_5facetEl", scope: !119, file: !120, line: 138, type: !1074, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !138, !142, !1076, !58}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "facet", scope: !119, file: !120, line: 147, size: 128, elements: !1078, vtableHolder: !1080, identifier: "_ZTSNSt3__16locale5facetE")
!1078 = !{!1079, !1109, !1113, !1116}
!1079 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1077, baseType: !1080, flags: DIFlagPublic)
!1080 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count", scope: !8, file: !174, line: 3449, size: 128, elements: !1081, vtableHolder: !1080, identifier: "_ZTSNSt3__114__shared_countE")
!1081 = !{!1082, !1083, !1084, !1090, !1094, !1097, !1098, !1101, !1102, !1105}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$__shared_count", scope: !174, file: !174, baseType: !13, size: 64, flags: DIFlagArtificial)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__shared_owners_", scope: !1080, file: !174, line: 3455, baseType: !58, size: 64, offset: 64, flags: DIFlagProtected)
!1084 = !DISubprogram(name: "__shared_count", scope: !1080, file: !174, line: 3451, type: !1085, isLocal: false, isDefinition: false, scopeLine: 3451, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1088 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1090 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__114__shared_countaSERKS0_", scope: !1080, file: !174, line: 3452, type: !1091, isLocal: false, isDefinition: false, scopeLine: 3452, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!1093, !1087, !1088}
!1093 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1080, size: 64)
!1094 = !DISubprogram(name: "~__shared_count", scope: !1080, file: !174, line: 3456, type: !1095, isLocal: false, isDefinition: false, scopeLine: 3456, containingType: !1080, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1087}
!1097 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__114__shared_count16__on_zero_sharedEv", scope: !1080, file: !174, line: 3458, type: !1095, isLocal: false, isDefinition: false, scopeLine: 3458, containingType: !1080, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: false)
!1098 = !DISubprogram(name: "__shared_count", scope: !1080, file: !174, line: 3462, type: !1099, isLocal: false, isDefinition: false, scopeLine: 3462, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1087, !58}
!1101 = !DISubprogram(name: "__add_shared", linkageName: "_ZNSt3__114__shared_count12__add_sharedEv", scope: !1080, file: !174, line: 3471, type: !1095, isLocal: false, isDefinition: false, scopeLine: 3471, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1102 = !DISubprogram(name: "__release_shared", linkageName: "_ZNSt3__114__shared_count16__release_sharedEv", scope: !1080, file: !174, line: 3475, type: !1103, isLocal: false, isDefinition: false, scopeLine: 3475, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!171, !1087}
!1105 = !DISubprogram(name: "use_count", linkageName: "_ZNKSt3__114__shared_count9use_countEv", scope: !1080, file: !174, line: 3484, type: !1106, isLocal: false, isDefinition: false, scopeLine: 3484, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!58, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1109 = !DISubprogram(name: "facet", scope: !1077, file: !120, line: 152, type: !1110, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1112, !75}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1113 = !DISubprogram(name: "~facet", scope: !1077, file: !120, line: 155, type: !1114, isLocal: false, isDefinition: false, scopeLine: 155, containingType: !1077, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !1112}
!1116 = !DISubprogram(name: "__on_zero_shared", linkageName: "_ZNSt3__16locale5facet16__on_zero_sharedEv", scope: !1077, file: !120, line: 160, type: !1114, isLocal: false, isDefinition: false, scopeLine: 160, containingType: !1077, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPrototyped, isOptimized: false)
!1117 = !DISubprogram(name: "__global", linkageName: "_ZNSt3__16locale8__globalEv", scope: !119, file: !120, line: 139, type: !1118, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !119, size: 64)
!1121 = !DISubprogram(name: "has_facet", linkageName: "_ZNKSt3__16locale9has_facetERNS0_2idE", scope: !119, file: !120, line: 140, type: !1122, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!171, !1062, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !119, file: !120, line: 163, size: 128, elements: !1126, identifier: "_ZTSNSt3__16locale2idE")
!1126 = !{!1127, !1145, !1148, !1149, !1153, !1154, !1159, !1160}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "__flag_", scope: !1125, file: !120, line: 165, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "once_flag", scope: !8, file: !1129, line: 571, size: 64, elements: !1130, identifier: "_ZTSNSt3__19once_flagE")
!1129 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/mutex", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1130 = !{!1131, !1132, !1136, !1141}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "__state_", scope: !1128, file: !1129, line: 581, baseType: !79, size: 64, flags: DIFlagPrivate)
!1132 = !DISubprogram(name: "once_flag", scope: !1128, file: !1129, line: 575, type: !1133, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1136 = !DISubprogram(name: "once_flag", scope: !1128, file: !1129, line: 578, type: !1137, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !1135, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1141 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__19once_flagaSERKS0_", scope: !1128, file: !1129, line: 579, type: !1142, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1144, !1135, !1139}
!1144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1128, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1125, file: !120, line: 166, baseType: !1146, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1147, line: 30, baseType: !17)
!1147 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__next_id", scope: !1125, file: !120, line: 168, baseType: !1146, flags: DIFlagStaticMember)
!1149 = !DISubprogram(name: "id", scope: !1125, file: !120, line: 170, type: !1150, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1153 = !DISubprogram(name: "__init", linkageName: "_ZNSt3__16locale2id6__initEv", scope: !1125, file: !120, line: 172, type: !1150, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false)
!1154 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16locale2idaSERKS1_", scope: !1125, file: !120, line: 173, type: !1155, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1152, !1157}
!1157 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1159 = !DISubprogram(name: "id", scope: !1125, file: !120, line: 174, type: !1155, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!1160 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__16locale2id5__getEv", scope: !1125, file: !120, line: 176, type: !1161, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!58, !1152}
!1163 = !DISubprogram(name: "use_facet", linkageName: "_ZNKSt3__16locale9use_facetERNS0_2idE", scope: !119, file: !120, line: 141, type: !1164, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1166, !1062, !1124}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1168 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__18ios_base6getlocEv", scope: !7, file: !6, line: 297, type: !1169, isLocal: false, isDefinition: false, scopeLine: 297, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!119, !95}
!1171 = !DISubprogram(name: "xalloc", linkageName: "_ZNSt3__18ios_base6xallocEv", scope: !7, file: !6, line: 300, type: !15, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1172 = !DISubprogram(name: "iword", linkageName: "_ZNSt3__18ios_base5iwordEi", scope: !7, file: !6, line: 301, type: !1173, isLocal: false, isDefinition: false, scopeLine: 301, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1175, !100, !17}
!1175 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !58, size: 64)
!1176 = !DISubprogram(name: "pword", linkageName: "_ZNSt3__18ios_base5pwordEi", scope: !7, file: !6, line: 302, type: !1177, isLocal: false, isDefinition: false, scopeLine: 302, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1179, !100, !17}
!1179 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !63, size: 64)
!1180 = !DISubprogram(name: "~ios_base", scope: !7, file: !6, line: 305, type: !1181, isLocal: false, isDefinition: false, scopeLine: 305, containingType: !7, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !100}
!1183 = !DISubprogram(name: "register_callback", linkageName: "_ZNSt3__18ios_base17register_callbackEPFvNS0_5eventERS0_iEi", scope: !7, file: !6, line: 310, type: !1184, isLocal: false, isDefinition: false, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !100, !67, !17}
!1186 = !DISubprogram(name: "ios_base", scope: !7, file: !6, line: 313, type: !1187, isLocal: false, isDefinition: false, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !100, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !96, size: 64)
!1190 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__18ios_baseaSERKS0_", scope: !7, file: !6, line: 314, type: !1191, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!71, !100, !1189}
!1193 = !DISubprogram(name: "sync_with_stdio", linkageName: "_ZNSt3__18ios_base15sync_with_stdioEb", scope: !7, file: !6, line: 317, type: !1194, isLocal: false, isDefinition: false, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!171, !171}
!1196 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__18ios_base7rdstateEv", scope: !7, file: !6, line: 319, type: !1197, isLocal: false, isDefinition: false, scopeLine: 319, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!41, !95}
!1199 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__18ios_base5clearEj", scope: !7, file: !6, line: 320, type: !1200, isLocal: false, isDefinition: false, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !100, !41}
!1202 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !7, file: !6, line: 321, type: !1200, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1203 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__18ios_base4goodEv", scope: !7, file: !6, line: 323, type: !1204, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!171, !95}
!1206 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__18ios_base3eofEv", scope: !7, file: !6, line: 324, type: !1204, isLocal: false, isDefinition: false, scopeLine: 324, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1207 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__18ios_base4failEv", scope: !7, file: !6, line: 325, type: !1204, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1208 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__18ios_base3badEv", scope: !7, file: !6, line: 326, type: !1204, isLocal: false, isDefinition: false, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1209 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__18ios_base10exceptionsEv", scope: !7, file: !6, line: 328, type: !1197, isLocal: false, isDefinition: false, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1210 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__18ios_base10exceptionsEj", scope: !7, file: !6, line: 329, type: !1200, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1211 = !DISubprogram(name: "__set_badbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv", scope: !7, file: !6, line: 331, type: !1181, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1212 = !DISubprogram(name: "__set_failbit_and_consider_rethrow", linkageName: "_ZNSt3__18ios_base34__set_failbit_and_consider_rethrowEv", scope: !7, file: !6, line: 332, type: !1181, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1213 = !DISubprogram(name: "ios_base", scope: !7, file: !6, line: 336, type: !1181, isLocal: false, isDefinition: false, scopeLine: 336, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1214 = !DISubprogram(name: "init", linkageName: "_ZNSt3__18ios_base4initEPv", scope: !7, file: !6, line: 339, type: !1215, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !100, !63}
!1217 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !7, file: !6, line: 340, type: !1218, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!63, !95}
!1220 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__18ios_base5rdbufEPv", scope: !7, file: !6, line: 343, type: !1215, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1221 = !DISubprogram(name: "__call_callbacks", linkageName: "_ZNSt3__18ios_base16__call_callbacksENS0_5eventE", scope: !7, file: !6, line: 349, type: !1222, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !100, !5}
!1224 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__18ios_base7copyfmtERKS0_", scope: !7, file: !6, line: 350, type: !1187, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1225 = !DISubprogram(name: "move", linkageName: "_ZNSt3__18ios_base4moveERS0_", scope: !7, file: !6, line: 351, type: !1226, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !100, !71}
!1228 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__18ios_base4swapERS0_", scope: !7, file: !6, line: 352, type: !1226, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1229 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__18ios_base9set_rdbufEPv", scope: !7, file: !6, line: 355, type: !1215, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1230 = !{!1231, !1232, !1233}
!1231 = !DIEnumerator(name: "erase_event", value: 0)
!1232 = !DIEnumerator(name: "imbue_event", value: 1)
!1233 = !DIEnumerator(name: "copyfmt_event", value: 2)
!1234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "seekdir", scope: !7, file: !6, line: 270, size: 32, elements: !1235, identifier: "_ZTSNSt3__18ios_base7seekdirE")
!1235 = !{!1236, !1237, !1238}
!1236 = !DIEnumerator(name: "beg", value: 0)
!1237 = !DIEnumerator(name: "cur", value: 1)
!1238 = !DIEnumerator(name: "end", value: 2)
!1239 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !157, file: !158, line: 710, size: 32, elements: !1240, identifier: "_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt_E")
!1240 = !{!1241}
!1241 = !DIEnumerator(name: "__short_mask", value: 1)
!1242 = !{!1243, !171, !1283, !654, !1597, !7}
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Ip", scope: !1245, file: !1244, line: 724, baseType: !1559)
!1244 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ostream", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1245 = distinct !DISubprogram(name: "__put_character_sequence<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m", scope: !8, file: !1244, line: 714, type: !1246, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !616, variables: !199)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1248, !1248, !147, !75}
!1248 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::__1::char_traits<char> >", scope: !8, file: !1244, line: 1084, size: 1280, elements: !1250, vtableHolder: !1249, templateParams: !616, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE")
!1250 = !{!1251, !1443, !1444, !1448, !1451, !1455, !1458, !1461, !1466, !1469, !1475, !1481, !1487, !1490, !1494, !1498, !1501, !1504, !1507, !1510, !1513, !1517, !1521, !1525, !1529, !1532, !1535, !1539, !1544, !1547, !1551, !1554, !1558}
!1251 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1249, baseType: !1252, offset: 24, flags: DIFlagPublic | DIFlagVirtual)
!1252 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::__1::char_traits<char> >", scope: !8, file: !1253, line: 483, size: 1216, elements: !1254, vtableHolder: !7, templateParams: !616, identifier: "_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE")
!1253 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/streambuf", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1254 = !{!1255, !1256, !1258, !1260, !1265, !1266, !1269, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1396, !1399, !1402, !1405, !1408, !1411, !1416, !1420, !1423, !1426, !1429, !1432, !1433, !1434, !1437, !1441, !1442}
!1255 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1252, baseType: !7, flags: DIFlagPublic)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "__tie_", scope: !1252, file: !6, line: 669, baseType: !1257, size: 64, offset: 1088)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "__fill_", scope: !1252, file: !6, line: 670, baseType: !1259, size: 32, offset: 1152)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1252, file: !6, line: 591, baseType: !654)
!1260 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbEv", scope: !1252, file: !6, line: 605, type: !1261, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!171, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1265 = !DISubprogram(name: "operator!", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEntEv", scope: !1252, file: !6, line: 608, type: !1261, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1266 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE7rdstateEv", scope: !1252, file: !6, line: 609, type: !1267, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!41, !1263}
!1269 = !DISubprogram(name: "clear", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj", scope: !1252, file: !6, line: 610, type: !1270, isLocal: false, isDefinition: false, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !1272, !41}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1273 = !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1252, file: !6, line: 611, type: !1270, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1274 = !DISubprogram(name: "good", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodEv", scope: !1252, file: !6, line: 612, type: !1261, isLocal: false, isDefinition: false, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1275 = !DISubprogram(name: "eof", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3eofEv", scope: !1252, file: !6, line: 613, type: !1261, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1276 = !DISubprogram(name: "fail", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv", scope: !1252, file: !6, line: 614, type: !1261, isLocal: false, isDefinition: false, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1277 = !DISubprogram(name: "bad", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3badEv", scope: !1252, file: !6, line: 615, type: !1261, isLocal: false, isDefinition: false, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1278 = !DISubprogram(name: "exceptions", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEv", scope: !1252, file: !6, line: 617, type: !1267, isLocal: false, isDefinition: false, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1279 = !DISubprogram(name: "exceptions", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsEj", scope: !1252, file: !6, line: 618, type: !1270, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1280 = !DISubprogram(name: "basic_ios", scope: !1252, file: !6, line: 622, type: !1281, isLocal: false, isDefinition: false, scopeLine: 622, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1272, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_streambuf<char, std::__1::char_traits<char> >", scope: !8, file: !1253, line: 480, size: 512, elements: !1285, vtableHolder: !1284, templateParams: !616, identifier: "_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE")
!1285 = !{!1286, !1287, !1288, !1291, !1292, !1293, !1294, !1295, !1296, !1300, !1303, !1308, !1311, !1322, !1325, !1328, !1331, !1335, !1336, !1337, !1340, !1343, !1344, !1345, !1350, !1351, !1355, !1359, !1362, !1365, !1366, !1367, !1370, !1373, !1374, !1375, !1376, !1377, !1380, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1394, !1395}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_streambuf", scope: !1253, file: !1253, baseType: !13, size: 64, flags: DIFlagArtificial)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "__loc_", scope: !1284, file: !1253, line: 287, baseType: !119, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "__binp_", scope: !1284, file: !1253, line: 288, baseType: !1289, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1284, file: !1253, line: 126, baseType: !149)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__ninp_", scope: !1284, file: !1253, line: 289, baseType: !1289, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__einp_", scope: !1284, file: !1253, line: 290, baseType: !1289, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "__bout_", scope: !1284, file: !1253, line: 291, baseType: !1289, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "__nout_", scope: !1284, file: !1253, line: 292, baseType: !1289, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__eout_", scope: !1284, file: !1253, line: 293, baseType: !1289, size: 64, offset: 448)
!1296 = !DISubprogram(name: "~basic_streambuf", scope: !1284, file: !1253, line: 132, type: !1297, isLocal: false, isDefinition: false, scopeLine: 132, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1300 = !DISubprogram(name: "pubimbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8pubimbueERKNS_6localeE", scope: !1284, file: !1253, line: 136, type: !1301, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!119, !1299, !142}
!1303 = !DISubprogram(name: "getloc", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv", scope: !1284, file: !1253, line: 144, type: !1304, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!119, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1308 = !DISubprogram(name: "pubsetbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pubsetbufEPcl", scope: !1284, file: !1253, line: 148, type: !1309, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1283, !1299, !1289, !55}
!1311 = !DISubprogram(name: "pubseekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekoffExNS_8ios_base7seekdirEj", scope: !1284, file: !1253, line: 152, type: !1312, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1314, !1299, !1318, !1234, !47}
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1284, file: !1253, line: 129, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !619, file: !620, line: 202, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "streampos", scope: !8, file: !156, line: 176, baseType: !1317)
!1317 = !DICompositeType(tag: DW_TAG_class_type, name: "fpos<__mbstate_t>", scope: !8, file: !156, line: 175, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__14fposI11__mbstate_tEE")
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1284, file: !1253, line: 130, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !619, file: !620, line: 201, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamoff", scope: !8, file: !156, line: 187, baseType: !1321)
!1321 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1322 = !DISubprogram(name: "pubseekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE10pubseekposENS_4fposI11__mbstate_tEEj", scope: !1284, file: !1253, line: 157, type: !1323, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!1314, !1299, !1314, !47}
!1325 = !DISubprogram(name: "pubsync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncEv", scope: !1284, file: !1253, line: 162, type: !1326, isLocal: false, isDefinition: false, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!17, !1299}
!1328 = !DISubprogram(name: "in_avail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8in_availEv", scope: !1284, file: !1253, line: 167, type: !1329, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!55, !1299}
!1331 = !DISubprogram(name: "snextc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6snextcEv", scope: !1284, file: !1253, line: 174, type: !1332, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1334, !1299}
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1284, file: !1253, line: 128, baseType: !654)
!1335 = !DISubprogram(name: "sbumpc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv", scope: !1284, file: !1253, line: 181, type: !1332, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1336 = !DISubprogram(name: "sgetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv", scope: !1284, file: !1253, line: 188, type: !1332, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1337 = !DISubprogram(name: "sgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetnEPcl", scope: !1284, file: !1253, line: 195, type: !1338, isLocal: false, isDefinition: false, scopeLine: 195, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!55, !1299, !1289, !55}
!1340 = !DISubprogram(name: "sputbackc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9sputbackcEc", scope: !1284, file: !1253, line: 200, type: !1341, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!1334, !1299, !1290}
!1343 = !DISubprogram(name: "sungetc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7sungetcEv", scope: !1284, file: !1253, line: 207, type: !1332, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1344 = !DISubprogram(name: "sputc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc", scope: !1284, file: !1253, line: 215, type: !1341, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1345 = !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1284, file: !1253, line: 223, type: !1346, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!55, !1299, !1348, !55}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1350 = !DISubprogram(name: "basic_streambuf", scope: !1284, file: !1253, line: 227, type: !1297, isLocal: false, isDefinition: false, scopeLine: 227, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1351 = !DISubprogram(name: "basic_streambuf", scope: !1284, file: !1253, line: 228, type: !1352, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1299, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1307, size: 64)
!1355 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEaSERKS3_", scope: !1284, file: !1253, line: 229, type: !1356, isLocal: false, isDefinition: false, scopeLine: 229, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1358, !1299, !1354}
!1358 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1284, size: 64)
!1359 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_", scope: !1284, file: !1253, line: 230, type: !1360, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1299, !1358}
!1362 = !DISubprogram(name: "eback", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv", scope: !1284, file: !1253, line: 233, type: !1363, isLocal: false, isDefinition: false, scopeLine: 233, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1289, !1306}
!1365 = !DISubprogram(name: "gptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv", scope: !1284, file: !1253, line: 234, type: !1363, isLocal: false, isDefinition: false, scopeLine: 234, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1366 = !DISubprogram(name: "egptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv", scope: !1284, file: !1253, line: 235, type: !1363, isLocal: false, isDefinition: false, scopeLine: 235, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1367 = !DISubprogram(name: "gbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi", scope: !1284, file: !1253, line: 238, type: !1368, isLocal: false, isDefinition: false, scopeLine: 238, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1299, !17}
!1370 = !DISubprogram(name: "setg", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_", scope: !1284, file: !1253, line: 241, type: !1371, isLocal: false, isDefinition: false, scopeLine: 241, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !1299, !1289, !1289, !1289}
!1373 = !DISubprogram(name: "pbase", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv", scope: !1284, file: !1253, line: 248, type: !1363, isLocal: false, isDefinition: false, scopeLine: 248, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1374 = !DISubprogram(name: "pptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv", scope: !1284, file: !1253, line: 249, type: !1363, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1375 = !DISubprogram(name: "epptr", linkageName: "_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv", scope: !1284, file: !1253, line: 250, type: !1363, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1376 = !DISubprogram(name: "pbump", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi", scope: !1284, file: !1253, line: 253, type: !1368, isLocal: false, isDefinition: false, scopeLine: 253, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1377 = !DISubprogram(name: "setp", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_", scope: !1284, file: !1253, line: 256, type: !1378, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !1299, !1289, !1289}
!1380 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1284, file: !1253, line: 263, type: !1381, isLocal: false, isDefinition: false, scopeLine: 263, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1299, !142}
!1383 = !DISubprogram(name: "setbuf", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl", scope: !1284, file: !1253, line: 266, type: !1309, isLocal: false, isDefinition: false, scopeLine: 266, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1384 = !DISubprogram(name: "seekoff", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj", scope: !1284, file: !1253, line: 267, type: !1312, isLocal: false, isDefinition: false, scopeLine: 267, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1385 = !DISubprogram(name: "seekpos", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj", scope: !1284, file: !1253, line: 269, type: !1323, isLocal: false, isDefinition: false, scopeLine: 269, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1386 = !DISubprogram(name: "sync", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv", scope: !1284, file: !1253, line: 271, type: !1326, isLocal: false, isDefinition: false, scopeLine: 271, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1387 = !DISubprogram(name: "showmanyc", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv", scope: !1284, file: !1253, line: 274, type: !1329, isLocal: false, isDefinition: false, scopeLine: 274, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1388 = !DISubprogram(name: "xsgetn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl", scope: !1284, file: !1253, line: 275, type: !1338, isLocal: false, isDefinition: false, scopeLine: 275, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1389 = !DISubprogram(name: "underflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9underflowEv", scope: !1284, file: !1253, line: 276, type: !1332, isLocal: false, isDefinition: false, scopeLine: 276, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1390 = !DISubprogram(name: "uflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv", scope: !1284, file: !1253, line: 277, type: !1332, isLocal: false, isDefinition: false, scopeLine: 277, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1391 = !DISubprogram(name: "pbackfail", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9pbackfailEi", scope: !1284, file: !1253, line: 280, type: !1392, isLocal: false, isDefinition: false, scopeLine: 280, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 11, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1334, !1299, !1334}
!1394 = !DISubprogram(name: "xsputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl", scope: !1284, file: !1253, line: 283, type: !1346, isLocal: false, isDefinition: false, scopeLine: 283, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 12, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1395 = !DISubprogram(name: "overflow", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE8overflowEi", scope: !1284, file: !1253, line: 284, type: !1392, isLocal: false, isDefinition: false, scopeLine: 284, containingType: !1284, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 13, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1396 = !DISubprogram(name: "~basic_ios", scope: !1252, file: !6, line: 623, type: !1397, isLocal: false, isDefinition: false, scopeLine: 623, containingType: !1252, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1272}
!1399 = !DISubprogram(name: "tie", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEv", scope: !1252, file: !6, line: 627, type: !1400, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1257, !1263}
!1402 = !DISubprogram(name: "tie", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE3tieEPNS_13basic_ostreamIcS2_EE", scope: !1252, file: !6, line: 629, type: !1403, isLocal: false, isDefinition: false, scopeLine: 629, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1257, !1272, !1257}
!1405 = !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1252, file: !6, line: 632, type: !1406, isLocal: false, isDefinition: false, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1283, !1263}
!1408 = !DISubprogram(name: "rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEPNS_15basic_streambufIcS2_EE", scope: !1252, file: !6, line: 634, type: !1409, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1283, !1272, !1283}
!1411 = !DISubprogram(name: "copyfmt", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_", scope: !1252, file: !6, line: 636, type: !1412, isLocal: false, isDefinition: false, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !1272, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1252, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1264, size: 64)
!1416 = !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1252, file: !6, line: 639, type: !1417, isLocal: false, isDefinition: false, scopeLine: 639, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1419, !1263}
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1252, file: !6, line: 588, baseType: !149)
!1420 = !DISubprogram(name: "fill", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEc", scope: !1252, file: !6, line: 641, type: !1421, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1419, !1272, !1419}
!1423 = !DISubprogram(name: "imbue", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5imbueERKNS_6localeE", scope: !1252, file: !6, line: 644, type: !1424, isLocal: false, isDefinition: false, scopeLine: 644, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!119, !1272, !142}
!1426 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE6narrowEcc", scope: !1252, file: !6, line: 647, type: !1427, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!149, !1263, !1419, !149}
!1429 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1252, file: !6, line: 649, type: !1430, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1419, !1263, !149}
!1432 = !DISubprogram(name: "basic_ios", scope: !1252, file: !6, line: 653, type: !1397, isLocal: false, isDefinition: false, scopeLine: 653, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1433 = !DISubprogram(name: "init", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE", scope: !1252, file: !6, line: 656, type: !1281, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1434 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveERS3_", scope: !1252, file: !6, line: 659, type: !1435, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !1272, !1414}
!1437 = !DISubprogram(name: "move", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4moveEOS3_", scope: !1252, file: !6, line: 662, type: !1438, isLocal: false, isDefinition: false, scopeLine: 662, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1272, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1252, size: 64)
!1441 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4swapERS3_", scope: !1252, file: !6, line: 665, type: !1435, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1442 = !DISubprogram(name: "set_rdbuf", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE9set_rdbufEPNS_15basic_streambufIcS2_EE", scope: !1252, file: !6, line: 667, type: !1281, isLocal: false, isDefinition: false, scopeLine: 667, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$basic_ostream", scope: !1244, file: !1244, baseType: !13, size: 64, flags: DIFlagArtificial)
!1444 = !DISubprogram(name: "basic_ostream", scope: !1249, file: !1244, line: 164, type: !1445, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !1447, !1283}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1448 = !DISubprogram(name: "~basic_ostream", scope: !1249, file: !1244, line: 166, type: !1449, isLocal: false, isDefinition: false, scopeLine: 166, containingType: !1249, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !1447}
!1451 = !DISubprogram(name: "basic_ostream", scope: !1249, file: !1244, line: 170, type: !1452, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1447, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1249, size: 64)
!1455 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSEOS3_", scope: !1249, file: !1244, line: 174, type: !1456, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1248, !1447, !1454}
!1458 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE4swapERS3_", scope: !1249, file: !1244, line: 177, type: !1459, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1447, !1248}
!1461 = !DISubprogram(name: "basic_ostream", scope: !1249, file: !1244, line: 181, type: !1462, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1447, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1466 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEaSERKS3_", scope: !1249, file: !1244, line: 182, type: !1467, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!1248, !1447, !1464}
!1469 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E", scope: !1249, file: !1244, line: 194, type: !1470, isLocal: false, isDefinition: false, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1248, !1447, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1248, !1248}
!1475 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_9basic_iosIcS2_EES6_E", scope: !1249, file: !1244, line: 198, type: !1476, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1248, !1447, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1414, !1414}
!1481 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E", scope: !1249, file: !1244, line: 203, type: !1482, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!1248, !1447, !1484}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!71, !71}
!1487 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb", scope: !1249, file: !1244, line: 206, type: !1488, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1248, !1447, !171}
!1490 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEs", scope: !1249, file: !1244, line: 207, type: !1491, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1248, !1447, !1493}
!1493 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1494 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt", scope: !1249, file: !1244, line: 208, type: !1495, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!1248, !1447, !1497}
!1497 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1498 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi", scope: !1249, file: !1244, line: 209, type: !1499, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!1248, !1447, !17}
!1501 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj", scope: !1249, file: !1244, line: 210, type: !1502, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1248, !1447, !21}
!1504 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl", scope: !1249, file: !1244, line: 211, type: !1505, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!1248, !1447, !58}
!1507 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm", scope: !1249, file: !1244, line: 212, type: !1508, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1248, !1447, !79}
!1510 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx", scope: !1249, file: !1244, line: 213, type: !1511, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1248, !1447, !1321}
!1513 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy", scope: !1249, file: !1244, line: 214, type: !1514, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1248, !1447, !1516}
!1516 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1517 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf", scope: !1249, file: !1244, line: 215, type: !1518, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1248, !1447, !1520}
!1520 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1521 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd", scope: !1249, file: !1244, line: 216, type: !1522, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1248, !1447, !1524}
!1524 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1525 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEe", scope: !1249, file: !1244, line: 217, type: !1526, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1248, !1447, !1528}
!1528 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1529 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv", scope: !1249, file: !1244, line: 218, type: !1530, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1248, !1447, !232}
!1532 = !DISubprogram(name: "operator<<", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPNS_15basic_streambufIcS2_EE", scope: !1249, file: !1244, line: 219, type: !1533, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1248, !1447, !1283}
!1535 = !DISubprogram(name: "put", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc", scope: !1249, file: !1244, line: 222, type: !1536, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1248, !1447, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1249, file: !1244, line: 156, baseType: !149)
!1539 = !DISubprogram(name: "write", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl", scope: !1249, file: !1244, line: 223, type: !1540, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1248, !1447, !1542, !55}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1544 = !DISubprogram(name: "flush", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv", scope: !1249, file: !1244, line: 224, type: !1545, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1248, !1447}
!1547 = !DISubprogram(name: "tellp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5tellpEv", scope: !1249, file: !1244, line: 228, type: !1548, isLocal: false, isDefinition: false, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1550, !1447}
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos_type", scope: !1249, file: !1244, line: 159, baseType: !1315)
!1551 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpENS_4fposI11__mbstate_tEE", scope: !1249, file: !1244, line: 230, type: !1552, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1248, !1447, !1550}
!1554 = !DISubprogram(name: "seekp", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5seekpExNS_8ios_base7seekdirE", scope: !1249, file: !1244, line: 232, type: !1555, isLocal: false, isDefinition: false, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1248, !1447, !1557, !1234}
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_type", scope: !1249, file: !1244, line: 160, baseType: !1319)
!1558 = !DISubprogram(name: "basic_ostream", scope: !1249, file: !1244, line: 236, type: !1449, isLocal: false, isDefinition: false, scopeLine: 236, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!1559 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ostreambuf_iterator<char, std::__1::char_traits<char> >", scope: !8, file: !528, line: 1020, size: 64, elements: !1560, templateParams: !616, identifier: "_ZTSNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEE")
!1560 = !{!1561, !1569, !1572, !1578, !1581, !1585, !1588, !1589, !1592}
!1561 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1559, baseType: !1562, flags: DIFlagPublic)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::__1::output_iterator_tag, void, void, void, void>", scope: !8, file: !528, line: 531, size: 8, elements: !199, templateParams: !1563, identifier: "_ZTSNSt3__18iteratorINS_19output_iterator_tagEvvvvEE")
!1563 = !{!1564, !231, !1566, !1567, !1568}
!1564 = !DITemplateTypeParameter(name: "_Category", type: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_iterator_tag", scope: !8, file: !528, line: 444, size: 8, elements: !199, identifier: "_ZTSNSt3__119output_iterator_tagE")
!1566 = !DITemplateTypeParameter(name: "_Distance", type: null)
!1567 = !DITemplateTypeParameter(name: "_Pointer", type: null)
!1568 = !DITemplateTypeParameter(name: "_Reference", type: null)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__sbuf_", scope: !1559, file: !528, line: 1029, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "streambuf_type", scope: !1559, file: !528, line: 1026, baseType: !1284)
!1572 = !DISubprogram(name: "ostreambuf_iterator", scope: !1559, file: !528, line: 1031, type: !1573, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1576 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream_type", scope: !1559, file: !528, line: 1027, baseType: !1249)
!1578 = !DISubprogram(name: "ostreambuf_iterator", scope: !1559, file: !528, line: 1033, type: !1579, isLocal: false, isDefinition: false, scopeLine: 1033, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1575, !1570}
!1581 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEaSEc", scope: !1559, file: !528, line: 1035, type: !1582, isLocal: false, isDefinition: false, scopeLine: 1035, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1584, !1575, !149}
!1584 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1559, size: 64)
!1585 = !DISubprogram(name: "operator*", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEdeEv", scope: !1559, file: !528, line: 1041, type: !1586, isLocal: false, isDefinition: false, scopeLine: 1041, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1584, !1575}
!1588 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEv", scope: !1559, file: !528, line: 1042, type: !1586, isLocal: false, isDefinition: false, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1589 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEppEi", scope: !1559, file: !528, line: 1043, type: !1590, isLocal: false, isDefinition: false, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1584, !1575, !17}
!1592 = !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1559, file: !528, line: 1044, type: !1593, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!171, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !8, file: !1599, line: 474, size: 128, elements: !1600, templateParams: !2298, identifier: "_ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!1599 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1600 = !{!1601, !2249, !2250, !2256, !2260, !2287, !2295}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "base_", scope: !1598, file: !1599, line: 478, baseType: !1602, size: 128)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "base", scope: !1598, file: !1599, line: 476, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_impl<std::__1::__tuple_indices<0, 1>, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !8, file: !1599, line: 369, size: 128, elements: !1604, templateParams: !2236, identifier: "_ZTSNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEE")
!1604 = !{!1605, !2173, !2213, !2217, !2222, !2226, !2230, !2233}
!1605 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1603, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, false>", scope: !8, file: !1599, line: 170, size: 64, elements: !1607, templateParams: !2170, identifier: "_ZTSNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEE")
!1607 = !{!1608, !2142, !2149, !2152, !2155, !2159, !2162, !2165}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1606, file: !1599, line: 172, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !8, file: !174, line: 2334, size: 64, elements: !1610, templateParams: !2114, identifier: "_ZTSNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEE")
!1610 = !{!1611, !2080, !2085, !2089, !2092, !2098, !2108, !2119, !2120, !2125, !2130, !2133, !2136, !2139}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !1609, file: !174, line: 2344, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !8, file: !174, line: 2144, size: 64, elements: !1613, templateParams: !2077, identifier: "_ZTSNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEE")
!1613 = !{!1614, !2023, !2058, !2062, !2067, !2070, !2073}
!1614 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1612, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::__thread_struct *, 0, false>", scope: !8, file: !174, line: 2076, size: 64, elements: !1616, templateParams: !2021, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE")
!1616 = !{!1617, !2004, !2008, !2013}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !1615, file: !174, line: 2105, baseType: !1618, size: 64, flags: DIFlagPrivate)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct", scope: !8, file: !1620, line: 123, size: 64, elements: !1621, identifier: "_ZTSNSt3__115__thread_structE")
!1620 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1621 = !{!1622, !1625, !1631, !1635, !1638, !1639, !1999}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "__p_", scope: !1619, file: !1620, line: 125, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct_imp", scope: !8, file: !1620, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__119__thread_struct_impE")
!1625 = !DISubprogram(name: "__thread_struct", scope: !1619, file: !1620, line: 127, type: !1626, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1629 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1631 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115__thread_structaSERKS0_", scope: !1619, file: !1620, line: 128, type: !1632, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1634, !1628, !1629}
!1634 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1619, size: 64)
!1635 = !DISubprogram(name: "__thread_struct", scope: !1619, file: !1620, line: 130, type: !1636, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1628}
!1638 = !DISubprogram(name: "~__thread_struct", scope: !1619, file: !1620, line: 131, type: !1636, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1639 = !DISubprogram(name: "notify_all_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE", scope: !1619, file: !1620, line: 133, type: !1640, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1628, !1642, !1998}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "condition_variable", scope: !8, file: !1644, line: 281, size: 384, elements: !1645, identifier: "_ZTSNSt3__118condition_variableE")
!1644 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1645 = !{!1646, !1660, !1664, !1665, !1670, !1674, !1675, !1676, !1781, !1786}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !1643, file: !1644, line: 284, baseType: !1647, size: 384)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !8, file: !1648, line: 59, baseType: !1649)
!1648 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !1650, line: 30, baseType: !1651)
!1650 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !1652, line: 110, baseType: !1653)
!1652 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_cond_t", file: !1652, line: 68, size: 384, elements: !1654, identifier: "_ZTS22_opaque_pthread_cond_t")
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1653, file: !1652, line: 69, baseType: !58, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1653, file: !1652, line: 70, baseType: !1657, size: 320, offset: 64)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 320, elements: !1658)
!1658 = !{!1659}
!1659 = !DISubrange(count: 40)
!1660 = !DISubprogram(name: "condition_variable", scope: !1643, file: !1644, line: 292, type: !1661, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1664 = !DISubprogram(name: "~condition_variable", scope: !1643, file: !1644, line: 296, type: !1661, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1665 = !DISubprogram(name: "condition_variable", scope: !1643, file: !1644, line: 299, type: !1666, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1663, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1670 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118condition_variableaSERKS0_", scope: !1643, file: !1644, line: 300, type: !1671, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1673, !1663, !1668}
!1673 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1643, size: 64)
!1674 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt3__118condition_variable10notify_oneEv", scope: !1643, file: !1644, line: 303, type: !1661, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1675 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt3__118condition_variable10notify_allEv", scope: !1643, file: !1644, line: 304, type: !1661, isLocal: false, isDefinition: false, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1676 = !DISubprogram(name: "wait", linkageName: "_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE", scope: !1643, file: !1644, line: 306, type: !1677, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1663, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_lock<std::__1::mutex>", scope: !8, file: !1644, line: 110, size: 128, elements: !1681, templateParams: !1779, identifier: "_ZTSNSt3__111unique_lockINS_5mutexEEE")
!1681 = !{!1682, !1723, !1724, !1728, !1732, !1736, !1740, !1744, !1745, !1750, !1753, !1757, !1760, !1761, !1764, !1765, !1768, !1771, !1775, !1776}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !1680, file: !1644, line: 116, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !1680, file: !1644, line: 113, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "mutex", scope: !8, file: !1644, line: 36, size: 512, elements: !1686, identifier: "_ZTSNSt3__15mutexE")
!1686 = !{!1687, !1699, !1703, !1704, !1709, !1713, !1714, !1717, !1718}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !1685, file: !1644, line: 39, baseType: !1688, size: 512)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_mutex_t", scope: !8, file: !1648, line: 53, baseType: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !1690, line: 30, baseType: !1691)
!1690 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !1652, line: 113, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !1652, line: 78, size: 512, elements: !1693, identifier: "_ZTS23_opaque_pthread_mutex_t")
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1692, file: !1652, line: 79, baseType: !58, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1692, file: !1652, line: 80, baseType: !1696, size: 448, offset: 64)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 448, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 56)
!1699 = !DISubprogram(name: "mutex", scope: !1685, file: !1644, line: 47, type: !1700, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1703 = !DISubprogram(name: "~mutex", scope: !1685, file: !1644, line: 51, type: !1700, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1704 = !DISubprogram(name: "mutex", scope: !1685, file: !1644, line: 54, type: !1705, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !1702, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1709 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15mutexaSERKS0_", scope: !1685, file: !1644, line: 55, type: !1710, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!1712, !1702, !1707}
!1712 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1685, size: 64)
!1713 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__15mutex4lockEv", scope: !1685, file: !1644, line: 58, type: !1700, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1714 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__15mutex8try_lockEv", scope: !1685, file: !1644, line: 59, type: !1715, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!171, !1702}
!1717 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__15mutex6unlockEv", scope: !1685, file: !1644, line: 60, type: !1700, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1718 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__15mutex13native_handleEv", scope: !1685, file: !1644, line: 63, type: !1719, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1721, !1702}
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1685, file: !1644, line: 62, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "__owns_", scope: !1680, file: !1644, line: 117, baseType: !171, size: 8, offset: 64)
!1724 = !DISubprogram(name: "unique_lock", scope: !1680, file: !1644, line: 121, type: !1725, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1728 = !DISubprogram(name: "unique_lock", scope: !1680, file: !1644, line: 123, type: !1729, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !1727, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1684, size: 64)
!1732 = !DISubprogram(name: "unique_lock", scope: !1680, file: !1644, line: 126, type: !1733, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1727, !1731, !1735}
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defer_lock_t", scope: !8, file: !1644, line: 66, size: 8, elements: !199, identifier: "_ZTSNSt3__112defer_lock_tE")
!1736 = !DISubprogram(name: "unique_lock", scope: !1680, file: !1644, line: 129, type: !1737, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1727, !1731, !1739}
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "try_to_lock_t", scope: !8, file: !1644, line: 67, size: 8, elements: !199, identifier: "_ZTSNSt3__113try_to_lock_tE")
!1740 = !DISubprogram(name: "unique_lock", scope: !1680, file: !1644, line: 132, type: !1741, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1727, !1731, !1743}
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adopt_lock_t", scope: !8, file: !1644, line: 68, size: 8, elements: !199, identifier: "_ZTSNSt3__112adopt_lock_tE")
!1744 = !DISubprogram(name: "~unique_lock", scope: !1680, file: !1644, line: 143, type: !1725, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1745 = !DISubprogram(name: "unique_lock", scope: !1680, file: !1644, line: 150, type: !1746, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1727, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1750 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSERKS2_", scope: !1680, file: !1644, line: 151, type: !1751, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1679, !1727, !1748}
!1753 = !DISubprogram(name: "unique_lock", scope: !1680, file: !1644, line: 156, type: !1754, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1727, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1680, size: 64)
!1757 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSEOS2_", scope: !1680, file: !1644, line: 160, type: !1758, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1679, !1727, !1756}
!1760 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4lockEv", scope: !1680, file: !1644, line: 173, type: !1725, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1761 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE8try_lockEv", scope: !1680, file: !1644, line: 174, type: !1762, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!171, !1727}
!1764 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE6unlockEv", scope: !1680, file: !1644, line: 181, type: !1725, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1765 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4swapERS2_", scope: !1680, file: !1644, line: 184, type: !1766, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1727, !1679}
!1768 = !DISubprogram(name: "release", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE7releaseEv", scope: !1680, file: !1644, line: 190, type: !1769, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1683, !1727}
!1771 = !DISubprogram(name: "owns_lock", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE9owns_lockEv", scope: !1680, file: !1644, line: 199, type: !1772, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!171, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1775 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEEcvbEv", scope: !1680, file: !1644, line: 202, type: !1772, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1776 = !DISubprogram(name: "mutex", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE5mutexEv", scope: !1680, file: !1644, line: 204, type: !1777, isLocal: false, isDefinition: false, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1683, !1774}
!1779 = !{!1780}
!1780 = !DITemplateTypeParameter(name: "_Mutex", type: !1685)
!1781 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__118condition_variable13native_handleEv", scope: !1643, file: !1644, line: 338, type: !1782, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!1784, !1663}
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1643, file: !1644, line: 337, baseType: !1785)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1786 = !DISubprogram(name: "__do_timed_wait", linkageName: "_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE", scope: !1643, file: !1644, line: 341, type: !1787, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1663, !1679, !1789}
!1789 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !1791, file: !1790, line: 831, size: 64, elements: !1792, templateParams: !1886, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE")
!1790 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1791 = !DINamespace(name: "chrono", scope: !8, file: !1790, line: 316)
!1792 = !{!1793, !1863, !1867, !1872, !1877, !1881, !1882, !1885}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !1789, file: !1790, line: 841, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !1789, file: !1790, line: 837, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000000> >", scope: !1791, file: !1790, line: 488, size: 64, elements: !1796, templateParams: !1845, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE")
!1796 = !{!1797, !1799, !1803, !1808, !1817, !1818, !1822, !1825, !1826, !1827, !1831, !1832, !1837, !1838, !1839, !1840, !1843, !1844}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1795, file: !1790, line: 528, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1795, file: !1790, line: 525, baseType: !1321)
!1799 = !DISubprogram(name: "duration", scope: !1795, file: !1790, line: 533, type: !1800, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1803 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv", scope: !1795, file: !1790, line: 564, type: !1804, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1798, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1808 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpsEv", scope: !1795, file: !1790, line: 568, type: !1809, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1811, !1806}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1812, file: !1790, line: 343, baseType: !1795)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !8, file: !1790, line: 339, size: 8, elements: !199, templateParams: !1813, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEES5_EEE")
!1813 = !{!1814}
!1814 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1815)
!1815 = !{!1816, !1816}
!1816 = !DITemplateTypeParameter(type: !1795)
!1817 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEngEv", scope: !1795, file: !1790, line: 569, type: !1809, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1818 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv", scope: !1795, file: !1790, line: 570, type: !1819, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1821, !1802}
!1821 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1795, size: 64)
!1822 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEi", scope: !1795, file: !1790, line: 571, type: !1823, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1795, !1802, !17}
!1825 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEv", scope: !1795, file: !1790, line: 572, type: !1819, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1826 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEi", scope: !1795, file: !1790, line: 573, type: !1823, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1827 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpLERKS4_", scope: !1795, file: !1790, line: 575, type: !1828, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!1821, !1802, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1807, size: 64)
!1831 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmIERKS4_", scope: !1795, file: !1790, line: 576, type: !1828, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1832 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmLERKx", scope: !1795, file: !1790, line: 578, type: !1833, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1821, !1802, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1798)
!1837 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEdVERKx", scope: !1795, file: !1790, line: 579, type: !1833, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1838 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKx", scope: !1795, file: !1790, line: 580, type: !1833, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1839 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKS4_", scope: !1795, file: !1790, line: 581, type: !1828, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1840 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE4zeroEv", scope: !1795, file: !1790, line: 585, type: !1841, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1795}
!1843 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3minEv", scope: !1795, file: !1790, line: 586, type: !1841, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1844 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv", scope: !1795, file: !1790, line: 587, type: !1841, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1845 = !{!1846, !1847}
!1846 = !DITemplateTypeParameter(name: "_Rep", type: !1321)
!1847 = !DITemplateTypeParameter(name: "_Period", type: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000000>", scope: !8, file: !1849, line: 247, size: 8, elements: !1850, templateParams: !1860, identifier: "_ZTSNSt3__15ratioILl1ELl1000000000EEE")
!1849 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1850 = !{!1851, !1855, !1856, !1857, !1858, !1859}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1848, file: !1849, line: 252, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1854, line: 32, baseType: !58)
!1854 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1848, file: !1849, line: 253, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1000000000)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1848, file: !1849, line: 254, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1848, file: !1849, line: 255, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1848, file: !1849, line: 257, baseType: !1852, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1848, file: !1849, line: 258, baseType: !1852, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000000)
!1860 = !{!1861, !1862}
!1861 = !DITemplateValueParameter(name: "_Num", type: !58, value: i64 1)
!1862 = !DITemplateValueParameter(name: "_Den", type: !58, value: i64 1000000000)
!1863 = !DISubprogram(name: "time_point", scope: !1789, file: !1790, line: 844, type: !1864, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1867 = !DISubprogram(name: "time_point", scope: !1789, file: !1790, line: 845, type: !1868, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1866, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1872 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv", scope: !1789, file: !1790, line: 859, type: !1873, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!1794, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1877 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEpLERKS6_", scope: !1789, file: !1790, line: 863, type: !1878, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !1866, !1870}
!1880 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1789, size: 64)
!1881 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEmIERKS6_", scope: !1789, file: !1790, line: 864, type: !1878, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1882 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3minEv", scope: !1789, file: !1790, line: 868, type: !1883, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1789}
!1885 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3maxEv", scope: !1789, file: !1790, line: 869, type: !1883, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1886 = !{!1887, !1997}
!1887 = !DITemplateTypeParameter(name: "_Clock", type: !1888)
!1888 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "system_clock", scope: !1791, file: !1790, line: 1047, size: 8, elements: !1889, identifier: "_ZTSNSt3__16chrono12system_clockE")
!1889 = !{!1890, !1891, !1986, !1994}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "is_steady", scope: !1888, file: !1790, line: 1054, baseType: !295, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 false)
!1891 = !DISubprogram(name: "now", linkageName: "_ZNSt3__16chrono12system_clock3nowEv", scope: !1888, file: !1790, line: 1056, type: !1892, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1894}
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_point", scope: !1888, file: !1790, line: 1053, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !1791, file: !1790, line: 831, size: 64, elements: !1896, templateParams: !1984, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE")
!1896 = !{!1897, !1961, !1965, !1970, !1975, !1979, !1980, !1983}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !1895, file: !1790, line: 841, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !1895, file: !1790, line: 837, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000> >", scope: !1791, file: !1790, line: 488, size: 64, elements: !1900, templateParams: !1949, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEE")
!1900 = !{!1901, !1903, !1907, !1912, !1921, !1922, !1926, !1929, !1930, !1931, !1935, !1936, !1941, !1942, !1943, !1944, !1947, !1948}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !1899, file: !1790, line: 528, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !1899, file: !1790, line: 525, baseType: !1321)
!1903 = !DISubprogram(name: "duration", scope: !1899, file: !1790, line: 533, type: !1904, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1907 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv", scope: !1899, file: !1790, line: 564, type: !1908, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1902, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1912 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpsEv", scope: !1899, file: !1790, line: 568, type: !1913, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1915, !1910}
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1916, file: !1790, line: 343, baseType: !1899)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !8, file: !1790, line: 339, size: 8, elements: !199, templateParams: !1917, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEES5_EEE")
!1917 = !{!1918}
!1918 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !1919)
!1919 = !{!1920, !1920}
!1920 = !DITemplateTypeParameter(type: !1899)
!1921 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEngEv", scope: !1899, file: !1790, line: 569, type: !1913, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1922 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEv", scope: !1899, file: !1790, line: 570, type: !1923, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!1925, !1906}
!1925 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1899, size: 64)
!1926 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEi", scope: !1899, file: !1790, line: 571, type: !1927, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!1899, !1906, !17}
!1929 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEv", scope: !1899, file: !1790, line: 572, type: !1923, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1930 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEi", scope: !1899, file: !1790, line: 573, type: !1927, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1931 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpLERKS4_", scope: !1899, file: !1790, line: 575, type: !1932, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1925, !1906, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1911, size: 64)
!1935 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmIERKS4_", scope: !1899, file: !1790, line: 576, type: !1932, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1936 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmLERKx", scope: !1899, file: !1790, line: 578, type: !1937, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1925, !1906, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1902)
!1941 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEdVERKx", scope: !1899, file: !1790, line: 579, type: !1937, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1942 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKx", scope: !1899, file: !1790, line: 580, type: !1937, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1943 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKS4_", scope: !1899, file: !1790, line: 581, type: !1932, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1944 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE4zeroEv", scope: !1899, file: !1790, line: 585, type: !1945, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1899}
!1947 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3minEv", scope: !1899, file: !1790, line: 586, type: !1945, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1948 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3maxEv", scope: !1899, file: !1790, line: 587, type: !1945, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1949 = !{!1846, !1950}
!1950 = !DITemplateTypeParameter(name: "_Period", type: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000>", scope: !8, file: !1849, line: 247, size: 8, elements: !1952, templateParams: !1959, identifier: "_ZTSNSt3__15ratioILl1ELl1000000EEE")
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !1951, file: !1849, line: 252, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !1951, file: !1849, line: 253, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1000000)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !1951, file: !1849, line: 254, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !1951, file: !1849, line: 255, baseType: !1852, flags: DIFlagStaticMember, extraData: i64 1)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1951, file: !1849, line: 257, baseType: !1852, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !1951, file: !1849, line: 258, baseType: !1852, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000)
!1959 = !{!1861, !1960}
!1960 = !DITemplateValueParameter(name: "_Den", type: !58, value: i64 1000000)
!1961 = !DISubprogram(name: "time_point", scope: !1895, file: !1790, line: 844, type: !1962, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1965 = !DISubprogram(name: "time_point", scope: !1895, file: !1790, line: 845, type: !1966, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !1964, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1898)
!1970 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochEv", scope: !1895, file: !1790, line: 859, type: !1971, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!1898, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1975 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEpLERKS6_", scope: !1895, file: !1790, line: 863, type: !1976, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1978, !1964, !1968}
!1978 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1895, size: 64)
!1979 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEmIERKS6_", scope: !1895, file: !1790, line: 864, type: !1976, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1980 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3minEv", scope: !1895, file: !1790, line: 868, type: !1981, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1895}
!1983 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3maxEv", scope: !1895, file: !1790, line: 869, type: !1981, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1984 = !{!1887, !1985}
!1985 = !DITemplateTypeParameter(name: "_Duration", type: !1899)
!1986 = !DISubprogram(name: "to_time_t", linkageName: "_ZNSt3__16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE", scope: !1888, file: !1790, line: 1057, type: !1987, isLocal: false, isDefinition: false, scopeLine: 1057, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1989, !1992}
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1990, line: 30, baseType: !1991)
!1990 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !78, line: 120, baseType: !58)
!1992 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1994 = !DISubprogram(name: "from_time_t", linkageName: "_ZNSt3__16chrono12system_clock11from_time_tEl", scope: !1888, file: !1790, line: 1058, type: !1995, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1894, !1989}
!1997 = !DITemplateTypeParameter(name: "_Duration", type: !1795)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1999 = !DISubprogram(name: "__make_ready_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct27__make_ready_at_thread_exitEPNS_17__assoc_sub_stateE", scope: !1619, file: !1620, line: 134, type: !2000, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !1628, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_class_type, name: "__assoc_sub_state", scope: !8, file: !1620, line: 119, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__117__assoc_sub_stateE")
!2004 = !DISubprogram(name: "__compressed_pair_elem", scope: !1615, file: !174, line: 2082, type: !2005, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2008 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1615, file: !174, line: 2101, type: !2009, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!2011, !2007}
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1615, file: !174, line: 2078, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1618, size: 64)
!2013 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1615, file: !174, line: 2102, type: !2014, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!2016, !2019}
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1615, file: !174, line: 2079, baseType: !2017)
!2017 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1618)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!2021 = !{!2022, !381, !382}
!2022 = !DITemplateTypeParameter(name: "_Tp", type: !1618)
!2023 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1612, baseType: !2024)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, 1, true>", scope: !8, file: !174, line: 2109, size: 8, elements: !2025, templateParams: !2056, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEE")
!2025 = !{!2026, !2040, !2044, !2049}
!2026 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2024, baseType: !2027, flags: DIFlagPrivate)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::__thread_struct>", scope: !8, file: !174, line: 2253, size: 8, elements: !2028, templateParams: !2038, identifier: "_ZTSNSt3__114default_deleteINS_15__thread_structEEE")
!2028 = !{!2029, !2033}
!2029 = !DISubprogram(name: "default_delete", scope: !2027, file: !174, line: 2257, type: !2030, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: false)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2033 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2027, file: !174, line: 2267, type: !2034, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2036, !1618}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2027)
!2038 = !{!2039}
!2039 = !DITemplateTypeParameter(name: "_Tp", type: !1619)
!2040 = !DISubprogram(name: "__compressed_pair_elem", scope: !2024, file: !174, line: 2116, type: !2041, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2044 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2024, file: !174, line: 2136, type: !2045, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!2047, !2043}
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2024, file: !174, line: 2111, baseType: !2048)
!2048 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2027, size: 64)
!2049 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2024, file: !174, line: 2137, type: !2050, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: false)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!2052, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2024, file: !174, line: 2112, baseType: !2053)
!2053 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2037, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2056 = !{!2057, !405, !406}
!2057 = !DITemplateTypeParameter(name: "_Tp", type: !2027)
!2058 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1612, file: !174, line: 2212, type: !2059, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2011, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2062 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1612, file: !174, line: 2217, type: !2063, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2016, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!2067 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !1612, file: !174, line: 2222, type: !2068, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2047, !2061}
!2070 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !1612, file: !174, line: 2227, type: !2071, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2052, !2065}
!2073 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE4swapERS5_", scope: !1612, file: !174, line: 2232, type: !2074, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !2061, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1612, size: 64)
!2077 = !{!2078, !2079}
!2078 = !DITemplateTypeParameter(name: "_T1", type: !1618)
!2079 = !DITemplateTypeParameter(name: "_T2", type: !2027)
!2080 = !DISubprogram(name: "unique_ptr", scope: !1609, file: !174, line: 2427, type: !2081, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2084 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1609, size: 64)
!2085 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEOS4_", scope: !1609, file: !174, line: 2450, type: !2086, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2088, !2083, !2084}
!2088 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1609, size: 64)
!2089 = !DISubprogram(name: "~unique_ptr", scope: !1609, file: !174, line: 2539, type: !2090, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !2083}
!2092 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEDn", scope: !1609, file: !174, line: 2542, type: !2093, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!2088, !2083, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !10, file: !2096, line: 57, baseType: !2097)
!2096 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2097 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!2098 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !1609, file: !174, line: 2549, type: !2099, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2101, !2106}
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2102, file: !269, line: 1084, baseType: !2103)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::__thread_struct>", scope: !8, file: !269, line: 1083, size: 8, elements: !199, templateParams: !2038, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_15__thread_structEEE")
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2104, file: !269, line: 1081, baseType: !1634)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::__thread_struct, true>", scope: !8, file: !269, line: 1081, size: 8, elements: !199, templateParams: !2105, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_15__thread_structELb1EEE")
!2105 = !{!2039, !170}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!2108 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEptEv", scope: !1609, file: !174, line: 2553, type: !2109, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2111, !2106}
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1609, file: !174, line: 2338, baseType: !2112)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2113, file: !174, line: 1031, baseType: !2116)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !8, file: !174, line: 1029, size: 8, elements: !199, templateParams: !2114, identifier: "_ZTSNSt3__114__pointer_typeINS_15__thread_structENS_14default_deleteIS1_EEEE")
!2114 = !{!2039, !2115}
!2115 = !DITemplateTypeParameter(name: "_Dp", type: !2027)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2117, file: !174, line: 1023, baseType: !1618)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>, false>", scope: !246, file: !174, line: 1021, size: 8, elements: !199, templateParams: !2118, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_15__thread_structENS_14default_deleteIS2_EELb0EEE")
!2118 = !{!2039, !2115, !259}
!2119 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE3getEv", scope: !1609, file: !174, line: 2557, type: !2109, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2120 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !1609, file: !174, line: 2561, type: !2121, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!2123, !2083}
!2123 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !1609, file: !174, line: 2337, baseType: !2027)
!2125 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !1609, file: !174, line: 2565, type: !2126, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!2128, !2106}
!2128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2130 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEcvbEv", scope: !1609, file: !174, line: 2569, type: !2131, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!171, !2106}
!2133 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !1609, file: !174, line: 2574, type: !2134, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2111, !2083}
!2136 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !1609, file: !174, line: 2581, type: !2137, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !2083, !2111}
!2139 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE4swapERS4_", scope: !1609, file: !174, line: 2589, type: !2140, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2083, !2088}
!2142 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEaSERKS6_", scope: !1606, file: !1599, line: 188, type: !2143, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1606, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!2149 = !DISubprogram(name: "__tuple_leaf", scope: !1606, file: !1599, line: 190, type: !2150, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !2146}
!2152 = !DISubprogram(name: "__tuple_leaf", scope: !1606, file: !1599, line: 251, type: !2153, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2146, !2147}
!2155 = !DISubprogram(name: "__tuple_leaf", scope: !1606, file: !1599, line: 252, type: !2156, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !2146, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1606, size: 64)
!2159 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE4swapERS6_", scope: !1606, file: !1599, line: 264, type: !2160, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!17, !2146, !2145}
!2162 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !1606, file: !1599, line: 270, type: !2163, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2088, !2146}
!2165 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !1606, file: !1599, line: 271, type: !2166, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2107, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2170 = !{!2171, !2172, !259}
!2171 = !DITemplateValueParameter(name: "_Ip", type: !79, value: i64 0)
!2172 = !DITemplateTypeParameter(name: "_Hp", type: !1609)
!2173 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1603, baseType: !2174, offset: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<1, void (*)(), false>", scope: !8, file: !1599, line: 170, size: 64, elements: !2175, templateParams: !2210, identifier: "_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE")
!2175 = !{!2176, !2180, !2187, !2190, !2193, !2197, !2200, !2204}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2174, file: !1599, line: 172, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null}
!2180 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEaSERKS3_", scope: !2174, file: !1599, line: 188, type: !2181, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2174, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2185 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2174)
!2187 = !DISubprogram(name: "__tuple_leaf", scope: !2174, file: !1599, line: 190, type: !2188, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2184}
!2190 = !DISubprogram(name: "__tuple_leaf", scope: !2174, file: !1599, line: 251, type: !2191, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !2184, !2185}
!2193 = !DISubprogram(name: "__tuple_leaf", scope: !2174, file: !1599, line: 252, type: !2194, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !2184, !2196}
!2196 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2174, size: 64)
!2197 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE4swapERS3_", scope: !2174, file: !1599, line: 264, type: !2198, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!17, !2184, !2183}
!2200 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2174, file: !1599, line: 270, type: !2201, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2203, !2184}
!2203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2177, size: 64)
!2204 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2174, file: !1599, line: 271, type: !2205, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!2207, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2210 = !{!2211, !2212, !259}
!2211 = !DITemplateValueParameter(name: "_Ip", type: !79, value: i64 1)
!2212 = !DITemplateTypeParameter(name: "_Hp", type: !2177)
!2213 = !DISubprogram(name: "__tuple_impl", scope: !1603, file: !1599, line: 373, type: !2214, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2217 = !DISubprogram(name: "__tuple_impl", scope: !1603, file: !1599, line: 444, type: !2218, isLocal: false, isDefinition: false, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: false)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2216, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!2222 = !DISubprogram(name: "__tuple_impl", scope: !1603, file: !1599, line: 445, type: !2223, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: false)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2216, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1603, size: 64)
!2226 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSERKSA_", scope: !1603, file: !1599, line: 449, type: !2227, isLocal: false, isDefinition: false, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2229, !2216, !2220}
!2229 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1603, size: 64)
!2230 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSEOSA_", scope: !1603, file: !1599, line: 457, type: !2231, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!2229, !2216, !2225}
!2233 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEE4swapERSA_", scope: !1603, file: !1599, line: 464, type: !2234, isLocal: false, isDefinition: false, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: false)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !2216, !2229}
!2236 = !{!2237, !2245}
!2237 = !DITemplateTypeParameter(name: "_Indx", type: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<0, 1>", scope: !8, file: !2239, line: 90, size: 8, elements: !199, templateParams: !2240, identifier: "_ZTSNSt3__115__tuple_indicesIJLm0ELm1EEEE")
!2239 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2240 = !{!2241}
!2241 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !2242)
!2242 = !{!2243, !2244}
!2243 = !DITemplateValueParameter(type: !79, value: i64 0)
!2244 = !DITemplateValueParameter(type: !79, value: i64 1)
!2245 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !2246)
!2246 = !{!2247, !2248}
!2247 = !DITemplateTypeParameter(type: !1609)
!2248 = !DITemplateTypeParameter(type: !2177)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_EnableImplicitReducedArityExtension", scope: !1598, file: !1599, line: 483, baseType: !295, flags: DIFlagStaticMember, extraData: i1 false)
!2250 = !DISubprogram(name: "tuple", scope: !1598, file: !1599, line: 620, type: !2251, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2254 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!2256 = !DISubprogram(name: "tuple", scope: !1598, file: !1599, line: 621, type: !2257, isLocal: false, isDefinition: false, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2253, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1598, size: 64)
!2260 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSERKNS_5__natE", scope: !1598, file: !1599, line: 876, type: !2261, isLocal: false, isDefinition: false, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!2263, !2253, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1598, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2267, file: !269, line: 414, baseType: !2271)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !8, file: !269, line: 414, size: 8, elements: !199, templateParams: !2268, identifier: "_ZTSNSt3__111conditionalILb0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2268 = !{!272, !2269, !2270}
!2269 = !DITemplateTypeParameter(name: "_If", type: !1598)
!2270 = !DITemplateTypeParameter(name: "_Then", type: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !8, file: !269, line: 1584, size: 8, elements: !2272, identifier: "_ZTSNSt3__15__natE")
!2272 = !{!2273, !2277, !2282, !2286}
!2273 = !DISubprogram(name: "__nat", scope: !2271, file: !269, line: 1587, type: !2274, isLocal: false, isDefinition: false, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: false)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2277 = !DISubprogram(name: "__nat", scope: !2271, file: !269, line: 1588, type: !2278, isLocal: false, isDefinition: false, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: false)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2276, !2280}
!2280 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2271)
!2282 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15__nataSERKS0_", scope: !2271, file: !269, line: 1589, type: !2283, isLocal: false, isDefinition: false, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: false)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!2285, !2276, !2280}
!2285 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2271, size: 64)
!2286 = !DISubprogram(name: "~__nat", scope: !2271, file: !269, line: 1590, type: !2274, isLocal: false, isDefinition: false, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: false)
!2287 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSEOS8_", scope: !1598, file: !1599, line: 884, type: !2288, isLocal: false, isDefinition: false, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2263, !2253, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2292, file: !269, line: 412, baseType: !1598)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !8, file: !269, line: 412, size: 8, elements: !199, templateParams: !2293, identifier: "_ZTSNSt3__111conditionalILb1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!2293 = !{!2294, !2269, !2270}
!2294 = !DITemplateValueParameter(name: "_Bp", type: !171, value: i8 1)
!2295 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEE4swapERS8_", scope: !1598, file: !1599, line: 906, type: !2296, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !2253, !2263}
!2298 = !{!2245}
!2299 = !{!0, !2300}
!2300 = !DIGlobalVariableExpression(var: !2301)
!2301 = distinct !DIGlobalVariable(name: "g_i_mutex", scope: !2, file: !3, line: 6, type: !1685, isLocal: false, isDefinition: true)
!2302 = !{!2303, !2304, !2305, !2308, !2309, !2316, !2322, !2328, !2332, !2336, !2340, !2344, !2349, !2353, !2357, !2361, !2365, !2369, !2373, !2375, !2379, !2383, !2387, !2391, !2395, !2397, !2401, !2405, !2407, !2411, !2413, !2420, !2424, !2429, !2433, !2435, !2439, !2443, !2445, !2449, !2455, !2459, !2463, !2469, !2473, !2476, !2477, !2480, !2483, !2486, !2489, !2492, !2495, !2497, !2499, !2501, !2503, !2505, !2507, !2509, !2511, !2513, !2515, !2517, !2519, !2521, !2523, !2525, !2529, !2532, !2533, !2536, !2537, !2542, !2544, !2548, !2552, !2554, !2556, !2560, !2564, !2568, !2570, !2574, !2579, !2583, !2587, !2589, !2591, !2593, !2595, !2597, !2599, !2603, !2607, !2611, !2612, !2613, !2628, !2632, !2636, !2641, !2646, !2652, !2658, !2662, !2664, !2668, !2720, !2721, !2722, !2727, !2729, !2733, !2737, !2741, !2743, !2747, !2751, !2755, !2766, !2768, !2772, !2776, !2780, !2782, !2786, !2790, !2794, !2796, !2798, !2800, !2804, !2808, !2813, !2817, !2823, !2827, !2831, !2833, !2835, !2837, !2841, !2845, !2849, !2851, !2853, !2857, !2861, !2863, !2865, !2869, !2873, !2875, !2879, !2881, !2883, !2886, !2888, !2890, !2892, !2894, !2896, !2898, !2900, !2902, !2904, !2906, !2908, !2910, !2912, !2916, !2921, !2926, !2931, !2933, !2936, !2938, !2940, !2942, !2944, !2946, !2948, !2950, !2952, !2954, !2958, !2962, !2966, !2968, !2972, !2976, !2988, !2989, !2990, !2991, !2992, !2997, !2999, !3003, !3007, !3011, !3015, !3017, !3021, !3025, !3029, !3033, !3037, !3041, !3043, !3045, !3049, !3054, !3058, !3062, !3066, !3070, !3074, !3078, !3082, !3086, !3088, !3090, !3094, !3096, !3100, !3104, !3109, !3111, !3113, !3115, !3119, !3123, !3127, !3129, !3133, !3135, !3137, !3139, !3141, !3145, !3149, !3151, !3157, !3162, !3166, !3170, !3175, !3180, !3184, !3188, !3192, !3196, !3198}
!2303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !56, line: 49)
!2304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, line: 50)
!2305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2306, line: 55)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !2307, line: 32, baseType: !1528)
!2307 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, line: 100)
!2309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2310, line: 101)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !2311, line: 85, baseType: !2312)
!2311 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2311, line: 82, size: 64, elements: !2313, identifier: "_ZTS5div_t")
!2313 = !{!2314, !2315}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2312, file: !2311, line: 83, baseType: !17, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2312, file: !2311, line: 84, baseType: !17, size: 32, offset: 32)
!2316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2317, line: 102)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !2311, line: 90, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2311, line: 87, size: 128, elements: !2319, identifier: "_ZTS6ldiv_t")
!2319 = !{!2320, !2321}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2318, file: !2311, line: 88, baseType: !58, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2318, file: !2311, line: 89, baseType: !58, size: 64, offset: 64)
!2322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2323, line: 104)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !2311, line: 96, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2311, line: 93, size: 128, elements: !2325, identifier: "_ZTS7lldiv_t")
!2325 = !{!2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2324, file: !2311, line: 94, baseType: !1321, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2324, file: !2311, line: 95, baseType: !1321, size: 64, offset: 64)
!2328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2329, line: 106)
!2329 = !DISubprogram(name: "atof", scope: !2311, file: !2311, line: 131, type: !2330, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!1524, !147}
!2332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2333, line: 107)
!2333 = !DISubprogram(name: "atoi", scope: !2311, file: !2311, line: 132, type: !2334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!17, !147}
!2336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2337, line: 108)
!2337 = !DISubprogram(name: "atol", scope: !2311, file: !2311, line: 133, type: !2338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!58, !147}
!2340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2341, line: 110)
!2341 = !DISubprogram(name: "atoll", scope: !2311, file: !2311, line: 136, type: !2342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!1321, !147}
!2344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2345, line: 112)
!2345 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !2311, file: !2311, line: 162, type: !2346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!1524, !147, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2350, line: 113)
!2350 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !2311, file: !2311, line: 163, type: !2351, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!1520, !147, !2348}
!2353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2354, line: 114)
!2354 = !DISubprogram(name: "strtold", scope: !2311, file: !2311, line: 166, type: !2355, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!1528, !147, !2348}
!2357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2358, line: 115)
!2358 = !DISubprogram(name: "strtol", scope: !2311, file: !2311, line: 164, type: !2359, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!58, !147, !2348, !17}
!2361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2362, line: 117)
!2362 = !DISubprogram(name: "strtoll", scope: !2311, file: !2311, line: 169, type: !2363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!1321, !147, !2348, !17}
!2365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2366, line: 119)
!2366 = !DISubprogram(name: "strtoul", scope: !2311, file: !2311, line: 172, type: !2367, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!79, !147, !2348, !17}
!2369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2370, line: 121)
!2370 = !DISubprogram(name: "strtoull", scope: !2311, file: !2311, line: 175, type: !2371, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!1516, !147, !2348, !17}
!2373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2374, line: 123)
!2374 = !DISubprogram(name: "rand", scope: !2311, file: !2311, line: 159, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2376, line: 124)
!2376 = !DISubprogram(name: "srand", scope: !2311, file: !2311, line: 161, type: !2377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !21}
!2379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2380, line: 125)
!2380 = !DISubprogram(name: "calloc", scope: !2311, file: !2311, line: 140, type: !2381, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!63, !75, !75}
!2383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2384, line: 126)
!2384 = !DISubprogram(name: "free", scope: !2311, file: !2311, line: 143, type: !2385, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !63}
!2387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2388, line: 127)
!2388 = !DISubprogram(name: "malloc", scope: !2311, file: !2311, line: 152, type: !2389, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!63, !75}
!2391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2392, line: 128)
!2392 = !DISubprogram(name: "realloc", scope: !2311, file: !2311, line: 160, type: !2393, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!63, !63, !75}
!2395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2396, line: 129)
!2396 = !DISubprogram(name: "abort", scope: !2311, file: !2311, line: 128, type: !2178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2398, line: 130)
!2398 = !DISubprogram(name: "atexit", scope: !2311, file: !2311, line: 130, type: !2399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!17, !2177}
!2401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2402, line: 131)
!2402 = !DISubprogram(name: "exit", scope: !2311, file: !2311, line: 142, type: !2403, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !17}
!2405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2406, line: 132)
!2406 = !DISubprogram(name: "_Exit", scope: !2311, file: !2311, line: 182, type: !2403, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2408, line: 134)
!2408 = !DISubprogram(name: "getenv", scope: !2311, file: !2311, line: 144, type: !2409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!213, !147}
!2411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2412, line: 135)
!2412 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !2311, file: !2311, line: 177, type: !2334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2414, line: 137)
!2414 = !DISubprogram(name: "bsearch", scope: !2311, file: !2311, line: 138, type: !2415, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!63, !232, !232, !75, !75, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!17, !232, !232}
!2420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2421, line: 138)
!2421 = !DISubprogram(name: "qsort", scope: !2311, file: !2311, line: 157, type: !2422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !63, !75, !75, !2417}
!2424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2425, line: 139)
!2425 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !2426, file: !2426, line: 113, type: !2427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2426 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!1321, !1321}
!2429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2430, line: 140)
!2430 = !DISubprogram(name: "labs", scope: !2311, file: !2311, line: 145, type: !2431, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!58, !58}
!2433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2434, line: 142)
!2434 = !DISubprogram(name: "llabs", scope: !2311, file: !2311, line: 149, type: !2427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2436, line: 144)
!2436 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !2426, file: !2426, line: 118, type: !2437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!2323, !1321, !1321}
!2439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2440, line: 145)
!2440 = !DISubprogram(name: "ldiv", scope: !2311, file: !2311, line: 146, type: !2441, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2317, !58, !58}
!2443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2444, line: 147)
!2444 = !DISubprogram(name: "lldiv", scope: !2311, file: !2311, line: 150, type: !2437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2446, line: 149)
!2446 = !DISubprogram(name: "mblen", scope: !2311, file: !2311, line: 153, type: !2447, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!17, !147, !75}
!2449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2450, line: 150)
!2450 = !DISubprogram(name: "mbtowc", scope: !2311, file: !2311, line: 155, type: !2451, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!17, !2453, !147, !75}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!2455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2456, line: 151)
!2456 = !DISubprogram(name: "wctomb", scope: !2311, file: !2311, line: 179, type: !2457, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!17, !213, !2454}
!2459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2460, line: 152)
!2460 = !DISubprogram(name: "mbstowcs", scope: !2311, file: !2311, line: 154, type: !2461, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!75, !2453, !147, !75}
!2463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2464, line: 153)
!2464 = !DISubprogram(name: "wcstombs", scope: !2311, file: !2311, line: 178, type: !2465, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!75, !213, !2467, !75}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2470, line: 153)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !2471, line: 30, baseType: !2472)
!2471 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2472 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2474, line: 154)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !2475, line: 30, baseType: !1493)
!2475 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1146, line: 155)
!2477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2478, line: 156)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !2479, line: 30, baseType: !1321)
!2479 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2481, line: 158)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !2482, line: 31, baseType: !348)
!2482 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2484, line: 159)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !2485, line: 31, baseType: !1497)
!2485 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2487, line: 160)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !2488, line: 31, baseType: !21)
!2488 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2490, line: 161)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !2491, line: 31, baseType: !1516)
!2491 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2493, line: 163)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !2494, line: 29, baseType: !2470)
!2494 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2496, line: 164)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !2494, line: 30, baseType: !2474)
!2497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2498, line: 165)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !2494, line: 31, baseType: !1146)
!2499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2500, line: 166)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !2494, line: 32, baseType: !2478)
!2501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2502, line: 168)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !2494, line: 33, baseType: !2481)
!2503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2504, line: 169)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !2494, line: 34, baseType: !2484)
!2505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2506, line: 170)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !2494, line: 35, baseType: !2487)
!2507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2508, line: 171)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !2494, line: 36, baseType: !2490)
!2509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2510, line: 173)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !2494, line: 40, baseType: !2470)
!2511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2512, line: 174)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !2494, line: 41, baseType: !2474)
!2513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2514, line: 175)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !2494, line: 42, baseType: !1146)
!2515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2516, line: 176)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !2494, line: 43, baseType: !2478)
!2517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2518, line: 178)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !2494, line: 44, baseType: !2481)
!2519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2520, line: 179)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !2494, line: 45, baseType: !2484)
!2521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2522, line: 180)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !2494, line: 46, baseType: !2487)
!2523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2524, line: 181)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !2494, line: 47, baseType: !2490)
!2525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2526, line: 183)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !2527, line: 30, baseType: !2528)
!2527 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !78, line: 49, baseType: !58)
!2529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2530, line: 184)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !2531, line: 30, baseType: !79)
!2531 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1853, line: 186)
!2533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2534, line: 187)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2535, line: 32, baseType: !79)
!2535 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, line: 69)
!2537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2538, line: 70)
!2538 = !DISubprogram(name: "memcpy", scope: !2539, file: !2539, line: 72, type: !2540, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2539 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!63, !63, !232, !75}
!2542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2543, line: 71)
!2543 = !DISubprogram(name: "memmove", scope: !2539, file: !2539, line: 73, type: !2540, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2545, line: 72)
!2545 = !DISubprogram(name: "strcpy", scope: !2539, file: !2539, line: 79, type: !2546, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!213, !213, !147}
!2548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2549, line: 73)
!2549 = !DISubprogram(name: "strncpy", scope: !2539, file: !2539, line: 85, type: !2550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!213, !213, !147, !75}
!2552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2553, line: 74)
!2553 = !DISubprogram(name: "strcat", scope: !2539, file: !2539, line: 75, type: !2546, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2555, line: 75)
!2555 = !DISubprogram(name: "strncat", scope: !2539, file: !2539, line: 83, type: !2550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2557, line: 76)
!2557 = !DISubprogram(name: "memcmp", scope: !2539, file: !2539, line: 71, type: !2558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!17, !232, !232, !75}
!2560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2561, line: 77)
!2561 = !DISubprogram(name: "strcmp", scope: !2539, file: !2539, line: 77, type: !2562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!17, !147, !147}
!2564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2565, line: 78)
!2565 = !DISubprogram(name: "strncmp", scope: !2539, file: !2539, line: 84, type: !2566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!17, !147, !147, !75}
!2568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2569, line: 79)
!2569 = !DISubprogram(name: "strcoll", scope: !2539, file: !2539, line: 78, type: !2562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2571, line: 80)
!2571 = !DISubprogram(name: "strxfrm", scope: !2539, file: !2539, line: 91, type: !2572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!75, !213, !147, !75}
!2574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2575, line: 81)
!2575 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !2576, file: !2576, line: 99, type: !2577, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2576 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!63, !63, !17, !75}
!2579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2580, line: 82)
!2580 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !2576, file: !2576, line: 78, type: !2581, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!213, !213, !17}
!2583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2584, line: 83)
!2584 = !DISubprogram(name: "strcspn", scope: !2539, file: !2539, line: 80, type: !2585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!75, !147, !147}
!2587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2588, line: 84)
!2588 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !2576, file: !2576, line: 85, type: !2546, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2590, line: 85)
!2590 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !2576, file: !2576, line: 92, type: !2581, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2592, line: 86)
!2592 = !DISubprogram(name: "strspn", scope: !2539, file: !2539, line: 88, type: !2585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2594, line: 87)
!2594 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !2576, file: !2576, line: 106, type: !2546, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2596, line: 89)
!2596 = !DISubprogram(name: "strtok", scope: !2539, file: !2539, line: 90, type: !2546, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2598, line: 91)
!2598 = !DISubprogram(name: "memset", scope: !2539, file: !2539, line: 74, type: !2577, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2600, line: 92)
!2600 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !2539, file: !2539, line: 81, type: !2601, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!213, !17}
!2603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2604, line: 93)
!2604 = !DISubprogram(name: "strlen", scope: !2539, file: !2539, line: 82, type: !2605, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!75, !147}
!2607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2608, line: 56)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !2609, line: 30, baseType: !2610)
!2609 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !78, line: 117, baseType: !79)
!2611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, line: 57)
!2612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1989, line: 58)
!2613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2614, line: 59)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2615, line: 73, size: 448, elements: !2616, identifier: "_ZTS2tm")
!2615 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2614, file: !2615, line: 74, baseType: !17, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2614, file: !2615, line: 75, baseType: !17, size: 32, offset: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2614, file: !2615, line: 76, baseType: !17, size: 32, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2614, file: !2615, line: 77, baseType: !17, size: 32, offset: 96)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2614, file: !2615, line: 78, baseType: !17, size: 32, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2614, file: !2615, line: 79, baseType: !17, size: 32, offset: 160)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2614, file: !2615, line: 80, baseType: !17, size: 32, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2614, file: !2615, line: 81, baseType: !17, size: 32, offset: 224)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2614, file: !2615, line: 82, baseType: !17, size: 32, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2614, file: !2615, line: 83, baseType: !58, size: 64, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2614, file: !2615, line: 84, baseType: !213, size: 64, offset: 384)
!2628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2629, line: 60)
!2629 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !2615, file: !2615, line: 107, type: !2630, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!2608}
!2632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2633, line: 61)
!2633 = !DISubprogram(name: "difftime", scope: !2615, file: !2615, line: 109, type: !2634, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!1524, !1989, !1989}
!2636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2637, line: 62)
!2637 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !2615, file: !2615, line: 113, type: !2638, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!1989, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2642, line: 63)
!2642 = !DISubprogram(name: "time", scope: !2615, file: !2615, line: 116, type: !2643, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!1989, !2645}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!2646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2647, line: 65)
!2647 = !DISubprogram(name: "asctime", scope: !2615, file: !2615, line: 106, type: !2648, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!213, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2653, line: 66)
!2653 = !DISubprogram(name: "ctime", scope: !2615, file: !2615, line: 108, type: !2654, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!213, !2656}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!2658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2659, line: 67)
!2659 = !DISubprogram(name: "gmtime", scope: !2615, file: !2615, line: 111, type: !2660, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!2640, !2656}
!2662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2663, line: 68)
!2663 = !DISubprogram(name: "localtime", scope: !2615, file: !2615, line: 112, type: !2660, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2665, line: 70)
!2665 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !2615, file: !2615, line: 114, type: !2666, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!75, !213, !75, !147, !2650}
!2668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2669, line: 108)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2670, line: 153, baseType: !2671)
!2670 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2670, line: 122, size: 1216, elements: !2672, identifier: "_ZTS7__sFILE")
!2672 = !{!2673, !2675, !2676, !2677, !2678, !2679, !2684, !2685, !2686, !2690, !2694, !2702, !2706, !2707, !2710, !2711, !2713, !2717, !2718, !2719}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2671, file: !2670, line: 123, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2671, file: !2670, line: 124, baseType: !17, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2671, file: !2670, line: 125, baseType: !17, size: 32, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2671, file: !2670, line: 126, baseType: !1493, size: 16, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2671, file: !2670, line: 127, baseType: !1493, size: 16, offset: 144)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2671, file: !2670, line: 128, baseType: !2680, size: 128, offset: 192)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2670, line: 88, size: 128, elements: !2681, identifier: "_ZTS6__sbuf")
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2680, file: !2670, line: 89, baseType: !2674, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2680, file: !2670, line: 90, baseType: !17, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2671, file: !2670, line: 129, baseType: !17, size: 32, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2671, file: !2670, line: 132, baseType: !63, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2671, file: !2670, line: 133, baseType: !2687, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!17, !63}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2671, file: !2670, line: 134, baseType: !2691, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!17, !63, !213, !17}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2671, file: !2670, line: 135, baseType: !2695, size: 64, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2698, !63, !2698, !17}
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !2670, line: 77, baseType: !2699)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !2700, line: 71, baseType: !2701)
!2700 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !78, line: 46, baseType: !1321)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2671, file: !2670, line: 136, baseType: !2703, size: 64, offset: 640)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!17, !63, !147, !17}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2671, file: !2670, line: 139, baseType: !2680, size: 128, offset: 704)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !2671, file: !2670, line: 140, baseType: !2708, size: 64, offset: 832)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !2670, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2671, file: !2670, line: 141, baseType: !17, size: 32, offset: 896)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2671, file: !2670, line: 144, baseType: !2712, size: 24, offset: 928)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 24, elements: !360)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2671, file: !2670, line: 145, baseType: !2714, size: 8, offset: 952)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 8, elements: !2715)
!2715 = !{!2716}
!2716 = !DISubrange(count: 1)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2671, file: !2670, line: 148, baseType: !2680, size: 128, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2671, file: !2670, line: 151, baseType: !17, size: 32, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2671, file: !2670, line: 152, baseType: !2698, size: 64, offset: 1152)
!2720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2698, line: 109)
!2721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, line: 110)
!2722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2723, line: 112)
!2723 = !DISubprogram(name: "fclose", scope: !2670, file: !2670, line: 232, type: !2724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!17, !2726}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2728, line: 113)
!2728 = !DISubprogram(name: "fflush", scope: !2670, file: !2670, line: 235, type: !2724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2730, line: 114)
!2730 = !DISubprogram(name: "setbuf", scope: !2670, file: !2670, line: 267, type: !2731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !2726, !213}
!2733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2734, line: 115)
!2734 = !DISubprogram(name: "setvbuf", scope: !2670, file: !2670, line: 268, type: !2735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!17, !2726, !213, !17, !75}
!2737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2738, line: 116)
!2738 = !DISubprogram(name: "fprintf", scope: !2670, file: !2670, line: 244, type: !2739, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!17, !2726, !147, null}
!2741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2742, line: 117)
!2742 = !DISubprogram(name: "fscanf", scope: !2670, file: !2670, line: 250, type: !2739, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2744, line: 118)
!2744 = !DISubprogram(name: "snprintf", scope: !2670, file: !2670, line: 421, type: !2745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!17, !213, !75, !147, null}
!2747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2748, line: 119)
!2748 = !DISubprogram(name: "sprintf", scope: !2670, file: !2670, line: 269, type: !2749, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!17, !213, !147, null}
!2751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2752, line: 120)
!2752 = !DISubprogram(name: "sscanf", scope: !2670, file: !2670, line: 270, type: !2753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!17, !147, !147, null}
!2755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2756, line: 121)
!2756 = !DISubprogram(name: "vfprintf", scope: !2670, file: !2670, line: 278, type: !2757, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!17, !2726, !147, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2761, identifier: "_ZTS13__va_list_tag")
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2760, file: !3, baseType: !21, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2760, file: !3, baseType: !21, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2760, file: !3, baseType: !63, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2760, file: !3, baseType: !63, size: 64, offset: 128)
!2766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2767, line: 122)
!2767 = !DISubprogram(name: "vfscanf", scope: !2670, file: !2670, line: 422, type: !2757, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2769, line: 123)
!2769 = !DISubprogram(name: "vsscanf", scope: !2670, file: !2670, line: 425, type: !2770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!17, !147, !147, !2759}
!2772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2773, line: 124)
!2773 = !DISubprogram(name: "vsnprintf", scope: !2670, file: !2670, line: 424, type: !2774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!17, !213, !75, !147, !2759}
!2776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2777, line: 125)
!2777 = !DISubprogram(name: "vsprintf", scope: !2670, file: !2670, line: 280, type: !2778, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!17, !213, !147, !2759}
!2780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2781, line: 126)
!2781 = !DISubprogram(name: "fgetc", scope: !2670, file: !2670, line: 236, type: !2724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2783, line: 127)
!2783 = !DISubprogram(name: "fgets", scope: !2670, file: !2670, line: 238, type: !2784, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!213, !213, !17, !2726}
!2786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2787, line: 128)
!2787 = !DISubprogram(name: "fputc", scope: !2670, file: !2670, line: 245, type: !2788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!17, !17, !2726}
!2790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2791, line: 129)
!2791 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !2670, file: !2670, line: 246, type: !2792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!17, !147, !2726}
!2794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2795, line: 130)
!2795 = !DISubprogram(name: "getc", scope: !2670, file: !2670, line: 255, type: !2724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2797, line: 131)
!2797 = !DISubprogram(name: "putc", scope: !2670, file: !2670, line: 260, type: !2788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2799, line: 132)
!2799 = !DISubprogram(name: "ungetc", scope: !2670, file: !2670, line: 277, type: !2788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2801, line: 133)
!2801 = !DISubprogram(name: "fread", scope: !2670, file: !2670, line: 247, type: !2802, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!75, !63, !75, !75, !2726}
!2804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2805, line: 134)
!2805 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !2670, file: !2670, line: 254, type: !2806, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!75, !232, !75, !75, !2726}
!2808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2809, line: 135)
!2809 = !DISubprogram(name: "fgetpos", scope: !2670, file: !2670, line: 237, type: !2810, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!17, !2726, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2814, line: 136)
!2814 = !DISubprogram(name: "fseek", scope: !2670, file: !2670, line: 251, type: !2815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!17, !2726, !58, !17}
!2817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2818, line: 137)
!2818 = !DISubprogram(name: "fsetpos", scope: !2670, file: !2670, line: 252, type: !2819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!17, !2726, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2824, line: 138)
!2824 = !DISubprogram(name: "ftell", scope: !2670, file: !2670, line: 253, type: !2825, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!58, !2726}
!2827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2828, line: 139)
!2828 = !DISubprogram(name: "rewind", scope: !2670, file: !2670, line: 265, type: !2829, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !2726}
!2831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2832, line: 140)
!2832 = !DISubprogram(name: "clearerr", scope: !2670, file: !2670, line: 231, type: !2829, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2834, line: 141)
!2834 = !DISubprogram(name: "feof", scope: !2670, file: !2670, line: 233, type: !2724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2836, line: 142)
!2836 = !DISubprogram(name: "ferror", scope: !2670, file: !2670, line: 234, type: !2724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2838, line: 143)
!2838 = !DISubprogram(name: "perror", scope: !2670, file: !2670, line: 258, type: !2839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !147}
!2841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2842, line: 146)
!2842 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !2670, file: !2670, line: 242, type: !2843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!2726, !147, !147}
!2845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2846, line: 147)
!2846 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !2670, file: !2670, line: 248, type: !2847, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!2726, !147, !147, !2726}
!2849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2850, line: 148)
!2850 = !DISubprogram(name: "remove", scope: !2670, file: !2670, line: 263, type: !2334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2852, line: 149)
!2852 = !DISubprogram(name: "rename", scope: !2670, file: !2670, line: 264, type: !2562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2854, line: 150)
!2854 = !DISubprogram(name: "tmpfile", scope: !2670, file: !2670, line: 271, type: !2855, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!2726}
!2857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2858, line: 151)
!2858 = !DISubprogram(name: "tmpnam", scope: !2670, file: !2670, line: 276, type: !2859, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!213, !213}
!2861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2862, line: 155)
!2862 = !DISubprogram(name: "getchar", scope: !2670, file: !2670, line: 256, type: !15, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2864, line: 157)
!2864 = !DISubprogram(name: "gets", scope: !2670, file: !2670, line: 257, type: !2859, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2866, line: 159)
!2866 = !DISubprogram(name: "scanf", scope: !2670, file: !2670, line: 266, type: !2867, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!17, !147, null}
!2869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2870, line: 160)
!2870 = !DISubprogram(name: "vscanf", scope: !2670, file: !2670, line: 423, type: !2871, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!17, !147, !2759}
!2873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2874, line: 164)
!2874 = !DISubprogram(name: "printf", scope: !2670, file: !2670, line: 259, type: !2867, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2876, line: 165)
!2876 = !DISubprogram(name: "putchar", scope: !2670, file: !2670, line: 261, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!17, !17}
!2879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2880, line: 166)
!2880 = !DISubprogram(name: "puts", scope: !2670, file: !2670, line: 262, type: !2334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2882, line: 167)
!2882 = !DISubprogram(name: "vprintf", scope: !2670, file: !2670, line: 279, type: !2871, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2884, line: 104)
!2884 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !2885, file: !2885, line: 212, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2885 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2887, line: 105)
!2887 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !2885, file: !2885, line: 218, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2889, line: 106)
!2889 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !2885, file: !2885, line: 224, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2891, line: 107)
!2891 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !2885, file: !2885, line: 230, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2893, line: 108)
!2893 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !2885, file: !2885, line: 237, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2895, line: 109)
!2895 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !2885, file: !2885, line: 243, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2897, line: 110)
!2897 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !2885, file: !2885, line: 249, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2899, line: 111)
!2899 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !2885, file: !2885, line: 255, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2901, line: 112)
!2901 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !2885, file: !2885, line: 261, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2903, line: 113)
!2903 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !2885, file: !2885, line: 267, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2905, line: 114)
!2905 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !2885, file: !2885, line: 273, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2907, line: 115)
!2907 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !2885, file: !2885, line: 280, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2909, line: 116)
!2909 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !2885, file: !2885, line: 292, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2911, line: 117)
!2911 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !2885, file: !2885, line: 298, type: !2877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2913, line: 63)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2914, line: 31, baseType: !2915)
!2914 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !78, line: 112, baseType: !17)
!2916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2917, line: 64)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2918, line: 31, baseType: !2919)
!2918 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !2920, line: 40, baseType: !17)
!2920 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2922, line: 65)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2923, line: 31, baseType: !2924)
!2923 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !2920, line: 42, baseType: !2925)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !78, line: 45, baseType: !21)
!2926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2927, line: 66)
!2927 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !2928, file: !2928, line: 66, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2928 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!17, !2913}
!2931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2932, line: 67)
!2932 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !2928, file: !2928, line: 72, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2934, line: 68)
!2934 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !2935, file: !2935, line: 50, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2935 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2937, line: 69)
!2937 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !2928, file: !2928, line: 78, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2939, line: 70)
!2939 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !2928, file: !2928, line: 90, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2941, line: 71)
!2941 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !2928, file: !2928, line: 96, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2943, line: 72)
!2943 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !2928, file: !2928, line: 102, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2945, line: 73)
!2945 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !2928, file: !2928, line: 108, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2947, line: 74)
!2947 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !2928, file: !2928, line: 114, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2949, line: 75)
!2949 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !2928, file: !2928, line: 120, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2951, line: 76)
!2951 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !2928, file: !2928, line: 126, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2953, line: 77)
!2953 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !2928, file: !2928, line: 132, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2955, line: 78)
!2955 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !2928, file: !2928, line: 84, type: !2956, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!17, !2913, !2922}
!2958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2959, line: 79)
!2959 = !DISubprogram(name: "wctype", scope: !2928, file: !2928, line: 172, type: !2960, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!2922, !147}
!2962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2963, line: 80)
!2963 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !2928, file: !2928, line: 138, type: !2964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!2913, !2913}
!2966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2967, line: 81)
!2967 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !2928, file: !2928, line: 144, type: !2964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2969, line: 82)
!2969 = !DISubprogram(name: "towctrans", scope: !2935, file: !2935, line: 121, type: !2970, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!2913, !2913, !2917}
!2972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2973, line: 83)
!2973 = !DISubprogram(name: "wctrans", scope: !2935, file: !2935, line: 123, type: !2974, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!2917, !147}
!2976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2977, line: 116)
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2978, line: 31, baseType: !2979)
!2978 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !78, line: 81, baseType: !2980)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !78, line: 79, baseType: !2981)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !78, line: 76, size: 1024, elements: !2982, identifier: "_ZTS11__mbstate_t")
!2982 = !{!2983, !2987}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !2981, file: !78, line: 77, baseType: !2984, size: 1024)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !2985)
!2985 = !{!2986}
!2986 = !DISubrange(count: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !2981, file: !78, line: 78, baseType: !1321, size: 64)
!2988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !75, line: 117)
!2989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2614, line: 118)
!2990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2913, line: 119)
!2991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2669, line: 120)
!2992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2993, line: 121)
!2993 = !DISubprogram(name: "fwprintf", scope: !2994, file: !2994, line: 103, type: !2995, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2994 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!17, !2726, !2467, null}
!2997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2998, line: 122)
!2998 = !DISubprogram(name: "fwscanf", scope: !2994, file: !2994, line: 104, type: !2995, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3000, line: 123)
!3000 = !DISubprogram(name: "swprintf", scope: !2994, file: !2994, line: 115, type: !3001, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!17, !2453, !75, !2467, null}
!3003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3004, line: 124)
!3004 = !DISubprogram(name: "vfwprintf", scope: !2994, file: !2994, line: 118, type: !3005, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!17, !2726, !2467, !2759}
!3007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3008, line: 125)
!3008 = !DISubprogram(name: "vswprintf", scope: !2994, file: !2994, line: 120, type: !3009, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!17, !2453, !75, !2467, !2759}
!3011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3012, line: 126)
!3012 = !DISubprogram(name: "swscanf", scope: !2994, file: !2994, line: 116, type: !3013, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!17, !2467, !2467, null}
!3015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3016, line: 127)
!3016 = !DISubprogram(name: "vfwscanf", scope: !2994, file: !2994, line: 170, type: !3005, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3018, line: 128)
!3018 = !DISubprogram(name: "vswscanf", scope: !2994, file: !2994, line: 172, type: !3019, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!17, !2467, !2467, !2759}
!3021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3022, line: 129)
!3022 = !DISubprogram(name: "fgetwc", scope: !2994, file: !2994, line: 98, type: !3023, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!2913, !2726}
!3025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3026, line: 130)
!3026 = !DISubprogram(name: "fgetws", scope: !2994, file: !2994, line: 99, type: !3027, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!2453, !2453, !17, !2726}
!3029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3030, line: 131)
!3030 = !DISubprogram(name: "fputwc", scope: !2994, file: !2994, line: 100, type: !3031, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!2913, !2454, !2726}
!3033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3034, line: 132)
!3034 = !DISubprogram(name: "fputws", scope: !2994, file: !2994, line: 101, type: !3035, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!17, !2467, !2726}
!3037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3038, line: 133)
!3038 = !DISubprogram(name: "fwide", scope: !2994, file: !2994, line: 102, type: !3039, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!17, !2726, !17}
!3041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3042, line: 134)
!3042 = !DISubprogram(name: "getwc", scope: !2994, file: !2994, line: 105, type: !3023, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3044, line: 135)
!3044 = !DISubprogram(name: "putwc", scope: !2994, file: !2994, line: 113, type: !3031, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3046, line: 136)
!3046 = !DISubprogram(name: "ungetwc", scope: !2994, file: !2994, line: 117, type: !3047, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!2913, !2913, !2726}
!3049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3050, line: 137)
!3050 = !DISubprogram(name: "wcstod", scope: !2994, file: !2994, line: 144, type: !3051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!1524, !2467, !3053}
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!3054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3055, line: 138)
!3055 = !DISubprogram(name: "wcstof", scope: !2994, file: !2994, line: 175, type: !3056, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!1520, !2467, !3053}
!3058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3059, line: 139)
!3059 = !DISubprogram(name: "wcstold", scope: !2994, file: !2994, line: 177, type: !3060, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!1528, !2467, !3053}
!3062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3063, line: 140)
!3063 = !DISubprogram(name: "wcstol", scope: !2994, file: !2994, line: 147, type: !3064, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!58, !2467, !3053, !17}
!3066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3067, line: 142)
!3067 = !DISubprogram(name: "wcstoll", scope: !2994, file: !2994, line: 180, type: !3068, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!1321, !2467, !3053, !17}
!3070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3071, line: 144)
!3071 = !DISubprogram(name: "wcstoul", scope: !2994, file: !2994, line: 149, type: !3072, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!79, !2467, !3053, !17}
!3074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3075, line: 146)
!3075 = !DISubprogram(name: "wcstoull", scope: !2994, file: !2994, line: 182, type: !3076, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!1516, !2467, !3053, !17}
!3078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3079, line: 148)
!3079 = !DISubprogram(name: "wcscpy", scope: !2994, file: !2994, line: 128, type: !3080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!2453, !2453, !2467}
!3082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3083, line: 149)
!3083 = !DISubprogram(name: "wcsncpy", scope: !2994, file: !2994, line: 135, type: !3084, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!2453, !2453, !2467, !75}
!3086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3087, line: 150)
!3087 = !DISubprogram(name: "wcscat", scope: !2994, file: !2994, line: 124, type: !3080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3089, line: 151)
!3089 = !DISubprogram(name: "wcsncat", scope: !2994, file: !2994, line: 133, type: !3084, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3091, line: 152)
!3091 = !DISubprogram(name: "wcscmp", scope: !2994, file: !2994, line: 126, type: !3092, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!17, !2467, !2467}
!3094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3095, line: 153)
!3095 = !DISubprogram(name: "wcscoll", scope: !2994, file: !2994, line: 127, type: !3092, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3097, line: 154)
!3097 = !DISubprogram(name: "wcsncmp", scope: !2994, file: !2994, line: 134, type: !3098, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!17, !2467, !2467, !75}
!3100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3101, line: 155)
!3101 = !DISubprogram(name: "wcsxfrm", scope: !2994, file: !2994, line: 142, type: !3102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!75, !2453, !2467, !75}
!3104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3105, line: 156)
!3105 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !3106, file: !3106, line: 137, type: !3107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3106 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!2453, !2453, !2454}
!3109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3110, line: 157)
!3110 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !3106, file: !3106, line: 144, type: !3080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3112, line: 158)
!3112 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !3106, file: !3106, line: 151, type: !3107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3114, line: 159)
!3114 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !3106, file: !3106, line: 158, type: !3080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3116, line: 160)
!3116 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !3106, file: !3106, line: 165, type: !3117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!2453, !2453, !2454, !75}
!3119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3120, line: 161)
!3120 = !DISubprogram(name: "wcscspn", scope: !2994, file: !2994, line: 129, type: !3121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!75, !2467, !2467}
!3123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3124, line: 162)
!3124 = !DISubprogram(name: "wcslen", scope: !2994, file: !2994, line: 132, type: !3125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!75, !2467}
!3127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3128, line: 163)
!3128 = !DISubprogram(name: "wcsspn", scope: !2994, file: !2994, line: 140, type: !3121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3130, line: 164)
!3130 = !DISubprogram(name: "wcstok", scope: !2994, file: !2994, line: 145, type: !3131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!2453, !2453, !2467, !3053}
!3133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3134, line: 165)
!3134 = !DISubprogram(name: "wmemcmp", scope: !2994, file: !2994, line: 151, type: !3098, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3136, line: 166)
!3136 = !DISubprogram(name: "wmemcpy", scope: !2994, file: !2994, line: 152, type: !3084, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3138, line: 167)
!3138 = !DISubprogram(name: "wmemmove", scope: !2994, file: !2994, line: 153, type: !3084, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3140, line: 168)
!3140 = !DISubprogram(name: "wmemset", scope: !2994, file: !2994, line: 154, type: !3117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3142, line: 169)
!3142 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !2994, file: !2994, line: 130, type: !3143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!75, !2453, !75, !2467, !2650}
!3145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3146, line: 170)
!3146 = !DISubprogram(name: "btowc", scope: !2994, file: !2994, line: 97, type: !3147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!2913, !17}
!3149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3150, line: 171)
!3150 = !DISubprogram(name: "wctob", scope: !2994, file: !2994, line: 143, type: !2929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3152, line: 172)
!3152 = !DISubprogram(name: "mbsinit", scope: !2994, file: !2994, line: 110, type: !3153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!17, !3155}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2977)
!3157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3158, line: 173)
!3158 = !DISubprogram(name: "mbrlen", scope: !2994, file: !2994, line: 107, type: !3159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!75, !147, !75, !3161}
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!3162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3163, line: 174)
!3163 = !DISubprogram(name: "mbrtowc", scope: !2994, file: !2994, line: 108, type: !3164, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!75, !2453, !147, !75, !3161}
!3166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3167, line: 175)
!3167 = !DISubprogram(name: "wcrtomb", scope: !2994, file: !2994, line: 123, type: !3168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!75, !213, !2454, !3161}
!3170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3171, line: 176)
!3171 = !DISubprogram(name: "mbsrtowcs", scope: !2994, file: !2994, line: 111, type: !3172, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!75, !2453, !3174, !75, !3161}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!3175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3176, line: 177)
!3176 = !DISubprogram(name: "wcsrtombs", scope: !2994, file: !2994, line: 138, type: !3177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!75, !213, !3179, !75, !3161}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!3180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3181, line: 180)
!3181 = !DISubprogram(name: "getwchar", scope: !2994, file: !2994, line: 106, type: !3182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!2913}
!3184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3185, line: 181)
!3185 = !DISubprogram(name: "vwscanf", scope: !2994, file: !2994, line: 174, type: !3186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!17, !2467, !2759}
!3188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3189, line: 182)
!3189 = !DISubprogram(name: "wscanf", scope: !2994, file: !2994, line: 156, type: !3190, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!17, !2467, null}
!3192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3193, line: 186)
!3193 = !DISubprogram(name: "putwchar", scope: !2994, file: !2994, line: 114, type: !3194, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!2913, !2454}
!3196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3197, line: 187)
!3197 = !DISubprogram(name: "vwprintf", scope: !2994, file: !2994, line: 122, type: !3186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !3199, line: 188)
!3199 = !DISubprogram(name: "wprintf", scope: !2994, file: !2994, line: 155, type: !3190, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3200 = !{i32 2, !"Dwarf Version", i32 2}
!3201 = !{i32 2, !"Debug Info Version", i32 3}
!3202 = !{i32 1, !"PIC Level", i32 2}
!3203 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!3204 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 6, type: !2178, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !199)
!3205 = !DILocation(line: 6, column: 12, scope: !3204)
!3206 = distinct !DISubprogram(name: "safe_increment", linkageName: "_Z14safe_incrementv", scope: !3, file: !3, line: 8, type: !2178, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !199)
!3207 = !DILocalVariable(name: "this", arg: 1, scope: !3208, type: !3233, flags: DIFlagArtificial | DIFlagObjectPointer)
!3208 = distinct !DISubprogram(name: "~lock_guard", linkageName: "_ZNSt3__110lock_guardINS_5mutexEED2Ev", scope: !3209, file: !1644, line: 102, type: !3222, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3221, variables: !199)
!3209 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "lock_guard<std::__1::mutex>", scope: !8, file: !1644, line: 86, size: 64, elements: !3210, templateParams: !1779, identifier: "_ZTSNSt3__110lock_guardINS_5mutexEEE")
!3210 = !{!3211, !3214, !3218, !3221, !3224, !3229}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !3209, file: !1644, line: 92, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !3209, file: !1644, line: 89, baseType: !1685)
!3214 = !DISubprogram(name: "lock_guard", scope: !3209, file: !1644, line: 96, type: !3215, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !3217, !3212}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3218 = !DISubprogram(name: "lock_guard", scope: !3209, file: !1644, line: 99, type: !3219, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3217, !3212, !1743}
!3221 = !DISubprogram(name: "~lock_guard", scope: !3209, file: !1644, line: 102, type: !3222, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{null, !3217}
!3224 = !DISubprogram(name: "lock_guard", scope: !3209, file: !1644, line: 105, type: !3225, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !3217, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3209)
!3229 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110lock_guardINS_5mutexEEaSERKS2_", scope: !3209, file: !1644, line: 106, type: !3230, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!3232, !3217, !3227}
!3232 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3209, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3234 = !DIExpression()
!3235 = !DILocation(line: 0, scope: !3208, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 102, column: 74, scope: !3237, inlinedAt: !3238)
!3237 = distinct !DISubprogram(name: "~lock_guard", linkageName: "_ZNSt3__110lock_guardINS_5mutexEED1Ev", scope: !3209, file: !1644, line: 102, type: !3222, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3221, variables: !199)
!3238 = distinct !DILocation(line: 17, column: 1, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !3206, file: !3, discriminator: 1)
!3240 = !DILocalVariable(name: "this", arg: 1, scope: !3237, type: !3233, flags: DIFlagArtificial | DIFlagObjectPointer)
!3241 = !DILocation(line: 0, scope: !3237, inlinedAt: !3238)
!3242 = !DILocation(line: 0, scope: !3208, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 102, column: 74, scope: !3237, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 17, column: 1, scope: !3206)
!3245 = !DILocation(line: 0, scope: !3237, inlinedAt: !3244)
!3246 = !DILocalVariable(name: "__id", arg: 2, scope: !3247, file: !1620, line: 247, type: !3250)
!3247 = distinct !DISubprogram(name: "operator<<<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE", scope: !8, file: !1620, line: 247, type: !3248, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !616, variables: !199)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!1248, !1248, !3250}
!3250 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !8, file: !1620, line: 213, size: 64, elements: !3251, identifier: "_ZTSNSt3__111__thread_idE")
!3251 = !{!3252, !3273, !3277}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !3250, file: !1620, line: 218, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !8, file: !1648, line: 67, baseType: !3254)
!3254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !3255, line: 30, baseType: !3256)
!3255 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!3256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !1652, line: 118, baseType: !3257)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !1652, line: 103, size: 65536, elements: !3259, identifier: "_ZTS17_opaque_pthread_t")
!3259 = !{!3260, !3261, !3269}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !3258, file: !1652, line: 104, baseType: !58, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !3258, file: !1652, line: 105, baseType: !3262, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !1652, line: 57, size: 192, elements: !3264, identifier: "_ZTS28__darwin_pthread_handler_rec")
!3264 = !{!3265, !3267, !3268}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !3263, file: !1652, line: 58, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !3263, file: !1652, line: 59, baseType: !63, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !3263, file: !1652, line: 60, baseType: !3262, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !3258, file: !1652, line: 106, baseType: !3270, size: 65408, offset: 128)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 65408, elements: !3271)
!3271 = !{!3272}
!3272 = !DISubrange(count: 8176)
!3273 = !DISubprogram(name: "__thread_id", scope: !3250, file: !1620, line: 222, type: !3274, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !3276}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3277 = !DISubprogram(name: "__thread_id", scope: !3250, file: !1620, line: 252, type: !3278, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3276, !3253}
!3280 = !DILocation(line: 247, column: 66, scope: !3247, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 13, column: 15, scope: !3206)
!3282 = !DILocalVariable(name: "__os", arg: 1, scope: !3247, file: !1620, line: 247, type: !1248)
!3283 = !DILocation(line: 247, column: 48, scope: !3247, inlinedAt: !3281)
!3284 = !DILocalVariable(name: "this", arg: 1, scope: !3285, type: !3286, flags: DIFlagArtificial | DIFlagObjectPointer)
!3285 = distinct !DISubprogram(name: "__thread_id", linkageName: "_ZNSt3__111__thread_idC2EP17_opaque_pthread_t", scope: !3250, file: !1620, line: 252, type: !3278, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3277, variables: !199)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3287 = !DILocation(line: 0, scope: !3285, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 252, column: 56, scope: !3289, inlinedAt: !3290)
!3289 = distinct !DISubprogram(name: "__thread_id", linkageName: "_ZNSt3__111__thread_idC1EP17_opaque_pthread_t", scope: !3250, file: !1620, line: 252, type: !3278, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3277, variables: !199)
!3290 = distinct !DILocation(line: 277, column: 12, scope: !3291, inlinedAt: !3296)
!3291 = !DILexicalBlockFile(scope: !3292, file: !1620, discriminator: 1)
!3292 = distinct !DISubprogram(name: "get_id", linkageName: "_ZNSt3__111this_thread6get_idEv", scope: !3293, file: !1620, line: 275, type: !3294, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !199)
!3293 = !DINamespace(name: "this_thread", scope: !8, file: !1620, line: 204)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!3250}
!3296 = distinct !DILocation(line: 13, column: 18, scope: !3206)
!3297 = !DILocalVariable(name: "__id", arg: 2, scope: !3285, file: !1620, line: 252, type: !3253)
!3298 = !DILocation(line: 252, column: 36, scope: !3285, inlinedAt: !3288)
!3299 = !DILocalVariable(name: "this", arg: 1, scope: !3289, type: !3286, flags: DIFlagArtificial | DIFlagObjectPointer)
!3300 = !DILocation(line: 0, scope: !3289, inlinedAt: !3290)
!3301 = !DILocalVariable(name: "__id", arg: 2, scope: !3289, file: !1620, line: 252, type: !3253)
!3302 = !DILocation(line: 252, column: 36, scope: !3289, inlinedAt: !3290)
!3303 = !DILocalVariable(name: "this", arg: 1, scope: !3304, type: !3233, flags: DIFlagArtificial | DIFlagObjectPointer)
!3304 = distinct !DISubprogram(name: "lock_guard", linkageName: "_ZNSt3__110lock_guardINS_5mutexEEC2ERS1_", scope: !3209, file: !1644, line: 96, type: !3215, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3214, variables: !199)
!3305 = !DILocation(line: 0, scope: !3304, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 97, column: 21, scope: !3307, inlinedAt: !3308)
!3307 = distinct !DISubprogram(name: "lock_guard", linkageName: "_ZNSt3__110lock_guardINS_5mutexEEC1ERS1_", scope: !3209, file: !1644, line: 96, type: !3215, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3214, variables: !199)
!3308 = distinct !DILocation(line: 10, column: 33, scope: !3206)
!3309 = !DILocalVariable(name: "__m", arg: 2, scope: !3304, file: !1644, line: 96, type: !3212)
!3310 = !DILocation(line: 96, column: 37, scope: !3304, inlinedAt: !3306)
!3311 = !DILocalVariable(name: "this", arg: 1, scope: !3307, type: !3233, flags: DIFlagArtificial | DIFlagObjectPointer)
!3312 = !DILocation(line: 0, scope: !3307, inlinedAt: !3308)
!3313 = !DILocalVariable(name: "__m", arg: 2, scope: !3307, file: !1644, line: 96, type: !3212)
!3314 = !DILocation(line: 96, column: 37, scope: !3307, inlinedAt: !3308)
!3315 = !DILocalVariable(name: "lock", scope: !3206, file: !3, line: 10, type: !3209)
!3316 = !DILocation(line: 10, column: 33, scope: !3206)
!3317 = !DILocation(line: 97, column: 21, scope: !3307, inlinedAt: !3308)
!3318 = !DILocation(line: 97, column: 11, scope: !3304, inlinedAt: !3306)
!3319 = !DILocation(line: 97, column: 16, scope: !3304, inlinedAt: !3306)
!3320 = !DILocation(line: 97, column: 22, scope: !3321, inlinedAt: !3306)
!3321 = distinct !DILexicalBlock(scope: !3304, file: !1644, line: 97, column: 21)
!3322 = !DILocation(line: 97, column: 27, scope: !3321, inlinedAt: !3306)
!3323 = !DILocation(line: 11, column: 5, scope: !3206)
!3324 = !DILocation(line: 329, column: 10, scope: !3325, inlinedAt: !3328)
!3325 = distinct !DISubprogram(name: "__libcpp_thread_get_current_id", linkageName: "_ZNSt3__130__libcpp_thread_get_current_idEv", scope: !8, file: !1648, line: 327, type: !3326, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !199)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!3253}
!3328 = distinct !DILocation(line: 277, column: 12, scope: !3292, inlinedAt: !3296)
!3329 = !DILocation(line: 277, column: 12, scope: !3330, inlinedAt: !3296)
!3330 = !DILexicalBlockFile(scope: !3292, file: !1620, discriminator: 3)
!3331 = !DILocation(line: 252, column: 56, scope: !3289, inlinedAt: !3290)
!3332 = !DILocation(line: 252, column: 44, scope: !3285, inlinedAt: !3288)
!3333 = !DILocation(line: 252, column: 50, scope: !3285, inlinedAt: !3288)
!3334 = !DILocation(line: 277, column: 5, scope: !3335, inlinedAt: !3296)
!3335 = !DILexicalBlockFile(scope: !3292, file: !1620, discriminator: 2)
!3336 = !DILocation(line: 13, column: 18, scope: !3206)
!3337 = !DILocation(line: 13, column: 15, scope: !3206)
!3338 = !DILocation(line: 248, column: 17, scope: !3247, inlinedAt: !3281)
!3339 = !DILocation(line: 248, column: 30, scope: !3247, inlinedAt: !3281)
!3340 = !DILocation(line: 248, column: 25, scope: !3247, inlinedAt: !3281)
!3341 = !DILocation(line: 248, column: 22, scope: !3247, inlinedAt: !3281)
!3342 = !DILocation(line: 248, column: 10, scope: !3247, inlinedAt: !3281)
!3343 = !DILocation(line: 13, column: 45, scope: !3239)
!3344 = !DILocation(line: 13, column: 56, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !3206, file: !3, discriminator: 2)
!3346 = !DILocation(line: 13, column: 53, scope: !3345)
!3347 = !DILocation(line: 13, column: 60, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3206, file: !3, discriminator: 3)
!3349 = !DILocation(line: 102, column: 75, scope: !3350, inlinedAt: !3243)
!3350 = distinct !DILexicalBlock(scope: !3208, file: !1644, line: 102, column: 74)
!3351 = !DILocation(line: 102, column: 80, scope: !3350, inlinedAt: !3243)
!3352 = !DILocation(line: 17, column: 1, scope: !3206)
!3353 = !DILocation(line: 17, column: 1, scope: !3239)
!3354 = !DILocation(line: 102, column: 75, scope: !3350, inlinedAt: !3236)
!3355 = !DILocation(line: 102, column: 80, scope: !3350, inlinedAt: !3236)
!3356 = !DILocation(line: 17, column: 1, scope: !3345)
!3357 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c", scope: !8, file: !1244, line: 788, type: !3358, isLocal: false, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3360, variables: !199)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!1248, !1248, !149}
!3360 = !{!618}
!3361 = !DILocalVariable(name: "__os", arg: 1, scope: !3357, file: !1244, line: 788, type: !1248)
!3362 = !DILocation(line: 788, column: 42, scope: !3357)
!3363 = !DILocalVariable(name: "__c", arg: 2, scope: !3357, file: !1244, line: 788, type: !149)
!3364 = !DILocation(line: 788, column: 53, scope: !3357)
!3365 = !DILocation(line: 790, column: 44, scope: !3357)
!3366 = !DILocation(line: 790, column: 12, scope: !3357)
!3367 = !DILocation(line: 790, column: 5, scope: !3357)
!3368 = distinct !DISubprogram(name: "operator<<<std::__1::char_traits<char> >", linkageName: "_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc", scope: !8, file: !1244, line: 862, type: !3369, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3360, variables: !199)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!1248, !1248, !147}
!3371 = !DILocalVariable(name: "__os", arg: 1, scope: !3368, file: !1244, line: 862, type: !1248)
!3372 = !DILocation(line: 862, column: 42, scope: !3368)
!3373 = !DILocalVariable(name: "__str", arg: 2, scope: !3368, file: !1244, line: 862, type: !147)
!3374 = !DILocation(line: 862, column: 60, scope: !3368)
!3375 = !DILocation(line: 864, column: 44, scope: !3368)
!3376 = !DILocation(line: 864, column: 50, scope: !3368)
!3377 = !DILocation(line: 864, column: 73, scope: !3368)
!3378 = !DILocation(line: 864, column: 57, scope: !3368)
!3379 = !DILocation(line: 864, column: 12, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3368, file: !1244, discriminator: 1)
!3381 = !DILocation(line: 864, column: 5, scope: !3368)
!3382 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 19, type: !15, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !199)
!3383 = !DILocation(line: 21, column: 15, scope: !3382)
!3384 = !DILocation(line: 21, column: 27, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3382, file: !3, discriminator: 1)
!3386 = !DILocation(line: 21, column: 38, scope: !3382)
!3387 = !DILocation(line: 21, column: 35, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3382, file: !3, discriminator: 2)
!3389 = !DILocation(line: 21, column: 42, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3382, file: !3, discriminator: 3)
!3391 = !DILocalVariable(name: "t1", scope: !3382, file: !3, line: 23, type: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !8, file: !1620, line: 282, size: 64, elements: !3393, identifier: "_ZTSNSt3__16threadE")
!3393 = !{!3394, !3396, !3402, !3406, !3409, !3410, !3414, !3417, !3420, !3424, !3425, !3426, !3430, !3434}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !3392, file: !1620, line: 284, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !8, file: !1648, line: 72, baseType: !3254)
!3396 = !DISubprogram(name: "thread", scope: !3392, file: !1620, line: 286, type: !3397, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3400 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3392)
!3402 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !3392, file: !1620, line: 287, type: !3403, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!3405, !3399, !3400}
!3405 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3392, size: 64)
!3406 = !DISubprogram(name: "thread", scope: !3392, file: !1620, line: 293, type: !3407, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3399}
!3409 = !DISubprogram(name: "~thread", scope: !3392, file: !1620, line: 308, type: !3407, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3410 = !DISubprogram(name: "thread", scope: !3392, file: !1620, line: 312, type: !3411, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3399, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3392, size: 64)
!3414 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !3392, file: !1620, line: 314, type: !3415, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!3405, !3399, !3413}
!3417 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !3392, file: !1620, line: 318, type: !3418, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !3399, !3405}
!3420 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !3392, file: !1620, line: 321, type: !3421, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!171, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3424 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !3392, file: !1620, line: 322, type: !3407, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3425 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !3392, file: !1620, line: 323, type: !3407, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3426 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !3392, file: !1620, line: 325, type: !3427, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!3429, !3423}
!3429 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !3392, file: !1620, line: 289, baseType: !3250)
!3430 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !3392, file: !1620, line: 327, type: !3431, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!3433, !3399}
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !3392, file: !1620, line: 290, baseType: !3395)
!3434 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !3392, file: !1620, line: 329, type: !3435, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!21}
!3437 = !DILocation(line: 23, column: 17, scope: !3382)
!3438 = !DILocalVariable(name: "t2", scope: !3382, file: !3, line: 24, type: !3392)
!3439 = !DILocation(line: 24, column: 17, scope: !3382)
!3440 = !DILocation(line: 26, column: 8, scope: !3382)
!3441 = !DILocation(line: 27, column: 8, scope: !3382)
!3442 = !DILocation(line: 29, column: 15, scope: !3382)
!3443 = !DILocation(line: 29, column: 27, scope: !3385)
!3444 = !DILocation(line: 29, column: 38, scope: !3388)
!3445 = !DILocation(line: 29, column: 35, scope: !3388)
!3446 = !DILocation(line: 29, column: 42, scope: !3390)
!3447 = !DILocation(line: 30, column: 1, scope: !3382)
!3448 = !DILocation(line: 30, column: 1, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3382, file: !3, discriminator: 5)
!3450 = !DILocation(line: 30, column: 1, scope: !3385)
!3451 = !DILocation(line: 30, column: 1, scope: !3388)
!3452 = !DILocation(line: 30, column: 1, scope: !3390)
!3453 = !DILocation(line: 30, column: 1, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3382, file: !3, discriminator: 4)
!3455 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !3392, file: !1620, line: 356, type: !3456, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3459, declaration: !3463, variables: !199)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !3399, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2178, size: 64)
!3459 = !{!3460, !3461, !3462}
!3460 = !DITemplateTypeParameter(name: "_Fp", type: !3458)
!3461 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !199)
!3462 = !DITemplateTypeParameter(type: null)
!3463 = !DISubprogram(name: "thread<void (&)(), void>", scope: !3392, file: !1620, line: 356, type: !3456, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !3459)
!3464 = !DILocalVariable(name: "this", arg: 1, scope: !3455, type: !3465, flags: DIFlagArtificial | DIFlagObjectPointer)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3466 = !DILocation(line: 0, scope: !3455)
!3467 = !DILocalVariable(name: "__f", arg: 2, scope: !3455, file: !1620, line: 356, type: !3458)
!3468 = !DILocation(line: 356, column: 22, scope: !3455)
!3469 = !DILocation(line: 357, column: 1, scope: !3455)
!3470 = !DILocation(line: 370, column: 1, scope: !3455)
!3471 = !DILocalVariable(name: "this", arg: 1, scope: !3472, type: !3561, flags: DIFlagArtificial | DIFlagObjectPointer)
!3472 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !3473, file: !120, line: 625, type: !3533, isLocal: false, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3532, variables: !199)
!3473 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !8, file: !120, line: 558, size: 256, elements: !3474, vtableHolder: !1080, templateParams: !667, identifier: "_ZTSNSt3__15ctypeIcEE")
!3474 = !{!3475, !3476, !3497, !3499, !3500, !3501, !3503, !3507, !3513, !3519, !3522, !3523, !3526, !3530, !3531, !3532, !3535, !3538, !3541, !3544, !3547, !3550, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3475 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3473, baseType: !1077, flags: DIFlagPublic)
!3476 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3473, baseType: !3477, flags: DIFlagPublic)
!3477 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype_base", scope: !8, file: !120, line: 355, size: 8, elements: !3478, identifier: "_ZTSNSt3__110ctype_baseE")
!3478 = !{!3479, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !3477, file: !120, line: 391, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 16384)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "mask", scope: !3477, file: !120, line: 385, baseType: !2925)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !3477, file: !120, line: 392, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 262144)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cntrl", scope: !3477, file: !120, line: 393, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !3477, file: !120, line: 394, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 32768)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !3477, file: !120, line: 395, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 4096)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !3477, file: !120, line: 396, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "digit", scope: !3477, file: !120, line: 397, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !3477, file: !120, line: 398, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 8192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "xdigit", scope: !3477, file: !120, line: 399, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 65536)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "blank", scope: !3477, file: !120, line: 404, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 131072)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "alnum", scope: !3477, file: !120, line: 447, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !3477, file: !120, line: 448, baseType: !3480, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 9472)
!3493 = !DISubprogram(name: "ctype_base", scope: !3477, file: !120, line: 450, type: !3494, isLocal: false, isDefinition: false, scopeLine: 450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{null, !3496}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "__tab_", scope: !3473, file: !120, line: 561, baseType: !3498, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "__del_", scope: !3473, file: !120, line: 562, baseType: !171, size: 8, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3473, file: !120, line: 648, baseType: !1125, flags: DIFlagPublic | DIFlagStaticMember)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !3473, file: !120, line: 651, baseType: !3502, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 256)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!3503 = !DISubprogram(name: "ctype", scope: !3473, file: !120, line: 566, type: !3504, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3506, !3498, !171, !75}
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3507 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEjc", scope: !3473, file: !120, line: 569, type: !3508, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!171, !3510, !3481, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !3473, file: !120, line: 564, baseType: !149)
!3513 = !DISubprogram(name: "is", linkageName: "_ZNKSt3__15ctypeIcE2isEPKcS3_Pj", scope: !3473, file: !120, line: 575, type: !3514, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!3516, !3510, !3516, !3516, !3518}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3519 = !DISubprogram(name: "scan_is", linkageName: "_ZNKSt3__15ctypeIcE7scan_isEjPKcS3_", scope: !3473, file: !120, line: 583, type: !3520, isLocal: false, isDefinition: false, scopeLine: 583, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!3516, !3510, !3481, !3516, !3516}
!3522 = !DISubprogram(name: "scan_not", linkageName: "_ZNKSt3__15ctypeIcE8scan_notEjPKcS3_", scope: !3473, file: !120, line: 592, type: !3520, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3523 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEc", scope: !3473, file: !120, line: 601, type: !3524, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!3512, !3510, !3512}
!3526 = !DISubprogram(name: "toupper", linkageName: "_ZNKSt3__15ctypeIcE7toupperEPcPKc", scope: !3473, file: !120, line: 607, type: !3527, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!3516, !3510, !3529, !3516}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3530 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEc", scope: !3473, file: !120, line: 613, type: !3524, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3531 = !DISubprogram(name: "tolower", linkageName: "_ZNKSt3__15ctypeIcE7tolowerEPcPKc", scope: !3473, file: !120, line: 619, type: !3527, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3532 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEc", scope: !3473, file: !120, line: 625, type: !3533, isLocal: false, isDefinition: false, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!3512, !3510, !149}
!3535 = !DISubprogram(name: "widen", linkageName: "_ZNKSt3__15ctypeIcE5widenEPKcS3_Pc", scope: !3473, file: !120, line: 631, type: !3536, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!147, !3510, !147, !147, !3529}
!3538 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEcc", scope: !3473, file: !120, line: 637, type: !3539, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!149, !3510, !3512, !149}
!3541 = !DISubprogram(name: "narrow", linkageName: "_ZNKSt3__15ctypeIcE6narrowEPKcS3_cPc", scope: !3473, file: !120, line: 643, type: !3542, isLocal: false, isDefinition: false, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!147, !3510, !3516, !3516, !149, !213}
!3544 = !DISubprogram(name: "table", linkageName: "_ZNKSt3__15ctypeIcE5tableEv", scope: !3473, file: !120, line: 655, type: !3545, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!3498, !3510}
!3547 = !DISubprogram(name: "classic_table", linkageName: "_ZNSt3__15ctypeIcE13classic_tableEv", scope: !3473, file: !120, line: 656, type: !3548, isLocal: false, isDefinition: false, scopeLine: 656, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!3498}
!3550 = !DISubprogram(name: "~ctype", scope: !3473, file: !120, line: 667, type: !3551, isLocal: false, isDefinition: false, scopeLine: 667, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !3506}
!3553 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEc", scope: !3473, file: !120, line: 668, type: !3524, isLocal: false, isDefinition: false, scopeLine: 668, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3554 = !DISubprogram(name: "do_toupper", linkageName: "_ZNKSt3__15ctypeIcE10do_toupperEPcPKc", scope: !3473, file: !120, line: 669, type: !3527, isLocal: false, isDefinition: false, scopeLine: 669, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3555 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEc", scope: !3473, file: !120, line: 670, type: !3524, isLocal: false, isDefinition: false, scopeLine: 670, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3556 = !DISubprogram(name: "do_tolower", linkageName: "_ZNKSt3__15ctypeIcE10do_tolowerEPcPKc", scope: !3473, file: !120, line: 671, type: !3527, isLocal: false, isDefinition: false, scopeLine: 671, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3557 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEc", scope: !3473, file: !120, line: 672, type: !3533, isLocal: false, isDefinition: false, scopeLine: 672, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3558 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt3__15ctypeIcE8do_widenEPKcS3_Pc", scope: !3473, file: !120, line: 673, type: !3536, isLocal: false, isDefinition: false, scopeLine: 673, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3559 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEcc", scope: !3473, file: !120, line: 674, type: !3539, isLocal: false, isDefinition: false, scopeLine: 674, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3560 = !DISubprogram(name: "do_narrow", linkageName: "_ZNKSt3__15ctypeIcE9do_narrowEPKcS3_cPc", scope: !3473, file: !120, line: 675, type: !3542, isLocal: false, isDefinition: false, scopeLine: 675, containingType: !3473, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 10, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3562 = !DILocation(line: 0, scope: !3472, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 756, column: 51, scope: !3564, inlinedAt: !3566)
!3564 = !DILexicalBlockFile(scope: !3565, file: !6, discriminator: 1)
!3565 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc", scope: !1252, file: !6, line: 754, type: !1430, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1429, variables: !199)
!3566 = distinct !DILocation(line: 765, column: 19, scope: !3567, inlinedAt: !3569)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !6, line: 764, column: 9)
!3568 = distinct !DISubprogram(name: "fill", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv", scope: !1252, file: !6, line: 762, type: !1417, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1416, variables: !199)
!3569 = distinct !DILocation(line: 732, column: 39, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !1244, line: 725, column: 17)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !1244, line: 723, column: 9)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !1244, line: 722, column: 13)
!3573 = distinct !DILexicalBlock(scope: !1245, file: !1244, line: 719, column: 5)
!3574 = !DILocalVariable(name: "__c", arg: 2, scope: !3472, file: !120, line: 625, type: !149)
!3575 = !DILocation(line: 625, column: 26, scope: !3472, inlinedAt: !3563)
!3576 = !DILocalVariable(name: "__l", arg: 1, scope: !3577, file: !120, line: 210, type: !142)
!3577 = distinct !DISubprogram(name: "use_facet<std::__1::ctype<char> >", linkageName: "_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE", scope: !8, file: !120, line: 210, type: !3578, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3581, variables: !199)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!3580, !142}
!3580 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3511, size: 64)
!3581 = !{!3582}
!3582 = !DITemplateTypeParameter(name: "_Facet", type: !3473)
!3583 = !DILocation(line: 210, column: 25, scope: !3577, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 756, column: 12, scope: !3565, inlinedAt: !3566)
!3585 = !DILocalVariable(name: "this", arg: 1, scope: !3565, type: !3586, flags: DIFlagArtificial | DIFlagObjectPointer)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!3587 = !DILocation(line: 0, scope: !3565, inlinedAt: !3566)
!3588 = !DILocalVariable(name: "__c", arg: 2, scope: !3565, file: !6, line: 649, type: !149)
!3589 = !DILocation(line: 649, column: 26, scope: !3565, inlinedAt: !3566)
!3590 = !DILocalVariable(name: "this", arg: 1, scope: !3568, type: !3586, flags: DIFlagArtificial | DIFlagObjectPointer)
!3591 = !DILocation(line: 0, scope: !3568, inlinedAt: !3569)
!3592 = !DILocalVariable(name: "this", arg: 1, scope: !3593, type: !3594, flags: DIFlagArtificial | DIFlagObjectPointer)
!3593 = distinct !DISubprogram(name: "failed", linkageName: "_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv", scope: !1559, file: !528, line: 1044, type: !1593, isLocal: false, isDefinition: true, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1592, variables: !199)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!3595 = !DILocation(line: 0, scope: !3593, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 732, column: 47, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3570, file: !1244, discriminator: 1)
!3598 = !DILocalVariable(name: "this", arg: 1, scope: !3599, type: !3600, flags: DIFlagArtificial | DIFlagObjectPointer)
!3599 = distinct !DISubprogram(name: "flags", linkageName: "_ZNKSt3__18ios_base5flagsEv", scope: !7, file: !6, line: 440, type: !93, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !92, variables: !199)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!3601 = !DILocation(line: 0, scope: !3599, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 727, column: 40, scope: !3570)
!3603 = !DILocalVariable(name: "this", arg: 1, scope: !3604, type: !3605, flags: DIFlagArtificial | DIFlagObjectPointer)
!3604 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__18ios_base8setstateEj", scope: !7, file: !6, line: 527, type: !1200, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1202, variables: !199)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3606 = !DILocation(line: 0, scope: !3604, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 611, column: 69, scope: !3608, inlinedAt: !3609)
!3608 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj", scope: !1252, file: !6, line: 611, type: !1270, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1273, variables: !199)
!3609 = distinct !DILocation(line: 733, column: 22, scope: !3570)
!3610 = !DILocalVariable(name: "__state", arg: 2, scope: !3604, file: !6, line: 527, type: !41)
!3611 = !DILocation(line: 527, column: 28, scope: !3604, inlinedAt: !3607)
!3612 = !DILocalVariable(name: "this", arg: 1, scope: !3608, type: !3613, flags: DIFlagArtificial | DIFlagObjectPointer)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!3614 = !DILocation(line: 0, scope: !3608, inlinedAt: !3609)
!3615 = !DILocalVariable(name: "__state", arg: 2, scope: !3608, file: !6, line: 611, type: !41)
!3616 = !DILocation(line: 611, column: 49, scope: !3608, inlinedAt: !3609)
!3617 = !DILocalVariable(name: "this", arg: 1, scope: !3618, type: !3600, flags: DIFlagArtificial | DIFlagObjectPointer)
!3618 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__18ios_base5rdbufEv", scope: !7, file: !6, line: 340, type: !1218, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1217, variables: !199)
!3619 = !DILocation(line: 0, scope: !3618, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 718, column: 76, scope: !3621, inlinedAt: !3622)
!3621 = distinct !DISubprogram(name: "rdbuf", linkageName: "_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv", scope: !1252, file: !6, line: 716, type: !1406, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1405, variables: !199)
!3622 = distinct !DILocation(line: 1032, column: 23, scope: !3623, inlinedAt: !3624)
!3623 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE", scope: !1559, file: !528, line: 1031, type: !1573, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1572, variables: !199)
!3624 = distinct !DILocation(line: 1032, column: 32, scope: !3625, inlinedAt: !3626)
!3625 = distinct !DISubprogram(name: "ostreambuf_iterator", linkageName: "_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE", scope: !1559, file: !528, line: 1031, type: !1573, isLocal: false, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1572, variables: !199)
!3626 = distinct !DILocation(line: 725, column: 34, scope: !3570)
!3627 = !DILocalVariable(name: "this", arg: 1, scope: !3621, type: !3586, flags: DIFlagArtificial | DIFlagObjectPointer)
!3628 = !DILocation(line: 0, scope: !3621, inlinedAt: !3622)
!3629 = !DILocalVariable(name: "this", arg: 1, scope: !3623, type: !3630, flags: DIFlagArtificial | DIFlagObjectPointer)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!3631 = !DILocation(line: 0, scope: !3623, inlinedAt: !3624)
!3632 = !DILocalVariable(name: "__s", arg: 2, scope: !3623, file: !528, line: 1031, type: !1576)
!3633 = !DILocation(line: 1031, column: 65, scope: !3623, inlinedAt: !3624)
!3634 = !DILocalVariable(name: "this", arg: 1, scope: !3625, type: !3630, flags: DIFlagArtificial | DIFlagObjectPointer)
!3635 = !DILocation(line: 0, scope: !3625, inlinedAt: !3626)
!3636 = !DILocalVariable(name: "__s", arg: 2, scope: !3625, file: !528, line: 1031, type: !1576)
!3637 = !DILocation(line: 1031, column: 65, scope: !3625, inlinedAt: !3626)
!3638 = !DILocalVariable(name: "this", arg: 1, scope: !3639, type: !3664, flags: DIFlagArtificial | DIFlagObjectPointer)
!3639 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !3640, file: !1244, line: 254, type: !3661, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3660, variables: !199)
!3640 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "sentry", scope: !1249, file: !1244, line: 190, size: 128, elements: !3641, identifier: "_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE")
!3641 = !{!3642, !3643, !3644, !3650, !3654, !3657, !3660}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "__ok_", scope: !3640, file: !1244, line: 242, baseType: !171, size: 8)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "__os_", scope: !3640, file: !1244, line: 243, baseType: !1248, size: 64, offset: 64)
!3644 = !DISubprogram(name: "sentry", scope: !3640, file: !1244, line: 245, type: !3645, isLocal: false, isDefinition: false, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !3647, !3648}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3648 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3650 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryaSERKS4_", scope: !3640, file: !1244, line: 246, type: !3651, isLocal: false, isDefinition: false, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!3653, !3647, !3648}
!3653 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3640, size: 64)
!3654 = !DISubprogram(name: "sentry", scope: !3640, file: !1244, line: 249, type: !3655, isLocal: false, isDefinition: false, scopeLine: 249, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{null, !3647, !1248}
!3657 = !DISubprogram(name: "~sentry", scope: !3640, file: !1244, line: 250, type: !3658, isLocal: false, isDefinition: false, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3647}
!3660 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv", scope: !3640, file: !1244, line: 254, type: !3661, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!171, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3665 = !DILocation(line: 0, scope: !3639, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 722, column: 13, scope: !3572)
!3667 = !DILocalVariable(name: "__os", arg: 1, scope: !1245, file: !1244, line: 714, type: !1248)
!3668 = !DILocation(line: 714, column: 58, scope: !1245)
!3669 = !DILocalVariable(name: "__str", arg: 2, scope: !1245, file: !1244, line: 715, type: !147)
!3670 = !DILocation(line: 715, column: 41, scope: !1245)
!3671 = !DILocalVariable(name: "__len", arg: 3, scope: !1245, file: !1244, line: 715, type: !75)
!3672 = !DILocation(line: 715, column: 55, scope: !1245)
!3673 = !DILocalVariable(name: "__s", scope: !3573, file: !1244, line: 721, type: !3640)
!3674 = !DILocation(line: 721, column: 57, scope: !3573)
!3675 = !DILocation(line: 721, column: 61, scope: !3573)
!3676 = !DILocation(line: 254, column: 39, scope: !3639, inlinedAt: !3666)
!3677 = !DILocation(line: 254, column: 32, scope: !3639, inlinedAt: !3666)
!3678 = !DILocation(line: 722, column: 13, scope: !3679)
!3679 = !DILexicalBlockFile(scope: !3573, file: !1244, discriminator: 1)
!3680 = !DILocation(line: 725, column: 38, scope: !3570)
!3681 = !DILocation(line: 1032, column: 32, scope: !3625, inlinedAt: !3626)
!3682 = !DILocation(line: 1032, column: 32, scope: !3623, inlinedAt: !3624)
!3683 = !DILocation(line: 1032, column: 11, scope: !3623, inlinedAt: !3624)
!3684 = !DILocation(line: 1032, column: 19, scope: !3623, inlinedAt: !3624)
!3685 = !DILocation(line: 718, column: 76, scope: !3621, inlinedAt: !3622)
!3686 = !DILocation(line: 340, column: 55, scope: !3618, inlinedAt: !3620)
!3687 = !DILocation(line: 718, column: 12, scope: !3621, inlinedAt: !3622)
!3688 = !DILocation(line: 1032, column: 11, scope: !3689, inlinedAt: !3624)
!3689 = !DILexicalBlockFile(scope: !3623, file: !528, discriminator: 1)
!3690 = !DILocation(line: 726, column: 34, scope: !3570)
!3691 = !DILocation(line: 727, column: 35, scope: !3570)
!3692 = !DILocation(line: 442, column: 12, scope: !3599, inlinedAt: !3602)
!3693 = !DILocation(line: 442, column: 5, scope: !3599, inlinedAt: !3602)
!3694 = !DILocation(line: 727, column: 48, scope: !3597)
!3695 = !DILocation(line: 727, column: 73, scope: !3597)
!3696 = !DILocation(line: 727, column: 34, scope: !3597)
!3697 = !DILocation(line: 728, column: 38, scope: !3570)
!3698 = !DILocation(line: 728, column: 46, scope: !3570)
!3699 = !DILocation(line: 728, column: 44, scope: !3570)
!3700 = !DILocation(line: 727, column: 34, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3570, file: !1244, discriminator: 2)
!3702 = !DILocation(line: 729, column: 38, scope: !3570)
!3703 = !DILocation(line: 727, column: 34, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3570, file: !1244, discriminator: 3)
!3705 = !DILocation(line: 727, column: 34, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3570, file: !1244, discriminator: 4)
!3707 = !DILocation(line: 730, column: 34, scope: !3570)
!3708 = !DILocation(line: 730, column: 42, scope: !3570)
!3709 = !DILocation(line: 730, column: 40, scope: !3570)
!3710 = !DILocation(line: 731, column: 34, scope: !3570)
!3711 = !DILocation(line: 732, column: 34, scope: !3570)
!3712 = !DILocation(line: 764, column: 34, scope: !3567, inlinedAt: !3569)
!3713 = !DILocation(line: 764, column: 54, scope: !3567, inlinedAt: !3569)
!3714 = !DILocation(line: 764, column: 9, scope: !3715, inlinedAt: !3569)
!3715 = !DILexicalBlockFile(scope: !3567, file: !6, discriminator: 1)
!3716 = !DILocation(line: 764, column: 9, scope: !3568, inlinedAt: !3569)
!3717 = !DILocation(line: 756, column: 41, scope: !3565, inlinedAt: !3566)
!3718 = !DILocation(line: 212, column: 40, scope: !3577, inlinedAt: !3584)
!3719 = !DILocation(line: 212, column: 44, scope: !3577, inlinedAt: !3584)
!3720 = !DILocation(line: 212, column: 12, scope: !3577, inlinedAt: !3584)
!3721 = !DILocation(line: 756, column: 57, scope: !3564, inlinedAt: !3566)
!3722 = !DILocation(line: 627, column: 16, scope: !3472, inlinedAt: !3563)
!3723 = !DILocation(line: 627, column: 25, scope: !3472, inlinedAt: !3563)
!3724 = !DILocation(line: 757, column: 1, scope: !3565, inlinedAt: !3566)
!3725 = !DILocation(line: 756, column: 5, scope: !3726, inlinedAt: !3566)
!3726 = !DILexicalBlockFile(scope: !3565, file: !6, discriminator: 3)
!3727 = !DILocation(line: 756, column: 5, scope: !3728, inlinedAt: !3566)
!3728 = !DILexicalBlockFile(scope: !3565, file: !6, discriminator: 4)
!3729 = !DILocation(line: 756, column: 5, scope: !3730, inlinedAt: !3566)
!3730 = !DILexicalBlockFile(scope: !3565, file: !6, discriminator: 2)
!3731 = !DILocation(line: 765, column: 19, scope: !3567, inlinedAt: !3569)
!3732 = !DILocation(line: 765, column: 9, scope: !3567, inlinedAt: !3569)
!3733 = !DILocation(line: 765, column: 17, scope: !3567, inlinedAt: !3569)
!3734 = !DILocation(line: 766, column: 12, scope: !3568, inlinedAt: !3569)
!3735 = !DILocation(line: 766, column: 5, scope: !3568, inlinedAt: !3569)
!3736 = !DILocation(line: 725, column: 17, scope: !3597)
!3737 = !DILocation(line: 725, column: 17, scope: !3701)
!3738 = !DILocation(line: 1044, column: 69, scope: !3593, inlinedAt: !3596)
!3739 = !DILocation(line: 1044, column: 77, scope: !3593, inlinedAt: !3596)
!3740 = !DILocation(line: 725, column: 17, scope: !3741)
!3741 = !DILexicalBlockFile(scope: !3571, file: !1244, discriminator: 2)
!3742 = !DILocation(line: 733, column: 17, scope: !3570)
!3743 = !DILocation(line: 611, column: 69, scope: !3608, inlinedAt: !3609)
!3744 = !DILocation(line: 611, column: 78, scope: !3608, inlinedAt: !3609)
!3745 = !DILocation(line: 529, column: 11, scope: !3604, inlinedAt: !3607)
!3746 = !DILocation(line: 529, column: 24, scope: !3604, inlinedAt: !3607)
!3747 = !DILocation(line: 529, column: 22, scope: !3604, inlinedAt: !3607)
!3748 = !DILocation(line: 529, column: 5, scope: !3604, inlinedAt: !3607)
!3749 = !DILocation(line: 611, column: 87, scope: !3608, inlinedAt: !3609)
!3750 = !DILocation(line: 733, column: 17, scope: !3597)
!3751 = !DILocation(line: 743, column: 1, scope: !3573)
!3752 = !DILocation(line: 743, column: 1, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3572, file: !1244, discriminator: 1)
!3754 = !DILocation(line: 736, column: 5, scope: !1245)
!3755 = !DILocation(line: 736, column: 5, scope: !3679)
!3756 = !DILocation(line: 739, column: 9, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !1245, file: !1244, line: 738, column: 5)
!3758 = !DILocation(line: 739, column: 14, scope: !3757)
!3759 = !DILocation(line: 740, column: 5, scope: !3757)
!3760 = !DILocation(line: 742, column: 12, scope: !1245)
!3761 = !DILocation(line: 742, column: 5, scope: !1245)
!3762 = !DILocation(line: 734, column: 9, scope: !3571)
!3763 = !DILocation(line: 736, column: 5, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !1245, file: !1244, discriminator: 2)
!3765 = !DILocation(line: 736, column: 5, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3573, file: !1244, discriminator: 2)
!3767 = !DILocation(line: 743, column: 1, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3757, file: !1244, discriminator: 2)
!3769 = !DILocation(line: 740, column: 5, scope: !3770)
!3770 = !DILexicalBlockFile(scope: !3757, file: !1244, discriminator: 1)
!3771 = !DILocation(line: 740, column: 5, scope: !3768)
!3772 = !DILocation(line: 740, column: 5, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !3757, file: !1244, discriminator: 3)
!3774 = !DILocation(line: 740, column: 5, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !3757, file: !1244, discriminator: 4)
!3776 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt3__111char_traitsIcE6lengthEPKc", scope: !619, file: !620, line: 215, type: !638, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !637, variables: !199)
!3777 = !DILocalVariable(name: "__s", arg: 1, scope: !3776, file: !620, line: 215, type: !636)
!3778 = !DILocation(line: 215, column: 29, scope: !3776)
!3779 = !DILocation(line: 215, column: 70, scope: !3776)
!3780 = !DILocation(line: 215, column: 53, scope: !3776)
!3781 = !DILocation(line: 215, column: 46, scope: !3776)
!3782 = distinct !DISubprogram(name: "__pad_and_output<char, std::__1::char_traits<char> >", linkageName: "_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", scope: !8, file: !3783, line: 1326, type: !3784, isLocal: false, isDefinition: true, scopeLine: 1329, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !616, variables: !199)
!3783 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/locale", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!1559, !1559, !147, !147, !147, !71, !149}
!3786 = !DILocalVariable(name: "this", arg: 1, scope: !3787, type: !1283, flags: DIFlagArtificial | DIFlagObjectPointer)
!3787 = distinct !DISubprogram(name: "sputn", linkageName: "_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl", scope: !1284, file: !1253, line: 223, type: !1346, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1345, variables: !199)
!3788 = !DILocation(line: 0, scope: !3787, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 1350, column: 26, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !3783, line: 1350, column: 13)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3783, line: 1348, column: 5)
!3792 = distinct !DILexicalBlock(scope: !3782, file: !3783, line: 1347, column: 9)
!3793 = !DILocalVariable(name: "__s", arg: 2, scope: !3787, file: !1253, line: 223, type: !1348)
!3794 = !DILocation(line: 223, column: 39, scope: !3787, inlinedAt: !3789)
!3795 = !DILocalVariable(name: "__n", arg: 3, scope: !3787, file: !1253, line: 223, type: !55)
!3796 = !DILocation(line: 223, column: 55, scope: !3787, inlinedAt: !3789)
!3797 = !DILocalVariable(name: "__p", arg: 1, scope: !3798, file: !174, line: 1118, type: !147)
!3798 = distinct !DISubprogram(name: "__to_raw_pointer<const char>", linkageName: "_ZNSt3__116__to_raw_pointerIKcEEPT_S3_", scope: !8, file: !174, line: 1118, type: !3799, isLocal: false, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3801, variables: !199)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!147, !147}
!3801 = !{!3802}
!3802 = !DITemplateTypeParameter(name: "_Tp", type: !148)
!3803 = !DILocation(line: 1118, column: 23, scope: !3798, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 1132, column: 55, scope: !3805, inlinedAt: !3807)
!3805 = !DILexicalBlockFile(scope: !3806, file: !158, discriminator: 1)
!3806 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv", scope: !157, file: !158, line: 1132, type: !904, isLocal: false, isDefinition: true, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !906, variables: !199)
!3807 = distinct !DILocation(line: 1350, column: 37, scope: !3790)
!3808 = !DILocalVariable(name: "__x", arg: 1, scope: !3809, file: !269, line: 437, type: !223)
!3809 = distinct !DISubprogram(name: "addressof<const char>", linkageName: "_ZNSt3__19addressofIKcEEPT_RS2_", scope: !8, file: !269, line: 437, type: !3810, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3801, variables: !199)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!147, !223}
!3812 = !DILocation(line: 437, column: 16, scope: !3809, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 985, column: 17, scope: !3814, inlinedAt: !3830)
!3814 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_", scope: !3815, file: !174, line: 983, type: !3818, isLocal: false, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3817, variables: !199)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<const char *>", scope: !8, file: !174, line: 967, size: 8, elements: !3816, templateParams: !3828, identifier: "_ZTSNSt3__114pointer_traitsIPKcEE")
!3816 = !{!3817}
!3817 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_", scope: !3815, file: !174, line: 983, type: !3818, isLocal: false, isDefinition: false, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: false)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!3820, !3821}
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3815, file: !174, line: 969, baseType: !147)
!3821 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3823, file: !269, line: 414, baseType: !148)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::pointer_traits<const char *>::__nat, const char>", scope: !8, file: !269, line: 414, size: 8, elements: !199, templateParams: !3824, identifier: "_ZTSNSt3__111conditionalILb0ENS_14pointer_traitsIPKcE5__natES2_EE")
!3824 = !{!272, !3825, !3827}
!3825 = !DITemplateTypeParameter(name: "_If", type: !3826)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !3815, file: !174, line: 980, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__114pointer_traitsIPKcE5__natE")
!3827 = !DITemplateTypeParameter(name: "_Then", type: !148)
!3828 = !{!3829}
!3829 = !DITemplateTypeParameter(name: "_Ptr", type: !147)
!3830 = distinct !DILocation(line: 1312, column: 17, scope: !3831, inlinedAt: !3833)
!3831 = !DILexicalBlockFile(scope: !3832, file: !158, discriminator: 1)
!3832 = distinct !DISubprogram(name: "__get_short_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv", scope: !157, file: !158, line: 1311, type: !997, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1005, variables: !199)
!3833 = distinct !DILocation(line: 1318, column: 54, scope: !3834, inlinedAt: !3836)
!3834 = !DILexicalBlockFile(scope: !3835, file: !158, discriminator: 2)
!3835 = distinct !DISubprogram(name: "__get_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv", scope: !157, file: !158, line: 1317, type: !997, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1007, variables: !199)
!3836 = distinct !DILocation(line: 1132, column: 79, scope: !3806, inlinedAt: !3807)
!3837 = !DILocalVariable(name: "__r", arg: 1, scope: !3814, file: !174, line: 984, type: !3821)
!3838 = !DILocation(line: 984, column: 67, scope: !3814, inlinedAt: !3830)
!3839 = !DILocalVariable(name: "this", arg: 1, scope: !3840, type: !3841, flags: DIFlagArtificial | DIFlagObjectPointer)
!3840 = distinct !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv", scope: !173, file: !174, line: 2217, type: !412, isLocal: false, isDefinition: true, scopeLine: 2217, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !411, variables: !199)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!3842 = !DILocation(line: 0, scope: !3840, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 1312, column: 64, scope: !3832, inlinedAt: !3833)
!3844 = !DILocalVariable(name: "this", arg: 1, scope: !3832, type: !3845, flags: DIFlagArtificial | DIFlagObjectPointer)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!3846 = !DILocation(line: 0, scope: !3832, inlinedAt: !3833)
!3847 = !DILocation(line: 0, scope: !3840, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 1306, column: 22, scope: !3849, inlinedAt: !3850)
!3849 = distinct !DISubprogram(name: "__get_long_pointer", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv", scope: !157, file: !158, line: 1305, type: !997, isLocal: false, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !996, variables: !199)
!3850 = distinct !DILocation(line: 1318, column: 31, scope: !3851, inlinedAt: !3836)
!3851 = !DILexicalBlockFile(scope: !3835, file: !158, discriminator: 1)
!3852 = !DILocalVariable(name: "this", arg: 1, scope: !3849, type: !3845, flags: DIFlagArtificial | DIFlagObjectPointer)
!3853 = !DILocation(line: 0, scope: !3849, inlinedAt: !3850)
!3854 = !DILocation(line: 0, scope: !3840, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 1224, column: 27, scope: !3856, inlinedAt: !3857)
!3856 = distinct !DISubprogram(name: "__is_long", linkageName: "_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv", scope: !157, file: !158, line: 1223, type: !767, isLocal: false, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !975, variables: !199)
!3857 = distinct !DILocation(line: 1318, column: 17, scope: !3835, inlinedAt: !3836)
!3858 = !DILocalVariable(name: "this", arg: 1, scope: !3856, type: !3845, flags: DIFlagArtificial | DIFlagObjectPointer)
!3859 = !DILocation(line: 0, scope: !3856, inlinedAt: !3857)
!3860 = !DILocalVariable(name: "this", arg: 1, scope: !3835, type: !3845, flags: DIFlagArtificial | DIFlagObjectPointer)
!3861 = !DILocation(line: 0, scope: !3835, inlinedAt: !3836)
!3862 = !DILocalVariable(name: "this", arg: 1, scope: !3806, type: !3845, flags: DIFlagArtificial | DIFlagObjectPointer)
!3863 = !DILocation(line: 0, scope: !3806, inlinedAt: !3807)
!3864 = !DILocalVariable(name: "this", arg: 1, scope: !3865, type: !3871, flags: DIFlagArtificial | DIFlagObjectPointer)
!3865 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv", scope: !173, file: !174, line: 2167, type: !3866, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3868, declaration: !3870, variables: !199)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !410}
!3868 = !{!3869, !3462}
!3869 = !DITemplateValueParameter(name: "_Dummy", type: !171, value: i8 1)
!3870 = !DISubprogram(name: "__compressed_pair<true, void>", scope: !173, file: !174, line: 2167, type: !3866, isLocal: false, isDefinition: false, scopeLine: 2167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !3868)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!3872 = !DILocation(line: 0, scope: !3865, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 2167, column: 33, scope: !3874, inlinedAt: !3875)
!3874 = distinct !DISubprogram(name: "__compressed_pair<true, void>", linkageName: "_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv", scope: !173, file: !174, line: 2167, type: !3866, isLocal: false, isDefinition: true, scopeLine: 2167, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3868, declaration: !3870, variables: !199)
!3875 = distinct !DILocation(line: 786, column: 5, scope: !3876, inlinedAt: !3877)
!3876 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc", scope: !157, file: !158, line: 1709, type: !469, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !468, variables: !199)
!3877 = distinct !DILocation(line: 1710, column: 1, scope: !3878, inlinedAt: !3879)
!3878 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc", scope: !157, file: !158, line: 1709, type: !469, isLocal: false, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !468, variables: !199)
!3879 = distinct !DILocation(line: 1349, column: 39, scope: !3791)
!3880 = !DILocalVariable(name: "this", arg: 1, scope: !3874, type: !3871, flags: DIFlagArtificial | DIFlagObjectPointer)
!3881 = !DILocation(line: 0, scope: !3874, inlinedAt: !3875)
!3882 = !DILocalVariable(name: "this", arg: 1, scope: !3876, type: !3883, flags: DIFlagArtificial | DIFlagObjectPointer)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3884 = !DILocation(line: 0, scope: !3876, inlinedAt: !3877)
!3885 = !DILocalVariable(name: "__n", arg: 2, scope: !3876, file: !158, line: 786, type: !189)
!3886 = !DILocation(line: 786, column: 28, scope: !3876, inlinedAt: !3877)
!3887 = !DILocalVariable(name: "__c", arg: 3, scope: !3876, file: !158, line: 786, type: !149)
!3888 = !DILocation(line: 786, column: 40, scope: !3876, inlinedAt: !3877)
!3889 = !DILocalVariable(name: "this", arg: 1, scope: !3878, type: !3883, flags: DIFlagArtificial | DIFlagObjectPointer)
!3890 = !DILocation(line: 0, scope: !3878, inlinedAt: !3879)
!3891 = !DILocalVariable(name: "__n", arg: 2, scope: !3878, file: !158, line: 786, type: !189)
!3892 = !DILocation(line: 786, column: 28, scope: !3878, inlinedAt: !3879)
!3893 = !DILocalVariable(name: "__c", arg: 3, scope: !3878, file: !158, line: 786, type: !149)
!3894 = !DILocation(line: 786, column: 40, scope: !3878, inlinedAt: !3879)
!3895 = !DILocation(line: 0, scope: !3787, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 1341, column: 26, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !3783, line: 1341, column: 13)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !3783, line: 1340, column: 5)
!3899 = distinct !DILexicalBlock(scope: !3782, file: !3783, line: 1339, column: 9)
!3900 = !DILocation(line: 223, column: 39, scope: !3787, inlinedAt: !3896)
!3901 = !DILocation(line: 223, column: 55, scope: !3787, inlinedAt: !3896)
!3902 = !DILocation(line: 0, scope: !3787, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 1359, column: 26, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !3783, line: 1359, column: 13)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3783, line: 1358, column: 5)
!3906 = distinct !DILexicalBlock(scope: !3782, file: !3783, line: 1357, column: 9)
!3907 = !DILocation(line: 223, column: 39, scope: !3787, inlinedAt: !3903)
!3908 = !DILocation(line: 223, column: 55, scope: !3787, inlinedAt: !3903)
!3909 = !DILocalVariable(name: "this", arg: 1, scope: !3910, type: !3605, flags: DIFlagArtificial | DIFlagObjectPointer)
!3910 = distinct !DISubprogram(name: "width", linkageName: "_ZNSt3__18ios_base5widthEl", scope: !7, file: !6, line: 509, type: !112, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !115, variables: !199)
!3911 = !DILocation(line: 0, scope: !3910, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 1365, column: 11, scope: !3782)
!3913 = !DILocalVariable(name: "__wide", arg: 2, scope: !3910, file: !6, line: 509, type: !55)
!3914 = !DILocation(line: 509, column: 28, scope: !3910, inlinedAt: !3912)
!3915 = !DILocalVariable(name: "__r", scope: !3910, file: !6, line: 511, type: !55)
!3916 = !DILocation(line: 511, column: 16, scope: !3910, inlinedAt: !3912)
!3917 = !DILocalVariable(name: "this", arg: 1, scope: !3918, type: !3600, flags: DIFlagArtificial | DIFlagObjectPointer)
!3918 = distinct !DISubprogram(name: "width", linkageName: "_ZNKSt3__18ios_base5widthEv", scope: !7, file: !6, line: 502, type: !109, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !114, variables: !199)
!3919 = !DILocation(line: 0, scope: !3918, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 1333, column: 29, scope: !3782)
!3921 = !DILocalVariable(name: "__s", arg: 1, scope: !3782, file: !3783, line: 1326, type: !1559)
!3922 = !DILocation(line: 1326, column: 55, scope: !3782)
!3923 = !DILocalVariable(name: "__ob", arg: 2, scope: !3782, file: !3783, line: 1327, type: !147)
!3924 = !DILocation(line: 1327, column: 32, scope: !3782)
!3925 = !DILocalVariable(name: "__op", arg: 3, scope: !3782, file: !3783, line: 1327, type: !147)
!3926 = !DILocation(line: 1327, column: 52, scope: !3782)
!3927 = !DILocalVariable(name: "__oe", arg: 4, scope: !3782, file: !3783, line: 1327, type: !147)
!3928 = !DILocation(line: 1327, column: 72, scope: !3782)
!3929 = !DILocalVariable(name: "__iob", arg: 5, scope: !3782, file: !3783, line: 1328, type: !71)
!3930 = !DILocation(line: 1328, column: 28, scope: !3782)
!3931 = !DILocalVariable(name: "__fl", arg: 6, scope: !3782, file: !3783, line: 1328, type: !149)
!3932 = !DILocation(line: 1328, column: 42, scope: !3782)
!3933 = !DILocation(line: 1330, column: 13, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3782, file: !3783, line: 1330, column: 9)
!3935 = !DILocation(line: 1330, column: 21, scope: !3934)
!3936 = !DILocation(line: 1330, column: 9, scope: !3782)
!3937 = !DILocation(line: 1331, column: 16, scope: !3934)
!3938 = !DILocation(line: 1331, column: 9, scope: !3934)
!3939 = !DILocalVariable(name: "__sz", scope: !3782, file: !3783, line: 1332, type: !55)
!3940 = !DILocation(line: 1332, column: 16, scope: !3782)
!3941 = !DILocation(line: 1332, column: 23, scope: !3782)
!3942 = !DILocation(line: 1332, column: 30, scope: !3782)
!3943 = !DILocation(line: 1332, column: 28, scope: !3782)
!3944 = !DILocalVariable(name: "__ns", scope: !3782, file: !3783, line: 1333, type: !55)
!3945 = !DILocation(line: 1333, column: 16, scope: !3782)
!3946 = !DILocation(line: 1333, column: 23, scope: !3782)
!3947 = !DILocation(line: 504, column: 12, scope: !3918, inlinedAt: !3920)
!3948 = !DILocation(line: 1334, column: 9, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3782, file: !3783, line: 1334, column: 9)
!3950 = !DILocation(line: 1334, column: 16, scope: !3949)
!3951 = !DILocation(line: 1334, column: 14, scope: !3949)
!3952 = !DILocation(line: 1334, column: 9, scope: !3782)
!3953 = !DILocation(line: 1335, column: 17, scope: !3949)
!3954 = !DILocation(line: 1335, column: 14, scope: !3949)
!3955 = !DILocation(line: 1335, column: 9, scope: !3949)
!3956 = !DILocation(line: 1337, column: 14, scope: !3949)
!3957 = !DILocalVariable(name: "__np", scope: !3782, file: !3783, line: 1338, type: !55)
!3958 = !DILocation(line: 1338, column: 16, scope: !3782)
!3959 = !DILocation(line: 1338, column: 23, scope: !3782)
!3960 = !DILocation(line: 1338, column: 30, scope: !3782)
!3961 = !DILocation(line: 1338, column: 28, scope: !3782)
!3962 = !DILocation(line: 1339, column: 9, scope: !3899)
!3963 = !DILocation(line: 1339, column: 14, scope: !3899)
!3964 = !DILocation(line: 1339, column: 9, scope: !3782)
!3965 = !DILocation(line: 1341, column: 17, scope: !3897)
!3966 = !DILocation(line: 1341, column: 32, scope: !3897)
!3967 = !DILocation(line: 1341, column: 38, scope: !3897)
!3968 = !DILocation(line: 224, column: 14, scope: !3787, inlinedAt: !3896)
!3969 = !DILocation(line: 224, column: 21, scope: !3787, inlinedAt: !3896)
!3970 = !DILocation(line: 224, column: 26, scope: !3787, inlinedAt: !3896)
!3971 = !DILocation(line: 1341, column: 47, scope: !3897)
!3972 = !DILocation(line: 1341, column: 44, scope: !3897)
!3973 = !DILocation(line: 1341, column: 13, scope: !3898)
!3974 = !DILocation(line: 1343, column: 17, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3897, file: !3783, line: 1342, column: 9)
!3976 = !DILocation(line: 1343, column: 25, scope: !3975)
!3977 = !DILocation(line: 1344, column: 20, scope: !3975)
!3978 = !DILocation(line: 1344, column: 13, scope: !3975)
!3979 = !DILocation(line: 1346, column: 5, scope: !3898)
!3980 = !DILocation(line: 1347, column: 9, scope: !3792)
!3981 = !DILocation(line: 1347, column: 14, scope: !3792)
!3982 = !DILocation(line: 1347, column: 9, scope: !3782)
!3983 = !DILocalVariable(name: "__sp", scope: !3791, file: !3783, line: 1349, type: !157)
!3984 = !DILocation(line: 1349, column: 39, scope: !3791)
!3985 = !DILocation(line: 1349, column: 44, scope: !3791)
!3986 = !DILocation(line: 1349, column: 50, scope: !3791)
!3987 = !DILocation(line: 1710, column: 1, scope: !3878, inlinedAt: !3879)
!3988 = !DILocation(line: 1710, column: 1, scope: !3876, inlinedAt: !3877)
!3989 = !DILocation(line: 786, column: 5, scope: !3876, inlinedAt: !3877)
!3990 = !DILocation(line: 2167, column: 33, scope: !3865, inlinedAt: !3873)
!3991 = !DILocation(line: 2167, column: 13, scope: !3865, inlinedAt: !3873)
!3992 = !DILocation(line: 2167, column: 13, scope: !3993, inlinedAt: !3873)
!3993 = !DILexicalBlockFile(scope: !3865, file: !174, discriminator: 1)
!3994 = !DILocation(line: 1711, column: 12, scope: !3995, inlinedAt: !3877)
!3995 = distinct !DILexicalBlock(scope: !3876, file: !158, line: 1710, column: 1)
!3996 = !DILocation(line: 1711, column: 17, scope: !3995, inlinedAt: !3877)
!3997 = !DILocation(line: 1711, column: 5, scope: !3995, inlinedAt: !3877)
!3998 = !DILocation(line: 1350, column: 17, scope: !3790)
!3999 = !DILocation(line: 1224, column: 22, scope: !3856, inlinedAt: !3857)
!4000 = !DILocation(line: 2218, column: 39, scope: !3840, inlinedAt: !3855)
!4001 = !DILocation(line: 2218, column: 46, scope: !3840, inlinedAt: !3855)
!4002 = !DILocation(line: 1224, column: 35, scope: !3856, inlinedAt: !3857)
!4003 = !DILocation(line: 1224, column: 39, scope: !3856, inlinedAt: !3857)
!4004 = !DILocation(line: 1224, column: 47, scope: !3856, inlinedAt: !3857)
!4005 = !DILocation(line: 1318, column: 17, scope: !3835, inlinedAt: !3836)
!4006 = !DILocation(line: 1306, column: 17, scope: !3849, inlinedAt: !3850)
!4007 = !DILocation(line: 2218, column: 39, scope: !3840, inlinedAt: !3848)
!4008 = !DILocation(line: 2218, column: 46, scope: !3840, inlinedAt: !3848)
!4009 = !DILocation(line: 1306, column: 30, scope: !3849, inlinedAt: !3850)
!4010 = !DILocation(line: 1306, column: 34, scope: !3849, inlinedAt: !3850)
!4011 = !DILocation(line: 1318, column: 17, scope: !3851, inlinedAt: !3836)
!4012 = !DILocation(line: 1312, column: 59, scope: !3832, inlinedAt: !3833)
!4013 = !DILocation(line: 2218, column: 39, scope: !3840, inlinedAt: !3843)
!4014 = !DILocation(line: 2218, column: 46, scope: !3840, inlinedAt: !3843)
!4015 = !DILocation(line: 1312, column: 72, scope: !3832, inlinedAt: !3833)
!4016 = !DILocation(line: 1312, column: 76, scope: !3832, inlinedAt: !3833)
!4017 = !DILocation(line: 985, column: 34, scope: !3814, inlinedAt: !3830)
!4018 = !DILocation(line: 439, column: 32, scope: !3809, inlinedAt: !3813)
!4019 = !DILocation(line: 1318, column: 17, scope: !3834, inlinedAt: !3836)
!4020 = !DILocation(line: 1318, column: 17, scope: !4021, inlinedAt: !3836)
!4021 = !DILexicalBlockFile(scope: !3835, file: !158, discriminator: 3)
!4022 = !DILocation(line: 1120, column: 12, scope: !3798, inlinedAt: !3804)
!4023 = !DILocation(line: 1350, column: 45, scope: !3790)
!4024 = !DILocation(line: 224, column: 14, scope: !3787, inlinedAt: !3789)
!4025 = !DILocation(line: 224, column: 21, scope: !3787, inlinedAt: !3789)
!4026 = !DILocation(line: 224, column: 26, scope: !3787, inlinedAt: !3789)
!4027 = !DILocation(line: 224, column: 7, scope: !3787, inlinedAt: !3789)
!4028 = !DILocation(line: 1350, column: 54, scope: !4029)
!4029 = !DILexicalBlockFile(scope: !3790, file: !3783, discriminator: 1)
!4030 = !DILocation(line: 1350, column: 51, scope: !4029)
!4031 = !DILocation(line: 1350, column: 13, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !3791, file: !3783, discriminator: 1)
!4033 = !DILocation(line: 1352, column: 17, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3790, file: !3783, line: 1351, column: 9)
!4035 = !DILocation(line: 1352, column: 25, scope: !4034)
!4036 = !DILocation(line: 1353, column: 20, scope: !4034)
!4037 = !DILocation(line: 1353, column: 13, scope: !4034)
!4038 = !DILocation(line: 1367, column: 1, scope: !3790)
!4039 = !DILocation(line: 1355, column: 5, scope: !3792)
!4040 = !DILocation(line: 1355, column: 5, scope: !4041)
!4041 = !DILexicalBlockFile(scope: !3792, file: !3783, discriminator: 1)
!4042 = !DILocation(line: 1355, column: 5, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !3792, file: !3783, discriminator: 2)
!4044 = !DILocation(line: 1355, column: 5, scope: !4045)
!4045 = !DILexicalBlockFile(scope: !3791, file: !3783, discriminator: 3)
!4046 = !DILocation(line: 1356, column: 12, scope: !3782)
!4047 = !DILocation(line: 1356, column: 19, scope: !3782)
!4048 = !DILocation(line: 1356, column: 17, scope: !3782)
!4049 = !DILocation(line: 1356, column: 10, scope: !3782)
!4050 = !DILocation(line: 1357, column: 9, scope: !3906)
!4051 = !DILocation(line: 1357, column: 14, scope: !3906)
!4052 = !DILocation(line: 1357, column: 9, scope: !3782)
!4053 = !DILocation(line: 1359, column: 17, scope: !3904)
!4054 = !DILocation(line: 1359, column: 32, scope: !3904)
!4055 = !DILocation(line: 1359, column: 38, scope: !3904)
!4056 = !DILocation(line: 224, column: 14, scope: !3787, inlinedAt: !3903)
!4057 = !DILocation(line: 224, column: 21, scope: !3787, inlinedAt: !3903)
!4058 = !DILocation(line: 224, column: 26, scope: !3787, inlinedAt: !3903)
!4059 = !DILocation(line: 1359, column: 47, scope: !3904)
!4060 = !DILocation(line: 1359, column: 44, scope: !3904)
!4061 = !DILocation(line: 1359, column: 13, scope: !3905)
!4062 = !DILocation(line: 1361, column: 17, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !3904, file: !3783, line: 1360, column: 9)
!4064 = !DILocation(line: 1361, column: 25, scope: !4063)
!4065 = !DILocation(line: 1362, column: 20, scope: !4063)
!4066 = !DILocation(line: 1362, column: 13, scope: !4063)
!4067 = !DILocation(line: 1364, column: 5, scope: !3905)
!4068 = !DILocation(line: 1365, column: 5, scope: !3782)
!4069 = !DILocation(line: 511, column: 22, scope: !3910, inlinedAt: !3912)
!4070 = !DILocation(line: 512, column: 16, scope: !3910, inlinedAt: !3912)
!4071 = !DILocation(line: 512, column: 5, scope: !3910, inlinedAt: !3912)
!4072 = !DILocation(line: 512, column: 14, scope: !3910, inlinedAt: !3912)
!4073 = !DILocation(line: 513, column: 12, scope: !3910, inlinedAt: !3912)
!4074 = !DILocation(line: 1366, column: 12, scope: !3782)
!4075 = !DILocation(line: 1366, column: 5, scope: !3782)
!4076 = !DILocation(line: 1367, column: 1, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !3782, file: !3783, discriminator: 1)
!4078 = !DILocation(line: 1355, column: 5, scope: !4079)
!4079 = !DILexicalBlockFile(scope: !3792, file: !3783, discriminator: 4)
!4080 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev", scope: !177, file: !174, line: 2082, type: !363, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !362, variables: !199)
!4081 = !DILocalVariable(name: "this", arg: 1, scope: !4080, type: !4082, flags: DIFlagArtificial | DIFlagObjectPointer)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4083 = !DILocation(line: 0, scope: !4080)
!4084 = !DILocation(line: 2082, column: 40, scope: !4080)
!4085 = !DILocation(line: 2082, column: 52, scope: !4080)
!4086 = distinct !DISubprogram(name: "__compressed_pair_elem", linkageName: "_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev", scope: !384, file: !174, line: 2116, type: !388, isLocal: false, isDefinition: true, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !387, variables: !199)
!4087 = !DILocalVariable(name: "this", arg: 1, scope: !4088, type: !4089, flags: DIFlagArtificial | DIFlagObjectPointer)
!4088 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSt3__19allocatorIcEC2Ev", scope: !203, file: !174, line: 1775, type: !206, isLocal: false, isDefinition: true, scopeLine: 1775, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !205, variables: !199)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!4090 = !DILocation(line: 0, scope: !4088, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 2116, column: 13, scope: !4086)
!4092 = !DILocalVariable(name: "this", arg: 1, scope: !4086, type: !4093, flags: DIFlagArtificial | DIFlagObjectPointer)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!4094 = !DILocation(line: 0, scope: !4086)
!4095 = !DILocation(line: 2116, column: 46, scope: !4086)
!4096 = distinct !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv", scope: !177, file: !174, line: 2102, type: !372, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !371, variables: !199)
!4097 = !DILocalVariable(name: "this", arg: 1, scope: !4096, type: !4098, flags: DIFlagArtificial | DIFlagObjectPointer)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!4099 = !DILocation(line: 0, scope: !4096)
!4100 = !DILocation(line: 2102, column: 52, scope: !4096)
!4101 = !DILocation(line: 2102, column: 45, scope: !4096)
!4102 = distinct !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt3__111char_traitsIcE11eq_int_typeEii", scope: !619, file: !620, line: 234, type: !662, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !661, variables: !199)
!4103 = !DILocalVariable(name: "__c1", arg: 1, scope: !4102, file: !620, line: 234, type: !654)
!4104 = !DILocation(line: 234, column: 63, scope: !4102)
!4105 = !DILocalVariable(name: "__c2", arg: 2, scope: !4102, file: !620, line: 234, type: !654)
!4106 = !DILocation(line: 234, column: 78, scope: !4102)
!4107 = !DILocation(line: 235, column: 17, scope: !4102)
!4108 = !DILocation(line: 235, column: 25, scope: !4102)
!4109 = !DILocation(line: 235, column: 22, scope: !4102)
!4110 = !DILocation(line: 235, column: 10, scope: !4102)
!4111 = distinct !DISubprogram(name: "eof", linkageName: "_ZNSt3__111char_traitsIcE3eofEv", scope: !619, file: !620, line: 236, type: !665, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !664, variables: !199)
!4112 = !DILocation(line: 237, column: 10, scope: !4111)
!4113 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !3392, file: !1620, line: 356, type: !3456, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3459, declaration: !3463, variables: !199)
!4114 = !DILocalVariable(name: "this", arg: 1, scope: !4115, type: !4116, flags: DIFlagArtificial | DIFlagObjectPointer)
!4115 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !2027, file: !174, line: 2267, type: !2034, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2033, variables: !199)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!4117 = !DILocation(line: 0, scope: !4115, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 2585, column: 7, scope: !4119, inlinedAt: !4122)
!4119 = !DILexicalBlockFile(scope: !4120, file: !174, discriminator: 1)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !174, line: 2584, column: 9)
!4121 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !1609, file: !174, line: 2581, type: !2137, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2136, variables: !199)
!4122 = distinct !DILocation(line: 2539, column: 19, scope: !4123, inlinedAt: !4125)
!4123 = distinct !DILexicalBlock(scope: !4124, file: !174, line: 2539, column: 17)
!4124 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !1609, file: !174, line: 2539, type: !2090, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2089, variables: !199)
!4125 = distinct !DILocation(line: 2539, column: 17, scope: !4126, inlinedAt: !4127)
!4126 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !1609, file: !174, line: 2539, type: !2090, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2089, variables: !199)
!4127 = distinct !DILocation(line: 370, column: 1, scope: !4128)
!4128 = !DILexicalBlockFile(scope: !4113, file: !1620, discriminator: 6)
!4129 = !DILocalVariable(name: "__ptr", arg: 2, scope: !4115, file: !174, line: 2267, type: !1618)
!4130 = !DILocation(line: 2267, column: 50, scope: !4115, inlinedAt: !4118)
!4131 = !DILocalVariable(name: "this", arg: 1, scope: !4132, type: !4133, flags: DIFlagArtificial | DIFlagObjectPointer)
!4132 = distinct !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !1612, file: !174, line: 2222, type: !2068, isLocal: false, isDefinition: true, scopeLine: 2222, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2067, variables: !199)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!4134 = !DILocation(line: 0, scope: !4132, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 2585, column: 14, scope: !4120, inlinedAt: !4122)
!4136 = !DILocalVariable(name: "this", arg: 1, scope: !4137, type: !4133, flags: DIFlagArtificial | DIFlagObjectPointer)
!4137 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !1612, file: !174, line: 2212, type: !2059, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2058, variables: !199)
!4138 = !DILocation(line: 0, scope: !4137, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 2583, column: 12, scope: !4121, inlinedAt: !4122)
!4140 = !DILocation(line: 0, scope: !4137, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 2582, column: 28, scope: !4121, inlinedAt: !4122)
!4142 = !DILocalVariable(name: "this", arg: 1, scope: !4121, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!4144 = !DILocation(line: 0, scope: !4121, inlinedAt: !4122)
!4145 = !DILocalVariable(name: "__p", arg: 2, scope: !4121, file: !174, line: 2581, type: !2111)
!4146 = !DILocation(line: 2581, column: 22, scope: !4121, inlinedAt: !4122)
!4147 = !DILocalVariable(name: "__tmp", scope: !4121, file: !174, line: 2582, type: !2111)
!4148 = !DILocation(line: 2582, column: 13, scope: !4121, inlinedAt: !4122)
!4149 = !DILocalVariable(name: "this", arg: 1, scope: !4124, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4150 = !DILocation(line: 0, scope: !4124, inlinedAt: !4125)
!4151 = !DILocalVariable(name: "this", arg: 1, scope: !4126, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4152 = !DILocation(line: 0, scope: !4126, inlinedAt: !4127)
!4153 = !DILocalVariable(name: "this", arg: 1, scope: !4154, type: !4168, flags: DIFlagArtificial | DIFlagObjectPointer)
!4154 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !4155, file: !174, line: 2267, type: !4162, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4161, variables: !199)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !8, file: !174, line: 2253, size: 8, elements: !4156, templateParams: !4166, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!4156 = !{!4157, !4161}
!4157 = !DISubprogram(name: "default_delete", scope: !4155, file: !174, line: 2257, type: !4158, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: false)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !4160}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4161 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !4155, file: !174, line: 2267, type: !4162, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: false)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !4164, !1597}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4166 = !{!4167}
!4167 = !DITemplateTypeParameter(name: "_Tp", type: !1598)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4169 = !DILocation(line: 0, scope: !4154, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 2585, column: 7, scope: !4171, inlinedAt: !4305)
!4171 = !DILexicalBlockFile(scope: !4172, file: !174, discriminator: 1)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !174, line: 2584, column: 9)
!4173 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !4174, file: !174, line: 2581, type: !4300, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4299, variables: !199)
!4174 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !8, file: !174, line: 2334, size: 64, elements: !4175, templateParams: !4277, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!4175 = !{!4176, !4246, !4251, !4255, !4258, !4261, !4271, !4282, !4283, !4288, !4293, !4296, !4299, !4302}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !4174, file: !174, line: 2344, baseType: !4177, size: 64)
!4177 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !8, file: !174, line: 2144, size: 64, elements: !4178, templateParams: !4243, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!4178 = !{!4179, !4202, !4224, !4228, !4233, !4236, !4239}
!4179 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4177, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !8, file: !174, line: 2076, size: 64, elements: !4181, templateParams: !4200, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!4181 = !{!4182, !4183, !4187, !4192}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !4180, file: !174, line: 2105, baseType: !1597, size: 64, flags: DIFlagPrivate)
!4183 = !DISubprogram(name: "__compressed_pair_elem", scope: !4180, file: !174, line: 2082, type: !4184, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: false)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !4186}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4187 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4180, file: !174, line: 2101, type: !4188, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!4190, !4186}
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !4180, file: !174, line: 2078, baseType: !4191)
!4191 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1597, size: 64)
!4192 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4180, file: !174, line: 2102, type: !4193, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!4195, !4198}
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !4180, file: !174, line: 2079, baseType: !4196)
!4196 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4180)
!4200 = !{!4201, !381, !382}
!4201 = !DITemplateTypeParameter(name: "_Tp", type: !1597)
!4202 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4177, baseType: !4203)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !8, file: !174, line: 2109, size: 8, elements: !4204, templateParams: !4222, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!4204 = !{!4205, !4206, !4210, !4215}
!4205 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4203, baseType: !4155, flags: DIFlagPrivate)
!4206 = !DISubprogram(name: "__compressed_pair_elem", scope: !4203, file: !174, line: 2116, type: !4207, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: false)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !4209}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4210 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4203, file: !174, line: 2136, type: !4211, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!4213, !4209}
!4213 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !4203, file: !174, line: 2111, baseType: !4214)
!4214 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4155, size: 64)
!4215 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4203, file: !174, line: 2137, type: !4216, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: false)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!4218, !4220}
!4218 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !4203, file: !174, line: 2112, baseType: !4219)
!4219 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4165, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4203)
!4222 = !{!4223, !405, !406}
!4223 = !DITemplateTypeParameter(name: "_Tp", type: !4155)
!4224 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4177, file: !174, line: 2212, type: !4225, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!4190, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4228 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4177, file: !174, line: 2217, type: !4229, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!4195, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4177)
!4233 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4177, file: !174, line: 2222, type: !4234, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!4213, !4227}
!4236 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4177, file: !174, line: 2227, type: !4237, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!4218, !4231}
!4239 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !4177, file: !174, line: 2232, type: !4240, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4227, !4242}
!4242 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4177, size: 64)
!4243 = !{!4244, !4245}
!4244 = !DITemplateTypeParameter(name: "_T1", type: !1597)
!4245 = !DITemplateTypeParameter(name: "_T2", type: !4155)
!4246 = !DISubprogram(name: "unique_ptr", scope: !4174, file: !174, line: 2427, type: !4247, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4249, !4250}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4250 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4174, size: 64)
!4251 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !4174, file: !174, line: 2450, type: !4252, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!4254, !4249, !4250}
!4254 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4174, size: 64)
!4255 = !DISubprogram(name: "~unique_ptr", scope: !4174, file: !174, line: 2539, type: !4256, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{null, !4249}
!4258 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !4174, file: !174, line: 2542, type: !4259, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!4254, !4249, !2095}
!4261 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !4174, file: !174, line: 2549, type: !4262, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!4264, !4269}
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4265, file: !269, line: 1084, baseType: !4266)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !8, file: !269, line: 1083, size: 8, elements: !199, templateParams: !4166, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!4266 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4267, file: !269, line: 1081, baseType: !2263)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !8, file: !269, line: 1081, size: 8, elements: !199, templateParams: !4268, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!4268 = !{!4167, !170}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4174)
!4271 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !4174, file: !174, line: 2553, type: !4272, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!4274, !4269}
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !4174, file: !174, line: 2338, baseType: !4275)
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4276, file: !174, line: 1031, baseType: !4279)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !8, file: !174, line: 1029, size: 8, elements: !199, templateParams: !4277, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!4277 = !{!4167, !4278}
!4278 = !DITemplateTypeParameter(name: "_Dp", type: !4155)
!4279 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4280, file: !174, line: 1023, baseType: !1597)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !246, file: !174, line: 1021, size: 8, elements: !199, templateParams: !4281, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!4281 = !{!4167, !4278, !259}
!4282 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !4174, file: !174, line: 2557, type: !4272, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4283 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !4174, file: !174, line: 2561, type: !4284, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!4286, !4249}
!4286 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !4174, file: !174, line: 2337, baseType: !4155)
!4288 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !4174, file: !174, line: 2565, type: !4289, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!4291, !4269}
!4291 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4293 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !4174, file: !174, line: 2569, type: !4294, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!171, !4269}
!4296 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !4174, file: !174, line: 2574, type: !4297, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!4274, !4249}
!4299 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !4174, file: !174, line: 2581, type: !4300, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{null, !4249, !4274}
!4302 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !4174, file: !174, line: 2589, type: !4303, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{null, !4249, !4254}
!4305 = distinct !DILocation(line: 2539, column: 19, scope: !4306, inlinedAt: !4308)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !174, line: 2539, column: 17)
!4307 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !4174, file: !174, line: 2539, type: !4256, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4255, variables: !199)
!4308 = distinct !DILocation(line: 2539, column: 17, scope: !4309, inlinedAt: !4310)
!4309 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !4174, file: !174, line: 2539, type: !4256, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4255, variables: !199)
!4310 = distinct !DILocation(line: 370, column: 1, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !4113, file: !1620, discriminator: 4)
!4312 = !DILocalVariable(name: "__ptr", arg: 2, scope: !4154, file: !174, line: 2267, type: !1597)
!4313 = !DILocation(line: 2267, column: 50, scope: !4154, inlinedAt: !4170)
!4314 = !DILocalVariable(name: "this", arg: 1, scope: !4315, type: !4316, flags: DIFlagArtificial | DIFlagObjectPointer)
!4315 = distinct !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !4177, file: !174, line: 2222, type: !4234, isLocal: false, isDefinition: true, scopeLine: 2222, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4233, variables: !199)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4317 = !DILocation(line: 0, scope: !4315, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 2585, column: 14, scope: !4172, inlinedAt: !4305)
!4319 = !DILocalVariable(name: "this", arg: 1, scope: !4320, type: !4316, flags: DIFlagArtificial | DIFlagObjectPointer)
!4320 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4177, file: !174, line: 2212, type: !4225, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4224, variables: !199)
!4321 = !DILocation(line: 0, scope: !4320, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 2583, column: 12, scope: !4173, inlinedAt: !4305)
!4323 = !DILocation(line: 0, scope: !4320, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !4305)
!4325 = !DILocalVariable(name: "this", arg: 1, scope: !4173, type: !4326, flags: DIFlagArtificial | DIFlagObjectPointer)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4327 = !DILocation(line: 0, scope: !4173, inlinedAt: !4305)
!4328 = !DILocalVariable(name: "__p", arg: 2, scope: !4173, file: !174, line: 2581, type: !4274)
!4329 = !DILocation(line: 2581, column: 22, scope: !4173, inlinedAt: !4305)
!4330 = !DILocalVariable(name: "__tmp", scope: !4173, file: !174, line: 2582, type: !4274)
!4331 = !DILocation(line: 2582, column: 13, scope: !4173, inlinedAt: !4305)
!4332 = !DILocalVariable(name: "this", arg: 1, scope: !4307, type: !4326, flags: DIFlagArtificial | DIFlagObjectPointer)
!4333 = !DILocation(line: 0, scope: !4307, inlinedAt: !4308)
!4334 = !DILocalVariable(name: "this", arg: 1, scope: !4309, type: !4326, flags: DIFlagArtificial | DIFlagObjectPointer)
!4335 = !DILocation(line: 0, scope: !4309, inlinedAt: !4310)
!4336 = !DILocation(line: 0, scope: !4154, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 2585, column: 7, scope: !4171, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 2539, column: 19, scope: !4306, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 2539, column: 17, scope: !4309, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 370, column: 1, scope: !4341)
!4341 = !DILexicalBlockFile(scope: !4113, file: !1620, discriminator: 3)
!4342 = !DILocation(line: 2267, column: 50, scope: !4154, inlinedAt: !4337)
!4343 = !DILocation(line: 0, scope: !4315, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 2585, column: 14, scope: !4172, inlinedAt: !4338)
!4345 = !DILocation(line: 0, scope: !4320, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 2583, column: 12, scope: !4173, inlinedAt: !4338)
!4347 = !DILocation(line: 0, scope: !4320, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !4338)
!4349 = !DILocation(line: 0, scope: !4173, inlinedAt: !4338)
!4350 = !DILocation(line: 2581, column: 22, scope: !4173, inlinedAt: !4338)
!4351 = !DILocation(line: 2582, column: 13, scope: !4173, inlinedAt: !4338)
!4352 = !DILocation(line: 0, scope: !4307, inlinedAt: !4339)
!4353 = !DILocation(line: 0, scope: !4309, inlinedAt: !4340)
!4354 = !DILocation(line: 0, scope: !4320, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 2576, column: 12, scope: !4356, inlinedAt: !4357)
!4356 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !4174, file: !174, line: 2574, type: !4297, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4296, variables: !199)
!4357 = distinct !DILocation(line: 367, column: 13, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !1620, line: 366, column: 9)
!4359 = distinct !DILexicalBlock(scope: !4113, file: !1620, line: 357, column: 1)
!4360 = !DILocation(line: 0, scope: !4320, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 2575, column: 26, scope: !4356, inlinedAt: !4357)
!4362 = !DILocalVariable(name: "this", arg: 1, scope: !4356, type: !4326, flags: DIFlagArtificial | DIFlagObjectPointer)
!4363 = !DILocation(line: 0, scope: !4356, inlinedAt: !4357)
!4364 = !DILocalVariable(name: "__t", scope: !4356, file: !174, line: 2575, type: !4274)
!4365 = !DILocation(line: 2575, column: 13, scope: !4356, inlinedAt: !4357)
!4366 = !DILocalVariable(name: "__t", arg: 1, scope: !4367, file: !1648, line: 321, type: !4370)
!4367 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !8, file: !1648, line: 321, type: !4368, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !199)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!17, !4370, !4371, !63}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!63, !63}
!4374 = !DILocation(line: 321, column: 47, scope: !4367, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 365, column: 16, scope: !4359)
!4376 = !DILocalVariable(name: "__func", arg: 2, scope: !4367, file: !1648, line: 321, type: !4371)
!4377 = !DILocation(line: 321, column: 60, scope: !4367, inlinedAt: !4375)
!4378 = !DILocalVariable(name: "__arg", arg: 3, scope: !4367, file: !1648, line: 322, type: !63)
!4379 = !DILocation(line: 322, column: 34, scope: !4367, inlinedAt: !4375)
!4380 = !DILocalVariable(name: "this", arg: 1, scope: !4381, type: !4382, flags: DIFlagArtificial | DIFlagObjectPointer)
!4381 = distinct !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !4177, file: !174, line: 2217, type: !4229, isLocal: false, isDefinition: true, scopeLine: 2217, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4228, variables: !199)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4383 = !DILocation(line: 0, scope: !4381, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 2558, column: 19, scope: !4385, inlinedAt: !4386)
!4385 = distinct !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !4174, file: !174, line: 2557, type: !4272, isLocal: false, isDefinition: true, scopeLine: 2557, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4282, variables: !199)
!4386 = distinct !DILocation(line: 365, column: 72, scope: !4359)
!4387 = !DILocalVariable(name: "this", arg: 1, scope: !4385, type: !4388, flags: DIFlagArtificial | DIFlagObjectPointer)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4389 = !DILocation(line: 0, scope: !4385, inlinedAt: !4386)
!4390 = !DILocalVariable(name: "__t", arg: 1, scope: !4391, file: !269, line: 2219, type: !4394)
!4391 = distinct !DISubprogram(name: "forward<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&>", linkageName: "_ZNSt3__17forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEOT_RNS_16remove_referenceISC_E4typeE", scope: !8, file: !269, line: 2219, type: !4392, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4397, variables: !199)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!4191, !4394}
!4394 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4396, file: !269, line: 1069, baseType: !1597)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&>", scope: !8, file: !269, line: 1069, size: 8, elements: !199, templateParams: !4397, identifier: "_ZTSNSt3__116remove_referenceIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!4397 = !{!4398}
!4398 = !DITemplateTypeParameter(name: "_Tp", type: !4191)
!4399 = !DILocation(line: 2219, column: 47, scope: !4391, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 2174, column: 16, scope: !4401, inlinedAt: !4406)
!4401 = distinct !DISubprogram(name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEC2IRSA_Lb1EEEOT_", scope: !4177, file: !174, line: 2173, type: !4402, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4404, declaration: !4405, variables: !199)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{null, !4227, !4191}
!4404 = !{!4398, !170}
!4405 = !DISubprogram(name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, true>", scope: !4177, file: !174, line: 2173, type: !4402, isLocal: false, isDefinition: false, scopeLine: 2173, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4404)
!4406 = distinct !DILocation(line: 2174, column: 50, scope: !4407, inlinedAt: !4408)
!4407 = distinct !DISubprogram(name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEC1IRSA_Lb1EEEOT_", scope: !4177, file: !174, line: 2173, type: !4402, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4404, declaration: !4405, variables: !199)
!4408 = distinct !DILocation(line: 2404, column: 47, scope: !4409, inlinedAt: !4411)
!4409 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEC2ILb1EvEEPS8_", scope: !4174, file: !174, line: 2404, type: !4300, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3868, declaration: !4410, variables: !199)
!4410 = !DISubprogram(name: "unique_ptr<true, void>", scope: !4174, file: !174, line: 2404, type: !4300, isLocal: false, isDefinition: false, scopeLine: 2404, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !3868)
!4411 = distinct !DILocation(line: 2404, column: 59, scope: !4412, inlinedAt: !4413)
!4412 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEC1ILb1EvEEPS8_", scope: !4174, file: !174, line: 2404, type: !4300, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3868, declaration: !4410, variables: !199)
!4413 = distinct !DILocation(line: 361, column: 28, scope: !4359)
!4414 = !DILocalVariable(name: "this", arg: 1, scope: !4401, type: !4316, flags: DIFlagArtificial | DIFlagObjectPointer)
!4415 = !DILocation(line: 0, scope: !4401, inlinedAt: !4406)
!4416 = !DILocalVariable(name: "__t", arg: 2, scope: !4401, file: !174, line: 2173, type: !4191)
!4417 = !DILocation(line: 2173, column: 27, scope: !4401, inlinedAt: !4406)
!4418 = !DILocalVariable(name: "this", arg: 1, scope: !4407, type: !4316, flags: DIFlagArtificial | DIFlagObjectPointer)
!4419 = !DILocation(line: 0, scope: !4407, inlinedAt: !4408)
!4420 = !DILocalVariable(name: "__t", arg: 2, scope: !4407, file: !174, line: 2173, type: !4191)
!4421 = !DILocation(line: 2173, column: 27, scope: !4407, inlinedAt: !4408)
!4422 = !DILocalVariable(name: "this", arg: 1, scope: !4409, type: !4326, flags: DIFlagArtificial | DIFlagObjectPointer)
!4423 = !DILocation(line: 0, scope: !4409, inlinedAt: !4411)
!4424 = !DILocalVariable(name: "__p", arg: 2, scope: !4409, file: !174, line: 2404, type: !4274)
!4425 = !DILocation(line: 2404, column: 31, scope: !4409, inlinedAt: !4411)
!4426 = !DILocalVariable(name: "this", arg: 1, scope: !4412, type: !4326, flags: DIFlagArtificial | DIFlagObjectPointer)
!4427 = !DILocation(line: 0, scope: !4412, inlinedAt: !4413)
!4428 = !DILocalVariable(name: "__p", arg: 2, scope: !4412, file: !174, line: 2404, type: !4274)
!4429 = !DILocation(line: 2404, column: 31, scope: !4412, inlinedAt: !4413)
!4430 = !DILocalVariable(name: "__t", arg: 1, scope: !4431, file: !269, line: 2219, type: !4435)
!4431 = distinct !DISubprogram(name: "forward<void (*)()>", linkageName: "_ZNSt3__17forwardIPFvvEEEOT_RNS_16remove_referenceIS3_E4typeE", scope: !8, file: !269, line: 2219, type: !4432, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4438, variables: !199)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!4434, !4435}
!4434 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2177, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4436, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4437, file: !269, line: 1068, baseType: !2177)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (*)()>", scope: !8, file: !269, line: 1068, size: 8, elements: !199, templateParams: !4438, identifier: "_ZTSNSt3__116remove_referenceIPFvvEEE")
!4438 = !{!4439}
!4439 = !DITemplateTypeParameter(name: "_Tp", type: !2177)
!4440 = !DILocation(line: 2219, column: 47, scope: !4431, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 742, column: 21, scope: !4442, inlinedAt: !4450)
!4442 = !DILexicalBlockFile(scope: !4443, file: !1599, discriminator: 1)
!4443 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !1598, file: !1599, line: 728, type: !4444, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4446, declaration: !4449, variables: !199)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !2253, !2084, !4434}
!4446 = !{!4447, !4448, !259}
!4447 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !2246)
!4448 = !DITemplateValueParameter(name: "_PackIsTuple", type: !171, value: i8 0)
!4449 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !1598, file: !1599, line: 728, type: !4444, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !4446)
!4450 = distinct !DILocation(line: 742, column: 50, scope: !4451, inlinedAt: !4452)
!4451 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !1598, file: !1599, line: 728, type: !4444, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4446, declaration: !4449, variables: !199)
!4452 = distinct !DILocation(line: 362, column: 17, scope: !4453)
!4453 = !DILexicalBlockFile(scope: !4359, file: !1620, discriminator: 2)
!4454 = !DILocalVariable(name: "__t", arg: 1, scope: !4455, file: !269, line: 2219, type: !4459)
!4455 = distinct !DISubprogram(name: "forward<std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__17forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE", scope: !8, file: !269, line: 2219, type: !4456, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4462, variables: !199)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2027, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4461, file: !269, line: 1068, baseType: !2027)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::default_delete<std::__1::__thread_struct> >", scope: !8, file: !269, line: 1068, size: 8, elements: !199, templateParams: !4462, identifier: "_ZTSNSt3__116remove_referenceINS_14default_deleteINS_15__thread_structEEEEE")
!4462 = !{!2057}
!4463 = !DILocation(line: 2219, column: 47, scope: !4455, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 2184, column: 49, scope: !4465, inlinedAt: !4474)
!4465 = !DILexicalBlockFile(scope: !4466, file: !174, discriminator: 2)
!4466 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !1612, file: !174, line: 2183, type: !4467, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4470, declaration: !4473, variables: !199)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !2061, !4469, !4458}
!4469 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1618, size: 64)
!4470 = !{!4471, !4472}
!4471 = !DITemplateTypeParameter(name: "_U1", type: !1618)
!4472 = !DITemplateTypeParameter(name: "_U2", type: !2027)
!4473 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !1612, file: !174, line: 2183, type: !4467, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false, templateParams: !4470)
!4474 = distinct !DILocation(line: 2184, column: 74, scope: !4475, inlinedAt: !4476)
!4475 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !1612, file: !174, line: 2183, type: !4467, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4470, declaration: !4473, variables: !199)
!4476 = distinct !DILocation(line: 2428, column: 9, scope: !4477, inlinedAt: !4478)
!4477 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !1609, file: !174, line: 2427, type: !2081, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2080, variables: !199)
!4478 = distinct !DILocation(line: 2428, column: 80, scope: !4479, inlinedAt: !4480)
!4479 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !1609, file: !174, line: 2427, type: !2081, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2080, variables: !199)
!4480 = distinct !DILocation(line: 226, column: 15, scope: !4481, inlinedAt: !4488)
!4481 = !DILexicalBlockFile(scope: !4482, file: !1599, discriminator: 1)
!4482 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !1606, file: !1599, line: 225, type: !4483, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4485, declaration: !4487, variables: !199)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !2146, !2084}
!4485 = !{!4486, !3462}
!4486 = !DITemplateTypeParameter(name: "_Tp", type: !1609)
!4487 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !1606, file: !1599, line: 225, type: !4483, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4485)
!4488 = distinct !DILocation(line: 385, column: 13, scope: !4489, inlinedAt: !4506)
!4489 = !DILexicalBlockFile(scope: !4490, file: !1599, discriminator: 1)
!4490 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !1603, file: !1599, line: 380, type: !4491, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4500, declaration: !4505, variables: !199)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{null, !2216, !2238, !4493, !4494, !4497, !2084, !4434}
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !8, file: !2239, line: 253, size: 8, elements: !199, templateParams: !2298, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !8, file: !2239, line: 90, size: 8, elements: !199, templateParams: !4495, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!4495 = !{!4496}
!4496 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !199)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !8, file: !2239, line: 253, size: 8, elements: !199, templateParams: !4498, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!4498 = !{!4499}
!4499 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !199)
!4500 = !{!4501, !4502, !4503, !4504, !4447}
!4501 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !2242)
!4502 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !2246)
!4503 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !199)
!4504 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !199)
!4505 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !1603, file: !1599, line: 380, type: !4491, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4500)
!4506 = distinct !DILocation(line: 387, column: 13, scope: !4507, inlinedAt: !4508)
!4507 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !1603, file: !1599, line: 380, type: !4491, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4500, declaration: !4505, variables: !199)
!4508 = distinct !DILocation(line: 738, column: 15, scope: !4443, inlinedAt: !4450)
!4509 = !DILocalVariable(name: "__t", arg: 1, scope: !4510, file: !269, line: 2219, type: !4513)
!4510 = distinct !DISubprogram(name: "forward<std::__1::__thread_struct *>", linkageName: "_ZNSt3__17forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE", scope: !8, file: !269, line: 2219, type: !4511, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4516, variables: !199)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!4469, !4513}
!4513 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4515, file: !269, line: 1068, baseType: !1618)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::__thread_struct *>", scope: !8, file: !269, line: 1068, size: 8, elements: !199, templateParams: !4516, identifier: "_ZTSNSt3__116remove_referenceIPNS_15__thread_structEEE")
!4516 = !{!2022}
!4517 = !DILocation(line: 2219, column: 47, scope: !4510, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 2184, column: 16, scope: !4466, inlinedAt: !4474)
!4519 = !DILocalVariable(name: "this", arg: 1, scope: !4466, type: !4133, flags: DIFlagArtificial | DIFlagObjectPointer)
!4520 = !DILocation(line: 0, scope: !4466, inlinedAt: !4474)
!4521 = !DILocalVariable(name: "__t1", arg: 2, scope: !4466, file: !174, line: 2183, type: !4469)
!4522 = !DILocation(line: 2183, column: 27, scope: !4466, inlinedAt: !4474)
!4523 = !DILocalVariable(name: "__t2", arg: 3, scope: !4466, file: !174, line: 2183, type: !4458)
!4524 = !DILocation(line: 2183, column: 39, scope: !4466, inlinedAt: !4474)
!4525 = !DILocalVariable(name: "this", arg: 1, scope: !4475, type: !4133, flags: DIFlagArtificial | DIFlagObjectPointer)
!4526 = !DILocation(line: 0, scope: !4475, inlinedAt: !4476)
!4527 = !DILocalVariable(name: "__t1", arg: 2, scope: !4475, file: !174, line: 2183, type: !4469)
!4528 = !DILocation(line: 2183, column: 27, scope: !4475, inlinedAt: !4476)
!4529 = !DILocalVariable(name: "__t2", arg: 3, scope: !4475, file: !174, line: 2183, type: !4458)
!4530 = !DILocation(line: 2183, column: 39, scope: !4475, inlinedAt: !4476)
!4531 = !DILocation(line: 2219, column: 47, scope: !4455, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 2428, column: 31, scope: !4533, inlinedAt: !4478)
!4533 = !DILexicalBlockFile(scope: !4477, file: !174, discriminator: 3)
!4534 = !DILocation(line: 0, scope: !4132, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 2562, column: 19, scope: !4536, inlinedAt: !4537)
!4536 = distinct !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !1609, file: !174, line: 2561, type: !2121, isLocal: false, isDefinition: true, scopeLine: 2561, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2120, variables: !199)
!4537 = distinct !DILocation(line: 2428, column: 64, scope: !4538, inlinedAt: !4478)
!4538 = !DILexicalBlockFile(scope: !4477, file: !174, discriminator: 2)
!4539 = !DILocalVariable(name: "this", arg: 1, scope: !4536, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4540 = !DILocation(line: 0, scope: !4536, inlinedAt: !4537)
!4541 = !DILocation(line: 0, scope: !4137, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 2576, column: 12, scope: !4543, inlinedAt: !4544)
!4543 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !1609, file: !174, line: 2574, type: !2134, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2133, variables: !199)
!4544 = distinct !DILocation(line: 2428, column: 20, scope: !4477, inlinedAt: !4478)
!4545 = !DILocation(line: 0, scope: !4137, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 2575, column: 26, scope: !4543, inlinedAt: !4544)
!4547 = !DILocalVariable(name: "this", arg: 1, scope: !4543, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4548 = !DILocation(line: 0, scope: !4543, inlinedAt: !4544)
!4549 = !DILocalVariable(name: "__t", scope: !4543, file: !174, line: 2575, type: !2111)
!4550 = !DILocation(line: 2575, column: 13, scope: !4543, inlinedAt: !4544)
!4551 = !DILocalVariable(name: "this", arg: 1, scope: !4477, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4552 = !DILocation(line: 0, scope: !4477, inlinedAt: !4478)
!4553 = !DILocalVariable(name: "__u", arg: 2, scope: !4477, file: !174, line: 2427, type: !2084)
!4554 = !DILocation(line: 2427, column: 27, scope: !4477, inlinedAt: !4478)
!4555 = !DILocalVariable(name: "this", arg: 1, scope: !4479, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4556 = !DILocation(line: 0, scope: !4479, inlinedAt: !4480)
!4557 = !DILocalVariable(name: "__u", arg: 2, scope: !4479, file: !174, line: 2427, type: !2084)
!4558 = !DILocation(line: 2427, column: 27, scope: !4479, inlinedAt: !4480)
!4559 = !DILocalVariable(name: "__t", arg: 1, scope: !4560, file: !269, line: 2219, type: !4563)
!4560 = distinct !DISubprogram(name: "forward<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > >", linkageName: "_ZNSt3__17forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE", scope: !8, file: !269, line: 2219, type: !4561, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4566, variables: !199)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!2084, !4563}
!4563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4565, file: !269, line: 1068, baseType: !1609)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > >", scope: !8, file: !269, line: 1068, size: 8, elements: !199, templateParams: !4566, identifier: "_ZTSNSt3__116remove_referenceINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEE")
!4566 = !{!4486}
!4567 = !DILocation(line: 2219, column: 47, scope: !4560, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 226, column: 21, scope: !4482, inlinedAt: !4488)
!4569 = !DILocalVariable(name: "this", arg: 1, scope: !4482, type: !4570, flags: DIFlagArtificial | DIFlagObjectPointer)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!4571 = !DILocation(line: 0, scope: !4482, inlinedAt: !4488)
!4572 = !DILocalVariable(name: "__t", arg: 2, scope: !4482, file: !1599, line: 225, type: !2084)
!4573 = !DILocation(line: 225, column: 37, scope: !4482, inlinedAt: !4488)
!4574 = !DILocation(line: 2219, column: 47, scope: !4431, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 385, column: 36, scope: !4576, inlinedAt: !4506)
!4576 = !DILexicalBlockFile(scope: !4490, file: !1599, discriminator: 2)
!4577 = !DILocation(line: 2219, column: 47, scope: !4431, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 226, column: 21, scope: !4579, inlinedAt: !4584)
!4579 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !2174, file: !1599, line: 225, type: !4580, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4582, declaration: !4583, variables: !199)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{null, !2184, !4434}
!4582 = !{!4439, !3462}
!4583 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !2174, file: !1599, line: 225, type: !4580, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4582)
!4584 = distinct !DILocation(line: 385, column: 13, scope: !4585, inlinedAt: !4506)
!4585 = !DILexicalBlockFile(scope: !4490, file: !1599, discriminator: 3)
!4586 = !DILocalVariable(name: "this", arg: 1, scope: !4579, type: !4587, flags: DIFlagArtificial | DIFlagObjectPointer)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!4588 = !DILocation(line: 0, scope: !4579, inlinedAt: !4584)
!4589 = !DILocalVariable(name: "__t", arg: 2, scope: !4579, file: !1599, line: 225, type: !4434)
!4590 = !DILocation(line: 225, column: 37, scope: !4579, inlinedAt: !4584)
!4591 = !DILocation(line: 2219, column: 47, scope: !4560, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 385, column: 36, scope: !4490, inlinedAt: !4506)
!4593 = !DILocalVariable(name: "this", arg: 1, scope: !4490, type: !4594, flags: DIFlagArtificial | DIFlagObjectPointer)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!4595 = !DILocation(line: 0, scope: !4490, inlinedAt: !4506)
!4596 = !DILocalVariable(name: "__u", arg: 6, scope: !4490, file: !1599, line: 382, type: !2084)
!4597 = !DILocation(line: 382, column: 31, scope: !4490, inlinedAt: !4506)
!4598 = !DILocalVariable(name: "__u", arg: 7, scope: !4490, file: !1599, line: 382, type: !4434)
!4599 = !DILocalVariable(name: "this", arg: 1, scope: !4507, type: !4594, flags: DIFlagArtificial | DIFlagObjectPointer)
!4600 = !DILocation(line: 0, scope: !4507, inlinedAt: !4508)
!4601 = !DILocalVariable(name: "__u", arg: 6, scope: !4507, file: !1599, line: 382, type: !2084)
!4602 = !DILocation(line: 382, column: 31, scope: !4507, inlinedAt: !4508)
!4603 = !DILocalVariable(name: "__u", arg: 7, scope: !4507, file: !1599, line: 382, type: !4434)
!4604 = !DILocation(line: 2219, column: 47, scope: !4560, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 742, column: 21, scope: !4443, inlinedAt: !4450)
!4606 = !DILocalVariable(name: "this", arg: 1, scope: !4443, type: !1597, flags: DIFlagArtificial | DIFlagObjectPointer)
!4607 = !DILocation(line: 0, scope: !4443, inlinedAt: !4450)
!4608 = !DILocalVariable(name: "__u", arg: 2, scope: !4443, file: !1599, line: 728, type: !2084)
!4609 = !DILocation(line: 728, column: 24, scope: !4443, inlinedAt: !4450)
!4610 = !DILocalVariable(name: "__u", arg: 3, scope: !4443, file: !1599, line: 728, type: !4434)
!4611 = !DILocalVariable(name: "this", arg: 1, scope: !4451, type: !1597, flags: DIFlagArtificial | DIFlagObjectPointer)
!4612 = !DILocation(line: 0, scope: !4451, inlinedAt: !4452)
!4613 = !DILocalVariable(name: "__u", arg: 2, scope: !4451, file: !1599, line: 728, type: !2084)
!4614 = !DILocation(line: 728, column: 24, scope: !4451, inlinedAt: !4452)
!4615 = !DILocalVariable(name: "__u", arg: 3, scope: !4451, file: !1599, line: 728, type: !4434)
!4616 = !DILocalVariable(name: "__t", arg: 1, scope: !4617, file: !269, line: 2219, type: !4620)
!4617 = distinct !DISubprogram(name: "forward<void (&)()>", linkageName: "_ZNSt3__17forwardIRFvvEEEOT_RNS_16remove_referenceIS3_E4typeE", scope: !8, file: !269, line: 2219, type: !4618, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4623, variables: !199)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!3458, !4620}
!4620 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4622, file: !269, line: 1069, baseType: !2178)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (&)()>", scope: !8, file: !269, line: 1069, size: 8, elements: !199, templateParams: !4623, identifier: "_ZTSNSt3__116remove_referenceIRFvvEEE")
!4623 = !{!4624}
!4624 = !DITemplateTypeParameter(name: "_Tp", type: !3458)
!4625 = !DILocation(line: 2219, column: 47, scope: !4617, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 2282, column: 12, scope: !4627, inlinedAt: !4641)
!4627 = distinct !DISubprogram(name: "__decay_copy<void (&)()>", linkageName: "_ZNSt3__112__decay_copyIRFvvEEENS_5decayIT_E4typeEOS4_", scope: !8, file: !269, line: 2280, type: !4628, isLocal: false, isDefinition: true, scopeLine: 2281, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4623, variables: !199)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!4630, !3458}
!4630 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4631, file: !269, line: 1305, baseType: !4632)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decay<void (&)()>", scope: !8, file: !269, line: 1300, size: 8, elements: !199, templateParams: !4623, identifier: "_ZTSNSt3__15decayIRFvvEEE")
!4632 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4633, file: !269, line: 1296, baseType: !4636)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__decay<void (), true>", scope: !8, file: !269, line: 1284, size: 8, elements: !199, templateParams: !4634, identifier: "_ZTSNSt3__17__decayIFvvELb1EEE")
!4634 = !{!4635, !170}
!4635 = !DITemplateTypeParameter(name: "_Up", type: !2178)
!4636 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4637, file: !269, line: 414, baseType: !2177)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, void (*)(), void (*)()>", scope: !8, file: !269, line: 414, size: 8, elements: !199, templateParams: !4638, identifier: "_ZTSNSt3__111conditionalILb0EPFvvES2_EE")
!4638 = !{!272, !4639, !4640}
!4639 = !DITemplateTypeParameter(name: "_If", type: !2177)
!4640 = !DITemplateTypeParameter(name: "_Then", type: !2177)
!4641 = distinct !DILocation(line: 363, column: 21, scope: !4359)
!4642 = !DILocalVariable(name: "__t", arg: 1, scope: !4627, file: !269, line: 2280, type: !3458)
!4643 = !DILocation(line: 2280, column: 20, scope: !4627, inlinedAt: !4641)
!4644 = !DILocation(line: 2219, column: 47, scope: !4617, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 363, column: 34, scope: !4359)
!4646 = !DILocation(line: 0, scope: !4115, inlinedAt: !4647)
!4647 = distinct !DILocation(line: 2585, column: 7, scope: !4119, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 2539, column: 19, scope: !4123, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 2539, column: 17, scope: !4126, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 370, column: 1, scope: !4651)
!4651 = !DILexicalBlockFile(scope: !4113, file: !1620, discriminator: 5)
!4652 = !DILocation(line: 2267, column: 50, scope: !4115, inlinedAt: !4647)
!4653 = !DILocation(line: 0, scope: !4132, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 2585, column: 14, scope: !4120, inlinedAt: !4648)
!4655 = !DILocation(line: 0, scope: !4137, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 2583, column: 12, scope: !4121, inlinedAt: !4648)
!4657 = !DILocation(line: 0, scope: !4137, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 2582, column: 28, scope: !4121, inlinedAt: !4648)
!4659 = !DILocation(line: 0, scope: !4121, inlinedAt: !4648)
!4660 = !DILocation(line: 2581, column: 22, scope: !4121, inlinedAt: !4648)
!4661 = !DILocation(line: 2582, column: 13, scope: !4121, inlinedAt: !4648)
!4662 = !DILocation(line: 0, scope: !4124, inlinedAt: !4649)
!4663 = !DILocation(line: 0, scope: !4126, inlinedAt: !4650)
!4664 = !DILocalVariable(name: "__t", arg: 1, scope: !4665, file: !269, line: 2210, type: !2088)
!4665 = distinct !DISubprogram(name: "move<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > &>", linkageName: "_ZNSt3__14moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_", scope: !8, file: !269, line: 2210, type: !4666, isLocal: false, isDefinition: true, scopeLine: 2211, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4671, variables: !199)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!4668, !2088}
!4668 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4669, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4670, file: !269, line: 1069, baseType: !1609)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> > &>", scope: !8, file: !269, line: 1069, size: 8, elements: !199, templateParams: !4671, identifier: "_ZTSNSt3__116remove_referenceIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEE")
!4671 = !{!4672}
!4672 = !DITemplateTypeParameter(name: "_Tp", type: !2088)
!4673 = !DILocation(line: 2210, column: 12, scope: !4665, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 362, column: 21, scope: !4675)
!4675 = !DILexicalBlockFile(scope: !4359, file: !1620, discriminator: 1)
!4676 = !DILocalVariable(name: "__t", arg: 1, scope: !4677, file: !269, line: 2219, type: !4680)
!4677 = distinct !DISubprogram(name: "forward<std::__1::__thread_struct *&>", linkageName: "_ZNSt3__17forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE", scope: !8, file: !269, line: 2219, type: !4678, isLocal: false, isDefinition: true, scopeLine: 2220, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4683, variables: !199)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!2012, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4682, file: !269, line: 1069, baseType: !1618)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::__1::__thread_struct *&>", scope: !8, file: !269, line: 1069, size: 8, elements: !199, templateParams: !4683, identifier: "_ZTSNSt3__116remove_referenceIRPNS_15__thread_structEEE")
!4683 = !{!4684}
!4684 = !DITemplateTypeParameter(name: "_Tp", type: !2012)
!4685 = !DILocation(line: 2219, column: 47, scope: !4677, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 2174, column: 16, scope: !4687, inlinedAt: !4692)
!4687 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_", scope: !1612, file: !174, line: 2173, type: !4688, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4690, declaration: !4691, variables: !199)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{null, !2061, !2012}
!4690 = !{!4684, !170}
!4691 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *&, true>", scope: !1612, file: !174, line: 2173, type: !4688, isLocal: false, isDefinition: false, scopeLine: 2173, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !4690)
!4692 = distinct !DILocation(line: 2174, column: 50, scope: !4693, inlinedAt: !4694)
!4693 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *&, true>", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_", scope: !1612, file: !174, line: 2173, type: !4688, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4690, declaration: !4691, variables: !199)
!4694 = distinct !DILocation(line: 2404, column: 47, scope: !4695, inlinedAt: !4697)
!4695 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_", scope: !1609, file: !174, line: 2404, type: !2137, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3868, declaration: !4696, variables: !199)
!4696 = !DISubprogram(name: "unique_ptr<true, void>", scope: !1609, file: !174, line: 2404, type: !2137, isLocal: false, isDefinition: false, scopeLine: 2404, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !3868)
!4697 = distinct !DILocation(line: 2404, column: 59, scope: !4698, inlinedAt: !4699)
!4698 = distinct !DISubprogram(name: "unique_ptr<true, void>", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_", scope: !1609, file: !174, line: 2404, type: !2137, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !3868, declaration: !4696, variables: !199)
!4699 = distinct !DILocation(line: 359, column: 12, scope: !4675)
!4700 = !DILocalVariable(name: "this", arg: 1, scope: !4687, type: !4133, flags: DIFlagArtificial | DIFlagObjectPointer)
!4701 = !DILocation(line: 0, scope: !4687, inlinedAt: !4692)
!4702 = !DILocalVariable(name: "__t", arg: 2, scope: !4687, file: !174, line: 2173, type: !2012)
!4703 = !DILocation(line: 2173, column: 27, scope: !4687, inlinedAt: !4692)
!4704 = !DILocalVariable(name: "this", arg: 1, scope: !4693, type: !4133, flags: DIFlagArtificial | DIFlagObjectPointer)
!4705 = !DILocation(line: 0, scope: !4693, inlinedAt: !4694)
!4706 = !DILocalVariable(name: "__t", arg: 2, scope: !4693, file: !174, line: 2173, type: !2012)
!4707 = !DILocation(line: 2173, column: 27, scope: !4693, inlinedAt: !4694)
!4708 = !DILocalVariable(name: "this", arg: 1, scope: !4695, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4709 = !DILocation(line: 0, scope: !4695, inlinedAt: !4697)
!4710 = !DILocalVariable(name: "__p", arg: 2, scope: !4695, file: !174, line: 2404, type: !2111)
!4711 = !DILocation(line: 2404, column: 31, scope: !4695, inlinedAt: !4697)
!4712 = !DILocalVariable(name: "this", arg: 1, scope: !4698, type: !4143, flags: DIFlagArtificial | DIFlagObjectPointer)
!4713 = !DILocation(line: 0, scope: !4698, inlinedAt: !4699)
!4714 = !DILocalVariable(name: "__p", arg: 2, scope: !4698, file: !174, line: 2404, type: !2111)
!4715 = !DILocation(line: 2404, column: 31, scope: !4698, inlinedAt: !4699)
!4716 = !DILocalVariable(name: "this", arg: 1, scope: !4113, type: !3465, flags: DIFlagArtificial | DIFlagObjectPointer)
!4717 = !DILocation(line: 0, scope: !4113)
!4718 = !DILocalVariable(name: "__f", arg: 2, scope: !4113, file: !1620, line: 356, type: !3458)
!4719 = !DILocation(line: 356, column: 22, scope: !4113)
!4720 = !DILocalVariable(name: "__tsp", scope: !4359, file: !1620, line: 359, type: !4721)
!4721 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !1620, line: 358, baseType: !1609)
!4722 = !DILocation(line: 359, column: 12, scope: !4359)
!4723 = !DILocation(line: 359, column: 18, scope: !4359)
!4724 = !DILocation(line: 359, column: 22, scope: !4359)
!4725 = !DILocation(line: 2404, column: 59, scope: !4698, inlinedAt: !4699)
!4726 = !DILocation(line: 2404, column: 47, scope: !4695, inlinedAt: !4697)
!4727 = !DILocation(line: 2174, column: 50, scope: !4693, inlinedAt: !4694)
!4728 = !DILocation(line: 2174, column: 50, scope: !4687, inlinedAt: !4692)
!4729 = !DILocation(line: 2174, column: 34, scope: !4687, inlinedAt: !4692)
!4730 = !DILocation(line: 2221, column: 31, scope: !4677, inlinedAt: !4686)
!4731 = !DILocation(line: 2174, column: 9, scope: !4732, inlinedAt: !4692)
!4732 = !DILexicalBlockFile(scope: !4687, file: !174, discriminator: 1)
!4733 = !DILocalVariable(name: "__p", scope: !4359, file: !1620, line: 361, type: !4174)
!4734 = !DILocation(line: 361, column: 28, scope: !4359)
!4735 = !DILocation(line: 362, column: 13, scope: !4359)
!4736 = !DILocation(line: 362, column: 13, scope: !4675)
!4737 = !DILocation(line: 2213, column: 31, scope: !4665, inlinedAt: !4674)
!4738 = !DILocation(line: 363, column: 54, scope: !4359)
!4739 = !DILocation(line: 2221, column: 31, scope: !4617, inlinedAt: !4645)
!4740 = !DILocation(line: 2282, column: 32, scope: !4627, inlinedAt: !4641)
!4741 = !DILocation(line: 2221, column: 31, scope: !4617, inlinedAt: !4626)
!4742 = !DILocation(line: 2282, column: 5, scope: !4627, inlinedAt: !4641)
!4743 = !DILocation(line: 363, column: 21, scope: !4675)
!4744 = !DILocation(line: 742, column: 50, scope: !4451, inlinedAt: !4452)
!4745 = !DILocation(line: 738, column: 15, scope: !4443, inlinedAt: !4450)
!4746 = !DILocation(line: 742, column: 41, scope: !4443, inlinedAt: !4450)
!4747 = !DILocation(line: 2221, column: 31, scope: !4560, inlinedAt: !4605)
!4748 = !DILocation(line: 2221, column: 31, scope: !4431, inlinedAt: !4441)
!4749 = !DILocalVariable(arg: 2, scope: !4507, file: !1599, line: 380, type: !2238)
!4750 = !DILocation(line: 380, column: 45, scope: !4507, inlinedAt: !4508)
!4751 = !DILocalVariable(arg: 3, scope: !4507, file: !1599, line: 380, type: !4493)
!4752 = !DILocation(line: 380, column: 68, scope: !4507, inlinedAt: !4508)
!4753 = !DILocalVariable(arg: 4, scope: !4507, file: !1599, line: 381, type: !4494)
!4754 = !DILocation(line: 381, column: 45, scope: !4507, inlinedAt: !4508)
!4755 = !DILocalVariable(arg: 5, scope: !4507, file: !1599, line: 381, type: !4497)
!4756 = !DILocation(line: 381, column: 68, scope: !4507, inlinedAt: !4508)
!4757 = !DILocation(line: 387, column: 13, scope: !4507, inlinedAt: !4508)
!4758 = !DILocalVariable(arg: 2, scope: !4490, file: !1599, line: 380, type: !2238)
!4759 = !DILocation(line: 380, column: 45, scope: !4490, inlinedAt: !4506)
!4760 = !DILocalVariable(arg: 3, scope: !4490, file: !1599, line: 380, type: !4493)
!4761 = !DILocation(line: 380, column: 68, scope: !4490, inlinedAt: !4506)
!4762 = !DILocalVariable(arg: 4, scope: !4490, file: !1599, line: 381, type: !4494)
!4763 = !DILocation(line: 381, column: 45, scope: !4490, inlinedAt: !4506)
!4764 = !DILocalVariable(arg: 5, scope: !4490, file: !1599, line: 381, type: !4497)
!4765 = !DILocation(line: 381, column: 68, scope: !4490, inlinedAt: !4506)
!4766 = !DILocation(line: 387, column: 13, scope: !4490, inlinedAt: !4506)
!4767 = !DILocation(line: 385, column: 56, scope: !4490, inlinedAt: !4506)
!4768 = !DILocation(line: 2221, column: 31, scope: !4560, inlinedAt: !4592)
!4769 = !DILocation(line: 226, column: 15, scope: !4482, inlinedAt: !4488)
!4770 = !DILocation(line: 226, column: 41, scope: !4482, inlinedAt: !4488)
!4771 = !DILocation(line: 2221, column: 31, scope: !4560, inlinedAt: !4568)
!4772 = !DILocation(line: 2428, column: 80, scope: !4479, inlinedAt: !4480)
!4773 = !DILocation(line: 2428, column: 9, scope: !4477, inlinedAt: !4478)
!4774 = !DILocation(line: 2428, column: 16, scope: !4477, inlinedAt: !4478)
!4775 = !DILocation(line: 2575, column: 19, scope: !4543, inlinedAt: !4544)
!4776 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !4546)
!4777 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !4546)
!4778 = !DILocation(line: 2575, column: 26, scope: !4543, inlinedAt: !4544)
!4779 = !DILocation(line: 2576, column: 5, scope: !4543, inlinedAt: !4544)
!4780 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !4542)
!4781 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !4542)
!4782 = !DILocation(line: 2576, column: 20, scope: !4543, inlinedAt: !4544)
!4783 = !DILocation(line: 2577, column: 12, scope: !4543, inlinedAt: !4544)
!4784 = !DILocation(line: 2428, column: 60, scope: !4477, inlinedAt: !4478)
!4785 = !DILocation(line: 2562, column: 12, scope: !4536, inlinedAt: !4537)
!4786 = !DILocation(line: 2223, column: 33, scope: !4132, inlinedAt: !4535)
!4787 = !DILocation(line: 2223, column: 40, scope: !4132, inlinedAt: !4535)
!4788 = !DILocation(line: 2221, column: 31, scope: !4455, inlinedAt: !4532)
!4789 = !DILocation(line: 2184, column: 74, scope: !4475, inlinedAt: !4476)
!4790 = !DILocation(line: 2184, column: 74, scope: !4466, inlinedAt: !4474)
!4791 = !DILocation(line: 2184, column: 34, scope: !4466, inlinedAt: !4474)
!4792 = !DILocation(line: 2221, column: 31, scope: !4510, inlinedAt: !4518)
!4793 = !DILocation(line: 2184, column: 9, scope: !4794, inlinedAt: !4474)
!4794 = !DILexicalBlockFile(scope: !4466, file: !174, discriminator: 1)
!4795 = !DILocation(line: 2184, column: 67, scope: !4466, inlinedAt: !4474)
!4796 = !DILocation(line: 2221, column: 31, scope: !4455, inlinedAt: !4464)
!4797 = !DILocation(line: 2184, column: 42, scope: !4798, inlinedAt: !4474)
!4798 = !DILexicalBlockFile(scope: !4466, file: !174, discriminator: 3)
!4799 = !DILocation(line: 2221, column: 31, scope: !4431, inlinedAt: !4575)
!4800 = !DILocation(line: 226, column: 15, scope: !4579, inlinedAt: !4584)
!4801 = !DILocation(line: 226, column: 41, scope: !4579, inlinedAt: !4584)
!4802 = !DILocation(line: 2221, column: 31, scope: !4431, inlinedAt: !4578)
!4803 = !DILocation(line: 226, column: 21, scope: !4579, inlinedAt: !4584)
!4804 = !DILocation(line: 2404, column: 59, scope: !4412, inlinedAt: !4413)
!4805 = !DILocation(line: 2404, column: 47, scope: !4409, inlinedAt: !4411)
!4806 = !DILocation(line: 2174, column: 50, scope: !4407, inlinedAt: !4408)
!4807 = !DILocation(line: 2174, column: 50, scope: !4401, inlinedAt: !4406)
!4808 = !DILocation(line: 2174, column: 34, scope: !4401, inlinedAt: !4406)
!4809 = !DILocation(line: 2221, column: 31, scope: !4391, inlinedAt: !4400)
!4810 = !DILocation(line: 2174, column: 9, scope: !4811, inlinedAt: !4406)
!4811 = !DILexicalBlockFile(scope: !4401, file: !174, discriminator: 1)
!4812 = !DILocalVariable(name: "__ec", scope: !4359, file: !1620, line: 365, type: !17)
!4813 = !DILocation(line: 365, column: 9, scope: !4359)
!4814 = !DILocation(line: 365, column: 40, scope: !4359)
!4815 = !DILocation(line: 2558, column: 12, scope: !4385, inlinedAt: !4386)
!4816 = !DILocation(line: 2218, column: 39, scope: !4381, inlinedAt: !4384)
!4817 = !DILocation(line: 2218, column: 46, scope: !4381, inlinedAt: !4384)
!4818 = !DILocation(line: 2558, column: 19, scope: !4385, inlinedAt: !4386)
!4819 = !DILocation(line: 365, column: 68, scope: !4359)
!4820 = !DILocation(line: 324, column: 25, scope: !4367, inlinedAt: !4375)
!4821 = !DILocation(line: 324, column: 33, scope: !4367, inlinedAt: !4375)
!4822 = !DILocation(line: 324, column: 41, scope: !4367, inlinedAt: !4375)
!4823 = !DILocation(line: 324, column: 10, scope: !4367, inlinedAt: !4375)
!4824 = !DILocation(line: 324, column: 3, scope: !4367, inlinedAt: !4375)
!4825 = !DILocation(line: 365, column: 9, scope: !4675)
!4826 = !DILocation(line: 366, column: 9, scope: !4358)
!4827 = !DILocation(line: 366, column: 14, scope: !4358)
!4828 = !DILocation(line: 366, column: 9, scope: !4359)
!4829 = !DILocation(line: 2575, column: 19, scope: !4356, inlinedAt: !4357)
!4830 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4361)
!4831 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4361)
!4832 = !DILocation(line: 2575, column: 26, scope: !4356, inlinedAt: !4357)
!4833 = !DILocation(line: 2576, column: 5, scope: !4356, inlinedAt: !4357)
!4834 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4355)
!4835 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4355)
!4836 = !DILocation(line: 2576, column: 20, scope: !4356, inlinedAt: !4357)
!4837 = !DILocation(line: 2577, column: 12, scope: !4356, inlinedAt: !4357)
!4838 = !DILocation(line: 367, column: 9, scope: !4358)
!4839 = !DILocation(line: 370, column: 1, scope: !4359)
!4840 = !DILocation(line: 359, column: 18, scope: !4453)
!4841 = !DILocation(line: 370, column: 1, scope: !4675)
!4842 = !DILocation(line: 370, column: 1, scope: !4453)
!4843 = !DILocation(line: 362, column: 13, scope: !4844)
!4844 = !DILexicalBlockFile(scope: !4359, file: !1620, discriminator: 3)
!4845 = !DILocation(line: 370, column: 1, scope: !4844)
!4846 = !DILocation(line: 2582, column: 21, scope: !4173, inlinedAt: !4338)
!4847 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4348)
!4848 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4348)
!4849 = !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !4338)
!4850 = !DILocation(line: 2583, column: 22, scope: !4173, inlinedAt: !4338)
!4851 = !DILocation(line: 2583, column: 5, scope: !4173, inlinedAt: !4338)
!4852 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4346)
!4853 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4346)
!4854 = !DILocation(line: 2583, column: 20, scope: !4173, inlinedAt: !4338)
!4855 = !DILocation(line: 2584, column: 9, scope: !4172, inlinedAt: !4338)
!4856 = !DILocation(line: 2584, column: 9, scope: !4173, inlinedAt: !4338)
!4857 = !DILocation(line: 2585, column: 7, scope: !4172, inlinedAt: !4338)
!4858 = !DILocation(line: 2223, column: 33, scope: !4315, inlinedAt: !4344)
!4859 = !DILocation(line: 2223, column: 40, scope: !4315, inlinedAt: !4344)
!4860 = !DILocation(line: 2585, column: 23, scope: !4172, inlinedAt: !4338)
!4861 = !DILocation(line: 2272, column: 12, scope: !4154, inlinedAt: !4337)
!4862 = !DILocation(line: 2272, column: 5, scope: !4154, inlinedAt: !4337)
!4863 = !DILocation(line: 2272, column: 5, scope: !4864, inlinedAt: !4337)
!4864 = !DILexicalBlockFile(scope: !4154, file: !174, discriminator: 1)
!4865 = !DILocation(line: 2272, column: 5, scope: !4866, inlinedAt: !4337)
!4866 = !DILexicalBlockFile(scope: !4154, file: !174, discriminator: 2)
!4867 = !DILocation(line: 370, column: 1, scope: !4341)
!4868 = !DILocation(line: 369, column: 30, scope: !4358)
!4869 = !DILocation(line: 369, column: 9, scope: !4358)
!4870 = !DILocation(line: 369, column: 9, scope: !4871)
!4871 = !DILexicalBlockFile(scope: !4358, file: !1620, discriminator: 1)
!4872 = !DILocation(line: 2582, column: 21, scope: !4173, inlinedAt: !4305)
!4873 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4324)
!4874 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4324)
!4875 = !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !4305)
!4876 = !DILocation(line: 2583, column: 22, scope: !4173, inlinedAt: !4305)
!4877 = !DILocation(line: 2583, column: 5, scope: !4173, inlinedAt: !4305)
!4878 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4322)
!4879 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4322)
!4880 = !DILocation(line: 2583, column: 20, scope: !4173, inlinedAt: !4305)
!4881 = !DILocation(line: 2584, column: 9, scope: !4172, inlinedAt: !4305)
!4882 = !DILocation(line: 2584, column: 9, scope: !4173, inlinedAt: !4305)
!4883 = !DILocation(line: 2585, column: 7, scope: !4172, inlinedAt: !4305)
!4884 = !DILocation(line: 2223, column: 33, scope: !4315, inlinedAt: !4318)
!4885 = !DILocation(line: 2223, column: 40, scope: !4315, inlinedAt: !4318)
!4886 = !DILocation(line: 2585, column: 23, scope: !4172, inlinedAt: !4305)
!4887 = !DILocation(line: 2272, column: 12, scope: !4154, inlinedAt: !4170)
!4888 = !DILocation(line: 2272, column: 5, scope: !4154, inlinedAt: !4170)
!4889 = !DILocation(line: 2272, column: 5, scope: !4864, inlinedAt: !4170)
!4890 = !DILocation(line: 2272, column: 5, scope: !4866, inlinedAt: !4170)
!4891 = !DILocation(line: 2582, column: 21, scope: !4121, inlinedAt: !4122)
!4892 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !4141)
!4893 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !4141)
!4894 = !DILocation(line: 2582, column: 28, scope: !4121, inlinedAt: !4122)
!4895 = !DILocation(line: 2583, column: 22, scope: !4121, inlinedAt: !4122)
!4896 = !DILocation(line: 2583, column: 5, scope: !4121, inlinedAt: !4122)
!4897 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !4139)
!4898 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !4139)
!4899 = !DILocation(line: 2583, column: 20, scope: !4121, inlinedAt: !4122)
!4900 = !DILocation(line: 2584, column: 9, scope: !4120, inlinedAt: !4122)
!4901 = !DILocation(line: 2584, column: 9, scope: !4121, inlinedAt: !4122)
!4902 = !DILocation(line: 2585, column: 7, scope: !4120, inlinedAt: !4122)
!4903 = !DILocation(line: 2223, column: 33, scope: !4132, inlinedAt: !4135)
!4904 = !DILocation(line: 2223, column: 40, scope: !4132, inlinedAt: !4135)
!4905 = !DILocation(line: 2585, column: 23, scope: !4120, inlinedAt: !4122)
!4906 = !DILocation(line: 2272, column: 12, scope: !4115, inlinedAt: !4118)
!4907 = !DILocation(line: 2272, column: 5, scope: !4115, inlinedAt: !4118)
!4908 = !DILocation(line: 2272, column: 5, scope: !4909, inlinedAt: !4118)
!4909 = !DILexicalBlockFile(scope: !4115, file: !174, discriminator: 1)
!4910 = !DILocation(line: 2272, column: 5, scope: !4911, inlinedAt: !4118)
!4911 = !DILexicalBlockFile(scope: !4115, file: !174, discriminator: 2)
!4912 = !DILocation(line: 370, column: 1, scope: !4311)
!4913 = !DILocation(line: 2582, column: 21, scope: !4121, inlinedAt: !4648)
!4914 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !4658)
!4915 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !4658)
!4916 = !DILocation(line: 2582, column: 28, scope: !4121, inlinedAt: !4648)
!4917 = !DILocation(line: 2583, column: 22, scope: !4121, inlinedAt: !4648)
!4918 = !DILocation(line: 2583, column: 5, scope: !4121, inlinedAt: !4648)
!4919 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !4656)
!4920 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !4656)
!4921 = !DILocation(line: 2583, column: 20, scope: !4121, inlinedAt: !4648)
!4922 = !DILocation(line: 2584, column: 9, scope: !4120, inlinedAt: !4648)
!4923 = !DILocation(line: 2584, column: 9, scope: !4121, inlinedAt: !4648)
!4924 = !DILocation(line: 2585, column: 7, scope: !4120, inlinedAt: !4648)
!4925 = !DILocation(line: 2223, column: 33, scope: !4132, inlinedAt: !4654)
!4926 = !DILocation(line: 2223, column: 40, scope: !4132, inlinedAt: !4654)
!4927 = !DILocation(line: 2585, column: 23, scope: !4120, inlinedAt: !4648)
!4928 = !DILocation(line: 2272, column: 12, scope: !4115, inlinedAt: !4647)
!4929 = !DILocation(line: 2272, column: 5, scope: !4115, inlinedAt: !4647)
!4930 = !DILocation(line: 2272, column: 5, scope: !4909, inlinedAt: !4647)
!4931 = !DILocation(line: 2272, column: 5, scope: !4911, inlinedAt: !4647)
!4932 = !DILocation(line: 370, column: 1, scope: !4651)
!4933 = !DILocation(line: 359, column: 18, scope: !4844)
!4934 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !8, file: !1620, line: 343, type: !4372, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4935, variables: !199)
!4935 = !{!4936}
!4936 = !DITemplateTypeParameter(name: "_Fp", type: !1598)
!4937 = !DILocation(line: 0, scope: !4154, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 2585, column: 7, scope: !4171, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 2539, column: 19, scope: !4306, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 2539, column: 17, scope: !4309, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 351, column: 1, scope: !4934)
!4942 = !DILocation(line: 2267, column: 50, scope: !4154, inlinedAt: !4938)
!4943 = !DILocation(line: 0, scope: !4315, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 2585, column: 14, scope: !4172, inlinedAt: !4939)
!4945 = !DILocation(line: 0, scope: !4320, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 2583, column: 12, scope: !4173, inlinedAt: !4939)
!4947 = !DILocation(line: 0, scope: !4320, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !4939)
!4949 = !DILocation(line: 0, scope: !4173, inlinedAt: !4939)
!4950 = !DILocation(line: 2581, column: 22, scope: !4173, inlinedAt: !4939)
!4951 = !DILocation(line: 2582, column: 13, scope: !4173, inlinedAt: !4939)
!4952 = !DILocation(line: 0, scope: !4307, inlinedAt: !4940)
!4953 = !DILocation(line: 0, scope: !4309, inlinedAt: !4941)
!4954 = !DILocalVariable(name: "__t", arg: 1, scope: !4955, file: !269, line: 2210, type: !2203)
!4955 = distinct !DISubprogram(name: "move<void (*&)()>", linkageName: "_ZNSt3__14moveIRPFvvEEEONS_16remove_referenceIT_E4typeEOS5_", scope: !8, file: !269, line: 2210, type: !4956, isLocal: false, isDefinition: true, scopeLine: 2211, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4961, variables: !199)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!4958, !2203}
!4958 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4959, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4960, file: !269, line: 1069, baseType: !2177)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (*&)()>", scope: !8, file: !269, line: 1069, size: 8, elements: !199, templateParams: !4961, identifier: "_ZTSNSt3__116remove_referenceIRPFvvEEE")
!4961 = !{!4962}
!4962 = !DITemplateTypeParameter(name: "_Tp", type: !2203)
!4963 = !DILocation(line: 2210, column: 12, scope: !4955, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 339, column: 14, scope: !4965, inlinedAt: !4973)
!4965 = !DILexicalBlockFile(scope: !4966, file: !1620, discriminator: 1)
!4966 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !8, file: !1620, line: 337, type: !4967, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4969, variables: !199)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{null, !2263, !4494}
!4969 = !{!4970, !4971, !3461, !4972}
!4970 = !DITemplateTypeParameter(name: "_TSp", type: !1609)
!4971 = !DITemplateTypeParameter(name: "_Fp", type: !2177)
!4972 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !199)
!4973 = distinct !DILocation(line: 349, column: 5, scope: !4974)
!4974 = !DILexicalBlockFile(scope: !4934, file: !1620, discriminator: 1)
!4975 = !DILocation(line: 2219, column: 47, scope: !4431, inlinedAt: !4976)
!4976 = distinct !DILocation(line: 4323, column: 1, scope: !4977, inlinedAt: !4981)
!4977 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !8, file: !269, line: 4322, type: !4978, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4980, variables: !199)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{null, !4434}
!4980 = !{!4971, !3461}
!4981 = distinct !DILocation(line: 339, column: 5, scope: !4982, inlinedAt: !4973)
!4982 = !DILexicalBlockFile(scope: !4966, file: !1620, discriminator: 2)
!4983 = !DILocalVariable(name: "__f", arg: 1, scope: !4977, file: !269, line: 4322, type: !4434)
!4984 = !DILocation(line: 4322, column: 16, scope: !4977, inlinedAt: !4981)
!4985 = !DILocalVariable(name: "this", arg: 1, scope: !4986, type: !4587, flags: DIFlagArtificial | DIFlagObjectPointer)
!4986 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !2174, file: !1599, line: 270, type: !2201, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2200, variables: !199)
!4987 = !DILocation(line: 0, scope: !4986, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 951, column: 61, scope: !4989, inlinedAt: !5001)
!4989 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !8, file: !1599, line: 948, type: !4990, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5000, variables: !199)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!4992, !2263}
!4992 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4994, file: !2239, line: 463, baseType: !4996)
!4994 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !8, file: !2239, line: 460, size: 8, elements: !199, templateParams: !4995, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!4995 = !{!2211, !4167}
!4996 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4997, file: !2239, line: 289, baseType: !2177)
!4997 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !8, file: !2239, line: 285, size: 8, elements: !199, templateParams: !4998, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!4998 = !{!2211, !4999}
!4999 = !DITemplateTypeParameter(name: "_Tp", type: !4493)
!5000 = !{!2211, !2245}
!5001 = distinct !DILocation(line: 339, column: 26, scope: !4966, inlinedAt: !4973)
!5002 = !DILocalVariable(name: "__t", arg: 1, scope: !4989, file: !1599, line: 948, type: !2263)
!5003 = !DILocation(line: 948, column: 20, scope: !4989, inlinedAt: !5001)
!5004 = !DILocalVariable(name: "__t", arg: 1, scope: !4966, file: !1620, line: 337, type: !2263)
!5005 = !DILocation(line: 337, column: 46, scope: !4966, inlinedAt: !4973)
!5006 = !DILocation(line: 0, scope: !4381, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 2550, column: 20, scope: !5008, inlinedAt: !5009)
!5008 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !4174, file: !174, line: 2549, type: !4262, isLocal: false, isDefinition: true, scopeLine: 2549, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4261, variables: !199)
!5009 = distinct !DILocation(line: 349, column: 22, scope: !4934)
!5010 = !DILocalVariable(name: "this", arg: 1, scope: !5008, type: !4388, flags: DIFlagArtificial | DIFlagObjectPointer)
!5011 = !DILocation(line: 0, scope: !5008, inlinedAt: !5009)
!5012 = !DILocation(line: 0, scope: !4137, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 2576, column: 12, scope: !4543, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 347, column: 59, scope: !5015)
!5015 = !DILexicalBlockFile(scope: !4934, file: !1620, discriminator: 3)
!5016 = !DILocation(line: 0, scope: !4137, inlinedAt: !5017)
!5017 = distinct !DILocation(line: 2575, column: 26, scope: !4543, inlinedAt: !5014)
!5018 = !DILocation(line: 0, scope: !4543, inlinedAt: !5014)
!5019 = !DILocation(line: 2575, column: 13, scope: !4543, inlinedAt: !5014)
!5020 = !DILocation(line: 0, scope: !4154, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 2585, column: 7, scope: !4171, inlinedAt: !5022)
!5022 = distinct !DILocation(line: 2539, column: 19, scope: !4306, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 2539, column: 17, scope: !4309, inlinedAt: !5024)
!5024 = distinct !DILocation(line: 351, column: 1, scope: !4974)
!5025 = !DILocation(line: 2267, column: 50, scope: !4154, inlinedAt: !5021)
!5026 = !DILocation(line: 0, scope: !4315, inlinedAt: !5027)
!5027 = distinct !DILocation(line: 2585, column: 14, scope: !4172, inlinedAt: !5022)
!5028 = !DILocation(line: 0, scope: !4320, inlinedAt: !5029)
!5029 = distinct !DILocation(line: 2583, column: 12, scope: !4173, inlinedAt: !5022)
!5030 = !DILocation(line: 0, scope: !4320, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !5022)
!5032 = !DILocation(line: 0, scope: !4173, inlinedAt: !5022)
!5033 = !DILocation(line: 2581, column: 22, scope: !4173, inlinedAt: !5022)
!5034 = !DILocation(line: 2582, column: 13, scope: !4173, inlinedAt: !5022)
!5035 = !DILocation(line: 0, scope: !4307, inlinedAt: !5023)
!5036 = !DILocation(line: 0, scope: !4309, inlinedAt: !5024)
!5037 = !DILocalVariable(name: "this", arg: 1, scope: !5038, type: !4570, flags: DIFlagArtificial | DIFlagObjectPointer)
!5038 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !1606, file: !1599, line: 270, type: !2163, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2162, variables: !199)
!5039 = !DILocation(line: 0, scope: !5038, inlinedAt: !5040)
!5040 = distinct !DILocation(line: 951, column: 61, scope: !5041, inlinedAt: !5052)
!5041 = distinct !DISubprogram(name: "get<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !8, file: !1599, line: 948, type: !5042, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5051, variables: !199)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!5044, !2263}
!5044 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5045, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5046, file: !2239, line: 463, baseType: !5048)
!5046 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<0, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !8, file: !2239, line: 460, size: 8, elements: !199, templateParams: !5047, identifier: "_ZTSNSt3__113tuple_elementILm0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5047 = !{!2171, !4167}
!5048 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5049, file: !2239, line: 289, baseType: !1609)
!5049 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<0, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !8, file: !2239, line: 285, size: 8, elements: !199, templateParams: !5050, identifier: "_ZTSNSt3__113tuple_elementILm0ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!5050 = !{!2171, !4999}
!5051 = !{!2171, !2245}
!5052 = distinct !DILocation(line: 347, column: 39, scope: !5053)
!5053 = !DILexicalBlockFile(scope: !4934, file: !1620, discriminator: 2)
!5054 = !DILocalVariable(name: "__t", arg: 1, scope: !5041, file: !1599, line: 948, type: !2263)
!5055 = !DILocation(line: 948, column: 20, scope: !5041, inlinedAt: !5052)
!5056 = !DILocation(line: 0, scope: !4381, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 2550, column: 20, scope: !5008, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 347, column: 53, scope: !4974)
!5059 = !DILocation(line: 0, scope: !5008, inlinedAt: !5058)
!5060 = !DILocation(line: 2219, column: 47, scope: !4391, inlinedAt: !5061)
!5061 = distinct !DILocation(line: 2174, column: 16, scope: !4401, inlinedAt: !5062)
!5062 = distinct !DILocation(line: 2174, column: 50, scope: !4407, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 2404, column: 47, scope: !4409, inlinedAt: !5064)
!5064 = distinct !DILocation(line: 2404, column: 59, scope: !4412, inlinedAt: !5065)
!5065 = distinct !DILocation(line: 346, column: 26, scope: !4934)
!5066 = !DILocation(line: 0, scope: !4401, inlinedAt: !5062)
!5067 = !DILocation(line: 2173, column: 27, scope: !4401, inlinedAt: !5062)
!5068 = !DILocation(line: 0, scope: !4407, inlinedAt: !5063)
!5069 = !DILocation(line: 2173, column: 27, scope: !4407, inlinedAt: !5063)
!5070 = !DILocation(line: 0, scope: !4409, inlinedAt: !5064)
!5071 = !DILocation(line: 2404, column: 31, scope: !4409, inlinedAt: !5064)
!5072 = !DILocation(line: 0, scope: !4412, inlinedAt: !5065)
!5073 = !DILocation(line: 2404, column: 31, scope: !4412, inlinedAt: !5065)
!5074 = !DILocalVariable(name: "__vp", arg: 1, scope: !4934, file: !1620, line: 343, type: !63)
!5075 = !DILocation(line: 343, column: 28, scope: !4934)
!5076 = !DILocalVariable(name: "__p", scope: !4934, file: !1620, line: 346, type: !4174)
!5077 = !DILocation(line: 346, column: 26, scope: !4934)
!5078 = !DILocation(line: 346, column: 48, scope: !4934)
!5079 = !DILocation(line: 346, column: 30, scope: !4934)
!5080 = !DILocation(line: 2404, column: 59, scope: !4412, inlinedAt: !5065)
!5081 = !DILocation(line: 2404, column: 47, scope: !4409, inlinedAt: !5064)
!5082 = !DILocation(line: 2174, column: 50, scope: !4407, inlinedAt: !5063)
!5083 = !DILocation(line: 2174, column: 50, scope: !4401, inlinedAt: !5062)
!5084 = !DILocation(line: 2174, column: 34, scope: !4401, inlinedAt: !5062)
!5085 = !DILocation(line: 2221, column: 31, scope: !4391, inlinedAt: !5061)
!5086 = !DILocation(line: 2174, column: 9, scope: !4811, inlinedAt: !5062)
!5087 = !DILocation(line: 347, column: 5, scope: !4934)
!5088 = !DILocation(line: 2550, column: 13, scope: !5008, inlinedAt: !5058)
!5089 = !DILocation(line: 2218, column: 39, scope: !4381, inlinedAt: !5057)
!5090 = !DILocation(line: 2218, column: 46, scope: !4381, inlinedAt: !5057)
!5091 = !DILocation(line: 2550, column: 20, scope: !5008, inlinedAt: !5058)
!5092 = !DILocation(line: 2550, column: 5, scope: !5008, inlinedAt: !5058)
!5093 = !DILocation(line: 951, column: 50, scope: !5041, inlinedAt: !5052)
!5094 = !DILocation(line: 951, column: 54, scope: !5041, inlinedAt: !5052)
!5095 = !DILocation(line: 270, column: 102, scope: !5038, inlinedAt: !5040)
!5096 = !DILocation(line: 2575, column: 19, scope: !4543, inlinedAt: !5014)
!5097 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !5017)
!5098 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !5017)
!5099 = !DILocation(line: 2575, column: 26, scope: !4543, inlinedAt: !5014)
!5100 = !DILocation(line: 2576, column: 5, scope: !4543, inlinedAt: !5014)
!5101 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !5013)
!5102 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !5013)
!5103 = !DILocation(line: 2576, column: 20, scope: !4543, inlinedAt: !5014)
!5104 = !DILocation(line: 2577, column: 12, scope: !4543, inlinedAt: !5014)
!5105 = !DILocation(line: 347, column: 27, scope: !5053)
!5106 = !DILocation(line: 2550, column: 13, scope: !5008, inlinedAt: !5009)
!5107 = !DILocation(line: 2218, column: 39, scope: !4381, inlinedAt: !5007)
!5108 = !DILocation(line: 2218, column: 46, scope: !4381, inlinedAt: !5007)
!5109 = !DILocation(line: 2550, column: 20, scope: !5008, inlinedAt: !5009)
!5110 = !DILocation(line: 2550, column: 5, scope: !5008, inlinedAt: !5009)
!5111 = !DILocalVariable(arg: 2, scope: !4966, file: !1620, line: 337, type: !4494)
!5112 = !DILocation(line: 337, column: 79, scope: !4966, inlinedAt: !4973)
!5113 = !DILocation(line: 339, column: 40, scope: !4966, inlinedAt: !4973)
!5114 = !DILocation(line: 951, column: 50, scope: !4989, inlinedAt: !5001)
!5115 = !DILocation(line: 951, column: 54, scope: !4989, inlinedAt: !5001)
!5116 = !DILocation(line: 270, column: 102, scope: !4986, inlinedAt: !4988)
!5117 = !DILocation(line: 2213, column: 31, scope: !4955, inlinedAt: !4964)
!5118 = !DILocation(line: 4323, column: 1, scope: !4977, inlinedAt: !4981)
!5119 = !DILocation(line: 2221, column: 31, scope: !4431, inlinedAt: !4976)
!5120 = !DILocation(line: 4323, column: 1, scope: !5121, inlinedAt: !4981)
!5121 = !DILexicalBlockFile(scope: !4977, file: !269, discriminator: 1)
!5122 = !DILocation(line: 340, column: 1, scope: !4966, inlinedAt: !4973)
!5123 = !DILocation(line: 2582, column: 21, scope: !4173, inlinedAt: !4939)
!5124 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4948)
!5125 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4948)
!5126 = !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !4939)
!5127 = !DILocation(line: 2583, column: 22, scope: !4173, inlinedAt: !4939)
!5128 = !DILocation(line: 2583, column: 5, scope: !4173, inlinedAt: !4939)
!5129 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !4946)
!5130 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !4946)
!5131 = !DILocation(line: 2583, column: 20, scope: !4173, inlinedAt: !4939)
!5132 = !DILocation(line: 2584, column: 9, scope: !4172, inlinedAt: !4939)
!5133 = !DILocation(line: 2584, column: 9, scope: !4173, inlinedAt: !4939)
!5134 = !DILocation(line: 2585, column: 7, scope: !4172, inlinedAt: !4939)
!5135 = !DILocation(line: 2223, column: 33, scope: !4315, inlinedAt: !4944)
!5136 = !DILocation(line: 2223, column: 40, scope: !4315, inlinedAt: !4944)
!5137 = !DILocation(line: 2585, column: 23, scope: !4172, inlinedAt: !4939)
!5138 = !DILocation(line: 2272, column: 12, scope: !4154, inlinedAt: !4938)
!5139 = !DILocation(line: 2272, column: 5, scope: !4154, inlinedAt: !4938)
!5140 = !DILocation(line: 2272, column: 5, scope: !4864, inlinedAt: !4938)
!5141 = !DILocation(line: 2272, column: 5, scope: !4866, inlinedAt: !4938)
!5142 = !DILocation(line: 351, column: 1, scope: !4934)
!5143 = !DILocation(line: 351, column: 1, scope: !4974)
!5144 = !DILocation(line: 2582, column: 21, scope: !4173, inlinedAt: !5022)
!5145 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !5031)
!5146 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !5031)
!5147 = !DILocation(line: 2582, column: 28, scope: !4173, inlinedAt: !5022)
!5148 = !DILocation(line: 2583, column: 22, scope: !4173, inlinedAt: !5022)
!5149 = !DILocation(line: 2583, column: 5, scope: !4173, inlinedAt: !5022)
!5150 = !DILocation(line: 2213, column: 33, scope: !4320, inlinedAt: !5029)
!5151 = !DILocation(line: 2213, column: 40, scope: !4320, inlinedAt: !5029)
!5152 = !DILocation(line: 2583, column: 20, scope: !4173, inlinedAt: !5022)
!5153 = !DILocation(line: 2584, column: 9, scope: !4172, inlinedAt: !5022)
!5154 = !DILocation(line: 2584, column: 9, scope: !4173, inlinedAt: !5022)
!5155 = !DILocation(line: 2585, column: 7, scope: !4172, inlinedAt: !5022)
!5156 = !DILocation(line: 2223, column: 33, scope: !4315, inlinedAt: !5027)
!5157 = !DILocation(line: 2223, column: 40, scope: !4315, inlinedAt: !5027)
!5158 = !DILocation(line: 2585, column: 23, scope: !4172, inlinedAt: !5022)
!5159 = !DILocation(line: 2272, column: 12, scope: !4154, inlinedAt: !5021)
!5160 = !DILocation(line: 2272, column: 5, scope: !4154, inlinedAt: !5021)
!5161 = !DILocation(line: 2272, column: 5, scope: !4864, inlinedAt: !5021)
!5162 = !DILocation(line: 2272, column: 5, scope: !4866, inlinedAt: !5021)
!5163 = !DILocation(line: 351, column: 1, scope: !5053)
!5164 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *&, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_", scope: !1615, file: !174, line: 2088, type: !5165, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5167, declaration: !5169, variables: !199)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{null, !2007, !2012}
!5167 = !{!5168, !3462}
!5168 = !DITemplateTypeParameter(name: "_Up", type: !2012)
!5169 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *&, void>", scope: !1615, file: !174, line: 2088, type: !5165, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5167)
!5170 = !DILocation(line: 2219, column: 47, scope: !4677, inlinedAt: !5171)
!5171 = distinct !DILocation(line: 2089, column: 18, scope: !5164)
!5172 = !DILocalVariable(name: "this", arg: 1, scope: !5164, type: !5173, flags: DIFlagArtificial | DIFlagObjectPointer)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!5174 = !DILocation(line: 0, scope: !5164)
!5175 = !DILocalVariable(name: "__u", arg: 2, scope: !5164, file: !174, line: 2088, type: !2012)
!5176 = !DILocation(line: 2088, column: 32, scope: !5164)
!5177 = !DILocation(line: 2089, column: 9, scope: !5164)
!5178 = !DILocation(line: 2089, column: 38, scope: !5164)
!5179 = !DILocation(line: 2221, column: 31, scope: !4677, inlinedAt: !5171)
!5180 = !DILocation(line: 2089, column: 18, scope: !5164)
!5181 = !DILocation(line: 2089, column: 44, scope: !5164)
!5182 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !1615, file: !174, line: 2101, type: !2009, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2008, variables: !199)
!5183 = !DILocalVariable(name: "this", arg: 1, scope: !5182, type: !5173, flags: DIFlagArtificial | DIFlagObjectPointer)
!5184 = !DILocation(line: 0, scope: !5182)
!5185 = !DILocation(line: 2101, column: 40, scope: !5182)
!5186 = !DILocation(line: 2101, column: 33, scope: !5182)
!5187 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !2024, file: !174, line: 2136, type: !2045, isLocal: false, isDefinition: true, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2044, variables: !199)
!5188 = !DILocalVariable(name: "this", arg: 1, scope: !5187, type: !5189, flags: DIFlagArtificial | DIFlagObjectPointer)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!5190 = !DILocation(line: 0, scope: !5187)
!5191 = !DILocation(line: 2136, column: 40, scope: !5187)
!5192 = !DILocation(line: 2136, column: 33, scope: !5187)
!5193 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !1615, file: !174, line: 2088, type: !5194, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5196, declaration: !5198, variables: !199)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{null, !2007, !4469}
!5196 = !{!5197, !3462}
!5197 = !DITemplateTypeParameter(name: "_Up", type: !1618)
!5198 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !1615, file: !174, line: 2088, type: !5194, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5196)
!5199 = !DILocation(line: 2219, column: 47, scope: !4510, inlinedAt: !5200)
!5200 = distinct !DILocation(line: 2089, column: 18, scope: !5193)
!5201 = !DILocalVariable(name: "this", arg: 1, scope: !5193, type: !5173, flags: DIFlagArtificial | DIFlagObjectPointer)
!5202 = !DILocation(line: 0, scope: !5193)
!5203 = !DILocalVariable(name: "__u", arg: 2, scope: !5193, file: !174, line: 2088, type: !4469)
!5204 = !DILocation(line: 2088, column: 32, scope: !5193)
!5205 = !DILocation(line: 2089, column: 9, scope: !5193)
!5206 = !DILocation(line: 2089, column: 38, scope: !5193)
!5207 = !DILocation(line: 2221, column: 31, scope: !4510, inlinedAt: !5200)
!5208 = !DILocation(line: 2089, column: 18, scope: !5193)
!5209 = !DILocation(line: 2089, column: 44, scope: !5193)
!5210 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, void>", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_", scope: !2024, file: !174, line: 2122, type: !5211, isLocal: false, isDefinition: true, scopeLine: 2123, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5213, declaration: !5215, variables: !199)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{null, !2043, !4458}
!5213 = !{!5214, !3462}
!5214 = !DITemplateTypeParameter(name: "_Up", type: !2027)
!5215 = !DISubprogram(name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, void>", scope: !2024, file: !174, line: 2122, type: !5211, isLocal: false, isDefinition: false, scopeLine: 2122, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5213)
!5216 = !DILocation(line: 2219, column: 47, scope: !4455, inlinedAt: !5217)
!5217 = distinct !DILocation(line: 2123, column: 22, scope: !5210)
!5218 = !DILocalVariable(name: "this", arg: 1, scope: !5210, type: !5189, flags: DIFlagArtificial | DIFlagObjectPointer)
!5219 = !DILocation(line: 0, scope: !5210)
!5220 = !DILocalVariable(name: "__u", arg: 2, scope: !5210, file: !174, line: 2122, type: !4458)
!5221 = !DILocation(line: 2122, column: 32, scope: !5210)
!5222 = !DILocation(line: 2123, column: 47, scope: !5210)
!5223 = !DILocation(line: 2123, column: 42, scope: !5210)
!5224 = !DILocation(line: 2221, column: 31, scope: !4455, inlinedAt: !5217)
!5225 = !DILocation(line: 2123, column: 48, scope: !5210)
!5226 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_", scope: !4180, file: !174, line: 2088, type: !5227, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !5229, declaration: !5231, variables: !199)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{null, !4186, !4191}
!5229 = !{!5230, !3462}
!5230 = !DITemplateTypeParameter(name: "_Up", type: !4191)
!5231 = !DISubprogram(name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *&, void>", scope: !4180, file: !174, line: 2088, type: !5227, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false, templateParams: !5229)
!5232 = !DILocation(line: 2219, column: 47, scope: !4391, inlinedAt: !5233)
!5233 = distinct !DILocation(line: 2089, column: 18, scope: !5226)
!5234 = !DILocalVariable(name: "this", arg: 1, scope: !5226, type: !5235, flags: DIFlagArtificial | DIFlagObjectPointer)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!5236 = !DILocation(line: 0, scope: !5226)
!5237 = !DILocalVariable(name: "__u", arg: 2, scope: !5226, file: !174, line: 2088, type: !4191)
!5238 = !DILocation(line: 2088, column: 32, scope: !5226)
!5239 = !DILocation(line: 2089, column: 9, scope: !5226)
!5240 = !DILocation(line: 2089, column: 38, scope: !5226)
!5241 = !DILocation(line: 2221, column: 31, scope: !4391, inlinedAt: !5233)
!5242 = !DILocation(line: 2089, column: 18, scope: !5226)
!5243 = !DILocation(line: 2089, column: 44, scope: !5226)
!5244 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !5245, file: !1620, line: 194, type: !5275, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5274, variables: !199)
!5245 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !8, file: !1620, line: 138, size: 64, elements: !5246, templateParams: !2038, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!5246 = !{!5247, !5252, !5256, !5261, !5265, !5266, !5267, !5272, !5273, !5274}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !5245, file: !1620, line: 140, baseType: !5248, size: 64)
!5248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !8, file: !1648, line: 75, baseType: !5249)
!5249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !5250, line: 30, baseType: !5251)
!5250 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mutex")
!5251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !1652, line: 112, baseType: !79)
!5252 = !DISubprogram(name: "__thread_specific_ptr", scope: !5245, file: !1620, line: 145, type: !5253, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{null, !5255}
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5256 = !DISubprogram(name: "__thread_specific_ptr", scope: !5245, file: !1620, line: 148, type: !5257, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !5255, !5259}
!5259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5260, size: 64)
!5260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5245)
!5261 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !5245, file: !1620, line: 149, type: !5262, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!5264, !5255, !5259}
!5264 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5245, size: 64)
!5265 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !5245, file: !1620, line: 151, type: !2385, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false)
!5266 = !DISubprogram(name: "~__thread_specific_ptr", scope: !5245, file: !1620, line: 156, type: !5253, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5267 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !5245, file: !1620, line: 159, type: !5268, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!5270, !5271}
!5270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !5245, file: !1620, line: 154, baseType: !1618)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5272 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !5245, file: !1620, line: 161, type: !5268, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5273 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !5245, file: !1620, line: 163, type: !5268, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5274 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !5245, file: !1620, line: 164, type: !5275, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{null, !5255, !5270}
!5277 = !DILocalVariable(name: "__key", arg: 1, scope: !5278, file: !1648, line: 385, type: !5248)
!5278 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !8, file: !1648, line: 385, type: !5279, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !199)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!17, !5248, !63}
!5281 = !DILocation(line: 385, column: 39, scope: !5278, inlinedAt: !5282)
!5282 = distinct !DILocation(line: 198, column: 5, scope: !5244)
!5283 = !DILocalVariable(name: "__p", arg: 2, scope: !5278, file: !1648, line: 385, type: !63)
!5284 = !DILocation(line: 385, column: 52, scope: !5278, inlinedAt: !5282)
!5285 = !DILocalVariable(name: "this", arg: 1, scope: !5244, type: !5286, flags: DIFlagArtificial | DIFlagObjectPointer)
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5287 = !DILocation(line: 0, scope: !5244)
!5288 = !DILocalVariable(name: "__p", arg: 2, scope: !5244, file: !1620, line: 164, type: !5270)
!5289 = !DILocation(line: 164, column: 30, scope: !5244)
!5290 = !DILocation(line: 198, column: 22, scope: !5244)
!5291 = !DILocation(line: 198, column: 30, scope: !5244)
!5292 = !DILocation(line: 387, column: 32, scope: !5278, inlinedAt: !5282)
!5293 = !DILocation(line: 387, column: 39, scope: !5278, inlinedAt: !5282)
!5294 = !DILocation(line: 387, column: 12, scope: !5278, inlinedAt: !5282)
!5295 = !DILocation(line: 199, column: 1, scope: !5244)
!5296 = distinct !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4180, file: !174, line: 2102, type: !4193, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4192, variables: !199)
!5297 = !DILocalVariable(name: "this", arg: 1, scope: !5296, type: !5298, flags: DIFlagArtificial | DIFlagObjectPointer)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!5299 = !DILocation(line: 0, scope: !5296)
!5300 = !DILocation(line: 2102, column: 52, scope: !5296)
!5301 = !DILocation(line: 2102, column: 45, scope: !5296)
!5302 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !4180, file: !174, line: 2101, type: !4188, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4187, variables: !199)
!5303 = !DILocalVariable(name: "this", arg: 1, scope: !5302, type: !5235, flags: DIFlagArtificial | DIFlagObjectPointer)
!5304 = !DILocation(line: 0, scope: !5302)
!5305 = !DILocation(line: 2101, column: 40, scope: !5302)
!5306 = !DILocation(line: 2101, column: 33, scope: !5302)
!5307 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !4203, file: !174, line: 2136, type: !4211, isLocal: false, isDefinition: true, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !4210, variables: !199)
!5308 = !DILocalVariable(name: "this", arg: 1, scope: !5307, type: !5309, flags: DIFlagArtificial | DIFlagObjectPointer)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!5310 = !DILocation(line: 0, scope: !5307)
!5311 = !DILocation(line: 2136, column: 40, scope: !5307)
!5312 = !DILocation(line: 2136, column: 33, scope: !5307)
!5313 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !1598, file: !1599, line: 474, type: !5314, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5316, variables: !199)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{null, !2253}
!5316 = !DISubprogram(name: "~tuple", scope: !1598, type: !5314, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!5317 = !DILocalVariable(name: "this", arg: 1, scope: !5313, type: !1597, flags: DIFlagArtificial | DIFlagObjectPointer)
!5318 = !DILocation(line: 0, scope: !5313)
!5319 = !DILocation(line: 474, column: 28, scope: !5313)
!5320 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !1598, file: !1599, line: 474, type: !5314, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5316, variables: !199)
!5321 = !DILocalVariable(name: "this", arg: 1, scope: !5320, type: !1597, flags: DIFlagArtificial | DIFlagObjectPointer)
!5322 = !DILocation(line: 0, scope: !5320)
!5323 = !DILocation(line: 474, column: 28, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5320, file: !1599, line: 474, column: 28)
!5325 = !DILocation(line: 474, column: 28, scope: !5320)
!5326 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !1603, file: !1599, line: 369, type: !2214, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5327, variables: !199)
!5327 = !DISubprogram(name: "~__tuple_impl", scope: !1603, type: !2214, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!5328 = !DILocalVariable(name: "this", arg: 1, scope: !5326, type: !4594, flags: DIFlagArtificial | DIFlagObjectPointer)
!5329 = !DILocation(line: 0, scope: !5326)
!5330 = !DILocation(line: 369, column: 37, scope: !5326)
!5331 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !1603, file: !1599, line: 369, type: !2214, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5327, variables: !199)
!5332 = !DILocalVariable(name: "this", arg: 1, scope: !5331, type: !4594, flags: DIFlagArtificial | DIFlagObjectPointer)
!5333 = !DILocation(line: 0, scope: !5331)
!5334 = !DILocation(line: 369, column: 37, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5331, file: !1599, line: 369, column: 37)
!5336 = !DILocation(line: 369, column: 37, scope: !5331)
!5337 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !1606, file: !1599, line: 170, type: !2150, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !5338, variables: !199)
!5338 = !DISubprogram(name: "~__tuple_leaf", scope: !1606, type: !2150, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: false)
!5339 = !DILocation(line: 0, scope: !4115, inlinedAt: !5340)
!5340 = distinct !DILocation(line: 2585, column: 7, scope: !4119, inlinedAt: !5341)
!5341 = distinct !DILocation(line: 2539, column: 19, scope: !4123, inlinedAt: !5342)
!5342 = distinct !DILocation(line: 2539, column: 17, scope: !4126, inlinedAt: !5343)
!5343 = distinct !DILocation(line: 170, column: 7, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5337, file: !1599, line: 170, column: 7)
!5345 = !DILocation(line: 2267, column: 50, scope: !4115, inlinedAt: !5340)
!5346 = !DILocation(line: 0, scope: !4132, inlinedAt: !5347)
!5347 = distinct !DILocation(line: 2585, column: 14, scope: !4120, inlinedAt: !5341)
!5348 = !DILocation(line: 0, scope: !4137, inlinedAt: !5349)
!5349 = distinct !DILocation(line: 2583, column: 12, scope: !4121, inlinedAt: !5341)
!5350 = !DILocation(line: 0, scope: !4137, inlinedAt: !5351)
!5351 = distinct !DILocation(line: 2582, column: 28, scope: !4121, inlinedAt: !5341)
!5352 = !DILocation(line: 0, scope: !4121, inlinedAt: !5341)
!5353 = !DILocation(line: 2581, column: 22, scope: !4121, inlinedAt: !5341)
!5354 = !DILocation(line: 2582, column: 13, scope: !4121, inlinedAt: !5341)
!5355 = !DILocation(line: 0, scope: !4124, inlinedAt: !5342)
!5356 = !DILocation(line: 0, scope: !4126, inlinedAt: !5343)
!5357 = !DILocalVariable(name: "this", arg: 1, scope: !5337, type: !4570, flags: DIFlagArtificial | DIFlagObjectPointer)
!5358 = !DILocation(line: 0, scope: !5337)
!5359 = !DILocation(line: 170, column: 7, scope: !5344)
!5360 = !DILocation(line: 2582, column: 21, scope: !4121, inlinedAt: !5341)
!5361 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !5351)
!5362 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !5351)
!5363 = !DILocation(line: 2582, column: 28, scope: !4121, inlinedAt: !5341)
!5364 = !DILocation(line: 2583, column: 22, scope: !4121, inlinedAt: !5341)
!5365 = !DILocation(line: 2583, column: 5, scope: !4121, inlinedAt: !5341)
!5366 = !DILocation(line: 2213, column: 33, scope: !4137, inlinedAt: !5349)
!5367 = !DILocation(line: 2213, column: 40, scope: !4137, inlinedAt: !5349)
!5368 = !DILocation(line: 2583, column: 20, scope: !4121, inlinedAt: !5341)
!5369 = !DILocation(line: 2584, column: 9, scope: !4120, inlinedAt: !5341)
!5370 = !DILocation(line: 2584, column: 9, scope: !4121, inlinedAt: !5341)
!5371 = !DILocation(line: 2585, column: 7, scope: !4120, inlinedAt: !5341)
!5372 = !DILocation(line: 2223, column: 33, scope: !4132, inlinedAt: !5347)
!5373 = !DILocation(line: 2223, column: 40, scope: !4132, inlinedAt: !5347)
!5374 = !DILocation(line: 2585, column: 23, scope: !4120, inlinedAt: !5341)
!5375 = !DILocation(line: 2272, column: 12, scope: !4115, inlinedAt: !5340)
!5376 = !DILocation(line: 2272, column: 5, scope: !4115, inlinedAt: !5340)
!5377 = !DILocation(line: 2272, column: 5, scope: !4909, inlinedAt: !5340)
!5378 = !DILocation(line: 2272, column: 5, scope: !4911, inlinedAt: !5340)
!5379 = !DILocation(line: 170, column: 7, scope: !5337)
!5380 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_example.cpp", scope: !3, file: !3, type: !5381, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, unit: !2, variables: !199)
!5381 = !DISubroutineType(types: !199)
!5382 = !DILocation(line: 0, scope: !5380)
