; ModuleID = 'example.bc'
source_filename = "example.c"
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
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.1" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }
%"struct.std::__1::__atomic_base.4" = type { i32 }
%"struct.std::__1::atomic.2" = type { %"struct.std::__1::__atomic_base.3" }
%"struct.std::__1::__atomic_base.3" = type { %"struct.std::__1::__atomic_base.4" }
%"struct.std::__1::atomic.5" = type { %"struct.std::__1::__atomic_base.6" }
%"struct.std::__1::__atomic_base.6" = type { %struct.structA }
%struct.structA = type { i32, i32 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::default_delete" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::__compressed_pair.7" = type { %"struct.std::__1::__compressed_pair_elem.8" }
%"struct.std::__1::__compressed_pair_elem.8" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.7" }
%"struct.std::__1::default_delete.15" = type { i8 }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.13" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.13" = type { void ()* }
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.12" }
%"struct.std::__1::__compressed_pair_elem.12" = type { %"class.std::__1::tuple"* }
%"class.std::__1::unique_ptr.10" = type { %"class.std::__1::__compressed_pair.11" }
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_indices.17" = type { i8 }
%"struct.std::__1::__tuple_types.18" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.9" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.14" = type { i8 }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@ptr = global %"struct.std::__1::atomic" zeroinitializer, align 8
@data = global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@__func__._Z8consumerv = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"example.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"*p2 == \22Hello\22\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"data == 42\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @myPreStore(i8*) #0 {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @myPreLoad() #0 {
entry:
  ret void
}

; Function Attrs: noinline ssp uwtable
define void @_Z8producerv() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i2 = alloca %"struct.std::__1::__atomic_base"*, align 8
  %__d.addr.i = alloca %"class.std::__1::basic_string"*, align 8
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr.i.i = alloca i8*, align 8
  %this.addr.i = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr.i = alloca i8*, align 8
  %p = alloca %"class.std::__1::basic_string"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %call = call i8* @_Znwm(i64 24) #10
  %0 = bitcast i8* %call to %"class.std::__1::basic_string"*
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %this.addr.i, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %__s.addr.i, align 8
  %this1.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i, align 8
  %1 = load i8*, i8** %__s.addr.i, align 8
  store %"class.std::__1::basic_string"* %this1.i, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  store i8* %1, i8** %__s.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  %2 = bitcast %"class.std::__1::basic_string"* %this1.i.i to %"class.std::__1::__basic_string_common"*
  %__r_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__r_.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair"* %this1.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %3)
  %4 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.1"*
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %4) #11
  %5 = load i8*, i8** %__s.addr.i.i, align 8
  %6 = load i8*, i8** %__s.addr.i.i, align 8
  %call.i.i = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %6) #11
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %this1.i.i, i8* %5, i64 %call.i.i)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1EPKc.exit unwind label %lpad

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1EPKc.exit: ; preds = %entry
  br label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1EPKc.exit
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %p, align 8
  store i32 42, i32* @data, align 4
  %7 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %p, align 8
  store %"struct.std::__1::__atomic_base"* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @ptr, i32 0, i32 0), %"struct.std::__1::__atomic_base"** %this.addr.i2, align 8
  store %"class.std::__1::basic_string"* %7, %"class.std::__1::basic_string"** %__d.addr.i, align 8
  store i32 3, i32* %__m.addr.i, align 4
  %this1.i3 = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %this.addr.i2, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %this1.i3, i32 0, i32 0
  %8 = load i32, i32* %__m.addr.i, align 4
  %9 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__d.addr.i, align 8
  store %"class.std::__1::basic_string"* %9, %"class.std::__1::basic_string"** %.atomictmp.i, align 8
  %10 = bitcast %"class.std::__1::basic_string"** %__a_.i to i64*
  %11 = bitcast %"class.std::__1::basic_string"** %.atomictmp.i to i64*
  switch i32 %8, label %monotonic.i [
    i32 3, label %release.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %invoke.cont
  %12 = load i64, i64* %11, align 8
  store atomic i64 %12, i64* %10 monotonic, align 8
  br label %_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5storeES7_NS_12memory_orderE.exit

release.i:                                        ; preds = %invoke.cont
  %13 = load i64, i64* %11, align 8
  store atomic i64 %13, i64* %10 release, align 8
  br label %_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5storeES7_NS_12memory_orderE.exit

seqcst.i:                                         ; preds = %invoke.cont
  %14 = load i64, i64* %11, align 8
  store atomic i64 %14, i64* %10 seq_cst, align 8
  br label %_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5storeES7_NS_12memory_orderE.exit

_ZNSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5storeES7_NS_12memory_orderE.exit: ; preds = %monotonic.i, %release.i, %seqcst.i
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #12
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #3

; Function Attrs: noinline ssp uwtable
define void @_Z8consumerv() #1 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %this.addr.i.i11.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i12.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i4.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i5.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %retval.i = alloca i1, align 1
  %__lhs.addr.i = alloca %"class.std::__1::basic_string"*, align 8
  %__rhs.addr.i = alloca i8*, align 8
  %__rhs_len.i = alloca i64, align 8
  %this.addr.i = alloca %"struct.std::__1::__atomic_base"*, align 8
  %__m.addr.i = alloca i32, align 4
  %atomic-temp.i = alloca %"class.std::__1::basic_string"*, align 8
  %p2 = alloca %"class.std::__1::basic_string"*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  store %"struct.std::__1::__atomic_base"* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @ptr, i32 0, i32 0), %"struct.std::__1::__atomic_base"** %this.addr.i, align 8
  store i32 2, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %this.addr.i, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %this1.i, i32 0, i32 0
  %0 = load i32, i32* %__m.addr.i, align 4
  %1 = bitcast %"class.std::__1::basic_string"** %__a_.i to i64*
  %2 = bitcast %"class.std::__1::basic_string"** %atomic-temp.i to i64*
  switch i32 %0, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %while.cond
  %3 = load atomic i64, i64* %1 monotonic, align 8
  store i64 %3, i64* %2, align 8
  br label %_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE.exit

