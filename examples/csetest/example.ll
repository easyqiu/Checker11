; ModuleID = 'example.bc'
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
%"class.std::__1::__thread_id" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%"class.std::__1::__vector_base_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.16" = type { i8 }
%"class.std::__1::allocator.17" = type { i8 }
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
%"class.std::__1::__compressed_pair.19" = type { %"struct.std::__1::__compressed_pair_elem.20" }
%"struct.std::__1::__compressed_pair_elem.20" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.19" }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.22" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.21, [23 x i8] }
%union.anon.21 = type { i8 }
%"class.std::__1::allocator.23" = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::__has_select_on_container_copy_construction" = type { i8 }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::__1::__libcpp_refstring" = type { i8* }
%"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator" = type { i8 }
%"struct.std::__1::integral_constant.25" = type { i8 }
%"struct.std::__1::__has_destroy" = type { i8 }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__has_max_size" = type { i8 }
%"struct.std::__1::default_delete" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::__compressed_pair.26" = type { %"struct.std::__1::__compressed_pair_elem.27" }
%"struct.std::__1::__compressed_pair_elem.27" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.26" }
%"struct.std::__1::default_delete.34" = type { i8 }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.32" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.32" = type { void ()* }
%"class.std::__1::__compressed_pair.30" = type { %"struct.std::__1::__compressed_pair_elem.31" }
%"struct.std::__1::__compressed_pair_elem.31" = type { %"class.std::__1::tuple"* }
%"class.std::__1::unique_ptr.29" = type { %"class.std::__1::__compressed_pair.30" }
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_indices.36" = type { i8 }
%"struct.std::__1::__tuple_types.37" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.28" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.33" = type { i8 }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@a = global %"struct.std::__1::atomic" zeroinitializer, align 4
@b = global %"struct.std::__1::atomic" zeroinitializer, align 4
@c = global %"struct.std::__1::atomic" zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"r1=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"r2=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"r3=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"r4=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Main thread: creating 2 threads\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Main thread is finished\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Begin\0A\00", align 1
@modelChecker = external global %"class.checker::ModelChecker"*, align 8
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"Generate a model checker: \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.12 = private unnamed_addr constant [68 x i8] c"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size\00", align 1
@_ZTISt12length_error = external constant i8*
@_ZTVSt12length_error = external unnamed_addr constant { [5 x i8*] }
@.str.13 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: noinline ssp uwtable
define void @_Z1rv() #0 {
entry:
  %this.addr.i.i53 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__m.addr.i.i54 = alloca i32, align 4
  %atomic-temp.i.i55 = alloca i32, align 4
  %__o.addr.i56 = alloca %"struct.std::__1::atomic"*, align 8
  %__m.addr.i57 = alloca i32, align 4
  %this.addr.i.i42 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__m.addr.i.i43 = alloca i32, align 4
  %atomic-temp.i.i44 = alloca i32, align 4
  %__o.addr.i45 = alloca %"struct.std::__1::atomic"*, align 8
  %__m.addr.i46 = alloca i32, align 4
  %this.addr.i.i29 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i.i30 = alloca i32, align 4
  %__m.addr.i.i31 = alloca i32, align 4
  %.atomictmp.i.i32 = alloca i32, align 4
  %__o.addr.i33 = alloca %"struct.std::__1::atomic"*, align 8
  %__d.addr.i34 = alloca i32, align 4
  %__m.addr.i35 = alloca i32, align 4
  %this.addr.i.i21 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i.i = alloca i32, align 4
  %__m.addr.i.i22 = alloca i32, align 4
  %.atomictmp.i.i = alloca i32, align 4
  %__o.addr.i23 = alloca %"struct.std::__1::atomic"*, align 8
  %__d.addr.i = alloca i32, align 4
  %__m.addr.i24 = alloca i32, align 4
  %this.addr.i.i10 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__m.addr.i.i11 = alloca i32, align 4
  %atomic-temp.i.i12 = alloca i32, align 4
  %__o.addr.i13 = alloca %"struct.std::__1::atomic"*, align 8
  %__m.addr.i14 = alloca i32, align 4
  %this.addr.i.i = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__m.addr.i.i = alloca i32, align 4
  %atomic-temp.i.i = alloca i32, align 4
  %__o.addr.i = alloca %"struct.std::__1::atomic"*, align 8
  %__m.addr.i = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r3 = alloca i32, align 4
  call void @checker_thread_begin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %"struct.std::__1::atomic"* @a, %"struct.std::__1::atomic"** %__o.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %0 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i, align 8
  %1 = bitcast %"struct.std::__1::atomic"* %0 to %"struct.std::__1::__atomic_base.0"*
  %2 = load i32, i32* %__m.addr.i, align 4
  store %"struct.std::__1::__atomic_base.0"* %1, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i, align 8
  store i32 %2, i32* %__m.addr.i.i, align 4
  %this1.i.i = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i, align 8
  %__a_.i.i = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i, i32 0, i32 0
  %3 = load i32, i32* %__m.addr.i.i, align 4
  switch i32 %3, label %monotonic.i.i [
    i32 1, label %acquire.i.i
    i32 2, label %acquire.i.i
    i32 5, label %seqcst.i.i
  ]

monotonic.i.i:                                    ; preds = %entry
  %4 = load atomic i32, i32* %__a_.i.i monotonic, align 4
  store i32 %4, i32* %atomic-temp.i.i, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit

acquire.i.i:                                      ; preds = %entry, %entry
  %5 = load atomic i32, i32* %__a_.i.i acquire, align 4
  store i32 %5, i32* %atomic-temp.i.i, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit

seqcst.i.i:                                       ; preds = %entry
  %6 = load atomic i32, i32* %__a_.i.i seq_cst, align 4
  store i32 %6, i32* %atomic-temp.i.i, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit

_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit: ; preds = %monotonic.i.i, %acquire.i.i, %seqcst.i.i
  %7 = load i32, i32* %atomic-temp.i.i, align 4
  store i32 %7, i32* %r1, align 4
  store %"struct.std::__1::atomic"* @a, %"struct.std::__1::atomic"** %__o.addr.i56, align 8
  store i32 0, i32* %__m.addr.i57, align 4
  %8 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i56, align 8
  %9 = bitcast %"struct.std::__1::atomic"* %8 to %"struct.std::__1::__atomic_base.0"*
  %10 = load i32, i32* %__m.addr.i57, align 4
  store %"struct.std::__1::__atomic_base.0"* %9, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i53, align 8
  store i32 %10, i32* %__m.addr.i.i54, align 4
  %this1.i.i58 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i53, align 8
  %__a_.i.i59 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i58, i32 0, i32 0
  %11 = load i32, i32* %__m.addr.i.i54, align 4
  switch i32 %11, label %monotonic.i.i60 [
    i32 1, label %acquire.i.i61
    i32 2, label %acquire.i.i61
    i32 5, label %seqcst.i.i62
  ]

monotonic.i.i60:                                  ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit
  %12 = load atomic i32, i32* %__a_.i.i59 monotonic, align 4
  store i32 %12, i32* %atomic-temp.i.i55, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit63

acquire.i.i61:                                    ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit, %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit
  %13 = load atomic i32, i32* %__a_.i.i59 acquire, align 4
  store i32 %13, i32* %atomic-temp.i.i55, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit63

seqcst.i.i62:                                     ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit
  %14 = load atomic i32, i32* %__a_.i.i59 seq_cst, align 4
  store i32 %14, i32* %atomic-temp.i.i55, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit63

_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit63: ; preds = %monotonic.i.i60, %acquire.i.i61, %seqcst.i.i62
  %15 = load i32, i32* %atomic-temp.i.i55, align 4
  store i32 %15, i32* %r2, align 4
  store i32 0, i32* %r3, align 4
  %16 = load i32, i32* %r1, align 4
  %17 = load i32, i32* %r2, align 4
  %cmp = icmp eq i32 %16, %17
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit63
  store %"struct.std::__1::atomic"* @c, %"struct.std::__1::atomic"** %__o.addr.i45, align 8
  store i32 0, i32* %__m.addr.i46, align 4
  %18 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i45, align 8
  %19 = bitcast %"struct.std::__1::atomic"* %18 to %"struct.std::__1::__atomic_base.0"*
  %20 = load i32, i32* %__m.addr.i46, align 4
  store %"struct.std::__1::__atomic_base.0"* %19, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i42, align 8
  store i32 %20, i32* %__m.addr.i.i43, align 4
  %this1.i.i47 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i42, align 8
  %__a_.i.i48 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i47, i32 0, i32 0
  %21 = load i32, i32* %__m.addr.i.i43, align 4
  switch i32 %21, label %monotonic.i.i49 [
    i32 1, label %acquire.i.i50
    i32 2, label %acquire.i.i50
    i32 5, label %seqcst.i.i51
  ]

monotonic.i.i49:                                  ; preds = %if.then
  %22 = load atomic i32, i32* %__a_.i.i48 monotonic, align 4
  store i32 %22, i32* %atomic-temp.i.i44, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit52

acquire.i.i50:                                    ; preds = %if.then, %if.then
  %23 = load atomic i32, i32* %__a_.i.i48 acquire, align 4
  store i32 %23, i32* %atomic-temp.i.i44, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit52

seqcst.i.i51:                                     ; preds = %if.then
  %24 = load atomic i32, i32* %__a_.i.i48 seq_cst, align 4
  store i32 %24, i32* %atomic-temp.i.i44, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit52

_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit52: ; preds = %monotonic.i.i49, %acquire.i.i50, %seqcst.i.i51
  %25 = load i32, i32* %atomic-temp.i.i44, align 4
  store i32 %25, i32* %r3, align 4
  store %"struct.std::__1::atomic"* @b, %"struct.std::__1::atomic"** %__o.addr.i33, align 8
  store i32 2, i32* %__d.addr.i34, align 4
  store i32 0, i32* %__m.addr.i35, align 4
  %26 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i33, align 8
  %27 = bitcast %"struct.std::__1::atomic"* %26 to %"struct.std::__1::__atomic_base.0"*
  %28 = load i32, i32* %__d.addr.i34, align 4
  %29 = load i32, i32* %__m.addr.i35, align 4
  store %"struct.std::__1::__atomic_base.0"* %27, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i29, align 8
  store i32 %28, i32* %__d.addr.i.i30, align 4
  store i32 %29, i32* %__m.addr.i.i31, align 4
  %this1.i.i36 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i29, align 8
  %__a_.i.i37 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i36, i32 0, i32 0
  %30 = load i32, i32* %__m.addr.i.i31, align 4
  %31 = load i32, i32* %__d.addr.i.i30, align 4
  store i32 %31, i32* %.atomictmp.i.i32, align 4
  switch i32 %30, label %monotonic.i.i38 [
    i32 3, label %release.i.i39
    i32 5, label %seqcst.i.i40
  ]

monotonic.i.i38:                                  ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit52
  %32 = load i32, i32* %.atomictmp.i.i32, align 4
  store atomic i32 %32, i32* %__a_.i.i37 monotonic, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit41

release.i.i39:                                    ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit52
  %33 = load i32, i32* %.atomictmp.i.i32, align 4
  store atomic i32 %33, i32* %__a_.i.i37 release, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit41

seqcst.i.i40:                                     ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit52
  %34 = load i32, i32* %.atomictmp.i.i32, align 4
  store atomic i32 %34, i32* %__a_.i.i37 seq_cst, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit41

_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit41: ; preds = %monotonic.i.i38, %release.i.i39, %seqcst.i.i40
  %35 = load i32, i32* %r1, align 4
  %cmp3 = icmp eq i32 %35, 1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit41
  store %"struct.std::__1::atomic"* @b, %"struct.std::__1::atomic"** %__o.addr.i23, align 8
  store i32 2, i32* %__d.addr.i, align 4
  store i32 0, i32* %__m.addr.i24, align 4
  %36 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i23, align 8
  %37 = bitcast %"struct.std::__1::atomic"* %36 to %"struct.std::__1::__atomic_base.0"*
  %38 = load i32, i32* %__d.addr.i, align 4
  %39 = load i32, i32* %__m.addr.i24, align 4
  store %"struct.std::__1::__atomic_base.0"* %37, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i21, align 8
  store i32 %38, i32* %__d.addr.i.i, align 4
  store i32 %39, i32* %__m.addr.i.i22, align 4
  %this1.i.i25 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i21, align 8
  %__a_.i.i26 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i25, i32 0, i32 0
  %40 = load i32, i32* %__m.addr.i.i22, align 4
  %41 = load i32, i32* %__d.addr.i.i, align 4
  store i32 %41, i32* %.atomictmp.i.i, align 4
  switch i32 %40, label %monotonic.i.i27 [
    i32 3, label %release.i.i
    i32 5, label %seqcst.i.i28
  ]

monotonic.i.i27:                                  ; preds = %if.then4
  %42 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %42, i32* %__a_.i.i26 monotonic, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit

release.i.i:                                      ; preds = %if.then4
  %43 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %43, i32* %__a_.i.i26 release, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit

seqcst.i.i28:                                     ; preds = %if.then4
  %44 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %44, i32* %__a_.i.i26 seq_cst, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit

_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit: ; preds = %monotonic.i.i27, %release.i.i, %seqcst.i.i28
  store %"struct.std::__1::atomic"* @b, %"struct.std::__1::atomic"** %__o.addr.i13, align 8
  store i32 0, i32* %__m.addr.i14, align 4
  %45 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i13, align 8
  %46 = bitcast %"struct.std::__1::atomic"* %45 to %"struct.std::__1::__atomic_base.0"*
  %47 = load i32, i32* %__m.addr.i14, align 4
  store %"struct.std::__1::__atomic_base.0"* %46, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i10, align 8
  store i32 %47, i32* %__m.addr.i.i11, align 4
  %this1.i.i15 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i10, align 8
  %__a_.i.i16 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i15, i32 0, i32 0
  %48 = load i32, i32* %__m.addr.i.i11, align 4
  switch i32 %48, label %monotonic.i.i17 [
    i32 1, label %acquire.i.i18
    i32 2, label %acquire.i.i18
    i32 5, label %seqcst.i.i19
  ]

monotonic.i.i17:                                  ; preds = %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit
  %49 = load atomic i32, i32* %__a_.i.i16 monotonic, align 4
  store i32 %49, i32* %atomic-temp.i.i12, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit20

acquire.i.i18:                                    ; preds = %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit, %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit
  %50 = load atomic i32, i32* %__a_.i.i16 acquire, align 4
  store i32 %50, i32* %atomic-temp.i.i12, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit20

seqcst.i.i19:                                     ; preds = %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit
  %51 = load atomic i32, i32* %__a_.i.i16 seq_cst, align 4
  store i32 %51, i32* %atomic-temp.i.i12, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit20

_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit20: ; preds = %monotonic.i.i17, %acquire.i.i18, %seqcst.i.i19
  %52 = load i32, i32* %atomic-temp.i.i12, align 4
  store i32 %52, i32* %r2, align 4
  store i32 5, i32* %r3, align 4
  br label %if.end

if.end:                                           ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit20, %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit41
  br label %if.end6

if.end6:                                          ; preds = %if.end, %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit63
  %53 = load i32, i32* %r1, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %53)
  %54 = load i32, i32* %r2, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %54)
  %55 = load i32, i32* %r3, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %55)
  call void @checker_thread_end()
  ret void
}

declare void @checker_thread_begin(i8*) #1

declare i32 @printf(i8*, ...) #1

declare void @checker_thread_end() #1

; Function Attrs: noinline ssp uwtable
define void @_Z1sv() #0 {
entry:
  %this.addr.i.i2 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i.i = alloca i32, align 4
  %__m.addr.i.i3 = alloca i32, align 4
  %.atomictmp.i.i = alloca i32, align 4
  %__o.addr.i4 = alloca %"struct.std::__1::atomic"*, align 8
  %__d.addr.i = alloca i32, align 4
  %__m.addr.i5 = alloca i32, align 4
  %this.addr.i.i = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__m.addr.i.i = alloca i32, align 4
  %atomic-temp.i.i = alloca i32, align 4
  %__o.addr.i = alloca %"struct.std::__1::atomic"*, align 8
  %__m.addr.i = alloca i32, align 4
  %r4 = alloca i32, align 4
  call void @checker_thread_begin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %"struct.std::__1::atomic"* @b, %"struct.std::__1::atomic"** %__o.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %0 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i, align 8
  %1 = bitcast %"struct.std::__1::atomic"* %0 to %"struct.std::__1::__atomic_base.0"*
  %2 = load i32, i32* %__m.addr.i, align 4
  store %"struct.std::__1::__atomic_base.0"* %1, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i, align 8
  store i32 %2, i32* %__m.addr.i.i, align 4
  %this1.i.i = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i, align 8
  %__a_.i.i = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i, i32 0, i32 0
  %3 = load i32, i32* %__m.addr.i.i, align 4
  switch i32 %3, label %monotonic.i.i [
    i32 1, label %acquire.i.i
    i32 2, label %acquire.i.i
    i32 5, label %seqcst.i.i
  ]

monotonic.i.i:                                    ; preds = %entry
  %4 = load atomic i32, i32* %__a_.i.i monotonic, align 4
  store i32 %4, i32* %atomic-temp.i.i, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit

acquire.i.i:                                      ; preds = %entry, %entry
  %5 = load atomic i32, i32* %__a_.i.i acquire, align 4
  store i32 %5, i32* %atomic-temp.i.i, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit

seqcst.i.i:                                       ; preds = %entry
  %6 = load atomic i32, i32* %__a_.i.i seq_cst, align 4
  store i32 %6, i32* %atomic-temp.i.i, align 4
  br label %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit

_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit: ; preds = %monotonic.i.i, %acquire.i.i, %seqcst.i.i
  %7 = load i32, i32* %atomic-temp.i.i, align 4
  store i32 %7, i32* %r4, align 4
  %8 = load i32, i32* %r4, align 4
  store %"struct.std::__1::atomic"* @a, %"struct.std::__1::atomic"** %__o.addr.i4, align 8
  store i32 %8, i32* %__d.addr.i, align 4
  store i32 0, i32* %__m.addr.i5, align 4
  %9 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i4, align 8
  %10 = bitcast %"struct.std::__1::atomic"* %9 to %"struct.std::__1::__atomic_base.0"*
  %11 = load i32, i32* %__d.addr.i, align 4
  %12 = load i32, i32* %__m.addr.i5, align 4
  store %"struct.std::__1::__atomic_base.0"* %10, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i2, align 8
  store i32 %11, i32* %__d.addr.i.i, align 4
  store i32 %12, i32* %__m.addr.i.i3, align 4
  %this1.i.i6 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i2, align 8
  %__a_.i.i7 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i6, i32 0, i32 0
  %13 = load i32, i32* %__m.addr.i.i3, align 4
  %14 = load i32, i32* %__d.addr.i.i, align 4
  store i32 %14, i32* %.atomictmp.i.i, align 4
  switch i32 %13, label %monotonic.i.i8 [
    i32 3, label %release.i.i
    i32 5, label %seqcst.i.i9
  ]

monotonic.i.i8:                                   ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit
  %15 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %15, i32* %__a_.i.i7 monotonic, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit

release.i.i:                                      ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit
  %16 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %16, i32* %__a_.i.i7 release, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit

seqcst.i.i9:                                      ; preds = %_ZNSt3__120atomic_load_explicitIiEET_PKNS_6atomicIS1_EENS_12memory_orderE.exit
  %17 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %17, i32* %__a_.i.i7 seq_cst, align 4
  br label %_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit

_ZNSt3__121atomic_store_explicitIiEEvPNS_6atomicIT_EES2_NS_12memory_orderE.exit: ; preds = %monotonic.i.i8, %release.i.i, %seqcst.i.i9
  %18 = load i32, i32* %r4, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %18)
  call void @checker_thread_end()
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @_Z4testPi(i32* %yy) #2 {
entry:
  %yy.addr = alloca i32*, align 8
  store i32* %yy, i32** %yy.addr, align 8
  %0 = load i32*, i32** %yy.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2
  store i32 1000000, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: noinline ssp uwtable
define i32 @_Z9user_mainiPPc(i32 %argc, i8** %argv) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i.i101 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i.i102 = alloca i32, align 4
  %__m.addr.i.i103 = alloca i32, align 4
  %.atomictmp.i.i104 = alloca i32, align 4
  %this.addr.i105 = alloca %"struct.std::__1::atomic"*, align 8
  %__d.addr.i106 = alloca i32, align 4
  %this.addr.i.i88 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i.i89 = alloca i32, align 4
  %__m.addr.i.i90 = alloca i32, align 4
  %.atomictmp.i.i91 = alloca i32, align 4
  %this.addr.i92 = alloca %"struct.std::__1::atomic"*, align 8
  %__d.addr.i93 = alloca i32, align 4
  %this.addr.i.i75 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i.i76 = alloca i32, align 4
  %__m.addr.i.i77 = alloca i32, align 4
  %.atomictmp.i.i78 = alloca i32, align 4
  %this.addr.i79 = alloca %"struct.std::__1::atomic"*, align 8
  %__d.addr.i80 = alloca i32, align 4
  %this.addr.i.i.i62 = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i.i63 = alloca %struct._opaque_pthread_t*, align 8
  %this.addr.i.i64 = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i65 = alloca %struct._opaque_pthread_t*, align 8
  %__t.addr.i.i66 = alloca %struct._opaque_pthread_t**, align 8
  %retval.i67 = alloca %"class.std::__1::__thread_id", align 8
  %this.addr.i68 = alloca %"class.std::__1::thread"*, align 8
  %this.addr.i.i.i49 = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i.i50 = alloca %struct._opaque_pthread_t*, align 8
  %this.addr.i.i51 = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i52 = alloca %struct._opaque_pthread_t*, align 8
  %__t.addr.i.i53 = alloca %struct._opaque_pthread_t**, align 8
  %retval.i54 = alloca %"class.std::__1::__thread_id", align 8
  %this.addr.i55 = alloca %"class.std::__1::thread"*, align 8
  %this.addr.i.i.i36 = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i.i37 = alloca %struct._opaque_pthread_t*, align 8
  %this.addr.i.i38 = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i39 = alloca %struct._opaque_pthread_t*, align 8
  %__t.addr.i.i40 = alloca %struct._opaque_pthread_t**, align 8
  %retval.i41 = alloca %"class.std::__1::__thread_id", align 8
  %this.addr.i42 = alloca %"class.std::__1::thread"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i.i = alloca %struct._opaque_pthread_t*, align 8
  %this.addr.i.i32 = alloca %"class.std::__1::__thread_id"*, align 8
  %__id.addr.i.i = alloca %struct._opaque_pthread_t*, align 8
  %__t.addr.i.i = alloca %struct._opaque_pthread_t**, align 8
  %retval.i = alloca %"class.std::__1::__thread_id", align 8
  %this.addr.i33 = alloca %"class.std::__1::thread"*, align 8
  %this.addr.i.i = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i.i = alloca i32, align 4
  %__m.addr.i.i = alloca i32, align 4
  %.atomictmp.i.i = alloca i32, align 4
  %this.addr.i = alloca %"struct.std::__1::atomic"*, align 8
  %__d.addr.i = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %xx = alloca i32*, align 8
  %t1 = alloca %"class.std::__1::thread", align 8
  %t2 = alloca %"class.std::__1::thread", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"class.std::__1::__thread_id", align 8
  %agg.tmp10 = alloca %"class.std::__1::__thread_id", align 8
  %agg.tmp15 = alloca %"class.std::__1::__thread_id", align 8
  %agg.tmp20 = alloca %"class.std::__1::__thread_id", align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32*, i32** %xx, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 200000, i32* %arrayidx, align 4
  %1 = load i32*, i32** %xx, align 8
  call void @_Z4testPi(i32* %1)
  call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  %2 = load i32*, i32** %xx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  store %"struct.std::__1::atomic"* @a, %"struct.std::__1::atomic"** %this.addr.i, align 8
  store i32 %3, i32* %__d.addr.i, align 4
  %this1.i = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %this.addr.i, align 8
  %4 = bitcast %"struct.std::__1::atomic"* %this1.i to %"struct.std::__1::__atomic_base"*
  %5 = bitcast %"struct.std::__1::__atomic_base"* %4 to %"struct.std::__1::__atomic_base.0"*
  %6 = load i32, i32* %__d.addr.i, align 4
  store %"struct.std::__1::__atomic_base.0"* %5, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i, align 8
  store i32 %6, i32* %__d.addr.i.i, align 4
  store i32 5, i32* %__m.addr.i.i, align 4
  %this1.i.i = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i, align 8
  %__a_.i.i = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i, i32 0, i32 0
  %7 = load i32, i32* %__m.addr.i.i, align 4
  %8 = load i32, i32* %__d.addr.i.i, align 4
  store i32 %8, i32* %.atomictmp.i.i, align 4
  switch i32 %7, label %monotonic.i.i [
    i32 3, label %release.i.i
    i32 5, label %seqcst.i.i
  ]

monotonic.i.i:                                    ; preds = %entry
  %9 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %9, i32* %__a_.i.i monotonic, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit

release.i.i:                                      ; preds = %entry
  %10 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %10, i32* %__a_.i.i release, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit

seqcst.i.i:                                       ; preds = %entry
  %11 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %11, i32* %__a_.i.i seq_cst, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit

_ZNSt3__16atomicIiEaSEi.exit:                     ; preds = %monotonic.i.i, %release.i.i, %seqcst.i.i
  %12 = load i32, i32* %__d.addr.i, align 4
  store %"struct.std::__1::atomic"* @a, %"struct.std::__1::atomic"** %this.addr.i79, align 8
  store i32 0, i32* %__d.addr.i80, align 4
  %this1.i81 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %this.addr.i79, align 8
  %13 = bitcast %"struct.std::__1::atomic"* %this1.i81 to %"struct.std::__1::__atomic_base"*
  %14 = bitcast %"struct.std::__1::__atomic_base"* %13 to %"struct.std::__1::__atomic_base.0"*
  %15 = load i32, i32* %__d.addr.i80, align 4
  store %"struct.std::__1::__atomic_base.0"* %14, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i75, align 8
  store i32 %15, i32* %__d.addr.i.i76, align 4
  store i32 5, i32* %__m.addr.i.i77, align 4
  %this1.i.i82 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i75, align 8
  %__a_.i.i83 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i82, i32 0, i32 0
  %16 = load i32, i32* %__m.addr.i.i77, align 4
  %17 = load i32, i32* %__d.addr.i.i76, align 4
  store i32 %17, i32* %.atomictmp.i.i78, align 4
  switch i32 %16, label %monotonic.i.i84 [
    i32 3, label %release.i.i85
    i32 5, label %seqcst.i.i86
  ]

monotonic.i.i84:                                  ; preds = %_ZNSt3__16atomicIiEaSEi.exit
  %18 = load i32, i32* %.atomictmp.i.i78, align 4
  store atomic i32 %18, i32* %__a_.i.i83 monotonic, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit87

release.i.i85:                                    ; preds = %_ZNSt3__16atomicIiEaSEi.exit
  %19 = load i32, i32* %.atomictmp.i.i78, align 4
  store atomic i32 %19, i32* %__a_.i.i83 release, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit87

seqcst.i.i86:                                     ; preds = %_ZNSt3__16atomicIiEaSEi.exit
  %20 = load i32, i32* %.atomictmp.i.i78, align 4
  store atomic i32 %20, i32* %__a_.i.i83 seq_cst, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit87

_ZNSt3__16atomicIiEaSEi.exit87:                   ; preds = %monotonic.i.i84, %release.i.i85, %seqcst.i.i86
  %21 = load i32, i32* %__d.addr.i80, align 4
  store %"struct.std::__1::atomic"* @b, %"struct.std::__1::atomic"** %this.addr.i92, align 8
  store i32 1, i32* %__d.addr.i93, align 4
  %this1.i94 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %this.addr.i92, align 8
  %22 = bitcast %"struct.std::__1::atomic"* %this1.i94 to %"struct.std::__1::__atomic_base"*
  %23 = bitcast %"struct.std::__1::__atomic_base"* %22 to %"struct.std::__1::__atomic_base.0"*
  %24 = load i32, i32* %__d.addr.i93, align 4
  store %"struct.std::__1::__atomic_base.0"* %23, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i88, align 8
  store i32 %24, i32* %__d.addr.i.i89, align 4
  store i32 5, i32* %__m.addr.i.i90, align 4
  %this1.i.i95 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i88, align 8
  %__a_.i.i96 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i95, i32 0, i32 0
  %25 = load i32, i32* %__m.addr.i.i90, align 4
  %26 = load i32, i32* %__d.addr.i.i89, align 4
  store i32 %26, i32* %.atomictmp.i.i91, align 4
  switch i32 %25, label %monotonic.i.i97 [
    i32 3, label %release.i.i98
    i32 5, label %seqcst.i.i99
  ]

monotonic.i.i97:                                  ; preds = %_ZNSt3__16atomicIiEaSEi.exit87
  %27 = load i32, i32* %.atomictmp.i.i91, align 4
  store atomic i32 %27, i32* %__a_.i.i96 monotonic, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit100

release.i.i98:                                    ; preds = %_ZNSt3__16atomicIiEaSEi.exit87
  %28 = load i32, i32* %.atomictmp.i.i91, align 4
  store atomic i32 %28, i32* %__a_.i.i96 release, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit100

seqcst.i.i99:                                     ; preds = %_ZNSt3__16atomicIiEaSEi.exit87
  %29 = load i32, i32* %.atomictmp.i.i91, align 4
  store atomic i32 %29, i32* %__a_.i.i96 seq_cst, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit100

_ZNSt3__16atomicIiEaSEi.exit100:                  ; preds = %monotonic.i.i97, %release.i.i98, %seqcst.i.i99
  %30 = load i32, i32* %__d.addr.i93, align 4
  store %"struct.std::__1::atomic"* @c, %"struct.std::__1::atomic"** %this.addr.i105, align 8
  store i32 0, i32* %__d.addr.i106, align 4
  %this1.i107 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %this.addr.i105, align 8
  %31 = bitcast %"struct.std::__1::atomic"* %this1.i107 to %"struct.std::__1::__atomic_base"*
  %32 = bitcast %"struct.std::__1::__atomic_base"* %31 to %"struct.std::__1::__atomic_base.0"*
  %33 = load i32, i32* %__d.addr.i106, align 4
  store %"struct.std::__1::__atomic_base.0"* %32, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i101, align 8
  store i32 %33, i32* %__d.addr.i.i102, align 4
  store i32 5, i32* %__m.addr.i.i103, align 4
  %this1.i.i108 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i.i101, align 8
  %__a_.i.i109 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i.i108, i32 0, i32 0
  %34 = load i32, i32* %__m.addr.i.i103, align 4
  %35 = load i32, i32* %__d.addr.i.i102, align 4
  store i32 %35, i32* %.atomictmp.i.i104, align 4
  switch i32 %34, label %monotonic.i.i110 [
    i32 3, label %release.i.i111
    i32 5, label %seqcst.i.i112
  ]

monotonic.i.i110:                                 ; preds = %_ZNSt3__16atomicIiEaSEi.exit100
  %36 = load i32, i32* %.atomictmp.i.i104, align 4
  store atomic i32 %36, i32* %__a_.i.i109 monotonic, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit113

release.i.i111:                                   ; preds = %_ZNSt3__16atomicIiEaSEi.exit100
  %37 = load i32, i32* %.atomictmp.i.i104, align 4
  store atomic i32 %37, i32* %__a_.i.i109 release, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit113

seqcst.i.i112:                                    ; preds = %_ZNSt3__16atomicIiEaSEi.exit100
  %38 = load i32, i32* %.atomictmp.i.i104, align 4
  store atomic i32 %38, i32* %__a_.i.i109 seq_cst, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit113

_ZNSt3__16atomicIiEaSEi.exit113:                  ; preds = %monotonic.i.i110, %release.i.i111, %seqcst.i.i112
  %39 = load i32, i32* %__d.addr.i106, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  call void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %t1, void ()* @_Z1rv)
  invoke void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %t2, void ()* @_Z1sv)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__16atomicIiEaSEi.exit113
  store %"class.std::__1::thread"* %t1, %"class.std::__1::thread"** %this.addr.i68, align 8
  %this1.i69 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr.i68, align 8
  %__t_.i70 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1.i69, i32 0, i32 0
  store %struct._opaque_pthread_t** %__t_.i70, %struct._opaque_pthread_t*** %__t.addr.i.i66, align 8
  %40 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %__t.addr.i.i66, align 8
  %41 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %40, align 8
  store %"class.std::__1::__thread_id"* %retval.i67, %"class.std::__1::__thread_id"** %this.addr.i.i64, align 8
  store %struct._opaque_pthread_t* %41, %struct._opaque_pthread_t** %__id.addr.i.i65, align 8
  %this1.i.i71 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i64, align 8
  %42 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i65, align 8
  store %"class.std::__1::__thread_id"* %this1.i.i71, %"class.std::__1::__thread_id"** %this.addr.i.i.i62, align 8
  store %struct._opaque_pthread_t* %42, %struct._opaque_pthread_t** %__id.addr.i.i.i63, align 8
  %this1.i.i.i72 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i.i62, align 8
  %__id_.i.i.i73 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %this1.i.i.i72, i32 0, i32 0
  %43 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i.i63, align 8
  store %struct._opaque_pthread_t* %43, %struct._opaque_pthread_t** %__id_.i.i.i73, align 8
  %coerce.dive.i74 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %retval.i67, i32 0, i32 0
  %44 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive.i74, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp, i32 0, i32 0
  store %struct._opaque_pthread_t* %44, %struct._opaque_pthread_t** %coerce.dive, align 8
  %coerce.dive7 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp, i32 0, i32 0
  %45 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive7, align 8
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %45)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont
  store %"class.std::__1::thread"* %t2, %"class.std::__1::thread"** %this.addr.i55, align 8
  %this1.i56 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr.i55, align 8
  %__t_.i57 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1.i56, i32 0, i32 0
  store %struct._opaque_pthread_t** %__t_.i57, %struct._opaque_pthread_t*** %__t.addr.i.i53, align 8
  %46 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %__t.addr.i.i53, align 8
  %47 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %46, align 8
  store %"class.std::__1::__thread_id"* %retval.i54, %"class.std::__1::__thread_id"** %this.addr.i.i51, align 8
  store %struct._opaque_pthread_t* %47, %struct._opaque_pthread_t** %__id.addr.i.i52, align 8
  %this1.i.i58 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i51, align 8
  %48 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i52, align 8
  store %"class.std::__1::__thread_id"* %this1.i.i58, %"class.std::__1::__thread_id"** %this.addr.i.i.i49, align 8
  store %struct._opaque_pthread_t* %48, %struct._opaque_pthread_t** %__id.addr.i.i.i50, align 8
  %this1.i.i.i59 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i.i49, align 8
  %__id_.i.i.i60 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %this1.i.i.i59, i32 0, i32 0
  %49 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i.i50, align 8
  store %struct._opaque_pthread_t* %49, %struct._opaque_pthread_t** %__id_.i.i.i60, align 8
  %coerce.dive.i61 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %retval.i54, i32 0, i32 0
  %50 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive.i61, align 8
  %coerce.dive12 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp10, i32 0, i32 0
  store %struct._opaque_pthread_t* %50, %struct._opaque_pthread_t** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp10, i32 0, i32 0
  %51 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive13, align 8
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %51)
          to label %invoke.cont14 unwind label %lpad8

invoke.cont14:                                    ; preds = %invoke.cont9
  store %"class.std::__1::thread"* %t1, %"class.std::__1::thread"** %this.addr.i42, align 8
  %this1.i43 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr.i42, align 8
  %__t_.i44 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1.i43, i32 0, i32 0
  store %struct._opaque_pthread_t** %__t_.i44, %struct._opaque_pthread_t*** %__t.addr.i.i40, align 8
  %52 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %__t.addr.i.i40, align 8
  %53 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %52, align 8
  store %"class.std::__1::__thread_id"* %retval.i41, %"class.std::__1::__thread_id"** %this.addr.i.i38, align 8
  store %struct._opaque_pthread_t* %53, %struct._opaque_pthread_t** %__id.addr.i.i39, align 8
  %this1.i.i45 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i38, align 8
  %54 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i39, align 8
  store %"class.std::__1::__thread_id"* %this1.i.i45, %"class.std::__1::__thread_id"** %this.addr.i.i.i36, align 8
  store %struct._opaque_pthread_t* %54, %struct._opaque_pthread_t** %__id.addr.i.i.i37, align 8
  %this1.i.i.i46 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i.i36, align 8
  %__id_.i.i.i47 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %this1.i.i.i46, i32 0, i32 0
  %55 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i.i37, align 8
  store %struct._opaque_pthread_t* %55, %struct._opaque_pthread_t** %__id_.i.i.i47, align 8
  %coerce.dive.i48 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %retval.i41, i32 0, i32 0
  %56 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive.i48, align 8
  %coerce.dive17 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp15, i32 0, i32 0
  store %struct._opaque_pthread_t* %56, %struct._opaque_pthread_t** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp15, i32 0, i32 0
  %57 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive18, align 8
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %57)
          to label %invoke.cont19 unwind label %lpad8

