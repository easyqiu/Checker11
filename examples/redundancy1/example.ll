; ModuleID = 'example.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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

@data1 = local_unnamed_addr global i32 0, align 4, !dbg !0
@data2 = local_unnamed_addr global i32 0, align 4, !dbg !740
@data3 = local_unnamed_addr global i32 0, align 4, !dbg !742
@data4 = local_unnamed_addr global i32 0, align 4, !dbg !744
@x = global { i32 } zeroinitializer, align 4, !dbg !746
@y = global { i32 } zeroinitializer, align 4, !dbg !898
@.str = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"f3\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@__func__.user_main = private unnamed_addr constant [10 x i8] c"user_main\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"!(data1==1 && data2 == 0 && data3 == 0 && data4 == 1)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @_Z2f1v() #0 !dbg !1827 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1829, metadata !1835), !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1834, metadata !1835), !dbg !1838
  store atomic i32 10, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) release, align 4, !dbg !1839
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1829, metadata !1835), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1834, metadata !1835), !dbg !1843
  store atomic i32 10, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) release, align 4, !dbg !1844
  tail call void @checker_thread_end(), !dbg !1845
  ret void, !dbg !1846
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z2f2v() #0 !dbg !1847 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1849, metadata !1835), !dbg !1854
  %0 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) acquire, align 4, !dbg !1856
  store i32 %0, i32* @data1, align 4, !dbg !1858, !tbaa !1859
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1849, metadata !1835), !dbg !1863
  %1 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) acquire, align 4, !dbg !1865
  store i32 %1, i32* @data2, align 4, !dbg !1866, !tbaa !1859
  tail call void @checker_thread_end(), !dbg !1867
  ret void, !dbg !1868
}

; Function Attrs: ssp uwtable
define void @_Z2f3v() #0 !dbg !1869 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !1870
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1849, metadata !1835), !dbg !1871
  %0 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) acquire, align 4, !dbg !1873
  store i32 %0, i32* @data3, align 4, !dbg !1874, !tbaa !1859
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1849, metadata !1835), !dbg !1875
  %1 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) acquire, align 4, !dbg !1877
  store i32 %1, i32* @data4, align 4, !dbg !1878, !tbaa !1859
  tail call void @checker_thread_end(), !dbg !1879
  ret void, !dbg !1880
}

; Function Attrs: noreturn ssp uwtable
define i32 @user_main() local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1881 {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  %c = alloca %"class.std::__1::thread", align 8
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !1961
  %0 = bitcast %"class.std::__1::thread"* %a to i8*, !dbg !1962
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #9, !dbg !1962
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1883, metadata !1963), !dbg !1964
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1965, metadata !1835), !dbg !1978
  tail call void @llvm.dbg.value(metadata void ()* @_Z2f1v, i64 0, metadata !1976, metadata !1835), !dbg !1980
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2f1v), !dbg !1981
  %1 = bitcast %"class.std::__1::thread"* %b to i8*, !dbg !1982
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1) #9, !dbg !1982
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !1965, metadata !1835), !dbg !1983
  call void @llvm.dbg.value(metadata void ()* @_Z2f2v, i64 0, metadata !1976, metadata !1835), !dbg !1985
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad, !dbg !1986

invoke.cont:                                      ; preds = %entry
  %2 = bitcast %"class.std::__1::thread"* %c to i8*, !dbg !1987
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #9, !dbg !1987
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %c, i64 0, metadata !1965, metadata !1835), !dbg !1988
  call void @llvm.dbg.value(metadata void ()* @_Z2f3v, i64 0, metadata !1976, metadata !1835), !dbg !1990
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %c, void ()* nonnull @_Z2f3v)
          to label %invoke.cont2 unwind label %lpad1, !dbg !1991

invoke.cont2:                                     ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1992, metadata !1835), !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1829, metadata !1835), !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1834, metadata !1835), !dbg !2001
  store atomic i32 0, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) seq_cst, align 4, !dbg !2002
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1992, metadata !1835), !dbg !2004
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1829, metadata !1835), !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1834, metadata !1835), !dbg !2009
  store atomic i32 0, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) seq_cst, align 4, !dbg !2010
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1883, metadata !1963), !dbg !1964
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !2011, metadata !1835), !dbg !2015
  %__t_.i36 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0, !dbg !2017
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i36, i64 0, metadata !2018, metadata !1835), !dbg !2025
  %3 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i36, align 8, !dbg !2027, !tbaa !2028
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %3)
          to label %invoke.cont7 unwind label %lpad6, !dbg !2030

invoke.cont7:                                     ; preds = %invoke.cont2
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !1959, metadata !1963), !dbg !2031
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !2011, metadata !1835), !dbg !2032
  %__t_.i35 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0, !dbg !2034
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i35, i64 0, metadata !2018, metadata !1835), !dbg !2035
  %4 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i35, align 8, !dbg !2037, !tbaa !2028
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %4)
          to label %invoke.cont12 unwind label %lpad6, !dbg !2038

invoke.cont12:                                    ; preds = %invoke.cont7
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %c, i64 0, metadata !1960, metadata !1963), !dbg !2039
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %c, i64 0, metadata !2011, metadata !1835), !dbg !2040
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %c, i64 0, i32 0, !dbg !2042
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_.i, i64 0, metadata !2018, metadata !1835), !dbg !2043
  %5 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !dbg !2045, !tbaa !2028
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %5)
          to label %invoke.cont17 unwind label %lpad6, !dbg !2046

invoke.cont17:                                    ; preds = %invoke.cont12
  %6 = load i32, i32* @data1, align 4, !dbg !2047, !tbaa !1859
  %cmp = icmp eq i32 %6, 1, !dbg !2047
  %7 = load i32, i32* @data2, align 4, !dbg !2048
  %8 = load i32, i32* @data3, align 4, !dbg !2049
  %9 = or i32 %8, %7, !dbg !2047
  %10 = icmp eq i32 %9, 0, !dbg !2047
  %11 = and i1 %cmp, %10, !dbg !2047
  %12 = load i32, i32* @data4, align 4, !dbg !2051
  %cmp21 = icmp eq i32 %12, 1, !dbg !2051
  %or.cond = and i1 %cmp21, %11, !dbg !2047
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !2047, !prof !2053

cond.true:                                        ; preds = %invoke.cont17
  invoke void @__assert_rtn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.user_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0)) #10
          to label %invoke.cont23 unwind label %lpad6, !dbg !2054

invoke.cont23:                                    ; preds = %cond.true
  unreachable, !dbg !2056

lpad:                                             ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup, !dbg !2058
  %14 = extractvalue { i8*, i32 } %13, 0, !dbg !2058
  %15 = extractvalue { i8*, i32 } %13, 1, !dbg !2058
  br label %ehcleanup30, !dbg !2058

lpad1:                                            ; preds = %invoke.cont
  %16 = landingpad { i8*, i32 }
          cleanup, !dbg !2059
  %17 = extractvalue { i8*, i32 } %16, 0, !dbg !2059
  %18 = extractvalue { i8*, i32 } %16, 1, !dbg !2059
  br label %ehcleanup, !dbg !2059

lpad6:                                            ; preds = %invoke.cont27, %invoke.cont26, %invoke.cont25, %invoke.cont24, %cond.end, %cond.true, %invoke.cont12, %invoke.cont7, %invoke.cont2
  %19 = landingpad { i8*, i32 }
          cleanup, !dbg !2060
  %20 = extractvalue { i8*, i32 } %19, 0, !dbg !2060
  %21 = extractvalue { i8*, i32 } %19, 1, !dbg !2060
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %c, i64 0, metadata !1960, metadata !1963), !dbg !2039
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %c) #9, !dbg !2060
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #9, !dbg !2058
  br label %ehcleanup, !dbg !2060

cond.end:                                         ; preds = %invoke.cont17
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont24 unwind label %lpad6, !dbg !2061

invoke.cont24:                                    ; preds = %cond.end
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont25 unwind label %lpad6, !dbg !2062

invoke.cont25:                                    ; preds = %invoke.cont24
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %c)
          to label %invoke.cont26 unwind label %lpad6, !dbg !2063

invoke.cont26:                                    ; preds = %invoke.cont25
  invoke void @checker_thread_end()
          to label %invoke.cont27 unwind label %lpad6, !dbg !2064

invoke.cont27:                                    ; preds = %invoke.cont26
  invoke void @checker_solver()
          to label %invoke.cont28 unwind label %lpad6, !dbg !2065

invoke.cont28:                                    ; preds = %invoke.cont27
  unreachable, !dbg !2066

ehcleanup:                                        ; preds = %lpad6, %lpad1
  %ehselector.slot.0 = phi i32 [ %21, %lpad6 ], [ %18, %lpad1 ]
  %exn.slot.0 = phi i8* [ %20, %lpad6 ], [ %17, %lpad1 ]
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %b, i64 0, metadata !1959, metadata !1963), !dbg !2031
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #9, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1) #9, !dbg !2058
  br label %ehcleanup30, !dbg !2067

ehcleanup30:                                      ; preds = %ehcleanup, %lpad
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %15, %lpad ]
  %exn.slot.1 = phi i8* [ %exn.slot.0, %ehcleanup ], [ %14, %lpad ]
  call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %a, i64 0, metadata !1883, metadata !1963), !dbg !1964
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #9, !dbg !2068
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #9, !dbg !2058
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0, !dbg !2070
  %lpad.val32 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1, !dbg !2070
  resume { i8*, i32 } %lpad.val32, !dbg !2070
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @__gxx_personality_v0(...)

declare void @checker_thread_create(%struct._opaque_pthread_t*) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #4

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #1

declare void @checker_solver() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2071 {
entry:
  tail call void @llvm.dbg.value(metadata %"class.std::__1::thread"* %this, i64 0, metadata !2073, metadata !1835), !dbg !2224
  tail call void @llvm.dbg.value(metadata void ()* %__f, i64 0, metadata !2074, metadata !1835), !dbg !2225
  %call = tail call i8* @_Znwm(i64 8) #11, !dbg !2226
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*, !dbg !2226
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad, !dbg !2227

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2075, metadata !1963), !dbg !2228
  %call4 = invoke i8* @_Znwm(i64 16) #11
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, !dbg !2229

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2075, metadata !1963), !dbg !2228
  %2 = ptrtoint void ()* %__f to i64, !dbg !2230
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2232, metadata !1835), !dbg !2244
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2243, metadata !1835), !dbg !2244
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2247, metadata !1835), !dbg !2252
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2251, metadata !1835), !dbg !2252
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2254, metadata !1835), !dbg !2279
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2278, metadata !1835), !dbg !2279
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2281, metadata !1835), !dbg !2290
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2289, metadata !1835), !dbg !2290
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2292, metadata !1835), !dbg !2302
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2305, metadata !1835), !dbg !2310
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2313, metadata !1835), !dbg !2317
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !2319, metadata !1835), !dbg !2333
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !2335, metadata !1835), !dbg !2340
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"** undef, i64 0, metadata !2342, metadata !1835), !dbg !2352
  %3 = bitcast i8* %call4 to i64*, !dbg !2355
  store i64 %1, i64* %3, align 8, !dbg !2355, !tbaa !2356
  %4 = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !2358
  tail call void @llvm.dbg.value(metadata void ()** undef, i64 0, metadata !2359, metadata !1835), !dbg !2369
  %5 = bitcast i8* %4 to i64*, !dbg !2372
  store i64 %2, i64* %5, align 8, !dbg !2372, !tbaa !2373
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2078, metadata !1963), !dbg !2375
  %__t_ = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %this, i64 0, i32 0, !dbg !2376
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2078, metadata !1963), !dbg !2375
  tail call void @llvm.dbg.value(metadata %struct._opaque_pthread_t** %__t_, i64 0, metadata !2377, metadata !1835), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* (i8*)* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i64 0, metadata !2386, metadata !1835), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !2387, metadata !1835), !dbg !2391
  %call.i31 = invoke i32 @pthread_create(%struct._opaque_pthread_t** %__t_, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_, i8* nonnull %call4)
          to label %invoke.cont12 unwind label %lpad11, !dbg !2392

invoke.cont12:                                    ; preds = %invoke.cont3
  tail call void @llvm.dbg.value(metadata i32 %call.i31, i64 0, metadata !2223, metadata !1835), !dbg !2393
  %cmp = icmp eq i32 %call.i31, 0, !dbg !2394
  br i1 %cmp, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30, label %if.else, !dbg !2396

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev.exit30: ; preds = %invoke.cont12
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2078, metadata !1963), !dbg !2375
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2078, metadata !1963), !dbg !2375
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2397, metadata !1835) #9, !dbg !2401
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2404, metadata !1835) #9, !dbg !2407
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2409, metadata !1835) #9, !dbg !2414
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2412, metadata !1835) #9, !dbg !2417
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2413, metadata !1835) #9, !dbg !2418
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2075, metadata !1963), !dbg !2228
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2419, metadata !1835) #9, !dbg !2422
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2425, metadata !1835) #9, !dbg !2428
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2430, metadata !1835) #9, !dbg !2435
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2433, metadata !1835) #9, !dbg !2438
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2434, metadata !1835) #9, !dbg !2439
  ret void, !dbg !2440

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !2441
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2441
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !2441
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !2442
  br label %eh.resume, !dbg !2442

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !2443
  br label %delete.notnull.i.i.i.i, !dbg !2443

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #10
          to label %invoke.cont16 unwind label %lpad15, !dbg !2445

invoke.cont16:                                    ; preds = %if.else
  unreachable, !dbg !2446

lpad15:                                           ; preds = %if.else
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !2448
  br label %delete.notnull.i.i.i.i, !dbg !2450

delete.notnull.i.i.i.i:                           ; preds = %lpad11, %lpad15
  %.sink24 = phi { i8*, i32 } [ %10, %lpad15 ], [ %9, %lpad11 ]
  %11 = extractvalue { i8*, i32 } %.sink24, 0
  %12 = extractvalue { i8*, i32 } %.sink24, 1
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2078, metadata !1963), !dbg !2375
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2397, metadata !1835) #9, !dbg !2452
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2404, metadata !1835) #9, !dbg !2455
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2409, metadata !1835) #9, !dbg !2457
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2412, metadata !1835) #9, !dbg !2459
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2433, metadata !1835) #9, !dbg !2460
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast i8* %call4 to %"class.std::__1::__thread_struct"**, !dbg !2501
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !2510, !tbaa !2028
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !2434, metadata !1835) #9, !dbg !2511
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !2512, !tbaa !2028
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null, !dbg !2513
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !2515

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %13, i64 0, metadata !2516, metadata !1835) #9, !dbg !2521
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #9, !dbg !2524
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*, !dbg !2524
  tail call void @_ZdlPv(i8* %14) #12, !dbg !2526
  br label %ehcleanup18.thread, !dbg !2528

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #12, !dbg !2529
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2075, metadata !1963), !dbg !2228
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2419, metadata !1835) #9, !dbg !2531
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2425, metadata !1835) #9, !dbg !2534
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2430, metadata !1835) #9, !dbg !2536
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2433, metadata !1835) #9, !dbg !2538
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !2434, metadata !1835) #9, !dbg !2539
  br label %eh.resume, !dbg !2540

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !2541
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !2541
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !2541
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2075, metadata !1963), !dbg !2228
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2419, metadata !1835) #9, !dbg !2531
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2425, metadata !1835) #9, !dbg !2534
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr"* undef, i64 0, metadata !2430, metadata !1835) #9, !dbg !2536
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2433, metadata !1835) #9, !dbg !2538
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !2434, metadata !1835) #9, !dbg !2539
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %0, i64 0, metadata !2516, metadata !1835) #9, !dbg !2542
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #9, !dbg !2544
  tail call void @_ZdlPv(i8* nonnull %call) #12, !dbg !2545
  br label %eh.resume, !dbg !2546

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0, !dbg !2547
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1, !dbg !2547
  resume { i8*, i32 } %lpad.val20, !dbg !2547
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #6

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #7

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2548 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %__vp, i64 0, metadata !2552, metadata !1835), !dbg !2554
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2553, metadata !1963), !dbg !2555
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad, !dbg !2556

invoke.cont:                                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2553, metadata !1963), !dbg !2555
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !2557
  %0 = bitcast i8* %__vp to i8**, !dbg !2566
  %1 = load i8*, i8** %0, align 8, !dbg !2566, !tbaa !2028
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !2567, !tbaa !2028
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_specific_ptr"* %call, i64 0, metadata !2568, metadata !1835), !dbg !2605
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0, !dbg !2608
  %2 = load i64, i64* %__key_.i, align 8, !dbg !2608, !tbaa !2609
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2612, metadata !1835), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2617, metadata !1835), !dbg !2620
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread, !dbg !2621