acquire.i:                                        ; preds = %while.cond, %while.cond
  %4 = load atomic i64, i64* %1 acquire, align 8
  store i64 %4, i64* %2, align 8
  br label %_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE.exit

seqcst.i:                                         ; preds = %while.cond
  %5 = load atomic i64, i64* %1 seq_cst, align 8
  store i64 %5, i64* %2, align 8
  br label %_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE.exit

_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %6 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %atomic-temp.i, align 8
  store %"class.std::__1::basic_string"* %6, %"class.std::__1::basic_string"** %p2, align 8
  %tobool = icmp ne %"class.std::__1::basic_string"* %6, null
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE.exit
  br label %while.cond

while.end:                                        ; preds = %_ZNKSt3__113__atomic_baseIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE4loadENS_12memory_orderE.exit
  %7 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %p2, align 8
  store %"class.std::__1::basic_string"* %7, %"class.std::__1::basic_string"** %__lhs.addr.i, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %__rhs.addr.i, align 8
  %8 = load i8*, i8** %__rhs.addr.i, align 8
  %call.i = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %8) #11
  store i64 %call.i, i64* %__rhs_len.i, align 8
  %9 = load i64, i64* %__rhs_len.i, align 8
  %10 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__lhs.addr.i, align 8
  store %"class.std::__1::basic_string"* %10, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i, align 8
  store %"class.std::__1::basic_string"* %this1.i.i, %"class.std::__1::basic_string"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i.i.i, align 8
  %__r_.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__r_.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %11 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %11) #11
  %12 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i.i.i, i32 0, i32 0
  %__s.i.i.i = bitcast %union.anon* %12 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %13 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i32 0, i32 0
  %__size_.i.i.i = bitcast %union.anon.0* %13 to i8*
  %14 = load i8, i8* %__size_.i.i.i, align 8
  %conv.i.i.i = zext i8 %14 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %while.end
  store %"class.std::__1::basic_string"* %this1.i.i, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %this1.i6.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %__r_.i7.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i6.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__r_.i7.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, align 8
  %this1.i.i8.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i, align 8
  %15 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i8.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i9.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %15) #11
  %16 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i9.i.i, i32 0, i32 0
  %__l.i.i.i = bitcast %union.anon* %16 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__size_.i10.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l.i.i.i, i32 0, i32 1
  %17 = load i64, i64* %__size_.i10.i.i, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit.i

cond.false.i.i:                                   ; preds = %while.end
  store %"class.std::__1::basic_string"* %this1.i.i, %"class.std::__1::basic_string"** %this.addr.i12.i.i, align 8
  %this1.i13.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i12.i.i, align 8
  %__r_.i14.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i13.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__r_.i14.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i11.i.i, align 8
  %this1.i.i15.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i11.i.i, align 8
  %18 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i15.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i16.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %18) #11
  %19 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i16.i.i, i32 0, i32 0
  %__s.i17.i.i = bitcast %union.anon* %19 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %20 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i17.i.i, i32 0, i32 0
  %__size_.i18.i.i = bitcast %union.anon.0* %20 to i8*
  %21 = load i8, i8* %__size_.i18.i.i, align 8
  %conv.i19.i.i = zext i8 %21 to i32
  %shr.i.i.i = ashr i32 %conv.i19.i.i, 1
  %conv2.i.i.i = sext i32 %shr.i.i.i to i64
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit.i

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit.i: ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %17, %cond.true.i.i ], [ %conv2.i.i.i, %cond.false.i.i ]
  %cmp.i = icmp ne i64 %9, %cond.i.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit.i
  store i1 false, i1* %retval.i, align 1
  br label %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit

if.end.i:                                         ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit.i
  %22 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__lhs.addr.i, align 8
  %23 = load i8*, i8** %__rhs.addr.i, align 8
  %24 = load i64, i64* %__rhs_len.i, align 8
  %call2.i = invoke i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"* %22, i64 0, i64 -1, i8* %23, i64 %24)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %if.end.i
  %cmp3.i = icmp eq i32 %call2.i, 0
  store i1 %cmp3.i, i1* %retval.i, align 1
  br label %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit

terminate.lpad.i:                                 ; preds = %if.end.i
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #13
  unreachable