invoke.cont19:                                    ; preds = %invoke.cont14
  store %"class.std::__1::thread"* %t2, %"class.std::__1::thread"** %this.addr.i33, align 8
  %this1.i34 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr.i33, align 8
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1.i34, i32 0, i32 0
  store %struct._opaque_pthread_t** %__t_.i, %struct._opaque_pthread_t*** %__t.addr.i.i, align 8
  %58 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %__t.addr.i.i, align 8
  %59 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %58, align 8
  store %"class.std::__1::__thread_id"* %retval.i, %"class.std::__1::__thread_id"** %this.addr.i.i32, align 8
  store %struct._opaque_pthread_t* %59, %struct._opaque_pthread_t** %__id.addr.i.i, align 8
  %this1.i.i35 = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i32, align 8
  %60 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i, align 8
  store %"class.std::__1::__thread_id"* %this1.i.i35, %"class.std::__1::__thread_id"** %this.addr.i.i.i, align 8
  store %struct._opaque_pthread_t* %60, %struct._opaque_pthread_t** %__id.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__thread_id"*, %"class.std::__1::__thread_id"** %this.addr.i.i.i, align 8
  %__id_.i.i.i = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %this1.i.i.i, i32 0, i32 0
  %61 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__id.addr.i.i.i, align 8
  store %struct._opaque_pthread_t* %61, %struct._opaque_pthread_t** %__id_.i.i.i, align 8
  %coerce.dive.i = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %retval.i, i32 0, i32 0
  %62 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive.i, align 8
  %coerce.dive22 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp20, i32 0, i32 0
  store %struct._opaque_pthread_t* %62, %struct._opaque_pthread_t** %coerce.dive22, align 8
  %coerce.dive23 = getelementptr inbounds %"class.std::__1::__thread_id", %"class.std::__1::__thread_id"* %agg.tmp20, i32 0, i32 0
  %63 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %coerce.dive23, align 8
  invoke void @checker_thread_join(%struct._opaque_pthread_t* %63)
          to label %invoke.cont24 unwind label %lpad8

invoke.cont24:                                    ; preds = %invoke.cont19
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %t1)
          to label %invoke.cont25 unwind label %lpad8

invoke.cont25:                                    ; preds = %invoke.cont24
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %t2)
          to label %invoke.cont26 unwind label %lpad8

invoke.cont26:                                    ; preds = %invoke.cont25
  %call28 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
          to label %invoke.cont27 unwind label %lpad8

invoke.cont27:                                    ; preds = %invoke.cont26
  invoke void @checker_thread_end()
          to label %invoke.cont29 unwind label %lpad8

invoke.cont29:                                    ; preds = %invoke.cont27
  invoke void @checker_solver()
          to label %invoke.cont30 unwind label %lpad8

invoke.cont30:                                    ; preds = %invoke.cont29
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t2) #10
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t1) #10
  ret i32 0

lpad:                                             ; preds = %_ZNSt3__16atomicIiEaSEi.exit113
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  store i8* %65, i8** %exn.slot, align 8
  %66 = extractvalue { i8*, i32 } %64, 1
  store i32 %66, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont29, %invoke.cont27, %invoke.cont26, %invoke.cont25, %invoke.cont24, %invoke.cont19, %invoke.cont14, %invoke.cont9, %invoke.cont
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %exn.slot, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %ehselector.slot, align 4
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t2) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t1) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val31 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val31
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::thread"*, align 8
  %__f.addr = alloca void ()*, align 8
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  store void ()* %__f, void ()** %__f.addr, align 8
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  %0 = load void ()*, void ()** %__f.addr, align 8
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this1, void ()* %0)
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) #1

declare void @checker_thread_join(%struct._opaque_pthread_t*) #1

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) #1

declare void @checker_solver() #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #3

; Function Attrs: noinline norecurse ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i = alloca %"class.std::__1::vector"*, align 8
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__1::vector", align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %call1 = call i8* @_Znwm(i64 40) #11
  %0 = bitcast i8* %call1 to %"class.checker::ModelChecker"*
  invoke void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.checker::ModelChecker"* %0, %"class.checker::ModelChecker"** @modelChecker, align 8
  call void @checker_generateExecutor()
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %call2 = call i32 @_Z9user_mainiPPc(i32 %1, i8** %2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %invoke.cont
  %3 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** @modelChecker, align 8
  call void @_ZN7checker12ModelChecker10getSchListEv(%"class.std::__1::vector"* sret %ref.tmp, %"class.checker::ModelChecker"* %3)
  store %"class.std::__1::vector"* %ref.tmp, %"class.std::__1::vector"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i, align 8
  %4 = bitcast %"class.std::__1::vector"* %this1.i to %"class.std::__1::__vector_base"*
  %__end_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %4, i32 0, i32 1
  %5 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__end_.i, align 8
  %6 = bitcast %"class.std::__1::vector"* %this1.i to %"class.std::__1::__vector_base"*
  %__begin_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %6, i32 0, i32 0
  %7 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint %"class.checker::Schedule"** %5 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %"class.checker::Schedule"** %7 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 8
  %tobool = icmp ne i64 %sub.ptr.div.i, 0
  call void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev(%"class.std::__1::vector"* %ref.tmp) #10
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %argc.addr, align 4
  %9 = load i8**, i8*** %argv.addr, align 8
  %call4 = call i32 @_Z9user_mainiPPc(i32 %8, i8** %9)
  br label %while.cond

lpad:                                             ; preds = %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call1) #12
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  ret i32 0

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #5

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZN7checker12ModelCheckerC1Ev(%"class.checker::ModelChecker"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.checker::ModelChecker"*, align 8
  store %"class.checker::ModelChecker"* %this, %"class.checker::ModelChecker"** %this.addr, align 8
  %this1 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** %this.addr, align 8
  call void @_ZN7checker12ModelCheckerC2Ev(%"class.checker::ModelChecker"* %this1)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

declare void @checker_generateExecutor() #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZN7checker12ModelChecker10getSchListEv(%"class.std::__1::vector"* noalias sret %agg.result, %"class.checker::ModelChecker"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.checker::ModelChecker"*, align 8
  store %"class.checker::ModelChecker"* %this, %"class.checker::ModelChecker"** %this.addr, align 8
  %this1 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** %this.addr, align 8
  %schList = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %this1, i32 0, i32 1
  call void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC1ERKS6_(%"class.std::__1::vector"* %agg.result, %"class.std::__1::vector"* dereferenceable(24) %schList)
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev(%"class.std::__1::vector"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  call void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev(%"class.std::__1::vector"* %this1) #10
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #10
  call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZN7checker12ModelCheckerC2Ev(%"class.checker::ModelChecker"* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__t.addr.i.i.i.i.i.i = alloca i8**, align 8
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %__t.addr.i.i.i.i.i = alloca i8**, align 8
  %this.addr.i3.i.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %__t.addr.i.i.i.i = alloca i8**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__vector_base_common"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__vector_base"*, align 8
  %ref.tmp.i.i.i = alloca i8*, align 8
  %this.addr.i.i = alloca %"class.std::__1::vector"*, align 8
  %this.addr.i = alloca %"class.std::__1::vector"*, align 8
  %this.addr = alloca %"class.checker::ModelChecker"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.checker::ModelChecker"* %this, %"class.checker::ModelChecker"** %this.addr, align 8
  %this1 = load %"class.checker::ModelChecker"*, %"class.checker::ModelChecker"** %this.addr, align 8
  %schList = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %this1, i32 0, i32 1
  store %"class.std::__1::vector"* %schList, %"class.std::__1::vector"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i, align 8
  store %"class.std::__1::vector"* %this1.i, %"class.std::__1::vector"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i.i, align 8
  %0 = bitcast %"class.std::__1::vector"* %this1.i.i to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %0, %"class.std::__1::__vector_base"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i.i, align 8
  %1 = bitcast %"class.std::__1::__vector_base"* %this1.i.i.i to %"class.std::__1::__vector_base_common"*
  store %"class.std::__1::__vector_base_common"* %1, %"class.std::__1::__vector_base_common"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__vector_base_common"*, %"class.std::__1::__vector_base_common"** %this.addr.i.i.i.i, align 8
  %__begin_.i.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i.i, i32 0, i32 0
  store %"class.checker::Schedule"** null, %"class.checker::Schedule"*** %__begin_.i.i.i, align 8
  %__end_.i.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i.i, i32 0, i32 1
  store %"class.checker::Schedule"** null, %"class.checker::Schedule"*** %__end_.i.i.i, align 8
  %__end_cap_.i.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i.i, i32 0, i32 2
  store i8* null, i8** %ref.tmp.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i.i.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i3.i.i.i, align 8
  store i8** %ref.tmp.i.i.i, i8*** %__t.addr.i.i.i.i, align 8
  %this1.i4.i.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i3.i.i.i, align 8
  %2 = load i8**, i8*** %__t.addr.i.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.14"* %this1.i4.i.i.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i.i, align 8
  store i8** %2, i8*** %__t.addr.i.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.15"*
  %4 = load i8**, i8*** %__t.addr.i.i.i.i.i, align 8
  store i8** %4, i8*** %__t.addr.i.i.i.i.i.i, align 8
  %5 = load i8**, i8*** %__t.addr.i.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem.15"* %3, i8** dereferenceable(8) %5) #10
  %6 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.16"*
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.16"* %6) #10
  %test = getelementptr inbounds %"class.checker::ModelChecker", %"class.checker::ModelChecker"* %this1, i32 0, i32 0
  store i32 3, i32* %test, align 8
  %call = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.checker::ModelChecker"* %this1 to i8*
  %call3 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* %call, i8* %7)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call5 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  ret void

lpad:                                             ; preds = %invoke.cont2, %invoke.cont, %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED1Ev(%"class.std::__1::vector"* %schList) #10
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str) #0 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %1 = load i8*, i8** %__str.addr, align 8
  %2 = load i8*, i8** %__str.addr, align 8
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #10
  %call1 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %0, i8* %1, i64 %call)
  ret %"class.std::__1::basic_ostream"* %call1
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) #1

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem.15"* %this, i8** dereferenceable(8) %__u) unnamed_addr #2 align 2 {
entry:
  %__t.addr.i = alloca i8**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.15"*, align 8
  %__u.addr = alloca i8**, align 8
  store %"struct.std::__1::__compressed_pair_elem.15"* %this, %"struct.std::__1::__compressed_pair_elem.15"** %this.addr, align 8
  store i8** %__u, i8*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.15"*, %"struct.std::__1::__compressed_pair_elem.15"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.15", %"struct.std::__1::__compressed_pair_elem.15"* %this1, i32 0, i32 0
  %0 = load i8**, i8*** %__u.addr, align 8
  store i8** %0, i8*** %__t.addr.i, align 8
  %1 = load i8**, i8*** %__t.addr.i, align 8
  %2 = load i8*, i8** %1, align 8
  store %"class.checker::Schedule"** null, %"class.checker::Schedule"*** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.16"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr.i = alloca %"class.std::__1::allocator.17"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.16"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.16"* %this, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.16"*, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.16"* %this1 to %"class.std::__1::allocator.17"*
  store %"class.std::__1::allocator.17"* %0, %"class.std::__1::allocator.17"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %this.addr.i, align 8
  ret void
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i.i.i47 = alloca %"class.std::__1::ctype"*, align 8
  %__c.addr.i.i.i = alloca i8, align 1
  %__l.addr.i.i.i = alloca %"class.std::__1::locale"*, align 8
  %this.addr.i.i48 = alloca %"class.std::__1::basic_ios"*, align 8
  %__c.addr.i.i = alloca i8, align 1
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %exn.slot.i.i = alloca i8*
  %ehselector.slot.i.i = alloca i32
  %this.addr.i49 = alloca %"class.std::__1::basic_ios"*, align 8
  %this.addr.i45 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %this.addr.i43 = alloca %"class.std::__1::ios_base"*, align 8
  %this.addr.i.i39 = alloca %"class.std::__1::ios_base"*, align 8
  %__state.addr.i.i = alloca i32, align 4
  %this.addr.i40 = alloca %"class.std::__1::basic_ios"*, align 8
  %__state.addr.i = alloca i32, align 4
  %this.addr.i.i.i.i = alloca %"class.std::__1::ios_base"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::basic_ios"*, align 8
  %this.addr.i.i = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr.i.i = alloca %"class.std::__1::basic_ostream"*, align 8
  %this.addr.i37 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr.i = alloca %"class.std::__1::basic_ostream"*, align 8
  %this.addr.i = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, align 8
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream"* dereferenceable(160) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr.i, align 8
  %__ok_.i = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this1.i, i32 0, i32 0
  %1 = load i8, i8* %__ok_.i, align 8
  %tobool.i = trunc i8 %1 to i1
  br label %invoke.cont2

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %tobool.i, label %if.then, label %if.end27

if.then:                                          ; preds = %invoke.cont2
  %2 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store %"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, align 8
  store %"class.std::__1::basic_ostream"* %2, %"class.std::__1::basic_ostream"** %__s.addr.i, align 8
  %this1.i38 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i37, align 8
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr.i, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this1.i38, %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, align 8
  store %"class.std::__1::basic_ostream"* %3, %"class.std::__1::basic_ostream"** %__s.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i.i, align 8
  %4 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1.i.i to %"struct.std::__1::iterator"*
  %__sbuf_.i.i = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1.i.i, i32 0, i32 0
  %5 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr.i.i, align 8
  %6 = bitcast %"class.std::__1::basic_ostream"* %5 to i8**
  %vtable.i.i = load i8*, i8** %6, align 8
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24
  %7 = bitcast i8* %vbase.offset.ptr.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %7, align 8
  %8 = bitcast %"class.std::__1::basic_ostream"* %5 to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %8, i64 %vbase.offset.i.i
  %9 = bitcast i8* %add.ptr.i.i to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %9, %"class.std::__1::basic_ios"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i.i.i, align 8
  %10 = bitcast %"class.std::__1::basic_ios"* %this1.i.i.i to %"class.std::__1::ios_base"*
  store %"class.std::__1::ios_base"* %10, %"class.std::__1::ios_base"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i.i.i.i, align 8
  %__rdbuf_.i.i.i.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i.i.i.i, i32 0, i32 6
  %11 = load i8*, i8** %__rdbuf_.i.i.i.i, align 8
  %12 = bitcast i8* %11 to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %12, %"class.std::__1::basic_streambuf"** %__sbuf_.i.i, align 8
  %13 = load i8*, i8** %__str.addr, align 8
  %14 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %15 = bitcast %"class.std::__1::basic_ostream"* %14 to i8**
  %vtable = load i8*, i8** %15, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %16 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %16, align 8
  %17 = bitcast %"class.std::__1::basic_ostream"* %14 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %vbase.offset
  %18 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*
  store %"class.std::__1::ios_base"* %18, %"class.std::__1::ios_base"** %this.addr.i43, align 8
  %this1.i44 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i43, align 8
  %__fmtflags_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i44, i32 0, i32 1
  %19 = load i32, i32* %__fmtflags_.i, align 8
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %if.then
  %and = and i32 %19, 176
  %cmp = icmp eq i32 %and, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont3
  %20 = load i8*, i8** %__str.addr, align 8
  %21 = load i64, i64* %__len.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %20, i64 %21
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont3
  %22 = load i8*, i8** %__str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr5, %cond.true ], [ %22, %cond.false ]
  %23 = load i8*, i8** %__str.addr, align 8
  %24 = load i64, i64* %__len.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %26 = bitcast %"class.std::__1::basic_ostream"* %25 to i8**
  %vtable7 = load i8*, i8** %26, align 8
  %vbase.offset.ptr8 = getelementptr i8, i8* %vtable7, i64 -24
  %27 = bitcast i8* %vbase.offset.ptr8 to i64*
  %vbase.offset9 = load i64, i64* %27, align 8
  %28 = bitcast %"class.std::__1::basic_ostream"* %25 to i8*
  %add.ptr10 = getelementptr inbounds i8, i8* %28, i64 %vbase.offset9
  %29 = bitcast i8* %add.ptr10 to %"class.std::__1::ios_base"*
  %30 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %31 = bitcast %"class.std::__1::basic_ostream"* %30 to i8**
  %vtable11 = load i8*, i8** %31, align 8
  %vbase.offset.ptr12 = getelementptr i8, i8* %vtable11, i64 -24
  %32 = bitcast i8* %vbase.offset.ptr12 to i64*
  %vbase.offset13 = load i64, i64* %32, align 8
  %33 = bitcast %"class.std::__1::basic_ostream"* %30 to i8*
  %add.ptr14 = getelementptr inbounds i8, i8* %33, i64 %vbase.offset13
  %34 = bitcast i8* %add.ptr14 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %34, %"class.std::__1::basic_ios"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i49, align 8
  %call.i = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #10
  %__fill_.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2
  %35 = load i32, i32* %__fill_.i, align 8
  %call2.i = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call.i, i32 %35) #10
  br i1 %call2.i, label %if.then.i, label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit

if.then.i:                                        ; preds = %cond.end
  store %"class.std::__1::basic_ios"* %this1.i50, %"class.std::__1::basic_ios"** %this.addr.i.i48, align 8
  store i8 32, i8* %__c.addr.i.i, align 1
  %this1.i.i51 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i.i48, align 8
  %36 = bitcast %"class.std::__1::basic_ios"* %this1.i.i51 to %"class.std::__1::ios_base"*
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %36)
          to label %.noexc unwind label %lpad1

.noexc:                                           ; preds = %if.then.i
  store %"class.std::__1::locale"* %ref.tmp.i.i, %"class.std::__1::locale"** %__l.addr.i.i.i, align 8
  %37 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr.i.i.i, align 8
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %37, %"class.std::__1::locale::id"* dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i unwind label %lpad.i.i

_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i: ; preds = %.noexc
  %38 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*
  %39 = load i8, i8* %__c.addr.i.i, align 1
  store %"class.std::__1::ctype"* %38, %"class.std::__1::ctype"** %this.addr.i.i.i47, align 8
  store i8 %39, i8* %__c.addr.i.i.i, align 1
  %this1.i.i.i52 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr.i.i.i47, align 8
  %40 = bitcast %"class.std::__1::ctype"* %this1.i.i.i52 to i8 (%"class.std::__1::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %40, align 8
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7
  %41 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8
  %42 = load i8, i8* %__c.addr.i.i.i, align 1
  %call.i6.i.i = invoke signext i8 %41(%"class.std::__1::ctype"* %this1.i.i.i52, i8 signext %42)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i, %.noexc
  %43 = landingpad { i8*, i32 }
          cleanup
          catch i8* null
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %exn.slot.i.i, align 8
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %ehselector.slot.i.i, align 4
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #10
  %exn.i.i = load i8*, i8** %exn.slot.i.i, align 8
  %sel.i.i = load i32, i32* %ehselector.slot.i.i, align 4
  %lpad.val.i.i = insertvalue { i8*, i32 } undef, i8* %exn.i.i, 0
  %lpad.val4.i.i = insertvalue { i8*, i32 } %lpad.val.i.i, i32 %sel.i.i, 1
  br label %lpad1.body

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #10
  %conv.i = sext i8 %call.i6.i.i to i32
  %__fill_4.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2
  store i32 %conv.i, i32* %__fill_4.i, align 8
  br label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit: ; preds = %cond.end, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
  %__fill_5.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2
  %46 = load i32, i32* %__fill_5.i, align 8
  %conv6.i = trunc i32 %46 to i8
  br label %invoke.cont15

invoke.cont15:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0
  %47 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  %call18 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %47, i8* %13, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %29, i8 signext %conv6.i)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %invoke.cont15
  %coerce.dive19 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %call18, %"class.std::__1::basic_streambuf"** %coerce.dive19, align 8
  store %"class.std::__1::ostreambuf_iterator"* %ref.tmp, %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, align 8
  %this1.i46 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr.i45, align 8
  %__sbuf_.i = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1.i46, i32 0, i32 0
  %48 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_.i, align 8
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %48, null
  br i1 %cmp.i, label %if.then21, label %if.end

