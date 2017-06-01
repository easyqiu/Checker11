; ModuleID = 'x.bc'
source_filename = "example.c"
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
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.11" }
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.12" }
%"struct.std::__1::__compressed_pair_elem.12" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.13, [23 x i8] }
%union.anon.13 = type { i8 }

@data1 = global i32 0, align 4
@data2 = local_unnamed_addr global i32 0, align 4
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

; Function Attrs: norecurse nounwind ssp uwtable
define void @_Z2f1v() #0 {
entry:
  %myCast = bitcast i32* @data1 to i8*
  call void @preNonAtomicStore(i8* %myCast)
  store i32 2, i32* @data1, align 4, !tbaa !2
  call void @preFence(i32 5)
  fence release
  %myCast1 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  call void @preAtomicStore(i8* %myCast1, i32 2)
  store atomic i32 1, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) monotonic, align 4
  %myCast2 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  call void @preAtomicStore(i8* %myCast2, i32 2)
  store atomic i32 2, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) monotonic, align 4
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @_Z2f2v() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %myCast = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  call void @preAtomicLoad(i8* %myCast, i32 2)
  %0 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) monotonic, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %myCast1 = bitcast i32* @data2 to i8*
  call void @preNonAtomicStore(i8* %myCast1)
  store i32 %0, i32* @data2, align 4, !tbaa !2
  call void @preFence(i32 4)
  fence acquire
  ret void
}

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  %0 = bitcast %"class.std::__1::thread"* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2f1v)
  %1 = bitcast %"class.std::__1::thread"* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #10
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %myCast = bitcast i32* @data1 to i8*
  call void @preNonAtomicLoad(i8* %myCast)
  %2 = load i32, i32* @data1, align 4
  %myCast1 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  call void @preCmpXchg_int(i8* %myCast1, i32 %2, i32 2, i32 7, i32 7)
  %3 = cmpxchg weak i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0), i32 %2, i32 2 seq_cst seq_cst
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %invoke.cont._ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit_crit_edge, label %cmpxchg.store_expected34.i.i

invoke.cont._ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit_crit_edge: ; preds = %invoke.cont
  %myCast2 = bitcast i32* @data1 to i8*
  call void @preNonAtomicLoad(i8* %myCast2)
  %.pre = load i32, i32* @data1, align 4
  br label %_ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit

cmpxchg.store_expected34.i.i:                     ; preds = %invoke.cont
  %5 = extractvalue { i32, i1 } %3, 0
  %myCast3 = bitcast i32* @data1 to i8*
  call void @preNonAtomicStore(i8* %myCast3)
  store i32 %5, i32* @data1, align 4
  br label %_ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit

_ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit: ; preds = %invoke.cont._ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit_crit_edge, %cmpxchg.store_expected34.i.i
  %6 = phi i32 [ %.pre, %invoke.cont._ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit_crit_edge ], [ %5, %cmpxchg.store_expected34.i.i ]
  %myCast4 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  call void @preCmpXchg_int(i8* %myCast4, i32 %6, i32 2, i32 5, i32 2)
  %7 = cmpxchg i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0), i32 %6, i32 2 release monotonic
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %_ZNSt3__139atomic_compare_exchange_strong_explicitIiEEbPNS_6atomicIT_EEPS2_S2_NS_12memory_orderES6_.exit, label %cmpxchg.store_expected13.i.i

cmpxchg.store_expected13.i.i:                     ; preds = %_ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit
  %9 = extractvalue { i32, i1 } %7, 0
  %myCast5 = bitcast i32* @data1 to i8*
  call void @preNonAtomicStore(i8* %myCast5)
  store i32 %9, i32* @data1, align 4
  br label %_ZNSt3__139atomic_compare_exchange_strong_explicitIiEEbPNS_6atomicIT_EEPS2_S2_NS_12memory_orderES6_.exit