_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %if.then.i, %invoke.cont.i
  %27 = load i1, i1* %retval.i, align 1
  %lnot2 = xor i1 %27, true
  br i1 %lnot2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._Z8consumerv, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %28
  %29 = load i32, i32* @data, align 4
  %cmp = icmp eq i32 %29, 42
  %lnot3 = xor i1 %cmp, true
  br i1 %lnot3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._Z8consumerv, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %30
  ret void
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @_Z4testv() #0 {
entry:
  %this.addr.i.i14 = alloca %"struct.std::__1::__atomic_base.4"*, align 8
  %__m.addr.i.i15 = alloca i32, align 4
  %atomic-temp.i.i16 = alloca i32, align 4
  %this.addr.i17 = alloca %"struct.std::__1::__atomic_base.4"*, align 8
  %this.addr.i.i5 = alloca %"struct.std::__1::__atomic_base.4"*, align 8
  %__d.addr.i.i = alloca i32, align 4
  %__m.addr.i.i6 = alloca i32, align 4
  %.atomictmp.i.i = alloca i32, align 4
  %this.addr.i7 = alloca %"struct.std::__1::atomic.2"*, align 8
  %__d.addr.i8 = alloca i32, align 4
  %this.addr.i3 = alloca %"struct.std::__1::__atomic_base.4"*, align 8
  %__d.addr.i = alloca i32, align 4
  %__m.addr.i = alloca i32, align 4
  %.atomictmp.i = alloca i32, align 4
  %this.addr.i.i = alloca %"struct.std::__1::__atomic_base.4"*, align 8
  %__m.addr.i.i = alloca i32, align 4
  %atomic-temp.i.i = alloca i32, align 4
  %this.addr.i = alloca %"struct.std::__1::__atomic_base.4"*, align 8
  %x = alloca %"struct.std::__1::atomic.2", align 4
  %y = alloca %"struct.std::__1::atomic.2", align 4
  %0 = bitcast %"struct.std::__1::atomic.2"* %x to %"struct.std::__1::__atomic_base.4"*
  store %"struct.std::__1::__atomic_base.4"* %0, %"struct.std::__1::__atomic_base.4"** %this.addr.i, align 8
  %this1.i = load %"struct.std::__1::__atomic_base.4"*, %"struct.std::__1::__atomic_base.4"** %this.addr.i, align 8
  store %"struct.std::__1::__atomic_base.4"* %this1.i, %"struct.std::__1::__atomic_base.4"** %this.addr.i.i, align 8
  store i32 5, i32* %__m.addr.i.i, align 4
  %this1.i.i = load %"struct.std::__1::__atomic_base.4"*, %"struct.std::__1::__atomic_base.4"** %this.addr.i.i, align 8
  %__a_.i.i = getelementptr inbounds %"struct.std::__1::__atomic_base.4", %"struct.std::__1::__atomic_base.4"* %this1.i.i, i32 0, i32 0
  %1 = load i32, i32* %__m.addr.i.i, align 4
  switch i32 %1, label %monotonic.i.i [
    i32 1, label %acquire.i.i
    i32 2, label %acquire.i.i
    i32 5, label %seqcst.i.i
  ]

monotonic.i.i:                                    ; preds = %entry
  %2 = load atomic i32, i32* %__a_.i.i monotonic, align 4
  store i32 %2, i32* %atomic-temp.i.i, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit

acquire.i.i:                                      ; preds = %entry, %entry
  %3 = load atomic i32, i32* %__a_.i.i acquire, align 4
  store i32 %3, i32* %atomic-temp.i.i, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit

seqcst.i.i:                                       ; preds = %entry
  %4 = load atomic i32, i32* %__a_.i.i seq_cst, align 4
  store i32 %4, i32* %atomic-temp.i.i, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit

_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit:       ; preds = %monotonic.i.i, %acquire.i.i, %seqcst.i.i
  %5 = load i32, i32* %atomic-temp.i.i, align 4
  %6 = bitcast %"struct.std::__1::atomic.2"* %y to %"struct.std::__1::__atomic_base.4"*
  store %"struct.std::__1::__atomic_base.4"* %6, %"struct.std::__1::__atomic_base.4"** %this.addr.i17, align 8
  %this1.i18 = load %"struct.std::__1::__atomic_base.4"*, %"struct.std::__1::__atomic_base.4"** %this.addr.i17, align 8
  store %"struct.std::__1::__atomic_base.4"* %this1.i18, %"struct.std::__1::__atomic_base.4"** %this.addr.i.i14, align 8
  store i32 5, i32* %__m.addr.i.i15, align 4
  %this1.i.i19 = load %"struct.std::__1::__atomic_base.4"*, %"struct.std::__1::__atomic_base.4"** %this.addr.i.i14, align 8
  %__a_.i.i20 = getelementptr inbounds %"struct.std::__1::__atomic_base.4", %"struct.std::__1::__atomic_base.4"* %this1.i.i19, i32 0, i32 0
  %7 = load i32, i32* %__m.addr.i.i15, align 4
  switch i32 %7, label %monotonic.i.i21 [
    i32 1, label %acquire.i.i22
    i32 2, label %acquire.i.i22
    i32 5, label %seqcst.i.i23
  ]

monotonic.i.i21:                                  ; preds = %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit
  %8 = load atomic i32, i32* %__a_.i.i20 monotonic, align 4
  store i32 %8, i32* %atomic-temp.i.i16, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit24

acquire.i.i22:                                    ; preds = %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit, %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit
  %9 = load atomic i32, i32* %__a_.i.i20 acquire, align 4
  store i32 %9, i32* %atomic-temp.i.i16, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit24

seqcst.i.i23:                                     ; preds = %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit
  %10 = load atomic i32, i32* %__a_.i.i20 seq_cst, align 4
  store i32 %10, i32* %atomic-temp.i.i16, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit24

_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit24:     ; preds = %monotonic.i.i21, %acquire.i.i22, %seqcst.i.i23
  %11 = load i32, i32* %atomic-temp.i.i16, align 4
  %add = add nsw i32 %5, %11
  store %"struct.std::__1::atomic.2"* %x, %"struct.std::__1::atomic.2"** %this.addr.i7, align 8
  store i32 %add, i32* %__d.addr.i8, align 4
  %this1.i9 = load %"struct.std::__1::atomic.2"*, %"struct.std::__1::atomic.2"** %this.addr.i7, align 8
  %12 = bitcast %"struct.std::__1::atomic.2"* %this1.i9 to %"struct.std::__1::__atomic_base.3"*
  %13 = bitcast %"struct.std::__1::__atomic_base.3"* %12 to %"struct.std::__1::__atomic_base.4"*
  %14 = load i32, i32* %__d.addr.i8, align 4
  store %"struct.std::__1::__atomic_base.4"* %13, %"struct.std::__1::__atomic_base.4"** %this.addr.i.i5, align 8
  store i32 %14, i32* %__d.addr.i.i, align 4
  store i32 5, i32* %__m.addr.i.i6, align 4
  %this1.i.i10 = load %"struct.std::__1::__atomic_base.4"*, %"struct.std::__1::__atomic_base.4"** %this.addr.i.i5, align 8
  %__a_.i.i11 = getelementptr inbounds %"struct.std::__1::__atomic_base.4", %"struct.std::__1::__atomic_base.4"* %this1.i.i10, i32 0, i32 0
  %15 = load i32, i32* %__m.addr.i.i6, align 4
  %16 = load i32, i32* %__d.addr.i.i, align 4
  store i32 %16, i32* %.atomictmp.i.i, align 4
  switch i32 %15, label %monotonic.i.i12 [
    i32 3, label %release.i.i
    i32 5, label %seqcst.i.i13
  ]

