; ModuleID = 'tt.bc'
source_filename = "tt.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i32 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__thread_struct"* }
%"class.std::__1::unique_ptr.2" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { %"class.std::__1::tuple"* }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.5" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.5" = type { void ()* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@data1 = global i32 0, align 4, !dbg !0
@data2 = local_unnamed_addr global i32 0, align 4, !dbg !740
@x = global %"struct.std::__1::atomic" zeroinitializer, align 4, !dbg !742
@y = global %"struct.std::__1::atomic" zeroinitializer, align 4, !dbg !894
@.str = private unnamed_addr constant [10 x i8] c"ddd1: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ddd2: %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ddd3: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"data: %d, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @_Z2f1v() #0 !dbg !1823 {
entry:
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1826, metadata !1831), !dbg !1832
  %0 = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !dbg !1834
  store i32 %0, i32* @data1, align 4, !dbg !1836, !tbaa !1837
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %0), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32* @data1, i64 0, metadata !1842, metadata !1831), !dbg !1850
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1847, metadata !1831), !dbg !1852
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1848, metadata !1831), !dbg !1853
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1849, metadata !1831), !dbg !1854
  %1 = load i32, i32* @data1, align 4, !dbg !1855
  %2 = cmpxchg weak i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0), i32 %1, i32 0 release monotonic, !dbg !1855
  %3 = extractvalue { i32, i1 } %2, 1, !dbg !1855
  br i1 %3, label %entry._ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit_crit_edge, label %cmpxchg.store_expected13.i, !dbg !1855

entry._ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit_crit_edge: ; preds = %entry
  %.pre = load i32, i32* @data1, align 4, !tbaa !1837
  br label %_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit, !dbg !1855

cmpxchg.store_expected13.i:                       ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0, !dbg !1855
  store i32 %4, i32* @data1, align 4, !dbg !1857
  br label %_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit, !dbg !1857

_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit: ; preds = %entry._ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit_crit_edge, %cmpxchg.store_expected13.i
  %5 = phi i32 [ %4, %cmpxchg.store_expected13.i ], [ %.pre, %entry._ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit_crit_edge ], !dbg !1859
  %.sink.i = phi i32 [ 0, %cmpxchg.store_expected13.i ], [ 1, %entry._ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_.exit_crit_edge ]
  %call3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %.sink.i, i32 %5), !dbg !1860
  %6 = load i32, i32* @data1, align 4, !dbg !1861, !tbaa !1837
  %call4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %6), !dbg !1862
  ret void, !dbg !1863
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @_Z2f2v() #0 !dbg !1864 {
entry:
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1826, metadata !1831), !dbg !1865
  %0 = load atomic i32, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !dbg !1867
  store i32 %0, i32* @data2, align 4, !dbg !1868, !tbaa !1837
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1869, metadata !1831), !dbg !1874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1873, metadata !1831), !dbg !1876
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) monotonic, align 4, !dbg !1877
  ret void, !dbg !1879
}

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1880 {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  store i32 0, i32* @data2, align 4, !dbg !1959, !tbaa !1837
  store i32 0, i32* @data1, align 4, !dbg !1960, !tbaa !1837
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @x, i64 0, metadata !1961, metadata !1831), !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1964, metadata !1831), !dbg !1968
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1869, metadata !1831), !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1873, metadata !1831), !dbg !1971
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !dbg !1972
  tail call void @llvm.dbg.value(metadata %"struct.std::__1::atomic"* @y, i64 0, metadata !1961, metadata !1831), !dbg !1974
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1964, metadata !1831), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1869, metadata !1831), !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1873, metadata !1831), !dbg !1980
  store atomic i32 1, i32* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @y, i64 0, i32 0, i32 0, i32 0) seq_cst, align 4, !dbg !1981
  %0 = bitcast %"class.std::__1::thread"* %a to i8*, !dbg !1982
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10, !dbg !1982
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1882, metadata !1983), !dbg !1984
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1985, metadata !1831), !dbg !1998
  tail call void @llvm.dbg.value(metadata void ()* @_Z2f1v, i64 0, metadata !1996, metadata !1831), !dbg !2000
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2f1v), !dbg !2001
  %1 = bitcast %"class.std::__1::thread"* %b to i8*, !dbg !2002
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #10, !dbg !2002
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !1985, metadata !1831), !dbg !2003
  call void @llvm.dbg.value(metadata void ()* @_Z2f2v, i64 0, metadata !1996, metadata !1831), !dbg !2005
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad, !dbg !2006

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont3 unwind label %lpad2, !dbg !2007

invoke.cont3:                                     ; preds = %invoke.cont
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont4 unwind label %lpad2, !dbg !2008

invoke.cont4:                                     ; preds = %invoke.cont3
  %2 = load i32, i32* @data1, align 4, !dbg !2009, !tbaa !1837
  %3 = load i32, i32* @data2, align 4, !dbg !2010, !tbaa !1837
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %2, i32 %3), !dbg !2011
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !1958, metadata !1983), !dbg !2012
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10, !dbg !2013
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !dbg !2013
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1882, metadata !1983), !dbg !1984
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10, !dbg !2014
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !dbg !2013
  ret i32 0, !dbg !2013

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !2016
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !2016
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !2016
  br label %ehcleanup, !dbg !2016

lpad2:                                            ; preds = %invoke.cont3, %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2017
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2017
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2017
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !1958, metadata !1983), !dbg !2012
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #10, !dbg !2017
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #10, !dbg !2013
  br label %ehcleanup, !dbg !2017

ehcleanup:                                        ; preds = %lpad2, %lpad
  %exn.slot.0 = phi i8* [ %8, %lpad2 ], [ %5, %lpad ]
  %ehselector.slot.0 = phi i32 [ %9, %lpad2 ], [ %6, %lpad ]
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1882, metadata !1983), !dbg !1984
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #10, !dbg !2019
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !dbg !2013
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0, !dbg !2021
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1, !dbg !2021
  resume { i8*, i32 } %lpad.val8, !dbg !2021
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #1

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2023 {
entry:
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %this, i64 0, metadata !2025, metadata !1831), !dbg !2176
  tail call void @llvm.dbg.value(metadata void ()* %__f, i64 0, metadata !2026, metadata !1831), !dbg !2177
  %call = tail call i8* @_Znwm(i64 8) #11, !dbg !2178
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !2178
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !dbg !2179

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2027, metadata !1983), !dbg !2180
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !2181

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2027, metadata !1983), !dbg !2180
  %2 = ptrtoint void ()* %__f to i64, !dbg !2182
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2184, metadata !1831), !dbg !2196
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2195, metadata !1831), !dbg !2196
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2199, metadata !1831), !dbg !2204
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2203, metadata !1831), !dbg !2204
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2206, metadata !1831), !dbg !2231
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2230, metadata !1831), !dbg !2231
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2233, metadata !1831), !dbg !2242
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2241, metadata !1831), !dbg !2242
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2244, metadata !1831), !dbg !2254
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2257, metadata !1831), !dbg !2262
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2265, metadata !1831), !dbg !2269
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !2271, metadata !1831), !dbg !2285
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !2287, metadata !1831), !dbg !2292
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !2294, metadata !1831), !dbg !2304
  %3 = bitcast i8* %call4 to i64*, !dbg !2307
  store i64 %1, i64* %3, align 8, !dbg !2307, !tbaa !2308
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !2311
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2312, metadata !1831), !dbg !2322
  %5 = bitcast i8* %4 to i64*, !dbg !2325
  store i64 %2, i64* %5, align 8, !dbg !2325, !tbaa !2326
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2030, metadata !1983), !dbg !2328
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !dbg !2329
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2030, metadata !1983), !dbg !2328
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_, i64 0, metadata !2330, metadata !1831), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i64 0, metadata !2339, metadata !1831), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !2340, metadata !1831), !dbg !2344
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !dbg !2345

invoke.cont12:                                    ; preds = %invoke.cont3
  tail call void @llvm.dbg.value(metadata i32 %call.i31, i64 0, metadata !2175, metadata !1831), !dbg !2346
  %cmp = icmp eq i32 %call.i31, 0, !dbg !2347
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !dbg !2349

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2030, metadata !1983), !dbg !2328
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2030, metadata !1983), !dbg !2328
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2350, metadata !1831) #10, !dbg !2354
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2357, metadata !1831) #10, !dbg !2360
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2362, metadata !1831) #10, !dbg !2367
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2365, metadata !1831) #10, !dbg !2370
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2366, metadata !1831) #10, !dbg !2371
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2027, metadata !1983), !dbg !2180
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2372, metadata !1831) #10, !dbg !2375
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2378, metadata !1831) #10, !dbg !2381
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2383, metadata !1831) #10, !dbg !2388
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2386, metadata !1831) #10, !dbg !2391
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2387, metadata !1831) #10, !dbg !2392
  ret void, !dbg !2393

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !2394
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2394
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !2394
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !2395
  br label %eh.resume, !dbg !2395

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !2396
  br label %delete.notnull.i.i.i.i, !dbg !2396

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #13
          to label %invoke.cont16 unwind label %lpad15, !dbg !2398

invoke.cont16:                                    ; preds = %if.else
  unreachable, !dbg !2399

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !2401
  br label %delete.notnull.i.i.i.i, !dbg !2403

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2030, metadata !1983), !dbg !2328
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2350, metadata !1831) #10, !dbg !2405
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2357, metadata !1831) #10, !dbg !2408
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2362, metadata !1831) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2365, metadata !1831) #10, !dbg !2412
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2386, metadata !1831) #10, !dbg !2413
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !dbg !2454
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !2463, !tbaa !2464
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !2387, metadata !1831) #10, !dbg !2465
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !2466, !tbaa !2464
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !dbg !2467
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !2469

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !2470, metadata !1831) #10, !dbg !2475
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #10, !dbg !2478
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !dbg !2478
  tail call void @_ZdlPv(i8* %14) #12, !dbg !2480
  br label %ehcleanup18.thread, !dbg !2482

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #12, !dbg !2483
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2027, metadata !1983), !dbg !2180
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2372, metadata !1831) #10, !dbg !2485
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2378, metadata !1831) #10, !dbg !2488
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2383, metadata !1831) #10, !dbg !2490
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2386, metadata !1831) #10, !dbg !2492
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !2387, metadata !1831) #10, !dbg !2493
  br label %eh.resume, !dbg !2494

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !2495
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !2495
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2027, metadata !1983), !dbg !2180
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2372, metadata !1831) #10, !dbg !2485
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2378, metadata !1831) #10, !dbg !2488
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2383, metadata !1831) #10, !dbg !2490
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2386, metadata !1831) #10, !dbg !2492
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !2387, metadata !1831) #10, !dbg !2493
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !2470, metadata !1831) #10, !dbg !2496
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #10, !dbg !2498
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !2499
  br label %eh.resume, !dbg !2500

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !dbg !2501
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !dbg !2501
  resume { i8*, i32 } %lpad.val20, !dbg !2501
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #6

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #7

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2502 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %__vp, i64 0, metadata !2506, metadata !1831), !dbg !2508
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2507, metadata !1983), !dbg !2509
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !2510

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2507, metadata !1983), !dbg !2509
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !2511
  %0 = bitcast i8* %__vp to i8**, !dbg !2520
  %1 = load i8*, i8** %0, align 8, !dbg !2520, !tbaa !2464
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !2521, !tbaa !2464
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_specific_ptr"* %call, i64 0, metadata !2522, metadata !1831), !dbg !2559
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !dbg !2562
  %2 = load i64, i64* %__key_.i, align 8, !dbg !2562, !tbaa !2563
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2566, metadata !1831), !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2571, metadata !1831), !dbg !2574
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !dbg !2575