invoke.cont5:                                     ; preds = %invoke.cont
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2553, metadata !1963), !dbg !2555
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8, !dbg !2622
  %3 = bitcast i8* %value.i.i.i to void ()**, !dbg !2622
  tail call void @llvm.dbg.value(metadata void ()** %3, i64 0, metadata !2654, metadata !1835), !dbg !2660
  %4 = load void ()*, void ()** %3, align 8, !dbg !2663, !tbaa !2028
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread, !dbg !2664

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2553, metadata !1963), !dbg !2555
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2397, metadata !1835) #9, !dbg !2666
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2404, metadata !1835) #9, !dbg !2668
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2409, metadata !1835) #9, !dbg !2670
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2412, metadata !1835) #9, !dbg !2672
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2433, metadata !1835) #9, !dbg !2673
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !2683, !tbaa !2028
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !2434, metadata !1835) #9, !dbg !2684
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !dbg !2685, !tbaa !2028
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null, !dbg !2686
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16, !dbg !2687

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %5, i64 0, metadata !2516, metadata !1835) #9, !dbg !2688
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #9, !dbg !2690
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*, !dbg !2690
  tail call void @_ZdlPv(i8* %6) #12, !dbg !2691
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, !dbg !2692

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !2693
  ret i8* null, !dbg !2694

lpad.thread:                                      ; preds = %invoke.cont5, %invoke.cont
  %lpad.thr_comm26 = landingpad { i8*, i32 }
          cleanup, !dbg !2695
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2553, metadata !1963), !dbg !2555
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2397, metadata !1835) #9, !dbg !2696
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2404, metadata !1835) #9, !dbg !2698
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2409, metadata !1835) #9, !dbg !2700
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2412, metadata !1835) #9, !dbg !2702
  br label %delete.notnull.i.i.i.i, !dbg !2703

lpad:                                             ; preds = %entry
  %lpad.thr_comm.split-lp27 = landingpad { i8*, i32 }
          cleanup, !dbg !2695
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2553, metadata !1963), !dbg !2555
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2397, metadata !1835) #9, !dbg !2696
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2404, metadata !1835) #9, !dbg !2698
  tail call void @llvm.dbg.value(metadata %"class.std::__1::unique_ptr.2"* undef, i64 0, metadata !2409, metadata !1835) #9, !dbg !2700
  tail call void @llvm.dbg.value(metadata %"class.std::__1::tuple"* null, i64 0, metadata !2412, metadata !1835) #9, !dbg !2702
  %tobool.i.i.i = icmp eq i8* %__vp, null, !dbg !2704
  br i1 %tobool.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, label %lpad.delete.notnull.i.i.i.i_crit_edge, !dbg !2703

lpad.delete.notnull.i.i.i.i_crit_edge:            ; preds = %lpad
  %.pre = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**, !dbg !2705
  br label %delete.notnull.i.i.i.i, !dbg !2703