if.then21:                                        ; preds = %invoke.cont17
  %49 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %50 = bitcast %"class.std::__1::basic_ostream"* %49 to i8**
  %vtable22 = load i8*, i8** %50, align 8
  %vbase.offset.ptr23 = getelementptr i8, i8* %vtable22, i64 -24
  %51 = bitcast i8* %vbase.offset.ptr23 to i64*
  %vbase.offset24 = load i64, i64* %51, align 8
  %52 = bitcast %"class.std::__1::basic_ostream"* %49 to i8*
  %add.ptr25 = getelementptr inbounds i8, i8* %52, i64 %vbase.offset24
  %53 = bitcast i8* %add.ptr25 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %53, %"class.std::__1::basic_ios"** %this.addr.i40, align 8
  store i32 5, i32* %__state.addr.i, align 4
  %this1.i41 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr.i40, align 8
  %54 = bitcast %"class.std::__1::basic_ios"* %this1.i41 to %"class.std::__1::ios_base"*
  %55 = load i32, i32* %__state.addr.i, align 4
  store %"class.std::__1::ios_base"* %54, %"class.std::__1::ios_base"** %this.addr.i.i39, align 8
  store i32 %55, i32* %__state.addr.i.i, align 4
  %this1.i.i42 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i.i39, align 8
  %__rdstate_.i.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i.i42, i32 0, i32 4
  %56 = load i32, i32* %__rdstate_.i.i, align 8
  %57 = load i32, i32* %__state.addr.i.i, align 4
  %or.i.i = or i32 %56, %57
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1.i.i42, i32 %or.i.i)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit unwind label %lpad1

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit: ; preds = %if.then21
  br label %invoke.cont26

invoke.cont26:                                    ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
  br label %if.end

lpad:                                             ; preds = %entry
  %58 = landingpad { i8*, i32 }
          catch i8* null
  %59 = extractvalue { i8*, i32 } %58, 0
  store i8* %59, i8** %exn.slot, align 8
  %60 = extractvalue { i8*, i32 } %58, 1
  store i32 %60, i32* %ehselector.slot, align 4
  br label %catch

lpad1:                                            ; preds = %if.then.i, %if.then21, %invoke.cont15
  %61 = landingpad { i8*, i32 }
          catch i8* null
  br label %lpad1.body

lpad1.body:                                       ; preds = %lpad.i.i, %lpad1
  %eh.lpad-body = phi { i8*, i32 } [ %61, %lpad1 ], [ %lpad.val4.i.i, %lpad.i.i ]
  %62 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  store i8* %62, i8** %exn.slot, align 8
  %63 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  store i32 %63, i32* %ehselector.slot, align 4
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #10
  br label %catch

catch:                                            ; preds = %lpad1.body, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %64 = call i8* @__cxa_begin_catch(i8* %exn) #10
  %65 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %66 = bitcast %"class.std::__1::basic_ostream"* %65 to i8**
  %vtable28 = load i8*, i8** %66, align 8
  %vbase.offset.ptr29 = getelementptr i8, i8* %vtable28, i64 -24
  %67 = bitcast i8* %vbase.offset.ptr29 to i64*
  %vbase.offset30 = load i64, i64* %67, align 8
  %68 = bitcast %"class.std::__1::basic_ostream"* %65 to i8*
  %add.ptr31 = getelementptr inbounds i8, i8* %68, i64 %vbase.offset30
  %69 = bitcast i8* %add.ptr31 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %69)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont33, %if.end27
  %70 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  ret %"class.std::__1::basic_ostream"* %70

if.end:                                           ; preds = %invoke.cont26, %invoke.cont17
  br label %if.end27

if.end27:                                         ; preds = %if.end, %invoke.cont2
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #10
  br label %try.cont

lpad32:                                           ; preds = %catch
  %71 = landingpad { i8*, i32 }
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  store i8* %72, i8** %exn.slot, align 8
  %73 = extractvalue { i8*, i32 } %71, 1
  store i32 %73, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont34 unwind label %terminate.lpad

invoke.cont34:                                    ; preds = %lpad32
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont34
  %exn35 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn35, 0
  %lpad.val36 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val36

terminate.lpad:                                   ; preds = %lpad32
  %74 = landingpad { i8*, i32 }
          catch i8* null
  %75 = extractvalue { i8*, i32 } %74, 0
  call void @__clang_call_terminate(i8* %75) #13
  unreachable
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #2 align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @strlen(i8* %0) #10
  ret i64 %call
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i64 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr.i65 = alloca i8*, align 8
  %__n.addr.i66 = alloca i64, align 8
  %__p.addr.i.i = alloca i8*, align 8
  %__x.addr.i.i.i.i.i = alloca i8*, align 8
  %__r.addr.i.i.i.i = alloca i8*, align 8
  %this.addr.i.i10.i.i = alloca %"class.std::__1::__compressed_pair.19"*, align 8
  %this.addr.i11.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i4.i.i = alloca %"class.std::__1::__compressed_pair.19"*, align 8
  %this.addr.i5.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i.i.i56 = alloca %"class.std::__1::__compressed_pair.19"*, align 8
  %this.addr.i.i.i57 = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i58 = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i59 = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.19"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.19"*, align 8
  %this.addr.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr.i.i = alloca i64, align 8
  %__c.addr.i.i = alloca i8, align 1
  %this.addr.i53 = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr.i54 = alloca i64, align 8
  %__c.addr.i = alloca i8, align 1
  %this.addr.i46 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr.i47 = alloca i8*, align 8
  %__n.addr.i48 = alloca i64, align 8
  %this.addr.i44 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr.i = alloca i8*, align 8
  %__n.addr.i = alloca i64, align 8
  %this.addr.i41 = alloca %"class.std::__1::ios_base"*, align 8
  %__wide.addr.i = alloca i64, align 8
  %__r.i = alloca i64, align 8
  %this.addr.i = alloca %"class.std::__1::ios_base"*, align 8
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
  store i8* %__ob, i8** %__ob.addr, align 8
  store i8* %__op, i8** %__op.addr, align 8
  store i8* %__oe, i8** %__oe.addr, align 8
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8
  store i8 %__fl, i8* %__fl.addr, align 1
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %__oe.addr, align 8
  %4 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %__sz, align 8
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  store %"class.std::__1::ios_base"* %5, %"class.std::__1::ios_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i, align 8
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i, i32 0, i32 3
  %6 = load i64, i64* %__width_.i, align 8
  store i64 %6, i64* %__ns, align 8
  %7 = load i64, i64* %__ns, align 8
  %8 = load i64, i64* %__sz, align 8
  %cmp1 = icmp sgt i64 %7, %8
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %9 = load i64, i64* %__sz, align 8
  %10 = load i64, i64* %__ns, align 8
  %sub = sub nsw i64 %10, %9
  store i64 %sub, i64* %__ns, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %11 = load i8*, i8** %__op.addr, align 8
  %12 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %12 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, i64* %__np, align 8
  %13 = load i64, i64* %__np, align 8
  %cmp7 = icmp sgt i64 %13, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %14 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9, align 8
  %15 = load i8*, i8** %__ob.addr, align 8
  %16 = load i64, i64* %__np, align 8
  store %"class.std::__1::basic_streambuf"* %14, %"class.std::__1::basic_streambuf"** %this.addr.i46, align 8
  store i8* %15, i8** %__s.addr.i47, align 8
  store i64 %16, i64* %__n.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i46, align 8
  %17 = bitcast %"class.std::__1::basic_streambuf"* %this1.i49 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i50 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %17, align 8
  %vfn.i51 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i50, i64 12
  %18 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i51, align 8
  %19 = load i8*, i8** %__s.addr.i47, align 8
  %20 = load i64, i64* %__n.addr.i48, align 8
  %call.i52 = call i64 %18(%"class.std::__1::basic_streambuf"* %this1.i49, i8* %19, i64 %20)
  %21 = load i64, i64* %__np, align 8
  %cmp11 = icmp ne i64 %call.i52, %21
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8
  %22 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %23 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  br label %return

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %24 = load i64, i64* %__ns, align 8
  %cmp16 = icmp sgt i64 %24, 0
  br i1 %cmp16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end15
  %25 = load i64, i64* %__ns, align 8
  %26 = load i8, i8* %__fl.addr, align 1
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %this.addr.i53, align 8
  store i64 %25, i64* %__n.addr.i54, align 8
  store i8 %26, i8* %__c.addr.i, align 1
  %this1.i55 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i53, align 8
  %27 = load i64, i64* %__n.addr.i54, align 8
  %28 = load i8, i8* %__c.addr.i, align 1
  store %"class.std::__1::basic_string"* %this1.i55, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  store i64 %27, i64* %__n.addr.i.i, align 8
  store i8 %28, i8* %__c.addr.i.i, align 1
  %this1.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  %29 = bitcast %"class.std::__1::basic_string"* %this1.i.i to %"class.std::__1::__basic_string_common"*
  %__r_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.19"* %__r_.i.i, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.19"*, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.19"* %this1.i.i.i, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.19"*, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i.i.i, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair.19"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.20"*
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem.20"* %30)
  %31 = bitcast %"class.std::__1::__compressed_pair.19"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.22"*
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.22"* %31) #10
  %32 = load i64, i64* %__n.addr.i.i, align 8
  %33 = load i8, i8* %__c.addr.i.i, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1.i.i, i64 %32, i8 signext %33)
  %__sbuf_18 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %34 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_18, align 8
  store %"class.std::__1::basic_string"* %__sp, %"class.std::__1::basic_string"** %this.addr.i59, align 8
  %this1.i60 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i59, align 8
  store %"class.std::__1::basic_string"* %this1.i60, %"class.std::__1::basic_string"** %this.addr.i.i58, align 8
  %this1.i.i61 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i58, align 8
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i.i.i57, align 8
  %this1.i.i.i62 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i.i57, align 8
  %__r_.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i.i62, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.19"* %__r_.i.i.i, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i.i.i56, align 8
  %this1.i.i.i.i63 = load %"class.std::__1::__compressed_pair.19"*, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i.i.i56, align 8
  %35 = bitcast %"class.std::__1::__compressed_pair.19"* %this1.i.i.i.i63 to %"struct.std::__1::__compressed_pair_elem.20"*
  %call.i.i.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.20"* %35) #10
  %36 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i.i.i, i32 0, i32 0
  %__s.i.i.i = bitcast %union.anon* %36 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %37 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i32 0, i32 0
  %__size_.i.i.i = bitcast %union.anon.21* %37 to i8*
  %38 = load i8, i8* %__size_.i.i.i, align 8
  %conv.i.i.i = zext i8 %38 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %this1.i6.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %__r_.i7.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i6.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.19"* %__r_.i7.i.i, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i4.i.i, align 8
  %this1.i.i8.i.i = load %"class.std::__1::__compressed_pair.19"*, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i4.i.i, align 8
  %39 = bitcast %"class.std::__1::__compressed_pair.19"* %this1.i.i8.i.i to %"struct.std::__1::__compressed_pair_elem.20"*
  %call.i.i9.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.20"* %39) #10
  %40 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i9.i.i, i32 0, i32 0
  %__l.i.i.i = bitcast %union.anon* %40 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__data_.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l.i.i.i, i32 0, i32 2
  %41 = load i8*, i8** %__data_.i.i.i, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

cond.false.i.i:                                   ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %this1.i12.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %__r_.i13.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i12.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.19"* %__r_.i13.i.i, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i10.i.i, align 8
  %this1.i.i14.i.i = load %"class.std::__1::__compressed_pair.19"*, %"class.std::__1::__compressed_pair.19"** %this.addr.i.i10.i.i, align 8
  %42 = bitcast %"class.std::__1::__compressed_pair.19"* %this1.i.i14.i.i to %"struct.std::__1::__compressed_pair_elem.20"*
  %call.i.i15.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.20"* %42) #10
  %43 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i15.i.i, i32 0, i32 0
  %__s.i16.i.i = bitcast %union.anon* %43 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %__data_.i17.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i16.i.i, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr inbounds [23 x i8], [23 x i8]* %__data_.i17.i.i, i64 0, i64 0
  store i8* %arrayidx.i.i.i, i8** %__r.addr.i.i.i.i, align 8
  %44 = load i8*, i8** %__r.addr.i.i.i.i, align 8
  store i8* %44, i8** %__x.addr.i.i.i.i.i, align 8
  %45 = load i8*, i8** %__x.addr.i.i.i.i.i, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit: ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i8* [ %41, %cond.true.i.i ], [ %45, %cond.false.i.i ]
  store i8* %cond.i.i, i8** %__p.addr.i.i, align 8
  %46 = load i8*, i8** %__p.addr.i.i, align 8
  %47 = load i64, i64* %__ns, align 8
  store %"class.std::__1::basic_streambuf"* %34, %"class.std::__1::basic_streambuf"** %this.addr.i64, align 8
  store i8* %46, i8** %__s.addr.i65, align 8
  store i64 %47, i64* %__n.addr.i66, align 8
  %this1.i67 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i64, align 8
  %48 = bitcast %"class.std::__1::basic_streambuf"* %this1.i67 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i68 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %48, align 8
  %vfn.i69 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i68, i64 12
  %49 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i69, align 8
  %50 = load i8*, i8** %__s.addr.i65, align 8
  %51 = load i64, i64* %__n.addr.i66, align 8
  %call.i7071 = invoke i64 %49(%"class.std::__1::basic_streambuf"* %this1.i67, i8* %50, i64 %51)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit unwind label %lpad

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit: ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  br label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
  %52 = load i64, i64* %__ns, align 8
  %cmp21 = icmp ne i64 %call.i7071, %52
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %invoke.cont
  %__sbuf_23 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_23, align 8
  %53 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %54 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 8, i32 8, i1 false)
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %exn.slot, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %ehselector.slot, align 4
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #10
  br label %eh.resume

if.end24:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #10
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25

if.end25:                                         ; preds = %cleanup.cont, %if.end15
  %58 = load i8*, i8** %__oe.addr, align 8
  %59 = load i8*, i8** %__op.addr, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %59 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  store i64 %sub.ptr.sub28, i64* %__np, align 8
  %60 = load i64, i64* %__np, align 8
  %cmp29 = icmp sgt i64 %60, 0
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end25
  %__sbuf_31 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %61 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_31, align 8
  %62 = load i8*, i8** %__op.addr, align 8
  %63 = load i64, i64* %__np, align 8
  store %"class.std::__1::basic_streambuf"* %61, %"class.std::__1::basic_streambuf"** %this.addr.i44, align 8
  store i8* %62, i8** %__s.addr.i, align 8
  store i64 %63, i64* %__n.addr.i, align 8
  %this1.i45 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr.i44, align 8
  %64 = bitcast %"class.std::__1::basic_streambuf"* %this1.i45 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %64, align 8
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12
  %65 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8
  %66 = load i8*, i8** %__s.addr.i, align 8
  %67 = load i64, i64* %__n.addr.i, align 8
  %call.i = call i64 %65(%"class.std::__1::basic_streambuf"* %this1.i45, i8* %66, i64 %67)
  %68 = load i64, i64* %__np, align 8
  %cmp33 = icmp ne i64 %call.i, %68
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then30
  %__sbuf_35 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_35, align 8
  %69 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %70 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 8, i1 false)
  br label %return

if.end36:                                         ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end25
  %71 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  store %"class.std::__1::ios_base"* %71, %"class.std::__1::ios_base"** %this.addr.i41, align 8
  store i64 0, i64* %__wide.addr.i, align 8
  %this1.i42 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr.i41, align 8
  %__width_.i43 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i42, i32 0, i32 3
  %72 = load i64, i64* %__width_.i43, align 8
  store i64 %72, i64* %__r.i, align 8
  %73 = load i64, i64* %__wide.addr.i, align 8
  %__width_2.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1.i42, i32 0, i32 3
  store i64 %73, i64* %__width_2.i, align 8
  %74 = load i64, i64* %__r.i, align 8
  %75 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %76 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 8, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end37, %if.then34, %cleanup, %if.then12, %if.then
  %coerce.dive39 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0
  %77 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive39, align 8
  ret %"class.std::__1::basic_streambuf"* %77

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val40 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val40

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #3

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #1

declare void @__cxa_end_catch()

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #3

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #1

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem.20"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.20"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.20"* %this, %"struct.std::__1::__compressed_pair_elem.20"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.20"*, %"struct.std::__1::__compressed_pair_elem.20"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.20", %"struct.std::__1::__compressed_pair_elem.20"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_ to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.22"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr.i = alloca %"class.std::__1::allocator.23"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.22"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.22"* %this, %"struct.std::__1::__compressed_pair_elem.22"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.22"*, %"struct.std::__1::__compressed_pair_elem.22"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.22"* %this1 to %"class.std::__1::allocator.23"*
  store %"class.std::__1::allocator.23"* %0, %"class.std::__1::allocator.23"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::allocator.23"*, %"class.std::__1::allocator.23"** %this.addr.i, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.20"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.20"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.20"* %this, %"struct.std::__1::__compressed_pair_elem.20"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.20"*, %"struct.std::__1::__compressed_pair_elem.20"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.20", %"struct.std::__1::__compressed_pair_elem.20"* %this1, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #2 align 2 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr, align 4
  store i32 %__c2, i32* %__c2.addr, align 4
  %0 = load i32, i32* %__c1.addr, align 4
  %1 = load i32, i32* %__c2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #2 align 2 {
entry:
  ret i32 -1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #3

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) #1

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #1