_ZNSt3__139atomic_compare_exchange_strong_explicitIiEEbPNS_6atomicIT_EEPS2_S2_NS_12memory_orderES6_.exit: ; preds = %_ZNSt3__128atomic_compare_exchange_weakIiEEbPNS_6atomicIT_EEPS2_S2_.exit, %cmpxchg.store_expected13.i.i
  %call1.i21 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %_ZNSt3__139atomic_compare_exchange_strong_explicitIiEEbPNS_6atomicIT_EEPS2_S2_NS_12memory_orderES6_.exit
  %myCast6 = bitcast i32* @data1 to i8*
  call void @preNonAtomicLoad(i8* %myCast6)
  %10 = load i32, i32* @data1, align 4, !tbaa !2
  %call6 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i21, i32 %10)
          to label %invoke.cont5 unwind label %lpad2

invoke.cont5:                                     ; preds = %invoke.cont3
  %call1.i24 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
          to label %invoke.cont7 unwind label %lpad2

invoke.cont7:                                     ; preds = %invoke.cont5
  %myCast7 = bitcast i32* @data2 to i8*
  call void @preNonAtomicLoad(i8* %myCast7)
  %11 = load i32, i32* @data2, align 4, !tbaa !2
  %call10 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i24, i32 %11)
          to label %invoke.cont9 unwind label %lpad2

invoke.cont9:                                     ; preds = %invoke.cont7
  %call1.i18 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
          to label %invoke.cont11 unwind label %lpad2

invoke.cont11:                                    ; preds = %invoke.cont9
  %myCast8 = bitcast i32* @data1 to i8*
  call void @preNonAtomicLoad(i8* %myCast8)
  %12 = load i32, i32* @data1, align 4, !tbaa !2
  %lnot = icmp eq i32 %12, 2
  br i1 %lnot, label %cond.end, label %cond.true, !prof !6

cond.true:                                        ; preds = %invoke.cont11
  invoke void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #11
          to label %invoke.cont13 unwind label %lpad2

invoke.cont13:                                    ; preds = %cond.true
  unreachable

lpad:                                             ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont5, %_ZNSt3__139atomic_compare_exchange_strong_explicitIiEEbPNS_6atomicIT_EEPS2_S2_NS_12memory_orderES6_.exit, %invoke.cont9, %invoke.cont14, %cond.end, %cond.true, %invoke.cont7, %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10
  br label %ehcleanup

cond.end:                                         ; preds = %invoke.cont11
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont14 unwind label %lpad2

invoke.cont14:                                    ; preds = %cond.end
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont15 unwind label %lpad2

invoke.cont15:                                    ; preds = %invoke.cont14
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10
  ret i32 0

