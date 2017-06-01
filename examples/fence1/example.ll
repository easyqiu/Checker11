; ModuleID = 'example.bc'
source_filename = "example.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"struct.std::__1::__atomic_base.0" = type { i32 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"struct.std::__1::default_delete" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair" }
%"struct.std::__1::default_delete.7" = type { i8 }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.5" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.5" = type { void ()* }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { %"class.std::__1::tuple"* }
%"class.std::__1::unique_ptr.2" = type { %"class.std::__1::__compressed_pair.3" }
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_indices.9" = type { i8 }
%"struct.std::__1::__tuple_types.10" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.1" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.6" = type { i8 }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }
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
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.12" }
%"struct.std::__1::__compressed_pair_elem.12" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.11" }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.14" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.13, [23 x i8] }
%union.anon.13 = type { i8 }
%"class.std::__1::allocator" = type { i8 }

@data1 = global i32 0, align 4
@data2 = global i32 0, align 4
@x = global { i32 } zeroinitializer, align 4
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"example.c\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"data1 == 2\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: noinline nounwind ssp uwtable
define void @_Z2f1v() #0 {
entry:
  %this.addr.i4 = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i5 = alloca i32, align 4
  %__m.addr.i6 = alloca i32, align 4
  %.atomictmp.i7 = alloca i32, align 4
  %this.addr.i = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__d.addr.i = alloca i32, align 4
  %__m.addr.i1 = alloca i32, align 4
  %.atomictmp.i = alloca i32, align 4
  %__m.addr.i = alloca i32, align 4
  store i32 2, i32* @data1, align 4
  store i32 3, i32* %__m.addr.i, align 4
  %0 = load i32, i32* %__m.addr.i, align 4
  switch i32 %0, label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ]

acquire.i:                                        ; preds = %entry, %entry
  fence acquire
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

release.i:                                        ; preds = %entry
  fence release
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

acqrel.i:                                         ; preds = %entry
  fence acq_rel
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

seqcst.i:                                         ; preds = %entry
  fence seq_cst
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit: ; preds = %entry, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  store %"struct.std::__1::__atomic_base.0"* bitcast ({ i32 }* @x to %"struct.std::__1::__atomic_base.0"*), %"struct.std::__1::__atomic_base.0"** %this.addr.i4, align 8
  store i32 1, i32* %__d.addr.i5, align 4
  store i32 0, i32* %__m.addr.i6, align 4
  %this1.i8 = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i4, align 8
  %__a_.i9 = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i8, i32 0, i32 0
  %1 = load i32, i32* %__m.addr.i6, align 4
  %2 = load i32, i32* %__d.addr.i5, align 4
  store i32 %2, i32* %.atomictmp.i7, align 4
  switch i32 %1, label %monotonic.i10 [
    i32 3, label %release.i11
    i32 5, label %seqcst.i12
  ]

monotonic.i10:                                    ; preds = %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit
  %3 = load i32, i32* %.atomictmp.i7, align 4
  store atomic i32 %3, i32* %__a_.i9 monotonic, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit13

release.i11:                                      ; preds = %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit
  %4 = load i32, i32* %.atomictmp.i7, align 4
  store atomic i32 %4, i32* %__a_.i9 release, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit13

seqcst.i12:                                       ; preds = %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit
  %5 = load i32, i32* %.atomictmp.i7, align 4
  store atomic i32 %5, i32* %__a_.i9 seq_cst, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit13

_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit13: ; preds = %monotonic.i10, %release.i11, %seqcst.i12
  store %"struct.std::__1::__atomic_base.0"* bitcast ({ i32 }* @x to %"struct.std::__1::__atomic_base.0"*), %"struct.std::__1::__atomic_base.0"** %this.addr.i, align 8
  store i32 2, i32* %__d.addr.i, align 4
  store i32 0, i32* %__m.addr.i1, align 4
  %this1.i = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i, i32 0, i32 0
  %6 = load i32, i32* %__m.addr.i1, align 4
  %7 = load i32, i32* %__d.addr.i, align 4
  store i32 %7, i32* %.atomictmp.i, align 4
  switch i32 %6, label %monotonic.i [
    i32 3, label %release.i2
    i32 5, label %seqcst.i3
  ]

monotonic.i:                                      ; preds = %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit13
  %8 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %8, i32* %__a_.i monotonic, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit

release.i2:                                       ; preds = %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit13
  %9 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %9, i32* %__a_.i release, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit

seqcst.i3:                                        ; preds = %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit13
  %10 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %10, i32* %__a_.i seq_cst, align 4
  br label %_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit

_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE.exit: ; preds = %monotonic.i, %release.i2, %seqcst.i3
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @_Z2f2v() #0 {
entry:
  %__m.addr.i1 = alloca i32, align 4
  %this.addr.i = alloca %"struct.std::__1::__atomic_base.0"*, align 8
  %__m.addr.i = alloca i32, align 4
  %atomic-temp.i = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  store %"struct.std::__1::__atomic_base.0"* bitcast ({ i32 }* @x to %"struct.std::__1::__atomic_base.0"*), %"struct.std::__1::__atomic_base.0"** %this.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__1::__atomic_base.0"*, %"struct.std::__1::__atomic_base.0"** %this.addr.i, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %this1.i, i32 0, i32 0
  %0 = load i32, i32* %__m.addr.i, align 4
  switch i32 %0, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %while.cond
  %1 = load atomic i32, i32* %__a_.i monotonic, align 4
  store i32 %1, i32* %atomic-temp.i, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit

acquire.i:                                        ; preds = %while.cond, %while.cond
  %2 = load atomic i32, i32* %__a_.i acquire, align 4
  store i32 %2, i32* %atomic-temp.i, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit

seqcst.i:                                         ; preds = %while.cond
  %3 = load atomic i32, i32* %__a_.i seq_cst, align 4
  store i32 %3, i32* %atomic-temp.i, align 4
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit

_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %4 = load i32, i32* %atomic-temp.i, align 4
  store i32 %4, i32* @data2, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  br label %while.cond

while.end:                                        ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  store i32 2, i32* %__m.addr.i1, align 4
  %5 = load i32, i32* %__m.addr.i1, align 4
  switch i32 %5, label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit [
    i32 1, label %acquire.i2
    i32 2, label %acquire.i2
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i3
  ]

acquire.i2:                                       ; preds = %while.end, %while.end
  fence acquire
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

release.i:                                        ; preds = %while.end
  fence release
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

acqrel.i:                                         ; preds = %while.end
  fence acq_rel
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

seqcst.i3:                                        ; preds = %while.end
  fence seq_cst
  br label %_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit

_ZNSt3__119atomic_thread_fenceENS_12memory_orderE.exit: ; preds = %while.end, %acquire.i2, %release.i, %acqrel.i, %seqcst.i3
  ret void
}

; Function Attrs: noinline norecurse ssp uwtable
define i32 @main() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 0, i32* %retval, align 4
  call void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %a, void ()* @_Z2f1v)
  invoke void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %b, void ()* @_Z2f2v)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %0 = load i32, i32* @data1, align 4
  %call4 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call, i32 %0)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %1 = load i32, i32* @data2, align 4
  %call8 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call6, i32 %1)
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %call10 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
          to label %invoke.cont9 unwind label %lpad1

invoke.cont9:                                     ; preds = %invoke.cont7
  %2 = load i32, i32* @data1, align 4
  %cmp = icmp eq i32 %2, 2
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont9
  invoke void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #10
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %cond.true
  unreachable

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad1:                                            ; preds = %invoke.cont12, %cond.end, %cond.true, %invoke.cont7, %invoke.cont5, %invoke.cont3, %invoke.cont2, %invoke.cont
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %b) #11
  br label %ehcleanup
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %9
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %a)
          to label %invoke.cont12 unwind label %lpad1

invoke.cont12:                                    ; preds = %cond.end
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* %b)
          to label %invoke.cont13 unwind label %lpad1