; Function Attrs: nounwind
declare i64 @strlen(i8*) #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC1ERKS6_(%"class.std::__1::vector"* %this, %"class.std::__1::vector"* dereferenceable(24) %__x) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__x.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store %"class.std::__1::vector"* %__x, %"class.std::__1::vector"** %__x.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %0 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  call void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC2ERKS6_(%"class.std::__1::vector"* %this1, %"class.std::__1::vector"* dereferenceable(24) %0)
  ret void
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEEC2ERKS6_(%"class.std::__1::vector"* %this, %"class.std::__1::vector"* dereferenceable(24) %__x) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i12 = alloca %"class.std::__1::vector"*, align 8
  %__t.addr.i3.i.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %__t.addr.i.i.i.i = alloca i8**, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %__t1.addr.i.i.i = alloca i8**, align 8
  %__t2.addr.i.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %this.addr.i2.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %__t1.addr.i.i = alloca i8**, align 8
  %__t2.addr.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %this.addr.i.i5 = alloca %"class.std::__1::__vector_base_common"*, align 8
  %this.addr.i6 = alloca %"class.std::__1::__vector_base"*, align 8
  %__a.addr.i7 = alloca %"class.std::__1::allocator.17"*, align 8
  %ref.tmp.i8 = alloca i8*, align 8
  %__a.addr.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %retval.i = alloca %"class.std::__1::allocator.17", align 1
  %__a.addr.i = alloca %"class.std::__1::allocator.17"*, align 8
  %agg.tmp.i = alloca %"struct.std::__1::integral_constant", align 1
  %ref.tmp.i = alloca %"struct.std::__1::__has_select_on_container_copy_construction", align 1
  %undef.agg.tmp.i = alloca %"class.std::__1::allocator.17", align 1
  %this.addr.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__x.addr = alloca %"class.std::__1::vector"*, align 8
  %ref.tmp = alloca %"class.std::__1::allocator.17", align 1
  %undef.agg.tmp = alloca %"class.std::__1::allocator.17", align 1
  %__n = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store %"class.std::__1::vector"* %__x, %"class.std::__1::vector"** %__x.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %2 = bitcast %"class.std::__1::vector"* %1 to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %2, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %__end_cap_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i to %"struct.std::__1::__compressed_pair_elem.16"*
  %call.i.i = call dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %3) #10
  store %"class.std::__1::allocator.17"* %call.i.i, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  %4 = bitcast %"struct.std::__1::__has_select_on_container_copy_construction"* %ref.tmp.i to %"struct.std::__1::integral_constant"*
  %5 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  store %"class.std::__1::allocator.17"* %5, %"class.std::__1::allocator.17"** %__a.addr.i.i, align 8
  %6 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i.i, align 8
  store %"class.std::__1::__vector_base"* %0, %"class.std::__1::__vector_base"** %this.addr.i6, align 8
  store %"class.std::__1::allocator.17"* %ref.tmp, %"class.std::__1::allocator.17"** %__a.addr.i7, align 8
  %this1.i9 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i6, align 8
  %7 = bitcast %"class.std::__1::__vector_base"* %this1.i9 to %"class.std::__1::__vector_base_common"*
  store %"class.std::__1::__vector_base_common"* %7, %"class.std::__1::__vector_base_common"** %this.addr.i.i5, align 8
  %this1.i.i10 = load %"class.std::__1::__vector_base_common"*, %"class.std::__1::__vector_base_common"** %this.addr.i.i5, align 8
  %__begin_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i9, i32 0, i32 0
  store %"class.checker::Schedule"** null, %"class.checker::Schedule"*** %__begin_.i, align 8
  %__end_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i9, i32 0, i32 1
  store %"class.checker::Schedule"** null, %"class.checker::Schedule"*** %__end_.i, align 8
  %__end_cap_.i11 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i9, i32 0, i32 2
  store i8* null, i8** %ref.tmp.i8, align 8
  %8 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i7, align 8
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i11, %"class.std::__1::__compressed_pair.14"** %this.addr.i2.i, align 8
  store i8** %ref.tmp.i8, i8*** %__t1.addr.i.i, align 8
  store %"class.std::__1::allocator.17"* %8, %"class.std::__1::allocator.17"** %__t2.addr.i.i, align 8
  %this1.i3.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i2.i, align 8
  %9 = load i8**, i8*** %__t1.addr.i.i, align 8
  %10 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__t2.addr.i.i, align 8
  store %"class.std::__1::__compressed_pair.14"* %this1.i3.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i, align 8
  store i8** %9, i8*** %__t1.addr.i.i.i, align 8
  store %"class.std::__1::allocator.17"* %10, %"class.std::__1::allocator.17"** %__t2.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i, align 8
  %11 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i to %"struct.std::__1::__compressed_pair_elem.15"*
  %12 = load i8**, i8*** %__t1.addr.i.i.i, align 8
  store i8** %12, i8*** %__t.addr.i.i.i.i, align 8
  %13 = load i8**, i8*** %__t.addr.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem.15"* %11, i8** dereferenceable(8) %13)
  %14 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i to %"struct.std::__1::__compressed_pair_elem.16"*
  %15 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__t2.addr.i.i.i, align 8
  store %"class.std::__1::allocator.17"* %15, %"class.std::__1::allocator.17"** %__t.addr.i3.i.i.i, align 8
  %16 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__t.addr.i3.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EEC2IRKS5_vEEOT_(%"struct.std::__1::__compressed_pair_elem.16"* %14, %"class.std::__1::allocator.17"* dereferenceable(1) %16)
  %17 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  store %"class.std::__1::vector"* %17, %"class.std::__1::vector"** %this.addr.i12, align 8
  %this1.i13 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i12, align 8
  %18 = bitcast %"class.std::__1::vector"* %this1.i13 to %"class.std::__1::__vector_base"*
  %__end_.i14 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %18, i32 0, i32 1
  %19 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__end_.i14, align 8
  %20 = bitcast %"class.std::__1::vector"* %this1.i13 to %"class.std::__1::__vector_base"*
  %__begin_.i15 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %20, i32 0, i32 0
  %21 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i15, align 8
  %sub.ptr.lhs.cast.i = ptrtoint %"class.checker::Schedule"** %19 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %"class.checker::Schedule"** %21 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 8
  store i64 %sub.ptr.div.i, i64* %__n, align 8
  %22 = load i64, i64* %__n, align 8
  %cmp = icmp ugt i64 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i64, i64* %__n, align 8
  invoke void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8allocateEm(%"class.std::__1::vector"* %this1, i64 %23)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %24 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %25 = bitcast %"class.std::__1::vector"* %24 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %25, i32 0, i32 0
  %26 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_, align 8
  %27 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %__x.addr, align 8
  %28 = bitcast %"class.std::__1::vector"* %27 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %28, i32 0, i32 1
  %29 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__end_, align 8
  %30 = load i64, i64* %__n, align 8
  invoke void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESA_SA_m(%"class.std::__1::vector"* %this1, %"class.checker::Schedule"** %26, %"class.checker::Schedule"** %29, i64 %30)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %invoke.cont, %if.then
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %exn.slot, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %ehselector.slot, align 4
  %34 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  call void @_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev(%"class.std::__1::__vector_base"* %34) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont3, %entry
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8allocateEm(%"class.std::__1::vector"* %this, i64 %__n) #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %this.addr.i.i.i.i24.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i.i.i25.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i.i26.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i27.i = alloca %"class.std::__1::vector"*, align 8
  %__p.addr.i.i20.i = alloca %"class.checker::Schedule"**, align 8
  %this.addr.i21.i = alloca %"class.std::__1::vector"*, align 8
  %__p.addr.i.i16.i = alloca %"class.checker::Schedule"**, align 8
  %this.addr.i17.i = alloca %"class.std::__1::vector"*, align 8
  %this.addr.i.i.i.i.i14 = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i.i.i.i15 = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i.i.i16 = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i14.i = alloca %"class.std::__1::vector"*, align 8
  %__p.addr.i.i10.i = alloca %"class.checker::Schedule"**, align 8
  %this.addr.i11.i = alloca %"class.std::__1::vector"*, align 8
  %this.addr.i9.i = alloca %"class.std::__1::vector"*, align 8
  %.addr.i.i17 = alloca i8*, align 8
  %.addr1.i.i = alloca i8*, align 8
  %.addr2.i.i = alloca i8*, align 8
  %.addr3.i.i = alloca i8*, align 8
  %__p.addr.i.i.i = alloca %"class.checker::Schedule"**, align 8
  %this.addr.i.i18 = alloca %"class.std::__1::vector"*, align 8
  %this.addr.i19 = alloca %"class.std::__1::vector"*, align 8
  %__current_size.addr.i = alloca i64, align 8
  %this.addr.i.i8 = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i9 = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i.i.i.i.i = alloca %"class.std::length_error"*, align 8
  %__s.addr.i.i.i.i.i = alloca i8*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::length_error"*, align 8
  %__s.addr.i.i.i.i = alloca i8*, align 8
  %__msg.addr.i.i.i = alloca i8*, align 8
  %exn.slot.i.i.i = alloca i8*
  %ehselector.slot.i.i.i = alloca i32
  %__size.addr.i.i.i = alloca i64, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %this.addr.i.i6 = alloca %"class.std::__1::allocator.17"*, align 8
  %__n.addr.i.i = alloca i64, align 8
  %.addr.i.i = alloca i8*, align 8
  %__a.addr.i = alloca %"class.std::__1::allocator.17"*, align 8
  %__n.addr.i = alloca i64, align 8
  %this.addr.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8max_sizeEv(%"class.std::__1::vector"* %this1) #10
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base_common"*
  call void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* %1) #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %2, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %__end_cap_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i to %"struct.std::__1::__compressed_pair_elem.16"*
  %call.i.i = call dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %3) #10
  %4 = load i64, i64* %__n.addr, align 8
  store %"class.std::__1::allocator.17"* %call.i.i, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  store i64 %4, i64* %__n.addr.i, align 8
  %5 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  %6 = load i64, i64* %__n.addr.i, align 8
  store %"class.std::__1::allocator.17"* %5, %"class.std::__1::allocator.17"** %this.addr.i.i6, align 8
  store i64 %6, i64* %__n.addr.i.i, align 8
  store i8* null, i8** %.addr.i.i, align 8
  %this1.i.i7 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %this.addr.i.i6, align 8
  %7 = load i64, i64* %__n.addr.i.i, align 8
  store %"class.std::__1::allocator.17"* %this1.i.i7, %"class.std::__1::allocator.17"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %this.addr.i.i.i, align 8
  %cmp.i.i = icmp ugt i64 %7, 2305843009213693951
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit

if.then.i.i:                                      ; preds = %if.end
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0), i8** %__msg.addr.i.i.i, align 8
  %exception.i.i.i = call i8* @__cxa_allocate_exception(i64 16) #10
  %8 = bitcast i8* %exception.i.i.i to %"class.std::length_error"*
  %9 = load i8*, i8** %__msg.addr.i.i.i, align 8
  store %"class.std::length_error"* %8, %"class.std::length_error"** %this.addr.i.i.i.i, align 8
  store i8* %9, i8** %__s.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::length_error"*, %"class.std::length_error"** %this.addr.i.i.i.i, align 8
  %10 = load i8*, i8** %__s.addr.i.i.i.i, align 8
  store %"class.std::length_error"* %this1.i.i.i.i, %"class.std::length_error"** %this.addr.i.i.i.i.i, align 8
  store i8* %10, i8** %__s.addr.i.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::length_error"*, %"class.std::length_error"** %this.addr.i.i.i.i.i, align 8
  %11 = bitcast %"class.std::length_error"* %this1.i.i.i.i.i to %"class.std::logic_error"*
  %12 = load i8*, i8** %__s.addr.i.i.i.i.i, align 8
  invoke void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* %11, i8* %12)
          to label %_ZNSt12length_errorC1EPKc.exit.i.i.i unwind label %lpad.i.i.i

_ZNSt12length_errorC1EPKc.exit.i.i.i:             ; preds = %if.then.i.i
  %13 = bitcast %"class.std::length_error"* %this1.i.i.i.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %13, align 8
  call void @__cxa_throw(i8* %exception.i.i.i, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #14
  unreachable

lpad.i.i.i:                                       ; preds = %if.then.i.i
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot.i.i.i, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot.i.i.i, align 4
  call void @__cxa_free_exception(i8* %exception.i.i.i) #10
  %exn.i.i.i = load i8*, i8** %exn.slot.i.i.i, align 8
  %sel.i.i.i = load i32, i32* %ehselector.slot.i.i.i, align 4
  %lpad.val.i.i.i = insertvalue { i8*, i32 } undef, i8* %exn.i.i.i, 0
  %lpad.val1.i.i.i = insertvalue { i8*, i32 } %lpad.val.i.i.i, i32 %sel.i.i.i, 1
  resume { i8*, i32 } %lpad.val1.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE8allocateERS5_m.exit: ; preds = %if.end
  %17 = load i64, i64* %__n.addr.i.i, align 8
  %mul.i.i = mul i64 %17, 8
  store i64 %mul.i.i, i64* %__size.addr.i.i.i, align 8
  %18 = load i64, i64* %__size.addr.i.i.i, align 8
  %call.i.i.i = call i8* @_Znwm(i64 %18) #11
  %19 = bitcast i8* %call.i.i.i to %"class.checker::Schedule"**
  %20 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %20, i32 0, i32 1
  store %"class.checker::Schedule"** %19, %"class.checker::Schedule"*** %__end_, align 8
  %21 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %21, i32 0, i32 0
  store %"class.checker::Schedule"** %19, %"class.checker::Schedule"*** %__begin_, align 8
  %22 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__begin_4 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %22, i32 0, i32 0
  %23 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_4, align 8
  %24 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %23, i64 %24
  %25 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %25, %"class.std::__1::__vector_base"** %this.addr.i9, align 8
  %this1.i10 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i9, align 8
  %__end_cap_.i11 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i10, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i11, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i8, align 8
  %this1.i.i12 = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i8, align 8
  %26 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i12 to %"struct.std::__1::__compressed_pair_elem.15"*
  %call.i.i13 = call dereferenceable(8) %"class.checker::Schedule"*** @_ZNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.15"* %26) #10
  store %"class.checker::Schedule"** %add.ptr, %"class.checker::Schedule"*** %call.i.i13, align 8
  store %"class.std::__1::vector"* %this1, %"class.std::__1::vector"** %this.addr.i19, align 8
  store i64 0, i64* %__current_size.addr.i, align 8
  %this1.i20 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i19, align 8
  store %"class.std::__1::vector"* %this1.i20, %"class.std::__1::vector"** %this.addr.i.i18, align 8
  %this1.i.i21 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i.i18, align 8
  %27 = bitcast %"class.std::__1::vector"* %this1.i.i21 to %"class.std::__1::__vector_base"*
  %__begin_.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %27, i32 0, i32 0
  %28 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i, align 8
  store %"class.checker::Schedule"** %28, %"class.checker::Schedule"*** %__p.addr.i.i.i, align 8
  %29 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i.i.i, align 8
  %30 = bitcast %"class.checker::Schedule"** %29 to i8*
  store %"class.std::__1::vector"* %this1.i20, %"class.std::__1::vector"** %this.addr.i17.i, align 8
  %this1.i18.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i17.i, align 8
  %31 = bitcast %"class.std::__1::vector"* %this1.i18.i to %"class.std::__1::__vector_base"*
  %__begin_.i19.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %31, i32 0, i32 0
  %32 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i19.i, align 8
  store %"class.checker::Schedule"** %32, %"class.checker::Schedule"*** %__p.addr.i.i16.i, align 8
  %33 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i.i16.i, align 8
  store %"class.std::__1::vector"* %this1.i20, %"class.std::__1::vector"** %this.addr.i27.i, align 8
  %this1.i28.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i27.i, align 8
  %34 = bitcast %"class.std::__1::vector"* %this1.i28.i to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %34, %"class.std::__1::__vector_base"** %this.addr.i.i26.i, align 8
  %this1.i.i29.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i26.i, align 8
  store %"class.std::__1::__vector_base"* %this1.i.i29.i, %"class.std::__1::__vector_base"** %this.addr.i.i.i25.i, align 8
  %this1.i.i.i30.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i.i25.i, align 8
  %__end_cap_.i.i.i31.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i.i30.i, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i.i.i31.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i24.i, align 8
  %this1.i.i.i.i32.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i24.i, align 8
  %35 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i.i32.i to %"struct.std::__1::__compressed_pair_elem.15"*
  %call.i.i.i.i33.i = call dereferenceable(8) %"class.checker::Schedule"*** @_ZNKSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.15"* %35) #10
  %36 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %call.i.i.i.i33.i, align 8
  %__begin_.i.i34.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i29.i, i32 0, i32 0
  %37 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i34.i, align 8
  %sub.ptr.lhs.cast.i.i35.i = ptrtoint %"class.checker::Schedule"** %36 to i64
  %sub.ptr.rhs.cast.i.i36.i = ptrtoint %"class.checker::Schedule"** %37 to i64
  %sub.ptr.sub.i.i37.i = sub i64 %sub.ptr.lhs.cast.i.i35.i, %sub.ptr.rhs.cast.i.i36.i
  %sub.ptr.div.i.i38.i = sdiv exact i64 %sub.ptr.sub.i.i37.i, 8
  %add.ptr.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %33, i64 %sub.ptr.div.i.i38.i
  %38 = bitcast %"class.checker::Schedule"** %add.ptr.i to i8*
  store %"class.std::__1::vector"* %this1.i20, %"class.std::__1::vector"** %this.addr.i21.i, align 8
  %this1.i22.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i21.i, align 8
  %39 = bitcast %"class.std::__1::vector"* %this1.i22.i to %"class.std::__1::__vector_base"*
  %__begin_.i23.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %39, i32 0, i32 0
  %40 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i23.i, align 8
  store %"class.checker::Schedule"** %40, %"class.checker::Schedule"*** %__p.addr.i.i20.i, align 8
  %41 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i.i20.i, align 8
  store %"class.std::__1::vector"* %this1.i20, %"class.std::__1::vector"** %this.addr.i14.i, align 8
  %this1.i15.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i14.i, align 8
  %42 = bitcast %"class.std::__1::vector"* %this1.i15.i to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %42, %"class.std::__1::__vector_base"** %this.addr.i.i.i16, align 8
  %this1.i.i.i22 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i.i16, align 8
  store %"class.std::__1::__vector_base"* %this1.i.i.i22, %"class.std::__1::__vector_base"** %this.addr.i.i.i.i15, align 8
  %this1.i.i.i.i23 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i.i.i15, align 8
  %__end_cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i.i.i23, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i.i.i.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i.i14, align 8
  %this1.i.i.i.i.i24 = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i.i14, align 8
  %43 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i.i.i24 to %"struct.std::__1::__compressed_pair_elem.15"*
  %call.i.i.i.i.i = call dereferenceable(8) %"class.checker::Schedule"*** @_ZNKSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.15"* %43) #10
  %44 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %call.i.i.i.i.i, align 8
  %__begin_.i.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i.i22, i32 0, i32 0
  %45 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint %"class.checker::Schedule"** %44 to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint %"class.checker::Schedule"** %45 to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i64 %sub.ptr.sub.i.i.i, 8
  %add.ptr6.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %41, i64 %sub.ptr.div.i.i.i
  %46 = bitcast %"class.checker::Schedule"** %add.ptr6.i to i8*
  store %"class.std::__1::vector"* %this1.i20, %"class.std::__1::vector"** %this.addr.i11.i, align 8
  %this1.i12.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i11.i, align 8
  %47 = bitcast %"class.std::__1::vector"* %this1.i12.i to %"class.std::__1::__vector_base"*
  %__begin_.i13.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %47, i32 0, i32 0
  %48 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i13.i, align 8
  store %"class.checker::Schedule"** %48, %"class.checker::Schedule"*** %__p.addr.i.i10.i, align 8
  %49 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i.i10.i, align 8
  %50 = load i64, i64* %__current_size.addr.i, align 8
  %add.ptr8.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %49, i64 %50
  %51 = bitcast %"class.checker::Schedule"** %add.ptr8.i to i8*
  store %"class.std::__1::vector"* %this1.i20, %"class.std::__1::vector"** %this.addr.i9.i, align 8
  store i8* %30, i8** %.addr.i.i17, align 8
  store i8* %38, i8** %.addr1.i.i, align 8
  store i8* %46, i8** %.addr2.i.i, align 8
  store i8* %51, i8** %.addr3.i.i, align 8
  %this4.i.i = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr.i9.i, align 8
  ret void
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESA_SA_m(%"class.std::__1::vector"* %this, %"class.checker::Schedule"** %__first, %"class.checker::Schedule"** %__last, i64 %__n) #0 align 2 {
entry:
  %.addr.i6 = alloca %"class.std::__1::allocator.17"*, align 8
  %__begin1.addr.i = alloca %"class.checker::Schedule"**, align 8
  %__end1.addr.i = alloca %"class.checker::Schedule"**, align 8
  %__begin2.addr.i = alloca %"class.checker::Schedule"***, align 8
  %_Np.i = alloca i64, align 8
  %this.addr.i4 = alloca %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"*, align 8
  %this.addr.i.i2 = alloca %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"*, align 8
  %.addr.i.i = alloca %"class.std::__1::vector"*, align 8
  %.addr1.i.i = alloca i64, align 8
  %this.addr.i3 = alloca %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"*, align 8
  %.addr.i = alloca %"class.std::__1::vector"*, align 8
  %.addr1.i = alloca i64, align 8
  %this.addr.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %__first.addr = alloca %"class.checker::Schedule"**, align 8
  %__last.addr = alloca %"class.checker::Schedule"**, align 8
  %__n.addr = alloca i64, align 8
  %__a = alloca %"class.std::__1::allocator.17"*, align 8
  %__annotator = alloca %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator", align 1
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  store %"class.checker::Schedule"** %__first, %"class.checker::Schedule"*** %__first.addr, align 8
  store %"class.checker::Schedule"** %__last, %"class.checker::Schedule"*** %__last.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %0, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %__end_cap_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %1 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i to %"struct.std::__1::__compressed_pair_elem.16"*
  %call.i.i = call dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %1) #10
  store %"class.std::__1::allocator.17"* %call.i.i, %"class.std::__1::allocator.17"** %__a, align 8
  %2 = load i64, i64* %__n.addr, align 8
  store %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"* %__annotator, %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"** %this.addr.i3, align 8
  store %"class.std::__1::vector"* %this1, %"class.std::__1::vector"** %.addr.i, align 8
  store i64 %2, i64* %.addr1.i, align 8
  %this2.i = load %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"*, %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"** %this.addr.i3, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %.addr.i, align 8
  %4 = load i64, i64* %.addr1.i, align 8
  store %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"* %this2.i, %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"** %this.addr.i.i2, align 8
  store %"class.std::__1::vector"* %3, %"class.std::__1::vector"** %.addr.i.i, align 8
  store i64 %4, i64* %.addr1.i.i, align 8
  %this2.i.i = load %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"*, %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"** %this.addr.i.i2, align 8
  %5 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a, align 8
  %6 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__first.addr, align 8
  %7 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__last.addr, align 8
  %8 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  %__end_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %8, i32 0, i32 1
  store %"class.std::__1::allocator.17"* %5, %"class.std::__1::allocator.17"** %.addr.i6, align 8
  store %"class.checker::Schedule"** %6, %"class.checker::Schedule"*** %__begin1.addr.i, align 8
  store %"class.checker::Schedule"** %7, %"class.checker::Schedule"*** %__end1.addr.i, align 8
  store %"class.checker::Schedule"*** %__end_, %"class.checker::Schedule"**** %__begin2.addr.i, align 8
  %9 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__end1.addr.i, align 8
  %10 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin1.addr.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint %"class.checker::Schedule"** %9 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %"class.checker::Schedule"** %10 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 8
  store i64 %sub.ptr.div.i, i64* %_Np.i, align 8
  %11 = load i64, i64* %_Np.i, align 8
  %cmp.i = icmp sgt i64 %11, 0
  br i1 %cmp.i, label %if.then.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE25__construct_range_forwardIS4_EENS_9enable_ifIXaaoosr7is_sameIS5_NS1_IT_EEEE5valuentsr15__has_constructIS5_PS9_S9_EE5valuesr31is_trivially_move_constructibleIS9_EE5valueEvE4typeERS5_SB_SB_RSB_.exit