monotonic.i.i12:                                  ; preds = %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit24
  %17 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %17, i32* %__a_.i.i11 monotonic, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit

release.i.i:                                      ; preds = %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit24
  %18 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %18, i32* %__a_.i.i11 release, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit

seqcst.i.i13:                                     ; preds = %_ZNKSt3__113__atomic_baseIiLb0EEcviEv.exit24
  %19 = load i32, i32* %.atomictmp.i.i, align 4
  store atomic i32 %19, i32* %__a_.i.i11 seq_cst, align 4
  br label %_ZNSt3__16atomicIiEaSEi.exit

_ZNSt3__16atomicIiEaSEi.exit:                     ; preds = %monotonic.i.i12, %release.i.i, %seqcst.i.i13
  %20 = load i32, i32* %__d.addr.i8, align 4
  %21 = bitcast %"struct.std::__1::atomic.2"* %x to %"struct.std::__1::__atomic_base.4"*
  store %"struct.std::__1::__atomic_base.4"* %21, %"struct.std::__1::__atomic_base.4"** %this.addr.i3, align 8
  store i32 2, i32* %__d.addr.i, align 4
  store i32 3, i32* %__m.addr.i, align 4
  %this1.i4 = load %"struct.std::__1::__atomic_base.4"*, %"struct.std::__1::__atomic_base.4"** %this.addr.i3, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base.4", %"struct.std::__1::__atomic_base.4"* %this1.i4, i32 0, i32 0
  %22 = load i32, i32* %__m.addr.i, align 4
  %23 = load i32, i32* %__d.addr.i, align 4
  store i32 %23, i32* %.atomictmp.i, align 4
  switch i32 %22, label %monotonic.i [
    i32 3, label %release.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %_ZNSt3__16atomicIiEaSEi.exit
  %24 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %24, i32* %__a_.i monotonic, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit

release.i:                                        ; preds = %_ZNSt3__16atomicIiEaSEi.exit
  %25 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %25, i32* %__a_.i release, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit

seqcst.i:                                         ; preds = %_ZNSt3__16atomicIiEaSEi.exit
  %26 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %26, i32* %__a_.i seq_cst, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit

_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit: ; preds = %monotonic.i, %release.i, %seqcst.i
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @_Z4testi(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %A = alloca %"struct.std::__1::atomic.5", align 8
  %B = alloca %"struct.std::__1::atomic.5", align 8
  %C = alloca %"struct.std::__1::atomic.5"*, align 8
  store i32 %x, i32* %x.addr, align 4
  ret void
}

; Function Attrs: noinline norecurse ssp uwtable
define i32 @main() #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %t1 = alloca %"class.std::__1::thread", align 8
  %t2 = alloca %"class.std::__1::thread", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %t1, void ()* @_Z8producerv)
  invoke void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %t2, void ()* @_Z8consumerv)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_Z4testv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %t1)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %t2)
          to label %invoke.cont4 unwind label %lpad1

invoke.cont4:                                     ; preds = %invoke.cont3
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t2) #11
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t1) #11
  ret i32 0

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad1:                                            ; preds = %invoke.cont3, %invoke.cont2, %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t2) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %t1) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #1 align 2 {
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

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) #6

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #7

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"*, i8*, i64) #6

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #0 align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @strlen(i8* %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_ to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr.i = alloca %"class.std::__1::allocator"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"class.std::__1::allocator"*
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr.i, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind
declare i64 @strlen(i8*) #7