invoke.cont5:                                     ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2507, metadata !1983), !dbg !2509
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !dbg !2576
  %3 = bitcast i8* %value.i.i.i to void ()**, !dbg !2576
  tail call void @llvm.dbg.value(metadata void ()** %3, i64 0, metadata !2608, metadata !1831), !dbg !2614
  %4 = load void ()*, void ()** %3, align 8, !dbg !2617, !tbaa !2464
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !dbg !2618

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2507, metadata !1983), !dbg !2509
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2350, metadata !1831) #10, !dbg !2620
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2357, metadata !1831) #10, !dbg !2622
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2362, metadata !1831) #10, !dbg !2624
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2365, metadata !1831) #10, !dbg !2626
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2386, metadata !1831) #10, !dbg !2627
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !2637, !tbaa !2464
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !2387, metadata !1831) #10, !dbg !2638
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !2639, !tbaa !2464
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !dbg !2640
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !dbg !2641

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !2470, metadata !1831) #10, !dbg !2642
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #10, !dbg !2644
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !dbg !2644
  tail call void @_ZdlPv(i8* %6) #12, !dbg !2645
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !dbg !2646

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !2647
  ret i8* null, !dbg !2648

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !dbg !2649
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2507, metadata !1983), !dbg !2509
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2350, metadata !1831) #10, !dbg !2650
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2357, metadata !1831) #10, !dbg !2652
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2362, metadata !1831) #10, !dbg !2654
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2365, metadata !1831) #10, !dbg !2656
  br label %delete.notnull.i.i.i.i, !dbg !2657

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !dbg !2649
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2507, metadata !1983), !dbg !2509
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2350, metadata !1831) #10, !dbg !2650
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2357, metadata !1831) #10, !dbg !2652
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2362, metadata !1831) #10, !dbg !2654
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2365, metadata !1831) #10, !dbg !2656
  %tobool.i.i.i = icmp eq i8* %__vp, null, !dbg !2658
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !dbg !2657

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !2659
  br label %delete.notnull.i.i.i.i, !dbg !2657

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !dbg !2659
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2386, metadata !1831) #10, !dbg !2671
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !2672, !tbaa !2464
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !2387, metadata !1831) #10, !dbg !2673
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !2674, !tbaa !2464
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !2675
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !2676

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !2470, metadata !1831) #10, !dbg !2677
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #10, !dbg !2679
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !2679
  tail call void @_ZdlPv(i8* %8) #12, !dbg !2680
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !2681

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !2682
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !2683

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30, !dbg !2684
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #8

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #4

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #4

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #9

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1819, !1820, !1821}
!llvm.ident = !{!1822}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "data1", scope: !2, file: !3, line: 7, type: !252, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !739, imports: !896)
!3 = !DIFile(filename: "tt.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!9 = !DINamespace(name: "std", scope: null, file: !8, line: 437)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!12 = !DIEnumerator(name: "memory_order_consume", value: 1)
!13 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!14 = !DIEnumerator(name: "memory_order_release", value: 3)
!15 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!16 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !20, line: 474, size: 128, elements: !21, templateParams: !738, identifier: "_ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!20 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!21 = !{!22, !688, !689, !695, !699, !727, !735}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "base_", scope: !19, file: !20, line: 478, baseType: !23, size: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "base", scope: !19, file: !20, line: 476, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_impl<std::__1::__tuple_indices<0, 1>, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !20, line: 369, size: 128, elements: !25, templateParams: !675, identifier: "_ZTSNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEE")
!25 = !{!26, !612, !652, !656, !661, !665, !669, !672}
!26 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !24, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<0, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, false>", scope: !7, file: !20, line: 170, size: 64, elements: !28, templateParams: !608, identifier: "_ZTSNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEE")
!28 = !{!29, !580, !587, !590, !593, !597, !600, !603}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !27, file: !20, line: 172, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !31, line: 2334, size: 64, elements: !32, templateParams: !550, identifier: "_ZTSNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEE")
!31 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!32 = !{!33, !514, !519, !523, !526, !532, !544, !557, !558, !563, !568, !571, !574, !577}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !30, file: !31, line: 2344, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !31, line: 2144, size: 64, elements: !35, templateParams: !511, identifier: "_ZTSNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEE")
!35 = !{!36, !455, !492, !496, !501, !504, !507}
!36 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !34, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::__thread_struct *, 0, false>", scope: !7, file: !31, line: 2076, size: 64, elements: !38, templateParams: !451, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE")
!38 = !{!39, !434, !438, !443}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !37, file: !31, line: 2105, baseType: !40, size: 64, flags: DIFlagPrivate)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct", scope: !7, file: !42, line: 123, size: 64, elements: !43, identifier: "_ZTSNSt3__115__thread_structE")
!42 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!43 = !{!44, !47, !53, !57, !60, !61, !429}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__p_", scope: !41, file: !42, line: 125, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_class_type, name: "__thread_struct_imp", scope: !7, file: !42, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__119__thread_struct_impE")
!47 = !DISubprogram(name: "__thread_struct", scope: !41, file: !42, line: 127, type: !48, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !51}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!53 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__115__thread_structaSERKS0_", scope: !41, file: !42, line: 128, type: !54, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !50, !51}
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !41, size: 64)
!57 = !DISubprogram(name: "__thread_struct", scope: !41, file: !42, line: 130, type: !58, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !50}
!60 = !DISubprogram(name: "~__thread_struct", scope: !41, file: !42, line: 131, type: !58, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!61 = !DISubprogram(name: "notify_all_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct25notify_all_at_thread_exitEPNS_18condition_variableEPNS_5mutexE", scope: !41, file: !42, line: 133, type: !62, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !50, !64, !428}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "condition_variable", scope: !7, file: !66, line: 281, size: 384, elements: !67, identifier: "_ZTSNSt3__118condition_variableE")
!66 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!67 = !{!68, !84, !88, !89, !94, !98, !99, !100, !207, !212}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !65, file: !66, line: 284, baseType: !69, size: 384)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !7, file: !70, line: 59, baseType: !71)
!70 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !72, line: 30, baseType: !73)
!72 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !74, line: 110, baseType: !75)
!74 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_cond_t", file: !74, line: 68, size: 384, elements: !76, identifier: "_ZTS22_opaque_pthread_cond_t")
!76 = !{!77, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !75, file: !74, line: 69, baseType: !78, size: 64)
!78 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !75, file: !74, line: 70, baseType: !80, size: 320, offset: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 320, elements: !82)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !{!83}
!83 = !DISubrange(count: 40)
!84 = !DISubprogram(name: "condition_variable", scope: !65, file: !66, line: 292, type: !85, isLocal: false, isDefinition: false, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DISubprogram(name: "~condition_variable", scope: !65, file: !66, line: 296, type: !85, isLocal: false, isDefinition: false, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!89 = !DISubprogram(name: "condition_variable", scope: !65, file: !66, line: 299, type: !90, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !87, !92}
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!94 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__118condition_variableaSERKS0_", scope: !65, file: !66, line: 300, type: !95, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !87, !92}
!97 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !65, size: 64)
!98 = !DISubprogram(name: "notify_one", linkageName: "_ZNSt3__118condition_variable10notify_oneEv", scope: !65, file: !66, line: 303, type: !85, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!99 = !DISubprogram(name: "notify_all", linkageName: "_ZNSt3__118condition_variable10notify_allEv", scope: !65, file: !66, line: 304, type: !85, isLocal: false, isDefinition: false, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!100 = !DISubprogram(name: "wait", linkageName: "_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE", scope: !65, file: !66, line: 306, type: !101, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !87, !103}
!103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_lock<std::__1::mutex>", scope: !7, file: !66, line: 110, size: 128, elements: !105, templateParams: !205, identifier: "_ZTSNSt3__111unique_lockINS_5mutexEEE")
!105 = !{!106, !148, !149, !153, !157, !162, !166, !170, !171, !176, !179, !183, !186, !187, !190, !191, !194, !197, !201, !202}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !104, file: !66, line: 116, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_type", scope: !104, file: !66, line: 113, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "mutex", scope: !7, file: !66, line: 36, size: 512, elements: !110, identifier: "_ZTSNSt3__15mutexE")
!110 = !{!111, !123, !127, !128, !133, !137, !138, !142, !143}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__m_", scope: !109, file: !66, line: 39, baseType: !112, size: 512)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_mutex_t", scope: !7, file: !70, line: 53, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !114, line: 30, baseType: !115)
!114 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !74, line: 113, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !74, line: 78, size: 512, elements: !117, identifier: "_ZTS23_opaque_pthread_mutex_t")
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !116, file: !74, line: 79, baseType: !78, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !116, file: !74, line: 80, baseType: !120, size: 448, offset: 64)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 448, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 56)
!123 = !DISubprogram(name: "mutex", scope: !109, file: !66, line: 47, type: !124, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!127 = !DISubprogram(name: "~mutex", scope: !109, file: !66, line: 51, type: !124, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!128 = !DISubprogram(name: "mutex", scope: !109, file: !66, line: 54, type: !129, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !126, !131}
!131 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!133 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15mutexaSERKS0_", scope: !109, file: !66, line: 55, type: !134, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !126, !131}
!136 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 64)
!137 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__15mutex4lockEv", scope: !109, file: !66, line: 58, type: !124, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!138 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__15mutex8try_lockEv", scope: !109, file: !66, line: 59, type: !139, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !126}
!141 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!142 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__15mutex6unlockEv", scope: !109, file: !66, line: 60, type: !124, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!143 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__15mutex13native_handleEv", scope: !109, file: !66, line: 63, type: !144, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !126}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !109, file: !66, line: 62, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__owns_", scope: !104, file: !66, line: 117, baseType: !141, size: 8, offset: 64)
!149 = !DISubprogram(name: "unique_lock", scope: !104, file: !66, line: 121, type: !150, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!153 = !DISubprogram(name: "unique_lock", scope: !104, file: !66, line: 123, type: !154, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !152, !156}
!156 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 64)
!157 = !DISubprogram(name: "unique_lock", scope: !104, file: !66, line: 126, type: !158, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !152, !156, !160}
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defer_lock_t", scope: !7, file: !66, line: 66, size: 8, elements: !161, identifier: "_ZTSNSt3__112defer_lock_tE")
!161 = !{}
!162 = !DISubprogram(name: "unique_lock", scope: !104, file: !66, line: 129, type: !163, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !152, !156, !165}
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "try_to_lock_t", scope: !7, file: !66, line: 67, size: 8, elements: !161, identifier: "_ZTSNSt3__113try_to_lock_tE")
!166 = !DISubprogram(name: "unique_lock", scope: !104, file: !66, line: 132, type: !167, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !152, !156, !169}
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adopt_lock_t", scope: !7, file: !66, line: 68, size: 8, elements: !161, identifier: "_ZTSNSt3__112adopt_lock_tE")
!170 = !DISubprogram(name: "~unique_lock", scope: !104, file: !66, line: 143, type: !150, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!171 = !DISubprogram(name: "unique_lock", scope: !104, file: !66, line: 150, type: !172, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !152, !174}
!174 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!176 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSERKS2_", scope: !104, file: !66, line: 151, type: !177, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!177 = !DISubroutineType(types: !178)
!178 = !{!103, !152, !174}
!179 = !DISubprogram(name: "unique_lock", scope: !104, file: !66, line: 156, type: !180, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !152, !182}
!182 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !104, size: 64)
!183 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__111unique_lockINS_5mutexEEaSEOS2_", scope: !104, file: !66, line: 160, type: !184, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!184 = !DISubroutineType(types: !185)
!185 = !{!103, !152, !182}
!186 = !DISubprogram(name: "lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4lockEv", scope: !104, file: !66, line: 173, type: !150, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!187 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE8try_lockEv", scope: !104, file: !66, line: 174, type: !188, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!188 = !DISubroutineType(types: !189)
!189 = !{!141, !152}
!190 = !DISubprogram(name: "unlock", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE6unlockEv", scope: !104, file: !66, line: 181, type: !150, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!191 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE4swapERS2_", scope: !104, file: !66, line: 184, type: !192, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !152, !103}
!194 = !DISubprogram(name: "release", linkageName: "_ZNSt3__111unique_lockINS_5mutexEE7releaseEv", scope: !104, file: !66, line: 190, type: !195, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!195 = !DISubroutineType(types: !196)
!196 = !{!107, !152}
!197 = !DISubprogram(name: "owns_lock", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE9owns_lockEv", scope: !104, file: !66, line: 199, type: !198, isLocal: false, isDefinition: false, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!198 = !DISubroutineType(types: !199)
!199 = !{!141, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!201 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEEcvbEv", scope: !104, file: !66, line: 202, type: !198, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!202 = !DISubprogram(name: "mutex", linkageName: "_ZNKSt3__111unique_lockINS_5mutexEE5mutexEv", scope: !104, file: !66, line: 204, type: !203, isLocal: false, isDefinition: false, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!203 = !DISubroutineType(types: !204)
!204 = !{!107, !200}
!205 = !{!206}
!206 = !DITemplateTypeParameter(name: "_Mutex", type: !109)
!207 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__118condition_variable13native_handleEv", scope: !65, file: !66, line: 338, type: !208, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !87}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !65, file: !66, line: 337, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!212 = !DISubprogram(name: "__do_timed_wait", linkageName: "_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE", scope: !65, file: !66, line: 341, type: !213, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !87, !103, !215}
!215 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !217, file: !216, line: 831, size: 64, elements: !218, templateParams: !314, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE")
!216 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!217 = !DINamespace(name: "chrono", scope: !7, file: !216, line: 316)
!218 = !{!219, !291, !295, !300, !305, !309, !310, !313}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !215, file: !216, line: 841, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !215, file: !216, line: 837, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000000> >", scope: !217, file: !216, line: 488, size: 64, elements: !222, templateParams: !273, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE")
!222 = !{!223, !226, !230, !235, !244, !245, !249, !253, !254, !255, !259, !260, !265, !266, !267, !268, !271, !272}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !221, file: !216, line: 528, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !221, file: !216, line: 525, baseType: !225)
!225 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!226 = !DISubprogram(name: "duration", scope: !221, file: !216, line: 533, type: !227, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!230 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv", scope: !221, file: !216, line: 564, type: !231, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!231 = !DISubroutineType(types: !232)
!232 = !{!224, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!235 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpsEv", scope: !221, file: !216, line: 568, type: !236, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !233}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !239, file: !216, line: 343, baseType: !221)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000000> > >", scope: !7, file: !216, line: 339, size: 8, elements: !161, templateParams: !240, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEES5_EEE")
!240 = !{!241}
!241 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !242)
!242 = !{!243, !243}
!243 = !DITemplateTypeParameter(type: !221)
!244 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEngEv", scope: !221, file: !216, line: 569, type: !236, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!245 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv", scope: !221, file: !216, line: 570, type: !246, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !229}
!248 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !221, size: 64)
!249 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEi", scope: !221, file: !216, line: 571, type: !250, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!250 = !DISubroutineType(types: !251)
!251 = !{!221, !229, !252}
!252 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!253 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEv", scope: !221, file: !216, line: 572, type: !246, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!254 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmmEi", scope: !221, file: !216, line: 573, type: !250, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!255 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEpLERKS4_", scope: !221, file: !216, line: 575, type: !256, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!256 = !DISubroutineType(types: !257)
!257 = !{!248, !229, !258}
!258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !234, size: 64)
!259 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmIERKS4_", scope: !221, file: !216, line: 576, type: !256, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!260 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEmLERKx", scope: !221, file: !216, line: 578, type: !261, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!261 = !DISubroutineType(types: !262)
!262 = !{!248, !229, !263}
!263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!265 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEdVERKx", scope: !221, file: !216, line: 579, type: !261, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!266 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKx", scope: !221, file: !216, line: 580, type: !261, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!267 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEErMERKS4_", scope: !221, file: !216, line: 581, type: !256, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!268 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE4zeroEv", scope: !221, file: !216, line: 585, type: !269, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!269 = !DISubroutineType(types: !270)
!270 = !{!221}
!271 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3minEv", scope: !221, file: !216, line: 586, type: !269, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!272 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv", scope: !221, file: !216, line: 587, type: !269, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!273 = !{!274, !275}
!274 = !DITemplateTypeParameter(name: "_Rep", type: !225)
!275 = !DITemplateTypeParameter(name: "_Period", type: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000000>", scope: !7, file: !277, line: 247, size: 8, elements: !278, templateParams: !288, identifier: "_ZTSNSt3__15ratioILl1ELl1000000000EEE")
!277 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!278 = !{!279, !283, !284, !285, !286, !287}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !276, file: !277, line: 252, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !282, line: 32, baseType: !78)
!282 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !276, file: !277, line: 253, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1000000000)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !276, file: !277, line: 254, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !276, file: !277, line: 255, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !276, file: !277, line: 257, baseType: !280, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !276, file: !277, line: 258, baseType: !280, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000000)
!288 = !{!289, !290}
!289 = !DITemplateValueParameter(name: "_Num", type: !78, value: i64 1)
!290 = !DITemplateValueParameter(name: "_Den", type: !78, value: i64 1000000000)
!291 = !DISubprogram(name: "time_point", scope: !215, file: !216, line: 844, type: !292, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!295 = !DISubprogram(name: "time_point", scope: !215, file: !216, line: 845, type: !296, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !294, !298}
!298 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!300 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv", scope: !215, file: !216, line: 859, type: !301, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!301 = !DISubroutineType(types: !302)
!302 = !{!220, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!305 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEpLERKS6_", scope: !215, file: !216, line: 863, type: !306, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !294, !298}
!308 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !215, size: 64)
!309 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEEmIERKS6_", scope: !215, file: !216, line: 864, type: !306, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!310 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3minEv", scope: !215, file: !216, line: 868, type: !311, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!311 = !DISubroutineType(types: !312)
!312 = !{!215}
!313 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE3maxEv", scope: !215, file: !216, line: 869, type: !311, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!314 = !{!315, !427}
!315 = !DITemplateTypeParameter(name: "_Clock", type: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "system_clock", scope: !217, file: !216, line: 1047, size: 8, elements: !317, identifier: "_ZTSNSt3__16chrono12system_clockE")
!317 = !{!318, !320, !415, !424}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_steady", scope: !316, file: !216, line: 1054, baseType: !319, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 false)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!320 = !DISubprogram(name: "now", linkageName: "_ZNSt3__16chrono12system_clock3nowEv", scope: !316, file: !216, line: 1056, type: !321, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!321 = !DISubroutineType(types: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_point", scope: !316, file: !216, line: 1053, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "time_point<std::__1::chrono::system_clock, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !217, file: !216, line: 831, size: 64, elements: !325, templateParams: !413, identifier: "_ZTSNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE")
!325 = !{!326, !390, !394, !399, !404, !408, !409, !412}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__d_", scope: !324, file: !216, line: 841, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "duration", scope: !324, file: !216, line: 837, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long long, std::__1::ratio<1, 1000000> >", scope: !217, file: !216, line: 488, size: 64, elements: !329, templateParams: !378, identifier: "_ZTSNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEE")
!329 = !{!330, !332, !336, !341, !350, !351, !355, !358, !359, !360, !364, !365, !370, !371, !372, !373, !376, !377}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__rep_", scope: !328, file: !216, line: 528, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !328, file: !216, line: 525, baseType: !225)
!332 = !DISubprogram(name: "duration", scope: !328, file: !216, line: 533, type: !333, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!336 = !DISubprogram(name: "count", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countEv", scope: !328, file: !216, line: 564, type: !337, isLocal: false, isDefinition: false, scopeLine: 564, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!337 = !DISubroutineType(types: !338)
!338 = !{!331, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!341 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpsEv", scope: !328, file: !216, line: 568, type: !342, isLocal: false, isDefinition: false, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !339}
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !345, file: !216, line: 343, baseType: !328)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> >, std::__1::chrono::duration<long long, std::__1::ratio<1, 1000000> > >", scope: !7, file: !216, line: 339, size: 8, elements: !161, templateParams: !346, identifier: "_ZTSNSt3__111common_typeIJNS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEES5_EEE")
!346 = !{!347}
!347 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !348)
!348 = !{!349, !349}
!349 = !DITemplateTypeParameter(type: !328)
!350 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEngEv", scope: !328, file: !216, line: 569, type: !342, isLocal: false, isDefinition: false, scopeLine: 569, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!351 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEv", scope: !328, file: !216, line: 570, type: !352, isLocal: false, isDefinition: false, scopeLine: 570, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !335}
!354 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !328, size: 64)
!355 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEppEi", scope: !328, file: !216, line: 571, type: !356, isLocal: false, isDefinition: false, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!356 = !DISubroutineType(types: !357)
!357 = !{!328, !335, !252}
!358 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEv", scope: !328, file: !216, line: 572, type: !352, isLocal: false, isDefinition: false, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!359 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmmEi", scope: !328, file: !216, line: 573, type: !356, isLocal: false, isDefinition: false, scopeLine: 573, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!360 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEpLERKS4_", scope: !328, file: !216, line: 575, type: !361, isLocal: false, isDefinition: false, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!361 = !DISubroutineType(types: !362)
!362 = !{!354, !335, !363}
!363 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !340, size: 64)
!364 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmIERKS4_", scope: !328, file: !216, line: 576, type: !361, isLocal: false, isDefinition: false, scopeLine: 576, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!365 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEmLERKx", scope: !328, file: !216, line: 578, type: !366, isLocal: false, isDefinition: false, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!366 = !DISubroutineType(types: !367)
!367 = !{!354, !335, !368}
!368 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!370 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEEdVERKx", scope: !328, file: !216, line: 579, type: !366, isLocal: false, isDefinition: false, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!371 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKx", scope: !328, file: !216, line: 580, type: !366, isLocal: false, isDefinition: false, scopeLine: 580, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!372 = !DISubprogram(name: "operator%=", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEErMERKS4_", scope: !328, file: !216, line: 581, type: !361, isLocal: false, isDefinition: false, scopeLine: 581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!373 = !DISubprogram(name: "zero", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE4zeroEv", scope: !328, file: !216, line: 585, type: !374, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!374 = !DISubroutineType(types: !375)
!375 = !{!328}
!376 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3minEv", scope: !328, file: !216, line: 586, type: !374, isLocal: false, isDefinition: false, scopeLine: 586, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!377 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE3maxEv", scope: !328, file: !216, line: 587, type: !374, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!378 = !{!274, !379}
!379 = !DITemplateTypeParameter(name: "_Period", type: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ratio<1, 1000000>", scope: !7, file: !277, line: 247, size: 8, elements: !381, templateParams: !388, identifier: "_ZTSNSt3__15ratioILl1ELl1000000EEE")
!381 = !{!382, !383, !384, !385, !386, !387}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !380, file: !277, line: 252, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__da", scope: !380, file: !277, line: 253, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1000000)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__s", scope: !380, file: !277, line: 254, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__gcd", scope: !380, file: !277, line: 255, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !380, file: !277, line: 257, baseType: !280, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !380, file: !277, line: 258, baseType: !280, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 1000000)
!388 = !{!289, !389}
!389 = !DITemplateValueParameter(name: "_Den", type: !78, value: i64 1000000)
!390 = !DISubprogram(name: "time_point", scope: !324, file: !216, line: 844, type: !391, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!394 = !DISubprogram(name: "time_point", scope: !324, file: !216, line: 845, type: !395, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !393, !397}
!397 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!399 = !DISubprogram(name: "time_since_epoch", linkageName: "_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochEv", scope: !324, file: !216, line: 859, type: !400, isLocal: false, isDefinition: false, scopeLine: 859, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!400 = !DISubroutineType(types: !401)
!401 = !{!327, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!404 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEpLERKS6_", scope: !324, file: !216, line: 863, type: !405, isLocal: false, isDefinition: false, scopeLine: 863, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !393, !397}
!407 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !324, size: 64)
!408 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEmIERKS6_", scope: !324, file: !216, line: 864, type: !405, isLocal: false, isDefinition: false, scopeLine: 864, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!409 = !DISubprogram(name: "min", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3minEv", scope: !324, file: !216, line: 868, type: !410, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!410 = !DISubroutineType(types: !411)
!411 = !{!324}
!412 = !DISubprogram(name: "max", linkageName: "_ZNSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE3maxEv", scope: !324, file: !216, line: 869, type: !410, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!413 = !{!315, !414}
!414 = !DITemplateTypeParameter(name: "_Duration", type: !328)
!415 = !DISubprogram(name: "to_time_t", linkageName: "_ZNSt3__16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE", scope: !316, file: !216, line: 1057, type: !416, isLocal: false, isDefinition: false, scopeLine: 1057, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !422}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !419, line: 30, baseType: !420)
!419 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !421, line: 120, baseType: !78)
!421 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!422 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!424 = !DISubprogram(name: "from_time_t", linkageName: "_ZNSt3__16chrono12system_clock11from_time_tEl", scope: !316, file: !216, line: 1058, type: !425, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!425 = !DISubroutineType(types: !426)
!426 = !{!323, !418}
!427 = !DITemplateTypeParameter(name: "_Duration", type: !221)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!429 = !DISubprogram(name: "__make_ready_at_thread_exit", linkageName: "_ZNSt3__115__thread_struct27__make_ready_at_thread_exitEPNS_17__assoc_sub_stateE", scope: !41, file: !42, line: 134, type: !430, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !50, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_class_type, name: "__assoc_sub_state", scope: !7, file: !42, line: 119, flags: DIFlagFwdDecl, identifier: "_ZTSNSt3__117__assoc_sub_stateE")
!434 = !DISubprogram(name: "__compressed_pair_elem", scope: !37, file: !31, line: 2082, type: !435, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!438 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !37, file: !31, line: 2101, type: !439, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !437}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !37, file: !31, line: 2078, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !40, size: 64)
!443 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !37, file: !31, line: 2102, type: !444, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !449}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !37, file: !31, line: 2079, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!451 = !{!452, !453, !454}
!452 = !DITemplateTypeParameter(name: "_Tp", type: !40)
!453 = !DITemplateValueParameter(name: "_Idx", type: !252, value: i32 0)
!454 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !141, value: i8 0)
!455 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !34, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::__thread_struct>, 1, true>", scope: !7, file: !31, line: 2109, size: 8, elements: !457, templateParams: !488, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEE")
!457 = !{!458, !472, !476, !481}
!458 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !456, baseType: !459, flags: DIFlagPrivate)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::__thread_struct>", scope: !7, file: !31, line: 2253, size: 8, elements: !460, templateParams: !470, identifier: "_ZTSNSt3__114default_deleteINS_15__thread_structEEE")
!460 = !{!461, !465}
!461 = !DISubprogram(name: "default_delete", scope: !459, file: !31, line: 2257, type: !462, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!465 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !459, file: !31, line: 2267, type: !466, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468, !40}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!470 = !{!471}
!471 = !DITemplateTypeParameter(name: "_Tp", type: !41)
!472 = !DISubprogram(name: "__compressed_pair_elem", scope: !456, file: !31, line: 2116, type: !473, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!476 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !456, file: !31, line: 2136, type: !477, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !475}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !456, file: !31, line: 2111, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !459, size: 64)
!481 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv", scope: !456, file: !31, line: 2137, type: !482, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !456, file: !31, line: 2112, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !469, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!488 = !{!489, !490, !491}
!489 = !DITemplateTypeParameter(name: "_Tp", type: !459)
!490 = !DITemplateValueParameter(name: "_Idx", type: !252, value: i32 1)
!491 = !DITemplateValueParameter(name: "_CanBeEmptyBase", type: !141, value: i8 1)
!492 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !34, file: !31, line: 2212, type: !493, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!493 = !DISubroutineType(types: !494)
!494 = !{!441, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!496 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !34, file: !31, line: 2217, type: !497, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!497 = !DISubroutineType(types: !498)
!498 = !{!446, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!501 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !34, file: !31, line: 2222, type: !502, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!502 = !DISubroutineType(types: !503)
!503 = !{!479, !495}
!504 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv", scope: !34, file: !31, line: 2227, type: !505, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!505 = !DISubroutineType(types: !506)
!506 = !{!484, !499}
!507 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE4swapERS5_", scope: !34, file: !31, line: 2232, type: !508, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !495, !510}
!510 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !34, size: 64)
!511 = !{!512, !513}
!512 = !DITemplateTypeParameter(name: "_T1", type: !40)
!513 = !DITemplateTypeParameter(name: "_T2", type: !459)
!514 = !DISubprogram(name: "unique_ptr", scope: !30, file: !31, line: 2427, type: !515, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !517, !518}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!518 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !30, size: 64)
!519 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEOS4_", scope: !30, file: !31, line: 2450, type: !520, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!520 = !DISubroutineType(types: !521)
!521 = !{!522, !517, !518}
!522 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !30, size: 64)
!523 = !DISubprogram(name: "~unique_ptr", scope: !30, file: !31, line: 2539, type: !524, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !517}
!526 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEaSEDn", scope: !30, file: !31, line: 2542, type: !527, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!527 = !DISubroutineType(types: !528)
!528 = !{!522, !517, !529}
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !9, file: !530, line: 57, baseType: !531)
!530 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!531 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!532 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !30, file: !31, line: 2549, type: !533, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !542}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !537, file: !536, line: 1084, baseType: !538)
!536 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::__thread_struct>", scope: !7, file: !536, line: 1083, size: 8, elements: !161, templateParams: !470, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_15__thread_structEEE")
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !539, file: !536, line: 1081, baseType: !56)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::__thread_struct, true>", scope: !7, file: !536, line: 1081, size: 8, elements: !161, templateParams: !540, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_15__thread_structELb1EEE")
!540 = !{!471, !541}
!541 = !DITemplateValueParameter(type: !141, value: i8 1)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!544 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEptEv", scope: !30, file: !31, line: 2553, type: !545, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!545 = !DISubroutineType(types: !546)
!546 = !{!547, !542}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !30, file: !31, line: 2338, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !549, file: !31, line: 1031, baseType: !552)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >", scope: !7, file: !31, line: 1029, size: 8, elements: !161, templateParams: !550, identifier: "_ZTSNSt3__114__pointer_typeINS_15__thread_structENS_14default_deleteIS1_EEEE")
!550 = !{!471, !551}
!551 = !DITemplateTypeParameter(name: "_Dp", type: !459)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !553, file: !31, line: 1023, baseType: !40)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>, false>", scope: !554, file: !31, line: 1021, size: 8, elements: !161, templateParams: !555, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_15__thread_structENS_14default_deleteIS2_EELb0EEE")
!554 = !DINamespace(name: "__pointer_type_imp", scope: !7, file: !31, line: 1011)
!555 = !{!471, !551, !556}
!556 = !DITemplateValueParameter(type: !141, value: i8 0)
!557 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE3getEv", scope: !30, file: !31, line: 2557, type: !545, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!558 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !30, file: !31, line: 2561, type: !559, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !517}
!561 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !30, file: !31, line: 2337, baseType: !459)
!563 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv", scope: !30, file: !31, line: 2565, type: !564, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!564 = !DISubroutineType(types: !565)
!565 = !{!566, !542}
!566 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!568 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEcvbEv", scope: !30, file: !31, line: 2569, type: !569, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!569 = !DISubroutineType(types: !570)
!570 = !{!141, !542}
!571 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !30, file: !31, line: 2574, type: !572, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!572 = !DISubroutineType(types: !573)
!573 = !{!547, !517}
!574 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !30, file: !31, line: 2581, type: !575, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !517, !547}
!577 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE4swapERS4_", scope: !30, file: !31, line: 2589, type: !578, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !517, !522}
!580 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEaSERKS6_", scope: !27, file: !20, line: 188, type: !581, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!581 = !DISubroutineType(types: !582)
!582 = !{!583, !584, !585}
!583 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!585 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!587 = !DISubprogram(name: "__tuple_leaf", scope: !27, file: !20, line: 190, type: !588, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !584}
!590 = !DISubprogram(name: "__tuple_leaf", scope: !27, file: !20, line: 251, type: !591, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !584, !585}
!593 = !DISubprogram(name: "__tuple_leaf", scope: !27, file: !20, line: 252, type: !594, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !584, !596}
!596 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !27, size: 64)
!597 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE4swapERS6_", scope: !27, file: !20, line: 264, type: !598, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!598 = !DISubroutineType(types: !599)
!599 = !{!252, !584, !583}
!600 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !27, file: !20, line: 270, type: !601, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!601 = !DISubroutineType(types: !602)
!602 = !{!522, !584}
!603 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv", scope: !27, file: !20, line: 271, type: !604, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !543, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!608 = !{!609, !611, !556}
!609 = !DITemplateValueParameter(name: "_Ip", type: !610, value: i64 0)
!610 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!611 = !DITemplateTypeParameter(name: "_Hp", type: !30)
!612 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !24, baseType: !613, offset: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__tuple_leaf<1, void (*)(), false>", scope: !7, file: !20, line: 170, size: 64, elements: !614, templateParams: !649, identifier: "_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE")
!614 = !{!615, !619, !626, !629, !632, !636, !639, !643}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !20, line: 172, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null}
!619 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEaSERKS3_", scope: !613, file: !20, line: 188, type: !620, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true)
!620 = !DISubroutineType(types: !621)
!621 = !{!622, !623, !624}
!622 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !613, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!624 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!626 = !DISubprogram(name: "__tuple_leaf", scope: !613, file: !20, line: 190, type: !627, isLocal: false, isDefinition: false, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !623}
!629 = !DISubprogram(name: "__tuple_leaf", scope: !613, file: !20, line: 251, type: !630, isLocal: false, isDefinition: false, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !623, !624}
!632 = !DISubprogram(name: "__tuple_leaf", scope: !613, file: !20, line: 252, type: !633, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !623, !635}
!635 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !613, size: 64)
!636 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE4swapERS3_", scope: !613, file: !20, line: 264, type: !637, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!637 = !DISubroutineType(types: !638)
!638 = !{!252, !623, !622}
!639 = !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !613, file: !20, line: 270, type: !640, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!640 = !DISubroutineType(types: !641)
!641 = !{!642, !623}
!642 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !616, size: 64)
!643 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !613, file: !20, line: 271, type: !644, isLocal: false, isDefinition: false, scopeLine: 271, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !648}
!646 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!649 = !{!650, !651, !556}
!650 = !DITemplateValueParameter(name: "_Ip", type: !610, value: i64 1)
!651 = !DITemplateTypeParameter(name: "_Hp", type: !616)
!652 = !DISubprogram(name: "__tuple_impl", scope: !24, file: !20, line: 373, type: !653, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: true)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!656 = !DISubprogram(name: "__tuple_impl", scope: !24, file: !20, line: 444, type: !657, isLocal: false, isDefinition: false, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !655, !659}
!659 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!661 = !DISubprogram(name: "__tuple_impl", scope: !24, file: !20, line: 445, type: !662, isLocal: false, isDefinition: false, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !655, !664}
!664 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !24, size: 64)
!665 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSERKSA_", scope: !24, file: !20, line: 449, type: !666, isLocal: false, isDefinition: false, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true)
!666 = !DISubroutineType(types: !667)
!667 = !{!668, !655, !659}
!668 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!669 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEaSEOSA_", scope: !24, file: !20, line: 457, type: !670, isLocal: false, isDefinition: false, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true)
!670 = !DISubroutineType(types: !671)
!671 = !{!668, !655, !664}
!672 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEE4swapERSA_", scope: !24, file: !20, line: 464, type: !673, isLocal: false, isDefinition: false, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !655, !668}
!675 = !{!676, !684}
!676 = !DITemplateTypeParameter(name: "_Indx", type: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<0, 1>", scope: !7, file: !678, line: 90, size: 8, elements: !161, templateParams: !679, identifier: "_ZTSNSt3__115__tuple_indicesIJLm0ELm1EEEE")
!678 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!679 = !{!680}
!680 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !681)
!681 = !{!682, !683}
!682 = !DITemplateValueParameter(type: !610, value: i64 0)
!683 = !DITemplateValueParameter(type: !610, value: i64 1)
!684 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !685)
!685 = !{!686, !687}
!686 = !DITemplateTypeParameter(type: !30)
!687 = !DITemplateTypeParameter(type: !616)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_EnableImplicitReducedArityExtension", scope: !19, file: !20, line: 483, baseType: !319, flags: DIFlagStaticMember, extraData: i1 false)
!689 = !DISubprogram(name: "tuple", scope: !19, file: !20, line: 620, type: !690, isLocal: false, isDefinition: false, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !692, !693}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!693 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!695 = !DISubprogram(name: "tuple", scope: !19, file: !20, line: 621, type: !696, isLocal: false, isDefinition: false, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !692, !698}
!698 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !19, size: 64)
!699 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSERKNS_5__natE", scope: !19, file: !20, line: 876, type: !700, isLocal: false, isDefinition: false, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !692, !703}
!702 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !706, file: !536, line: 414, baseType: !711)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !536, line: 414, size: 8, elements: !161, templateParams: !707, identifier: "_ZTSNSt3__111conditionalILb0ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!707 = !{!708, !709, !710}
!708 = !DITemplateValueParameter(name: "_Bp", type: !141, value: i8 0)
!709 = !DITemplateTypeParameter(name: "_If", type: !19)
!710 = !DITemplateTypeParameter(name: "_Then", type: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nat", scope: !7, file: !536, line: 1584, size: 8, elements: !712, identifier: "_ZTSNSt3__15__natE")
!712 = !{!713, !717, !722, !726}
!713 = !DISubprogram(name: "__nat", scope: !711, file: !536, line: 1587, type: !714, isLocal: false, isDefinition: false, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: true)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!717 = !DISubprogram(name: "__nat", scope: !711, file: !536, line: 1588, type: !718, isLocal: false, isDefinition: false, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: true)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !716, !720}
!720 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!722 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15__nataSERKS0_", scope: !711, file: !536, line: 1589, type: !723, isLocal: false, isDefinition: false, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: true)
!723 = !DISubroutineType(types: !724)
!724 = !{!725, !716, !720}
!725 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !711, size: 64)
!726 = !DISubprogram(name: "~__nat", scope: !711, file: !536, line: 1590, type: !714, isLocal: false, isDefinition: false, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: true)
!727 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEaSEOS8_", scope: !19, file: !20, line: 884, type: !728, isLocal: false, isDefinition: false, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!728 = !DISubroutineType(types: !729)
!729 = !{!702, !692, !730}
!730 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !732, file: !536, line: 412, baseType: !19)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::__nat>", scope: !7, file: !536, line: 412, size: 8, elements: !161, templateParams: !733, identifier: "_ZTSNSt3__111conditionalILb1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS_5__natEEE")
!733 = !{!734, !709, !710}
!734 = !DITemplateValueParameter(name: "_Bp", type: !141, value: i8 1)
!735 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEE4swapERS8_", scope: !19, file: !20, line: 906, type: !736, isLocal: false, isDefinition: false, scopeLine: 906, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !692, !702}
!738 = !{!684}
!739 = !{!0, !740, !742, !894}
!740 = !DIGlobalVariableExpression(var: !741)
!741 = distinct !DIGlobalVariable(name: "data2", scope: !2, file: !3, line: 7, type: !252, isLocal: false, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743)
!743 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 8, type: !744, isLocal: false, isDefinition: true)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !6, line: 1084, size: 32, elements: !745, templateParams: !893, identifier: "_ZTSNSt3__16atomicIiEE")
!745 = !{!746, !878, !882, !885, !890}
!746 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !744, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !748, templateParams: !877, identifier: "_ZTSNSt3__113__atomic_baseIiLb1EEE")
!748 = !{!749, !828, !832, !835, !840, !843, !844, !845, !846, !847, !848, !849, !850, !851, !854, !857, !858, !859, !862, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876}
!749 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !747, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !751, templateParams: !826, identifier: "_ZTSNSt3__113__atomic_baseIiLb0EEE")
!751 = !{!752, !754, !760, !765, !770, !774, !777, !780, !783, !786, !789, !792, !796, !799, !800, !801, !804, !807, !808, !809, !812, !815, !819, !823}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !750, file: !6, line: 893, baseType: !753, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !252)
!754 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !750, file: !6, line: 900, type: !755, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!755 = !DISubroutineType(types: !756)
!756 = !{!141, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !750)
!760 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !750, file: !6, line: 909, type: !761, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!761 = !DISubroutineType(types: !762)
!762 = !{!141, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!765 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !750, file: !6, line: 912, type: !766, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !768, !252, !769}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !7, file: !6, line: 585, baseType: !5)
!770 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !750, file: !6, line: 916, type: !771, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !773, !252, !769}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!774 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !750, file: !6, line: 920, type: !775, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!775 = !DISubroutineType(types: !776)
!776 = !{!252, !757, !769}
!777 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !750, file: !6, line: 924, type: !778, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!778 = !DISubroutineType(types: !779)
!779 = !{!252, !763, !769}
!780 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EEcviEv", scope: !750, file: !6, line: 928, type: !781, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!781 = !DISubroutineType(types: !782)
!782 = !{!252, !757}
!783 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !750, file: !6, line: 930, type: !784, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!784 = !DISubroutineType(types: !785)
!785 = !{!252, !763}
!786 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !750, file: !6, line: 932, type: !787, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!787 = !DISubroutineType(types: !788)
!788 = !{!252, !768, !252, !769}
!789 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !750, file: !6, line: 935, type: !790, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!790 = !DISubroutineType(types: !791)
!791 = !{!252, !773, !252, !769}
!792 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !750, file: !6, line: 938, type: !793, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!793 = !DISubroutineType(types: !794)
!794 = !{!141, !768, !795, !252, !769, !769}
!795 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !252, size: 64)
!796 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !750, file: !6, line: 943, type: !797, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!797 = !DISubroutineType(types: !798)
!798 = !{!141, !773, !795, !252, !769, !769}
!799 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !750, file: !6, line: 948, type: !793, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!800 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !750, file: !6, line: 953, type: !797, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!801 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !750, file: !6, line: 958, type: !802, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!802 = !DISubroutineType(types: !803)
!803 = !{!141, !768, !795, !252, !769}
!804 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !750, file: !6, line: 962, type: !805, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!805 = !DISubroutineType(types: !806)
!806 = !{!141, !773, !795, !252, !769}
!807 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !750, file: !6, line: 966, type: !802, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!808 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !750, file: !6, line: 970, type: !805, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!809 = !DISubprogram(name: "__atomic_base", scope: !750, file: !6, line: 976, type: !810, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !773}
!812 = !DISubprogram(name: "__atomic_base", scope: !750, file: !6, line: 982, type: !813, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !773, !252}
!815 = !DISubprogram(name: "__atomic_base", scope: !750, file: !6, line: 984, type: !816, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !773, !818}
!818 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !764, size: 64)
!819 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !750, file: !6, line: 985, type: !820, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!820 = !DISubroutineType(types: !821)
!821 = !{!822, !773, !818}
!822 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !750, size: 64)
!823 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !750, file: !6, line: 986, type: !824, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!824 = !DISubroutineType(types: !825)
!825 = !{!822, !768, !818}
!826 = !{!827, !556}
!827 = !DITemplateTypeParameter(name: "_Tp", type: !252)
!828 = !DISubprogram(name: "__atomic_base", scope: !747, file: !6, line: 1008, type: !829, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!832 = !DISubprogram(name: "__atomic_base", scope: !747, file: !6, line: 1010, type: !833, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !831, !252}
!835 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !747, file: !6, line: 1013, type: !836, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true)
!836 = !DISubroutineType(types: !837)
!837 = !{!252, !838, !252, !769}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!839 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !747)
!840 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !747, file: !6, line: 1016, type: !841, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true)
!841 = !DISubroutineType(types: !842)
!842 = !{!252, !831, !252, !769}
!843 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !747, file: !6, line: 1019, type: !836, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: true)
!844 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !747, file: !6, line: 1022, type: !841, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true)
!845 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !747, file: !6, line: 1025, type: !836, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true)
!846 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !747, file: !6, line: 1028, type: !841, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true)
!847 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !747, file: !6, line: 1031, type: !836, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: true)
!848 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !747, file: !6, line: 1034, type: !841, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true)
!849 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !747, file: !6, line: 1037, type: !836, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: true)
!850 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !747, file: !6, line: 1040, type: !841, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true)
!851 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEi", scope: !747, file: !6, line: 1044, type: !852, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true)
!852 = !DISubroutineType(types: !853)
!853 = !{!252, !838, !252}
!854 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEi", scope: !747, file: !6, line: 1046, type: !855, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true)
!855 = !DISubroutineType(types: !856)
!856 = !{!252, !831, !252}
!857 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEi", scope: !747, file: !6, line: 1048, type: !852, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true)
!858 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEi", scope: !747, file: !6, line: 1050, type: !855, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: true)
!859 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEv", scope: !747, file: !6, line: 1052, type: !860, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true)
!860 = !DISubroutineType(types: !861)
!861 = !{!252, !838}
!862 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEv", scope: !747, file: !6, line: 1054, type: !863, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true)
!863 = !DISubroutineType(types: !864)
!864 = !{!252, !831}
!865 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEv", scope: !747, file: !6, line: 1056, type: !860, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true)
!866 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEv", scope: !747, file: !6, line: 1058, type: !863, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true)
!867 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEpLEi", scope: !747, file: !6, line: 1060, type: !852, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: true)
!868 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEpLEi", scope: !747, file: !6, line: 1062, type: !855, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true)
!869 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmIEi", scope: !747, file: !6, line: 1064, type: !852, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true)
!870 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmIEi", scope: !747, file: !6, line: 1066, type: !855, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true)
!871 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEaNEi", scope: !747, file: !6, line: 1068, type: !852, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true)
!872 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEaNEi", scope: !747, file: !6, line: 1070, type: !855, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true)
!873 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEoREi", scope: !747, file: !6, line: 1072, type: !852, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: true)
!874 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEoREi", scope: !747, file: !6, line: 1074, type: !855, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true)
!875 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEeOEi", scope: !747, file: !6, line: 1076, type: !852, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true)
!876 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEeOEi", scope: !747, file: !6, line: 1078, type: !855, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true)
!877 = !{!827, !541}
!878 = !DISubprogram(name: "atomic", scope: !744, file: !6, line: 1089, type: !879, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!882 = !DISubprogram(name: "atomic", scope: !744, file: !6, line: 1091, type: !883, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !881, !252}
!885 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIiEaSEi", scope: !744, file: !6, line: 1094, type: !886, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true)
!886 = !DISubroutineType(types: !887)
!887 = !{!252, !888, !252}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!889 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !744)
!890 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !744, file: !6, line: 1097, type: !891, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true)
!891 = !DISubroutineType(types: !892)
!892 = !{!252, !881, !252}
!893 = !{!827}
!894 = !DIGlobalVariableExpression(var: !895)
!895 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 8, type: !744, isLocal: false, isDefinition: true)
!896 = !{!897, !900, !904, !908, !909, !917, !919, !926, !930, !932, !934, !938, !942, !946, !948, !952, !957, !961, !965, !967, !969, !971, !973, !975, !977, !981, !985, !989, !993, !996, !999, !1003, !1007, !1011, !1015, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1052, !1055, !1056, !1059, !1060, !1067, !1073, !1079, !1084, !1088, !1092, !1096, !1101, !1106, !1110, !1114, !1118, !1122, !1126, !1130, !1134, !1138, !1142, !1146, !1150, !1152, !1156, !1160, !1162, !1166, !1168, !1175, !1179, !1184, !1188, !1190, !1194, !1198, !1200, !1204, !1210, !1214, !1218, !1224, !1278, !1279, !1280, !1285, !1287, !1291, !1295, !1299, !1301, !1305, !1309, !1313, !1324, !1326, !1330, !1334, !1338, !1340, !1344, !1348, !1352, !1354, !1356, !1358, !1362, !1366, !1371, !1375, !1381, !1385, !1389, !1391, !1393, !1395, !1399, !1403, !1407, !1409, !1411, !1415, !1419, !1421, !1423, !1427, !1431, !1433, !1437, !1439, !1441, !1444, !1446, !1448, !1450, !1452, !1454, !1456, !1458, !1460, !1462, !1464, !1466, !1468, !1470, !1474, !1479, !1484, !1489, !1491, !1494, !1496, !1498, !1500, !1502, !1504, !1506, !1508, !1510, !1512, !1516, !1520, !1524, !1526, !1530, !1534, !1546, !1547, !1562, !1563, !1564, !1569, !1571, !1575, !1579, !1583, !1587, !1589, !1593, !1597, !1601, !1605, !1609, !1613, !1615, !1617, !1621, !1626, !1630, !1634, !1638, !1642, !1646, !1650, !1654, !1658, !1660, !1662, !1666, !1668, !1672, !1676, !1681, !1683, !1685, !1687, !1691, !1695, !1699, !1701, !1705, !1707, !1709, !1711, !1713, !1719, !1723, !1725, !1731, !1736, !1740, !1744, !1749, !1754, !1758, !1762, !1766, !1770, !1772, !1774, !1778, !1779, !1780, !1781, !1785, !1789, !1794, !1799, !1803, !1809, !1813, !1815}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !898, line: 49)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !899, line: 51, baseType: !78)
!899 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !901, line: 50)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !902, line: 30, baseType: !903)
!902 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !421, line: 92, baseType: !610)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, line: 55)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !906, line: 32, baseType: !907)
!906 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!907 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !901, line: 69)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !910, line: 70)
!910 = !DISubprogram(name: "memcpy", scope: !911, file: !911, line: 72, type: !912, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!911 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !914, !915, !901}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !918, line: 71)
!918 = !DISubprogram(name: "memmove", scope: !911, file: !911, line: 73, type: !912, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !920, line: 72)
!920 = !DISubprogram(name: "strcpy", scope: !911, file: !911, line: 79, type: !921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!921 = !DISubroutineType(types: !922)
!922 = !{!923, !923, !924}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !927, line: 73)
!927 = !DISubprogram(name: "strncpy", scope: !911, file: !911, line: 85, type: !928, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!928 = !DISubroutineType(types: !929)
!929 = !{!923, !923, !924, !901}
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !931, line: 74)
!931 = !DISubprogram(name: "strcat", scope: !911, file: !911, line: 75, type: !921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !933, line: 75)
!933 = !DISubprogram(name: "strncat", scope: !911, file: !911, line: 83, type: !928, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !935, line: 76)
!935 = !DISubprogram(name: "memcmp", scope: !911, file: !911, line: 71, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!936 = !DISubroutineType(types: !937)
!937 = !{!252, !915, !915, !901}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !939, line: 77)
!939 = !DISubprogram(name: "strcmp", scope: !911, file: !911, line: 77, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!940 = !DISubroutineType(types: !941)
!941 = !{!252, !924, !924}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !943, line: 78)
!943 = !DISubprogram(name: "strncmp", scope: !911, file: !911, line: 84, type: !944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!944 = !DISubroutineType(types: !945)
!945 = !{!252, !924, !924, !901}
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !947, line: 79)
!947 = !DISubprogram(name: "strcoll", scope: !911, file: !911, line: 78, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !949, line: 80)
!949 = !DISubprogram(name: "strxfrm", scope: !911, file: !911, line: 91, type: !950, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!950 = !DISubroutineType(types: !951)
!951 = !{!901, !923, !924, !901}
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !953, line: 81)
!953 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !954, file: !954, line: 99, type: !955, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!954 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!955 = !DISubroutineType(types: !956)
!956 = !{!914, !914, !252, !901}
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !958, line: 82)
!958 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !954, file: !954, line: 78, type: !959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!959 = !DISubroutineType(types: !960)
!960 = !{!923, !923, !252}
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !962, line: 83)
!962 = !DISubprogram(name: "strcspn", scope: !911, file: !911, line: 80, type: !963, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!963 = !DISubroutineType(types: !964)
!964 = !{!901, !924, !924}
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !966, line: 84)
!966 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !954, file: !954, line: 85, type: !921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !968, line: 85)
!968 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !954, file: !954, line: 92, type: !959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !970, line: 86)
!970 = !DISubprogram(name: "strspn", scope: !911, file: !911, line: 88, type: !963, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !972, line: 87)
!972 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !954, file: !954, line: 106, type: !921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !974, line: 89)
!974 = !DISubprogram(name: "strtok", scope: !911, file: !911, line: 90, type: !921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !976, line: 91)
!976 = !DISubprogram(name: "memset", scope: !911, file: !911, line: 74, type: !955, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !978, line: 92)
!978 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !911, file: !911, line: 81, type: !979, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!979 = !DISubroutineType(types: !980)
!980 = !{!923, !252}
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !982, line: 93)
!982 = !DISubprogram(name: "strlen", scope: !911, file: !911, line: 82, type: !983, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!983 = !DISubroutineType(types: !984)
!984 = !{!901, !924}
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !986, line: 153)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !987, line: 30, baseType: !988)
!987 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!988 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !990, line: 154)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !991, line: 30, baseType: !992)
!991 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!992 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !994, line: 155)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !995, line: 30, baseType: !252)
!995 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !997, line: 156)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !998, line: 30, baseType: !225)
!998 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1000, line: 158)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1001, line: 31, baseType: !1002)
!1001 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1002 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1004, line: 159)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1005, line: 31, baseType: !1006)
!1005 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1006 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1008, line: 160)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1009, line: 31, baseType: !1010)
!1009 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1010 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1012, line: 161)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1013, line: 31, baseType: !1014)
!1013 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1014 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1016, line: 163)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1017, line: 29, baseType: !986)
!1017 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1019, line: 164)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1017, line: 30, baseType: !990)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1021, line: 165)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1017, line: 31, baseType: !994)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1023, line: 166)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1017, line: 32, baseType: !997)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1025, line: 168)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1017, line: 33, baseType: !1000)
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1027, line: 169)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1017, line: 34, baseType: !1004)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1029, line: 170)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1017, line: 35, baseType: !1008)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1031, line: 171)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1017, line: 36, baseType: !1012)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1033, line: 173)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1017, line: 40, baseType: !986)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1035, line: 174)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1017, line: 41, baseType: !990)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1037, line: 175)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1017, line: 42, baseType: !994)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1039, line: 176)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1017, line: 43, baseType: !997)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1041, line: 178)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1017, line: 44, baseType: !1000)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1043, line: 179)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1017, line: 45, baseType: !1004)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1045, line: 180)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1017, line: 46, baseType: !1008)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1047, line: 181)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1017, line: 47, baseType: !1012)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1049, line: 183)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1050, line: 30, baseType: !1051)
!1050 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !421, line: 49, baseType: !78)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1053, line: 184)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1054, line: 30, baseType: !610)
!1054 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !281, line: 186)
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1057, line: 187)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1058, line: 32, baseType: !610)
!1058 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !901, line: 100)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1061, line: 101)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1062, line: 85, baseType: !1063)
!1062 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1062, line: 82, size: 64, elements: !1064, identifier: "_ZTS5div_t")
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1063, file: !1062, line: 83, baseType: !252, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1063, file: !1062, line: 84, baseType: !252, size: 32, offset: 32)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1068, line: 102)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1062, line: 90, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1062, line: 87, size: 128, elements: !1070, identifier: "_ZTS6ldiv_t")
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1069, file: !1062, line: 88, baseType: !78, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1069, file: !1062, line: 89, baseType: !78, size: 64, offset: 64)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1074, line: 104)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1062, line: 96, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1062, line: 93, size: 128, elements: !1076, identifier: "_ZTS7lldiv_t")
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1075, file: !1062, line: 94, baseType: !225, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1075, file: !1062, line: 95, baseType: !225, size: 64, offset: 64)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1080, line: 106)
!1080 = !DISubprogram(name: "atof", scope: !1062, file: !1062, line: 131, type: !1081, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1083, !924}
!1083 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1085, line: 107)
!1085 = !DISubprogram(name: "atoi", scope: !1062, file: !1062, line: 132, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!252, !924}
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1089, line: 108)
!1089 = !DISubprogram(name: "atol", scope: !1062, file: !1062, line: 133, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!78, !924}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1093, line: 110)
!1093 = !DISubprogram(name: "atoll", scope: !1062, file: !1062, line: 136, type: !1094, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!225, !924}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1097, line: 112)
!1097 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !1062, file: !1062, line: 162, type: !1098, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1083, !924, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1102, line: 113)
!1102 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !1062, file: !1062, line: 163, type: !1103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1105, !924, !1100}
!1105 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1107, line: 114)
!1107 = !DISubprogram(name: "strtold", scope: !1062, file: !1062, line: 166, type: !1108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!907, !924, !1100}
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1111, line: 115)
!1111 = !DISubprogram(name: "strtol", scope: !1062, file: !1062, line: 164, type: !1112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!78, !924, !1100, !252}
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1115, line: 117)
!1115 = !DISubprogram(name: "strtoll", scope: !1062, file: !1062, line: 169, type: !1116, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!225, !924, !1100, !252}
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1119, line: 119)
!1119 = !DISubprogram(name: "strtoul", scope: !1062, file: !1062, line: 172, type: !1120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!610, !924, !1100, !252}
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1123, line: 121)
!1123 = !DISubprogram(name: "strtoull", scope: !1062, file: !1062, line: 175, type: !1124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1014, !924, !1100, !252}
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1127, line: 123)
!1127 = !DISubprogram(name: "rand", scope: !1062, file: !1062, line: 159, type: !1128, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!252}
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1131, line: 124)
!1131 = !DISubprogram(name: "srand", scope: !1062, file: !1062, line: 161, type: !1132, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1010}
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1135, line: 125)
!1135 = !DISubprogram(name: "calloc", scope: !1062, file: !1062, line: 140, type: !1136, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!914, !901, !901}
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1139, line: 126)
!1139 = !DISubprogram(name: "free", scope: !1062, file: !1062, line: 143, type: !1140, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !914}
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1143, line: 127)
!1143 = !DISubprogram(name: "malloc", scope: !1062, file: !1062, line: 152, type: !1144, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!914, !901}
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1147, line: 128)
!1147 = !DISubprogram(name: "realloc", scope: !1062, file: !1062, line: 160, type: !1148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!914, !914, !901}
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1151, line: 129)
!1151 = !DISubprogram(name: "abort", scope: !1062, file: !1062, line: 128, type: !617, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1153, line: 130)
!1153 = !DISubprogram(name: "atexit", scope: !1062, file: !1062, line: 130, type: !1154, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!252, !616}
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1157, line: 131)
!1157 = !DISubprogram(name: "exit", scope: !1062, file: !1062, line: 142, type: !1158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !252}
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1161, line: 132)
!1161 = !DISubprogram(name: "_Exit", scope: !1062, file: !1062, line: 182, type: !1158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1163, line: 134)
!1163 = !DISubprogram(name: "getenv", scope: !1062, file: !1062, line: 144, type: !1164, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!923, !924}
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1167, line: 135)
!1167 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !1062, file: !1062, line: 177, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1169, line: 137)
!1169 = !DISubprogram(name: "bsearch", scope: !1062, file: !1062, line: 138, type: !1170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!914, !915, !915, !901, !901, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!252, !915, !915}
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1176, line: 138)
!1176 = !DISubprogram(name: "qsort", scope: !1062, file: !1062, line: 157, type: !1177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !914, !901, !901, !1172}
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1180, line: 139)
!1180 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !1181, file: !1181, line: 113, type: !1182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1181 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!225, !225}
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1185, line: 140)
!1185 = !DISubprogram(name: "labs", scope: !1062, file: !1062, line: 145, type: !1186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!78, !78}
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1189, line: 142)
!1189 = !DISubprogram(name: "llabs", scope: !1062, file: !1062, line: 149, type: !1182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1191, line: 144)
!1191 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !1181, file: !1181, line: 118, type: !1192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1074, !225, !225}
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1195, line: 145)
!1195 = !DISubprogram(name: "ldiv", scope: !1062, file: !1062, line: 146, type: !1196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1068, !78, !78}
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1199, line: 147)
!1199 = !DISubprogram(name: "lldiv", scope: !1062, file: !1062, line: 150, type: !1192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1201, line: 149)
!1201 = !DISubprogram(name: "mblen", scope: !1062, file: !1062, line: 153, type: !1202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!252, !924, !901}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1205, line: 150)
!1205 = !DISubprogram(name: "mbtowc", scope: !1062, file: !1062, line: 155, type: !1206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!252, !1208, !924, !901}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1211, line: 151)
!1211 = !DISubprogram(name: "wctomb", scope: !1062, file: !1062, line: 179, type: !1212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!252, !923, !1209}
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1215, line: 152)
!1215 = !DISubprogram(name: "mbstowcs", scope: !1062, file: !1062, line: 154, type: !1216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!901, !1208, !924, !901}
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1219, line: 153)
!1219 = !DISubprogram(name: "wcstombs", scope: !1062, file: !1062, line: 178, type: !1220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!901, !923, !1222, !901}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1225, line: 108)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1226, line: 153, baseType: !1227)
!1226 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1226, line: 122, size: 1216, elements: !1228, identifier: "_ZTS7__sFILE")
!1228 = !{!1229, !1231, !1232, !1233, !1234, !1235, !1240, !1241, !1242, !1246, !1250, !1258, !1262, !1263, !1266, !1267, !1271, !1275, !1276, !1277}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1227, file: !1226, line: 123, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1227, file: !1226, line: 124, baseType: !252, size: 32, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1227, file: !1226, line: 125, baseType: !252, size: 32, offset: 96)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1227, file: !1226, line: 126, baseType: !992, size: 16, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1227, file: !1226, line: 127, baseType: !992, size: 16, offset: 144)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1227, file: !1226, line: 128, baseType: !1236, size: 128, offset: 192)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1226, line: 88, size: 128, elements: !1237, identifier: "_ZTS6__sbuf")
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1236, file: !1226, line: 89, baseType: !1230, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1236, file: !1226, line: 90, baseType: !252, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1227, file: !1226, line: 129, baseType: !252, size: 32, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1227, file: !1226, line: 132, baseType: !914, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1227, file: !1226, line: 133, baseType: !1243, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!252, !914}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1227, file: !1226, line: 134, baseType: !1247, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!252, !914, !923, !252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1227, file: !1226, line: 135, baseType: !1251, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1254, !914, !1254, !252}
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1226, line: 77, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !1256, line: 71, baseType: !1257)
!1256 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !421, line: 46, baseType: !225)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1227, file: !1226, line: 136, baseType: !1259, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!252, !914, !924, !252}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1227, file: !1226, line: 139, baseType: !1236, size: 128, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !1227, file: !1226, line: 140, baseType: !1264, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !1226, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1227, file: !1226, line: 141, baseType: !252, size: 32, offset: 896)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1227, file: !1226, line: 144, baseType: !1268, size: 24, offset: 928)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 24, elements: !1269)
!1269 = !{!1270}
!1270 = !DISubrange(count: 3)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1227, file: !1226, line: 145, baseType: !1272, size: 8, offset: 952)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 8, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 1)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1227, file: !1226, line: 148, baseType: !1236, size: 128, offset: 960)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1227, file: !1226, line: 151, baseType: !252, size: 32, offset: 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1227, file: !1226, line: 152, baseType: !1254, size: 64, offset: 1152)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1254, line: 109)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !901, line: 110)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1281, line: 112)
!1281 = !DISubprogram(name: "fclose", scope: !1226, file: !1226, line: 232, type: !1282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!252, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1286, line: 113)
!1286 = !DISubprogram(name: "fflush", scope: !1226, file: !1226, line: 235, type: !1282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1288, line: 114)
!1288 = !DISubprogram(name: "setbuf", scope: !1226, file: !1226, line: 267, type: !1289, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1284, !923}
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1292, line: 115)
!1292 = !DISubprogram(name: "setvbuf", scope: !1226, file: !1226, line: 268, type: !1293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!252, !1284, !923, !252, !901}
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1296, line: 116)
!1296 = !DISubprogram(name: "fprintf", scope: !1226, file: !1226, line: 244, type: !1297, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!252, !1284, !924, null}
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1300, line: 117)
!1300 = !DISubprogram(name: "fscanf", scope: !1226, file: !1226, line: 250, type: !1297, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1302, line: 118)
!1302 = !DISubprogram(name: "snprintf", scope: !1226, file: !1226, line: 421, type: !1303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!252, !923, !901, !924, null}
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1306, line: 119)
!1306 = !DISubprogram(name: "sprintf", scope: !1226, file: !1226, line: 269, type: !1307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!252, !923, !924, null}
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1310, line: 120)
!1310 = !DISubprogram(name: "sscanf", scope: !1226, file: !1226, line: 270, type: !1311, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!252, !924, !924, null}
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1314, line: 121)
!1314 = !DISubprogram(name: "vfprintf", scope: !1226, file: !1226, line: 278, type: !1315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!252, !1284, !924, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1319, identifier: "_ZTS13__va_list_tag")
!1319 = !{!1320, !1321, !1322, !1323}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1318, file: !3, baseType: !1010, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1318, file: !3, baseType: !1010, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1318, file: !3, baseType: !914, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1318, file: !3, baseType: !914, size: 64, offset: 128)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1325, line: 122)
!1325 = !DISubprogram(name: "vfscanf", scope: !1226, file: !1226, line: 422, type: !1315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1327, line: 123)
!1327 = !DISubprogram(name: "vsscanf", scope: !1226, file: !1226, line: 425, type: !1328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!252, !924, !924, !1317}
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1331, line: 124)
!1331 = !DISubprogram(name: "vsnprintf", scope: !1226, file: !1226, line: 424, type: !1332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!252, !923, !901, !924, !1317}
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1335, line: 125)
!1335 = !DISubprogram(name: "vsprintf", scope: !1226, file: !1226, line: 280, type: !1336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!252, !923, !924, !1317}
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1339, line: 126)
!1339 = !DISubprogram(name: "fgetc", scope: !1226, file: !1226, line: 236, type: !1282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1341, line: 127)
!1341 = !DISubprogram(name: "fgets", scope: !1226, file: !1226, line: 238, type: !1342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!923, !923, !252, !1284}
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1345, line: 128)
!1345 = !DISubprogram(name: "fputc", scope: !1226, file: !1226, line: 245, type: !1346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!252, !252, !1284}
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1349, line: 129)
!1349 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !1226, file: !1226, line: 246, type: !1350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!252, !924, !1284}
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1353, line: 130)
!1353 = !DISubprogram(name: "getc", scope: !1226, file: !1226, line: 255, type: !1282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1355, line: 131)
!1355 = !DISubprogram(name: "putc", scope: !1226, file: !1226, line: 260, type: !1346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1357, line: 132)
!1357 = !DISubprogram(name: "ungetc", scope: !1226, file: !1226, line: 277, type: !1346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1359, line: 133)
!1359 = !DISubprogram(name: "fread", scope: !1226, file: !1226, line: 247, type: !1360, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!901, !914, !901, !901, !1284}
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1363, line: 134)
!1363 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !1226, file: !1226, line: 254, type: !1364, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!901, !915, !901, !901, !1284}
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1367, line: 135)
!1367 = !DISubprogram(name: "fgetpos", scope: !1226, file: !1226, line: 237, type: !1368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!252, !1284, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1372, line: 136)
!1372 = !DISubprogram(name: "fseek", scope: !1226, file: !1226, line: 251, type: !1373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!252, !1284, !78, !252}
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1376, line: 137)
!1376 = !DISubprogram(name: "fsetpos", scope: !1226, file: !1226, line: 252, type: !1377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!252, !1284, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1382, line: 138)
!1382 = !DISubprogram(name: "ftell", scope: !1226, file: !1226, line: 253, type: !1383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!78, !1284}
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1386, line: 139)
!1386 = !DISubprogram(name: "rewind", scope: !1226, file: !1226, line: 265, type: !1387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !1284}
!1389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1390, line: 140)
!1390 = !DISubprogram(name: "clearerr", scope: !1226, file: !1226, line: 231, type: !1387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1392, line: 141)
!1392 = !DISubprogram(name: "feof", scope: !1226, file: !1226, line: 233, type: !1282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1394, line: 142)
!1394 = !DISubprogram(name: "ferror", scope: !1226, file: !1226, line: 234, type: !1282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1396, line: 143)
!1396 = !DISubprogram(name: "perror", scope: !1226, file: !1226, line: 258, type: !1397, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !924}
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1400, line: 146)
!1400 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !1226, file: !1226, line: 242, type: !1401, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1284, !924, !924}
!1403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1404, line: 147)
!1404 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !1226, file: !1226, line: 248, type: !1405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1284, !924, !924, !1284}
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1408, line: 148)
!1408 = !DISubprogram(name: "remove", scope: !1226, file: !1226, line: 263, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1410, line: 149)
!1410 = !DISubprogram(name: "rename", scope: !1226, file: !1226, line: 264, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1412, line: 150)
!1412 = !DISubprogram(name: "tmpfile", scope: !1226, file: !1226, line: 271, type: !1413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!1284}
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1416, line: 151)
!1416 = !DISubprogram(name: "tmpnam", scope: !1226, file: !1226, line: 276, type: !1417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!923, !923}
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1420, line: 155)
!1420 = !DISubprogram(name: "getchar", scope: !1226, file: !1226, line: 256, type: !1128, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1422, line: 157)
!1422 = !DISubprogram(name: "gets", scope: !1226, file: !1226, line: 257, type: !1417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1424, line: 159)
!1424 = !DISubprogram(name: "scanf", scope: !1226, file: !1226, line: 266, type: !1425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!252, !924, null}
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1428, line: 160)
!1428 = !DISubprogram(name: "vscanf", scope: !1226, file: !1226, line: 423, type: !1429, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!252, !924, !1317}
!1431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1432, line: 164)
!1432 = !DISubprogram(name: "printf", scope: !1226, file: !1226, line: 259, type: !1425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1434, line: 165)
!1434 = !DISubprogram(name: "putchar", scope: !1226, file: !1226, line: 261, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!252, !252}
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1438, line: 166)
!1438 = !DISubprogram(name: "puts", scope: !1226, file: !1226, line: 262, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1440, line: 167)
!1440 = !DISubprogram(name: "vprintf", scope: !1226, file: !1226, line: 279, type: !1429, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1442, line: 104)
!1442 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !1443, file: !1443, line: 212, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1443 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1445, line: 105)
!1445 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !1443, file: !1443, line: 218, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1447, line: 106)
!1447 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !1443, file: !1443, line: 224, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1449, line: 107)
!1449 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !1443, file: !1443, line: 230, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1451, line: 108)
!1451 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !1443, file: !1443, line: 237, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1453, line: 109)
!1453 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !1443, file: !1443, line: 243, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1455, line: 110)
!1455 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !1443, file: !1443, line: 249, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1457, line: 111)
!1457 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !1443, file: !1443, line: 255, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1459, line: 112)
!1459 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !1443, file: !1443, line: 261, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1461, line: 113)
!1461 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !1443, file: !1443, line: 267, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1463, line: 114)
!1463 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !1443, file: !1443, line: 273, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1465, line: 115)
!1465 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !1443, file: !1443, line: 280, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1467, line: 116)
!1467 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !1443, file: !1443, line: 292, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1469, line: 117)
!1469 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !1443, file: !1443, line: 298, type: !1435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1471, line: 63)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1472, line: 31, baseType: !1473)
!1472 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !421, line: 112, baseType: !252)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1475, line: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1476, line: 31, baseType: !1477)
!1476 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !1478, line: 40, baseType: !252)
!1478 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1480, line: 65)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1481, line: 31, baseType: !1482)
!1481 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !1478, line: 42, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !421, line: 45, baseType: !1010)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1485, line: 66)
!1485 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !1486, file: !1486, line: 66, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1486 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!252, !1471}
!1489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1490, line: 67)
!1490 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !1486, file: !1486, line: 72, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1492, line: 68)
!1492 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !1493, file: !1493, line: 50, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1493 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1495, line: 69)
!1495 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !1486, file: !1486, line: 78, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1497, line: 70)
!1497 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !1486, file: !1486, line: 90, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1499, line: 71)
!1499 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !1486, file: !1486, line: 96, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1501, line: 72)
!1501 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !1486, file: !1486, line: 102, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1503, line: 73)
!1503 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !1486, file: !1486, line: 108, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1505, line: 74)
!1505 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !1486, file: !1486, line: 114, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1507, line: 75)
!1507 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !1486, file: !1486, line: 120, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1509, line: 76)
!1509 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !1486, file: !1486, line: 126, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1511, line: 77)
!1511 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !1486, file: !1486, line: 132, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1513, line: 78)
!1513 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !1486, file: !1486, line: 84, type: !1514, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!252, !1471, !1480}
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1517, line: 79)
!1517 = !DISubprogram(name: "wctype", scope: !1486, file: !1486, line: 172, type: !1518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1480, !924}
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1521, line: 80)
!1521 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !1486, file: !1486, line: 138, type: !1522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1471, !1471}
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1525, line: 81)
!1525 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !1486, file: !1486, line: 144, type: !1522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1527, line: 82)
!1527 = !DISubprogram(name: "towctrans", scope: !1493, file: !1493, line: 121, type: !1528, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1471, !1471, !1475}
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1531, line: 83)
!1531 = !DISubprogram(name: "wctrans", scope: !1493, file: !1493, line: 123, type: !1532, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1475, !924}
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1535, line: 116)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1536, line: 31, baseType: !1537)
!1536 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !421, line: 81, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !421, line: 79, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !421, line: 76, size: 1024, elements: !1540, identifier: "_ZTS11__mbstate_t")
!1540 = !{!1541, !1545}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !1539, file: !421, line: 77, baseType: !1542, size: 1024)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1024, elements: !1543)
!1543 = !{!1544}
!1544 = !DISubrange(count: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !1539, file: !421, line: 78, baseType: !225, size: 64)
!1546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !901, line: 117)
!1547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1548, line: 118)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1549, line: 73, size: 448, elements: !1550, identifier: "_ZTS2tm")
!1549 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1548, file: !1549, line: 74, baseType: !252, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1548, file: !1549, line: 75, baseType: !252, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1548, file: !1549, line: 76, baseType: !252, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1548, file: !1549, line: 77, baseType: !252, size: 32, offset: 96)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1548, file: !1549, line: 78, baseType: !252, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1548, file: !1549, line: 79, baseType: !252, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1548, file: !1549, line: 80, baseType: !252, size: 32, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1548, file: !1549, line: 81, baseType: !252, size: 32, offset: 224)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1548, file: !1549, line: 82, baseType: !252, size: 32, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1548, file: !1549, line: 83, baseType: !78, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1548, file: !1549, line: 84, baseType: !923, size: 64, offset: 384)
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1471, line: 119)
!1563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1225, line: 120)
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1565, line: 121)
!1565 = !DISubprogram(name: "fwprintf", scope: !1566, file: !1566, line: 103, type: !1567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1566 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!252, !1284, !1222, null}
!1569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1570, line: 122)
!1570 = !DISubprogram(name: "fwscanf", scope: !1566, file: !1566, line: 104, type: !1567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1572, line: 123)
!1572 = !DISubprogram(name: "swprintf", scope: !1566, file: !1566, line: 115, type: !1573, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!252, !1208, !901, !1222, null}
!1575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1576, line: 124)
!1576 = !DISubprogram(name: "vfwprintf", scope: !1566, file: !1566, line: 118, type: !1577, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!252, !1284, !1222, !1317}
!1579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1580, line: 125)
!1580 = !DISubprogram(name: "vswprintf", scope: !1566, file: !1566, line: 120, type: !1581, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!252, !1208, !901, !1222, !1317}
!1583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1584, line: 126)
!1584 = !DISubprogram(name: "swscanf", scope: !1566, file: !1566, line: 116, type: !1585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!252, !1222, !1222, null}
!1587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1588, line: 127)
!1588 = !DISubprogram(name: "vfwscanf", scope: !1566, file: !1566, line: 170, type: !1577, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1590, line: 128)
!1590 = !DISubprogram(name: "vswscanf", scope: !1566, file: !1566, line: 172, type: !1591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!252, !1222, !1222, !1317}
!1593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1594, line: 129)
!1594 = !DISubprogram(name: "fgetwc", scope: !1566, file: !1566, line: 98, type: !1595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1471, !1284}
!1597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1598, line: 130)
!1598 = !DISubprogram(name: "fgetws", scope: !1566, file: !1566, line: 99, type: !1599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1208, !1208, !252, !1284}
!1601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1602, line: 131)
!1602 = !DISubprogram(name: "fputwc", scope: !1566, file: !1566, line: 100, type: !1603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1471, !1209, !1284}
!1605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1606, line: 132)
!1606 = !DISubprogram(name: "fputws", scope: !1566, file: !1566, line: 101, type: !1607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!252, !1222, !1284}
!1609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1610, line: 133)
!1610 = !DISubprogram(name: "fwide", scope: !1566, file: !1566, line: 102, type: !1611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!252, !1284, !252}
!1613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1614, line: 134)
!1614 = !DISubprogram(name: "getwc", scope: !1566, file: !1566, line: 105, type: !1595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1616, line: 135)
!1616 = !DISubprogram(name: "putwc", scope: !1566, file: !1566, line: 113, type: !1603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1618, line: 136)
!1618 = !DISubprogram(name: "ungetwc", scope: !1566, file: !1566, line: 117, type: !1619, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!1471, !1471, !1284}
!1621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1622, line: 137)
!1622 = !DISubprogram(name: "wcstod", scope: !1566, file: !1566, line: 144, type: !1623, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!1083, !1222, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1627, line: 138)
!1627 = !DISubprogram(name: "wcstof", scope: !1566, file: !1566, line: 175, type: !1628, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1105, !1222, !1625}
!1630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1631, line: 139)
!1631 = !DISubprogram(name: "wcstold", scope: !1566, file: !1566, line: 177, type: !1632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!907, !1222, !1625}
!1634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1635, line: 140)
!1635 = !DISubprogram(name: "wcstol", scope: !1566, file: !1566, line: 147, type: !1636, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!78, !1222, !1625, !252}
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1639, line: 142)
!1639 = !DISubprogram(name: "wcstoll", scope: !1566, file: !1566, line: 180, type: !1640, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!225, !1222, !1625, !252}
!1642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1643, line: 144)
!1643 = !DISubprogram(name: "wcstoul", scope: !1566, file: !1566, line: 149, type: !1644, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!610, !1222, !1625, !252}
!1646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1647, line: 146)
!1647 = !DISubprogram(name: "wcstoull", scope: !1566, file: !1566, line: 182, type: !1648, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!1014, !1222, !1625, !252}
!1650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1651, line: 148)
!1651 = !DISubprogram(name: "wcscpy", scope: !1566, file: !1566, line: 128, type: !1652, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1208, !1208, !1222}
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1655, line: 149)
!1655 = !DISubprogram(name: "wcsncpy", scope: !1566, file: !1566, line: 135, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1208, !1208, !1222, !901}
!1658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1659, line: 150)
!1659 = !DISubprogram(name: "wcscat", scope: !1566, file: !1566, line: 124, type: !1652, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1661, line: 151)
!1661 = !DISubprogram(name: "wcsncat", scope: !1566, file: !1566, line: 133, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1663, line: 152)
!1663 = !DISubprogram(name: "wcscmp", scope: !1566, file: !1566, line: 126, type: !1664, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!252, !1222, !1222}
!1666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1667, line: 153)
!1667 = !DISubprogram(name: "wcscoll", scope: !1566, file: !1566, line: 127, type: !1664, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1669, line: 154)
!1669 = !DISubprogram(name: "wcsncmp", scope: !1566, file: !1566, line: 134, type: !1670, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!252, !1222, !1222, !901}
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1673, line: 155)
!1673 = !DISubprogram(name: "wcsxfrm", scope: !1566, file: !1566, line: 142, type: !1674, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!901, !1208, !1222, !901}
!1676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1677, line: 156)
!1677 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !1678, file: !1678, line: 137, type: !1679, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1678 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1208, !1208, !1209}
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1682, line: 157)
!1682 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !1678, file: !1678, line: 144, type: !1652, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1684, line: 158)
!1684 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !1678, file: !1678, line: 151, type: !1679, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1686, line: 159)
!1686 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !1678, file: !1678, line: 158, type: !1652, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1688, line: 160)
!1688 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !1678, file: !1678, line: 165, type: !1689, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1208, !1208, !1209, !901}
!1691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1692, line: 161)
!1692 = !DISubprogram(name: "wcscspn", scope: !1566, file: !1566, line: 129, type: !1693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!901, !1222, !1222}
!1695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1696, line: 162)
!1696 = !DISubprogram(name: "wcslen", scope: !1566, file: !1566, line: 132, type: !1697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!901, !1222}
!1699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1700, line: 163)
!1700 = !DISubprogram(name: "wcsspn", scope: !1566, file: !1566, line: 140, type: !1693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1702, line: 164)
!1702 = !DISubprogram(name: "wcstok", scope: !1566, file: !1566, line: 145, type: !1703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!1208, !1208, !1222, !1625}
!1705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1706, line: 165)
!1706 = !DISubprogram(name: "wmemcmp", scope: !1566, file: !1566, line: 151, type: !1670, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1708, line: 166)
!1708 = !DISubprogram(name: "wmemcpy", scope: !1566, file: !1566, line: 152, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1710, line: 167)
!1710 = !DISubprogram(name: "wmemmove", scope: !1566, file: !1566, line: 153, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1712, line: 168)
!1712 = !DISubprogram(name: "wmemset", scope: !1566, file: !1566, line: 154, type: !1689, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1714, line: 169)
!1714 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !1566, file: !1566, line: 130, type: !1715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!901, !1208, !901, !1222, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1720, line: 170)
!1720 = !DISubprogram(name: "btowc", scope: !1566, file: !1566, line: 97, type: !1721, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!1471, !252}
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1724, line: 171)
!1724 = !DISubprogram(name: "wctob", scope: !1566, file: !1566, line: 143, type: !1487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1726, line: 172)
!1726 = !DISubprogram(name: "mbsinit", scope: !1566, file: !1566, line: 110, type: !1727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!252, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1732, line: 173)
!1732 = !DISubprogram(name: "mbrlen", scope: !1566, file: !1566, line: 107, type: !1733, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!901, !924, !901, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1737, line: 174)
!1737 = !DISubprogram(name: "mbrtowc", scope: !1566, file: !1566, line: 108, type: !1738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!901, !1208, !924, !901, !1735}
!1740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1741, line: 175)
!1741 = !DISubprogram(name: "wcrtomb", scope: !1566, file: !1566, line: 123, type: !1742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!901, !923, !1209, !1735}
!1744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1745, line: 176)
!1745 = !DISubprogram(name: "mbsrtowcs", scope: !1566, file: !1566, line: 111, type: !1746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!901, !1208, !1748, !901, !1735}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!1749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1750, line: 177)
!1750 = !DISubprogram(name: "wcsrtombs", scope: !1566, file: !1566, line: 138, type: !1751, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!901, !923, !1753, !901, !1735}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1755, line: 180)
!1755 = !DISubprogram(name: "getwchar", scope: !1566, file: !1566, line: 106, type: !1756, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1471}
!1758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1759, line: 181)
!1759 = !DISubprogram(name: "vwscanf", scope: !1566, file: !1566, line: 174, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!252, !1222, !1317}
!1762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1763, line: 182)
!1763 = !DISubprogram(name: "wscanf", scope: !1566, file: !1566, line: 156, type: !1764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!252, !1222, null}
!1766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1767, line: 186)
!1767 = !DISubprogram(name: "putwchar", scope: !1566, file: !1566, line: 114, type: !1768, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1471, !1209}
!1770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1771, line: 187)
!1771 = !DISubprogram(name: "vwprintf", scope: !1566, file: !1566, line: 122, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1773, line: 188)
!1773 = !DISubprogram(name: "wprintf", scope: !1566, file: !1566, line: 155, type: !1764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1775, line: 56)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1776, line: 30, baseType: !1777)
!1776 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !421, line: 117, baseType: !610)
!1778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !901, line: 57)
!1779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !418, line: 58)
!1780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1548, line: 59)
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1782, line: 60)
!1782 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !1549, file: !1549, line: 107, type: !1783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1775}
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1786, line: 61)
!1786 = !DISubprogram(name: "difftime", scope: !1549, file: !1549, line: 109, type: !1787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1083, !418, !418}
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1790, line: 62)
!1790 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !1549, file: !1549, line: 113, type: !1791, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!418, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1795, line: 63)
!1795 = !DISubprogram(name: "time", scope: !1549, file: !1549, line: 116, type: !1796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!418, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1800, line: 65)
!1800 = !DISubprogram(name: "asctime", scope: !1549, file: !1549, line: 106, type: !1801, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!923, !1717}
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1804, line: 66)
!1804 = !DISubprogram(name: "ctime", scope: !1549, file: !1549, line: 108, type: !1805, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!923, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1810, line: 67)
!1810 = !DISubprogram(name: "gmtime", scope: !1549, file: !1549, line: 111, type: !1811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1793, !1807}
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1814, line: 68)
!1814 = !DISubprogram(name: "localtime", scope: !1549, file: !1549, line: 112, type: !1811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1816, line: 70)
!1816 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !1549, file: !1549, line: 114, type: !1817, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!901, !923, !901, !924, !1717}
!1819 = !{i32 2, !"Dwarf Version", i32 2}
!1820 = !{i32 2, !"Debug Info Version", i32 3}
!1821 = !{i32 1, !"PIC Level", i32 2}
!1822 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1823 = distinct !DISubprogram(name: "f1", linkageName: "_Z2f1v", scope: !3, file: !3, line: 10, type: !617, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1824)
!1824 = !{!1825}
!1825 = !DILocalVariable(name: "flag", scope: !1823, file: !3, line: 14, type: !141)
!1826 = !DILocalVariable(name: "__m", arg: 2, scope: !1827, file: !6, line: 924, type: !769)
!1827 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !750, file: !6, line: 924, type: !778, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !777, variables: !1828)
!1828 = !{!1829, !1826}
!1829 = !DILocalVariable(name: "this", arg: 1, scope: !1827, type: !1830, flags: DIFlagArtificial | DIFlagObjectPointer)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!1831 = !DIExpression()
!1832 = !DILocation(line: 924, column: 27, scope: !1827, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 12, column: 15, scope: !1823)
!1834 = !DILocation(line: 926, column: 17, scope: !1835, inlinedAt: !1833)
!1835 = !DILexicalBlockFile(scope: !1827, file: !6, discriminator: 1)
!1836 = !DILocation(line: 12, column: 11, scope: !1823)
!1837 = !{!1838, !1838, i64 0}
!1838 = !{!"int", !1839, i64 0}
!1839 = !{!"omnipotent char", !1840, i64 0}
!1840 = !{!"Simple C++ TBAA"}
!1841 = !DILocation(line: 13, column: 5, scope: !1823)
!1842 = !DILocalVariable(name: "__e", arg: 2, scope: !1843, file: !6, line: 943, type: !795)
!1843 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !750, file: !6, line: 943, type: !797, isLocal: false, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !796, variables: !1844)
!1844 = !{!1845, !1842, !1847, !1848, !1849}
!1845 = !DILocalVariable(name: "this", arg: 1, scope: !1843, type: !1846, flags: DIFlagArtificial | DIFlagObjectPointer)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!1847 = !DILocalVariable(name: "__d", arg: 3, scope: !1843, file: !6, line: 943, type: !252)
!1848 = !DILocalVariable(name: "__s", arg: 4, scope: !1843, file: !6, line: 944, type: !769)
!1849 = !DILocalVariable(name: "__f", arg: 5, scope: !1843, file: !6, line: 944, type: !769)
!1850 = !DILocation(line: 943, column: 37, scope: !1843, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 14, column: 19, scope: !1823)
!1852 = !DILocation(line: 943, column: 46, scope: !1843, inlinedAt: !1851)
!1853 = !DILocation(line: 944, column: 45, scope: !1843, inlinedAt: !1851)
!1854 = !DILocation(line: 944, column: 63, scope: !1843, inlinedAt: !1851)
!1855 = !DILocation(line: 946, column: 17, scope: !1856, inlinedAt: !1851)
!1856 = !DILexicalBlockFile(scope: !1843, file: !6, discriminator: 18)
!1857 = !DILocation(line: 946, column: 17, scope: !1858, inlinedAt: !1851)
!1858 = !DILexicalBlockFile(scope: !1843, file: !6, discriminator: 20)
!1859 = !DILocation(line: 15, column: 36, scope: !1823)
!1860 = !DILocation(line: 15, column: 5, scope: !1823)
!1861 = !DILocation(line: 17, column: 26, scope: !1823)
!1862 = !DILocation(line: 17, column: 5, scope: !1823)
!1863 = !DILocation(line: 18, column: 1, scope: !1823)
!1864 = distinct !DISubprogram(name: "f2", linkageName: "_Z2f2v", scope: !3, file: !3, line: 20, type: !617, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !161)
!1865 = !DILocation(line: 924, column: 27, scope: !1827, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 22, column: 15, scope: !1864)
!1867 = !DILocation(line: 926, column: 17, scope: !1835, inlinedAt: !1866)
!1868 = !DILocation(line: 22, column: 11, scope: !1864)
!1869 = !DILocalVariable(name: "__d", arg: 2, scope: !1870, file: !6, line: 916, type: !252)
!1870 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !750, file: !6, line: 916, type: !771, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !770, variables: !1871)
!1871 = !{!1872, !1869, !1873}
!1872 = !DILocalVariable(name: "this", arg: 1, scope: !1870, type: !1846, flags: DIFlagArtificial | DIFlagObjectPointer)
!1873 = !DILocalVariable(name: "__m", arg: 3, scope: !1870, file: !6, line: 916, type: !769)
!1874 = !DILocation(line: 916, column: 20, scope: !1870, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 23, column: 7, scope: !1864)
!1876 = !DILocation(line: 916, column: 38, scope: !1870, inlinedAt: !1875)
!1877 = !DILocation(line: 918, column: 10, scope: !1878, inlinedAt: !1875)
!1878 = !DILexicalBlockFile(scope: !1870, file: !6, discriminator: 1)
!1879 = !DILocation(line: 24, column: 1, scope: !1864)
!1880 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 27, type: !1128, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1881)
!1881 = !{!1882, !1958}
!1882 = !DILocalVariable(name: "a", scope: !1880, file: !3, line: 32, type: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !7, file: !42, line: 282, size: 64, elements: !1884, identifier: "_ZTSNSt3__16threadE")
!1884 = !{!1885, !1906, !1912, !1916, !1919, !1920, !1924, !1927, !1930, !1934, !1935, !1936, !1951, !1955}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !1883, file: !42, line: 284, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !7, file: !70, line: 72, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !1888, line: 30, baseType: !1889)
!1888 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !74, line: 118, baseType: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !74, line: 103, size: 65536, elements: !1892, identifier: "_ZTS17_opaque_pthread_t")
!1892 = !{!1893, !1894, !1902}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1891, file: !74, line: 104, baseType: !78, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !1891, file: !74, line: 105, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !74, line: 57, size: 192, elements: !1897, identifier: "_ZTS28__darwin_pthread_handler_rec")
!1897 = !{!1898, !1900, !1901}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !1896, file: !74, line: 58, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !1896, file: !74, line: 59, baseType: !914, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1896, file: !74, line: 60, baseType: !1895, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1891, file: !74, line: 106, baseType: !1903, size: 65408, offset: 128)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 65408, elements: !1904)
!1904 = !{!1905}
!1905 = !DISubrange(count: 8176)
!1906 = !DISubprogram(name: "thread", scope: !1883, file: !42, line: 286, type: !1907, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1910 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1912 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !1883, file: !42, line: 287, type: !1913, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1915, !1909, !1910}
!1915 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1883, size: 64)
!1916 = !DISubprogram(name: "thread", scope: !1883, file: !42, line: 293, type: !1917, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1909}
!1919 = !DISubprogram(name: "~thread", scope: !1883, file: !42, line: 308, type: !1917, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1920 = !DISubprogram(name: "thread", scope: !1883, file: !42, line: 312, type: !1921, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1909, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1883, size: 64)
!1924 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !1883, file: !42, line: 314, type: !1925, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1915, !1909, !1923}
!1927 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !1883, file: !42, line: 318, type: !1928, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1909, !1915}
!1930 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !1883, file: !42, line: 321, type: !1931, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!141, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1934 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !1883, file: !42, line: 322, type: !1917, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1935 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !1883, file: !42, line: 323, type: !1917, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1936 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !1883, file: !42, line: 325, type: !1937, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1939, !1933}
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !1883, file: !42, line: 289, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !7, file: !42, line: 213, size: 64, elements: !1941, identifier: "_ZTSNSt3__111__thread_idE")
!1941 = !{!1942, !1944, !1948}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1940, file: !42, line: 218, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !7, file: !70, line: 67, baseType: !1887)
!1944 = !DISubprogram(name: "__thread_id", scope: !1940, file: !42, line: 222, type: !1945, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1948 = !DISubprogram(name: "__thread_id", scope: !1940, file: !42, line: 252, type: !1949, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1947, !1943}
!1951 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !1883, file: !42, line: 327, type: !1952, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !1909}
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1883, file: !42, line: 290, baseType: !1886)
!1955 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !1883, file: !42, line: 329, type: !1956, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1010}
!1958 = !DILocalVariable(name: "b", scope: !1880, file: !3, line: 33, type: !1883)
!1959 = !DILocation(line: 29, column: 19, scope: !1880)
!1960 = !DILocation(line: 29, column: 11, scope: !1880)
!1961 = !DILocalVariable(name: "this", arg: 1, scope: !1962, type: !1965, flags: DIFlagArtificial | DIFlagObjectPointer)
!1962 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !744, file: !6, line: 1097, type: !891, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !890, variables: !1963)
!1963 = !{!1961, !1964}
!1964 = !DILocalVariable(name: "__d", arg: 2, scope: !1962, file: !6, line: 1097, type: !252)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1966 = !DILocation(line: 0, scope: !1962, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 30, column: 7, scope: !1880)
!1968 = !DILocation(line: 1097, column: 23, scope: !1962, inlinedAt: !1967)
!1969 = !DILocation(line: 916, column: 20, scope: !1870, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 1098, column: 18, scope: !1962, inlinedAt: !1967)
!1971 = !DILocation(line: 916, column: 38, scope: !1870, inlinedAt: !1970)
!1972 = !DILocation(line: 918, column: 10, scope: !1973, inlinedAt: !1970)
!1973 = !DILexicalBlockFile(scope: !1870, file: !6, discriminator: 3)
!1974 = !DILocation(line: 0, scope: !1962, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 30, column: 14, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1880, file: !3, discriminator: 1)
!1977 = !DILocation(line: 1097, column: 23, scope: !1962, inlinedAt: !1975)
!1978 = !DILocation(line: 916, column: 20, scope: !1870, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 1098, column: 18, scope: !1962, inlinedAt: !1975)
!1980 = !DILocation(line: 916, column: 38, scope: !1870, inlinedAt: !1979)
!1981 = !DILocation(line: 918, column: 10, scope: !1973, inlinedAt: !1979)
!1982 = !DILocation(line: 32, column: 5, scope: !1880)
!1983 = !DIExpression(DW_OP_deref)
!1984 = !DILocation(line: 32, column: 17, scope: !1880)
!1985 = !DILocalVariable(name: "this", arg: 1, scope: !1986, type: !1997, flags: DIFlagArtificial | DIFlagObjectPointer)
!1986 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !1883, file: !42, line: 356, type: !1987, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !1990, declaration: !1994, variables: !1995)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1909, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !617, size: 64)
!1990 = !{!1991, !1992, !1993}
!1991 = !DITemplateTypeParameter(name: "_Fp", type: !1989)
!1992 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !161)
!1993 = !DITemplateTypeParameter(type: null)
!1994 = !DISubprogram(name: "thread<void (&)(), void>", scope: !1883, file: !42, line: 356, type: !1987, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !1990)
!1995 = !{!1985, !1996}
!1996 = !DILocalVariable(name: "__f", arg: 2, scope: !1986, file: !42, line: 356, type: !1989)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1998 = !DILocation(line: 0, scope: !1986, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 32, column: 17, scope: !1880)
!2000 = !DILocation(line: 356, column: 22, scope: !1986, inlinedAt: !1999)
!2001 = !DILocation(line: 357, column: 1, scope: !1986, inlinedAt: !1999)
!2002 = !DILocation(line: 33, column: 5, scope: !1880)
!2003 = !DILocation(line: 0, scope: !1986, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 33, column: 17, scope: !1880)
!2005 = !DILocation(line: 356, column: 22, scope: !1986, inlinedAt: !2004)
!2006 = !DILocation(line: 357, column: 1, scope: !1986, inlinedAt: !2004)
!2007 = !DILocation(line: 35, column: 7, scope: !1880)
!2008 = !DILocation(line: 35, column: 17, scope: !1976)
!2009 = !DILocation(line: 36, column: 30, scope: !1880)
!2010 = !DILocation(line: 36, column: 37, scope: !1880)
!2011 = !DILocation(line: 36, column: 5, scope: !1880)
!2012 = !DILocation(line: 33, column: 17, scope: !1880)
!2013 = !DILocation(line: 38, column: 1, scope: !1880)
!2014 = !DILocation(line: 38, column: 1, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !1880, file: !3, discriminator: 5)
!2016 = !DILocation(line: 38, column: 1, scope: !1976)
!2017 = !DILocation(line: 38, column: 1, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !1880, file: !3, discriminator: 2)
!2019 = !DILocation(line: 38, column: 1, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !1880, file: !3, discriminator: 3)
!2021 = !DILocation(line: 38, column: 1, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !1880, file: !3, discriminator: 4)
!2023 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !1883, file: !42, line: 356, type: !1987, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !1990, declaration: !1994, variables: !2024)
!2024 = !{!2025, !2026, !2027, !2030, !2175}
!2025 = !DILocalVariable(name: "this", arg: 1, scope: !2023, type: !1997, flags: DIFlagArtificial | DIFlagObjectPointer)
!2026 = !DILocalVariable(name: "__f", arg: 2, scope: !2023, file: !42, line: 356, type: !1989)
!2027 = !DILocalVariable(name: "__tsp", scope: !2028, file: !42, line: 359, type: !2029)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !42, line: 357, column: 1)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !42, line: 358, baseType: !30)
!2030 = !DILocalVariable(name: "__p", scope: !2028, file: !42, line: 361, type: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !31, line: 2334, size: 64, elements: !2032, templateParams: !2147, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!2032 = !{!2033, !2116, !2121, !2125, !2128, !2131, !2141, !2152, !2153, !2158, !2163, !2166, !2169, !2172}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !2031, file: !31, line: 2344, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !31, line: 2144, size: 64, elements: !2035, templateParams: !2113, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!2035 = !{!2036, !2059, !2094, !2098, !2103, !2106, !2109}
!2036 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2034, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !7, file: !31, line: 2076, size: 64, elements: !2038, templateParams: !2057, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!2038 = !{!2039, !2040, !2044, !2049}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !2037, file: !31, line: 2105, baseType: !18, size: 64, flags: DIFlagPrivate)
!2040 = !DISubprogram(name: "__compressed_pair_elem", scope: !2037, file: !31, line: 2082, type: !2041, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2044 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !2037, file: !31, line: 2101, type: !2045, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!2047, !2043}
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2037, file: !31, line: 2078, baseType: !2048)
!2048 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!2049 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !2037, file: !31, line: 2102, type: !2050, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!2052, !2055}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2037, file: !31, line: 2079, baseType: !2053)
!2053 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2057 = !{!2058, !453, !454}
!2058 = !DITemplateTypeParameter(name: "_Tp", type: !18)
!2059 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2034, baseType: !2060)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !7, file: !31, line: 2109, size: 8, elements: !2061, templateParams: !2092, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!2061 = !{!2062, !2076, !2080, !2085}
!2062 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2060, baseType: !2063, flags: DIFlagPrivate)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !31, line: 2253, size: 8, elements: !2064, templateParams: !2074, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!2064 = !{!2065, !2069}
!2065 = !DISubprogram(name: "default_delete", scope: !2063, file: !31, line: 2257, type: !2066, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2068}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2069 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !2063, file: !31, line: 2267, type: !2070, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !2072, !18}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2063)
!2074 = !{!2075}
!2075 = !DITemplateTypeParameter(name: "_Tp", type: !19)
!2076 = !DISubprogram(name: "__compressed_pair_elem", scope: !2060, file: !31, line: 2116, type: !2077, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2080 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !2060, file: !31, line: 2136, type: !2081, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2083, !2079}
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2060, file: !31, line: 2111, baseType: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2063, size: 64)
!2085 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !2060, file: !31, line: 2137, type: !2086, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2088, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2060, file: !31, line: 2112, baseType: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2073, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2092 = !{!2093, !490, !491}
!2093 = !DITemplateTypeParameter(name: "_Tp", type: !2063)
!2094 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !2034, file: !31, line: 2212, type: !2095, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2047, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2098 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !2034, file: !31, line: 2217, type: !2099, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2052, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2103 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !2034, file: !31, line: 2222, type: !2104, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!2083, !2097}
!2106 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !2034, file: !31, line: 2227, type: !2107, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!2088, !2101}
!2109 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !2034, file: !31, line: 2232, type: !2110, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2097, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2034, size: 64)
!2113 = !{!2114, !2115}
!2114 = !DITemplateTypeParameter(name: "_T1", type: !18)
!2115 = !DITemplateTypeParameter(name: "_T2", type: !2063)
!2116 = !DISubprogram(name: "unique_ptr", scope: !2031, file: !31, line: 2427, type: !2117, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2120 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2031, size: 64)
!2121 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !2031, file: !31, line: 2450, type: !2122, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2124, !2119, !2120}
!2124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2031, size: 64)
!2125 = !DISubprogram(name: "~unique_ptr", scope: !2031, file: !31, line: 2539, type: !2126, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !2119}
!2128 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !2031, file: !31, line: 2542, type: !2129, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2124, !2119, !529}
!2131 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !2031, file: !31, line: 2549, type: !2132, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2134, !2139}
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2135, file: !536, line: 1084, baseType: !2136)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !536, line: 1083, size: 8, elements: !161, templateParams: !2074, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2137, file: !536, line: 1081, baseType: !702)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !7, file: !536, line: 1081, size: 8, elements: !161, templateParams: !2138, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!2138 = !{!2075, !541}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2141 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !2031, file: !31, line: 2553, type: !2142, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!2144, !2139}
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2031, file: !31, line: 2338, baseType: !2145)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2146, file: !31, line: 1031, baseType: !2149)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !31, line: 1029, size: 8, elements: !161, templateParams: !2147, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!2147 = !{!2075, !2148}
!2148 = !DITemplateTypeParameter(name: "_Dp", type: !2063)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2150, file: !31, line: 1023, baseType: !18)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !554, file: !31, line: 1021, size: 8, elements: !161, templateParams: !2151, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!2151 = !{!2075, !2148, !556}
!2152 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !2031, file: !31, line: 2557, type: !2142, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2153 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !2031, file: !31, line: 2561, type: !2154, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2156, !2119}
!2156 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !2031, file: !31, line: 2337, baseType: !2063)
!2158 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !2031, file: !31, line: 2565, type: !2159, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!2161, !2139}
!2161 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2157)
!2163 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !2031, file: !31, line: 2569, type: !2164, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!141, !2139}
!2166 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !2031, file: !31, line: 2574, type: !2167, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2144, !2119}
!2169 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !2031, file: !31, line: 2581, type: !2170, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !2119, !2144}
!2172 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !2031, file: !31, line: 2589, type: !2173, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2119, !2124}
!2175 = !DILocalVariable(name: "__ec", scope: !2028, file: !42, line: 365, type: !252)
!2176 = !DILocation(line: 0, scope: !2023)
!2177 = !DILocation(line: 356, column: 22, scope: !2023)
!2178 = !DILocation(line: 359, column: 18, scope: !2028)
!2179 = !DILocation(line: 359, column: 22, scope: !2028)
!2180 = !DILocation(line: 359, column: 12, scope: !2028)
!2181 = !DILocation(line: 362, column: 13, scope: !2028)
!2182 = !DILocation(line: 363, column: 21, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2028, file: !42, discriminator: 1)
!2184 = !DILocalVariable(name: "__u", arg: 2, scope: !2185, file: !20, line: 728, type: !518)
!2185 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !19, file: !20, line: 728, type: !2186, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2189, declaration: !2192, variables: !2193)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !692, !518, !2188}
!2188 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !616, size: 64)
!2189 = !{!2190, !2191, !556}
!2190 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !685)
!2191 = !DITemplateValueParameter(name: "_PackIsTuple", type: !141, value: i8 0)
!2192 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !19, file: !20, line: 728, type: !2186, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !2189)
!2193 = !{!2194, !2184, !2195}
!2194 = !DILocalVariable(name: "this", arg: 1, scope: !2185, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2195 = !DILocalVariable(name: "__u", arg: 3, scope: !2185, file: !20, line: 728, type: !2188)
!2196 = !DILocation(line: 728, column: 24, scope: !2185, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 362, column: 17, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2028, file: !42, discriminator: 2)
!2199 = !DILocalVariable(name: "__u", arg: 2, scope: !2200, file: !20, line: 728, type: !518)
!2200 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !19, file: !20, line: 728, type: !2186, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2189, declaration: !2192, variables: !2201)
!2201 = !{!2202, !2199, !2203}
!2202 = !DILocalVariable(name: "this", arg: 1, scope: !2200, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2203 = !DILocalVariable(name: "__u", arg: 3, scope: !2200, file: !20, line: 728, type: !2188)
!2204 = !DILocation(line: 728, column: 24, scope: !2200, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 742, column: 50, scope: !2185, inlinedAt: !2197)
!2206 = !DILocalVariable(name: "__u", arg: 6, scope: !2207, file: !20, line: 382, type: !518)
!2207 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !24, file: !20, line: 380, type: !2208, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2217, declaration: !2222, variables: !2223)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !655, !677, !2210, !2211, !2214, !518, !2188}
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !678, line: 253, size: 8, elements: !161, templateParams: !738, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !7, file: !678, line: 90, size: 8, elements: !161, templateParams: !2212, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!2212 = !{!2213}
!2213 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !161)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !7, file: !678, line: 253, size: 8, elements: !161, templateParams: !2215, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!2215 = !{!2216}
!2216 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !161)
!2217 = !{!2218, !2219, !2220, !2221, !2190}
!2218 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !681)
!2219 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !685)
!2220 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !161)
!2221 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !161)
!2222 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !24, file: !20, line: 380, type: !2208, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2217)
!2223 = !{!2224, !2226, !2227, !2228, !2229, !2206, !2230}
!2224 = !DILocalVariable(name: "this", arg: 1, scope: !2207, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2226 = !DILocalVariable(arg: 2, scope: !2207, file: !20, line: 380, type: !677)
!2227 = !DILocalVariable(arg: 3, scope: !2207, file: !20, line: 380, type: !2210)
!2228 = !DILocalVariable(arg: 4, scope: !2207, file: !20, line: 381, type: !2211)
!2229 = !DILocalVariable(arg: 5, scope: !2207, file: !20, line: 381, type: !2214)
!2230 = !DILocalVariable(name: "__u", arg: 7, scope: !2207, file: !20, line: 382, type: !2188)
!2231 = !DILocation(line: 382, column: 31, scope: !2207, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 738, column: 15, scope: !2200, inlinedAt: !2205)
!2233 = !DILocalVariable(name: "__u", arg: 6, scope: !2234, file: !20, line: 382, type: !518)
!2234 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !24, file: !20, line: 380, type: !2208, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2217, declaration: !2222, variables: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2233, !2241}
!2236 = !DILocalVariable(name: "this", arg: 1, scope: !2234, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2237 = !DILocalVariable(arg: 2, scope: !2234, file: !20, line: 380, type: !677)
!2238 = !DILocalVariable(arg: 3, scope: !2234, file: !20, line: 380, type: !2210)
!2239 = !DILocalVariable(arg: 4, scope: !2234, file: !20, line: 381, type: !2211)
!2240 = !DILocalVariable(arg: 5, scope: !2234, file: !20, line: 381, type: !2214)
!2241 = !DILocalVariable(name: "__u", arg: 7, scope: !2234, file: !20, line: 382, type: !2188)
!2242 = !DILocation(line: 382, column: 31, scope: !2234, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 387, column: 13, scope: !2207, inlinedAt: !2232)
!2244 = !DILocalVariable(name: "__t", arg: 2, scope: !2245, file: !20, line: 225, type: !518)
!2245 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !27, file: !20, line: 225, type: !2246, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2248, declaration: !2250, variables: !2251)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !584, !518}
!2248 = !{!2249, !1993}
!2249 = !DITemplateTypeParameter(name: "_Tp", type: !30)
!2250 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !27, file: !20, line: 225, type: !2246, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2248)
!2251 = !{!2252, !2244}
!2252 = !DILocalVariable(name: "this", arg: 1, scope: !2245, type: !2253, flags: DIFlagArtificial | DIFlagObjectPointer)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2254 = !DILocation(line: 225, column: 37, scope: !2245, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 385, column: 13, scope: !2256, inlinedAt: !2243)
!2256 = !DILexicalBlockFile(scope: !2234, file: !20, discriminator: 1)
!2257 = !DILocalVariable(name: "__u", arg: 2, scope: !2258, file: !31, line: 2427, type: !518)
!2258 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !30, file: !31, line: 2427, type: !515, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !514, variables: !2259)
!2259 = !{!2260, !2257}
!2260 = !DILocalVariable(name: "this", arg: 1, scope: !2258, type: !2261, flags: DIFlagArtificial | DIFlagObjectPointer)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2262 = !DILocation(line: 2427, column: 27, scope: !2258, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 226, column: 15, scope: !2264, inlinedAt: !2255)
!2264 = !DILexicalBlockFile(scope: !2245, file: !20, discriminator: 1)
!2265 = !DILocalVariable(name: "__u", arg: 2, scope: !2266, file: !31, line: 2427, type: !518)
!2266 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !30, file: !31, line: 2427, type: !515, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !514, variables: !2267)
!2267 = !{!2268, !2265}
!2268 = !DILocalVariable(name: "this", arg: 1, scope: !2266, type: !2261, flags: DIFlagArtificial | DIFlagObjectPointer)
!2269 = !DILocation(line: 2427, column: 27, scope: !2266, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 2428, column: 80, scope: !2258, inlinedAt: !2263)
!2271 = !DILocalVariable(name: "__t1", arg: 2, scope: !2272, file: !31, line: 2183, type: !2275)
!2272 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !34, file: !31, line: 2183, type: !2273, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2277, declaration: !2280, variables: !2281)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !495, !2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !40, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !459, size: 64)
!2277 = !{!2278, !2279}
!2278 = !DITemplateTypeParameter(name: "_U1", type: !40)
!2279 = !DITemplateTypeParameter(name: "_U2", type: !459)
!2280 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !34, file: !31, line: 2183, type: !2273, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !2277)
!2281 = !{!2282, !2271, !2284}
!2282 = !DILocalVariable(name: "this", arg: 1, scope: !2272, type: !2283, flags: DIFlagArtificial | DIFlagObjectPointer)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2284 = !DILocalVariable(name: "__t2", arg: 3, scope: !2272, file: !31, line: 2183, type: !2276)
!2285 = !DILocation(line: 2183, column: 27, scope: !2272, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 2428, column: 9, scope: !2266, inlinedAt: !2270)
!2287 = !DILocalVariable(name: "__t1", arg: 2, scope: !2288, file: !31, line: 2183, type: !2275)
!2288 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !34, file: !31, line: 2183, type: !2273, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2277, declaration: !2280, variables: !2289)
!2289 = !{!2290, !2287, !2291}
!2290 = !DILocalVariable(name: "this", arg: 1, scope: !2288, type: !2283, flags: DIFlagArtificial | DIFlagObjectPointer)
!2291 = !DILocalVariable(name: "__t2", arg: 3, scope: !2288, file: !31, line: 2183, type: !2276)
!2292 = !DILocation(line: 2183, column: 27, scope: !2288, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 2184, column: 74, scope: !2272, inlinedAt: !2286)
!2294 = !DILocalVariable(name: "__u", arg: 2, scope: !2295, file: !31, line: 2088, type: !2275)
!2295 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !37, file: !31, line: 2088, type: !2296, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2298, declaration: !2300, variables: !2301)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !437, !2275}
!2298 = !{!2299, !1993}
!2299 = !DITemplateTypeParameter(name: "_Up", type: !40)
!2300 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !37, file: !31, line: 2088, type: !2296, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2298)
!2301 = !{!2302, !2294}
!2302 = !DILocalVariable(name: "this", arg: 1, scope: !2295, type: !2303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2304 = !DILocation(line: 2088, column: 32, scope: !2295, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 2184, column: 9, scope: !2306, inlinedAt: !2293)
!2306 = !DILexicalBlockFile(scope: !2288, file: !31, discriminator: 1)
!2307 = !DILocation(line: 2089, column: 9, scope: !2295, inlinedAt: !2305)
!2308 = !{!2309, !2310, i64 0}
!2309 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !2310, i64 0}
!2310 = !{!"any pointer", !1839, i64 0}
!2311 = !DILocation(line: 387, column: 13, scope: !2234, inlinedAt: !2243)
!2312 = !DILocalVariable(name: "__t", arg: 2, scope: !2313, file: !20, line: 225, type: !2188)
!2313 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !613, file: !20, line: 225, type: !2314, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2316, declaration: !2318, variables: !2319)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !623, !2188}
!2316 = !{!2317, !1993}
!2317 = !DITemplateTypeParameter(name: "_Tp", type: !616)
!2318 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !613, file: !20, line: 225, type: !2314, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2316)
!2319 = !{!2320, !2312}
!2320 = !DILocalVariable(name: "this", arg: 1, scope: !2313, type: !2321, flags: DIFlagArtificial | DIFlagObjectPointer)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2322 = !DILocation(line: 225, column: 37, scope: !2313, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 385, column: 13, scope: !2324, inlinedAt: !2243)
!2324 = !DILexicalBlockFile(scope: !2234, file: !20, discriminator: 3)
!2325 = !DILocation(line: 226, column: 15, scope: !2313, inlinedAt: !2323)
!2326 = !{!2327, !2310, i64 0}
!2327 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !2310, i64 0}
!2328 = !DILocation(line: 361, column: 28, scope: !2028)
!2329 = !DILocation(line: 365, column: 40, scope: !2028)
!2330 = !DILocalVariable(name: "__t", arg: 1, scope: !2331, file: !70, line: 321, type: !2334)
!2331 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !7, file: !70, line: 321, type: !2332, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2338)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!252, !2334, !2335, !914}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!914, !914}
!2338 = !{!2330, !2339, !2340}
!2339 = !DILocalVariable(name: "__func", arg: 2, scope: !2331, file: !70, line: 321, type: !2335)
!2340 = !DILocalVariable(name: "__arg", arg: 3, scope: !2331, file: !70, line: 322, type: !914)
!2341 = !DILocation(line: 321, column: 47, scope: !2331, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 365, column: 16, scope: !2028)
!2343 = !DILocation(line: 321, column: 60, scope: !2331, inlinedAt: !2342)
!2344 = !DILocation(line: 322, column: 34, scope: !2331, inlinedAt: !2342)
!2345 = !DILocation(line: 324, column: 10, scope: !2331, inlinedAt: !2342)
!2346 = !DILocation(line: 365, column: 9, scope: !2028)
!2347 = !DILocation(line: 366, column: 14, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2028, file: !42, line: 366, column: 9)
!2349 = !DILocation(line: 366, column: 9, scope: !2028)
!2350 = !DILocalVariable(name: "this", arg: 1, scope: !2351, type: !2353, flags: DIFlagArtificial | DIFlagObjectPointer)
!2351 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !2031, file: !31, line: 2539, type: !2126, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2125, variables: !2352)
!2352 = !{!2350}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2354 = !DILocation(line: 0, scope: !2351, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 370, column: 1, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2023, file: !42, discriminator: 5)
!2357 = !DILocalVariable(name: "this", arg: 1, scope: !2358, type: !2353, flags: DIFlagArtificial | DIFlagObjectPointer)
!2358 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !2031, file: !31, line: 2539, type: !2126, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2125, variables: !2359)
!2359 = !{!2357}
!2360 = !DILocation(line: 0, scope: !2358, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 2539, column: 17, scope: !2351, inlinedAt: !2355)
!2362 = !DILocalVariable(name: "this", arg: 1, scope: !2363, type: !2353, flags: DIFlagArtificial | DIFlagObjectPointer)
!2363 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !2031, file: !31, line: 2581, type: !2170, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2169, variables: !2364)
!2364 = !{!2362, !2365, !2366}
!2365 = !DILocalVariable(name: "__p", arg: 2, scope: !2363, file: !31, line: 2581, type: !2144)
!2366 = !DILocalVariable(name: "__tmp", scope: !2363, file: !31, line: 2582, type: !2144)
!2367 = !DILocation(line: 0, scope: !2363, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 2539, column: 19, scope: !2369, inlinedAt: !2361)
!2369 = distinct !DILexicalBlock(scope: !2358, file: !31, line: 2539, column: 17)
!2370 = !DILocation(line: 2581, column: 22, scope: !2363, inlinedAt: !2368)
!2371 = !DILocation(line: 2582, column: 13, scope: !2363, inlinedAt: !2368)
!2372 = !DILocalVariable(name: "this", arg: 1, scope: !2373, type: !2261, flags: DIFlagArtificial | DIFlagObjectPointer)
!2373 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !30, file: !31, line: 2539, type: !524, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !523, variables: !2374)
!2374 = !{!2372}
!2375 = !DILocation(line: 0, scope: !2373, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 370, column: 1, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2023, file: !42, discriminator: 8)
!2378 = !DILocalVariable(name: "this", arg: 1, scope: !2379, type: !2261, flags: DIFlagArtificial | DIFlagObjectPointer)
!2379 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !30, file: !31, line: 2539, type: !524, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !523, variables: !2380)
!2380 = !{!2378}
!2381 = !DILocation(line: 0, scope: !2379, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 2539, column: 17, scope: !2373, inlinedAt: !2376)
!2383 = !DILocalVariable(name: "this", arg: 1, scope: !2384, type: !2261, flags: DIFlagArtificial | DIFlagObjectPointer)
!2384 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !30, file: !31, line: 2581, type: !575, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !574, variables: !2385)
!2385 = !{!2383, !2386, !2387}
!2386 = !DILocalVariable(name: "__p", arg: 2, scope: !2384, file: !31, line: 2581, type: !547)
!2387 = !DILocalVariable(name: "__tmp", scope: !2384, file: !31, line: 2582, type: !547)
!2388 = !DILocation(line: 0, scope: !2384, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 2539, column: 19, scope: !2390, inlinedAt: !2382)
!2390 = distinct !DILexicalBlock(scope: !2379, file: !31, line: 2539, column: 17)
!2391 = !DILocation(line: 2581, column: 22, scope: !2384, inlinedAt: !2389)
!2392 = !DILocation(line: 2582, column: 13, scope: !2384, inlinedAt: !2389)
!2393 = !DILocation(line: 370, column: 1, scope: !2356)
!2394 = !DILocation(line: 370, column: 1, scope: !2028)
!2395 = !DILocation(line: 359, column: 18, scope: !2198)
!2396 = !DILocation(line: 370, column: 1, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2028, file: !42, discriminator: 3)
!2398 = !DILocation(line: 369, column: 9, scope: !2348)
!2399 = !DILocation(line: 369, column: 9, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2348, file: !42, discriminator: 1)
!2401 = !DILocation(line: 370, column: 1, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2348, file: !42, discriminator: 4)
!2403 = !DILocation(line: 370, column: 1, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2023, file: !42, discriminator: 4)
!2405 = !DILocation(line: 0, scope: !2351, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 370, column: 1, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2023, file: !42, discriminator: 6)
!2408 = !DILocation(line: 0, scope: !2358, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 2539, column: 17, scope: !2351, inlinedAt: !2406)
!2410 = !DILocation(line: 0, scope: !2363, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 2539, column: 19, scope: !2369, inlinedAt: !2409)
!2412 = !DILocation(line: 2581, column: 22, scope: !2363, inlinedAt: !2411)
!2413 = !DILocation(line: 2581, column: 22, scope: !2384, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 2539, column: 19, scope: !2390, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 2539, column: 17, scope: !2373, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 170, column: 7, scope: !2417, inlinedAt: !2422)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !20, line: 170, column: 7)
!2418 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !27, file: !20, line: 170, type: !588, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2419, variables: !2420)
!2419 = !DISubprogram(name: "~__tuple_leaf", scope: !27, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!2420 = !{!2421}
!2421 = !DILocalVariable(name: "this", arg: 1, scope: !2418, type: !2253, flags: DIFlagArtificial | DIFlagObjectPointer)
!2422 = distinct !DILocation(line: 369, column: 37, scope: !2423, inlinedAt: !2428)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !20, line: 369, column: 37)
!2424 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !24, file: !20, line: 369, type: !653, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2425, variables: !2426)
!2425 = !DISubprogram(name: "~__tuple_impl", scope: !24, type: !653, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!2426 = !{!2427}
!2427 = !DILocalVariable(name: "this", arg: 1, scope: !2424, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2428 = distinct !DILocation(line: 369, column: 37, scope: !2429, inlinedAt: !2432)
!2429 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !24, file: !20, line: 369, type: !653, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2425, variables: !2430)
!2430 = !{!2431}
!2431 = !DILocalVariable(name: "this", arg: 1, scope: !2429, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2432 = distinct !DILocation(line: 474, column: 28, scope: !2433, inlinedAt: !2440)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !20, line: 474, column: 28)
!2434 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !19, file: !20, line: 474, type: !2435, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2437, variables: !2438)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !692}
!2437 = !DISubprogram(name: "~tuple", scope: !19, type: !2435, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!2438 = !{!2439}
!2439 = !DILocalVariable(name: "this", arg: 1, scope: !2434, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2440 = distinct !DILocation(line: 474, column: 28, scope: !2441, inlinedAt: !2444)
!2441 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !19, file: !20, line: 474, type: !2435, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2437, variables: !2442)
!2442 = !{!2443}
!2443 = !DILocalVariable(name: "this", arg: 1, scope: !2441, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2444 = distinct !DILocation(line: 2272, column: 5, scope: !2445, inlinedAt: !2451)
!2445 = !DILexicalBlockFile(scope: !2446, file: !31, discriminator: 1)
!2446 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !2063, file: !31, line: 2267, type: !2070, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2069, variables: !2447)
!2447 = !{!2448, !2450}
!2448 = !DILocalVariable(name: "this", arg: 1, scope: !2446, type: !2449, flags: DIFlagArtificial | DIFlagObjectPointer)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2450 = !DILocalVariable(name: "__ptr", arg: 2, scope: !2446, file: !31, line: 2267, type: !18)
!2451 = distinct !DILocation(line: 2585, column: 7, scope: !2452, inlinedAt: !2411)
!2452 = !DILexicalBlockFile(scope: !2453, file: !31, discriminator: 1)
!2453 = distinct !DILexicalBlock(scope: !2363, file: !31, line: 2584, column: 9)
!2454 = !DILocation(line: 2101, column: 40, scope: !2455, inlinedAt: !2458)
!2455 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !37, file: !31, line: 2101, type: !439, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !438, variables: !2456)
!2456 = !{!2457}
!2457 = !DILocalVariable(name: "this", arg: 1, scope: !2455, type: !2303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2458 = distinct !DILocation(line: 2213, column: 40, scope: !2459, inlinedAt: !2462)
!2459 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !34, file: !31, line: 2212, type: !493, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !492, variables: !2460)
!2460 = !{!2461}
!2461 = !DILocalVariable(name: "this", arg: 1, scope: !2459, type: !2283, flags: DIFlagArtificial | DIFlagObjectPointer)
!2462 = distinct !DILocation(line: 2582, column: 28, scope: !2384, inlinedAt: !2414)
!2463 = !DILocation(line: 2582, column: 28, scope: !2384, inlinedAt: !2414)
!2464 = !{!2310, !2310, i64 0}
!2465 = !DILocation(line: 2582, column: 13, scope: !2384, inlinedAt: !2414)
!2466 = !DILocation(line: 2583, column: 20, scope: !2384, inlinedAt: !2414)
!2467 = !DILocation(line: 2584, column: 9, scope: !2468, inlinedAt: !2414)
!2468 = distinct !DILexicalBlock(scope: !2384, file: !31, line: 2584, column: 9)
!2469 = !DILocation(line: 2584, column: 9, scope: !2384, inlinedAt: !2414)
!2470 = !DILocalVariable(name: "__ptr", arg: 2, scope: !2471, file: !31, line: 2267, type: !40)
!2471 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !459, file: !31, line: 2267, type: !466, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !465, variables: !2472)
!2472 = !{!2473, !2470}
!2473 = !DILocalVariable(name: "this", arg: 1, scope: !2471, type: !2474, flags: DIFlagArtificial | DIFlagObjectPointer)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!2475 = !DILocation(line: 2267, column: 50, scope: !2471, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 2585, column: 7, scope: !2477, inlinedAt: !2414)
!2477 = !DILexicalBlockFile(scope: !2468, file: !31, discriminator: 1)
!2478 = !DILocation(line: 2272, column: 5, scope: !2479, inlinedAt: !2476)
!2479 = !DILexicalBlockFile(scope: !2471, file: !31, discriminator: 1)
!2480 = !DILocation(line: 2272, column: 5, scope: !2481, inlinedAt: !2476)
!2481 = !DILexicalBlockFile(scope: !2471, file: !31, discriminator: 2)
!2482 = !DILocation(line: 2585, column: 7, scope: !2468, inlinedAt: !2414)
!2483 = !DILocation(line: 2272, column: 5, scope: !2484, inlinedAt: !2451)
!2484 = !DILexicalBlockFile(scope: !2446, file: !31, discriminator: 2)
!2485 = !DILocation(line: 0, scope: !2373, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 370, column: 1, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2023, file: !42, discriminator: 7)
!2488 = !DILocation(line: 0, scope: !2379, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 2539, column: 17, scope: !2373, inlinedAt: !2486)
!2490 = !DILocation(line: 0, scope: !2384, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 2539, column: 19, scope: !2390, inlinedAt: !2489)
!2492 = !DILocation(line: 2581, column: 22, scope: !2384, inlinedAt: !2491)
!2493 = !DILocation(line: 2582, column: 13, scope: !2384, inlinedAt: !2491)
!2494 = !DILocation(line: 2584, column: 9, scope: !2384, inlinedAt: !2491)
!2495 = !DILocation(line: 370, column: 1, scope: !2183)
!2496 = !DILocation(line: 2267, column: 50, scope: !2471, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 2585, column: 7, scope: !2477, inlinedAt: !2491)
!2498 = !DILocation(line: 2272, column: 5, scope: !2479, inlinedAt: !2497)
!2499 = !DILocation(line: 2272, column: 5, scope: !2481, inlinedAt: !2497)
!2500 = !DILocation(line: 2585, column: 7, scope: !2468, inlinedAt: !2491)
!2501 = !DILocation(line: 359, column: 18, scope: !2397)
!2502 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !7, file: !42, line: 343, type: !2336, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2503, variables: !2505)
!2503 = !{!2504}
!2504 = !DITemplateTypeParameter(name: "_Fp", type: !19)
!2505 = !{!2506, !2507}
!2506 = !DILocalVariable(name: "__vp", arg: 1, scope: !2502, file: !42, line: 343, type: !914)
!2507 = !DILocalVariable(name: "__p", scope: !2502, file: !42, line: 346, type: !2031)
!2508 = !DILocation(line: 343, column: 28, scope: !2502)
!2509 = !DILocation(line: 346, column: 26, scope: !2502)
!2510 = !DILocation(line: 347, column: 5, scope: !2502)
!2511 = !DILocation(line: 2101, column: 40, scope: !2455, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 2213, column: 40, scope: !2459, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 2575, column: 26, scope: !2514, inlinedAt: !2518)
!2514 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !30, file: !31, line: 2574, type: !572, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !571, variables: !2515)
!2515 = !{!2516, !2517}
!2516 = !DILocalVariable(name: "this", arg: 1, scope: !2514, type: !2261, flags: DIFlagArtificial | DIFlagObjectPointer)
!2517 = !DILocalVariable(name: "__t", scope: !2514, file: !31, line: 2575, type: !547)
!2518 = distinct !DILocation(line: 347, column: 59, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2502, file: !42, discriminator: 3)
!2520 = !DILocation(line: 2575, column: 26, scope: !2514, inlinedAt: !2518)
!2521 = !DILocation(line: 2576, column: 20, scope: !2514, inlinedAt: !2518)
!2522 = !DILocalVariable(name: "this", arg: 1, scope: !2523, type: !2558, flags: DIFlagArtificial | DIFlagObjectPointer)
!2523 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !2524, file: !42, line: 194, type: !2554, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2553, variables: !2556)
!2524 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !7, file: !42, line: 138, size: 64, elements: !2525, templateParams: !470, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!2525 = !{!2526, !2531, !2535, !2540, !2544, !2545, !2546, !2551, !2552, !2553}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !2524, file: !42, line: 140, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !7, file: !70, line: 75, baseType: !2528)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !2529, line: 30, baseType: !2530)
!2529 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !74, line: 112, baseType: !610)
!2531 = !DISubprogram(name: "__thread_specific_ptr", scope: !2524, file: !42, line: 145, type: !2532, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2535 = !DISubprogram(name: "__thread_specific_ptr", scope: !2524, file: !42, line: 148, type: !2536, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2534, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2540 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !2524, file: !42, line: 149, type: !2541, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!2543, !2534, !2538}
!2543 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2524, size: 64)
!2544 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !2524, file: !42, line: 151, type: !1140, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!2545 = !DISubprogram(name: "~__thread_specific_ptr", scope: !2524, file: !42, line: 156, type: !2532, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2546 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !2524, file: !42, line: 159, type: !2547, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2524, file: !42, line: 154, baseType: !40)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2551 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !2524, file: !42, line: 161, type: !2547, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2552 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !2524, file: !42, line: 163, type: !2547, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2553 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !2524, file: !42, line: 164, type: !2554, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !2534, !2549}
!2556 = !{!2522, !2557}
!2557 = !DILocalVariable(name: "__p", arg: 2, scope: !2523, file: !42, line: 164, type: !2549)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2559 = !DILocation(line: 0, scope: !2523, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 347, column: 27, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2502, file: !42, discriminator: 2)
!2562 = !DILocation(line: 198, column: 22, scope: !2523, inlinedAt: !2560)
!2563 = !{!2564, !2565, i64 0}
!2564 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !2565, i64 0}
!2565 = !{!"long", !1839, i64 0}
!2566 = !DILocalVariable(name: "__key", arg: 1, scope: !2567, file: !70, line: 385, type: !2527)
!2567 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !7, file: !70, line: 385, type: !2568, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!252, !2527, !914}
!2570 = !{!2566, !2571}
!2571 = !DILocalVariable(name: "__p", arg: 2, scope: !2567, file: !70, line: 385, type: !914)
!2572 = !DILocation(line: 385, column: 39, scope: !2567, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 198, column: 5, scope: !2523, inlinedAt: !2560)
!2574 = !DILocation(line: 385, column: 52, scope: !2567, inlinedAt: !2573)
!2575 = !DILocation(line: 387, column: 12, scope: !2567, inlinedAt: !2573)
!2576 = !DILocation(line: 270, column: 102, scope: !2577, inlinedAt: !2580)
!2577 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !613, file: !20, line: 270, type: !640, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !639, variables: !2578)
!2578 = !{!2579}
!2579 = !DILocalVariable(name: "this", arg: 1, scope: !2577, type: !2321, flags: DIFlagArtificial | DIFlagObjectPointer)
!2580 = distinct !DILocation(line: 951, column: 61, scope: !2581, inlinedAt: !2595)
!2581 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !20, line: 948, type: !2582, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2592, variables: !2593)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!2584, !702}
!2584 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2586, file: !678, line: 463, baseType: !2588)
!2586 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !678, line: 460, size: 8, elements: !161, templateParams: !2587, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!2587 = !{!650, !2075}
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2589, file: !678, line: 289, baseType: !616)
!2589 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !678, line: 285, size: 8, elements: !161, templateParams: !2590, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!2590 = !{!650, !2591}
!2591 = !DITemplateTypeParameter(name: "_Tp", type: !2210)
!2592 = !{!650, !684}
!2593 = !{!2594}
!2594 = !DILocalVariable(name: "__t", arg: 1, scope: !2581, file: !20, line: 948, type: !702)
!2595 = distinct !DILocation(line: 339, column: 26, scope: !2596, inlinedAt: !2606)
!2596 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !7, file: !42, line: 337, type: !2597, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2599, variables: !2603)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !702, !2211}
!2599 = !{!2600, !2601, !1992, !2602}
!2600 = !DITemplateTypeParameter(name: "_TSp", type: !30)
!2601 = !DITemplateTypeParameter(name: "_Fp", type: !616)
!2602 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !161)
!2603 = !{!2604, !2605}
!2604 = !DILocalVariable(name: "__t", arg: 1, scope: !2596, file: !42, line: 337, type: !702)
!2605 = !DILocalVariable(arg: 2, scope: !2596, file: !42, line: 337, type: !2211)
!2606 = distinct !DILocation(line: 349, column: 5, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2502, file: !42, discriminator: 1)
!2608 = !DILocalVariable(name: "__f", arg: 1, scope: !2609, file: !536, line: 4322, type: !2188)
!2609 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !7, file: !536, line: 4322, type: !2610, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2612, variables: !2613)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2188}
!2612 = !{!2601, !1992}
!2613 = !{!2608}
!2614 = !DILocation(line: 4322, column: 16, scope: !2609, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 339, column: 5, scope: !2616, inlinedAt: !2606)
!2616 = !DILexicalBlockFile(scope: !2596, file: !42, discriminator: 2)
!2617 = !DILocation(line: 4323, column: 1, scope: !2609, inlinedAt: !2615)
!2618 = !DILocation(line: 4323, column: 1, scope: !2619, inlinedAt: !2615)
!2619 = !DILexicalBlockFile(scope: !2609, file: !536, discriminator: 1)
!2620 = !DILocation(line: 0, scope: !2351, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 351, column: 1, scope: !2502)
!2622 = !DILocation(line: 0, scope: !2358, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 2539, column: 17, scope: !2351, inlinedAt: !2621)
!2624 = !DILocation(line: 0, scope: !2363, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 2539, column: 19, scope: !2369, inlinedAt: !2623)
!2626 = !DILocation(line: 2581, column: 22, scope: !2363, inlinedAt: !2625)
!2627 = !DILocation(line: 2581, column: 22, scope: !2384, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 2539, column: 19, scope: !2390, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 2539, column: 17, scope: !2373, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 170, column: 7, scope: !2417, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 369, column: 37, scope: !2423, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 369, column: 37, scope: !2429, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 474, column: 28, scope: !2433, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 474, column: 28, scope: !2441, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 2272, column: 5, scope: !2445, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 2585, column: 7, scope: !2452, inlinedAt: !2625)
!2637 = !DILocation(line: 2582, column: 28, scope: !2384, inlinedAt: !2628)
!2638 = !DILocation(line: 2582, column: 13, scope: !2384, inlinedAt: !2628)
!2639 = !DILocation(line: 2583, column: 20, scope: !2384, inlinedAt: !2628)
!2640 = !DILocation(line: 2584, column: 9, scope: !2468, inlinedAt: !2628)
!2641 = !DILocation(line: 2584, column: 9, scope: !2384, inlinedAt: !2628)
!2642 = !DILocation(line: 2267, column: 50, scope: !2471, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 2585, column: 7, scope: !2477, inlinedAt: !2628)
!2644 = !DILocation(line: 2272, column: 5, scope: !2479, inlinedAt: !2643)
!2645 = !DILocation(line: 2272, column: 5, scope: !2481, inlinedAt: !2643)
!2646 = !DILocation(line: 2585, column: 7, scope: !2468, inlinedAt: !2628)
!2647 = !DILocation(line: 2272, column: 5, scope: !2484, inlinedAt: !2636)
!2648 = !DILocation(line: 351, column: 1, scope: !2502)
!2649 = !DILocation(line: 351, column: 1, scope: !2607)
!2650 = !DILocation(line: 0, scope: !2351, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 351, column: 1, scope: !2607)
!2652 = !DILocation(line: 0, scope: !2358, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 2539, column: 17, scope: !2351, inlinedAt: !2651)
!2654 = !DILocation(line: 0, scope: !2363, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 2539, column: 19, scope: !2369, inlinedAt: !2653)
!2656 = !DILocation(line: 2581, column: 22, scope: !2363, inlinedAt: !2655)
!2657 = !DILocation(line: 2584, column: 9, scope: !2363, inlinedAt: !2655)
!2658 = !DILocation(line: 2584, column: 9, scope: !2453, inlinedAt: !2655)
!2659 = !DILocation(line: 2101, column: 40, scope: !2455, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 2213, column: 40, scope: !2459, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 2582, column: 28, scope: !2384, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 2539, column: 19, scope: !2390, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 2539, column: 17, scope: !2373, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 170, column: 7, scope: !2417, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 369, column: 37, scope: !2423, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 369, column: 37, scope: !2429, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 474, column: 28, scope: !2433, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 474, column: 28, scope: !2441, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 2272, column: 5, scope: !2445, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 2585, column: 7, scope: !2452, inlinedAt: !2655)
!2671 = !DILocation(line: 2581, column: 22, scope: !2384, inlinedAt: !2662)
!2672 = !DILocation(line: 2582, column: 28, scope: !2384, inlinedAt: !2662)
!2673 = !DILocation(line: 2582, column: 13, scope: !2384, inlinedAt: !2662)
!2674 = !DILocation(line: 2583, column: 20, scope: !2384, inlinedAt: !2662)
!2675 = !DILocation(line: 2584, column: 9, scope: !2468, inlinedAt: !2662)
!2676 = !DILocation(line: 2584, column: 9, scope: !2384, inlinedAt: !2662)
!2677 = !DILocation(line: 2267, column: 50, scope: !2471, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 2585, column: 7, scope: !2477, inlinedAt: !2662)
!2679 = !DILocation(line: 2272, column: 5, scope: !2479, inlinedAt: !2678)
!2680 = !DILocation(line: 2272, column: 5, scope: !2481, inlinedAt: !2678)
!2681 = !DILocation(line: 2585, column: 7, scope: !2468, inlinedAt: !2662)
!2682 = !DILocation(line: 2272, column: 5, scope: !2484, inlinedAt: !2670)
!2683 = !DILocation(line: 2585, column: 7, scope: !2453, inlinedAt: !2655)
!2684 = !DILocation(line: 351, column: 1, scope: !2561)