invoke.cont13:                                    ; preds = %invoke.cont12
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %b) #11
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %a) #11
  %10 = load i32, i32* %retval, align 4
  ret i32 %10

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* %a) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #2 align 2 {
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

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str) #2 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %1 = load i8*, i8** %__str.addr, align 8
  %2 = load i8*, i8** %__str.addr, align 8
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #11
  %call1 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %0, i8* %1, i64 %call)
  ret %"class.std::__1::basic_ostream"* %call1
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #3

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #4

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) #3

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #5

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i12.i.i.i115 = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i116 = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i117 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i6.i.i.i118 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i.i119 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i120 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i.i121 = alloca %"class.std::__1::__thread_struct"*, align 8
  %__tmp.i.i.i122 = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i123 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i124 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i12.i.i.i86 = alloca %"struct.std::__1::default_delete.7"*, align 8
  %__ptr.addr.i.i.i.i87 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i88 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i6.i.i.i89 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i.i90 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i91 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i.i.i92 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i93 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i94 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i95 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i12.i.i.i59 = alloca %"struct.std::__1::default_delete.7"*, align 8
  %__ptr.addr.i.i.i.i60 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i61 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i6.i.i.i62 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i.i63 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i64 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i.i.i65 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i66 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i67 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i68 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i53 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i54 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__t.i = alloca %"class.std::__1::tuple"*, align 8
  %__t.addr.i51 = alloca %struct._opaque_pthread_t**, align 8
  %__func.addr.i = alloca i8* (i8*)*, align 8
  %__arg.addr.i = alloca i8*, align 8
  %this.addr.i.i47 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i48 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__t.addr.i.i.i.i.i33 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i.i34 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %__t.addr.i.i.i.i35 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i36 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %__t.addr.i.i.i37 = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i38 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i.i39 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i40 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i41 = alloca %"class.std::__1::tuple"*, align 8
  %__t.addr.i8.i.i = alloca void ()**, align 8
  %__t.addr.i3.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__t.addr.i.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i10.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %__t2.addr.i.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr.i11.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %__t2.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__t.addr.i.i.i.i.i.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr.i.i4.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i5.i.i.i.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i4.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i.i.i.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
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
  %this.addr.i.i.i.i.i = alloca %"class.std::__1::__tuple_leaf.5"*, align 8
  %__t.addr.i8.i.i.i.i = alloca void ()**, align 8
  %__t.addr.i.i.i.i.i27 = alloca %"class.std::__1::unique_ptr"*, align 8
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.10", align 1
  %this.addr.i.i.i.i28 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %__u.addr.i.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr5.i.i.i.i = alloca void ()**, align 8
  %4 = alloca %"struct.std::__1::__tuple_indices", align 1
  %5 = alloca %"struct.std::__1::__tuple_types", align 1
  %6 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %7 = alloca %"struct.std::__1::__tuple_types.10", align 1
  %this.addr.i.i.i29 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %__u.addr.i.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr5.i.i.i = alloca void ()**, align 8
  %__t.addr.i.i.i30 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i.i31 = alloca %"class.std::__1::tuple"*, align 8
  %__u.addr.i.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr2.i.i = alloca void ()**, align 8
  %agg.tmp.i.i = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp4.i.i = alloca %"struct.std::__1::__tuple_types", align 1
  %agg.tmp5.i.i = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %agg.tmp6.i.i = alloca %"struct.std::__1::__tuple_types.10", align 1
  %this.addr.i32 = alloca %"class.std::__1::tuple"*, align 8
  %__u.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__u.addr2.i = alloca void ()**, align 8
  %__t.addr.i.i = alloca void ()*, align 8
  %__t.addr.i26 = alloca void ()*, align 8
  %__t.addr.i25 = alloca void ()*, align 8
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i.i17 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i18 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__p.addr.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %__tmp.i.i.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i.i19 = alloca %"class.std::__1::unique_ptr"*, align 8
  %this.addr.i20 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t.addr.i.i.i.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
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
  %__p = alloca %"class.std::__1::unique_ptr.2", align 8
  %ref.tmp = alloca void ()*, align 8
  %__ec = alloca i32, align 4
  store %"class.std::__1::thread"* %this, %"class.std::__1::thread"** %this.addr, align 8
  store void ()* %__f, void ()** %__f.addr, align 8
  %this1 = load %"class.std::__1::thread"*, %"class.std::__1::thread"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 8) #12
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
  store %"class.std::__1::__compressed_pair"* %__ptr_.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %__p.addr.i.i, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i, align 8
  %10 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair"* %this1.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %10, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %11 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %12 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %12, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  %13 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem"* %11, %"class.std::__1::__thread_struct"** dereferenceable(8) %13) #11
  %14 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.1"*
  %call4 = invoke i8* @_Znwm(i64 16) #12
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
  store %"class.std::__1::__compressed_pair"* %__ptr_.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i.i.i.i.i.i, align 8
  %36 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %36) #11
  %37 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %37, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8
  %__ptr_2.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i.i.i.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_2.i.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %this1.i5.i.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i4.i.i.i.i.i.i.i.i, align 8
  %38 = bitcast %"class.std::__1::__compressed_pair"* %this1.i5.i.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i6.i.i.i.i.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %38) #11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i.i.i.i.i.i.i.i, align 8
  %39 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %39, %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, align 8
  %40 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %__u.addr.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr"* %40, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %this1.i6.i.i.i.i.i.i.i = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %this.addr.i5.i.i.i.i.i.i.i, align 8
  %__ptr_.i7.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i6.i.i.i.i.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_.i7.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %this1.i.i8.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i4.i.i.i.i.i.i.i, align 8
  %41 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i8.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.1"*
  %call.i.i9.i.i.i.i.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %41) #11
  store %"struct.std::__1::default_delete"* %call.i.i9.i.i.i.i.i.i.i, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  %42 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__compressed_pair"* %__ptr_.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %ref.tmp.i.i.i.i.i.i.i, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %42, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  %this1.i12.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i11.i.i.i.i.i.i.i, align 8
  %43 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i, align 8
  %44 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__compressed_pair"* %this1.i12.i.i.i.i.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %43, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %44, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  %this1.i.i13.i.i.i.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i10.i.i.i.i.i.i.i, align 8
  %45 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %46 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t1.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"** %46, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  %47 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i.i.i.i.i.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem"* %45, %"class.std::__1::__thread_struct"** dereferenceable(8) %47) #11
  %48 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i13.i.i.i.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.1"*
  %49 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t2.addr.i.i.i.i.i.i.i.i.i, align 8
  store %"struct.std::__1::default_delete"* %49, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  %50 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i3.i.i.i.i.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.1"* %48, %"struct.std::__1::default_delete"* dereferenceable(1) %50) #11
  %51 = bitcast %"struct.std::__1::__tuple_impl"* %this6.i.i.i.i to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = bitcast i8* %52 to %"class.std::__1::__tuple_leaf.5"*
  %54 = load void ()**, void ()*** %__u.addr5.i.i.i.i, align 8
  store void ()** %54, void ()*** %__t.addr.i9.i.i.i.i, align 8
  %55 = load void ()**, void ()*** %__t.addr.i9.i.i.i.i, align 8
  store %"class.std::__1::__tuple_leaf.5"* %53, %"class.std::__1::__tuple_leaf.5"** %this.addr.i.i.i.i.i, align 8
  store void ()** %55, void ()*** %__t.addr.i8.i.i.i.i, align 8
  %this1.i.i.i.i.i = load %"class.std::__1::__tuple_leaf.5"*, %"class.std::__1::__tuple_leaf.5"** %this.addr.i.i.i.i.i, align 8
  %value.i.i.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.5", %"class.std::__1::__tuple_leaf.5"* %this1.i.i.i.i.i, i32 0, i32 0
  %56 = load void ()**, void ()*** %__t.addr.i8.i.i.i.i, align 8
  store void ()** %56, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %57 = load void ()**, void ()*** %__t.addr.i.i.i.i.i.i, align 8
  %58 = load void ()*, void ()** %57, align 8
  store void ()* %58, void ()** %value.i.i.i.i.i, align 8
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i40, align 8
  store %"class.std::__1::tuple"* %15, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  %this1.i42 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i40, align 8
  %59 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i41, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i42, %"class.std::__1::unique_ptr.2"** %this.addr.i.i38, align 8
  store %"class.std::__1::tuple"* %59, %"class.std::__1::tuple"** %__p.addr.i.i39, align 8
  %this1.i.i43 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i38, align 8
  %__ptr_.i.i44 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i43, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i.i44, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i36, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i39, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  %this1.i.i.i45 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i36, align 8
  %60 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i37, align 8
  store %"class.std::__1::__compressed_pair.3"* %this1.i.i.i45, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i34, align 8
  store %"class.std::__1::tuple"** %60, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  %this1.i.i.i.i46 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i34, align 8
  %61 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.4"*
  %62 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i35, align 8
  store %"class.std::__1::tuple"** %62, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  %63 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i33, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.4"* %61, %"class.std::__1::tuple"** dereferenceable(8) %63) #11
  %64 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i46 to %"struct.std::__1::__compressed_pair_elem.6"*
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this1, i32 0, i32 0
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i48, align 8
  %this1.i49 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i48, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i49, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i47, align 8
  %this1.i.i50 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i47, align 8
  %65 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i50 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %65) #11
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
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i54, align 8
  %this1.i55 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i54, align 8
  %__ptr_.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i55, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i56, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i53, align 8
  %this1.i.i57 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i53, align 8
  %72 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i57 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %72) #11
  %73 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i58, align 8
  store %"class.std::__1::tuple"* %73, %"class.std::__1::tuple"** %__t.i, align 8
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i55, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_2.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i4.i, align 8
  %74 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i6.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %74) #11
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
  call void @_ZdlPv(i8* %call) #13
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
  call void @_ZdlPv(i8* %call4) #13
  br label %ehcleanup