ehcleanup:                                        ; preds = %lpad2, %lpad
  %exn.slot.0 = phi i8* [ %17, %lpad2 ], [ %14, %lpad ]
  %ehselector.slot.0 = phi i32 [ %18, %lpad2 ], [ %15, %lpad ]
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0
  %lpad.val17 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1
  resume { i8*, i32 } %lpad.val17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @__gxx_personality_v0(...)

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #4

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 8) #12
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #12
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  %2 = ptrtoint void ()* %__f to i64
  %3 = bitcast i8* %call4 to i64*
  %myCast = bitcast i64* %3 to i8*
  call void @preNonAtomicStore(i8* %myCast)
  store i64 %1, i64* %3, align 8, !tbaa !7
  %4 = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %4 to i64*
  %myCast1 = bitcast i64* %5 to i8*
  call void @preNonAtomicStore(i8* %myCast1)
  store i64 %2, i64* %5, align 8, !tbaa !10
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont3
  %cmp = icmp eq i32 %call.i31, 0
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  tail call void @_ZdlPv(i8* nonnull %call) #13
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #11
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %if.else
  unreachable

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**
  %myCast2 = bitcast %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8*
  call void @preNonAtomicLoad(i8* %myCast2)
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !12
  %myCast3 = bitcast %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8*
  call void @preNonAtomicStore(i8* %myCast3)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !12
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*
  tail call void @_ZdlPv(i8* %14) #13
  br label %ehcleanup18.thread

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #13
  br label %eh.resume

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10
  tail call void @_ZdlPv(i8* nonnull %call) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { i8*, i32 } %lpad.val20
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #7

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #8

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  %0 = bitcast i8* %__vp to i8**
  %myCast = bitcast i8** %0 to i8*
  call void @preNonAtomicLoad(i8* %myCast)
  %1 = load i8*, i8** %0, align 8, !tbaa !12
  %myCast1 = bitcast %"class.std::__1::__thread_struct"** %__value_.i.i.i10 to i8*
  call void @preNonAtomicStore(i8* %myCast1)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !12
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0
  %myCast2 = bitcast i64* %__key_.i to i8*
  call void @preNonAtomicLoad(i8* %myCast2)
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !13
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8
  %3 = bitcast i8* %value.i.i.i to void ()**
  %myCast3 = bitcast void ()** %3 to i8*
  call void @preNonAtomicLoad(i8* %myCast3)
  %4 = load void ()*, void ()** %3, align 8, !tbaa !12
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  %myCast4 = bitcast %"class.std::__1::__thread_struct"** %__value_.i.i.i10 to i8*
  call void @preNonAtomicLoad(i8* %myCast4)
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !12
  %myCast5 = bitcast %"class.std::__1::__thread_struct"** %__value_.i.i.i10 to i8*
  call void @preNonAtomicStore(i8* %myCast5)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !12
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*
  tail call void @_ZdlPv(i8* %6) #13
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #13
  ret i8* null

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup
  %tobool.i.i.i = icmp eq i8* %__vp, null
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  br label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ]
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  %myCast6 = bitcast %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi to i8*
  call void @preNonAtomicLoad(i8* %myCast6)
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !12
  %myCast7 = bitcast %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi to i8*
  call void @preNonAtomicStore(i8* %myCast7)
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !12
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*
  tail call void @_ZdlPv(i8* %8) #13
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #13
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #9 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #10
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #3

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #3

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #10
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @preNonAtomicLoad(i8* %0)
  %1 = load i8, i8* %0, align 8, !tbaa !16, !range !19
  %tobool.i = icmp eq i8 %1, 0
  br i1 %tobool.i, label %if.end28, label %if.then

if.then:                                          ; preds = %invoke.cont
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**
  %myCast = bitcast i8** %2 to i8*
  call void @preNonAtomicLoad(i8* %myCast)
  %vtable.i.i = load i8*, i8** %2, align 8, !tbaa !20
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*
  %myCast1 = bitcast i64* %3 to i8*
  call void @preNonAtomicLoad(i8* %myCast1)
  %vbase.offset.i.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**
  %myCast2 = bitcast %"class.std::__1::basic_streambuf"** %5 to i8*
  call void @preNonAtomicLoad(i8* %myCast2)
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !tbaa !22
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8
  %8 = bitcast i8* %__fmtflags_.i to i32*
  %myCast3 = bitcast i32* %8 to i8*
  call void @preNonAtomicLoad(i8* %myCast3)
  %9 = load i32, i32* %8, align 8, !tbaa !24
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144
  %10 = bitcast i8* %__fill_.i to i32*
  %myCast4 = bitcast i32* %10 to i8*
  call void @preNonAtomicLoad(i8* %myCast4)
  %11 = load i32, i32* %10, align 8, !tbaa !25
  %cmp.i.i = icmp eq i32 %11, -1
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16

if.then.i:                                        ; preds = %if.then
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #10
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3

.noexc:                                           ; preds = %if.then.i
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i

invoke.cont.i.i:                                  ; preds = %.noexc
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***
  %myCast5 = bitcast i8 (%"class.std::__1::ctype"*, i8)*** %14 to i8*
  call void @preNonAtomicLoad(i8* %myCast5)
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7
  %myCast6 = bitcast i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i to i8*
  call void @preNonAtomicLoad(i8* %myCast6)
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10
  br label %ehcleanup

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #10
  %conv.i = sext i8 %call.i6.i.i to i32
  %myCast7 = bitcast i32* %10 to i8*
  call void @preNonAtomicStore(i8* %myCast7)
  store i32 %conv.i, i32* %10, align 8, !tbaa !25
  br label %invoke.cont16