declare i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"*, i64, i64, i8*, i64) #6

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #9 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #11
  call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i12.i.i.i115 = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i116 = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i117 = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i6.i.i.i118 = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i.i.i.i119 = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i.i.i120 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i.i121 = alloca %"class.std::__1::__thread_struct"*, align 8
  %__tmp.i.i.i122 = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i123 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i124 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i12.i.i.i86 = alloca %"struct.std::__1::default_delete.15"*, align 8
  %__ptr.addr.i.i.i.i87 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i88 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i6.i.i.i89 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i.i90 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i91 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i.i.i92 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i93 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i94 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i95 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i12.i.i.i59 = alloca %"struct.std::__1::default_delete.15"*, align 8
  %__ptr.addr.i.i.i.i60 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i61 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i6.i.i.i62 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i.i63 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i64 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i.i.i65 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i66 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i67 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i68 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i53 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i54 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__t.i = alloca %"class.std::__1::tuple"*, align 8
  %__t.addr.i51 = alloca %struct._opaque_pthread_t**, align 8
  %__func.addr.i = alloca i8* (i8*)*, align 8
  %__arg.addr.i = alloca i8*, align 8
  %this.addr.i.i47 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i48 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__t.addr.i.i.i.i.i33 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i.i34 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %__t.addr.i.i.i.i35 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i36 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %__t.addr.i.i.i37 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i38 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i.i39 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i40 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i41 = alloca %"class.std::__1::tuple"*, align 8
  %__t.addr.i8.i.i = alloca void ()**, align 8
  %__t.addr.i3.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__t.addr.i.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i10.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %__t1.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %__t2.addr.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr.i11.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %__t1.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %__t2.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__t.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr.i.i4.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i5.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i4.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
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
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::__tuple_leaf.13"*, align 8
  %__t.addr.i8.i.i.i.i = alloca void ()**, align 8
  %__t.addr.i.i.i.i.i27 = alloca %"class.std::__1::unique_ptr"*, align 8
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.17", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.18", align 1
  %this.addr.i.i.i.i28 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %__u.addr.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr5.i.i.i.i = alloca void ()**, align 8
  %4 = alloca %"struct.std::__1::__tuple_indices", align 1
  %5 = alloca %"struct.std::__1::__tuple_types", align 1
  %6 = alloca %"struct.std::__1::__tuple_indices.17", align 1
  %7 = alloca %"struct.std::__1::__tuple_types.18", align 1
  %this.addr.i.i.i29 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %__u.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr5.i.i.i = alloca void ()**, align 8
  %__t.addr.i.i.i30 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i.i31 = alloca %"class.std::__1::tuple"*, align 8
  %__u.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr2.i.i = alloca void ()**, align 8
  %agg.tmp.i.i = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp4.i.i = alloca %"struct.std::__1::__tuple_types", align 1
  %agg.tmp5.i.i = alloca %"struct.std::__1::__tuple_indices.17", align 1
  %agg.tmp6.i.i = alloca %"struct.std::__1::__tuple_types.18", align 1
  %this.addr.i32 = alloca %"class.std::__1::tuple"*, align 8
  %__u.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr2.i = alloca void ()**, align 8
  %__t.addr.i.i = alloca void ()*, align 8
  %__t.addr.i26 = alloca void ()*, align 8
  %__t.addr.i25 = alloca void ()*, align 8
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i.i.i.i17 = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i.i.i18 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i19 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i20 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %__t.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
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
  %__p = alloca %"class.std::__1::unique_ptr.10", align 8
  %ref.tmp = alloca void ()*, align 8
  %__ec = alloca i32, align 4
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  store void ()* %__f, void ()** %__f.addr, align 8
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 8) #10
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
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %__p.addr.i.i, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i, align 8
  %10 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.7"* %this1.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %10, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i, align 8
  %11 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %12 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %12, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  %13 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.8"* %11, %"class.std::__1::__thread_struct"** dereferenceable(8) %13) #11
  %14 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.9"*
  %call4 = invoke i8* @_Znwm(i64 16) #10
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
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %36 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %36) #11
  %37 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %37, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8
  %__ptr_2.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_2.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %this1.i5.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %38 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i5.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i6.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %38) #11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i.i.i.i.i.i.i.i, align 8
  %39 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %39, %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, align 8
  %40 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %40, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %this1.i6.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %__ptr_.i7.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i6.i.i.i.i.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i7.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %this1.i.i8.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %41 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i8.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.9"*
  %call.i.i9.i.i.i.i.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %41) #11
  store %"struct.std::__1::default_delete"* %call.i.i9.i.i.i.i.i.i.i, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  %42 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %42, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i12.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  %43 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  %44 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.7"* %this1.i12.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %43, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %44, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i13.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  %45 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %46 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %46, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  %47 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.8"* %45, %"class.std::__1::__thread_struct"** dereferenceable(8) %47) #11
  %48 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.9"*
  %49 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %49, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  %50 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.9"* %48, %"struct.std::__1::default_delete"* dereferenceable(1) %50) #11
  %51 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = bitcast i8* %52 to %"class.std::__1::__tuple_leaf.13"*
  %54 = load void ()**, void ()*** %__u.addr5.i.i.i.i, align 8
  store void ()** %54, void ()*** %__t.addr.i9.i.i.i.i, align 8
  %55 = load void ()**, void ()*** %__t.addr.i9.i.i.i.i, align 8
  store %"class.std::__1::__tuple_leaf.13"* %53, %"class.std::__1::__tuple_leaf.13"** %this.addr.i.i.i.i.i, align 8
  store void ()** %55, void ()*** %__t.addr.i8.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::__tuple_leaf.13"*, %"class.std::__1::__tuple_leaf.13"** %this.addr.i.i.i.i.i, align 8
  %value.i.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.13", %"class.std::__1::__tuple_leaf.13"* %this1.i.i.i.i.i, i32 0, i32 0
  %56 = load void ()**, void ()*** %__t.addr.i8.i.i.i.i, align 8
  store void ()** %56, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %57 = load void ()**, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %58 = load void ()*, void ()** %57, align 8
  store void ()* %58, void ()** %value.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i40, align 8
  store %"class.std::__1::tuple"* %15, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  %this1.i42 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i40, align 8
  %59 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i42, %"class.std::__1::unique_ptr.10"** %this.addr.i.i38, align 8
  store %"class.std::__1::tuple"* %59, %"class.std::__1::tuple"** %__p.addr.i.i39, align 8
  %this1.i.i43 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i38, align 8
  %__ptr_.i.i44 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i43, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i.i44, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i36, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i39, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  %this1.i.i.i45 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i36, align 8
  %60 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  store %"class.std::__1::__compressed_pair.11"* %this1.i.i.i45, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i34, align 8
  store %"class.std::__1::tuple"** %60, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  %this1.i.i.i.i46 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i34, align 8
  %61 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.12"*
  %62 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  store %"class.std::__1::tuple"** %62, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  %63 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.12"* %61, %"class.std::__1::tuple"** dereferenceable(8) %63) #11
  %64 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.14"*
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1, i32 0, i32 0
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i48, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i49, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i47, align 8
  %this1.i.i50 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i47, align 8
  %65 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i50 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %65) #11
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
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i54, align 8
  %this1.i55 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i54, align 8
  %__ptr_.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i55, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i56, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i53, align 8
  %this1.i.i57 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i53, align 8
  %72 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i57 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %72) #11
  %73 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i58, align 8
  store %"class.std::__1::tuple"* %73, %"class.std::__1::tuple"** %__t.i, align 8
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i55, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_2.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i4.i, align 8
  %74 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i6.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %74) #11
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
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i68, align 8
  %this1.i69 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i68, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i69, %"class.std::__1::unique_ptr.10"** %this.addr.i.i67, align 8
  %this1.i.i70 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i67, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i.i70, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i64, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %this1.i.i.i71 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i64, align 8
  %__ptr_.i.i.i72 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i.i.i72, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i63, align 8
  %this1.i.i.i.i73 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i63, align 8
  %88 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i73 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i.i.i74 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %88) #11
  %89 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i74, align 8
  store %"class.std::__1::tuple"* %89, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  %90 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %__ptr_2.i.i.i75 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_2.i.i.i75, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i62, align 8
  %this1.i7.i.i.i76 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i62, align 8
  %91 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i7.i.i.i76 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i8.i.i.i77 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %91) #11
  store %"class.std::__1::tuple"* %90, %"class.std::__1::tuple"** %call.i8.i.i.i77, align 8
  %92 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  %tobool.i.i.i78 = icmp ne %"class.std::__1::tuple"* %92, null
  br i1 %tobool.i.i.i78, label %if.then.i.i.i84, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