if.then.i:                                        ; preds = %entry
  %12 = load %"class.checker::Schedule"***, %"class.checker::Schedule"**** %__begin2.addr.i, align 8
  %13 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %12, align 8
  %14 = bitcast %"class.checker::Schedule"** %13 to i8*
  %15 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin1.addr.i, align 8
  %16 = bitcast %"class.checker::Schedule"** %15 to i8*
  %17 = load i64, i64* %_Np.i, align 8
  %mul.i = mul i64 %17, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %mul.i, i32 8, i1 false) #10
  %18 = load i64, i64* %_Np.i, align 8
  %19 = load %"class.checker::Schedule"***, %"class.checker::Schedule"**** %__begin2.addr.i, align 8
  %20 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %19, align 8
  %add.ptr.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %20, i64 %18
  store %"class.checker::Schedule"** %add.ptr.i, %"class.checker::Schedule"*** %19, align 8
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE25__construct_range_forwardIS4_EENS_9enable_ifIXaaoosr7is_sameIS5_NS1_IT_EEEE5valuentsr15__has_constructIS5_PS9_S9_EE5valuesr31is_trivially_move_constructibleIS9_EE5valueEvE4typeERS5_SB_SB_RSB_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIPN7checker8ScheduleEEEE25__construct_range_forwardIS4_EENS_9enable_ifIXaaoosr7is_sameIS5_NS1_IT_EEEE5valuentsr15__has_constructIS5_PS9_S9_EE5valuesr31is_trivially_move_constructibleIS9_EE5valueEvE4typeERS5_SB_SB_RSB_.exit: ; preds = %entry, %if.then.i
  store %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"* %__annotator, %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"** %this.addr.i4, align 8
  %this1.i5 = load %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"*, %"struct.std::__1::vector<checker::Schedule *, std::__1::allocator<checker::Schedule *> >::__RAII_IncreaseAnnotator"** %this.addr.i4, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev(%"class.std::__1::__vector_base"* %this) unnamed_addr #2 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %__ptr.addr.i.i.i = alloca i8*, align 8
  %this.addr.i.i15 = alloca %"class.std::__1::allocator.17"*, align 8
  %__p.addr.i.i = alloca %"class.checker::Schedule"**, align 8
  %.addr.i.i = alloca i64, align 8
  %__a.addr.i = alloca %"class.std::__1::allocator.17"*, align 8
  %__p.addr.i = alloca %"class.checker::Schedule"**, align 8
  %__n.addr.i = alloca i64, align 8
  %this.addr.i.i.i8 = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i.i9 = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i10 = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i.i4 = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i5 = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %__p.addr.i.i.i.i.i = alloca %"class.checker::Schedule"**, align 8
  %0 = alloca %"struct.std::__1::integral_constant.25", align 1
  %__a.addr.i.i.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %__p.addr.i.i.i.i = alloca %"class.checker::Schedule"**, align 8
  %__a.addr.i.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %__p.addr.i4.i.i = alloca %"class.checker::Schedule"**, align 8
  %agg.tmp.i.i.i = alloca %"struct.std::__1::integral_constant.25", align 1
  %ref.tmp.i.i.i = alloca %"struct.std::__1::__has_destroy", align 1
  %__p.addr.i.i.i = alloca %"class.checker::Schedule"**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr.i.i = alloca %"class.std::__1::__vector_base"*, align 8
  %__new_last.addr.i.i = alloca %"class.checker::Schedule"**, align 8
  %__soon_to_be_end.i.i = alloca %"class.checker::Schedule"**, align 8
  %this.addr.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr = alloca %"class.std::__1::__vector_base"*, align 8
  store %"class.std::__1::__vector_base"* %this, %"class.std::__1::__vector_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  %1 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_, align 8
  %cmp = icmp ne %"class.checker::Schedule"** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %"class.std::__1::__vector_base"* %this1, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %__begin_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i, i32 0, i32 0
  %2 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i, align 8
  store %"class.std::__1::__vector_base"* %this1.i, %"class.std::__1::__vector_base"** %this.addr.i.i, align 8
  store %"class.checker::Schedule"** %2, %"class.checker::Schedule"*** %__new_last.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i, align 8
  %__end_.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i, i32 0, i32 1
  %3 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__end_.i.i, align 8
  store %"class.checker::Schedule"** %3, %"class.checker::Schedule"*** %__soon_to_be_end.i.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %if.then
  %4 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__new_last.addr.i.i, align 8
  %5 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__soon_to_be_end.i.i, align 8
  %cmp.i.i = icmp ne %"class.checker::Schedule"** %4, %5
  br i1 %cmp.i.i, label %while.body.i.i, label %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  store %"class.std::__1::__vector_base"* %this1.i.i, %"class.std::__1::__vector_base"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i.i, align 8
  %__end_cap_.i.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i.i, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i.i.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i.i, align 8
  %6 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.16"*
  %call.i.i.i.i = call dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %6) #10
  %7 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__soon_to_be_end.i.i, align 8
  %incdec.ptr.i.i = getelementptr inbounds %"class.checker::Schedule"*, %"class.checker::Schedule"** %7, i32 -1
  store %"class.checker::Schedule"** %incdec.ptr.i.i, %"class.checker::Schedule"*** %__soon_to_be_end.i.i, align 8
  store %"class.checker::Schedule"** %incdec.ptr.i.i, %"class.checker::Schedule"*** %__p.addr.i.i.i, align 8
  %8 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i.i.i, align 8
  store %"class.std::__1::allocator.17"* %call.i.i.i.i, %"class.std::__1::allocator.17"** %__a.addr.i.i.i, align 8
  store %"class.checker::Schedule"** %8, %"class.checker::Schedule"*** %__p.addr.i4.i.i, align 8
  %9 = bitcast %"struct.std::__1::__has_destroy"* %ref.tmp.i.i.i to %"struct.std::__1::integral_constant.25"*
  %10 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i.i.i, align 8
  %11 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i4.i.i, align 8
  store %"class.std::__1::allocator.17"* %10, %"class.std::__1::allocator.17"** %__a.addr.i.i.i.i, align 8
  store %"class.checker::Schedule"** %11, %"class.checker::Schedule"*** %__p.addr.i.i.i.i, align 8
  %12 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i.i.i.i, align 8
  %13 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i.i.i.i, align 8
  store %"class.std::__1::allocator.17"* %12, %"class.std::__1::allocator.17"** %this.addr.i.i.i.i.i, align 8
  store %"class.checker::Schedule"** %13, %"class.checker::Schedule"*** %__p.addr.i.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %this.addr.i.i.i.i.i, align 8
  br label %while.cond.i.i

_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv.exit: ; preds = %while.cond.i.i
  %14 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__new_last.addr.i.i, align 8
  %__end_3.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i, i32 0, i32 1
  store %"class.checker::Schedule"** %14, %"class.checker::Schedule"*** %__end_3.i.i, align 8
  store %"class.std::__1::__vector_base"* %this1, %"class.std::__1::__vector_base"** %this.addr.i5, align 8
  %this1.i6 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i5, align 8
  %__end_cap_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i6, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i4, align 8
  %this1.i.i7 = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i4, align 8
  %15 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i7 to %"struct.std::__1::__compressed_pair_elem.16"*
  %call.i.i = call dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %15) #10
  %__begin_2 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1, i32 0, i32 0
  %16 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_2, align 8
  store %"class.std::__1::__vector_base"* %this1, %"class.std::__1::__vector_base"** %this.addr.i10, align 8
  %this1.i11 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i10, align 8
  store %"class.std::__1::__vector_base"* %this1.i11, %"class.std::__1::__vector_base"** %this.addr.i.i9, align 8
  %this1.i.i12 = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i.i9, align 8
  %__end_cap_.i.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i.i12, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i8, align 8
  %this1.i.i.i13 = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i.i8, align 8
  %17 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i.i13 to %"struct.std::__1::__compressed_pair_elem.15"*
  %call.i.i.i = call dereferenceable(8) %"class.checker::Schedule"*** @_ZNKSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.15"* %17) #10
  %18 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %call.i.i.i, align 8
  %__begin_.i14 = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i11, i32 0, i32 0
  %19 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__begin_.i14, align 8
  %sub.ptr.lhs.cast.i = ptrtoint %"class.checker::Schedule"** %18 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %"class.checker::Schedule"** %19 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 8
  store %"class.std::__1::allocator.17"* %call.i.i, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  store %"class.checker::Schedule"** %16, %"class.checker::Schedule"*** %__p.addr.i, align 8
  store i64 %sub.ptr.div.i, i64* %__n.addr.i, align 8
  %20 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  %21 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i, align 8
  %22 = load i64, i64* %__n.addr.i, align 8
  store %"class.std::__1::allocator.17"* %20, %"class.std::__1::allocator.17"** %this.addr.i.i15, align 8
  store %"class.checker::Schedule"** %21, %"class.checker::Schedule"*** %__p.addr.i.i, align 8
  store i64 %22, i64* %.addr.i.i, align 8
  %this1.i.i16 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %this.addr.i.i15, align 8
  %23 = load %"class.checker::Schedule"**, %"class.checker::Schedule"*** %__p.addr.i.i, align 8
  %24 = bitcast %"class.checker::Schedule"** %23 to i8*
  store i8* %24, i8** %__ptr.addr.i.i.i, align 8
  %25 = load i8*, i8** %__ptr.addr.i.i.i, align 8
  call void @_ZdlPv(i8* %25) #12
  br label %if.end

if.end:                                           ; preds = %_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEE5clearEv.exit, %entry
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.16"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.16"* %this, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.16"*, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.16"* %this1 to %"class.std::__1::allocator.17"*
  ret %"class.std::__1::allocator.17"* %0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EEC2IRKS5_vEEOT_(%"struct.std::__1::__compressed_pair_elem.16"* %this, %"class.std::__1::allocator.17"* dereferenceable(1) %__u) unnamed_addr #2 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::allocator.17"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.16"*, align 8
  %__u.addr = alloca %"class.std::__1::allocator.17"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.16"* %this, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  store %"class.std::__1::allocator.17"* %__u, %"class.std::__1::allocator.17"** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.16"*, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.16"* %this1 to %"class.std::__1::allocator.17"*
  %1 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__u.addr, align 8
  store %"class.std::__1::allocator.17"* %1, %"class.std::__1::allocator.17"** %__t.addr.i, align 8
  %2 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__t.addr.i, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i64 @_ZNKSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEE8max_sizeEv(%"class.std::__1::vector"* %this) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i.i.i6 = alloca %"struct.std::__1::__less"*, align 8
  %__x.addr.i.i.i = alloca i64*, align 8
  %__y.addr.i.i.i = alloca i64*, align 8
  %__comp.i.i = alloca %"struct.std::__1::__less", align 1
  %__a.addr.i.i7 = alloca i64*, align 8
  %__b.addr.i.i = alloca i64*, align 8
  %__a.addr.i8 = alloca i64*, align 8
  %__b.addr.i = alloca i64*, align 8
  %agg.tmp.i9 = alloca %"struct.std::__1::__less", align 1
  %this.addr.i.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %0 = alloca %"struct.std::__1::integral_constant.25", align 1
  %__a.addr.i.i = alloca %"class.std::__1::allocator.17"*, align 8
  %__a.addr.i = alloca %"class.std::__1::allocator.17"*, align 8
  %agg.tmp.i = alloca %"struct.std::__1::integral_constant.25", align 1
  %ref.tmp.i = alloca %"struct.std::__1::__has_max_size", align 1
  %this.addr.i.i = alloca %"class.std::__1::__compressed_pair.14"*, align 8
  %this.addr.i = alloca %"class.std::__1::__vector_base"*, align 8
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %1 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  store %"class.std::__1::__vector_base"* %1, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::__vector_base"*, %"class.std::__1::__vector_base"** %this.addr.i, align 8
  %__end_cap_.i = getelementptr inbounds %"class.std::__1::__vector_base", %"class.std::__1::__vector_base"* %this1.i, i32 0, i32 2
  store %"class.std::__1::__compressed_pair.14"* %__end_cap_.i, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::__compressed_pair.14"*, %"class.std::__1::__compressed_pair.14"** %this.addr.i.i, align 8
  %2 = bitcast %"class.std::__1::__compressed_pair.14"* %this1.i.i to %"struct.std::__1::__compressed_pair_elem.16"*
  %call.i.i = call dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %2) #10
  store %"class.std::__1::allocator.17"* %call.i.i, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  %3 = bitcast %"struct.std::__1::__has_max_size"* %ref.tmp.i to %"struct.std::__1::integral_constant.25"*
  %4 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i, align 8
  store %"class.std::__1::allocator.17"* %4, %"class.std::__1::allocator.17"** %__a.addr.i.i, align 8
  %5 = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %__a.addr.i.i, align 8
  store %"class.std::__1::allocator.17"* %5, %"class.std::__1::allocator.17"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::allocator.17"*, %"class.std::__1::allocator.17"** %this.addr.i.i.i, align 8
  store i64 2305843009213693951, i64* %ref.tmp, align 8
  store i64 9223372036854775807, i64* %ref.tmp3, align 8
  store i64* %ref.tmp, i64** %__a.addr.i8, align 8
  store i64* %ref.tmp3, i64** %__b.addr.i, align 8
  %6 = load i64*, i64** %__a.addr.i8, align 8
  %7 = load i64*, i64** %__b.addr.i, align 8
  store i64* %6, i64** %__a.addr.i.i7, align 8
  store i64* %7, i64** %__b.addr.i.i, align 8
  %8 = load i64*, i64** %__b.addr.i.i, align 8
  %9 = load i64*, i64** %__a.addr.i.i7, align 8
  store %"struct.std::__1::__less"* %__comp.i.i, %"struct.std::__1::__less"** %this.addr.i.i.i6, align 8
  store i64* %8, i64** %__x.addr.i.i.i, align 8
  store i64* %9, i64** %__y.addr.i.i.i, align 8
  %this1.i.i.i10 = load %"struct.std::__1::__less"*, %"struct.std::__1::__less"** %this.addr.i.i.i6, align 8
  %10 = load i64*, i64** %__x.addr.i.i.i, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** %__y.addr.i.i.i, align 8
  %13 = load i64, i64* %12, align 8
  %cmp.i.i.i = icmp ult i64 %11, %13
  br i1 %cmp.i.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %entry
  %14 = load i64*, i64** %__b.addr.i.i, align 8
  br label %_ZNSt3__13minImEERKT_S3_S3_.exit

cond.false.i.i:                                   ; preds = %entry
  %15 = load i64*, i64** %__a.addr.i.i7, align 8
  br label %_ZNSt3__13minImEERKT_S3_S3_.exit

_ZNSt3__13minImEERKT_S3_S3_.exit:                 ; preds = %cond.true.i.i, %cond.false.i.i
  %cond-lvalue.i.i = phi i64* [ %14, %cond.true.i.i ], [ %15, %cond.false.i.i ]
  br label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt3__13minImEERKT_S3_S3_.exit
  %16 = load i64, i64* %cond-lvalue.i.i, align 8
  ret i64 %16

terminate.lpad:                                   ; No predecessors!
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #13
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) #9

declare i8* @__cxa_allocate_exception(i64)