lpad11:                                           ; preds = %invoke.cont8, %if.else
  %85 = landingpad { i8*, i32 }
          cleanup
  %86 = extractvalue { i8*, i32 } %85, 0
  store i8* %86, i8** %exn.slot, align 8
  %87 = extractvalue { i8*, i32 } %85, 1
  store i32 %87, i32* %ehselector.slot, align 4
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i68, align 8
  %this1.i69 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i68, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i69, %"class.std::__1::unique_ptr.2"** %this.addr.i.i67, align 8
  %this1.i.i70 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i67, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i.i70, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i64, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %this1.i.i.i71 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i64, align 8
  %__ptr_.i.i.i72 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i.i.i72, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i63, align 8
  %this1.i.i.i.i73 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i63, align 8
  %88 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i73 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i.i.i74 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %88) #11
  %89 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i74, align 8
  store %"class.std::__1::tuple"* %89, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  %90 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i65, align 8
  %__ptr_2.i.i.i75 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_2.i.i.i75, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i62, align 8
  %this1.i7.i.i.i76 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i62, align 8
  %91 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i7.i.i.i76 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i8.i.i.i77 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %91) #11
  store %"class.std::__1::tuple"* %90, %"class.std::__1::tuple"** %call.i8.i.i.i77, align 8
  %92 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  %tobool.i.i.i78 = icmp ne %"class.std::__1::tuple"* %92, null
  br i1 %tobool.i.i.i78, label %if.then.i.i.i84, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

if.then.i.i.i84:                                  ; preds = %lpad11
  %__ptr_4.i.i.i79 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i71, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_4.i.i.i79, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i61, align 8
  %this1.i10.i.i.i80 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i61, align 8
  %93 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i10.i.i.i80 to %"struct.std::__1::__compressed_pair_elem.6"*
  %call.i11.i.i.i81 = call dereferenceable(1) %"struct.std::__1::default_delete.7"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.6"* %93) #11
  %94 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i66, align 8
  store %"struct.std::__1::default_delete.7"* %call.i11.i.i.i81, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i59, align 8
  store %"class.std::__1::tuple"* %94, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %this1.i13.i.i.i82 = load %"struct.std::__1::default_delete.7"*, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i59, align 8
  %95 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i60, align 8
  %isnull.i.i.i.i83 = icmp eq %"class.std::__1::tuple"* %95, null
  br i1 %isnull.i.i.i.i83, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i85

delete.notnull.i.i.i.i85:                         ; preds = %if.then.i.i.i84
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %95) #11
  %96 = bitcast %"class.std::__1::tuple"* %95 to i8*
  call void @_ZdlPv(i8* %96) #13
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i85, %if.then.i.i.i84
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad11, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont12
  %97 = load i32, i32* %__ec, align 4
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #10
          to label %invoke.cont15 unwind label %lpad11

invoke.cont15:                                    ; preds = %if.else
  unreachable

if.end:                                           ; preds = %if.then
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i95, align 8
  %this1.i96 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i95, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i96, %"class.std::__1::unique_ptr.2"** %this.addr.i.i94, align 8
  %this1.i.i97 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i94, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i.i97, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i91, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %this1.i.i.i98 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i91, align 8
  %__ptr_.i.i.i99 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i.i.i99, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i90, align 8
  %this1.i.i.i.i100 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i90, align 8
  %98 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i100 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i.i.i101 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %98) #11
  %99 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i101, align 8
  store %"class.std::__1::tuple"* %99, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  %100 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i92, align 8
  %__ptr_2.i.i.i102 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_2.i.i.i102, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i89, align 8
  %this1.i7.i.i.i103 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i89, align 8
  %101 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i7.i.i.i103 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i8.i.i.i104 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %101) #11
  store %"class.std::__1::tuple"* %100, %"class.std::__1::tuple"** %call.i8.i.i.i104, align 8
  %102 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  %tobool.i.i.i105 = icmp ne %"class.std::__1::tuple"* %102, null
  br i1 %tobool.i.i.i105, label %if.then.i.i.i111, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114