if.then.i.i.i84:                                  ; preds = %lpad11
  %__ptr_4.i.i.i79 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_4.i.i.i79, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i61, align 8
  %this1.i10.i.i.i80 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i61, align 8
  %93 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i10.i.i.i80 to %"struct.std::__1::__compressed_pair_elem.14"*
  %call.i11.i.i.i81 = call dereferenceable(1) %"struct.std::__1::default_delete.15"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %93) #11
  %94 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  store %"struct.std::__1::default_delete.15"* %call.i11.i.i.i81, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i59, align 8
  store %"class.std::__1::tuple"* %94, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %this1.i13.i.i.i82 = load %"struct.std::__1::default_delete.15"*, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i59, align 8
  %95 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %isnull.i.i.i.i83 = icmp eq %"class.std::__1::tuple"* %95, null
  br i1 %isnull.i.i.i.i83, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i85

delete.notnull.i.i.i.i85:                         ; preds = %if.then.i.i.i84
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %95) #11
  %96 = bitcast %"class.std::__1::tuple"* %95 to i8*
  call void @_ZdlPv(i8* %96) #12
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i85, %if.then.i.i.i84
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad11, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont12
  %97 = load i32, i32* %__ec, align 4
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #14
          to label %invoke.cont15 unwind label %lpad11

invoke.cont15:                                    ; preds = %if.else
  unreachable

if.end:                                           ; preds = %if.then
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i95, align 8
  %this1.i96 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i95, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i96, %"class.std::__1::unique_ptr.10"** %this.addr.i.i94, align 8
  %this1.i.i97 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i94, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i.i97, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i91, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %this1.i.i.i98 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i91, align 8
  %__ptr_.i.i.i99 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i.i.i99, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i90, align 8
  %this1.i.i.i.i100 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i90, align 8
  %98 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i100 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i.i.i101 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %98) #11
  %99 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i101, align 8
  store %"class.std::__1::tuple"* %99, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  %100 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %__ptr_2.i.i.i102 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_2.i.i.i102, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i89, align 8
  %this1.i7.i.i.i103 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i89, align 8
  %101 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i7.i.i.i103 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i8.i.i.i104 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %101) #11
  store %"class.std::__1::tuple"* %100, %"class.std::__1::tuple"** %call.i8.i.i.i104, align 8
  %102 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  %tobool.i.i.i105 = icmp ne %"class.std::__1::tuple"* %102, null
  br i1 %tobool.i.i.i105, label %if.then.i.i.i111, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114

if.then.i.i.i111:                                 ; preds = %if.end
  %__ptr_4.i.i.i106 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_4.i.i.i106, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i88, align 8
  %this1.i10.i.i.i107 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i88, align 8
  %103 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i10.i.i.i107 to %"struct.std::__1::__compressed_pair_elem.14"*
  %call.i11.i.i.i108 = call dereferenceable(1) %"struct.std::__1::default_delete.15"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %103) #11
  %104 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  store %"struct.std::__1::default_delete.15"* %call.i11.i.i.i108, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i86, align 8
  store %"class.std::__1::tuple"* %104, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %this1.i13.i.i.i109 = load %"struct.std::__1::default_delete.15"*, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i86, align 8
  %105 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %isnull.i.i.i.i110 = icmp eq %"class.std::__1::tuple"* %105, null
  br i1 %isnull.i.i.i.i110, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113, label %delete.notnull.i.i.i.i112

delete.notnull.i.i.i.i112:                        ; preds = %if.then.i.i.i111
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %105) #11
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
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i.i.i128, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i119, align 8
  %this1.i.i.i.i129 = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i119, align 8
  %107 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i.i.i129 to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i.i.i.i130 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %107) #11
  %108 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i130, align 8
  store %"class.std::__1::__thread_struct"* %108, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  %109 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8
  %__ptr_2.i.i.i131 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_2.i.i.i131, %"class.std::__1::__compressed_pair.7"** %this.addr.i6.i.i.i118, align 8
  %this1.i7.i.i.i132 = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i6.i.i.i118, align 8
  %110 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i7.i.i.i132 to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i8.i.i.i133 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %110) #11
  store %"class.std::__1::__thread_struct"* %109, %"class.std::__1::__thread_struct"** %call.i8.i.i.i133, align 8
  %111 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  %tobool.i.i.i134 = icmp ne %"class.std::__1::__thread_struct"* %111, null
  br i1 %tobool.i.i.i134, label %if.then.i.i.i140, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143