declare void @__cxa_free_exception(i8*)

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(%"class.std::length_error"*) unnamed_addr #3

declare void @__cxa_throw(i8*, i8*, i8*)

declare void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"*, i8*) unnamed_addr #1

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"class.std::__1::allocator.17"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPN7checker8ScheduleEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.16"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.16"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.16"* %this, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.16"*, %"struct.std::__1::__compressed_pair_elem.16"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.16"* %this1 to %"class.std::__1::allocator.17"*
  ret %"class.std::__1::allocator.17"* %0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.checker::Schedule"*** @_ZNSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.15"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.15"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.15"* %this, %"struct.std::__1::__compressed_pair_elem.15"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.15"*, %"struct.std::__1::__compressed_pair_elem.15"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.15", %"struct.std::__1::__compressed_pair_elem.15"* %this1, i32 0, i32 0
  ret %"class.checker::Schedule"*** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.checker::Schedule"*** @_ZNKSt3__122__compressed_pair_elemIPPN7checker8ScheduleELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.15"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.15"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.15"* %this, %"struct.std::__1::__compressed_pair_elem.15"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.15"*, %"struct.std::__1::__compressed_pair_elem.15"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.15", %"struct.std::__1::__compressed_pair_elem.15"* %this1, i32 0, i32 0
  ret %"class.checker::Schedule"*** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev(%"class.std::__1::vector"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %this, %"class.std::__1::vector"** %this.addr, align 8
  %this1 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::vector"* %this1 to %"class.std::__1::__vector_base"*
  call void @_ZNSt3__113__vector_baseIPN7checker8ScheduleENS_9allocatorIS3_EEED2Ev(%"class.std::__1::__vector_base"* %0) #10
  ret void
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i12.i.i.i115 = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i116 = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i117 = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i6.i.i.i118 = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i.i119 = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i120 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i.i121 = alloca %"class.std::__1::__thread_struct"*, align 8
  %__tmp.i.i.i122 = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i123 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i124 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i12.i.i.i86 = alloca %"struct.std::__1::default_delete.34"*, align 8
  %__ptr.addr.i.i.i.i87 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i88 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i6.i.i.i89 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i.i90 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i91 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i.i.i92 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i93 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i94 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i95 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i12.i.i.i59 = alloca %"struct.std::__1::default_delete.34"*, align 8
  %__ptr.addr.i.i.i.i60 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i61 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i6.i.i.i62 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i.i63 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i64 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i.i.i65 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i66 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i67 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i68 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i53 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i54 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__t.i = alloca %"class.std::__1::tuple"*, align 8
  %__t.addr.i51 = alloca %struct._opaque_pthread_t**, align 8
  %__func.addr.i = alloca i8* (i8*)*, align 8
  %__arg.addr.i = alloca i8*, align 8
  %this.addr.i.i47 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i48 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__t.addr.i.i.i.i.i33 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i.i34 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %__t.addr.i.i.i.i35 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i36 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %__t.addr.i.i.i37 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i38 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i.i39 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i40 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i41 = alloca %"class.std::__1::tuple"*, align 8
  %__t.addr.i8.i.i = alloca void ()**, align 8
  %__t.addr.i3.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__t.addr.i.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i10.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %__t1.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %__t2.addr.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr.i11.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %__t1.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %__t2.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__t.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr.i.i4.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i5.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i4.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %ref.tmp.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i.i10.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i11.i.i.i.i = alloca %"class.std::__1::__tuple_leaf"*, align 8
  %__t.addr.i12.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i9.i.i.i.i = alloca void ()**, align 8
  %__t.addr.i.i.i.i.i.i = alloca void ()**, align 8
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::__tuple_leaf.32"*, align 8
  %__t.addr.i8.i.i.i.i = alloca void ()**, align 8
  %__t.addr.i.i.i.i.i27 = alloca %"class.std::__1::unique_ptr"*, align 8
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.36", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.37", align 1
  %this.addr.i.i.i.i28 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %__u.addr.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr5.i.i.i.i = alloca void ()**, align 8
  %4 = alloca %"struct.std::__1::__tuple_indices", align 1
  %5 = alloca %"struct.std::__1::__tuple_types", align 1
  %6 = alloca %"struct.std::__1::__tuple_indices.36", align 1
  %7 = alloca %"struct.std::__1::__tuple_types.37", align 1
  %this.addr.i.i.i29 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %__u.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr5.i.i.i = alloca void ()**, align 8
  %__t.addr.i.i.i30 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i.i31 = alloca %"class.std::__1::tuple"*, align 8
  %__u.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr2.i.i = alloca void ()**, align 8
  %agg.tmp.i.i = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp4.i.i = alloca %"struct.std::__1::__tuple_types", align 1
  %agg.tmp5.i.i = alloca %"struct.std::__1::__tuple_indices.36", align 1
  %agg.tmp6.i.i = alloca %"struct.std::__1::__tuple_types.37", align 1
  %this.addr.i32 = alloca %"class.std::__1::tuple"*, align 8
  %__u.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr2.i = alloca void ()**, align 8
  %__t.addr.i.i = alloca void ()*, align 8
  %__t.addr.i26 = alloca void ()*, align 8
  %__t.addr.i25 = alloca void ()*, align 8
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i.i17 = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i18 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i19 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i20 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %__t.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %__t.addr.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr = alloca %"class.std::__1::thread"*, align 8
  %__f.addr = alloca void ()*, align 8
  %__tsp = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__p = alloca %"class.std::__1::unique_ptr.29", align 8
  %ref.tmp = alloca void ()*, align 8
  %__ec = alloca i32, align 4
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  store void ()* %__f, void ()** %__f.addr, align 8
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 8) #11
  %8 = bitcast i8* %call to %"class.std::__1::__thread_struct"*
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* %8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  store %"class.std::__1::__thread_struct"* %8, %"class.std::__1::__thread_struct"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  %9 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  store %"class.std::__1::__thread_struct"* %9, %"class.std::__1::__thread_struct"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %__p.addr.i.i, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i, align 8
  %10 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.26"* %this1.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %10, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i, align 8
  %11 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %12 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %12, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  %13 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.27"* %11, %"class.std::__1::__thread_struct"** dereferenceable(8) %13) #10
  %14 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.28"*
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %15 = bitcast i8* %call4 to %"class.std::__1::tuple"*
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %__t.addr.i, align 8
  %16 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i, align 8
  %17 = load void ()*, void ()** %__f.addr, align 8
  store void ()* %17, void ()** %__t.addr.i25, align 8
  %18 = load void ()*, void ()** %__t.addr.i25, align 8
  store void ()* %18, void ()** %__t.addr.i26, align 8
  %19 = load void ()*, void ()** %__t.addr.i26, align 8
  store void ()* %19, void ()** %__t.addr.i.i, align 8
  %20 = load void ()*, void ()** %__t.addr.i.i, align 8
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %invoke.cont3
  store void ()* %20, void ()** %ref.tmp, align 8
  store %"class.std::__1::tuple"* %15, %"class.std::__1::tuple"** %this.addr.i32, align 8
  store %"class.std::__1::unique_ptr"* %16, %"class.std::__1::unique_ptr"** %__u.addr.i, align 8
  store void ()** %ref.tmp, void ()*** %__u.addr2.i, align 8
  %this3.i = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr.i32, align 8
  %21 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i, align 8
  %22 = load void ()**, void ()*** %__u.addr2.i, align 8
  store %"class.std::__1::tuple"* %this3.i, %"class.std::__1::tuple"** %this.addr.i.i31, align 8
  store %"class.std::__1::unique_ptr"* %21, %"class.std::__1::unique_ptr"** %__u.addr.i.i, align 8
  store void ()** %22, void ()*** %__u.addr2.i.i, align 8
  %this3.i.i = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr.i.i31, align 8
  %base_.i.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %this3.i.i, i32 0, i32 0
  %23 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i, align 8
  store %"class.std::__1::unique_ptr"* %23, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, align 8
  %24 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i30, align 8
  %25 = load void ()**, void ()*** %__u.addr2.i.i, align 8
  store void ()** %25, void ()*** %__t.addr.i8.i.i, align 8
  %26 = load void ()**, void ()*** %__t.addr.i8.i.i, align 8
  store %"struct.std::__1::__tuple_impl"* %base_.i.i, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, align 8
  store %"class.std::__1::unique_ptr"* %24, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, align 8
  store void ()** %26, void ()*** %__u.addr5.i.i.i, align 8
  %this6.i.i.i = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i29, align 8
  %27 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i, align 8
  %28 = load void ()**, void ()*** %__u.addr5.i.i.i, align 8
  store %"struct.std::__1::__tuple_impl"* %this6.i.i.i, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, align 8
  store %"class.std::__1::unique_ptr"* %27, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, align 8
  store void ()** %28, void ()*** %__u.addr5.i.i.i.i, align 8
  %this6.i.i.i.i = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr.i.i.i.i28, align 8
  %29 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to %"class.std::__1::__tuple_leaf"*
  %30 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %30, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, align 8
  %31 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i.i.i.i27, align 8
  store %"class.std::__1::__tuple_leaf"* %29, %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %31, %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, align 8
  %this1.i13.i.i.i.i = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr.i11.i.i.i.i, align 8
  %value.i14.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1.i13.i.i.i.i, i32 0, i32 0
  %32 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i12.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %32, %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, align 8
  %33 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__t.addr.i.i10.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %value.i14.i.i.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %33, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i, align 8
  %34 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %34, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i, align 8
  %__ptr_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i, i32 0, i32 0
  %35 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %35, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i.i.i.i.i.i, align 8
  %__ptr_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %36 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %36) #10
  %37 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %37, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8
  %__ptr_2.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_2.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %this1.i5.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %38 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i5.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i6.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %38) #10
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i.i.i.i.i.i.i.i, align 8
  %39 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %39, %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, align 8
  %40 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %40, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %this1.i6.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %__ptr_.i7.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i6.i.i.i.i.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i7.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %this1.i.i8.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %41 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i8.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.28"*
  %call.i.i9.i.i.i.i.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.28"* %41) #10
  store %"struct.std::__1::default_delete"* %call.i.i9.i.i.i.i.i.i.i, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  %42 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %42, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i12.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  %43 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  %44 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.26"* %this1.i12.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %43, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %44, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i13.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  %45 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %46 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %46, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  %47 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.27"* %45, %"class.std::__1::__thread_struct"** dereferenceable(8) %47) #10
  %48 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.28"*
  %49 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %49, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  %50 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.28"* %48, %"struct.std::__1::default_delete"* dereferenceable(1) %50) #10
  %51 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = bitcast i8* %52 to %"class.std::__1::__tuple_leaf.32"*
  %54 = load void ()**, void ()*** %__u.addr5.i.i.i.i, align 8
  store void ()** %54, void ()*** %__t.addr.i9.i.i.i.i, align 8
  %55 = load void ()**, void ()*** %__t.addr.i9.i.i.i.i, align 8
  store %"class.std::__1::__tuple_leaf.32"* %53, %"class.std::__1::__tuple_leaf.32"** %this.addr.i.i.i.i.i, align 8
  store void ()** %55, void ()*** %__t.addr.i8.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::__tuple_leaf.32"*, %"class.std::__1::__tuple_leaf.32"** %this.addr.i.i.i.i.i, align 8
  %value.i.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.32", %"class.std::__1::__tuple_leaf.32"* %this1.i.i.i.i.i, i32 0, i32 0
  %56 = load void ()**, void ()*** %__t.addr.i8.i.i.i.i, align 8
  store void ()** %56, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %57 = load void ()**, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %58 = load void ()*, void ()** %57, align 8
  store void ()* %58, void ()** %value.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i40, align 8
  store %"class.std::__1::tuple"* %15, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  %this1.i42 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i40, align 8
  %59 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i42, %"class.std::__1::unique_ptr.29"** %this.addr.i.i38, align 8
  store %"class.std::__1::tuple"* %59, %"class.std::__1::tuple"** %__p.addr.i.i39, align 8
  %this1.i.i43 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i38, align 8
  %__ptr_.i.i44 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i43, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i.i44, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i36, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i39, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  %this1.i.i.i45 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i36, align 8
  %60 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  store %"class.std::__1::__compressed_pair.30"* %this1.i.i.i45, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i34, align 8
  store %"class.std::__1::tuple"** %60, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  %this1.i.i.i.i46 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i34, align 8
  %61 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.31"*
  %62 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  store %"class.std::__1::tuple"** %62, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  %63 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.31"* %61, %"class.std::__1::tuple"** dereferenceable(8) %63) #10
  %64 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.33"*
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1, i32 0, i32 0
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i48, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i49, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i47, align 8
  %this1.i.i50 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i47, align 8
  %65 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i50 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %65) #10
  %66 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i, align 8
  %67 = bitcast %"class.std::__1::tuple"* %66 to i8*
  store %struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_t*** %__t.addr.i51, align 8
  store i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* (i8*)** %__func.addr.i, align 8
  store i8* %67, i8** %__arg.addr.i, align 8
  %68 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %__t.addr.i51, align 8
  %69 = load i8* (i8*)*, i8* (i8*)** %__func.addr.i, align 8
  %70 = load i8*, i8** %__arg.addr.i, align 8
  %call.i52 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %68, %struct._opaque_pthread_attr_t* null, i8* (i8*)* %69, i8* %70)
          to label %_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit unwind label %lpad11

_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit: ; preds = %invoke.cont8
  br label %invoke.cont12

invoke.cont12:                                    ; preds = %_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_.exit
  store i32 %call.i52, i32* %__ec, align 4
  %71 = load i32, i32* %__ec, align 4
  %cmp = icmp eq i32 %71, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont12
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i54, align 8
  %this1.i55 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i54, align 8
  %__ptr_.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i55, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i56, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i53, align 8
  %this1.i.i57 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i53, align 8
  %72 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i57 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %72) #10
  %73 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i58, align 8
  store %"class.std::__1::tuple"* %73, %"class.std::__1::tuple"** %__t.i, align 8
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i55, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_2.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i4.i, align 8
  %74 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i6.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %74) #10
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %call.i6.i, align 8
  %75 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.i, align 8
  br label %if.end

lpad:                                             ; preds = %entry
  %76 = landingpad { i8*, i32 }
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  store i8* %77, i8** %exn.slot, align 8
  %78 = extractvalue { i8*, i32 } %76, 1
  store i32 %78, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #12
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont
  %79 = landingpad { i8*, i32 }
          cleanup
  %80 = extractvalue { i8*, i32 } %79, 0
  store i8* %80, i8** %exn.slot, align 8
  %81 = extractvalue { i8*, i32 } %79, 1
  store i32 %81, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad7:                                            ; No predecessors!
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  store i8* %83, i8** %exn.slot, align 8
  %84 = extractvalue { i8*, i32 } %82, 1
  store i32 %84, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call4) #12
  br label %ehcleanup

lpad11:                                           ; preds = %invoke.cont8, %if.else
  %85 = landingpad { i8*, i32 }
          cleanup
  %86 = extractvalue { i8*, i32 } %85, 0
  store i8* %86, i8** %exn.slot, align 8
  %87 = extractvalue { i8*, i32 } %85, 1
  store i32 %87, i32* %ehselector.slot, align 4
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i68, align 8
  %this1.i69 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i68, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i69, %"class.std::__1::unique_ptr.29"** %this.addr.i.i67, align 8
  %this1.i.i70 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i67, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i.i70, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i64, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %this1.i.i.i71 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i64, align 8
  %__ptr_.i.i.i72 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i.i.i72, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i63, align 8
  %this1.i.i.i.i73 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i63, align 8
  %88 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i73 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i.i.i74 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %88) #10
  %89 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i74, align 8
  store %"class.std::__1::tuple"* %89, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  %90 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %__ptr_2.i.i.i75 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_2.i.i.i75, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i62, align 8
  %this1.i7.i.i.i76 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i62, align 8
  %91 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i7.i.i.i76 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i8.i.i.i77 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %91) #10
  store %"class.std::__1::tuple"* %90, %"class.std::__1::tuple"** %call.i8.i.i.i77, align 8
  %92 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  %tobool.i.i.i78 = icmp ne %"class.std::__1::tuple"* %92, null
  br i1 %tobool.i.i.i78, label %if.then.i.i.i84, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

if.then.i.i.i84:                                  ; preds = %lpad11
  %__ptr_4.i.i.i79 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_4.i.i.i79, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i61, align 8
  %this1.i10.i.i.i80 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i61, align 8
  %93 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i10.i.i.i80 to %"struct.std::__1::__compressed_pair_elem.33"*
  %call.i11.i.i.i81 = call dereferenceable(1) %"struct.std::__1::default_delete.34"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.33"* %93) #10
  %94 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  store %"struct.std::__1::default_delete.34"* %call.i11.i.i.i81, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i59, align 8
  store %"class.std::__1::tuple"* %94, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %this1.i13.i.i.i82 = load %"struct.std::__1::default_delete.34"*, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i59, align 8
  %95 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %isnull.i.i.i.i83 = icmp eq %"class.std::__1::tuple"* %95, null
  br i1 %isnull.i.i.i.i83, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i85

delete.notnull.i.i.i.i85:                         ; preds = %if.then.i.i.i84
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %95) #10
  %96 = bitcast %"class.std::__1::tuple"* %95 to i8*
  call void @_ZdlPv(i8* %96) #12
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i85, %if.then.i.i.i84
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad11, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont12
  %97 = load i32, i32* %__ec, align 4
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #14
          to label %invoke.cont15 unwind label %lpad11

invoke.cont15:                                    ; preds = %if.else
  unreachable

if.end:                                           ; preds = %if.then
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i95, align 8
  %this1.i96 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i95, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i96, %"class.std::__1::unique_ptr.29"** %this.addr.i.i94, align 8
  %this1.i.i97 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i94, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i.i97, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i91, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %this1.i.i.i98 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i91, align 8
  %__ptr_.i.i.i99 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i.i.i99, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i90, align 8
  %this1.i.i.i.i100 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i90, align 8
  %98 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i100 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i.i.i101 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %98) #10
  %99 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i101, align 8
  store %"class.std::__1::tuple"* %99, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  %100 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %__ptr_2.i.i.i102 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_2.i.i.i102, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i89, align 8
  %this1.i7.i.i.i103 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i89, align 8
  %101 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i7.i.i.i103 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i8.i.i.i104 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %101) #10
  store %"class.std::__1::tuple"* %100, %"class.std::__1::tuple"** %call.i8.i.i.i104, align 8
  %102 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  %tobool.i.i.i105 = icmp ne %"class.std::__1::tuple"* %102, null
  br i1 %tobool.i.i.i105, label %if.then.i.i.i111, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114

if.then.i.i.i111:                                 ; preds = %if.end
  %__ptr_4.i.i.i106 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_4.i.i.i106, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i88, align 8
  %this1.i10.i.i.i107 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i88, align 8
  %103 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i10.i.i.i107 to %"struct.std::__1::__compressed_pair_elem.33"*
  %call.i11.i.i.i108 = call dereferenceable(1) %"struct.std::__1::default_delete.34"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.33"* %103) #10
  %104 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  store %"struct.std::__1::default_delete.34"* %call.i11.i.i.i108, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i86, align 8
  store %"class.std::__1::tuple"* %104, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %this1.i13.i.i.i109 = load %"struct.std::__1::default_delete.34"*, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i86, align 8
  %105 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %isnull.i.i.i.i110 = icmp eq %"class.std::__1::tuple"* %105, null
  br i1 %isnull.i.i.i.i110, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113, label %delete.notnull.i.i.i.i112