if.then.i.i.i111:                                 ; preds = %if.end
  %__ptr_4.i.i.i106 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i98, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_4.i.i.i106, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i88, align 8
  %this1.i10.i.i.i107 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i88, align 8
  %103 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i10.i.i.i107 to %"struct.std::__1::__compressed_pair_elem.6"*
  %call.i11.i.i.i108 = call dereferenceable(1) %"struct.std::__1::default_delete.7"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.6"* %103) #11
  %104 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i93, align 8
  store %"struct.std::__1::default_delete.7"* %call.i11.i.i.i108, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i86, align 8
  store %"class.std::__1::tuple"* %104, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %this1.i13.i.i.i109 = load %"struct.std::__1::default_delete.7"*, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i86, align 8
  %105 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i87, align 8
  %isnull.i.i.i.i110 = icmp eq %"class.std::__1::tuple"* %105, null
  br i1 %isnull.i.i.i.i110, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i113, label %delete.notnull.i.i.i.i112

delete.notnull.i.i.i.i112:                        ; preds = %if.then.i.i.i111
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %105) #11
  %106 = bitcast %"class.std::__1::tuple"* %105 to i8*
  call void @_ZdlPv(i8* %106) #13
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
  store %"class.std::__1::__compressed_pair"* %__ptr_.i.i.i128, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i119, align 8
  %this1.i.i.i.i129 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i119, align 8
  %107 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i129 to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i.i.i130 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %107) #11
  %108 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i130, align 8
  store %"class.std::__1::__thread_struct"* %108, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  %109 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i121, align 8
  %__ptr_2.i.i.i131 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_2.i.i.i131, %"class.std::__1::__compressed_pair"** %this.addr.i6.i.i.i118, align 8
  %this1.i7.i.i.i132 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i6.i.i.i118, align 8
  %110 = bitcast %"class.std::__1::__compressed_pair"* %this1.i7.i.i.i132 to %"struct.std::__1::__compressed_pair_elem"*
  %call.i8.i.i.i133 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %110) #11
  store %"class.std::__1::__thread_struct"* %109, %"class.std::__1::__thread_struct"** %call.i8.i.i.i133, align 8
  %111 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i122, align 8
  %tobool.i.i.i134 = icmp ne %"class.std::__1::__thread_struct"* %111, null
  br i1 %tobool.i.i.i134, label %if.then.i.i.i140, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit143