invoke.cont16:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i, %if.then
  %17 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i ], [ %11, %if.then ]
  %conv6.i = trunc i32 %17 to i8
  %and = and i32 %9, 176
  %cmp = icmp eq i32 %and, 32
  %cond = select i1 %cmp, i8* %add.ptr6, i8* %__str
  %call19 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %6, i8* %__str, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %7, i8 signext %conv6.i)
          to label %invoke.cont18 unwind label %lpad3

invoke.cont18:                                    ; preds = %invoke.cont16
  %cmp.i = icmp eq %"class.std::__1::basic_streambuf"* %call19, null
  br i1 %cmp.i, label %if.then22, label %if.end28

if.then22:                                        ; preds = %invoke.cont18
  %myCast8 = bitcast i8** %2 to i8*
  call void @preNonAtomicLoad(i8* %myCast8)
  %vtable23 = load i8*, i8** %2, align 8, !tbaa !20
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*
  %myCast9 = bitcast i64* %18 to i8*
  call void @preNonAtomicLoad(i8* %myCast9)
  %vbase.offset25 = load i64, i64* %18, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32
  %20 = bitcast i8* %__rdstate_.i.i to i32*
  %myCast10 = bitcast i32* %20 to i8*
  call void @preNonAtomicLoad(i8* %myCast10)
  %21 = load i32, i32* %20, align 8, !tbaa !27
  %or.i.i = or i32 %21, 5
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %19, i32 %or.i.i)
          to label %if.end28 unwind label %lpad1

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          catch i8* null
  %23 = extractvalue { i8*, i32 } %22, 0
  %.pre = bitcast %"class.std::__1::basic_ostream"* %__os to i8**
  %.pre53 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*
  br label %catch

lpad1:                                            ; preds = %if.then22
  %24 = landingpad { i8*, i32 }
          catch i8* null
  br label %ehcleanup

lpad3:                                            ; preds = %if.then.i, %invoke.cont16
  %25 = landingpad { i8*, i32 }
          catch i8* null
  br label %ehcleanup

if.end28:                                         ; preds = %invoke.cont, %if.then22, %invoke.cont18
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10
  br label %try.cont

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ]
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #10
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #10
  br label %catch

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ]
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ]
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ]
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #10
  %myCast11 = bitcast i8** %.pre-phi to i8*
  call void @preNonAtomicLoad(i8* %myCast11)
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !tbaa !20
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*
  %myCast12 = bitcast i64* %28 to i8*
  call void @preNonAtomicLoad(i8* %myCast12)
  %vbase.offset32 = load i64, i64* %28, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %.pre-phi54, i64 %vbase.offset32
  %29 = bitcast i8* %add.ptr33 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %29)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret %"class.std::__1::basic_ostream"* %__os

lpad34:                                           ; preds = %catch
  %30 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:                                        ; preds = %lpad34
  resume { i8*, i32 } %30

terminate.lpad:                                   ; preds = %lpad34
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  call void @__clang_call_terminate(i8* %32) #14
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #3

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3
  %myCast = bitcast i64* %__width_.i to i8*
  call void @preNonAtomicLoad(i8* %myCast)
  %0 = load i64, i64* %__width_.i, align 8, !tbaa !28
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub
  %sub = sub nsw i64 %0, %sub.ptr.sub
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %myCast1 = bitcast i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1 to i8*
  call void @preNonAtomicLoad(i8* %myCast1)
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !tbaa !20
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12
  %myCast2 = bitcast i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81 to i8*
  call void @preNonAtomicLoad(i8* %myCast2)
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6)
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6
  br i1 %cmp11, label %if.end15, label %return

if.end15:                                         ; preds = %if.then8, %if.end
  %cmp16 = icmp sgt i64 %__ns.0, 0
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26