if.then.i.i.i140:                                 ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114
  %__ptr_4.i.i.i135 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_4.i.i.i135, %"class.std::__1::__compressed_pair.7"** %this.addr.i9.i.i.i117, align 8
  %this1.i10.i.i.i136 = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i9.i.i.i117, align 8
  %112 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i10.i.i.i136 to %"struct.std::__1::__compressed_pair_elem.9"*
  %call.i11.i.i.i137 = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %112) #11
  %113 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i137, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  store %"class.std::__1::__thread_struct"* %113, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8
  %this1.i13.i.i.i138 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i115, align 8
  %114 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i116, align 8
  %isnull.i.i.i.i139 = icmp eq %"class.std::__1::__thread_struct"* %114, null
  br i1 %isnull.i.i.i.i139, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i142, label %delete.notnull.i.i.i.i141

delete.notnull.i.i.i.i141:                        ; preds = %if.then.i.i.i140
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %114) #11
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
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i17, align 8
  %this1.i.i.i.i24 = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i17, align 8
  %116 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i.i.i24 to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %116) #11
  %117 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %117, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %118 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i6.i.i.i, align 8
  %119 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %119) #11
  store %"class.std::__1::__thread_struct"* %118, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8
  %120 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %120, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %ehcleanup
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i9.i.i.i, align 8
  %121 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.9"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %121) #11
  %122 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %122, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %123 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %123, null
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %123) #11
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

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #6

; Function Attrs: noinline ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i12.i.i.i40 = alloca %"struct.std::__1::default_delete.15"*, align 8
  %__ptr.addr.i.i.i.i41 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i42 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i6.i.i.i43 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i.i44 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i45 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i.i.i46 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i47 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i48 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i49 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__t.addr.i2.i = alloca void ()**, align 8
  %__t.addr.i.i.i36 = alloca void ()**, align 8
  %__f.addr.i.i = alloca void ()**, align 8
  %this.addr.i.i.i37 = alloca %"class.std::__1::__tuple_leaf.13"*, align 8
  %__t.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  %0 = alloca %"struct.std::__1::__tuple_indices.17", align 1
  %__t.addr.i38 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i30 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i31 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i.i24 = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i25 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete.15"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i.i16 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i17 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i18 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i19 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %this.addr.i.i14 = alloca %"class.std::__1::__tuple_leaf"*, align 8
  %__t.addr.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i10 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i11 = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %__t.addr.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %__t.addr.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i = alloca %"class.std::__1::unique_ptr.10"*, align 8
  %__p.addr.i = alloca %"class.std::__1::tuple"*, align 8
  %__vp.addr = alloca i8*, align 8
  %__p = alloca %"class.std::__1::unique_ptr.10", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices.17", align 1
  store i8* %__vp, i8** %__vp.addr, align 8
  %1 = load i8*, i8** %__vp.addr, align 8
  %2 = bitcast i8* %1 to %"class.std::__1::tuple"*
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i, align 8
  %3 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i, %"class.std::__1::unique_ptr.10"** %this.addr.i.i, align 8
  store %"class.std::__1::tuple"* %3, %"class.std::__1::tuple"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i, align 8
  %4 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.11"* %this1.i.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %4, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.12"*
  %6 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %6, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  %7 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.12"* %5, %"class.std::__1::tuple"** dereferenceable(8) %7) #11
  %8 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.14"*
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i11, align 8
  %this1.i12 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i11, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i12, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i10, align 8
  %this1.i.i13 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i10, align 8
  %9 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i13 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %9) #11
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
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i27, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i24, align 8
  %this1.i.i28 = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i24, align 8
  %13 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i28 to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i.i29 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %13) #11
  %14 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i29, align 8
  store %"class.std::__1::__thread_struct"* %14, %"class.std::__1::__thread_struct"** %__t.i, align 8
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_2.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i4.i, align 8
  %15 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i6.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %15) #11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i, align 8
  %16 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i, align 8
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %call, %"class.std::__1::__thread_struct"* %16)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont1
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i31, align 8
  %this1.i32 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i31, align 8
  %__ptr_.i33 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i32, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i33, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i30, align 8
  %this1.i.i34 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i30, align 8
  %17 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i34 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i35 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %17) #11
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
  %22 = bitcast i8* %add.ptr.i.i to %"class.std::__1::__tuple_leaf.13"*
  store %"class.std::__1::__tuple_leaf.13"* %22, %"class.std::__1::__tuple_leaf.13"** %this.addr.i.i.i37, align 8
  %this1.i.i.i39 = load %"class.std::__1::__tuple_leaf.13"*, %"class.std::__1::__tuple_leaf.13"** %this.addr.i.i.i37, align 8
  %value.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.13", %"class.std::__1::__tuple_leaf.13"* %this1.i.i.i39, i32 0, i32 0
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
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i49, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i50, %"class.std::__1::unique_ptr.10"** %this.addr.i.i48, align 8
  %this1.i.i51 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i48, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i.i51, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i45, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %this1.i.i.i52 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i45, align 8
  %__ptr_.i.i.i53 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i.i.i53, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i44, align 8
  %this1.i.i.i.i54 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i44, align 8
  %27 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i54 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i.i.i55 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %27) #11
  %28 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i55, align 8
  store %"class.std::__1::tuple"* %28, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  %29 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %__ptr_2.i.i.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_2.i.i.i56, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i43, align 8
  %this1.i7.i.i.i57 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i43, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i7.i.i.i57 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i8.i.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %30) #11
  store %"class.std::__1::tuple"* %29, %"class.std::__1::tuple"** %call.i8.i.i.i58, align 8
  %31 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  %tobool.i.i.i59 = icmp ne %"class.std::__1::tuple"* %31, null
  br i1 %tobool.i.i.i59, label %if.then.i.i.i65, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68