if.then.i.i.i140:                                 ; preds = %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit114
  %__ptr_4.i.i.i135 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i127, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_4.i.i.i135, %"class.std::__1::__compressed_pair"** %this.addr.i9.i.i.i117, align 8
  %this1.i10.i.i.i136 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i9.i.i.i117, align 8
  %112 = bitcast %"class.std::__1::__compressed_pair"* %this1.i10.i.i.i136 to %"struct.std::__1::__compressed_pair_elem.1"*
  %call.i11.i.i.i137 = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %112) #11
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
  call void @_ZdlPv(i8* %115) #13
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
  store %"class.std::__1::__compressed_pair"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i17, align 8
  %this1.i.i.i.i24 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i17, align 8
  %116 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i24 to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %116) #11
  %117 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %117, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %118 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i6.i.i.i, align 8
  %119 = bitcast %"class.std::__1::__compressed_pair"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %119) #11
  store %"class.std::__1::__thread_struct"* %118, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8
  %120 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %120, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %ehcleanup
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i23, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i9.i.i.i, align 8
  %121 = bitcast %"class.std::__1::__compressed_pair"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.1"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %121) #11
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
  call void @_ZdlPv(i8* %124) #13
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

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #6

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: noinline ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i12.i.i.i40 = alloca %"struct.std::__1::default_delete.7"*, align 8
  %__ptr.addr.i.i.i.i41 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i42 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i6.i.i.i43 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i.i44 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i45 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i.i.i46 = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i47 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i48 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i49 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__t.addr.i2.i = alloca void ()**, align 8
  %__t.addr.i.i.i36 = alloca void ()**, align 8
  %__f.addr.i.i = alloca void ()**, align 8
  %this.addr.i.i.i37 = alloca %"class.std::__1::__tuple_leaf.5"*, align 8
  %__t.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  %0 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %__t.addr.i38 = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i30 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i31 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i4.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i24 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i25 = alloca %"class.std::__1::unique_ptr"*, align 8
  %__t.i = alloca %"class.std::__1::__thread_struct"*, align 8
  %this.addr.i12.i.i.i = alloca %"struct.std::__1::default_delete.7"*, align 8
  %__ptr.addr.i.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i.i16 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i.i.i17 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %__tmp.i.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i18 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i19 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %this.addr.i.i14 = alloca %"class.std::__1::__tuple_leaf"*, align 8
  %__t.addr.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i.i10 = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %this.addr.i11 = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__t.addr.i.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %__t.addr.i.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.3"*, align 8
  %__t.addr.i.i.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr.i.i = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i.i = alloca %"class.std::__1::tuple"*, align 8
  %this.addr.i = alloca %"class.std::__1::unique_ptr.2"*, align 8
  %__p.addr.i = alloca %"class.std::__1::tuple"*, align 8
  %__vp.addr = alloca i8*, align 8
  %__p = alloca %"class.std::__1::unique_ptr.2", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices.9", align 1
  store i8* %__vp, i8** %__vp.addr, align 8
  %1 = load i8*, i8** %__vp.addr, align 8
  %2 = bitcast i8* %1 to %"class.std::__1::tuple"*
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__p.addr.i, align 8
  %this1.i = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i, align 8
  %3 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i, %"class.std::__1::unique_ptr.2"** %this.addr.i.i, align 8
  store %"class.std::__1::tuple"* %3, %"class.std::__1::tuple"** %__p.addr.i.i, align 8
  %this1.i.i = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i, align 8
  %__ptr_.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i, align 8
  store %"class.std::__1::tuple"** %__p.addr.i.i, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i, align 8
  %4 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.3"* %this1.i.i.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %4, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.4"*
  %6 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i, align 8
  store %"class.std::__1::tuple"** %6, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  %7 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i.i.i.i.i, align 8
  call void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.4"* %5, %"class.std::__1::tuple"** dereferenceable(8) %7) #11
  %8 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.6"*
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i11, align 8
  %this1.i12 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i11, align 8
  %__ptr_.i = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i12, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i10, align 8
  %this1.i.i13 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i10, align 8
  %9 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i13 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %9) #11
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
  store %"class.std::__1::__compressed_pair"* %__ptr_.i27, %"class.std::__1::__compressed_pair"** %this.addr.i.i24, align 8
  %this1.i.i28 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i24, align 8
  %13 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i28 to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i29 = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %13) #11
  %14 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i29, align 8
  store %"class.std::__1::__thread_struct"* %14, %"class.std::__1::__thread_struct"** %__t.i, align 8
  %__ptr_2.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i26, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_2.i, %"class.std::__1::__compressed_pair"** %this.addr.i4.i, align 8
  %this1.i5.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i4.i, align 8
  %15 = bitcast %"class.std::__1::__compressed_pair"* %this1.i5.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i6.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %15) #11
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %call.i6.i, align 8
  %16 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__t.i, align 8
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %call, %"class.std::__1::__thread_struct"* %16)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont1
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i31, align 8
  %this1.i32 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i31, align 8
  %__ptr_.i33 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i32, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i33, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i30, align 8
  %this1.i.i34 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i30, align 8
  %17 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i34 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i35 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %17) #11
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
  %22 = bitcast i8* %add.ptr.i.i to %"class.std::__1::__tuple_leaf.5"*
  store %"class.std::__1::__tuple_leaf.5"* %22, %"class.std::__1::__tuple_leaf.5"** %this.addr.i.i.i37, align 8
  %this1.i.i.i39 = load %"class.std::__1::__tuple_leaf.5"*, %"class.std::__1::__tuple_leaf.5"** %this.addr.i.i.i37, align 8
  %value.i.i.i = getelementptr inbounds %"class.std::__1::__tuple_leaf.5", %"class.std::__1::__tuple_leaf.5"* %this1.i.i.i39, i32 0, i32 0
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
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i49, align 8
  %this1.i50 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i49, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i50, %"class.std::__1::unique_ptr.2"** %this.addr.i.i48, align 8
  %this1.i.i51 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i48, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i.i51, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i45, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %this1.i.i.i52 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i45, align 8
  %__ptr_.i.i.i53 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i.i.i53, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i44, align 8
  %this1.i.i.i.i54 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i44, align 8
  %27 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i54 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i.i.i55 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %27) #11
  %28 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i55, align 8
  store %"class.std::__1::tuple"* %28, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  %29 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i46, align 8
  %__ptr_2.i.i.i56 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_2.i.i.i56, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i43, align 8
  %this1.i7.i.i.i57 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i43, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i7.i.i.i57 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i8.i.i.i58 = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %30) #11
  store %"class.std::__1::tuple"* %29, %"class.std::__1::tuple"** %call.i8.i.i.i58, align 8
  %31 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  %tobool.i.i.i59 = icmp ne %"class.std::__1::tuple"* %31, null
  br i1 %tobool.i.i.i59, label %if.then.i.i.i65, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit68

if.then.i.i.i65:                                  ; preds = %invoke.cont8
  %__ptr_4.i.i.i60 = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i52, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_4.i.i.i60, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i42, align 8
  %this1.i10.i.i.i61 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i42, align 8
  %32 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i10.i.i.i61 to %"struct.std::__1::__compressed_pair_elem.6"*
  %call.i11.i.i.i62 = call dereferenceable(1) %"struct.std::__1::default_delete.7"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.6"* %32) #11
  %33 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i47, align 8
  store %"struct.std::__1::default_delete.7"* %call.i11.i.i.i62, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i40, align 8
  store %"class.std::__1::tuple"* %33, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %this1.i13.i.i.i63 = load %"struct.std::__1::default_delete.7"*, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i40, align 8
  %34 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i41, align 8
  %isnull.i.i.i.i64 = icmp eq %"class.std::__1::tuple"* %34, null
  br i1 %isnull.i.i.i.i64, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i67, label %delete.notnull.i.i.i.i66