delete.notnull.i.i.i.i112:                        ; preds = %if.then.i.i.i111
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %105) #10
  %106 = bitcast %"class.std::__1::tuple"* %105 to i8*
  call void @_ZdlPv(i8* %106) #12
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113: ; preds = %delete.notnull.i.i.i.i112, %if.then.i.i.i111
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114: ; preds = %if.end, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i124, align 8
  %this1.i125 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i124, align 8
  store %"class.std::__1::unique_ptr"* %this1.i125, %"class.std::__1::unique_ptr"** %this.addr.i.i123, align 8
  %this1.i.i126 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i123, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i126, %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8
  %this1.i.i.i127 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i120, align 8
  %__ptr_.i.i.i128 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i.i.i128, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i119, align 8
  %this1.i.i.i.i129 = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i119, align 8
  %107 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i.i.i129 to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i.i.i.i130 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %107) #10
  %108 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i130, align 8
  store %"class.std::__1::__thread_struct"* %108, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  %109 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8
  %__ptr_2.i.i.i131 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_2.i.i.i131, %"class.std::__1::__compressed_pair.26"** %this.addr.i6.i.i.i118, align 8
  %this1.i7.i.i.i132 = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i6.i.i.i118, align 8
  %110 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i7.i.i.i132 to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i8.i.i.i133 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %110) #10
  store %"class.std::__1::__thread_struct"* %109, %"class.std::__1::__thread_struct"** %call.i8.i.i.i133, align 8
  %111 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  %tobool.i.i.i134 = icmp ne %"class.std::__1::__thread_struct"* %111, null
  br i1 %tobool.i.i.i134, label %if.then.i.i.i140, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143

if.then.i.i.i140:                                 ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114
  %__ptr_4.i.i.i135 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_4.i.i.i135, %"class.std::__1::__compressed_pair.26"** %this.addr.i9.i.i.i117, align 8
  %this1.i10.i.i.i136 = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i9.i.i.i117, align 8
  %112 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i10.i.i.i136 to %"struct.std::__1::__compressed_pair_elem.28"*
  %call.i11.i.i.i137 = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.28"* %112) #10
  %113 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i137, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  store %"class.std::__1::__thread_struct"* %113, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8
  %this1.i13.i.i.i138 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  %114 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8
  %isnull.i.i.i.i139 = icmp eq %"class.std::__1::__thread_struct"* %114, null
  br i1 %isnull.i.i.i.i139, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142, label %delete.notnull.i.i.i.i141

delete.notnull.i.i.i.i141:                        ; preds = %if.then.i.i.i140
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %114) #10
  %115 = bitcast %"class.std::__1::__thread_struct"* %114 to i8*
  call void @_ZdlPv(i8* %115) #12
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142: ; preds = %delete.notnull.i.i.i.i141, %if.then.i.i.i140
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143: ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142
  ret void

ehcleanup:                                        ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, %lpad7, %lpad2
  store %"class.std::__1::unique_ptr"* %__tsp, %"class.std::__1::unique_ptr"** %this.addr.i20, align 8
  %this1.i21 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i20, align 8
  store %"class.std::__1::unique_ptr"* %this1.i21, %"class.std::__1::unique_ptr"** %this.addr.i.i19, align 8
  %this1.i.i22 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i19, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i22, %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %this1.i.i.i23 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i18, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i17, align 8
  %this1.i.i.i.i24 = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i17, align 8
  %116 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i.i.i24 to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %116) #10
  %117 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %117, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %118 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i6.i.i.i, align 8
  %119 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %119) #10
  store %"class.std::__1::__thread_struct"* %118, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8
  %120 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %120, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %ehcleanup
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i9.i.i.i, align 8
  %121 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.28"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.28"* %121) #10
  %122 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %122, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %123 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %123, null
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %123) #10
  %124 = bitcast %"class.std::__1::__thread_struct"* %123 to i8*
  call void @_ZdlPv(i8* %124) #12
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %ehcleanup, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  br label %eh.resume

eh.resume:                                        ; preds = %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val16 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val16
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i12.i.i.i40 = alloca %"struct.std::__1::default_delete.34"*, align 8
  %__ptr.addr.i.i.i.i41 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i42 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i6.i.i.i43 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i.i44 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i45 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i.i.i46 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i47 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i48 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i49 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__t.addr.i2.i = alloca void ()**, align 8
  %__t.addr.i.i.i36 = alloca void ()**, align 8
  %__f.addr.i.i = alloca void ()**, align 8
  %this.addr.i.i.i37 = alloca %"class.std::__1::__tuple_leaf.32"*, align 8
  %__t.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  %0 = alloca %"struct.std::__1::__tuple_indices.36", align 1
  %__t.addr.i38 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i30 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i31 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i24 = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i25 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete.34"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i.i16 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i.i.i17 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i18 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i19 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %this.addr.i.i14 = alloca %"class.std::__1::__tuple_leaf"*, align 8
  %__t.addr.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i10 = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %this.addr.i11 = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %__t.addr.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  %__t.addr.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr.i = alloca %"class.std::__1::tuple"*, align 8
  %__vp.addr = alloca i8*, align 8
  %__p = alloca %"class.std::__1::unique_ptr.29", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices.36", align 1
  store i8* %__vp, i8** %__vp.addr, align 8
  %1 = load i8*, i8** %__vp.addr, align 8
  %2 = bitcast i8* %1 to %"class.std::__1::tuple"*
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i, align 8
  %3 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i, %"class.std::__1::unique_ptr.29"** %this.addr.i.i, align 8
  store %"class.std::__1::tuple"* %3, %"class.std::__1::tuple"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i, align 8
  %4 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.30"* %this1.i.i.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %4, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.31"*
  %6 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %6, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  %7 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.31"* %5, %"class.std::__1::tuple"** dereferenceable(8) %7) #10
  %8 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.33"*
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i11, align 8
  %this1.i12 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i11, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i12, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i10, align 8
  %this1.i.i13 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i10, align 8
  %9 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i13 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %9) #10
  %10 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i, align 8
  br label %invoke.cont1

invoke.cont1:                                     ; preds = %invoke.cont
  store %"class.std::__1::tuple"* %10, %"class.std::__1::tuple"** %__t.addr.i, align 8
  %11 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i, align 8
  %base_.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %11, i32 0, i32 0
  %12 = bitcast %"struct.std::__1::__tuple_impl"* %base_.i to %"class.std::__1::__tuple_leaf"*
  store %"class.std::__1::__tuple_leaf"* %12, %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, align 8
  %this1.i.i15 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr.i.i14, align 8
  %value.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1.i.i15, i32 0, i32 0
  store %"class.std::__1::unique_ptr"* %value.i.i, %"class.std::__1::unique_ptr"** %this.addr.i25, align 8
  %this1.i26 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i25, align 8
  %__ptr_.i27 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i27, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i24, align 8
  %this1.i.i28 = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i24, align 8
  %13 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i28 to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i.i29 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %13) #10
  %14 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i29, align 8
  store %"class.std::__1::__thread_struct"* %14, %"class.std::__1::__thread_struct"** %__t.i, align 8
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_2.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i4.i, align 8
  %15 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i6.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %15) #10
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i, align 8
  %16 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i, align 8
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %call, %"class.std::__1::__thread_struct"* %16)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont1
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i31, align 8
  %this1.i32 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i31, align 8
  %__ptr_.i33 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i32, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i33, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i30, align 8
  %this1.i.i34 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i30, align 8
  %17 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i34 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i35 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %17) #10
  %18 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i35, align 8
  br label %invoke.cont6

invoke.cont6:                                     ; preds = %invoke.cont5
  store %"class.std::__1::tuple"* %18, %"class.std::__1::tuple"** %__t.addr.i38, align 8
  %19 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i38, align 8
  store %"class.std::__1::tuple"* %19, %"class.std::__1::tuple"** %__t.addr.i.i, align 8
  %20 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__t.addr.i.i, align 8
  %base_.i.i = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %20, i32 0, i32 0
  %21 = bitcast %"struct.std::__1::__tuple_impl"* %base_.i.i to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %21, i64 8
  %22 = bitcast i8* %add.ptr.i.i to %"class.std::__1::__tuple_leaf.32"*
  store %"class.std::__1::__tuple_leaf.32"* %22, %"class.std::__1::__tuple_leaf.32"** %this.addr.i.i.i37, align 8
  %this1.i.i.i39 = load %"class.std::__1::__tuple_leaf.32"*, %"class.std::__1::__tuple_leaf.32"** %this.addr.i.i.i37, align 8
  %value.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.32", %"class.std::__1::__tuple_leaf.32"* %this1.i.i.i39, i32 0, i32 0
  store void ()** %value.i.i.i, void ()*** %__t.addr.i2.i, align 8
  %23 = load void ()**, void ()*** %__t.addr.i2.i, align 8
  store void ()** %23, void ()*** %__f.addr.i.i, align 8
  %24 = load void ()**, void ()*** %__f.addr.i.i, align 8
  store void ()** %24, void ()*** %__t.addr.i.i.i36, align 8
  %25 = load void ()**, void ()*** %__t.addr.i.i.i36, align 8
  %26 = load void ()*, void ()** %25, align 8
  invoke void %26()
          to label %_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit unwind label %lpad

_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit: ; preds = %invoke.cont6
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE.exit
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i49, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i50, %"class.std::__1::unique_ptr.29"** %this.addr.i.i48, align 8
  %this1.i.i51 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i48, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i.i51, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i45, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %this1.i.i.i52 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i45, align 8
  %__ptr_.i.i.i53 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i.i.i53, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i44, align 8
  %this1.i.i.i.i54 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i44, align 8
  %27 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i54 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i.i.i55 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %27) #10
  %28 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i55, align 8
  store %"class.std::__1::tuple"* %28, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  %29 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %__ptr_2.i.i.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_2.i.i.i56, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i43, align 8
  %this1.i7.i.i.i57 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i43, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i7.i.i.i57 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i8.i.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %30) #10
  store %"class.std::__1::tuple"* %29, %"class.std::__1::tuple"** %call.i8.i.i.i58, align 8
  %31 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  %tobool.i.i.i59 = icmp ne %"class.std::__1::tuple"* %31, null
  br i1 %tobool.i.i.i59, label %if.then.i.i.i65, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68

if.then.i.i.i65:                                  ; preds = %invoke.cont8
  %__ptr_4.i.i.i60 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_4.i.i.i60, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i42, align 8
  %this1.i10.i.i.i61 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i42, align 8
  %32 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i10.i.i.i61 to %"struct.std::__1::__compressed_pair_elem.33"*
  %call.i11.i.i.i62 = call dereferenceable(1) %"struct.std::__1::default_delete.34"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.33"* %32) #10
  %33 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  store %"struct.std::__1::default_delete.34"* %call.i11.i.i.i62, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i40, align 8
  store %"class.std::__1::tuple"* %33, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %this1.i13.i.i.i63 = load %"struct.std::__1::default_delete.34"*, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i40, align 8
  %34 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %isnull.i.i.i.i64 = icmp eq %"class.std::__1::tuple"* %34, null
  br i1 %isnull.i.i.i.i64, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67, label %delete.notnull.i.i.i.i66

delete.notnull.i.i.i.i66:                         ; preds = %if.then.i.i.i65
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %34) #10
  %35 = bitcast %"class.std::__1::tuple"* %34 to i8*
  call void @_ZdlPv(i8* %35) #12
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67: ; preds = %delete.notnull.i.i.i.i66, %if.then.i.i.i65
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68: ; preds = %invoke.cont8, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67
  ret i8* null

lpad:                                             ; preds = %invoke.cont6, %invoke.cont1, %entry
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  store i8* %37, i8** %exn.slot, align 8
  %38 = extractvalue { i8*, i32 } %36, 1
  store i32 %38, i32* %ehselector.slot, align 4
  store %"class.std::__1::unique_ptr.29"* %__p, %"class.std::__1::unique_ptr.29"** %this.addr.i19, align 8
  %this1.i20 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i19, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i20, %"class.std::__1::unique_ptr.29"** %this.addr.i.i18, align 8
  %this1.i.i21 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i18, align 8
  store %"class.std::__1::unique_ptr.29"* %this1.i.i21, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i17, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %this1.i.i.i22 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr.i.i.i17, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i16, align 8
  %this1.i.i.i.i23 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i.i.i.i16, align 8
  %39 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i.i.i.i23 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %39) #10
  %40 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i, align 8
  store %"class.std::__1::tuple"* %40, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  %41 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i6.i.i.i, align 8
  %42 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.31"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %42) #10
  store %"class.std::__1::tuple"* %41, %"class.std::__1::tuple"** %call.i8.i.i.i, align 8
  %43 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::tuple"* %43, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %lpad
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.30"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr.i9.i.i.i, align 8
  %44 = bitcast %"class.std::__1::__compressed_pair.30"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.33"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete.34"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.33"* %44) #10
  %45 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  store %"struct.std::__1::default_delete.34"* %call.i11.i.i.i, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::tuple"* %45, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete.34"*, %"struct.std::__1::default_delete.34"** %this.addr.i12.i.i.i, align 8
  %46 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %isnull.i.i.i.i = icmp eq %"class.std::__1::tuple"* %46, null
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %46) #10
  %47 = bitcast %"class.std::__1::tuple"* %46 to i8*
  call void @_ZdlPv(i8* %47) #12
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %eh.resume

eh.resume:                                        ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val9
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) #9

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.27"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #2 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.27"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.27"* %this, %"struct.std::__1::__compressed_pair_elem.27"** %this.addr, align 8
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.27"*, %"struct.std::__1::__compressed_pair_elem.27"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.27", %"struct.std::__1::__compressed_pair_elem.27"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.27"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.27"* %this, %"struct.std::__1::__compressed_pair_elem.27"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.27"*, %"struct.std::__1::__compressed_pair_elem.27"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.27", %"struct.std::__1::__compressed_pair_elem.27"* %this1, i32 0, i32 0
  ret %"class.std::__1::__thread_struct"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.28"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.28"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.28"* %this, %"struct.std::__1::__compressed_pair_elem.28"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.28"*, %"struct.std::__1::__compressed_pair_elem.28"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.28"* %this1 to %"struct.std::__1::default_delete"*
  ret %"struct.std::__1::default_delete"* %0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.27"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #2 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.27"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.27"* %this, %"struct.std::__1::__compressed_pair_elem.27"** %this.addr, align 8
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.27"*, %"struct.std::__1::__compressed_pair_elem.27"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.27", %"struct.std::__1::__compressed_pair_elem.27"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.28"* %this, %"struct.std::__1::default_delete"* dereferenceable(1) %__u) unnamed_addr #2 align 2 {
entry:
  %__t.addr.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.28"*, align 8
  %__u.addr = alloca %"struct.std::__1::default_delete"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.28"* %this, %"struct.std::__1::__compressed_pair_elem.28"** %this.addr, align 8
  store %"struct.std::__1::default_delete"* %__u, %"struct.std::__1::default_delete"** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.28"*, %"struct.std::__1::__compressed_pair_elem.28"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.28"* %this1 to %"struct.std::__1::default_delete"*
  %1 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__u.addr, align 8
  store %"struct.std::__1::default_delete"* %1, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  %2 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.31"* %this, %"class.std::__1::tuple"** dereferenceable(8) %__u) unnamed_addr #2 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.31"*, align 8
  %__u.addr = alloca %"class.std::__1::tuple"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.31"* %this, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  store %"class.std::__1::tuple"** %__u, %"class.std::__1::tuple"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.31"*, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.31", %"struct.std::__1::__compressed_pair_elem.31"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__u.addr, align 8
  store %"class.std::__1::tuple"** %0, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %1, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__value_, align 8
  ret void
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_struct"* %__p) #0 align 2 {
entry:
  %__key.addr.i = alloca i64, align 8
  %__p.addr.i = alloca i8*, align 8
  %this.addr = alloca %"class.std::__1::__thread_specific_ptr"*, align 8
  %__p.addr = alloca %"class.std::__1::__thread_struct"*, align 8
  store %"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_specific_ptr"** %this.addr, align 8
  store %"class.std::__1::__thread_struct"* %__p, %"class.std::__1::__thread_struct"** %__p.addr, align 8
  %this1 = load %"class.std::__1::__thread_specific_ptr"*, %"class.std::__1::__thread_specific_ptr"** %this.addr, align 8
  %__key_ = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__key_, align 8
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr, align 8
  %2 = bitcast %"class.std::__1::__thread_struct"* %1 to i8*
  store i64 %0, i64* %__key.addr.i, align 8
  store i8* %2, i8** %__p.addr.i, align 8
  %3 = load i64, i64* %__key.addr.i, align 8
  %4 = load i8*, i8** %__p.addr.i, align 8
  %call.i = call i32 @pthread_setspecific(i64 %3, i8* %4)
  ret void
}

declare i32 @pthread_setspecific(i64, i8*) #1

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.31"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.31"* %this, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.31"*, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.31", %"struct.std::__1::__compressed_pair_elem.31"* %this1, i32 0, i32 0
  ret %"class.std::__1::tuple"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.31"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.31"* %this, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.31"*, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.31", %"struct.std::__1::__compressed_pair_elem.31"* %this1, i32 0, i32 0
  ret %"class.std::__1::tuple"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete.34"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.33"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.33"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.33"* %this, %"struct.std::__1::__compressed_pair_elem.33"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.33"*, %"struct.std::__1::__compressed_pair_elem.33"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.33"* %this1 to %"struct.std::__1::default_delete.34"*
  ret %"struct.std::__1::default_delete.34"* %0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this1) #10
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  %base_ = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %this1, i32 0, i32 0
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %base_) #10
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this1) #10
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__tuple_impl"* %this1 to %"class.std::__1::__tuple_leaf"*
  call void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %0) #10
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.26"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr = alloca %"class.std::__1::__tuple_leaf"*, align 8
  store %"class.std::__1::__tuple_leaf"* %this, %"class.std::__1::__tuple_leaf"** %this.addr, align 8
  %this1 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %this.addr, align 8
  %value = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %this1, i32 0, i32 0
  store %"class.std::__1::unique_ptr"* %value, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i, align 8
  store %"class.std::__1::unique_ptr"* %this1.i.i, %"class.std::__1::unique_ptr"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i.i.i, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i.i.i.i, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %0) #10
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %1, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i6.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.27"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.27"* %3) #10
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8
  %4 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %4, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %entry
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.26"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.26"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.26"*, %"class.std::__1::__compressed_pair.26"** %this.addr.i9.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair.26"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.28"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.28"* %5) #10
  %6 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %6, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %7) #10
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*
  call void @_ZdlPv(i8* %8) #12
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %entry, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

attributes #0 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