if.then.i.i.i65:                                  ; preds = %invoke.cont8
  %__ptr_4.i.i.i60 = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_4.i.i.i60, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i42, align 8
  %this1.i10.i.i.i61 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i42, align 8
  %32 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i10.i.i.i61 to %"struct.std::__1::__compressed_pair_elem.14"*
  %call.i11.i.i.i62 = call dereferenceable(1) %"struct.std::__1::default_delete.15"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %32) #11
  %33 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  store %"struct.std::__1::default_delete.15"* %call.i11.i.i.i62, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i40, align 8
  store %"class.std::__1::tuple"* %33, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %this1.i13.i.i.i63 = load %"struct.std::__1::default_delete.15"*, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i40, align 8
  %34 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %isnull.i.i.i.i64 = icmp eq %"class.std::__1::tuple"* %34, null
  br i1 %isnull.i.i.i.i64, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67, label %delete.notnull.i.i.i.i66

delete.notnull.i.i.i.i66:                         ; preds = %if.then.i.i.i65
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %34) #11
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
  store %"class.std::__1::unique_ptr.10"* %__p, %"class.std::__1::unique_ptr.10"** %this.addr.i19, align 8
  %this1.i20 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i19, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i20, %"class.std::__1::unique_ptr.10"** %this.addr.i.i18, align 8
  %this1.i.i21 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i18, align 8
  store %"class.std::__1::unique_ptr.10"* %this1.i.i21, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i17, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %this1.i.i.i22 = load %"class.std::__1::unique_ptr.10"*, %"class.std::__1::unique_ptr.10"** %this.addr.i.i.i17, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i16, align 8
  %this1.i.i.i.i23 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i16, align 8
  %39 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i23 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %39) #11
  %40 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i, align 8
  store %"class.std::__1::tuple"* %40, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  %41 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i6.i.i.i, align 8
  %42 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %42) #11
  store %"class.std::__1::tuple"* %41, %"class.std::__1::tuple"** %call.i8.i.i.i, align 8
  %43 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::tuple"* %43, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %lpad
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.10", %"class.std::__1::unique_ptr.10"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i9.i.i.i, align 8
  %44 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.14"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete.15"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %44) #11
  %45 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  store %"struct.std::__1::default_delete.15"* %call.i11.i.i.i, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::tuple"* %45, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete.15"*, %"struct.std::__1::default_delete.15"** %this.addr.i12.i.i.i, align 8
  %46 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %isnull.i.i.i.i = icmp eq %"class.std::__1::tuple"* %46, null
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %46) #11
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
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.8"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.8"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.8"* %this, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.8"*, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.8", %"struct.std::__1::__compressed_pair_elem.8"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.8"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.8"* %this, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.8"*, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.8", %"struct.std::__1::__compressed_pair_elem.8"* %this1, i32 0, i32 0
  ret %"class.std::__1::__thread_struct"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.9"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.9"* %this, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.9"*, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.9"* %this1 to %"struct.std::__1::default_delete"*
  ret %"struct.std::__1::default_delete"* %0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.8"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.8"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.8"* %this, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.8"*, %"struct.std::__1::__compressed_pair_elem.8"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.8", %"struct.std::__1::__compressed_pair_elem.8"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.9"* %this, %"struct.std::__1::default_delete"* dereferenceable(1) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.9"*, align 8
  %__u.addr = alloca %"struct.std::__1::default_delete"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.9"* %this, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  store %"struct.std::__1::default_delete"* %__u, %"struct.std::__1::default_delete"** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.9"*, %"struct.std::__1::__compressed_pair_elem.9"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.9"* %this1 to %"struct.std::__1::default_delete"*
  %1 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__u.addr, align 8
  store %"struct.std::__1::default_delete"* %1, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  %2 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.12"* %this, %"class.std::__1::tuple"** dereferenceable(8) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.12"*, align 8
  %__u.addr = alloca %"class.std::__1::tuple"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.12"* %this, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  store %"class.std::__1::tuple"** %__u, %"class.std::__1::tuple"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.12"*, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.12"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__u.addr, align 8
  store %"class.std::__1::tuple"** %0, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %1, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__value_, align 8
  ret void
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) #6

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() #6

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_struct"* %__p) #1 align 2 {
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

declare i32 @pthread_setspecific(i64, i8*) #6

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.12"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.12"* %this, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.12"*, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.12"* %this1, i32 0, i32 0
  ret %"class.std::__1::tuple"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.12"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.12"* %this, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.12"*, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.12"* %this1, i32 0, i32 0
  ret %"class.std::__1::tuple"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete.15"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.14"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.14"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.14"* %this, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.14"*, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.14"* %this1 to %"struct.std::__1::default_delete.15"*
  ret %"struct.std::__1::default_delete.15"* %0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this1) #11
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev(%"class.std::__1::tuple"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %this, %"class.std::__1::tuple"** %this.addr, align 8
  %this1 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %this.addr, align 8
  %base_ = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %this1, i32 0, i32 0
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %base_) #11
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  call void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this1) #11
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev(%"struct.std::__1::__tuple_impl"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__tuple_impl"*, align 8
  store %"struct.std::__1::__tuple_impl"* %this, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__tuple_impl"* %this1 to %"class.std::__1::__tuple_leaf"*
  call void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %0) #11
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(%"class.std::__1::__tuple_leaf"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.7"*, align 8
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
  store %"class.std::__1::__compressed_pair.7"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i.i.i.i, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %0) #11
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %1, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i6.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.8"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* %3) #11
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8
  %4 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %4, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %entry
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.7"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.7"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %this.addr.i9.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair.7"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.9"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.9"* %5) #11
  %6 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %call.i11.i.i.i, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %6, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %this.addr.i12.i.i.i, align 8
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__ptr.addr.i.i.i.i, align 8
  %isnull.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* %7) #11
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*
  call void @_ZdlPv(i8* %8) #12
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %entry, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #7

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { builtin }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