delete.notnull.i.i.i.i66:                         ; preds = %if.then.i.i.i65
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %34) #11
  %35 = bitcast %"class.std::__1::tuple"* %34 to i8*
  call void @_ZdlPv(i8* %35) #13
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
  store %"class.std::__1::unique_ptr.2"* %__p, %"class.std::__1::unique_ptr.2"** %this.addr.i19, align 8
  %this1.i20 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i19, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i20, %"class.std::__1::unique_ptr.2"** %this.addr.i.i18, align 8
  %this1.i.i21 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i18, align 8
  store %"class.std::__1::unique_ptr.2"* %this1.i.i21, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i17, align 8
  store %"class.std::__1::tuple"* null, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %this1.i.i.i22 = load %"class.std::__1::unique_ptr.2"*, %"class.std::__1::unique_ptr.2"** %this.addr.i.i.i17, align 8
  %__ptr_.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i16, align 8
  %this1.i.i.i.i23 = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i.i.i.i16, align 8
  %39 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i.i.i.i23 to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %39) #11
  %40 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %call.i.i.i.i, align 8
  store %"class.std::__1::tuple"* %40, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  %41 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i6.i.i.i, align 8
  %42 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem.4"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %42) #11
  store %"class.std::__1::tuple"* %41, %"class.std::__1::tuple"** %call.i8.i.i.i, align 8
  %43 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::tuple"* %43, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %lpad
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.2", %"class.std::__1::unique_ptr.2"* %this1.i.i.i22, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.3"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair.3"*, %"class.std::__1::__compressed_pair.3"** %this.addr.i9.i.i.i, align 8
  %44 = bitcast %"class.std::__1::__compressed_pair.3"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.6"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete.7"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.6"* %44) #11
  %45 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__tmp.i.i.i, align 8
  store %"struct.std::__1::default_delete.7"* %call.i11.i.i.i, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i, align 8
  store %"class.std::__1::tuple"* %45, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %this1.i13.i.i.i = load %"struct.std::__1::default_delete.7"*, %"struct.std::__1::default_delete.7"** %this.addr.i12.i.i.i, align 8
  %46 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %__ptr.addr.i.i.i.i, align 8
  %isnull.i.i.i.i = icmp eq %"class.std::__1::tuple"* %46, null
  br i1 %isnull.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev(%"class.std::__1::tuple"* %46) #11
  %47 = bitcast %"class.std::__1::tuple"* %46 to i8*
  call void @_ZdlPv(i8* %47) #13
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

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #8 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #11
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"class.std::__1::__thread_struct"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"struct.std::__1::default_delete"*
  ret %"struct.std::__1::default_delete"* %0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem"* %this, %"class.std::__1::__thread_struct"** dereferenceable(8) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::__thread_struct"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  %__u.addr = alloca %"class.std::__1::__thread_struct"**, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  store %"class.std::__1::__thread_struct"** %__u, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__u.addr, align 8
  store %"class.std::__1::__thread_struct"** %0, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::__thread_struct"**, %"class.std::__1::__thread_struct"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %1, align 8
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %__value_, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_(%"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::default_delete"* dereferenceable(1) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"struct.std::__1::default_delete"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  %__u.addr = alloca %"struct.std::__1::default_delete"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  store %"struct.std::__1::default_delete"* %__u, %"struct.std::__1::default_delete"** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"struct.std::__1::default_delete"*
  %1 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__u.addr, align 8
  store %"struct.std::__1::default_delete"* %1, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  %2 = load %"struct.std::__1::default_delete"*, %"struct.std::__1::default_delete"** %__t.addr.i, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEC2IRSA_vEEOT_(%"struct.std::__1::__compressed_pair_elem.4"* %this, %"class.std::__1::tuple"** dereferenceable(8) %__u) unnamed_addr #0 align 2 {
entry:
  %__t.addr.i = alloca %"class.std::__1::tuple"**, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.4"*, align 8
  %__u.addr = alloca %"class.std::__1::tuple"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.4"* %this, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  store %"class.std::__1::tuple"** %__u, %"class.std::__1::tuple"*** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.4"*, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.4", %"struct.std::__1::__compressed_pair_elem.4"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__u.addr, align 8
  store %"class.std::__1::tuple"** %0, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %1 = load %"class.std::__1::tuple"**, %"class.std::__1::tuple"*** %__t.addr.i, align 8
  %2 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %1, align 8
  store %"class.std::__1::tuple"* %2, %"class.std::__1::tuple"** %__value_, align 8
  ret void
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(%"class.std::__1::__thread_specific_ptr"* %this, %"class.std::__1::__thread_struct"* %__p) #2 align 2 {
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

declare i32 @pthread_setspecific(i64, i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.4"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.4"* %this, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.4"*, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.4", %"struct.std::__1::__compressed_pair_elem.4"* %this1, i32 0, i32 0
  ret %"class.std::__1::tuple"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::tuple"** @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.4"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.4"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.4"* %this, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.4"*, %"struct.std::__1::__compressed_pair_elem.4"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.4", %"struct.std::__1::__compressed_pair_elem.4"* %this1, i32 0, i32 0
  ret %"class.std::__1::tuple"** %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(1) %"struct.std::__1::default_delete.7"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.6"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.6"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.6"* %this, %"struct.std::__1::__compressed_pair_elem.6"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.6"*, %"struct.std::__1::__compressed_pair_elem.6"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.6"* %this1 to %"struct.std::__1::default_delete.7"*
  ret %"struct.std::__1::default_delete.7"* %0
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
  %this.addr.i9.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i6.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair"*, align 8
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
  store %"class.std::__1::__compressed_pair"* %__ptr_.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i.i.i.i, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #11
  %1 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %call.i.i.i.i, align 8
  store %"class.std::__1::__thread_struct"* %1, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %2 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__p.addr.i.i.i, align 8
  %__ptr_2.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_2.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i6.i.i.i, align 8
  %this1.i7.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i6.i.i.i, align 8
  %3 = bitcast %"class.std::__1::__compressed_pair"* %this1.i7.i.i.i to %"struct.std::__1::__compressed_pair_elem"*
  %call.i8.i.i.i = call dereferenceable(8) %"class.std::__1::__thread_struct"** @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %3) #11
  store %"class.std::__1::__thread_struct"* %2, %"class.std::__1::__thread_struct"** %call.i8.i.i.i, align 8
  %4 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__tmp.i.i.i, align 8
  %tobool.i.i.i = icmp ne %"class.std::__1::__thread_struct"* %4, null
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

if.then.i.i.i:                                    ; preds = %entry
  %__ptr_4.i.i.i = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %this1.i.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %__ptr_4.i.i.i, %"class.std::__1::__compressed_pair"** %this.addr.i9.i.i.i, align 8
  %this1.i10.i.i.i = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr.i9.i.i.i, align 8
  %5 = bitcast %"class.std::__1::__compressed_pair"* %this1.i10.i.i.i to %"struct.std::__1::__compressed_pair_elem.1"*
  %call.i11.i.i.i = call dereferenceable(1) %"struct.std::__1::default_delete"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %5) #11
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
  call void @_ZdlPv(i8* %8) #13
  br label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %if.then.i.i.i
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit: ; preds = %entry, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #5