if.end.i.i.i:                                     ; preds = %if.end15
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #10
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #12
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %myCast3 = bitcast i8** %__data_.i.i.i.i to i8*
  call void @preNonAtomicStore(i8* %myCast3)
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !29
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %myCast4 = bitcast i64* %__cap_.i.i.i.i to i8*
  call void @preNonAtomicStore(i8* %myCast4)
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !31
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %myCast5 = bitcast i64* %__size_.i.i.i.i to i8*
  call void @preNonAtomicStore(i8* %myCast5)
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !tbaa !32
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1
  call void @preNonAtomicStore(i8* %3)
  store i8 %conv.i.i.i.i, i8* %3, align 8, !tbaa !33
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ]
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ]
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ]
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #10
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0
  call void @preNonAtomicStore(i8* %arrayidx.i.i.i)
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !33
  call void @preNonAtomicLoad(i8* %3)
  %4 = load i8, i8* %3, align 8, !tbaa !33
  %5 = and i8 %4, 1
  %tobool.i.i.i = icmp eq i8 %5, 0
  %myCast6 = bitcast i8** %__data_.i.i.i.pre-phi to i8*
  call void @preNonAtomicLoad(i8* %myCast6)
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %myCast7 = bitcast i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7 to i8*
  call void @preNonAtomicLoad(i8* %myCast7)
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !tbaa !20
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12
  %myCast8 = bitcast i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85 to i8*
  call void @preNonAtomicLoad(i8* %myCast8)
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0
  call void @preNonAtomicLoad(i8* %3)
  %9 = load i8, i8* %3, align 8, !tbaa !33
  %10 = and i8 %9, 1
  %tobool.i.i.i89 = icmp eq i8 %10, 0
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  %myCast9 = bitcast i8** %__data_.i.i.i.pre-phi to i8*
  call void @preNonAtomicLoad(i8* %myCast9)
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !29
  call void @_ZdlPv(i8* %11) #13
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10
  br i1 %cmp21, label %if.end26, label %return

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @preNonAtomicLoad(i8* %3)
  %13 = load i8, i8* %3, align 8, !tbaa !33
  %14 = and i8 %13, 1
  %tobool.i.i.i92 = icmp eq i8 %14, 0
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94

if.then.i.i94:                                    ; preds = %lpad
  %myCast10 = bitcast i8** %__data_.i.i.i.pre-phi to i8*
  call void @preNonAtomicLoad(i8* %myCast10)
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !29
  call void @_ZdlPv(i8* %15) #13
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #10
  resume { i8*, i32 } %12

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0
  br i1 %cmp30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end26
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %myCast11 = bitcast i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16 to i8*
  call void @preNonAtomicLoad(i8* %myCast11)
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !tbaa !20
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12
  %myCast12 = bitcast i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i to i8*
  call void @preNonAtomicLoad(i8* %myCast12)
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29)
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29
  br i1 %cmp34, label %if.end38, label %return

if.end38:                                         ; preds = %if.then31, %if.end26
  %myCast13 = bitcast i64* %__width_.i to i8*
  call void @preNonAtomicStore(i8* %myCast13)
  store i64 0, i64* %__width_.i, align 8, !tbaa !28
  br label %return

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ]
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #5

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #5

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #3

declare void @preNonAtomicStore(i8*)

declare void @preAtomicStore(i8*, i32)

declare void @preNonAtomicLoad(i8*)

declare void @preAtomicLoad(i8*, i32)

declare void @preFence(i32)

declare void @preCmpXchg_int(i8*, i32, i32, i32, i32)

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"branch_weights", i32 2000, i32 1}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !15, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !18, i64 0, !4, i64 8}
!18 = !{!"bool", !4, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !5, i64 0}
!22 = !{!23, !9, i64 40}
!23 = !{!"_ZTSNSt3__18ios_baseE", !3, i64 8, !15, i64 16, !15, i64 24, !3, i64 32, !3, i64 36, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !15, i64 72, !15, i64 80, !9, i64 88, !15, i64 96, !15, i64 104, !9, i64 112, !15, i64 120, !15, i64 128}
!24 = !{!23, !3, i64 8}
!25 = !{!26, !3, i64 144}
!26 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !9, i64 136, !3, i64 144}
!27 = !{!23, !3, i64 32}
!28 = !{!23, !15, i64 24}
!29 = !{!30, !9, i64 16}
!30 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !15, i64 0, !15, i64 8, !9, i64 16}
!31 = !{!30, !15, i64 0}
!32 = !{!30, !15, i64 8}
!33 = !{!4, !4, i64 0}