delete.notnull.i.i.i.i:                           ; preds = %lpad.delete.notnull.i.i.i.i_crit_edge, %lpad.thread
  %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi %"class.std::__1::__thread_struct"** [ %.pre, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %__value_.i.i.i10, %lpad.thread ], !dbg !2705
  %lpad.phi29 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad.delete.notnull.i.i.i.i_crit_edge ], [ %lpad.thr_comm26, %lpad.thread ]
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* null, i64 0, metadata !2433, metadata !1835) #9, !dbg !2717
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !2718, !tbaa !2028
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !2434, metadata !1835) #9, !dbg !2719
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !dbg !2720, !tbaa !2028
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null, !dbg !2721
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !2722

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @llvm.dbg.value(metadata %"class.std::__1::__thread_struct"* %7, i64 0, metadata !2516, metadata !1835) #9, !dbg !2723
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #9, !dbg !2725
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*, !dbg !2725
  tail call void @_ZdlPv(i8* %8) #12, !dbg !2726
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, !dbg !2727

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #12, !dbg !2728
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit, !dbg !2729

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30, !dbg !2730
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #4

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #8

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1823, !1824, !1825}
!llvm.ident = !{!1826}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "data1", scope: !2, file: !3, line: 7, type: !252, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !739, imports: !900)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!20 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!31 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/memory", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!42 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/thread", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!66 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__mutex_base", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!67 = !{!68, !84, !88, !89, !94, !98, !99, !100, !207, !212}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__cv_", scope: !65, file: !66, line: 284, baseType: !69, size: 384)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_condvar_t", scope: !7, file: !70, line: 59, baseType: !71)
!70 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__threading_support", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !72, line: 30, baseType: !73)
!72 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_cond_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_cond_t", file: !74, line: 110, baseType: !75)
!74 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!114 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_mutex_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!216 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/chrono", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!277 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/ratio", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!278 = !{!279, !283, !284, !285, !286, !287}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__na", scope: !276, file: !277, line: 252, baseType: !280, flags: DIFlagStaticMember, extraData: i64 1)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !282, line: 32, baseType: !78)
!282 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!419 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !421, line: 120, baseType: !78)
!421 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!530 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__nullptr", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!531 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!532 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEdeEv", scope: !30, file: !31, line: 2549, type: !533, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !542}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !537, file: !536, line: 1084, baseType: !538)
!536 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/type_traits", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!678 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__tuple", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
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
!739 = !{!0, !740, !742, !744, !746, !898}
!740 = !DIGlobalVariableExpression(var: !741)
!741 = distinct !DIGlobalVariable(name: "data2", scope: !2, file: !3, line: 7, type: !252, isLocal: false, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743)
!743 = distinct !DIGlobalVariable(name: "data3", scope: !2, file: !3, line: 7, type: !252, isLocal: false, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745)
!745 = distinct !DIGlobalVariable(name: "data4", scope: !2, file: !3, line: 7, type: !252, isLocal: false, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747)
!747 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 8, type: !748, isLocal: false, isDefinition: true)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !6, line: 1084, size: 32, elements: !749, templateParams: !897, identifier: "_ZTSNSt3__16atomicIiEE")
!749 = !{!750, !882, !886, !889, !894}
!750 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !748, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !752, templateParams: !881, identifier: "_ZTSNSt3__113__atomic_baseIiLb1EEE")
!752 = !{!753, !832, !836, !839, !844, !847, !848, !849, !850, !851, !852, !853, !854, !855, !858, !861, !862, !863, !866, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880}
!753 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !751, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !755, templateParams: !830, identifier: "_ZTSNSt3__113__atomic_baseIiLb0EEE")
!755 = !{!756, !758, !764, !769, !774, !778, !781, !784, !787, !790, !793, !796, !800, !803, !804, !805, !808, !811, !812, !813, !816, !819, !823, !827}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !754, file: !6, line: 893, baseType: !757, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !252)
!758 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !754, file: !6, line: 900, type: !759, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!759 = !DISubroutineType(types: !760)
!760 = !{!141, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !754)
!764 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !754, file: !6, line: 909, type: !765, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!765 = !DISubroutineType(types: !766)
!766 = !{!141, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!769 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !754, file: !6, line: 912, type: !770, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !772, !252, !773}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !7, file: !6, line: 585, baseType: !5)
!774 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !754, file: !6, line: 916, type: !775, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !777, !252, !773}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!778 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !754, file: !6, line: 920, type: !779, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!779 = !DISubroutineType(types: !780)
!780 = !{!252, !761, !773}
!781 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !754, file: !6, line: 924, type: !782, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!782 = !DISubroutineType(types: !783)
!783 = !{!252, !767, !773}
!784 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EEcviEv", scope: !754, file: !6, line: 928, type: !785, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!785 = !DISubroutineType(types: !786)
!786 = !{!252, !761}
!787 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !754, file: !6, line: 930, type: !788, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!788 = !DISubroutineType(types: !789)
!789 = !{!252, !767}
!790 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !754, file: !6, line: 932, type: !791, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!791 = !DISubroutineType(types: !792)
!792 = !{!252, !772, !252, !773}
!793 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !754, file: !6, line: 935, type: !794, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!794 = !DISubroutineType(types: !795)
!795 = !{!252, !777, !252, !773}
!796 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !754, file: !6, line: 938, type: !797, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!797 = !DISubroutineType(types: !798)
!798 = !{!141, !772, !799, !252, !773, !773}
!799 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !252, size: 64)
!800 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !754, file: !6, line: 943, type: !801, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!801 = !DISubroutineType(types: !802)
!802 = !{!141, !777, !799, !252, !773, !773}
!803 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !754, file: !6, line: 948, type: !797, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!804 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !754, file: !6, line: 953, type: !801, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!805 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !754, file: !6, line: 958, type: !806, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!806 = !DISubroutineType(types: !807)
!807 = !{!141, !772, !799, !252, !773}
!808 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !754, file: !6, line: 962, type: !809, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!809 = !DISubroutineType(types: !810)
!810 = !{!141, !777, !799, !252, !773}
!811 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !754, file: !6, line: 966, type: !806, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!812 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !754, file: !6, line: 970, type: !809, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!813 = !DISubprogram(name: "__atomic_base", scope: !754, file: !6, line: 976, type: !814, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !777}
!816 = !DISubprogram(name: "__atomic_base", scope: !754, file: !6, line: 982, type: !817, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !777, !252}
!819 = !DISubprogram(name: "__atomic_base", scope: !754, file: !6, line: 984, type: !820, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !777, !822}
!822 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !768, size: 64)
!823 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !754, file: !6, line: 985, type: !824, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!824 = !DISubroutineType(types: !825)
!825 = !{!826, !777, !822}
!826 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !754, size: 64)
!827 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !754, file: !6, line: 986, type: !828, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!828 = !DISubroutineType(types: !829)
!829 = !{!826, !772, !822}
!830 = !{!831, !556}
!831 = !DITemplateTypeParameter(name: "_Tp", type: !252)
!832 = !DISubprogram(name: "__atomic_base", scope: !751, file: !6, line: 1008, type: !833, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!836 = !DISubprogram(name: "__atomic_base", scope: !751, file: !6, line: 1010, type: !837, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !835, !252}
!839 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !751, file: !6, line: 1013, type: !840, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true)
!840 = !DISubroutineType(types: !841)
!841 = !{!252, !842, !252, !773}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!843 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !751)
!844 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !751, file: !6, line: 1016, type: !845, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true)
!845 = !DISubroutineType(types: !846)
!846 = !{!252, !835, !252, !773}
!847 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !751, file: !6, line: 1019, type: !840, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: true)
!848 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !751, file: !6, line: 1022, type: !845, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true)
!849 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !751, file: !6, line: 1025, type: !840, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true)
!850 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !751, file: !6, line: 1028, type: !845, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true)
!851 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !751, file: !6, line: 1031, type: !840, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: true)
!852 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !751, file: !6, line: 1034, type: !845, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true)
!853 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !751, file: !6, line: 1037, type: !840, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: true)
!854 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !751, file: !6, line: 1040, type: !845, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true)
!855 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEi", scope: !751, file: !6, line: 1044, type: !856, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true)
!856 = !DISubroutineType(types: !857)
!857 = !{!252, !842, !252}
!858 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEi", scope: !751, file: !6, line: 1046, type: !859, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true)
!859 = !DISubroutineType(types: !860)
!860 = !{!252, !835, !252}
!861 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEi", scope: !751, file: !6, line: 1048, type: !856, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true)
!862 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEi", scope: !751, file: !6, line: 1050, type: !859, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: true)
!863 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEv", scope: !751, file: !6, line: 1052, type: !864, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true)
!864 = !DISubroutineType(types: !865)
!865 = !{!252, !842}
!866 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEv", scope: !751, file: !6, line: 1054, type: !867, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true)
!867 = !DISubroutineType(types: !868)
!868 = !{!252, !835}
!869 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEv", scope: !751, file: !6, line: 1056, type: !864, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true)
!870 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEv", scope: !751, file: !6, line: 1058, type: !867, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true)
!871 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEpLEi", scope: !751, file: !6, line: 1060, type: !856, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: true)
!872 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEpLEi", scope: !751, file: !6, line: 1062, type: !859, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true)
!873 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmIEi", scope: !751, file: !6, line: 1064, type: !856, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true)
!874 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmIEi", scope: !751, file: !6, line: 1066, type: !859, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true)
!875 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEaNEi", scope: !751, file: !6, line: 1068, type: !856, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true)
!876 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEaNEi", scope: !751, file: !6, line: 1070, type: !859, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true)
!877 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEoREi", scope: !751, file: !6, line: 1072, type: !856, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: true)
!878 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEoREi", scope: !751, file: !6, line: 1074, type: !859, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true)
!879 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEeOEi", scope: !751, file: !6, line: 1076, type: !856, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true)
!880 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEeOEi", scope: !751, file: !6, line: 1078, type: !859, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true)
!881 = !{!831, !541}
!882 = !DISubprogram(name: "atomic", scope: !748, file: !6, line: 1089, type: !883, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!886 = !DISubprogram(name: "atomic", scope: !748, file: !6, line: 1091, type: !887, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !885, !252}
!889 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIiEaSEi", scope: !748, file: !6, line: 1094, type: !890, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true)
!890 = !DISubroutineType(types: !891)
!891 = !{!252, !892, !252}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!893 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !748)
!894 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !748, file: !6, line: 1097, type: !895, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true)
!895 = !DISubroutineType(types: !896)
!896 = !{!252, !885, !252}
!897 = !{!831}
!898 = !DIGlobalVariableExpression(var: !899)
!899 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 8, type: !748, isLocal: false, isDefinition: true)
!900 = !{!901, !904, !908, !912, !913, !921, !923, !930, !934, !936, !938, !942, !946, !950, !952, !956, !961, !965, !969, !971, !973, !975, !977, !979, !981, !985, !989, !993, !997, !1000, !1003, !1007, !1011, !1015, !1019, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1056, !1059, !1060, !1063, !1064, !1071, !1077, !1083, !1088, !1092, !1096, !1100, !1105, !1110, !1114, !1118, !1122, !1126, !1130, !1134, !1138, !1142, !1146, !1150, !1154, !1156, !1160, !1164, !1166, !1170, !1172, !1179, !1183, !1188, !1192, !1194, !1198, !1202, !1204, !1208, !1214, !1218, !1222, !1228, !1282, !1283, !1284, !1289, !1291, !1295, !1299, !1303, !1305, !1309, !1313, !1317, !1328, !1330, !1334, !1338, !1342, !1344, !1348, !1352, !1356, !1358, !1360, !1362, !1366, !1370, !1375, !1379, !1385, !1389, !1393, !1395, !1397, !1399, !1403, !1407, !1411, !1413, !1415, !1419, !1423, !1425, !1427, !1431, !1435, !1437, !1441, !1443, !1445, !1448, !1450, !1452, !1454, !1456, !1458, !1460, !1462, !1464, !1466, !1468, !1470, !1472, !1474, !1478, !1483, !1488, !1493, !1495, !1498, !1500, !1502, !1504, !1506, !1508, !1510, !1512, !1514, !1516, !1520, !1524, !1528, !1530, !1534, !1538, !1550, !1551, !1566, !1567, !1568, !1573, !1575, !1579, !1583, !1587, !1591, !1593, !1597, !1601, !1605, !1609, !1613, !1617, !1619, !1621, !1625, !1630, !1634, !1638, !1642, !1646, !1650, !1654, !1658, !1662, !1664, !1666, !1670, !1672, !1676, !1680, !1685, !1687, !1689, !1691, !1695, !1699, !1703, !1705, !1709, !1711, !1713, !1715, !1717, !1723, !1727, !1729, !1735, !1740, !1744, !1748, !1753, !1758, !1762, !1766, !1770, !1774, !1776, !1778, !1782, !1783, !1784, !1785, !1789, !1793, !1798, !1803, !1807, !1813, !1817, !1819}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !902, line: 49)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !903, line: 51, baseType: !78)
!903 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, line: 50)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !906, line: 30, baseType: !907)
!906 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !421, line: 92, baseType: !610)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !909, line: 55)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !910, line: 32, baseType: !911)
!910 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!911 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, line: 69)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !914, line: 70)
!914 = !DISubprogram(name: "memcpy", scope: !915, file: !915, line: 72, type: !916, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!915 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!916 = !DISubroutineType(types: !917)
!917 = !{!918, !918, !919, !905}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !922, line: 71)
!922 = !DISubprogram(name: "memmove", scope: !915, file: !915, line: 73, type: !916, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !924, line: 72)
!924 = !DISubprogram(name: "strcpy", scope: !915, file: !915, line: 79, type: !925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!925 = !DISubroutineType(types: !926)
!926 = !{!927, !927, !928}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !931, line: 73)
!931 = !DISubprogram(name: "strncpy", scope: !915, file: !915, line: 85, type: !932, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!932 = !DISubroutineType(types: !933)
!933 = !{!927, !927, !928, !905}
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !935, line: 74)
!935 = !DISubprogram(name: "strcat", scope: !915, file: !915, line: 75, type: !925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !937, line: 75)
!937 = !DISubprogram(name: "strncat", scope: !915, file: !915, line: 83, type: !932, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !939, line: 76)
!939 = !DISubprogram(name: "memcmp", scope: !915, file: !915, line: 71, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!940 = !DISubroutineType(types: !941)
!941 = !{!252, !919, !919, !905}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !943, line: 77)
!943 = !DISubprogram(name: "strcmp", scope: !915, file: !915, line: 77, type: !944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!944 = !DISubroutineType(types: !945)
!945 = !{!252, !928, !928}
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !947, line: 78)
!947 = !DISubprogram(name: "strncmp", scope: !915, file: !915, line: 84, type: !948, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!948 = !DISubroutineType(types: !949)
!949 = !{!252, !928, !928, !905}
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !951, line: 79)
!951 = !DISubprogram(name: "strcoll", scope: !915, file: !915, line: 78, type: !944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !953, line: 80)
!953 = !DISubprogram(name: "strxfrm", scope: !915, file: !915, line: 91, type: !954, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!954 = !DISubroutineType(types: !955)
!955 = !{!905, !927, !928, !905}
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !957, line: 81)
!957 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !958, file: !958, line: 99, type: !959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!958 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!959 = !DISubroutineType(types: !960)
!960 = !{!918, !918, !252, !905}
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !962, line: 82)
!962 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !958, file: !958, line: 78, type: !963, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!963 = !DISubroutineType(types: !964)
!964 = !{!927, !927, !252}
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !966, line: 83)
!966 = !DISubprogram(name: "strcspn", scope: !915, file: !915, line: 80, type: !967, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!967 = !DISubroutineType(types: !968)
!968 = !{!905, !928, !928}
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !970, line: 84)
!970 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !958, file: !958, line: 85, type: !925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !972, line: 85)
!972 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !958, file: !958, line: 92, type: !963, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !974, line: 86)
!974 = !DISubprogram(name: "strspn", scope: !915, file: !915, line: 88, type: !967, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !976, line: 87)
!976 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !958, file: !958, line: 106, type: !925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !978, line: 89)
!978 = !DISubprogram(name: "strtok", scope: !915, file: !915, line: 90, type: !925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !980, line: 91)
!980 = !DISubprogram(name: "memset", scope: !915, file: !915, line: 74, type: !959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !982, line: 92)
!982 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !915, file: !915, line: 81, type: !983, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!983 = !DISubroutineType(types: !984)
!984 = !{!927, !252}
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !986, line: 93)
!986 = !DISubprogram(name: "strlen", scope: !915, file: !915, line: 82, type: !987, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!987 = !DISubroutineType(types: !988)
!988 = !{!905, !928}
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !990, line: 153)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !991, line: 30, baseType: !992)
!991 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!992 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !994, line: 154)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !995, line: 30, baseType: !996)
!995 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!996 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !998, line: 155)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !999, line: 30, baseType: !252)
!999 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1001, line: 156)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1002, line: 30, baseType: !225)
!1002 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1004, line: 158)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1005, line: 31, baseType: !1006)
!1005 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1006 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1008, line: 159)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1009, line: 31, baseType: !1010)
!1009 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1010 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1012, line: 160)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1013, line: 31, baseType: !1014)
!1013 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1014 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1016, line: 161)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1017, line: 31, baseType: !1018)
!1017 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1018 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1020, line: 163)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1021, line: 29, baseType: !990)
!1021 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1023, line: 164)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1021, line: 30, baseType: !994)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1025, line: 165)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1021, line: 31, baseType: !998)
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1027, line: 166)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1021, line: 32, baseType: !1001)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1029, line: 168)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1021, line: 33, baseType: !1004)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1031, line: 169)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1021, line: 34, baseType: !1008)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1033, line: 170)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1021, line: 35, baseType: !1012)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1035, line: 171)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1021, line: 36, baseType: !1016)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1037, line: 173)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1021, line: 40, baseType: !990)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1039, line: 174)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1021, line: 41, baseType: !994)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1041, line: 175)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1021, line: 42, baseType: !998)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1043, line: 176)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1021, line: 43, baseType: !1001)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1045, line: 178)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1021, line: 44, baseType: !1004)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1047, line: 179)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1021, line: 45, baseType: !1008)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1049, line: 180)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1021, line: 46, baseType: !1012)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1051, line: 181)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1021, line: 47, baseType: !1016)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1053, line: 183)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1054, line: 30, baseType: !1055)
!1054 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !421, line: 49, baseType: !78)
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1057, line: 184)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1058, line: 30, baseType: !610)
!1058 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !281, line: 186)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1061, line: 187)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1062, line: 32, baseType: !610)
!1062 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, line: 100)
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1065, line: 101)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1066, line: 85, baseType: !1067)
!1066 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 82, size: 64, elements: !1068, identifier: "_ZTS5div_t")
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1067, file: !1066, line: 83, baseType: !252, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1067, file: !1066, line: 84, baseType: !252, size: 32, offset: 32)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1072, line: 102)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1066, line: 90, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 87, size: 128, elements: !1074, identifier: "_ZTS6ldiv_t")
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1073, file: !1066, line: 88, baseType: !78, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1073, file: !1066, line: 89, baseType: !78, size: 64, offset: 64)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1078, line: 104)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1066, line: 96, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 93, size: 128, elements: !1080, identifier: "_ZTS7lldiv_t")
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1079, file: !1066, line: 94, baseType: !225, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1079, file: !1066, line: 95, baseType: !225, size: 64, offset: 64)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1084, line: 106)
!1084 = !DISubprogram(name: "atof", scope: !1066, file: !1066, line: 131, type: !1085, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1087, !928}
!1087 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1089, line: 107)
!1089 = !DISubprogram(name: "atoi", scope: !1066, file: !1066, line: 132, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!252, !928}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1093, line: 108)
!1093 = !DISubprogram(name: "atol", scope: !1066, file: !1066, line: 133, type: !1094, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!78, !928}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1097, line: 110)
!1097 = !DISubprogram(name: "atoll", scope: !1066, file: !1066, line: 136, type: !1098, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!225, !928}
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1101, line: 112)
!1101 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !1066, file: !1066, line: 162, type: !1102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1087, !928, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1106, line: 113)
!1106 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !1066, file: !1066, line: 163, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1109, !928, !1104}
!1109 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1111, line: 114)
!1111 = !DISubprogram(name: "strtold", scope: !1066, file: !1066, line: 166, type: !1112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!911, !928, !1104}
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1115, line: 115)
!1115 = !DISubprogram(name: "strtol", scope: !1066, file: !1066, line: 164, type: !1116, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!78, !928, !1104, !252}
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1119, line: 117)
!1119 = !DISubprogram(name: "strtoll", scope: !1066, file: !1066, line: 169, type: !1120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!225, !928, !1104, !252}
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1123, line: 119)
!1123 = !DISubprogram(name: "strtoul", scope: !1066, file: !1066, line: 172, type: !1124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!610, !928, !1104, !252}
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1127, line: 121)
!1127 = !DISubprogram(name: "strtoull", scope: !1066, file: !1066, line: 175, type: !1128, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!1018, !928, !1104, !252}
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1131, line: 123)
!1131 = !DISubprogram(name: "rand", scope: !1066, file: !1066, line: 159, type: !1132, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!252}
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1135, line: 124)
!1135 = !DISubprogram(name: "srand", scope: !1066, file: !1066, line: 161, type: !1136, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1014}
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1139, line: 125)
!1139 = !DISubprogram(name: "calloc", scope: !1066, file: !1066, line: 140, type: !1140, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!918, !905, !905}
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1143, line: 126)
!1143 = !DISubprogram(name: "free", scope: !1066, file: !1066, line: 143, type: !1144, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !918}
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1147, line: 127)
!1147 = !DISubprogram(name: "malloc", scope: !1066, file: !1066, line: 152, type: !1148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!918, !905}
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1151, line: 128)
!1151 = !DISubprogram(name: "realloc", scope: !1066, file: !1066, line: 160, type: !1152, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!918, !918, !905}
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1155, line: 129)
!1155 = !DISubprogram(name: "abort", scope: !1066, file: !1066, line: 128, type: !617, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1157, line: 130)
!1157 = !DISubprogram(name: "atexit", scope: !1066, file: !1066, line: 130, type: !1158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!252, !616}
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1161, line: 131)
!1161 = !DISubprogram(name: "exit", scope: !1066, file: !1066, line: 142, type: !1162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !252}
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1165, line: 132)
!1165 = !DISubprogram(name: "_Exit", scope: !1066, file: !1066, line: 182, type: !1162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1167, line: 134)
!1167 = !DISubprogram(name: "getenv", scope: !1066, file: !1066, line: 144, type: !1168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!927, !928}
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1171, line: 135)
!1171 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !1066, file: !1066, line: 177, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1173, line: 137)
!1173 = !DISubprogram(name: "bsearch", scope: !1066, file: !1066, line: 138, type: !1174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!918, !919, !919, !905, !905, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!252, !919, !919}
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1180, line: 138)
!1180 = !DISubprogram(name: "qsort", scope: !1066, file: !1066, line: 157, type: !1181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !918, !905, !905, !1176}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1184, line: 139)
!1184 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !1185, file: !1185, line: 113, type: !1186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1185 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!225, !225}
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1189, line: 140)
!1189 = !DISubprogram(name: "labs", scope: !1066, file: !1066, line: 145, type: !1190, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!78, !78}
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1193, line: 142)
!1193 = !DISubprogram(name: "llabs", scope: !1066, file: !1066, line: 149, type: !1186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1195, line: 144)
!1195 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !1185, file: !1185, line: 118, type: !1196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1078, !225, !225}
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1199, line: 145)
!1199 = !DISubprogram(name: "ldiv", scope: !1066, file: !1066, line: 146, type: !1200, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1072, !78, !78}
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1203, line: 147)
!1203 = !DISubprogram(name: "lldiv", scope: !1066, file: !1066, line: 150, type: !1196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1205, line: 149)
!1205 = !DISubprogram(name: "mblen", scope: !1066, file: !1066, line: 153, type: !1206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!252, !928, !905}
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1209, line: 150)
!1209 = !DISubprogram(name: "mbtowc", scope: !1066, file: !1066, line: 155, type: !1210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!252, !1212, !928, !905}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1215, line: 151)
!1215 = !DISubprogram(name: "wctomb", scope: !1066, file: !1066, line: 179, type: !1216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!252, !927, !1213}
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1219, line: 152)
!1219 = !DISubprogram(name: "mbstowcs", scope: !1066, file: !1066, line: 154, type: !1220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!905, !1212, !928, !905}
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1223, line: 153)
!1223 = !DISubprogram(name: "wcstombs", scope: !1066, file: !1066, line: 178, type: !1224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!905, !927, !1226, !905}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1229, line: 108)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1230, line: 153, baseType: !1231)
!1230 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1230, line: 122, size: 1216, elements: !1232, identifier: "_ZTS7__sFILE")
!1232 = !{!1233, !1235, !1236, !1237, !1238, !1239, !1244, !1245, !1246, !1250, !1254, !1262, !1266, !1267, !1270, !1271, !1275, !1279, !1280, !1281}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1231, file: !1230, line: 123, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1231, file: !1230, line: 124, baseType: !252, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1231, file: !1230, line: 125, baseType: !252, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1231, file: !1230, line: 126, baseType: !996, size: 16, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1231, file: !1230, line: 127, baseType: !996, size: 16, offset: 144)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1231, file: !1230, line: 128, baseType: !1240, size: 128, offset: 192)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1230, line: 88, size: 128, elements: !1241, identifier: "_ZTS6__sbuf")
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1240, file: !1230, line: 89, baseType: !1234, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1240, file: !1230, line: 90, baseType: !252, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1231, file: !1230, line: 129, baseType: !252, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1231, file: !1230, line: 132, baseType: !918, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1231, file: !1230, line: 133, baseType: !1247, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!252, !918}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1231, file: !1230, line: 134, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!252, !918, !927, !252}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1231, file: !1230, line: 135, baseType: !1255, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!1258, !918, !1258, !252}
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1230, line: 77, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !1260, line: 71, baseType: !1261)
!1260 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !421, line: 46, baseType: !225)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1231, file: !1230, line: 136, baseType: !1263, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!252, !918, !928, !252}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1231, file: !1230, line: 139, baseType: !1240, size: 128, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !1231, file: !1230, line: 140, baseType: !1268, size: 64, offset: 832)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !1230, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1231, file: !1230, line: 141, baseType: !252, size: 32, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1231, file: !1230, line: 144, baseType: !1272, size: 24, offset: 928)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 24, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 3)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1231, file: !1230, line: 145, baseType: !1276, size: 8, offset: 952)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 8, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 1)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1231, file: !1230, line: 148, baseType: !1240, size: 128, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1231, file: !1230, line: 151, baseType: !252, size: 32, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1231, file: !1230, line: 152, baseType: !1258, size: 64, offset: 1152)
!1282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1258, line: 109)
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, line: 110)
!1284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1285, line: 112)
!1285 = !DISubprogram(name: "fclose", scope: !1230, file: !1230, line: 232, type: !1286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!252, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1290, line: 113)
!1290 = !DISubprogram(name: "fflush", scope: !1230, file: !1230, line: 235, type: !1286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1292, line: 114)
!1292 = !DISubprogram(name: "setbuf", scope: !1230, file: !1230, line: 267, type: !1293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !1288, !927}
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1296, line: 115)
!1296 = !DISubprogram(name: "setvbuf", scope: !1230, file: !1230, line: 268, type: !1297, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!252, !1288, !927, !252, !905}
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1300, line: 116)
!1300 = !DISubprogram(name: "fprintf", scope: !1230, file: !1230, line: 244, type: !1301, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!252, !1288, !928, null}
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1304, line: 117)
!1304 = !DISubprogram(name: "fscanf", scope: !1230, file: !1230, line: 250, type: !1301, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1306, line: 118)
!1306 = !DISubprogram(name: "snprintf", scope: !1230, file: !1230, line: 421, type: !1307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!252, !927, !905, !928, null}
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1310, line: 119)
!1310 = !DISubprogram(name: "sprintf", scope: !1230, file: !1230, line: 269, type: !1311, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!252, !927, !928, null}
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1314, line: 120)
!1314 = !DISubprogram(name: "sscanf", scope: !1230, file: !1230, line: 270, type: !1315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!252, !928, !928, null}
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1318, line: 121)
!1318 = !DISubprogram(name: "vfprintf", scope: !1230, file: !1230, line: 278, type: !1319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!252, !1288, !928, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1323, identifier: "_ZTS13__va_list_tag")
!1323 = !{!1324, !1325, !1326, !1327}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1322, file: !3, baseType: !1014, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1322, file: !3, baseType: !1014, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1322, file: !3, baseType: !918, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1322, file: !3, baseType: !918, size: 64, offset: 128)
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1329, line: 122)
!1329 = !DISubprogram(name: "vfscanf", scope: !1230, file: !1230, line: 422, type: !1319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1331, line: 123)
!1331 = !DISubprogram(name: "vsscanf", scope: !1230, file: !1230, line: 425, type: !1332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!252, !928, !928, !1321}
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1335, line: 124)
!1335 = !DISubprogram(name: "vsnprintf", scope: !1230, file: !1230, line: 424, type: !1336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!252, !927, !905, !928, !1321}
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1339, line: 125)
!1339 = !DISubprogram(name: "vsprintf", scope: !1230, file: !1230, line: 280, type: !1340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!252, !927, !928, !1321}
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1343, line: 126)
!1343 = !DISubprogram(name: "fgetc", scope: !1230, file: !1230, line: 236, type: !1286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1345, line: 127)
!1345 = !DISubprogram(name: "fgets", scope: !1230, file: !1230, line: 238, type: !1346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!927, !927, !252, !1288}
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1349, line: 128)
!1349 = !DISubprogram(name: "fputc", scope: !1230, file: !1230, line: 245, type: !1350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!252, !252, !1288}
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1353, line: 129)
!1353 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !1230, file: !1230, line: 246, type: !1354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!252, !928, !1288}
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1357, line: 130)
!1357 = !DISubprogram(name: "getc", scope: !1230, file: !1230, line: 255, type: !1286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1359, line: 131)
!1359 = !DISubprogram(name: "putc", scope: !1230, file: !1230, line: 260, type: !1350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1361, line: 132)
!1361 = !DISubprogram(name: "ungetc", scope: !1230, file: !1230, line: 277, type: !1350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1363, line: 133)
!1363 = !DISubprogram(name: "fread", scope: !1230, file: !1230, line: 247, type: !1364, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!905, !918, !905, !905, !1288}
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1367, line: 134)
!1367 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !1230, file: !1230, line: 254, type: !1368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!905, !919, !905, !905, !1288}
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1371, line: 135)
!1371 = !DISubprogram(name: "fgetpos", scope: !1230, file: !1230, line: 237, type: !1372, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!252, !1288, !1374}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1376, line: 136)
!1376 = !DISubprogram(name: "fseek", scope: !1230, file: !1230, line: 251, type: !1377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!252, !1288, !78, !252}
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1380, line: 137)
!1380 = !DISubprogram(name: "fsetpos", scope: !1230, file: !1230, line: 252, type: !1381, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!252, !1288, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1386, line: 138)
!1386 = !DISubprogram(name: "ftell", scope: !1230, file: !1230, line: 253, type: !1387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!78, !1288}
!1389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1390, line: 139)
!1390 = !DISubprogram(name: "rewind", scope: !1230, file: !1230, line: 265, type: !1391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1288}
!1393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1394, line: 140)
!1394 = !DISubprogram(name: "clearerr", scope: !1230, file: !1230, line: 231, type: !1391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1396, line: 141)
!1396 = !DISubprogram(name: "feof", scope: !1230, file: !1230, line: 233, type: !1286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1398, line: 142)
!1398 = !DISubprogram(name: "ferror", scope: !1230, file: !1230, line: 234, type: !1286, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1400, line: 143)
!1400 = !DISubprogram(name: "perror", scope: !1230, file: !1230, line: 258, type: !1401, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !928}
!1403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1404, line: 146)
!1404 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !1230, file: !1230, line: 242, type: !1405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1288, !928, !928}
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1408, line: 147)
!1408 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !1230, file: !1230, line: 248, type: !1409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1288, !928, !928, !1288}
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1412, line: 148)
!1412 = !DISubprogram(name: "remove", scope: !1230, file: !1230, line: 263, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1414, line: 149)
!1414 = !DISubprogram(name: "rename", scope: !1230, file: !1230, line: 264, type: !944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1416, line: 150)
!1416 = !DISubprogram(name: "tmpfile", scope: !1230, file: !1230, line: 271, type: !1417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1288}
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1420, line: 151)
!1420 = !DISubprogram(name: "tmpnam", scope: !1230, file: !1230, line: 276, type: !1421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!927, !927}
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1424, line: 155)
!1424 = !DISubprogram(name: "getchar", scope: !1230, file: !1230, line: 256, type: !1132, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1426, line: 157)
!1426 = !DISubprogram(name: "gets", scope: !1230, file: !1230, line: 257, type: !1421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1428, line: 159)
!1428 = !DISubprogram(name: "scanf", scope: !1230, file: !1230, line: 266, type: !1429, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!252, !928, null}
!1431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1432, line: 160)
!1432 = !DISubprogram(name: "vscanf", scope: !1230, file: !1230, line: 423, type: !1433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!252, !928, !1321}
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1436, line: 164)
!1436 = !DISubprogram(name: "printf", scope: !1230, file: !1230, line: 259, type: !1429, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1438, line: 165)
!1438 = !DISubprogram(name: "putchar", scope: !1230, file: !1230, line: 261, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!252, !252}
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1442, line: 166)
!1442 = !DISubprogram(name: "puts", scope: !1230, file: !1230, line: 262, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1444, line: 167)
!1444 = !DISubprogram(name: "vprintf", scope: !1230, file: !1230, line: 279, type: !1433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1446, line: 104)
!1446 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !1447, file: !1447, line: 212, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1447 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1449, line: 105)
!1449 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !1447, file: !1447, line: 218, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1451, line: 106)
!1451 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !1447, file: !1447, line: 224, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1453, line: 107)
!1453 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !1447, file: !1447, line: 230, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1455, line: 108)
!1455 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !1447, file: !1447, line: 237, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1457, line: 109)
!1457 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !1447, file: !1447, line: 243, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1459, line: 110)
!1459 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !1447, file: !1447, line: 249, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1461, line: 111)
!1461 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !1447, file: !1447, line: 255, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1463, line: 112)
!1463 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !1447, file: !1447, line: 261, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1465, line: 113)
!1465 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !1447, file: !1447, line: 267, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1467, line: 114)
!1467 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !1447, file: !1447, line: 273, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1469, line: 115)
!1469 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !1447, file: !1447, line: 280, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1471, line: 116)
!1471 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !1447, file: !1447, line: 292, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1473, line: 117)
!1473 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !1447, file: !1447, line: 298, type: !1439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1475, line: 63)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1476, line: 31, baseType: !1477)
!1476 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !421, line: 112, baseType: !252)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1479, line: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1480, line: 31, baseType: !1481)
!1480 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !1482, line: 40, baseType: !252)
!1482 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1484, line: 65)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1485, line: 31, baseType: !1486)
!1485 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !1482, line: 42, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !421, line: 45, baseType: !1014)
!1488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1489, line: 66)
!1489 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !1490, file: !1490, line: 66, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1490 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!252, !1475}
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1494, line: 67)
!1494 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !1490, file: !1490, line: 72, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1496, line: 68)
!1496 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !1497, file: !1497, line: 50, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1497 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1499, line: 69)
!1499 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !1490, file: !1490, line: 78, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1501, line: 70)
!1501 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !1490, file: !1490, line: 90, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1503, line: 71)
!1503 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !1490, file: !1490, line: 96, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1505, line: 72)
!1505 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !1490, file: !1490, line: 102, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1507, line: 73)
!1507 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !1490, file: !1490, line: 108, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1509, line: 74)
!1509 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !1490, file: !1490, line: 114, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1511, line: 75)
!1511 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !1490, file: !1490, line: 120, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1513, line: 76)
!1513 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !1490, file: !1490, line: 126, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1515, line: 77)
!1515 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !1490, file: !1490, line: 132, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1517, line: 78)
!1517 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !1490, file: !1490, line: 84, type: !1518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!252, !1475, !1484}
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1521, line: 79)
!1521 = !DISubprogram(name: "wctype", scope: !1490, file: !1490, line: 172, type: !1522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1484, !928}
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1525, line: 80)
!1525 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !1490, file: !1490, line: 138, type: !1526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1475, !1475}
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1529, line: 81)
!1529 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !1490, file: !1490, line: 144, type: !1526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1531, line: 82)
!1531 = !DISubprogram(name: "towctrans", scope: !1497, file: !1497, line: 121, type: !1532, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1475, !1475, !1479}
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1535, line: 83)
!1535 = !DISubprogram(name: "wctrans", scope: !1497, file: !1497, line: 123, type: !1536, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1479, !928}
!1538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1539, line: 116)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1540, line: 31, baseType: !1541)
!1540 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !421, line: 81, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !421, line: 79, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !421, line: 76, size: 1024, elements: !1544, identifier: "_ZTS11__mbstate_t")
!1544 = !{!1545, !1549}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !1543, file: !421, line: 77, baseType: !1546, size: 1024)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1024, elements: !1547)
!1547 = !{!1548}
!1548 = !DISubrange(count: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !1543, file: !421, line: 78, baseType: !225, size: 64)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, line: 117)
!1551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1552, line: 118)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1553, line: 73, size: 448, elements: !1554, identifier: "_ZTS2tm")
!1553 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1552, file: !1553, line: 74, baseType: !252, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1552, file: !1553, line: 75, baseType: !252, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1552, file: !1553, line: 76, baseType: !252, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1552, file: !1553, line: 77, baseType: !252, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1552, file: !1553, line: 78, baseType: !252, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1552, file: !1553, line: 79, baseType: !252, size: 32, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1552, file: !1553, line: 80, baseType: !252, size: 32, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1552, file: !1553, line: 81, baseType: !252, size: 32, offset: 224)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1552, file: !1553, line: 82, baseType: !252, size: 32, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1552, file: !1553, line: 83, baseType: !78, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1552, file: !1553, line: 84, baseType: !927, size: 64, offset: 384)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1475, line: 119)
!1567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1229, line: 120)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1569, line: 121)
!1569 = !DISubprogram(name: "fwprintf", scope: !1570, file: !1570, line: 103, type: !1571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1570 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!252, !1288, !1226, null}
!1573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1574, line: 122)
!1574 = !DISubprogram(name: "fwscanf", scope: !1570, file: !1570, line: 104, type: !1571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1576, line: 123)
!1576 = !DISubprogram(name: "swprintf", scope: !1570, file: !1570, line: 115, type: !1577, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!252, !1212, !905, !1226, null}
!1579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1580, line: 124)
!1580 = !DISubprogram(name: "vfwprintf", scope: !1570, file: !1570, line: 118, type: !1581, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!252, !1288, !1226, !1321}
!1583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1584, line: 125)
!1584 = !DISubprogram(name: "vswprintf", scope: !1570, file: !1570, line: 120, type: !1585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!252, !1212, !905, !1226, !1321}
!1587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1588, line: 126)
!1588 = !DISubprogram(name: "swscanf", scope: !1570, file: !1570, line: 116, type: !1589, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!252, !1226, !1226, null}
!1591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1592, line: 127)
!1592 = !DISubprogram(name: "vfwscanf", scope: !1570, file: !1570, line: 170, type: !1581, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1594, line: 128)
!1594 = !DISubprogram(name: "vswscanf", scope: !1570, file: !1570, line: 172, type: !1595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!252, !1226, !1226, !1321}
!1597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1598, line: 129)
!1598 = !DISubprogram(name: "fgetwc", scope: !1570, file: !1570, line: 98, type: !1599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1475, !1288}
!1601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1602, line: 130)
!1602 = !DISubprogram(name: "fgetws", scope: !1570, file: !1570, line: 99, type: !1603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1212, !1212, !252, !1288}
!1605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1606, line: 131)
!1606 = !DISubprogram(name: "fputwc", scope: !1570, file: !1570, line: 100, type: !1607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1475, !1213, !1288}
!1609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1610, line: 132)
!1610 = !DISubprogram(name: "fputws", scope: !1570, file: !1570, line: 101, type: !1611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!252, !1226, !1288}
!1613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1614, line: 133)
!1614 = !DISubprogram(name: "fwide", scope: !1570, file: !1570, line: 102, type: !1615, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!252, !1288, !252}
!1617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1618, line: 134)
!1618 = !DISubprogram(name: "getwc", scope: !1570, file: !1570, line: 105, type: !1599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1620, line: 135)
!1620 = !DISubprogram(name: "putwc", scope: !1570, file: !1570, line: 113, type: !1607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1622, line: 136)
!1622 = !DISubprogram(name: "ungetwc", scope: !1570, file: !1570, line: 117, type: !1623, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!1475, !1475, !1288}
!1625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1626, line: 137)
!1626 = !DISubprogram(name: "wcstod", scope: !1570, file: !1570, line: 144, type: !1627, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1087, !1226, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1631, line: 138)
!1631 = !DISubprogram(name: "wcstof", scope: !1570, file: !1570, line: 175, type: !1632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1109, !1226, !1629}
!1634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1635, line: 139)
!1635 = !DISubprogram(name: "wcstold", scope: !1570, file: !1570, line: 177, type: !1636, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!911, !1226, !1629}
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1639, line: 140)
!1639 = !DISubprogram(name: "wcstol", scope: !1570, file: !1570, line: 147, type: !1640, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!78, !1226, !1629, !252}
!1642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1643, line: 142)
!1643 = !DISubprogram(name: "wcstoll", scope: !1570, file: !1570, line: 180, type: !1644, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!225, !1226, !1629, !252}
!1646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1647, line: 144)
!1647 = !DISubprogram(name: "wcstoul", scope: !1570, file: !1570, line: 149, type: !1648, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!610, !1226, !1629, !252}
!1650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1651, line: 146)
!1651 = !DISubprogram(name: "wcstoull", scope: !1570, file: !1570, line: 182, type: !1652, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1018, !1226, !1629, !252}
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1655, line: 148)
!1655 = !DISubprogram(name: "wcscpy", scope: !1570, file: !1570, line: 128, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1212, !1212, !1226}
!1658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1659, line: 149)
!1659 = !DISubprogram(name: "wcsncpy", scope: !1570, file: !1570, line: 135, type: !1660, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1212, !1212, !1226, !905}
!1662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1663, line: 150)
!1663 = !DISubprogram(name: "wcscat", scope: !1570, file: !1570, line: 124, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1665, line: 151)
!1665 = !DISubprogram(name: "wcsncat", scope: !1570, file: !1570, line: 133, type: !1660, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1667, line: 152)
!1667 = !DISubprogram(name: "wcscmp", scope: !1570, file: !1570, line: 126, type: !1668, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!252, !1226, !1226}
!1670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1671, line: 153)
!1671 = !DISubprogram(name: "wcscoll", scope: !1570, file: !1570, line: 127, type: !1668, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1673, line: 154)
!1673 = !DISubprogram(name: "wcsncmp", scope: !1570, file: !1570, line: 134, type: !1674, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!252, !1226, !1226, !905}
!1676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1677, line: 155)
!1677 = !DISubprogram(name: "wcsxfrm", scope: !1570, file: !1570, line: 142, type: !1678, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!905, !1212, !1226, !905}
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1681, line: 156)
!1681 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !1682, file: !1682, line: 137, type: !1683, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1682 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1212, !1212, !1213}
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1686, line: 157)
!1686 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !1682, file: !1682, line: 144, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1688, line: 158)
!1688 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !1682, file: !1682, line: 151, type: !1683, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1690, line: 159)
!1690 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !1682, file: !1682, line: 158, type: !1656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1692, line: 160)
!1692 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !1682, file: !1682, line: 165, type: !1693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1212, !1212, !1213, !905}
!1695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1696, line: 161)
!1696 = !DISubprogram(name: "wcscspn", scope: !1570, file: !1570, line: 129, type: !1697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!905, !1226, !1226}
!1699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1700, line: 162)
!1700 = !DISubprogram(name: "wcslen", scope: !1570, file: !1570, line: 132, type: !1701, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!905, !1226}
!1703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1704, line: 163)
!1704 = !DISubprogram(name: "wcsspn", scope: !1570, file: !1570, line: 140, type: !1697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1706, line: 164)
!1706 = !DISubprogram(name: "wcstok", scope: !1570, file: !1570, line: 145, type: !1707, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!1212, !1212, !1226, !1629}
!1709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1710, line: 165)
!1710 = !DISubprogram(name: "wmemcmp", scope: !1570, file: !1570, line: 151, type: !1674, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1712, line: 166)
!1712 = !DISubprogram(name: "wmemcpy", scope: !1570, file: !1570, line: 152, type: !1660, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1714, line: 167)
!1714 = !DISubprogram(name: "wmemmove", scope: !1570, file: !1570, line: 153, type: !1660, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1716, line: 168)
!1716 = !DISubprogram(name: "wmemset", scope: !1570, file: !1570, line: 154, type: !1693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1718, line: 169)
!1718 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !1570, file: !1570, line: 130, type: !1719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!905, !1212, !905, !1226, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1724, line: 170)
!1724 = !DISubprogram(name: "btowc", scope: !1570, file: !1570, line: 97, type: !1725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1475, !252}
!1727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1728, line: 171)
!1728 = !DISubprogram(name: "wctob", scope: !1570, file: !1570, line: 143, type: !1491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1730, line: 172)
!1730 = !DISubprogram(name: "mbsinit", scope: !1570, file: !1570, line: 110, type: !1731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!252, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1736, line: 173)
!1736 = !DISubprogram(name: "mbrlen", scope: !1570, file: !1570, line: 107, type: !1737, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!905, !928, !905, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1741, line: 174)
!1741 = !DISubprogram(name: "mbrtowc", scope: !1570, file: !1570, line: 108, type: !1742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!905, !1212, !928, !905, !1739}
!1744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1745, line: 175)
!1745 = !DISubprogram(name: "wcrtomb", scope: !1570, file: !1570, line: 123, type: !1746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!905, !927, !1213, !1739}
!1748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1749, line: 176)
!1749 = !DISubprogram(name: "mbsrtowcs", scope: !1570, file: !1570, line: 111, type: !1750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!905, !1212, !1752, !905, !1739}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!1753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1754, line: 177)
!1754 = !DISubprogram(name: "wcsrtombs", scope: !1570, file: !1570, line: 138, type: !1755, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!905, !927, !1757, !905, !1739}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1759, line: 180)
!1759 = !DISubprogram(name: "getwchar", scope: !1570, file: !1570, line: 106, type: !1760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!1475}
!1762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1763, line: 181)
!1763 = !DISubprogram(name: "vwscanf", scope: !1570, file: !1570, line: 174, type: !1764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!252, !1226, !1321}
!1766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1767, line: 182)
!1767 = !DISubprogram(name: "wscanf", scope: !1570, file: !1570, line: 156, type: !1768, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!252, !1226, null}
!1770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1771, line: 186)
!1771 = !DISubprogram(name: "putwchar", scope: !1570, file: !1570, line: 114, type: !1772, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1475, !1213}
!1774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1775, line: 187)
!1775 = !DISubprogram(name: "vwprintf", scope: !1570, file: !1570, line: 122, type: !1764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1777, line: 188)
!1777 = !DISubprogram(name: "wprintf", scope: !1570, file: !1570, line: 155, type: !1768, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1779, line: 56)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1780, line: 30, baseType: !1781)
!1780 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !421, line: 117, baseType: !610)
!1782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, line: 57)
!1783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !418, line: 58)
!1784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1552, line: 59)
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1786, line: 60)
!1786 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !1553, file: !1553, line: 107, type: !1787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1779}
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1790, line: 61)
!1790 = !DISubprogram(name: "difftime", scope: !1553, file: !1553, line: 109, type: !1791, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!1087, !418, !418}
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1794, line: 62)
!1794 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !1553, file: !1553, line: 113, type: !1795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!418, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1799, line: 63)
!1799 = !DISubprogram(name: "time", scope: !1553, file: !1553, line: 116, type: !1800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!418, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1804, line: 65)
!1804 = !DISubprogram(name: "asctime", scope: !1553, file: !1553, line: 106, type: !1805, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!927, !1721}
!1807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1808, line: 66)
!1808 = !DISubprogram(name: "ctime", scope: !1553, file: !1553, line: 108, type: !1809, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!927, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1814, line: 67)
!1814 = !DISubprogram(name: "gmtime", scope: !1553, file: !1553, line: 111, type: !1815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1797, !1811}
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1818, line: 68)
!1818 = !DISubprogram(name: "localtime", scope: !1553, file: !1553, line: 112, type: !1815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1820, line: 70)
!1820 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !1553, file: !1553, line: 114, type: !1821, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!905, !927, !905, !928, !1721}
!1823 = !{i32 2, !"Dwarf Version", i32 2}
!1824 = !{i32 2, !"Debug Info Version", i32 3}
!1825 = !{i32 1, !"PIC Level", i32 2}
!1826 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1827 = distinct !DISubprogram(name: "f1", linkageName: "_Z2f1v", scope: !3, file: !3, line: 10, type: !617, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !161)
!1828 = !DILocation(line: 11, column: 5, scope: !1827)
!1829 = !DILocalVariable(name: "__d", arg: 2, scope: !1830, file: !6, line: 916, type: !252)
!1830 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !754, file: !6, line: 916, type: !775, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !774, variables: !1831)
!1831 = !{!1832, !1829, !1834}
!1832 = !DILocalVariable(name: "this", arg: 1, scope: !1830, type: !1833, flags: DIFlagArtificial | DIFlagObjectPointer)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1834 = !DILocalVariable(name: "__m", arg: 3, scope: !1830, file: !6, line: 916, type: !773)
!1835 = !DIExpression()
!1836 = !DILocation(line: 916, column: 20, scope: !1830, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 12, column: 7, scope: !1827)
!1838 = !DILocation(line: 916, column: 38, scope: !1830, inlinedAt: !1837)
!1839 = !DILocation(line: 918, column: 10, scope: !1840, inlinedAt: !1837)
!1840 = !DILexicalBlockFile(scope: !1830, file: !6, discriminator: 2)
!1841 = !DILocation(line: 916, column: 20, scope: !1830, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 13, column: 7, scope: !1827)
!1843 = !DILocation(line: 916, column: 38, scope: !1830, inlinedAt: !1842)
!1844 = !DILocation(line: 918, column: 10, scope: !1840, inlinedAt: !1842)
!1845 = !DILocation(line: 14, column: 5, scope: !1827)
!1846 = !DILocation(line: 15, column: 1, scope: !1827)
!1847 = distinct !DISubprogram(name: "f2", linkageName: "_Z2f2v", scope: !3, file: !3, line: 17, type: !617, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !161)
!1848 = !DILocation(line: 18, column: 5, scope: !1847)
!1849 = !DILocalVariable(name: "__m", arg: 2, scope: !1850, file: !6, line: 924, type: !773)
!1850 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !754, file: !6, line: 924, type: !782, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !781, variables: !1851)
!1851 = !{!1852, !1849}
!1852 = !DILocalVariable(name: "this", arg: 1, scope: !1850, type: !1853, flags: DIFlagArtificial | DIFlagObjectPointer)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!1854 = !DILocation(line: 924, column: 27, scope: !1850, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 19, column: 15, scope: !1847)
!1856 = !DILocation(line: 926, column: 17, scope: !1857, inlinedAt: !1855)
!1857 = !DILexicalBlockFile(scope: !1850, file: !6, discriminator: 2)
!1858 = !DILocation(line: 19, column: 11, scope: !1847)
!1859 = !{!1860, !1860, i64 0}
!1860 = !{!"int", !1861, i64 0}
!1861 = !{!"omnipotent char", !1862, i64 0}
!1862 = !{!"Simple C++ TBAA"}
!1863 = !DILocation(line: 924, column: 27, scope: !1850, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 20, column: 15, scope: !1847)
!1865 = !DILocation(line: 926, column: 17, scope: !1857, inlinedAt: !1864)
!1866 = !DILocation(line: 20, column: 11, scope: !1847)
!1867 = !DILocation(line: 21, column: 5, scope: !1847)
!1868 = !DILocation(line: 22, column: 1, scope: !1847)
!1869 = distinct !DISubprogram(name: "f3", linkageName: "_Z2f3v", scope: !3, file: !3, line: 24, type: !617, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !161)
!1870 = !DILocation(line: 25, column: 5, scope: !1869)
!1871 = !DILocation(line: 924, column: 27, scope: !1850, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 26, column: 15, scope: !1869)
!1873 = !DILocation(line: 926, column: 17, scope: !1857, inlinedAt: !1872)
!1874 = !DILocation(line: 26, column: 11, scope: !1869)
!1875 = !DILocation(line: 924, column: 27, scope: !1850, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 27, column: 15, scope: !1869)
!1877 = !DILocation(line: 926, column: 17, scope: !1857, inlinedAt: !1876)
!1878 = !DILocation(line: 27, column: 11, scope: !1869)
!1879 = !DILocation(line: 28, column: 5, scope: !1869)
!1880 = !DILocation(line: 29, column: 1, scope: !1869)
!1881 = distinct !DISubprogram(name: "user_main", scope: !3, file: !3, line: 32, type: !1132, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1882)
!1882 = !{!1883, !1959, !1960}
!1883 = !DILocalVariable(name: "a", scope: !1881, file: !3, line: 35, type: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !7, file: !42, line: 282, size: 64, elements: !1885, identifier: "_ZTSNSt3__16threadE")
!1885 = !{!1886, !1907, !1913, !1917, !1920, !1921, !1925, !1928, !1931, !1935, !1936, !1937, !1952, !1956}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__t_", scope: !1884, file: !42, line: 284, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_t", scope: !7, file: !70, line: 72, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !1889, line: 30, baseType: !1890)
!1889 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_t", file: !74, line: 118, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_t", file: !74, line: 103, size: 65536, elements: !1893, identifier: "_ZTS17_opaque_pthread_t")
!1893 = !{!1894, !1895, !1903}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !1892, file: !74, line: 104, baseType: !78, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup_stack", scope: !1892, file: !74, line: 105, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__darwin_pthread_handler_rec", file: !74, line: 57, size: 192, elements: !1898, identifier: "_ZTS28__darwin_pthread_handler_rec")
!1898 = !{!1899, !1901, !1902}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "__routine", scope: !1897, file: !74, line: 58, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__arg", scope: !1897, file: !74, line: 59, baseType: !918, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1897, file: !74, line: 60, baseType: !1896, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !1892, file: !74, line: 106, baseType: !1904, size: 65408, offset: 128)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 65408, elements: !1905)
!1905 = !{!1906}
!1906 = !DISubrange(count: 8176)
!1907 = !DISubprogram(name: "thread", scope: !1884, file: !42, line: 286, type: !1908, isLocal: false, isDefinition: false, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1911 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1913 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSERKS0_", scope: !1884, file: !42, line: 287, type: !1914, isLocal: false, isDefinition: false, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916, !1910, !1911}
!1916 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1884, size: 64)
!1917 = !DISubprogram(name: "thread", scope: !1884, file: !42, line: 293, type: !1918, isLocal: false, isDefinition: false, scopeLine: 293, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1910}
!1920 = !DISubprogram(name: "~thread", scope: !1884, file: !42, line: 308, type: !1918, isLocal: false, isDefinition: false, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1921 = !DISubprogram(name: "thread", scope: !1884, file: !42, line: 312, type: !1922, isLocal: false, isDefinition: false, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1910, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1884, size: 64)
!1925 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16threadaSEOS0_", scope: !1884, file: !42, line: 314, type: !1926, isLocal: false, isDefinition: false, scopeLine: 314, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1916, !1910, !1924}
!1928 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__16thread4swapERS0_", scope: !1884, file: !42, line: 318, type: !1929, isLocal: false, isDefinition: false, scopeLine: 318, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1910, !1916}
!1931 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt3__16thread8joinableEv", scope: !1884, file: !42, line: 321, type: !1932, isLocal: false, isDefinition: false, scopeLine: 321, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!141, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1935 = !DISubprogram(name: "join", linkageName: "_ZNSt3__16thread4joinEv", scope: !1884, file: !42, line: 322, type: !1918, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1936 = !DISubprogram(name: "detach", linkageName: "_ZNSt3__16thread6detachEv", scope: !1884, file: !42, line: 323, type: !1918, isLocal: false, isDefinition: false, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1937 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !1884, file: !42, line: 325, type: !1938, isLocal: false, isDefinition: false, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1940, !1934}
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "id", scope: !1884, file: !42, line: 289, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_id", scope: !7, file: !42, line: 213, size: 64, elements: !1942, identifier: "_ZTSNSt3__111__thread_idE")
!1942 = !{!1943, !1945, !1949}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "__id_", scope: !1941, file: !42, line: 218, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_thread_id", scope: !7, file: !70, line: 67, baseType: !1888)
!1945 = !DISubprogram(name: "__thread_id", scope: !1941, file: !42, line: 222, type: !1946, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1949 = !DISubprogram(name: "__thread_id", scope: !1941, file: !42, line: 252, type: !1950, isLocal: false, isDefinition: false, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1948, !1944}
!1952 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt3__16thread13native_handleEv", scope: !1884, file: !42, line: 327, type: !1953, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1955, !1910}
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !1884, file: !42, line: 290, baseType: !1887)
!1956 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt3__16thread20hardware_concurrencyEv", scope: !1884, file: !42, line: 329, type: !1957, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1014}
!1959 = !DILocalVariable(name: "b", scope: !1881, file: !3, line: 36, type: !1884)
!1960 = !DILocalVariable(name: "c", scope: !1881, file: !3, line: 37, type: !1884)
!1961 = !DILocation(line: 34, column: 5, scope: !1881)
!1962 = !DILocation(line: 35, column: 5, scope: !1881)
!1963 = !DIExpression(DW_OP_deref)
!1964 = !DILocation(line: 35, column: 17, scope: !1881)
!1965 = !DILocalVariable(name: "this", arg: 1, scope: !1966, type: !1977, flags: DIFlagArtificial | DIFlagObjectPointer)
!1966 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC1IRFvvEJEvEEOT_DpOT0_", scope: !1884, file: !42, line: 356, type: !1967, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !1970, declaration: !1974, variables: !1975)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !1910, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !617, size: 64)
!1970 = !{!1971, !1972, !1973}
!1971 = !DITemplateTypeParameter(name: "_Fp", type: !1969)
!1972 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !161)
!1973 = !DITemplateTypeParameter(type: null)
!1974 = !DISubprogram(name: "thread<void (&)(), void>", scope: !1884, file: !42, line: 356, type: !1967, isLocal: false, isDefinition: false, scopeLine: 356, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !1970)
!1975 = !{!1965, !1976}
!1976 = !DILocalVariable(name: "__f", arg: 2, scope: !1966, file: !42, line: 356, type: !1969)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1978 = !DILocation(line: 0, scope: !1966, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 35, column: 17, scope: !1881)
!1980 = !DILocation(line: 356, column: 22, scope: !1966, inlinedAt: !1979)
!1981 = !DILocation(line: 357, column: 1, scope: !1966, inlinedAt: !1979)
!1982 = !DILocation(line: 36, column: 5, scope: !1881)
!1983 = !DILocation(line: 0, scope: !1966, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 36, column: 17, scope: !1881)
!1985 = !DILocation(line: 356, column: 22, scope: !1966, inlinedAt: !1984)
!1986 = !DILocation(line: 357, column: 1, scope: !1966, inlinedAt: !1984)
!1987 = !DILocation(line: 37, column: 5, scope: !1881)
!1988 = !DILocation(line: 0, scope: !1966, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 37, column: 17, scope: !1881)
!1990 = !DILocation(line: 356, column: 22, scope: !1966, inlinedAt: !1989)
!1991 = !DILocation(line: 357, column: 1, scope: !1966, inlinedAt: !1989)
!1992 = !DILocalVariable(name: "__d", arg: 2, scope: !1993, file: !6, line: 1097, type: !252)
!1993 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !748, file: !6, line: 1097, type: !895, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !894, variables: !1994)
!1994 = !{!1995, !1992}
!1995 = !DILocalVariable(name: "this", arg: 1, scope: !1993, type: !1996, flags: DIFlagArtificial | DIFlagObjectPointer)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!1997 = !DILocation(line: 1097, column: 23, scope: !1993, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 39, column: 7, scope: !1881)
!1999 = !DILocation(line: 916, column: 20, scope: !1830, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 1098, column: 18, scope: !1993, inlinedAt: !1998)
!2001 = !DILocation(line: 916, column: 38, scope: !1830, inlinedAt: !2000)
!2002 = !DILocation(line: 918, column: 10, scope: !2003, inlinedAt: !2000)
!2003 = !DILexicalBlockFile(scope: !1830, file: !6, discriminator: 3)
!2004 = !DILocation(line: 1097, column: 23, scope: !1993, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 39, column: 14, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 1)
!2007 = !DILocation(line: 916, column: 20, scope: !1830, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 1098, column: 18, scope: !1993, inlinedAt: !2005)
!2009 = !DILocation(line: 916, column: 38, scope: !1830, inlinedAt: !2008)
!2010 = !DILocation(line: 918, column: 10, scope: !2003, inlinedAt: !2008)
!2011 = !DILocalVariable(name: "this", arg: 1, scope: !2012, type: !2014, flags: DIFlagArtificial | DIFlagObjectPointer)
!2012 = distinct !DISubprogram(name: "get_id", linkageName: "_ZNKSt3__16thread6get_idEv", scope: !1884, file: !42, line: 325, type: !1938, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !1937, variables: !2013)
!2013 = !{!2011}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!2015 = !DILocation(line: 0, scope: !2012, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 41, column: 29, scope: !1881)
!2017 = !DILocation(line: 325, column: 65, scope: !2012, inlinedAt: !2016)
!2018 = !DILocalVariable(name: "__t", arg: 1, scope: !2019, file: !70, line: 332, type: !2022)
!2019 = distinct !DISubprogram(name: "__libcpp_thread_get_id", linkageName: "_ZNSt3__122__libcpp_thread_get_idEPKP17_opaque_pthread_t", scope: !7, file: !70, line: 332, type: !2020, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2024)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1944, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!2024 = !{!2018}
!2025 = !DILocation(line: 332, column: 68, scope: !2019, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 325, column: 41, scope: !2012, inlinedAt: !2016)
!2027 = !DILocation(line: 334, column: 10, scope: !2019, inlinedAt: !2026)
!2028 = !{!2029, !2029, i64 0}
!2029 = !{!"any pointer", !1861, i64 0}
!2030 = !DILocation(line: 41, column: 5, scope: !1881)
!2031 = !DILocation(line: 36, column: 17, scope: !1881)
!2032 = !DILocation(line: 0, scope: !2012, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 42, column: 29, scope: !1881)
!2034 = !DILocation(line: 325, column: 65, scope: !2012, inlinedAt: !2033)
!2035 = !DILocation(line: 332, column: 68, scope: !2019, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 325, column: 41, scope: !2012, inlinedAt: !2033)
!2037 = !DILocation(line: 334, column: 10, scope: !2019, inlinedAt: !2036)
!2038 = !DILocation(line: 42, column: 5, scope: !1881)
!2039 = !DILocation(line: 37, column: 17, scope: !1881)
!2040 = !DILocation(line: 0, scope: !2012, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 43, column: 29, scope: !1881)
!2042 = !DILocation(line: 325, column: 65, scope: !2012, inlinedAt: !2041)
!2043 = !DILocation(line: 332, column: 68, scope: !2019, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 325, column: 41, scope: !2012, inlinedAt: !2041)
!2045 = !DILocation(line: 334, column: 10, scope: !2019, inlinedAt: !2044)
!2046 = !DILocation(line: 43, column: 5, scope: !1881)
!2047 = !DILocation(line: 45, column: 5, scope: !1881)
!2048 = !DILocation(line: 45, column: 5, scope: !2006)
!2049 = !DILocation(line: 45, column: 5, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 2)
!2051 = !DILocation(line: 45, column: 5, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 3)
!2053 = !{!"branch_weights", i32 1, i32 4001}
!2054 = !DILocation(line: 45, column: 5, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 5)
!2056 = !DILocation(line: 45, column: 5, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 6)
!2058 = !DILocation(line: 49, column: 1, scope: !1881)
!2059 = !DILocation(line: 49, column: 1, scope: !2006)
!2060 = !DILocation(line: 49, column: 1, scope: !2050)
!2061 = !DILocation(line: 46, column: 7, scope: !1881)
!2062 = !DILocation(line: 46, column: 17, scope: !2006)
!2063 = !DILocation(line: 46, column: 27, scope: !2050)
!2064 = !DILocation(line: 47, column: 5, scope: !1881)
!2065 = !DILocation(line: 48, column: 5, scope: !1881)
!2066 = !DILocation(line: 48, column: 5, scope: !2006)
!2067 = !DILocation(line: 49, column: 1, scope: !2052)
!2068 = !DILocation(line: 49, column: 1, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 4)
!2070 = !DILocation(line: 49, column: 1, scope: !2057)
!2071 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_", scope: !1884, file: !42, line: 356, type: !1967, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !1970, declaration: !1974, variables: !2072)
!2072 = !{!2073, !2074, !2075, !2078, !2223}
!2073 = !DILocalVariable(name: "this", arg: 1, scope: !2071, type: !1977, flags: DIFlagArtificial | DIFlagObjectPointer)
!2074 = !DILocalVariable(name: "__f", arg: 2, scope: !2071, file: !42, line: 356, type: !1969)
!2075 = !DILocalVariable(name: "__tsp", scope: !2076, file: !42, line: 359, type: !2077)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !42, line: 357, column: 1)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "_TSPtr", file: !42, line: 358, baseType: !30)
!2078 = !DILocalVariable(name: "__p", scope: !2076, file: !42, line: 361, type: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !31, line: 2334, size: 64, elements: !2080, templateParams: !2195, identifier: "_ZTSNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEE")
!2080 = !{!2081, !2164, !2169, !2173, !2176, !2179, !2189, !2200, !2201, !2206, !2211, !2214, !2217, !2220}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__ptr_", scope: !2079, file: !31, line: 2344, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__compressed_pair<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !31, line: 2144, size: 64, elements: !2083, templateParams: !2161, identifier: "_ZTSNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!2083 = !{!2084, !2107, !2142, !2146, !2151, !2154, !2157}
!2084 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2082, baseType: !2085)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> *, 0, false>", scope: !7, file: !31, line: 2076, size: 64, elements: !2086, templateParams: !2105, identifier: "_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EEE")
!2086 = !{!2087, !2088, !2092, !2097}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "__value_", scope: !2085, file: !31, line: 2105, baseType: !18, size: 64, flags: DIFlagPrivate)
!2088 = !DISubprogram(name: "__compressed_pair_elem", scope: !2085, file: !31, line: 2082, type: !2089, isLocal: false, isDefinition: false, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2092 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !2085, file: !31, line: 2101, type: !2093, isLocal: false, isDefinition: false, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!2095, !2091}
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2085, file: !31, line: 2078, baseType: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!2097 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELi0ELb0EE5__getEv", scope: !2085, file: !31, line: 2102, type: !2098, isLocal: false, isDefinition: false, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!2100, !2103}
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2085, file: !31, line: 2079, baseType: !2101)
!2101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2105 = !{!2106, !453, !454}
!2106 = !DITemplateTypeParameter(name: "_Tp", type: !18)
!2107 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2082, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__compressed_pair_elem<std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, 1, true>", scope: !7, file: !31, line: 2109, size: 8, elements: !2109, templateParams: !2140, identifier: "_ZTSNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EEE")
!2109 = !{!2110, !2124, !2128, !2133}
!2110 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2108, baseType: !2111, flags: DIFlagPrivate)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !31, line: 2253, size: 8, elements: !2112, templateParams: !2122, identifier: "_ZTSNSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEE")
!2112 = !{!2113, !2117}
!2113 = !DISubprogram(name: "default_delete", scope: !2111, file: !31, line: 2257, type: !2114, isLocal: false, isDefinition: false, scopeLine: 2257, flags: DIFlagPrototyped, isOptimized: true)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !2116}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2117 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !2111, file: !31, line: 2267, type: !2118, isLocal: false, isDefinition: false, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2120, !18}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2122 = !{!2123}
!2123 = !DITemplateTypeParameter(name: "_Tp", type: !19)
!2124 = !DISubprogram(name: "__compressed_pair_elem", scope: !2108, file: !31, line: 2116, type: !2125, isLocal: false, isDefinition: false, scopeLine: 2116, flags: DIFlagPrototyped, isOptimized: true)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2128 = !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !2108, file: !31, line: 2136, type: !2129, isLocal: false, isDefinition: false, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2131, !2127}
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2108, file: !31, line: 2111, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2111, size: 64)
!2133 = !DISubprogram(name: "__get", linkageName: "_ZNKSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEPFvvEEEEEELi1ELb1EE5__getEv", scope: !2108, file: !31, line: 2137, type: !2134, isLocal: false, isDefinition: false, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2108, file: !31, line: 2112, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2121, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2108)
!2140 = !{!2141, !490, !491}
!2141 = !DITemplateTypeParameter(name: "_Tp", type: !2111)
!2142 = !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !2082, file: !31, line: 2212, type: !2143, isLocal: false, isDefinition: false, scopeLine: 2212, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2095, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2146 = !DISubprogram(name: "first", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE5firstEv", scope: !2082, file: !31, line: 2217, type: !2147, isLocal: false, isDefinition: false, scopeLine: 2217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!2100, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2151 = !DISubprogram(name: "second", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !2082, file: !31, line: 2222, type: !2152, isLocal: false, isDefinition: false, scopeLine: 2222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!2131, !2145}
!2154 = !DISubprogram(name: "second", linkageName: "_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE6secondEv", scope: !2082, file: !31, line: 2227, type: !2155, isLocal: false, isDefinition: false, scopeLine: 2227, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!2136, !2149}
!2157 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEE4swapERSC_", scope: !2082, file: !31, line: 2232, type: !2158, isLocal: false, isDefinition: false, scopeLine: 2232, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !2145, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2082, size: 64)
!2161 = !{!2162, !2163}
!2162 = !DITemplateTypeParameter(name: "_T1", type: !18)
!2163 = !DITemplateTypeParameter(name: "_T2", type: !2111)
!2164 = !DISubprogram(name: "unique_ptr", scope: !2079, file: !31, line: 2427, type: !2165, isLocal: false, isDefinition: false, scopeLine: 2427, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2168 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2079, size: 64)
!2169 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEOSA_", scope: !2079, file: !31, line: 2450, type: !2170, isLocal: false, isDefinition: false, scopeLine: 2450, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2172, !2167, !2168}
!2172 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2079, size: 64)
!2173 = !DISubprogram(name: "~unique_ptr", scope: !2079, file: !31, line: 2539, type: !2174, isLocal: false, isDefinition: false, scopeLine: 2539, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !2167}
!2176 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEaSEDn", scope: !2079, file: !31, line: 2542, type: !2177, isLocal: false, isDefinition: false, scopeLine: 2542, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2172, !2167, !529}
!2179 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEdeEv", scope: !2079, file: !31, line: 2549, type: !2180, isLocal: false, isDefinition: false, scopeLine: 2549, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2182, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2183, file: !536, line: 1084, baseType: !2184)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !536, line: 1083, size: 8, elements: !161, templateParams: !2122, identifier: "_ZTSNSt3__120add_lvalue_referenceINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2185, file: !536, line: 1081, baseType: !702)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_impl<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, true>", scope: !7, file: !536, line: 1081, size: 8, elements: !161, templateParams: !2186, identifier: "_ZTSNSt3__127__add_lvalue_reference_implINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEELb1EEE")
!2186 = !{!2123, !541}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2189 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEptEv", scope: !2079, file: !31, line: 2553, type: !2190, isLocal: false, isDefinition: false, scopeLine: 2553, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !2187}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2079, file: !31, line: 2338, baseType: !2193)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2194, file: !31, line: 1031, baseType: !2197)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> > >", scope: !7, file: !31, line: 1029, size: 8, elements: !161, templateParams: !2195, identifier: "_ZTSNSt3__114__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEENS4_IS9_EEEE")
!2195 = !{!2123, !2196}
!2196 = !DITemplateTypeParameter(name: "_Dp", type: !2111)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2198, file: !31, line: 1023, baseType: !18)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pointer_type<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>, std::__1::default_delete<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >, false>", scope: !554, file: !31, line: 1021, size: 8, elements: !161, templateParams: !2199, identifier: "_ZTSNSt3__118__pointer_type_imp14__pointer_typeINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEENS5_ISA_EELb0EEE")
!2199 = !{!2123, !2196, !556}
!2200 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE3getEv", scope: !2079, file: !31, line: 2557, type: !2190, isLocal: false, isDefinition: false, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2201 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !2079, file: !31, line: 2561, type: !2202, isLocal: false, isDefinition: false, scopeLine: 2561, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!2204, !2167}
!2204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !2079, file: !31, line: 2337, baseType: !2111)
!2206 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE11get_deleterEv", scope: !2079, file: !31, line: 2565, type: !2207, isLocal: false, isDefinition: false, scopeLine: 2565, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!2209, !2187}
!2209 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2211 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEEcvbEv", scope: !2079, file: !31, line: 2569, type: !2212, isLocal: false, isDefinition: false, scopeLine: 2569, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!141, !2187}
!2214 = !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE7releaseEv", scope: !2079, file: !31, line: 2574, type: !2215, isLocal: false, isDefinition: false, scopeLine: 2574, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2192, !2167}
!2217 = !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !2079, file: !31, line: 2581, type: !2218, isLocal: false, isDefinition: false, scopeLine: 2581, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2167, !2192}
!2220 = !DISubprogram(name: "swap", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE4swapERSA_", scope: !2079, file: !31, line: 2589, type: !2221, isLocal: false, isDefinition: false, scopeLine: 2589, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !2167, !2172}
!2223 = !DILocalVariable(name: "__ec", scope: !2076, file: !42, line: 365, type: !252)
!2224 = !DILocation(line: 0, scope: !2071)
!2225 = !DILocation(line: 356, column: 22, scope: !2071)
!2226 = !DILocation(line: 359, column: 18, scope: !2076)
!2227 = !DILocation(line: 359, column: 22, scope: !2076)
!2228 = !DILocation(line: 359, column: 12, scope: !2076)
!2229 = !DILocation(line: 362, column: 13, scope: !2076)
!2230 = !DILocation(line: 363, column: 21, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2076, file: !42, discriminator: 1)
!2232 = !DILocalVariable(name: "__u", arg: 2, scope: !2233, file: !20, line: 728, type: !518)
!2233 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC1IJS5_S7_ELb0ELb0EEEDpOT_", scope: !19, file: !20, line: 728, type: !2234, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2237, declaration: !2240, variables: !2241)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !692, !518, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !616, size: 64)
!2237 = !{!2238, !2239, !556}
!2238 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Up", value: !685)
!2239 = !DITemplateValueParameter(name: "_PackIsTuple", type: !141, value: i8 0)
!2240 = !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", scope: !19, file: !20, line: 728, type: !2234, isLocal: false, isDefinition: false, scopeLine: 728, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !2237)
!2241 = !{!2242, !2232, !2243}
!2242 = !DILocalVariable(name: "this", arg: 1, scope: !2233, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2243 = !DILocalVariable(name: "__u", arg: 3, scope: !2233, file: !20, line: 728, type: !2236)
!2244 = !DILocation(line: 728, column: 24, scope: !2233, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 362, column: 17, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2076, file: !42, discriminator: 2)
!2247 = !DILocalVariable(name: "__u", arg: 2, scope: !2248, file: !20, line: 728, type: !518)
!2248 = distinct !DISubprogram(name: "tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), false, false>", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEC2IJS5_S7_ELb0ELb0EEEDpOT_", scope: !19, file: !20, line: 728, type: !2234, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2237, declaration: !2240, variables: !2249)
!2249 = !{!2250, !2247, !2251}
!2250 = !DILocalVariable(name: "this", arg: 1, scope: !2248, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2251 = !DILocalVariable(name: "__u", arg: 3, scope: !2248, file: !20, line: 728, type: !2236)
!2252 = !DILocation(line: 728, column: 24, scope: !2248, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 742, column: 50, scope: !2233, inlinedAt: !2245)
!2254 = !DILocalVariable(name: "__u", arg: 6, scope: !2255, file: !20, line: 382, type: !518)
!2255 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC1IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !24, file: !20, line: 380, type: !2256, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2265, declaration: !2270, variables: !2271)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !655, !677, !2258, !2259, !2262, !518, !2236}
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !7, file: !678, line: 253, size: 8, elements: !161, templateParams: !738, identifier: "_ZTSNSt3__113__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEE")
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_indices<>", scope: !7, file: !678, line: 90, size: 8, elements: !161, templateParams: !2260, identifier: "_ZTSNSt3__115__tuple_indicesIJEEE")
!2260 = !{!2261}
!2261 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, value: !161)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tuple_types<>", scope: !7, file: !678, line: 253, size: 8, elements: !161, templateParams: !2263, identifier: "_ZTSNSt3__113__tuple_typesIJEEE")
!2263 = !{!2264}
!2264 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !161)
!2265 = !{!2266, !2267, !2268, !2269, !2238}
!2266 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Uf", value: !681)
!2267 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tf", value: !685)
!2268 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ul", value: !161)
!2269 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tl", value: !161)
!2270 = !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", scope: !24, file: !20, line: 380, type: !2256, isLocal: false, isDefinition: false, scopeLine: 380, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2265)
!2271 = !{!2272, !2274, !2275, !2276, !2277, !2254, !2278}
!2272 = !DILocalVariable(name: "this", arg: 1, scope: !2255, type: !2273, flags: DIFlagArtificial | DIFlagObjectPointer)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2274 = !DILocalVariable(arg: 2, scope: !2255, file: !20, line: 380, type: !677)
!2275 = !DILocalVariable(arg: 3, scope: !2255, file: !20, line: 380, type: !2258)
!2276 = !DILocalVariable(arg: 4, scope: !2255, file: !20, line: 381, type: !2259)
!2277 = !DILocalVariable(arg: 5, scope: !2255, file: !20, line: 381, type: !2262)
!2278 = !DILocalVariable(name: "__u", arg: 7, scope: !2255, file: !20, line: 382, type: !2236)
!2279 = !DILocation(line: 382, column: 31, scope: !2255, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 738, column: 15, scope: !2248, inlinedAt: !2253)
!2281 = !DILocalVariable(name: "__u", arg: 6, scope: !2282, file: !20, line: 382, type: !518)
!2282 = distinct !DISubprogram(name: "__tuple_impl<0, 1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)(), std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEEC2IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_", scope: !24, file: !20, line: 380, type: !2256, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2265, declaration: !2270, variables: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2281, !2289}
!2284 = !DILocalVariable(name: "this", arg: 1, scope: !2282, type: !2273, flags: DIFlagArtificial | DIFlagObjectPointer)
!2285 = !DILocalVariable(arg: 2, scope: !2282, file: !20, line: 380, type: !677)
!2286 = !DILocalVariable(arg: 3, scope: !2282, file: !20, line: 380, type: !2258)
!2287 = !DILocalVariable(arg: 4, scope: !2282, file: !20, line: 381, type: !2259)
!2288 = !DILocalVariable(arg: 5, scope: !2282, file: !20, line: 381, type: !2262)
!2289 = !DILocalVariable(name: "__u", arg: 7, scope: !2282, file: !20, line: 382, type: !2236)
!2290 = !DILocation(line: 382, column: 31, scope: !2282, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 387, column: 13, scope: !2255, inlinedAt: !2280)
!2292 = !DILocalVariable(name: "__t", arg: 2, scope: !2293, file: !20, line: 225, type: !518)
!2293 = distinct !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_", scope: !27, file: !20, line: 225, type: !2294, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2296, declaration: !2298, variables: !2299)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !584, !518}
!2296 = !{!2297, !1973}
!2297 = !DITemplateTypeParameter(name: "_Tp", type: !30)
!2298 = !DISubprogram(name: "__tuple_leaf<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void>", scope: !27, file: !20, line: 225, type: !2294, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2296)
!2299 = !{!2300, !2292}
!2300 = !DILocalVariable(name: "this", arg: 1, scope: !2293, type: !2301, flags: DIFlagArtificial | DIFlagObjectPointer)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2302 = !DILocation(line: 225, column: 37, scope: !2293, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 385, column: 13, scope: !2304, inlinedAt: !2291)
!2304 = !DILexicalBlockFile(scope: !2282, file: !20, discriminator: 1)
!2305 = !DILocalVariable(name: "__u", arg: 2, scope: !2306, file: !31, line: 2427, type: !518)
!2306 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_", scope: !30, file: !31, line: 2427, type: !515, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !514, variables: !2307)
!2307 = !{!2308, !2305}
!2308 = !DILocalVariable(name: "this", arg: 1, scope: !2306, type: !2309, flags: DIFlagArtificial | DIFlagObjectPointer)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2310 = !DILocation(line: 2427, column: 27, scope: !2306, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 226, column: 15, scope: !2312, inlinedAt: !2303)
!2312 = !DILexicalBlockFile(scope: !2293, file: !20, discriminator: 1)
!2313 = !DILocalVariable(name: "__u", arg: 2, scope: !2314, file: !31, line: 2427, type: !518)
!2314 = distinct !DISubprogram(name: "unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_", scope: !30, file: !31, line: 2427, type: !515, isLocal: false, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !514, variables: !2315)
!2315 = !{!2316, !2313}
!2316 = !DILocalVariable(name: "this", arg: 1, scope: !2314, type: !2309, flags: DIFlagArtificial | DIFlagObjectPointer)
!2317 = !DILocation(line: 2427, column: 27, scope: !2314, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 2428, column: 80, scope: !2306, inlinedAt: !2311)
!2319 = !DILocalVariable(name: "__t1", arg: 2, scope: !2320, file: !31, line: 2183, type: !2323)
!2320 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_", scope: !34, file: !31, line: 2183, type: !2321, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2325, declaration: !2328, variables: !2329)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !495, !2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !40, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !459, size: 64)
!2325 = !{!2326, !2327}
!2326 = !DITemplateTypeParameter(name: "_U1", type: !40)
!2327 = !DITemplateTypeParameter(name: "_U2", type: !459)
!2328 = !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", scope: !34, file: !31, line: 2183, type: !2321, isLocal: false, isDefinition: false, scopeLine: 2183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true, templateParams: !2325)
!2329 = !{!2330, !2319, !2332}
!2330 = !DILocalVariable(name: "this", arg: 1, scope: !2320, type: !2331, flags: DIFlagArtificial | DIFlagObjectPointer)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2332 = !DILocalVariable(name: "__t2", arg: 3, scope: !2320, file: !31, line: 2183, type: !2324)
!2333 = !DILocation(line: 2183, column: 27, scope: !2320, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 2428, column: 9, scope: !2314, inlinedAt: !2318)
!2335 = !DILocalVariable(name: "__t1", arg: 2, scope: !2336, file: !31, line: 2183, type: !2323)
!2336 = distinct !DISubprogram(name: "__compressed_pair<std::__1::__thread_struct *, std::__1::default_delete<std::__1::__thread_struct> >", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_", scope: !34, file: !31, line: 2183, type: !2321, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2325, declaration: !2328, variables: !2337)
!2337 = !{!2338, !2335, !2339}
!2338 = !DILocalVariable(name: "this", arg: 1, scope: !2336, type: !2331, flags: DIFlagArtificial | DIFlagObjectPointer)
!2339 = !DILocalVariable(name: "__t2", arg: 3, scope: !2336, file: !31, line: 2183, type: !2324)
!2340 = !DILocation(line: 2183, column: 27, scope: !2336, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 2184, column: 74, scope: !2320, inlinedAt: !2334)
!2342 = !DILocalVariable(name: "__u", arg: 2, scope: !2343, file: !31, line: 2088, type: !2323)
!2343 = distinct !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_", scope: !37, file: !31, line: 2088, type: !2344, isLocal: false, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2346, declaration: !2348, variables: !2349)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !437, !2323}
!2346 = !{!2347, !1973}
!2347 = !DITemplateTypeParameter(name: "_Up", type: !40)
!2348 = !DISubprogram(name: "__compressed_pair_elem<std::__1::__thread_struct *, void>", scope: !37, file: !31, line: 2088, type: !2344, isLocal: false, isDefinition: false, scopeLine: 2088, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2346)
!2349 = !{!2350, !2342}
!2350 = !DILocalVariable(name: "this", arg: 1, scope: !2343, type: !2351, flags: DIFlagArtificial | DIFlagObjectPointer)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2352 = !DILocation(line: 2088, column: 32, scope: !2343, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 2184, column: 9, scope: !2354, inlinedAt: !2341)
!2354 = !DILexicalBlockFile(scope: !2336, file: !31, discriminator: 1)
!2355 = !DILocation(line: 2089, column: 9, scope: !2343, inlinedAt: !2353)
!2356 = !{!2357, !2029, i64 0}
!2357 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !2029, i64 0}
!2358 = !DILocation(line: 387, column: 13, scope: !2282, inlinedAt: !2291)
!2359 = !DILocalVariable(name: "__t", arg: 2, scope: !2360, file: !20, line: 225, type: !2236)
!2360 = distinct !DISubprogram(name: "__tuple_leaf<void (*)(), void>", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EEC2IS2_vEEOT_", scope: !613, file: !20, line: 225, type: !2361, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2363, declaration: !2365, variables: !2366)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !623, !2236}
!2363 = !{!2364, !1973}
!2364 = !DITemplateTypeParameter(name: "_Tp", type: !616)
!2365 = !DISubprogram(name: "__tuple_leaf<void (*)(), void>", scope: !613, file: !20, line: 225, type: !2361, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true, templateParams: !2363)
!2366 = !{!2367, !2359}
!2367 = !DILocalVariable(name: "this", arg: 1, scope: !2360, type: !2368, flags: DIFlagArtificial | DIFlagObjectPointer)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2369 = !DILocation(line: 225, column: 37, scope: !2360, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 385, column: 13, scope: !2371, inlinedAt: !2291)
!2371 = !DILexicalBlockFile(scope: !2282, file: !20, discriminator: 3)
!2372 = !DILocation(line: 226, column: 15, scope: !2360, inlinedAt: !2370)
!2373 = !{!2374, !2029, i64 0}
!2374 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !2029, i64 0}
!2375 = !DILocation(line: 361, column: 28, scope: !2076)
!2376 = !DILocation(line: 365, column: 40, scope: !2076)
!2377 = !DILocalVariable(name: "__t", arg: 1, scope: !2378, file: !70, line: 321, type: !2381)
!2378 = distinct !DISubprogram(name: "__libcpp_thread_create", linkageName: "_ZNSt3__122__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_", scope: !7, file: !70, line: 321, type: !2379, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2385)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!252, !2381, !2382, !918}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!918, !918}
!2385 = !{!2377, !2386, !2387}
!2386 = !DILocalVariable(name: "__func", arg: 2, scope: !2378, file: !70, line: 321, type: !2382)
!2387 = !DILocalVariable(name: "__arg", arg: 3, scope: !2378, file: !70, line: 322, type: !918)
!2388 = !DILocation(line: 321, column: 47, scope: !2378, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 365, column: 16, scope: !2076)
!2390 = !DILocation(line: 321, column: 60, scope: !2378, inlinedAt: !2389)
!2391 = !DILocation(line: 322, column: 34, scope: !2378, inlinedAt: !2389)
!2392 = !DILocation(line: 324, column: 10, scope: !2378, inlinedAt: !2389)
!2393 = !DILocation(line: 365, column: 9, scope: !2076)
!2394 = !DILocation(line: 366, column: 14, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2076, file: !42, line: 366, column: 9)
!2396 = !DILocation(line: 366, column: 9, scope: !2076)
!2397 = !DILocalVariable(name: "this", arg: 1, scope: !2398, type: !2400, flags: DIFlagArtificial | DIFlagObjectPointer)
!2398 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev", scope: !2079, file: !31, line: 2539, type: !2174, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2173, variables: !2399)
!2399 = !{!2397}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2401 = !DILocation(line: 0, scope: !2398, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 370, column: 1, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2071, file: !42, discriminator: 5)
!2404 = !DILocalVariable(name: "this", arg: 1, scope: !2405, type: !2400, flags: DIFlagArtificial | DIFlagObjectPointer)
!2405 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED2Ev", scope: !2079, file: !31, line: 2539, type: !2174, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2173, variables: !2406)
!2406 = !{!2404}
!2407 = !DILocation(line: 0, scope: !2405, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 2539, column: 17, scope: !2398, inlinedAt: !2402)
!2409 = !DILocalVariable(name: "this", arg: 1, scope: !2410, type: !2400, flags: DIFlagArtificial | DIFlagObjectPointer)
!2410 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEE5resetEPS8_", scope: !2079, file: !31, line: 2581, type: !2218, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2217, variables: !2411)
!2411 = !{!2409, !2412, !2413}
!2412 = !DILocalVariable(name: "__p", arg: 2, scope: !2410, file: !31, line: 2581, type: !2192)
!2413 = !DILocalVariable(name: "__tmp", scope: !2410, file: !31, line: 2582, type: !2192)
!2414 = !DILocation(line: 0, scope: !2410, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 2539, column: 19, scope: !2416, inlinedAt: !2408)
!2416 = distinct !DILexicalBlock(scope: !2405, file: !31, line: 2539, column: 17)
!2417 = !DILocation(line: 2581, column: 22, scope: !2410, inlinedAt: !2415)
!2418 = !DILocation(line: 2582, column: 13, scope: !2410, inlinedAt: !2415)
!2419 = !DILocalVariable(name: "this", arg: 1, scope: !2420, type: !2309, flags: DIFlagArtificial | DIFlagObjectPointer)
!2420 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev", scope: !30, file: !31, line: 2539, type: !524, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !523, variables: !2421)
!2421 = !{!2419}
!2422 = !DILocation(line: 0, scope: !2420, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 370, column: 1, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2071, file: !42, discriminator: 8)
!2425 = !DILocalVariable(name: "this", arg: 1, scope: !2426, type: !2309, flags: DIFlagArtificial | DIFlagObjectPointer)
!2426 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev", scope: !30, file: !31, line: 2539, type: !524, isLocal: false, isDefinition: true, scopeLine: 2539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !523, variables: !2427)
!2427 = !{!2425}
!2428 = !DILocation(line: 0, scope: !2426, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 2539, column: 17, scope: !2420, inlinedAt: !2423)
!2430 = !DILocalVariable(name: "this", arg: 1, scope: !2431, type: !2309, flags: DIFlagArtificial | DIFlagObjectPointer)
!2431 = distinct !DISubprogram(name: "reset", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_", scope: !30, file: !31, line: 2581, type: !575, isLocal: false, isDefinition: true, scopeLine: 2581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !574, variables: !2432)
!2432 = !{!2430, !2433, !2434}
!2433 = !DILocalVariable(name: "__p", arg: 2, scope: !2431, file: !31, line: 2581, type: !547)
!2434 = !DILocalVariable(name: "__tmp", scope: !2431, file: !31, line: 2582, type: !547)
!2435 = !DILocation(line: 0, scope: !2431, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 2539, column: 19, scope: !2437, inlinedAt: !2429)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !31, line: 2539, column: 17)
!2438 = !DILocation(line: 2581, column: 22, scope: !2431, inlinedAt: !2436)
!2439 = !DILocation(line: 2582, column: 13, scope: !2431, inlinedAt: !2436)
!2440 = !DILocation(line: 370, column: 1, scope: !2403)
!2441 = !DILocation(line: 370, column: 1, scope: !2076)
!2442 = !DILocation(line: 359, column: 18, scope: !2246)
!2443 = !DILocation(line: 370, column: 1, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2076, file: !42, discriminator: 3)
!2445 = !DILocation(line: 369, column: 9, scope: !2395)
!2446 = !DILocation(line: 369, column: 9, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2395, file: !42, discriminator: 1)
!2448 = !DILocation(line: 370, column: 1, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2395, file: !42, discriminator: 4)
!2450 = !DILocation(line: 370, column: 1, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2071, file: !42, discriminator: 4)
!2452 = !DILocation(line: 0, scope: !2398, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 370, column: 1, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2071, file: !42, discriminator: 6)
!2455 = !DILocation(line: 0, scope: !2405, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 2539, column: 17, scope: !2398, inlinedAt: !2453)
!2457 = !DILocation(line: 0, scope: !2410, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 2539, column: 19, scope: !2416, inlinedAt: !2456)
!2459 = !DILocation(line: 2581, column: 22, scope: !2410, inlinedAt: !2458)
!2460 = !DILocation(line: 2581, column: 22, scope: !2431, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 2539, column: 19, scope: !2437, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 2539, column: 17, scope: !2420, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 170, column: 7, scope: !2464, inlinedAt: !2469)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !20, line: 170, column: 7)
!2465 = distinct !DISubprogram(name: "~__tuple_leaf", linkageName: "_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev", scope: !27, file: !20, line: 170, type: !588, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2466, variables: !2467)
!2466 = !DISubprogram(name: "~__tuple_leaf", scope: !27, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!2467 = !{!2468}
!2468 = !DILocalVariable(name: "this", arg: 1, scope: !2465, type: !2301, flags: DIFlagArtificial | DIFlagObjectPointer)
!2469 = distinct !DILocation(line: 369, column: 37, scope: !2470, inlinedAt: !2475)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !20, line: 369, column: 37)
!2471 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED2Ev", scope: !24, file: !20, line: 369, type: !653, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2472, variables: !2473)
!2472 = !DISubprogram(name: "~__tuple_impl", scope: !24, type: !653, isLocal: false, isDefinition: false, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!2473 = !{!2474}
!2474 = !DILocalVariable(name: "this", arg: 1, scope: !2471, type: !2273, flags: DIFlagArtificial | DIFlagObjectPointer)
!2475 = distinct !DILocation(line: 369, column: 37, scope: !2476, inlinedAt: !2479)
!2476 = distinct !DISubprogram(name: "~__tuple_impl", linkageName: "_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEPFvvEEED1Ev", scope: !24, file: !20, line: 369, type: !653, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2472, variables: !2477)
!2477 = !{!2478}
!2478 = !DILocalVariable(name: "this", arg: 1, scope: !2476, type: !2273, flags: DIFlagArtificial | DIFlagObjectPointer)
!2479 = distinct !DILocation(line: 474, column: 28, scope: !2480, inlinedAt: !2487)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !20, line: 474, column: 28)
!2481 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED2Ev", scope: !19, file: !20, line: 474, type: !2482, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2484, variables: !2485)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !692}
!2484 = !DISubprogram(name: "~tuple", scope: !19, type: !2482, isLocal: false, isDefinition: false, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, isOptimized: true)
!2485 = !{!2486}
!2486 = !DILocalVariable(name: "this", arg: 1, scope: !2481, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2487 = distinct !DILocation(line: 474, column: 28, scope: !2488, inlinedAt: !2491)
!2488 = distinct !DISubprogram(name: "~tuple", linkageName: "_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEED1Ev", scope: !19, file: !20, line: 474, type: !2482, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagArtificial | DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2484, variables: !2489)
!2489 = !{!2490}
!2490 = !DILocalVariable(name: "this", arg: 1, scope: !2488, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!2491 = distinct !DILocation(line: 2272, column: 5, scope: !2492, inlinedAt: !2498)
!2492 = !DILexicalBlockFile(scope: !2493, file: !31, discriminator: 1)
!2493 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_", scope: !2111, file: !31, line: 2267, type: !2118, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2117, variables: !2494)
!2494 = !{!2495, !2497}
!2495 = !DILocalVariable(name: "this", arg: 1, scope: !2493, type: !2496, flags: DIFlagArtificial | DIFlagObjectPointer)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2497 = !DILocalVariable(name: "__ptr", arg: 2, scope: !2493, file: !31, line: 2267, type: !18)
!2498 = distinct !DILocation(line: 2585, column: 7, scope: !2499, inlinedAt: !2458)
!2499 = !DILexicalBlockFile(scope: !2500, file: !31, discriminator: 1)
!2500 = distinct !DILexicalBlock(scope: !2410, file: !31, line: 2584, column: 9)
!2501 = !DILocation(line: 2101, column: 40, scope: !2502, inlinedAt: !2505)
!2502 = distinct !DISubprogram(name: "__get", linkageName: "_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv", scope: !37, file: !31, line: 2101, type: !439, isLocal: false, isDefinition: true, scopeLine: 2101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !438, variables: !2503)
!2503 = !{!2504}
!2504 = !DILocalVariable(name: "this", arg: 1, scope: !2502, type: !2351, flags: DIFlagArtificial | DIFlagObjectPointer)
!2505 = distinct !DILocation(line: 2213, column: 40, scope: !2506, inlinedAt: !2509)
!2506 = distinct !DISubprogram(name: "first", linkageName: "_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv", scope: !34, file: !31, line: 2212, type: !493, isLocal: false, isDefinition: true, scopeLine: 2212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !492, variables: !2507)
!2507 = !{!2508}
!2508 = !DILocalVariable(name: "this", arg: 1, scope: !2506, type: !2331, flags: DIFlagArtificial | DIFlagObjectPointer)
!2509 = distinct !DILocation(line: 2582, column: 28, scope: !2431, inlinedAt: !2461)
!2510 = !DILocation(line: 2582, column: 28, scope: !2431, inlinedAt: !2461)
!2511 = !DILocation(line: 2582, column: 13, scope: !2431, inlinedAt: !2461)
!2512 = !DILocation(line: 2583, column: 20, scope: !2431, inlinedAt: !2461)
!2513 = !DILocation(line: 2584, column: 9, scope: !2514, inlinedAt: !2461)
!2514 = distinct !DILexicalBlock(scope: !2431, file: !31, line: 2584, column: 9)
!2515 = !DILocation(line: 2584, column: 9, scope: !2431, inlinedAt: !2461)
!2516 = !DILocalVariable(name: "__ptr", arg: 2, scope: !2517, file: !31, line: 2267, type: !40)
!2517 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_", scope: !459, file: !31, line: 2267, type: !466, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !465, variables: !2518)
!2518 = !{!2519, !2516}
!2519 = !DILocalVariable(name: "this", arg: 1, scope: !2517, type: !2520, flags: DIFlagArtificial | DIFlagObjectPointer)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!2521 = !DILocation(line: 2267, column: 50, scope: !2517, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 2585, column: 7, scope: !2523, inlinedAt: !2461)
!2523 = !DILexicalBlockFile(scope: !2514, file: !31, discriminator: 1)
!2524 = !DILocation(line: 2272, column: 5, scope: !2525, inlinedAt: !2522)
!2525 = !DILexicalBlockFile(scope: !2517, file: !31, discriminator: 1)
!2526 = !DILocation(line: 2272, column: 5, scope: !2527, inlinedAt: !2522)
!2527 = !DILexicalBlockFile(scope: !2517, file: !31, discriminator: 2)
!2528 = !DILocation(line: 2585, column: 7, scope: !2514, inlinedAt: !2461)
!2529 = !DILocation(line: 2272, column: 5, scope: !2530, inlinedAt: !2498)
!2530 = !DILexicalBlockFile(scope: !2493, file: !31, discriminator: 2)
!2531 = !DILocation(line: 0, scope: !2420, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 370, column: 1, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2071, file: !42, discriminator: 7)
!2534 = !DILocation(line: 0, scope: !2426, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 2539, column: 17, scope: !2420, inlinedAt: !2532)
!2536 = !DILocation(line: 0, scope: !2431, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 2539, column: 19, scope: !2437, inlinedAt: !2535)
!2538 = !DILocation(line: 2581, column: 22, scope: !2431, inlinedAt: !2537)
!2539 = !DILocation(line: 2582, column: 13, scope: !2431, inlinedAt: !2537)
!2540 = !DILocation(line: 2584, column: 9, scope: !2431, inlinedAt: !2537)
!2541 = !DILocation(line: 370, column: 1, scope: !2231)
!2542 = !DILocation(line: 2267, column: 50, scope: !2517, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 2585, column: 7, scope: !2523, inlinedAt: !2537)
!2544 = !DILocation(line: 2272, column: 5, scope: !2525, inlinedAt: !2543)
!2545 = !DILocation(line: 2272, column: 5, scope: !2527, inlinedAt: !2543)
!2546 = !DILocation(line: 2585, column: 7, scope: !2514, inlinedAt: !2537)
!2547 = !DILocation(line: 359, column: 18, scope: !2444)
!2548 = distinct !DISubprogram(name: "__thread_proxy<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", linkageName: "_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_", scope: !7, file: !42, line: 343, type: !2383, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2549, variables: !2551)
!2549 = !{!2550}
!2550 = !DITemplateTypeParameter(name: "_Fp", type: !19)
!2551 = !{!2552, !2553}
!2552 = !DILocalVariable(name: "__vp", arg: 1, scope: !2548, file: !42, line: 343, type: !918)
!2553 = !DILocalVariable(name: "__p", scope: !2548, file: !42, line: 346, type: !2079)
!2554 = !DILocation(line: 343, column: 28, scope: !2548)
!2555 = !DILocation(line: 346, column: 26, scope: !2548)
!2556 = !DILocation(line: 347, column: 5, scope: !2548)
!2557 = !DILocation(line: 2101, column: 40, scope: !2502, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 2213, column: 40, scope: !2506, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 2575, column: 26, scope: !2560, inlinedAt: !2564)
!2560 = distinct !DISubprogram(name: "release", linkageName: "_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv", scope: !30, file: !31, line: 2574, type: !572, isLocal: false, isDefinition: true, scopeLine: 2574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !571, variables: !2561)
!2561 = !{!2562, !2563}
!2562 = !DILocalVariable(name: "this", arg: 1, scope: !2560, type: !2309, flags: DIFlagArtificial | DIFlagObjectPointer)
!2563 = !DILocalVariable(name: "__t", scope: !2560, file: !31, line: 2575, type: !547)
!2564 = distinct !DILocation(line: 347, column: 59, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2548, file: !42, discriminator: 3)
!2566 = !DILocation(line: 2575, column: 26, scope: !2560, inlinedAt: !2564)
!2567 = !DILocation(line: 2576, column: 20, scope: !2560, inlinedAt: !2564)
!2568 = !DILocalVariable(name: "this", arg: 1, scope: !2569, type: !2604, flags: DIFlagArtificial | DIFlagObjectPointer)
!2569 = distinct !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !2570, file: !42, line: 194, type: !2600, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !2599, variables: !2602)
!2570 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__thread_specific_ptr<std::__1::__thread_struct>", scope: !7, file: !42, line: 138, size: 64, elements: !2571, templateParams: !470, identifier: "_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE")
!2571 = !{!2572, !2577, !2581, !2586, !2590, !2591, !2592, !2597, !2598, !2599}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "__key_", scope: !2570, file: !42, line: 140, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__libcpp_tls_key", scope: !7, file: !70, line: 75, baseType: !2574)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !2575, line: 30, baseType: !2576)
!2575 = !DIFile(filename: "/usr/include/sys/_pthread/_pthread_key_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_key_t", file: !74, line: 112, baseType: !610)
!2577 = !DISubprogram(name: "__thread_specific_ptr", scope: !2570, file: !42, line: 145, type: !2578, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2581 = !DISubprogram(name: "__thread_specific_ptr", scope: !2570, file: !42, line: 148, type: !2582, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !2580, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2586 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEEaSERKS2_", scope: !2570, file: !42, line: 149, type: !2587, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!2589, !2580, !2584}
!2589 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2570, size: 64)
!2590 = !DISubprogram(name: "__at_thread_exit", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE16__at_thread_exitEPv", scope: !2570, file: !42, line: 151, type: !1144, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true)
!2591 = !DISubprogram(name: "~__thread_specific_ptr", scope: !2570, file: !42, line: 156, type: !2578, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2592 = !DISubprogram(name: "get", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEE3getEv", scope: !2570, file: !42, line: 159, type: !2593, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2570, file: !42, line: 154, baseType: !40)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2597 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEdeEv", scope: !2570, file: !42, line: 161, type: !2593, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2598 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt3__121__thread_specific_ptrINS_15__thread_structEEptEv", scope: !2570, file: !42, line: 163, type: !2593, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2599 = !DISubprogram(name: "set_pointer", linkageName: "_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_", scope: !2570, file: !42, line: 164, type: !2600, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !2580, !2595}
!2602 = !{!2568, !2603}
!2603 = !DILocalVariable(name: "__p", arg: 2, scope: !2569, file: !42, line: 164, type: !2595)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2605 = !DILocation(line: 0, scope: !2569, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 347, column: 27, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2548, file: !42, discriminator: 2)
!2608 = !DILocation(line: 198, column: 22, scope: !2569, inlinedAt: !2606)
!2609 = !{!2610, !2611, i64 0}
!2610 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !2611, i64 0}
!2611 = !{!"long", !1861, i64 0}
!2612 = !DILocalVariable(name: "__key", arg: 1, scope: !2613, file: !70, line: 385, type: !2573)
!2613 = distinct !DISubprogram(name: "__libcpp_tls_set", linkageName: "_ZNSt3__116__libcpp_tls_setEmPv", scope: !7, file: !70, line: 385, type: !2614, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!252, !2573, !918}
!2616 = !{!2612, !2617}
!2617 = !DILocalVariable(name: "__p", arg: 2, scope: !2613, file: !70, line: 385, type: !918)
!2618 = !DILocation(line: 385, column: 39, scope: !2613, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 198, column: 5, scope: !2569, inlinedAt: !2606)
!2620 = !DILocation(line: 385, column: 52, scope: !2613, inlinedAt: !2619)
!2621 = !DILocation(line: 387, column: 12, scope: !2613, inlinedAt: !2619)
!2622 = !DILocation(line: 270, column: 102, scope: !2623, inlinedAt: !2626)
!2623 = distinct !DISubprogram(name: "get", linkageName: "_ZNSt3__112__tuple_leafILm1EPFvvELb0EE3getEv", scope: !613, file: !20, line: 270, type: !640, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !639, variables: !2624)
!2624 = !{!2625}
!2625 = !DILocalVariable(name: "this", arg: 1, scope: !2623, type: !2368, flags: DIFlagArtificial | DIFlagObjectPointer)
!2626 = distinct !DILocation(line: 951, column: 61, scope: !2627, inlinedAt: !2641)
!2627 = distinct !DISubprogram(name: "get<1, std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__13getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_", scope: !7, file: !20, line: 948, type: !2628, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2638, variables: !2639)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!2630, !702}
!2630 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2632, file: !678, line: 463, baseType: !2634)
!2632 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !678, line: 460, size: 8, elements: !161, templateParams: !2633, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!2633 = !{!650, !2123}
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2635, file: !678, line: 289, baseType: !616)
!2635 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple_element<1, std::__1::__tuple_types<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()> >", scope: !7, file: !678, line: 285, size: 8, elements: !161, templateParams: !2636, identifier: "_ZTSNSt3__113tuple_elementILm1ENS_13__tuple_typesIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEE")
!2636 = !{!650, !2637}
!2637 = !DITemplateTypeParameter(name: "_Tp", type: !2258)
!2638 = !{!650, !684}
!2639 = !{!2640}
!2640 = !DILocalVariable(name: "__t", arg: 1, scope: !2627, file: !20, line: 948, type: !702)
!2641 = distinct !DILocation(line: 339, column: 26, scope: !2642, inlinedAt: !2652)
!2642 = distinct !DISubprogram(name: "__thread_execute<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct> >, void (*)()>", linkageName: "_ZNSt3__116__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEJEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE", scope: !7, file: !42, line: 337, type: !2643, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2645, variables: !2649)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !702, !2259}
!2645 = !{!2646, !2647, !1972, !2648}
!2646 = !DITemplateTypeParameter(name: "_TSp", type: !30)
!2647 = !DITemplateTypeParameter(name: "_Fp", type: !616)
!2648 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indices", value: !161)
!2649 = !{!2650, !2651}
!2650 = !DILocalVariable(name: "__t", arg: 1, scope: !2642, file: !42, line: 337, type: !702)
!2651 = !DILocalVariable(arg: 2, scope: !2642, file: !42, line: 337, type: !2259)
!2652 = distinct !DILocation(line: 349, column: 5, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2548, file: !42, discriminator: 1)
!2654 = !DILocalVariable(name: "__f", arg: 1, scope: !2655, file: !536, line: 4322, type: !2236)
!2655 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZNSt3__18__invokeIPFvvEJEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS3_DpOS4_", scope: !7, file: !536, line: 4322, type: !2656, isLocal: false, isDefinition: true, scopeLine: 4323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, templateParams: !2658, variables: !2659)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{null, !2236}
!2658 = !{!2647, !1972}
!2659 = !{!2654}
!2660 = !DILocation(line: 4322, column: 16, scope: !2655, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 339, column: 5, scope: !2662, inlinedAt: !2652)
!2662 = !DILexicalBlockFile(scope: !2642, file: !42, discriminator: 2)
!2663 = !DILocation(line: 4323, column: 1, scope: !2655, inlinedAt: !2661)
!2664 = !DILocation(line: 4323, column: 1, scope: !2665, inlinedAt: !2661)
!2665 = !DILexicalBlockFile(scope: !2655, file: !536, discriminator: 1)
!2666 = !DILocation(line: 0, scope: !2398, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 351, column: 1, scope: !2548)
!2668 = !DILocation(line: 0, scope: !2405, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 2539, column: 17, scope: !2398, inlinedAt: !2667)
!2670 = !DILocation(line: 0, scope: !2410, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 2539, column: 19, scope: !2416, inlinedAt: !2669)
!2672 = !DILocation(line: 2581, column: 22, scope: !2410, inlinedAt: !2671)
!2673 = !DILocation(line: 2581, column: 22, scope: !2431, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 2539, column: 19, scope: !2437, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 2539, column: 17, scope: !2420, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 170, column: 7, scope: !2464, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 369, column: 37, scope: !2470, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 369, column: 37, scope: !2476, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 474, column: 28, scope: !2480, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 474, column: 28, scope: !2488, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 2272, column: 5, scope: !2492, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 2585, column: 7, scope: !2499, inlinedAt: !2671)
!2683 = !DILocation(line: 2582, column: 28, scope: !2431, inlinedAt: !2674)
!2684 = !DILocation(line: 2582, column: 13, scope: !2431, inlinedAt: !2674)
!2685 = !DILocation(line: 2583, column: 20, scope: !2431, inlinedAt: !2674)
!2686 = !DILocation(line: 2584, column: 9, scope: !2514, inlinedAt: !2674)
!2687 = !DILocation(line: 2584, column: 9, scope: !2431, inlinedAt: !2674)
!2688 = !DILocation(line: 2267, column: 50, scope: !2517, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 2585, column: 7, scope: !2523, inlinedAt: !2674)
!2690 = !DILocation(line: 2272, column: 5, scope: !2525, inlinedAt: !2689)
!2691 = !DILocation(line: 2272, column: 5, scope: !2527, inlinedAt: !2689)
!2692 = !DILocation(line: 2585, column: 7, scope: !2514, inlinedAt: !2674)
!2693 = !DILocation(line: 2272, column: 5, scope: !2530, inlinedAt: !2682)
!2694 = !DILocation(line: 351, column: 1, scope: !2548)
!2695 = !DILocation(line: 351, column: 1, scope: !2653)
!2696 = !DILocation(line: 0, scope: !2398, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 351, column: 1, scope: !2653)
!2698 = !DILocation(line: 0, scope: !2405, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 2539, column: 17, scope: !2398, inlinedAt: !2697)
!2700 = !DILocation(line: 0, scope: !2410, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 2539, column: 19, scope: !2416, inlinedAt: !2699)
!2702 = !DILocation(line: 2581, column: 22, scope: !2410, inlinedAt: !2701)
!2703 = !DILocation(line: 2584, column: 9, scope: !2410, inlinedAt: !2701)
!2704 = !DILocation(line: 2584, column: 9, scope: !2500, inlinedAt: !2701)
!2705 = !DILocation(line: 2101, column: 40, scope: !2502, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 2213, column: 40, scope: !2506, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 2582, column: 28, scope: !2431, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 2539, column: 19, scope: !2437, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 2539, column: 17, scope: !2420, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 170, column: 7, scope: !2464, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 369, column: 37, scope: !2470, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 369, column: 37, scope: !2476, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 474, column: 28, scope: !2480, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 474, column: 28, scope: !2488, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 2272, column: 5, scope: !2492, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 2585, column: 7, scope: !2499, inlinedAt: !2701)
!2717 = !DILocation(line: 2581, column: 22, scope: !2431, inlinedAt: !2708)
!2718 = !DILocation(line: 2582, column: 28, scope: !2431, inlinedAt: !2708)
!2719 = !DILocation(line: 2582, column: 13, scope: !2431, inlinedAt: !2708)
!2720 = !DILocation(line: 2583, column: 20, scope: !2431, inlinedAt: !2708)
!2721 = !DILocation(line: 2584, column: 9, scope: !2514, inlinedAt: !2708)
!2722 = !DILocation(line: 2584, column: 9, scope: !2431, inlinedAt: !2708)
!2723 = !DILocation(line: 2267, column: 50, scope: !2517, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 2585, column: 7, scope: !2523, inlinedAt: !2708)
!2725 = !DILocation(line: 2272, column: 5, scope: !2525, inlinedAt: !2724)
!2726 = !DILocation(line: 2272, column: 5, scope: !2527, inlinedAt: !2724)
!2727 = !DILocation(line: 2585, column: 7, scope: !2514, inlinedAt: !2708)
!2728 = !DILocation(line: 2272, column: 5, scope: !2530, inlinedAt: !2716)
!2729 = !DILocation(line: 2585, column: 7, scope: !2500, inlinedAt: !2701)
!2730 = !DILocation(line: 351, column: 1, scope: !2607)