; Function Attrs: noinline ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %call.i = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #11
  %__fill_.i = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1.i50, i32 0, i32 2
  %35 = load i32, i32* %__fill_.i, align 8
  %call2.i = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call.i, i32 %35) #11
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
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #11
  %exn.i.i = load i8*, i8** %exn.slot.i.i, align 8
  %sel.i.i = load i32, i32* %ehselector.slot.i.i, align 4
  %lpad.val.i.i = insertvalue { i8*, i32 } undef, i8* %exn.i.i, 0
  %lpad.val4.i.i = insertvalue { i8*, i32 } %lpad.val.i.i, i32 %sel.i.i, 1
  br label %lpad1.body

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp.i.i) #11
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
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #11
  br label %catch

catch:                                            ; preds = %lpad1.body, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %64 = call i8* @__cxa_begin_catch(i8* %exn) #11
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
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #11
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
  call void @__clang_call_terminate(i8* %75) #14
  unreachable
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #0 align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @strlen(i8* %0) #11
  ret i64 %call
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i64 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr.i65 = alloca i8*, align 8
  %__n.addr.i66 = alloca i64, align 8
  %__p.addr.i.i = alloca i8*, align 8
  %__x.addr.i.i.i.i.i = alloca i8*, align 8
  %__r.addr.i.i.i.i = alloca i8*, align 8
  %this.addr.i.i10.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i11.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i4.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i5.i.i = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i.i.i56 = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i57 = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i58 = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i59 = alloca %"class.std::__1::basic_string"*, align 8
  %this.addr.i.i.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
  %this.addr.i.i.i = alloca %"class.std::__1::__compressed_pair.11"*, align 8
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
  store %"class.std::__1::__compressed_pair.11"* %__r_.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i, align 8
  %this1.i.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i, align 8
  store %"class.std::__1::__compressed_pair.11"* %this1.i.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i, align 8
  %this1.i.i.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i, align 8
  %30 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.12"*
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem.12"* %30)
  %31 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i to %"struct.std::__1::__compressed_pair_elem.14"*
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.14"* %31) #11
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
  store %"class.std::__1::__compressed_pair.11"* %__r_.i.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i56, align 8
  %this1.i.i.i.i63 = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i.i.i56, align 8
  %35 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i.i.i63 to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %35) #11
  %36 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i.i.i, i32 0, i32 0
  %__s.i.i.i = bitcast %union.anon* %36 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %37 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i32 0, i32 0
  %__size_.i.i.i = bitcast %union.anon.13* %37 to i8*
  %38 = load i8, i8* %__size_.i.i.i, align 8
  %conv.i.i.i = zext i8 %38 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %this1.i6.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i5.i.i, align 8
  %__r_.i7.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i6.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__r_.i7.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i4.i.i, align 8
  %this1.i.i8.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i4.i.i, align 8
  %39 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i8.i.i to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i9.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %39) #11
  %40 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call.i.i9.i.i, i32 0, i32 0
  %__l.i.i.i = bitcast %union.anon* %40 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__data_.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l.i.i.i, i32 0, i32 2
  %41 = load i8*, i8** %__data_.i.i.i, align 8
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

cond.false.i.i:                                   ; preds = %if.then17
  store %"class.std::__1::basic_string"* %this1.i.i61, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %this1.i12.i.i = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr.i11.i.i, align 8
  %__r_.i13.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1.i12.i.i, i32 0, i32 0
  store %"class.std::__1::__compressed_pair.11"* %__r_.i13.i.i, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i10.i.i, align 8
  %this1.i.i14.i.i = load %"class.std::__1::__compressed_pair.11"*, %"class.std::__1::__compressed_pair.11"** %this.addr.i.i10.i.i, align 8
  %42 = bitcast %"class.std::__1::__compressed_pair.11"* %this1.i.i14.i.i to %"struct.std::__1::__compressed_pair_elem.12"*
  %call.i.i15.i.i = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %42) #11
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
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #11
  br label %eh.resume

if.end24:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #11
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
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #5

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #3

declare void @__cxa_end_catch()

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #5

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #3

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem.12"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.12"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.12"* %this, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.12"*, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.12"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_ to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.14"* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr.i = alloca %"class.std::__1::allocator"*, align 8
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.14"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.14"* %this, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.14"*, %"struct.std::__1::__compressed_pair_elem.14"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.14"* %this1 to %"class.std::__1::allocator"*
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %this.addr.i, align 8
  %this1.i = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr.i, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.12"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.12"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.12"* %this, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.12"*, %"struct.std::__1::__compressed_pair_elem.12"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.12"* %this1, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #0 align 2 {
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
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #0 align 2 {
entry:
  ret i32 -1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #3

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #5

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) #3

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #3

; Function Attrs: nounwind
declare i64 @strlen(i8*) #5

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { argmemonly nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
