; ModuleID = 'test.bc'
source_filename = "test.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.0" }
%"struct.std::__1::__atomic_base.0" = type { i8 }
%"struct.std::__1::atomic.1" = type { %"struct.std::__1::__atomic_base.2" }
%"struct.std::__1::__atomic_base.2" = type { %"struct.std::__1::__atomic_base.3" }
%"struct.std::__1::__atomic_base.3" = type { i8 }
%"struct.std::__1::atomic.4" = type { %"struct.std::__1::__atomic_base.5" }
%"struct.std::__1::__atomic_base.5" = type { %"struct.std::__1::__atomic_base.6" }
%"struct.std::__1::__atomic_base.6" = type { i8 }
%"struct.std::__1::atomic.7" = type { %"struct.std::__1::__atomic_base.8" }
%"struct.std::__1::__atomic_base.8" = type { %"struct.std::__1::__atomic_base.9" }
%"struct.std::__1::__atomic_base.9" = type { i16 }
%"struct.std::__1::atomic.10" = type { %"struct.std::__1::__atomic_base.11" }
%"struct.std::__1::__atomic_base.11" = type { %"struct.std::__1::__atomic_base.12" }
%"struct.std::__1::__atomic_base.12" = type { i16 }
%"struct.std::__1::atomic.13" = type { %"struct.std::__1::__atomic_base.14" }
%"struct.std::__1::__atomic_base.14" = type { %"struct.std::__1::__atomic_base.15" }
%"struct.std::__1::__atomic_base.15" = type { i32 }
%"struct.std::__1::atomic.16" = type { %"struct.std::__1::__atomic_base.17" }
%"struct.std::__1::__atomic_base.17" = type { %"struct.std::__1::__atomic_base.18" }
%"struct.std::__1::__atomic_base.18" = type { i64 }
%"struct.std::__1::atomic.19" = type { %"struct.std::__1::__atomic_base.20" }
%"struct.std::__1::__atomic_base.20" = type { %"struct.std::__1::__atomic_base.21" }
%"struct.std::__1::__atomic_base.21" = type { i64 }
%"struct.std::__1::atomic.22" = type { %"struct.std::__1::__atomic_base.23" }
%"struct.std::__1::__atomic_base.23" = type { %"struct.std::__1::__atomic_base.24" }
%"struct.std::__1::__atomic_base.24" = type { i64 }
%"struct.std::__1::atomic.25" = type { %"struct.std::__1::__atomic_base.26" }
%"struct.std::__1::__atomic_base.26" = type { %"struct.std::__1::__atomic_base.27" }
%"struct.std::__1::__atomic_base.27" = type { i64 }
%"struct.std::__1::atomic.28" = type { %"struct.std::__1::__atomic_base.29" }
%"struct.std::__1::__atomic_base.29" = type { %"struct.std::__1::__atomic_base.30" }
%"struct.std::__1::__atomic_base.30" = type { i16 }
%"struct.std::__1::atomic.31" = type { %"struct.std::__1::__atomic_base.32" }
%"struct.std::__1::__atomic_base.32" = type { %"struct.std::__1::__atomic_base.33" }
%"struct.std::__1::__atomic_base.33" = type { i32 }
%"struct.std::__1::atomic.34" = type { %"struct.std::__1::__atomic_base.35" }
%"struct.std::__1::__atomic_base.35" = type { %"struct.std::__1::__atomic_base.36" }
%"struct.std::__1::__atomic_base.36" = type { i32 }
%"struct.std::__1::atomic.37" = type { %"struct.std::__1::__atomic_base.38" }
%"struct.std::__1::__atomic_base.38" = type { %"struct.std::__1::__atomic_base.39" }
%"struct.std::__1::__atomic_base.39" = type { i32 }

@x_char = global %"struct.std::__1::atomic" zeroinitializer, align 1, !dbg !0
@x_signed_char = global %"struct.std::__1::atomic.1" zeroinitializer, align 1, !dbg !18
@x_unsigned_char = global %"struct.std::__1::atomic.4" zeroinitializer, align 1, !dbg !179
@x_short = global %"struct.std::__1::atomic.7" zeroinitializer, align 2, !dbg !335
@x_unsigned_short = global %"struct.std::__1::atomic.10" zeroinitializer, align 2, !dbg !491
@x_unsigned_int = global %"struct.std::__1::atomic.13" zeroinitializer, align 4, !dbg !647
@x_long = global %"struct.std::__1::atomic.16" zeroinitializer, align 8, !dbg !803
@x_unsigned_long = global %"struct.std::__1::atomic.19" zeroinitializer, align 8, !dbg !959
@x_long_long = global %"struct.std::__1::atomic.22" zeroinitializer, align 8, !dbg !1115
@x_unsigned_long_long = global %"struct.std::__1::atomic.25" zeroinitializer, align 8, !dbg !1271
@x_char16_t = global %"struct.std::__1::atomic.28" zeroinitializer, align 2, !dbg !1427
@x_char32_t = global %"struct.std::__1::atomic.31" zeroinitializer, align 4, !dbg !1583
@x_wchar_t = global %"struct.std::__1::atomic.34" zeroinitializer, align 4, !dbg !1739
@x_int8_t = global %"struct.std::__1::atomic.1" zeroinitializer, align 1, !dbg !1895
@x_uint8_t = global %"struct.std::__1::atomic.4" zeroinitializer, align 1, !dbg !1897
@x_int16_t = global %"struct.std::__1::atomic.7" zeroinitializer, align 2, !dbg !1899
@x_uint16_t = global %"struct.std::__1::atomic.10" zeroinitializer, align 2, !dbg !1901
@x_int32_t = global %"struct.std::__1::atomic.37" zeroinitializer, align 4, !dbg !1903
@x_uint32_t = global %"struct.std::__1::atomic.13" zeroinitializer, align 4, !dbg !2054
@x_int64_t = global %"struct.std::__1::atomic.22" zeroinitializer, align 8, !dbg !2056
@x_uint64_t = global %"struct.std::__1::atomic.25" zeroinitializer, align 8, !dbg !2058
@x_int_least8_t = global %"struct.std::__1::atomic.1" zeroinitializer, align 1, !dbg !2060
@x_uint_least8_t = global %"struct.std::__1::atomic.4" zeroinitializer, align 1, !dbg !2062
@x_int_least16_t = global %"struct.std::__1::atomic.7" zeroinitializer, align 2, !dbg !2064
@x_uint_least16_t = global %"struct.std::__1::atomic.10" zeroinitializer, align 2, !dbg !2066
@x_int_least32_t = global %"struct.std::__1::atomic.37" zeroinitializer, align 4, !dbg !2068
@x_uint_least32_t = global %"struct.std::__1::atomic.13" zeroinitializer, align 4, !dbg !2070
@x_int_least64_t = global %"struct.std::__1::atomic.22" zeroinitializer, align 8, !dbg !2072
@x_uint_least64_t = global %"struct.std::__1::atomic.25" zeroinitializer, align 8, !dbg !2074
@x_int_fast8_t = global %"struct.std::__1::atomic.1" zeroinitializer, align 1, !dbg !2076
@x_uint_fast8_t = global %"struct.std::__1::atomic.4" zeroinitializer, align 1, !dbg !2078
@x_int_fast16_t = global %"struct.std::__1::atomic.7" zeroinitializer, align 2, !dbg !2080
@x_uint_fast16_t = global %"struct.std::__1::atomic.10" zeroinitializer, align 2, !dbg !2082
@x_int_fast32_t = global %"struct.std::__1::atomic.37" zeroinitializer, align 4, !dbg !2084
@x_uint_fast32_t = global %"struct.std::__1::atomic.13" zeroinitializer, align 4, !dbg !2086
@x_int_fast64_t = global %"struct.std::__1::atomic.22" zeroinitializer, align 8, !dbg !2088
@x_uint_fast64_t = global %"struct.std::__1::atomic.25" zeroinitializer, align 8, !dbg !2090
@x_intptr_t = global %"struct.std::__1::atomic.16" zeroinitializer, align 8, !dbg !2092
@x_uintptr_t = global %"struct.std::__1::atomic.19" zeroinitializer, align 8, !dbg !2094
@x_size_t = global %"struct.std::__1::atomic.19" zeroinitializer, align 8, !dbg !2096
@x_ptrdiff_t = global %"struct.std::__1::atomic.16" zeroinitializer, align 8, !dbg !2098
@x_intmax_t = global %"struct.std::__1::atomic.16" zeroinitializer, align 8, !dbg !2100
@x_uintmax_t = global %"struct.std::__1::atomic.19" zeroinitializer, align 8, !dbg !2102
@data1 = global i32 0, align 4, !dbg !2104
@data2 = global i32 0, align 4, !dbg !2106
@x = global %"struct.std::__1::atomic.37" zeroinitializer, align 4, !dbg !2108
@y = global %"struct.std::__1::atomic.37" zeroinitializer, align 4, !dbg !2110

; Function Attrs: noinline nounwind ssp uwtable
define void @_Z2f1v() #0 !dbg !3195 {
entry:
  %this.addr.i2 = alloca %"struct.std::__1::__atomic_base.38"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.38"** %this.addr.i2, metadata !3197, metadata !3200), !dbg !3201
  %__op.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__op.addr.i, metadata !3203, metadata !3200), !dbg !3204
  %__m.addr.i3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i3, metadata !3205, metadata !3200), !dbg !3206
  %.atomictmp.i = alloca i32, align 4
  %atomic-temp.i4 = alloca i32, align 4
  %this.addr.i = alloca %"struct.std::__1::__atomic_base.39"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.39"** %this.addr.i, metadata !3207, metadata !3200), !dbg !3210
  %__m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !3212, metadata !3200), !dbg !3213
  %atomic-temp.i = alloca i32, align 4
  store %"struct.std::__1::__atomic_base.39"* getelementptr inbounds (%"struct.std::__1::atomic.37", %"struct.std::__1::atomic.37"* @x, i32 0, i32 0, i32 0), %"struct.std::__1::__atomic_base.39"** %this.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__1::__atomic_base.39"*, %"struct.std::__1::__atomic_base.39"** %this.addr.i, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base.39", %"struct.std::__1::__atomic_base.39"* %this1.i, i32 0, i32 0, !dbg !3214
  %0 = load i32, i32* %__m.addr.i, align 4, !dbg !3215
  switch i32 %0, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ], !dbg !3216

monotonic.i:                                      ; preds = %entry
  %1 = load atomic i32, i32* %__a_.i monotonic, align 4, !dbg !3217
  store i32 %1, i32* %atomic-temp.i, align 4, !dbg !3217
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, !dbg !3217

acquire.i:                                        ; preds = %entry, %entry
  %2 = load atomic i32, i32* %__a_.i acquire, align 4, !dbg !3219
  store i32 %2, i32* %atomic-temp.i, align 4, !dbg !3219
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, !dbg !3219

seqcst.i:                                         ; preds = %entry
  %3 = load atomic i32, i32* %__a_.i seq_cst, align 4, !dbg !3221
  store i32 %3, i32* %atomic-temp.i, align 4, !dbg !3221
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, !dbg !3221

_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %4 = load i32, i32* %atomic-temp.i, align 4, !dbg !3223
  store i32 %4, i32* @data1, align 4, !dbg !3225
  store %"struct.std::__1::__atomic_base.38"* getelementptr inbounds (%"struct.std::__1::atomic.37", %"struct.std::__1::atomic.37"* @y, i32 0, i32 0), %"struct.std::__1::__atomic_base.38"** %this.addr.i2, align 8
  store i32 1, i32* %__op.addr.i, align 4
  store i32 0, i32* %__m.addr.i3, align 4
  %this1.i5 = load %"struct.std::__1::__atomic_base.38"*, %"struct.std::__1::__atomic_base.38"** %this.addr.i2, align 8
  %5 = bitcast %"struct.std::__1::__atomic_base.38"* %this1.i5 to %"struct.std::__1::__atomic_base.39"*, !dbg !3226
  %__a_.i6 = getelementptr inbounds %"struct.std::__1::__atomic_base.39", %"struct.std::__1::__atomic_base.39"* %5, i32 0, i32 0, !dbg !3226
  %6 = load i32, i32* %__m.addr.i3, align 4, !dbg !3227
  %7 = load i32, i32* %__op.addr.i, align 4, !dbg !3228
  store i32 %7, i32* %.atomictmp.i, align 4, !dbg !3229
  switch i32 %6, label %monotonic.i7 [
    i32 1, label %acquire.i8
    i32 2, label %acquire.i8
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i9
  ], !dbg !3229

monotonic.i7:                                     ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %8 = load i32, i32* %.atomictmp.i, align 4, !dbg !3230
  %9 = atomicrmw add i32* %__a_.i6, i32 %8 monotonic, !dbg !3230
  store i32 %9, i32* %atomic-temp.i4, align 4, !dbg !3230
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3230

acquire.i8:                                       ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %10 = load i32, i32* %.atomictmp.i, align 4, !dbg !3232
  %11 = atomicrmw add i32* %__a_.i6, i32 %10 acquire, !dbg !3232
  store i32 %11, i32* %atomic-temp.i4, align 4, !dbg !3232
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3232

release.i:                                        ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %12 = load i32, i32* %.atomictmp.i, align 4, !dbg !3234
  %13 = atomicrmw add i32* %__a_.i6, i32 %12 release, !dbg !3234
  store i32 %13, i32* %atomic-temp.i4, align 4, !dbg !3234
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3234

acqrel.i:                                         ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %14 = load i32, i32* %.atomictmp.i, align 4, !dbg !3236
  %15 = atomicrmw add i32* %__a_.i6, i32 %14 acq_rel, !dbg !3236
  store i32 %15, i32* %atomic-temp.i4, align 4, !dbg !3236
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3236

seqcst.i9:                                        ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %16 = load i32, i32* %.atomictmp.i, align 4, !dbg !3238
  %17 = atomicrmw add i32* %__a_.i6, i32 %16 seq_cst, !dbg !3238
  store i32 %17, i32* %atomic-temp.i4, align 4, !dbg !3238
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3238

_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit: ; preds = %monotonic.i7, %acquire.i8, %release.i, %acqrel.i, %seqcst.i9
  %18 = load i32, i32* %atomic-temp.i4, align 4, !dbg !3240
  ret void, !dbg !3242
}

; Function Attrs: noinline nounwind ssp uwtable
define void @_Z2f2v() #0 !dbg !3243 {
entry:
  %this.addr.i2 = alloca %"struct.std::__1::__atomic_base.38"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.38"** %this.addr.i2, metadata !3197, metadata !3200), !dbg !3244
  %__op.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__op.addr.i, metadata !3203, metadata !3200), !dbg !3246
  %__m.addr.i3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i3, metadata !3205, metadata !3200), !dbg !3247
  %.atomictmp.i = alloca i32, align 4
  %atomic-temp.i4 = alloca i32, align 4
  %this.addr.i = alloca %"struct.std::__1::__atomic_base.39"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.39"** %this.addr.i, metadata !3207, metadata !3200), !dbg !3248
  %__m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !3212, metadata !3200), !dbg !3250
  %atomic-temp.i = alloca i32, align 4
  store %"struct.std::__1::__atomic_base.39"* getelementptr inbounds (%"struct.std::__1::atomic.37", %"struct.std::__1::atomic.37"* @y, i32 0, i32 0, i32 0), %"struct.std::__1::__atomic_base.39"** %this.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__1::__atomic_base.39"*, %"struct.std::__1::__atomic_base.39"** %this.addr.i, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base.39", %"struct.std::__1::__atomic_base.39"* %this1.i, i32 0, i32 0, !dbg !3251
  %0 = load i32, i32* %__m.addr.i, align 4, !dbg !3252
  switch i32 %0, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ], !dbg !3253

monotonic.i:                                      ; preds = %entry
  %1 = load atomic i32, i32* %__a_.i monotonic, align 4, !dbg !3254
  store i32 %1, i32* %atomic-temp.i, align 4, !dbg !3254
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, !dbg !3254

acquire.i:                                        ; preds = %entry, %entry
  %2 = load atomic i32, i32* %__a_.i acquire, align 4, !dbg !3255
  store i32 %2, i32* %atomic-temp.i, align 4, !dbg !3255
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, !dbg !3255

seqcst.i:                                         ; preds = %entry
  %3 = load atomic i32, i32* %__a_.i seq_cst, align 4, !dbg !3256
  store i32 %3, i32* %atomic-temp.i, align 4, !dbg !3256
  br label %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, !dbg !3256

_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %4 = load i32, i32* %atomic-temp.i, align 4, !dbg !3257
  store i32 %4, i32* @data2, align 4, !dbg !3258
  store %"struct.std::__1::__atomic_base.38"* getelementptr inbounds (%"struct.std::__1::atomic.37", %"struct.std::__1::atomic.37"* @x, i32 0, i32 0), %"struct.std::__1::__atomic_base.38"** %this.addr.i2, align 8
  store i32 1, i32* %__op.addr.i, align 4
  store i32 0, i32* %__m.addr.i3, align 4
  %this1.i5 = load %"struct.std::__1::__atomic_base.38"*, %"struct.std::__1::__atomic_base.38"** %this.addr.i2, align 8
  %5 = bitcast %"struct.std::__1::__atomic_base.38"* %this1.i5 to %"struct.std::__1::__atomic_base.39"*, !dbg !3259
  %__a_.i6 = getelementptr inbounds %"struct.std::__1::__atomic_base.39", %"struct.std::__1::__atomic_base.39"* %5, i32 0, i32 0, !dbg !3259
  %6 = load i32, i32* %__m.addr.i3, align 4, !dbg !3260
  %7 = load i32, i32* %__op.addr.i, align 4, !dbg !3261
  store i32 %7, i32* %.atomictmp.i, align 4, !dbg !3262
  switch i32 %6, label %monotonic.i7 [
    i32 1, label %acquire.i8
    i32 2, label %acquire.i8
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i9
  ], !dbg !3262

monotonic.i7:                                     ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %8 = load i32, i32* %.atomictmp.i, align 4, !dbg !3263
  %9 = atomicrmw add i32* %__a_.i6, i32 %8 monotonic, !dbg !3263
  store i32 %9, i32* %atomic-temp.i4, align 4, !dbg !3263
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3263

acquire.i8:                                       ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit, %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %10 = load i32, i32* %.atomictmp.i, align 4, !dbg !3264
  %11 = atomicrmw add i32* %__a_.i6, i32 %10 acquire, !dbg !3264
  store i32 %11, i32* %atomic-temp.i4, align 4, !dbg !3264
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3264

release.i:                                        ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %12 = load i32, i32* %.atomictmp.i, align 4, !dbg !3265
  %13 = atomicrmw add i32* %__a_.i6, i32 %12 release, !dbg !3265
  store i32 %13, i32* %atomic-temp.i4, align 4, !dbg !3265
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3265

acqrel.i:                                         ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %14 = load i32, i32* %.atomictmp.i, align 4, !dbg !3266
  %15 = atomicrmw add i32* %__a_.i6, i32 %14 acq_rel, !dbg !3266
  store i32 %15, i32* %atomic-temp.i4, align 4, !dbg !3266
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3266

seqcst.i9:                                        ; preds = %_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE.exit
  %16 = load i32, i32* %.atomictmp.i, align 4, !dbg !3267
  %17 = atomicrmw add i32* %__a_.i6, i32 %16 seq_cst, !dbg !3267
  store i32 %17, i32* %atomic-temp.i4, align 4, !dbg !3267
  br label %_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit, !dbg !3267

_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE.exit: ; preds = %monotonic.i7, %acquire.i8, %release.i, %acqrel.i, %seqcst.i9
  %18 = load i32, i32* %atomic-temp.i4, align 4, !dbg !3268
  ret void, !dbg !3269
}

; Function Attrs: noinline norecurse nounwind ssp uwtable
define i32 @main() #1 !dbg !3270 {
entry:
  %this.addr.i174 = alloca %"struct.std::__1::__atomic_base.2"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.2"** %this.addr.i174, metadata !3271, metadata !3200), !dbg !3274
  %__op.addr.i175 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__op.addr.i175, metadata !3276, metadata !3200), !dbg !3277
  %__m.addr.i176 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i176, metadata !3278, metadata !3200), !dbg !3279
  %.atomictmp.i177 = alloca i8, align 1
  %atomic-temp.i178 = alloca i8, align 1
  %this.addr.i162 = alloca %"struct.std::__1::__atomic_base.5"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.5"** %this.addr.i162, metadata !3280, metadata !3200), !dbg !3283
  %__op.addr.i163 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__op.addr.i163, metadata !3285, metadata !3200), !dbg !3286
  %__m.addr.i164 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i164, metadata !3287, metadata !3200), !dbg !3288
  %.atomictmp.i165 = alloca i8, align 1
  %atomic-temp.i166 = alloca i8, align 1
  %this.addr.i150 = alloca %"struct.std::__1::__atomic_base.8"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.8"** %this.addr.i150, metadata !3289, metadata !3200), !dbg !3292
  %__op.addr.i151 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %__op.addr.i151, metadata !3294, metadata !3200), !dbg !3295
  %__m.addr.i152 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i152, metadata !3296, metadata !3200), !dbg !3297
  %.atomictmp.i153 = alloca i16, align 2
  %atomic-temp.i154 = alloca i16, align 2
  %this.addr.i138 = alloca %"struct.std::__1::__atomic_base.11"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.11"** %this.addr.i138, metadata !3298, metadata !3200), !dbg !3301
  %__op.addr.i139 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %__op.addr.i139, metadata !3303, metadata !3200), !dbg !3304
  %__m.addr.i140 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i140, metadata !3305, metadata !3200), !dbg !3306
  %.atomictmp.i141 = alloca i16, align 2
  %atomic-temp.i142 = alloca i16, align 2
  %this.addr.i126 = alloca %"struct.std::__1::__atomic_base.14"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.14"** %this.addr.i126, metadata !3307, metadata !3200), !dbg !3310
  %__op.addr.i127 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__op.addr.i127, metadata !3312, metadata !3200), !dbg !3313
  %__m.addr.i128 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i128, metadata !3314, metadata !3200), !dbg !3315
  %.atomictmp.i129 = alloca i32, align 4
  %atomic-temp.i130 = alloca i32, align 4
  %this.addr.i113 = alloca %"struct.std::__1::__atomic_base.17"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.17"** %this.addr.i113, metadata !3316, metadata !3200), !dbg !3319
  %__op.addr.i114 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__op.addr.i114, metadata !3321, metadata !3200), !dbg !3322
  %__m.addr.i115 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i115, metadata !3323, metadata !3200), !dbg !3324
  %.atomictmp.i116 = alloca i64, align 8
  %atomic-temp.i117 = alloca i64, align 8
  %this.addr.i100 = alloca %"struct.std::__1::__atomic_base.20"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.20"** %this.addr.i100, metadata !3325, metadata !3200), !dbg !3328
  %__op.addr.i101 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__op.addr.i101, metadata !3330, metadata !3200), !dbg !3331
  %__m.addr.i102 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i102, metadata !3332, metadata !3200), !dbg !3333
  %.atomictmp.i103 = alloca i64, align 8
  %atomic-temp.i104 = alloca i64, align 8
  %this.addr.i87 = alloca %"struct.std::__1::__atomic_base.23"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.23"** %this.addr.i87, metadata !3334, metadata !3200), !dbg !3337
  %__op.addr.i88 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__op.addr.i88, metadata !3339, metadata !3200), !dbg !3340
  %__m.addr.i89 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i89, metadata !3341, metadata !3200), !dbg !3342
  %.atomictmp.i90 = alloca i64, align 8
  %atomic-temp.i91 = alloca i64, align 8
  %this.addr.i75 = alloca %"struct.std::__1::__atomic_base.29"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.29"** %this.addr.i75, metadata !3343, metadata !3200), !dbg !3346
  %__op.addr.i76 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %__op.addr.i76, metadata !3348, metadata !3200), !dbg !3349
  %__m.addr.i77 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i77, metadata !3350, metadata !3200), !dbg !3351
  %.atomictmp.i78 = alloca i16, align 2
  %atomic-temp.i79 = alloca i16, align 2
  %this.addr.i63 = alloca %"struct.std::__1::__atomic_base.32"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.32"** %this.addr.i63, metadata !3352, metadata !3200), !dbg !3355
  %__op.addr.i64 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__op.addr.i64, metadata !3357, metadata !3200), !dbg !3358
  %__m.addr.i65 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i65, metadata !3359, metadata !3200), !dbg !3360
  %.atomictmp.i66 = alloca i32, align 4
  %atomic-temp.i67 = alloca i32, align 4
  %this.addr.i51 = alloca %"struct.std::__1::__atomic_base.35"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.35"** %this.addr.i51, metadata !3361, metadata !3200), !dbg !3364
  %__op.addr.i52 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__op.addr.i52, metadata !3366, metadata !3200), !dbg !3367
  %__m.addr.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i53, metadata !3368, metadata !3200), !dbg !3369
  %.atomictmp.i54 = alloca i32, align 4
  %atomic-temp.i55 = alloca i32, align 4
  %this.addr.i39 = alloca %"struct.std::__1::__atomic_base.23"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.23"** %this.addr.i39, metadata !3334, metadata !3200), !dbg !3370
  %__op.addr.i40 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__op.addr.i40, metadata !3339, metadata !3200), !dbg !3372
  %__m.addr.i41 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i41, metadata !3341, metadata !3200), !dbg !3373
  %.atomictmp.i42 = alloca i64, align 8
  %atomic-temp.i43 = alloca i64, align 8
  %this.addr.i27 = alloca %"struct.std::__1::__atomic_base.17"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.17"** %this.addr.i27, metadata !3316, metadata !3200), !dbg !3374
  %__op.addr.i28 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__op.addr.i28, metadata !3321, metadata !3200), !dbg !3376
  %__m.addr.i29 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i29, metadata !3323, metadata !3200), !dbg !3377
  %.atomictmp.i30 = alloca i64, align 8
  %atomic-temp.i31 = alloca i64, align 8
  %this.addr.i15 = alloca %"struct.std::__1::__atomic_base.20"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base.20"** %this.addr.i15, metadata !3325, metadata !3200), !dbg !3378
  %__op.addr.i16 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__op.addr.i16, metadata !3330, metadata !3200), !dbg !3380
  %__m.addr.i17 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i17, metadata !3332, metadata !3200), !dbg !3381
  %.atomictmp.i18 = alloca i64, align 8
  %atomic-temp.i19 = alloca i64, align 8
  %this.addr.i = alloca %"struct.std::__1::__atomic_base"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base"** %this.addr.i, metadata !3382, metadata !3200), !dbg !3385
  %__op.addr.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__op.addr.i, metadata !3387, metadata !3200), !dbg !3388
  %__m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !3389, metadata !3200), !dbg !3390
  %.atomictmp.i = alloca i8, align 1
  %atomic-temp.i = alloca i8, align 1
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store %"struct.std::__1::__atomic_base"* getelementptr inbounds (%"struct.std::__1::atomic", %"struct.std::__1::atomic"* @x_char, i32 0, i32 0), %"struct.std::__1::__atomic_base"** %this.addr.i, align 8
  store i8 1, i8* %__op.addr.i, align 1
  store i32 0, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %this.addr.i, align 8
  %0 = bitcast %"struct.std::__1::__atomic_base"* %this1.i to %"struct.std::__1::__atomic_base.0"*, !dbg !3391
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base.0", %"struct.std::__1::__atomic_base.0"* %0, i32 0, i32 0, !dbg !3391
  %1 = load i32, i32* %__m.addr.i, align 4, !dbg !3392
  %2 = load i8, i8* %__op.addr.i, align 1, !dbg !3393
  store i8 %2, i8* %.atomictmp.i, align 1, !dbg !3394
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 3, label %release.i
    i32 4, label %acqrel.i
    i32 5, label %seqcst.i
  ], !dbg !3394

monotonic.i:                                      ; preds = %entry
  %3 = load i8, i8* %.atomictmp.i, align 1, !dbg !3395
  %4 = atomicrmw add i8* %__a_.i, i8 %3 monotonic, !dbg !3395
  store i8 %4, i8* %atomic-temp.i, align 1, !dbg !3395
  br label %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit, !dbg !3395

acquire.i:                                        ; preds = %entry, %entry
  %5 = load i8, i8* %.atomictmp.i, align 1, !dbg !3397
  %6 = atomicrmw add i8* %__a_.i, i8 %5 acquire, !dbg !3397
  store i8 %6, i8* %atomic-temp.i, align 1, !dbg !3397
  br label %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit, !dbg !3397

release.i:                                        ; preds = %entry
  %7 = load i8, i8* %.atomictmp.i, align 1, !dbg !3399
  %8 = atomicrmw add i8* %__a_.i, i8 %7 release, !dbg !3399
  store i8 %8, i8* %atomic-temp.i, align 1, !dbg !3399
  br label %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit, !dbg !3399

acqrel.i:                                         ; preds = %entry
  %9 = load i8, i8* %.atomictmp.i, align 1, !dbg !3401
  %10 = atomicrmw add i8* %__a_.i, i8 %9 acq_rel, !dbg !3401
  store i8 %10, i8* %atomic-temp.i, align 1, !dbg !3401
  br label %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit, !dbg !3401

seqcst.i:                                         ; preds = %entry
  %11 = load i8, i8* %.atomictmp.i, align 1, !dbg !3403
  %12 = atomicrmw add i8* %__a_.i, i8 %11 seq_cst, !dbg !3403
  store i8 %12, i8* %atomic-temp.i, align 1, !dbg !3403
  br label %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit, !dbg !3403

_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit: ; preds = %monotonic.i, %acquire.i, %release.i, %acqrel.i, %seqcst.i
  %13 = load i8, i8* %atomic-temp.i, align 1, !dbg !3405
  store %"struct.std::__1::__atomic_base.2"* getelementptr inbounds (%"struct.std::__1::atomic.1", %"struct.std::__1::atomic.1"* @x_signed_char, i32 0, i32 0), %"struct.std::__1::__atomic_base.2"** %this.addr.i174, align 8
  store i8 1, i8* %__op.addr.i175, align 1
  store i32 0, i32* %__m.addr.i176, align 4
  %this1.i179 = load %"struct.std::__1::__atomic_base.2"*, %"struct.std::__1::__atomic_base.2"** %this.addr.i174, align 8
  %14 = bitcast %"struct.std::__1::__atomic_base.2"* %this1.i179 to %"struct.std::__1::__atomic_base.3"*, !dbg !3407
  %__a_.i180 = getelementptr inbounds %"struct.std::__1::__atomic_base.3", %"struct.std::__1::__atomic_base.3"* %14, i32 0, i32 0, !dbg !3407
  %15 = load i32, i32* %__m.addr.i176, align 4, !dbg !3408
  %16 = load i8, i8* %__op.addr.i175, align 1, !dbg !3409
  store i8 %16, i8* %.atomictmp.i177, align 1, !dbg !3410
  switch i32 %15, label %monotonic.i181 [
    i32 1, label %acquire.i182
    i32 2, label %acquire.i182
    i32 3, label %release.i183
    i32 4, label %acqrel.i184
    i32 5, label %seqcst.i185
  ], !dbg !3410

monotonic.i181:                                   ; preds = %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit
  %17 = load i8, i8* %.atomictmp.i177, align 1, !dbg !3411
  %18 = atomicrmw add i8* %__a_.i180, i8 %17 monotonic, !dbg !3411
  store i8 %18, i8* %atomic-temp.i178, align 1, !dbg !3411
  br label %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit, !dbg !3411

acquire.i182:                                     ; preds = %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit
  %19 = load i8, i8* %.atomictmp.i177, align 1, !dbg !3413
  %20 = atomicrmw add i8* %__a_.i180, i8 %19 acquire, !dbg !3413
  store i8 %20, i8* %atomic-temp.i178, align 1, !dbg !3413
  br label %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit, !dbg !3413

release.i183:                                     ; preds = %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit
  %21 = load i8, i8* %.atomictmp.i177, align 1, !dbg !3415
  %22 = atomicrmw add i8* %__a_.i180, i8 %21 release, !dbg !3415
  store i8 %22, i8* %atomic-temp.i178, align 1, !dbg !3415
  br label %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit, !dbg !3415

acqrel.i184:                                      ; preds = %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit
  %23 = load i8, i8* %.atomictmp.i177, align 1, !dbg !3417
  %24 = atomicrmw add i8* %__a_.i180, i8 %23 acq_rel, !dbg !3417
  store i8 %24, i8* %atomic-temp.i178, align 1, !dbg !3417
  br label %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit, !dbg !3417

seqcst.i185:                                      ; preds = %_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE.exit
  %25 = load i8, i8* %.atomictmp.i177, align 1, !dbg !3419
  %26 = atomicrmw add i8* %__a_.i180, i8 %25 seq_cst, !dbg !3419
  store i8 %26, i8* %atomic-temp.i178, align 1, !dbg !3419
  br label %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit, !dbg !3419

_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit: ; preds = %monotonic.i181, %acquire.i182, %release.i183, %acqrel.i184, %seqcst.i185
  %27 = load i8, i8* %atomic-temp.i178, align 1, !dbg !3421
  store %"struct.std::__1::__atomic_base.5"* getelementptr inbounds (%"struct.std::__1::atomic.4", %"struct.std::__1::atomic.4"* @x_unsigned_char, i32 0, i32 0), %"struct.std::__1::__atomic_base.5"** %this.addr.i162, align 8
  store i8 1, i8* %__op.addr.i163, align 1
  store i32 0, i32* %__m.addr.i164, align 4
  %this1.i167 = load %"struct.std::__1::__atomic_base.5"*, %"struct.std::__1::__atomic_base.5"** %this.addr.i162, align 8
  %28 = bitcast %"struct.std::__1::__atomic_base.5"* %this1.i167 to %"struct.std::__1::__atomic_base.6"*, !dbg !3423
  %__a_.i168 = getelementptr inbounds %"struct.std::__1::__atomic_base.6", %"struct.std::__1::__atomic_base.6"* %28, i32 0, i32 0, !dbg !3423
  %29 = load i32, i32* %__m.addr.i164, align 4, !dbg !3424
  %30 = load i8, i8* %__op.addr.i163, align 1, !dbg !3425
  store i8 %30, i8* %.atomictmp.i165, align 1, !dbg !3426
  switch i32 %29, label %monotonic.i169 [
    i32 1, label %acquire.i170
    i32 2, label %acquire.i170
    i32 3, label %release.i171
    i32 4, label %acqrel.i172
    i32 5, label %seqcst.i173
  ], !dbg !3426

monotonic.i169:                                   ; preds = %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit
  %31 = load i8, i8* %.atomictmp.i165, align 1, !dbg !3427
  %32 = atomicrmw add i8* %__a_.i168, i8 %31 monotonic, !dbg !3427
  store i8 %32, i8* %atomic-temp.i166, align 1, !dbg !3427
  br label %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit, !dbg !3427

acquire.i170:                                     ; preds = %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit
  %33 = load i8, i8* %.atomictmp.i165, align 1, !dbg !3429
  %34 = atomicrmw add i8* %__a_.i168, i8 %33 acquire, !dbg !3429
  store i8 %34, i8* %atomic-temp.i166, align 1, !dbg !3429
  br label %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit, !dbg !3429

release.i171:                                     ; preds = %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit
  %35 = load i8, i8* %.atomictmp.i165, align 1, !dbg !3431
  %36 = atomicrmw add i8* %__a_.i168, i8 %35 release, !dbg !3431
  store i8 %36, i8* %atomic-temp.i166, align 1, !dbg !3431
  br label %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit, !dbg !3431

acqrel.i172:                                      ; preds = %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit
  %37 = load i8, i8* %.atomictmp.i165, align 1, !dbg !3433
  %38 = atomicrmw add i8* %__a_.i168, i8 %37 acq_rel, !dbg !3433
  store i8 %38, i8* %atomic-temp.i166, align 1, !dbg !3433
  br label %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit, !dbg !3433

seqcst.i173:                                      ; preds = %_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE.exit
  %39 = load i8, i8* %.atomictmp.i165, align 1, !dbg !3435
  %40 = atomicrmw add i8* %__a_.i168, i8 %39 seq_cst, !dbg !3435
  store i8 %40, i8* %atomic-temp.i166, align 1, !dbg !3435
  br label %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit, !dbg !3435

_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit: ; preds = %monotonic.i169, %acquire.i170, %release.i171, %acqrel.i172, %seqcst.i173
  %41 = load i8, i8* %atomic-temp.i166, align 1, !dbg !3437
  store %"struct.std::__1::__atomic_base.8"* getelementptr inbounds (%"struct.std::__1::atomic.7", %"struct.std::__1::atomic.7"* @x_short, i32 0, i32 0), %"struct.std::__1::__atomic_base.8"** %this.addr.i150, align 8
  store i16 1, i16* %__op.addr.i151, align 2
  store i32 0, i32* %__m.addr.i152, align 4
  %this1.i155 = load %"struct.std::__1::__atomic_base.8"*, %"struct.std::__1::__atomic_base.8"** %this.addr.i150, align 8
  %42 = bitcast %"struct.std::__1::__atomic_base.8"* %this1.i155 to %"struct.std::__1::__atomic_base.9"*, !dbg !3439
  %__a_.i156 = getelementptr inbounds %"struct.std::__1::__atomic_base.9", %"struct.std::__1::__atomic_base.9"* %42, i32 0, i32 0, !dbg !3439
  %43 = load i32, i32* %__m.addr.i152, align 4, !dbg !3440
  %44 = load i16, i16* %__op.addr.i151, align 2, !dbg !3441
  store i16 %44, i16* %.atomictmp.i153, align 2, !dbg !3442
  switch i32 %43, label %monotonic.i157 [
    i32 1, label %acquire.i158
    i32 2, label %acquire.i158
    i32 3, label %release.i159
    i32 4, label %acqrel.i160
    i32 5, label %seqcst.i161
  ], !dbg !3442

monotonic.i157:                                   ; preds = %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit
  %45 = load i16, i16* %.atomictmp.i153, align 2, !dbg !3443
  %46 = atomicrmw add i16* %__a_.i156, i16 %45 monotonic, !dbg !3443
  store i16 %46, i16* %atomic-temp.i154, align 2, !dbg !3443
  br label %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit, !dbg !3443

acquire.i158:                                     ; preds = %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit
  %47 = load i16, i16* %.atomictmp.i153, align 2, !dbg !3445
  %48 = atomicrmw add i16* %__a_.i156, i16 %47 acquire, !dbg !3445
  store i16 %48, i16* %atomic-temp.i154, align 2, !dbg !3445
  br label %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit, !dbg !3445

release.i159:                                     ; preds = %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit
  %49 = load i16, i16* %.atomictmp.i153, align 2, !dbg !3447
  %50 = atomicrmw add i16* %__a_.i156, i16 %49 release, !dbg !3447
  store i16 %50, i16* %atomic-temp.i154, align 2, !dbg !3447
  br label %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit, !dbg !3447

acqrel.i160:                                      ; preds = %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit
  %51 = load i16, i16* %.atomictmp.i153, align 2, !dbg !3449
  %52 = atomicrmw add i16* %__a_.i156, i16 %51 acq_rel, !dbg !3449
  store i16 %52, i16* %atomic-temp.i154, align 2, !dbg !3449
  br label %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit, !dbg !3449

seqcst.i161:                                      ; preds = %_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE.exit
  %53 = load i16, i16* %.atomictmp.i153, align 2, !dbg !3451
  %54 = atomicrmw add i16* %__a_.i156, i16 %53 seq_cst, !dbg !3451
  store i16 %54, i16* %atomic-temp.i154, align 2, !dbg !3451
  br label %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit, !dbg !3451

_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit: ; preds = %monotonic.i157, %acquire.i158, %release.i159, %acqrel.i160, %seqcst.i161
  %55 = load i16, i16* %atomic-temp.i154, align 2, !dbg !3453
  store %"struct.std::__1::__atomic_base.11"* getelementptr inbounds (%"struct.std::__1::atomic.10", %"struct.std::__1::atomic.10"* @x_unsigned_short, i32 0, i32 0), %"struct.std::__1::__atomic_base.11"** %this.addr.i138, align 8
  store i16 1, i16* %__op.addr.i139, align 2
  store i32 0, i32* %__m.addr.i140, align 4
  %this1.i143 = load %"struct.std::__1::__atomic_base.11"*, %"struct.std::__1::__atomic_base.11"** %this.addr.i138, align 8
  %56 = bitcast %"struct.std::__1::__atomic_base.11"* %this1.i143 to %"struct.std::__1::__atomic_base.12"*, !dbg !3455
  %__a_.i144 = getelementptr inbounds %"struct.std::__1::__atomic_base.12", %"struct.std::__1::__atomic_base.12"* %56, i32 0, i32 0, !dbg !3455
  %57 = load i32, i32* %__m.addr.i140, align 4, !dbg !3456
  %58 = load i16, i16* %__op.addr.i139, align 2, !dbg !3457
  store i16 %58, i16* %.atomictmp.i141, align 2, !dbg !3458
  switch i32 %57, label %monotonic.i145 [
    i32 1, label %acquire.i146
    i32 2, label %acquire.i146
    i32 3, label %release.i147
    i32 4, label %acqrel.i148
    i32 5, label %seqcst.i149
  ], !dbg !3458

monotonic.i145:                                   ; preds = %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit
  %59 = load i16, i16* %.atomictmp.i141, align 2, !dbg !3459
  %60 = atomicrmw add i16* %__a_.i144, i16 %59 monotonic, !dbg !3459
  store i16 %60, i16* %atomic-temp.i142, align 2, !dbg !3459
  br label %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit, !dbg !3459

acquire.i146:                                     ; preds = %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit
  %61 = load i16, i16* %.atomictmp.i141, align 2, !dbg !3461
  %62 = atomicrmw add i16* %__a_.i144, i16 %61 acquire, !dbg !3461
  store i16 %62, i16* %atomic-temp.i142, align 2, !dbg !3461
  br label %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit, !dbg !3461

release.i147:                                     ; preds = %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit
  %63 = load i16, i16* %.atomictmp.i141, align 2, !dbg !3463
  %64 = atomicrmw add i16* %__a_.i144, i16 %63 release, !dbg !3463
  store i16 %64, i16* %atomic-temp.i142, align 2, !dbg !3463
  br label %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit, !dbg !3463

acqrel.i148:                                      ; preds = %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit
  %65 = load i16, i16* %.atomictmp.i141, align 2, !dbg !3465
  %66 = atomicrmw add i16* %__a_.i144, i16 %65 acq_rel, !dbg !3465
  store i16 %66, i16* %atomic-temp.i142, align 2, !dbg !3465
  br label %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit, !dbg !3465

seqcst.i149:                                      ; preds = %_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE.exit
  %67 = load i16, i16* %.atomictmp.i141, align 2, !dbg !3467
  %68 = atomicrmw add i16* %__a_.i144, i16 %67 seq_cst, !dbg !3467
  store i16 %68, i16* %atomic-temp.i142, align 2, !dbg !3467
  br label %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit, !dbg !3467

_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit: ; preds = %monotonic.i145, %acquire.i146, %release.i147, %acqrel.i148, %seqcst.i149
  %69 = load i16, i16* %atomic-temp.i142, align 2, !dbg !3469
  store %"struct.std::__1::__atomic_base.14"* getelementptr inbounds (%"struct.std::__1::atomic.13", %"struct.std::__1::atomic.13"* @x_unsigned_int, i32 0, i32 0), %"struct.std::__1::__atomic_base.14"** %this.addr.i126, align 8
  store i32 1, i32* %__op.addr.i127, align 4
  store i32 0, i32* %__m.addr.i128, align 4
  %this1.i131 = load %"struct.std::__1::__atomic_base.14"*, %"struct.std::__1::__atomic_base.14"** %this.addr.i126, align 8
  %70 = bitcast %"struct.std::__1::__atomic_base.14"* %this1.i131 to %"struct.std::__1::__atomic_base.15"*, !dbg !3471
  %__a_.i132 = getelementptr inbounds %"struct.std::__1::__atomic_base.15", %"struct.std::__1::__atomic_base.15"* %70, i32 0, i32 0, !dbg !3471
  %71 = load i32, i32* %__m.addr.i128, align 4, !dbg !3472
  %72 = load i32, i32* %__op.addr.i127, align 4, !dbg !3473
  store i32 %72, i32* %.atomictmp.i129, align 4, !dbg !3474
  switch i32 %71, label %monotonic.i133 [
    i32 1, label %acquire.i134
    i32 2, label %acquire.i134
    i32 3, label %release.i135
    i32 4, label %acqrel.i136
    i32 5, label %seqcst.i137
  ], !dbg !3474

monotonic.i133:                                   ; preds = %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit
  %73 = load i32, i32* %.atomictmp.i129, align 4, !dbg !3475
  %74 = atomicrmw add i32* %__a_.i132, i32 %73 monotonic, !dbg !3475
  store i32 %74, i32* %atomic-temp.i130, align 4, !dbg !3475
  br label %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit, !dbg !3475

acquire.i134:                                     ; preds = %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit
  %75 = load i32, i32* %.atomictmp.i129, align 4, !dbg !3477
  %76 = atomicrmw add i32* %__a_.i132, i32 %75 acquire, !dbg !3477
  store i32 %76, i32* %atomic-temp.i130, align 4, !dbg !3477
  br label %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit, !dbg !3477

release.i135:                                     ; preds = %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit
  %77 = load i32, i32* %.atomictmp.i129, align 4, !dbg !3479
  %78 = atomicrmw add i32* %__a_.i132, i32 %77 release, !dbg !3479
  store i32 %78, i32* %atomic-temp.i130, align 4, !dbg !3479
  br label %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit, !dbg !3479

acqrel.i136:                                      ; preds = %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit
  %79 = load i32, i32* %.atomictmp.i129, align 4, !dbg !3481
  %80 = atomicrmw add i32* %__a_.i132, i32 %79 acq_rel, !dbg !3481
  store i32 %80, i32* %atomic-temp.i130, align 4, !dbg !3481
  br label %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit, !dbg !3481

seqcst.i137:                                      ; preds = %_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE.exit
  %81 = load i32, i32* %.atomictmp.i129, align 4, !dbg !3483
  %82 = atomicrmw add i32* %__a_.i132, i32 %81 seq_cst, !dbg !3483
  store i32 %82, i32* %atomic-temp.i130, align 4, !dbg !3483
  br label %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit, !dbg !3483

_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit: ; preds = %monotonic.i133, %acquire.i134, %release.i135, %acqrel.i136, %seqcst.i137
  %83 = load i32, i32* %atomic-temp.i130, align 4, !dbg !3485
  store %"struct.std::__1::__atomic_base.17"* getelementptr inbounds (%"struct.std::__1::atomic.16", %"struct.std::__1::atomic.16"* @x_long, i32 0, i32 0), %"struct.std::__1::__atomic_base.17"** %this.addr.i113, align 8
  store i64 1, i64* %__op.addr.i114, align 8
  store i32 0, i32* %__m.addr.i115, align 4
  %this1.i118 = load %"struct.std::__1::__atomic_base.17"*, %"struct.std::__1::__atomic_base.17"** %this.addr.i113, align 8
  %84 = bitcast %"struct.std::__1::__atomic_base.17"* %this1.i118 to %"struct.std::__1::__atomic_base.18"*, !dbg !3487
  %__a_.i119 = getelementptr inbounds %"struct.std::__1::__atomic_base.18", %"struct.std::__1::__atomic_base.18"* %84, i32 0, i32 0, !dbg !3487
  %85 = load i32, i32* %__m.addr.i115, align 4, !dbg !3488
  %86 = load i64, i64* %__op.addr.i114, align 8, !dbg !3489
  store i64 %86, i64* %.atomictmp.i116, align 8, !dbg !3490
  switch i32 %85, label %monotonic.i120 [
    i32 1, label %acquire.i121
    i32 2, label %acquire.i121
    i32 3, label %release.i122
    i32 4, label %acqrel.i123
    i32 5, label %seqcst.i124
  ], !dbg !3490

monotonic.i120:                                   ; preds = %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit
  %87 = load i64, i64* %.atomictmp.i116, align 8, !dbg !3491
  %88 = atomicrmw add i64* %__a_.i119, i64 %87 monotonic, !dbg !3491
  store i64 %88, i64* %atomic-temp.i117, align 8, !dbg !3491
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125, !dbg !3491

acquire.i121:                                     ; preds = %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit
  %89 = load i64, i64* %.atomictmp.i116, align 8, !dbg !3493
  %90 = atomicrmw add i64* %__a_.i119, i64 %89 acquire, !dbg !3493
  store i64 %90, i64* %atomic-temp.i117, align 8, !dbg !3493
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125, !dbg !3493

release.i122:                                     ; preds = %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit
  %91 = load i64, i64* %.atomictmp.i116, align 8, !dbg !3495
  %92 = atomicrmw add i64* %__a_.i119, i64 %91 release, !dbg !3495
  store i64 %92, i64* %atomic-temp.i117, align 8, !dbg !3495
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125, !dbg !3495

acqrel.i123:                                      ; preds = %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit
  %93 = load i64, i64* %.atomictmp.i116, align 8, !dbg !3497
  %94 = atomicrmw add i64* %__a_.i119, i64 %93 acq_rel, !dbg !3497
  store i64 %94, i64* %atomic-temp.i117, align 8, !dbg !3497
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125, !dbg !3497

seqcst.i124:                                      ; preds = %_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE.exit
  %95 = load i64, i64* %.atomictmp.i116, align 8, !dbg !3499
  %96 = atomicrmw add i64* %__a_.i119, i64 %95 seq_cst, !dbg !3499
  store i64 %96, i64* %atomic-temp.i117, align 8, !dbg !3499
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125, !dbg !3499

_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125: ; preds = %monotonic.i120, %acquire.i121, %release.i122, %acqrel.i123, %seqcst.i124
  %97 = load i64, i64* %atomic-temp.i117, align 8, !dbg !3501
  store %"struct.std::__1::__atomic_base.20"* getelementptr inbounds (%"struct.std::__1::atomic.19", %"struct.std::__1::atomic.19"* @x_unsigned_long, i32 0, i32 0), %"struct.std::__1::__atomic_base.20"** %this.addr.i100, align 8
  store i64 1, i64* %__op.addr.i101, align 8
  store i32 0, i32* %__m.addr.i102, align 4
  %this1.i105 = load %"struct.std::__1::__atomic_base.20"*, %"struct.std::__1::__atomic_base.20"** %this.addr.i100, align 8
  %98 = bitcast %"struct.std::__1::__atomic_base.20"* %this1.i105 to %"struct.std::__1::__atomic_base.21"*, !dbg !3503
  %__a_.i106 = getelementptr inbounds %"struct.std::__1::__atomic_base.21", %"struct.std::__1::__atomic_base.21"* %98, i32 0, i32 0, !dbg !3503
  %99 = load i32, i32* %__m.addr.i102, align 4, !dbg !3504
  %100 = load i64, i64* %__op.addr.i101, align 8, !dbg !3505
  store i64 %100, i64* %.atomictmp.i103, align 8, !dbg !3506
  switch i32 %99, label %monotonic.i107 [
    i32 1, label %acquire.i108
    i32 2, label %acquire.i108
    i32 3, label %release.i109
    i32 4, label %acqrel.i110
    i32 5, label %seqcst.i111
  ], !dbg !3506

monotonic.i107:                                   ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125
  %101 = load i64, i64* %.atomictmp.i103, align 8, !dbg !3507
  %102 = atomicrmw add i64* %__a_.i106, i64 %101 monotonic, !dbg !3507
  store i64 %102, i64* %atomic-temp.i104, align 8, !dbg !3507
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112, !dbg !3507

acquire.i108:                                     ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125, %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125
  %103 = load i64, i64* %.atomictmp.i103, align 8, !dbg !3509
  %104 = atomicrmw add i64* %__a_.i106, i64 %103 acquire, !dbg !3509
  store i64 %104, i64* %atomic-temp.i104, align 8, !dbg !3509
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112, !dbg !3509

release.i109:                                     ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125
  %105 = load i64, i64* %.atomictmp.i103, align 8, !dbg !3511
  %106 = atomicrmw add i64* %__a_.i106, i64 %105 release, !dbg !3511
  store i64 %106, i64* %atomic-temp.i104, align 8, !dbg !3511
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112, !dbg !3511

acqrel.i110:                                      ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125
  %107 = load i64, i64* %.atomictmp.i103, align 8, !dbg !3513
  %108 = atomicrmw add i64* %__a_.i106, i64 %107 acq_rel, !dbg !3513
  store i64 %108, i64* %atomic-temp.i104, align 8, !dbg !3513
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112, !dbg !3513

seqcst.i111:                                      ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit125
  %109 = load i64, i64* %.atomictmp.i103, align 8, !dbg !3515
  %110 = atomicrmw add i64* %__a_.i106, i64 %109 seq_cst, !dbg !3515
  store i64 %110, i64* %atomic-temp.i104, align 8, !dbg !3515
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112, !dbg !3515

_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112: ; preds = %monotonic.i107, %acquire.i108, %release.i109, %acqrel.i110, %seqcst.i111
  %111 = load i64, i64* %atomic-temp.i104, align 8, !dbg !3517
  store %"struct.std::__1::__atomic_base.23"* getelementptr inbounds (%"struct.std::__1::atomic.22", %"struct.std::__1::atomic.22"* @x_long_long, i32 0, i32 0), %"struct.std::__1::__atomic_base.23"** %this.addr.i87, align 8
  store i64 1, i64* %__op.addr.i88, align 8
  store i32 0, i32* %__m.addr.i89, align 4
  %this1.i92 = load %"struct.std::__1::__atomic_base.23"*, %"struct.std::__1::__atomic_base.23"** %this.addr.i87, align 8
  %112 = bitcast %"struct.std::__1::__atomic_base.23"* %this1.i92 to %"struct.std::__1::__atomic_base.24"*, !dbg !3519
  %__a_.i93 = getelementptr inbounds %"struct.std::__1::__atomic_base.24", %"struct.std::__1::__atomic_base.24"* %112, i32 0, i32 0, !dbg !3519
  %113 = load i32, i32* %__m.addr.i89, align 4, !dbg !3520
  %114 = load i64, i64* %__op.addr.i88, align 8, !dbg !3521
  store i64 %114, i64* %.atomictmp.i90, align 8, !dbg !3522
  switch i32 %113, label %monotonic.i94 [
    i32 1, label %acquire.i95
    i32 2, label %acquire.i95
    i32 3, label %release.i96
    i32 4, label %acqrel.i97
    i32 5, label %seqcst.i98
  ], !dbg !3522

monotonic.i94:                                    ; preds = %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112
  %115 = load i64, i64* %.atomictmp.i90, align 8, !dbg !3523
  %116 = atomicrmw add i64* %__a_.i93, i64 %115 monotonic, !dbg !3523
  store i64 %116, i64* %atomic-temp.i91, align 8, !dbg !3523
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99, !dbg !3523

acquire.i95:                                      ; preds = %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112, %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112
  %117 = load i64, i64* %.atomictmp.i90, align 8, !dbg !3525
  %118 = atomicrmw add i64* %__a_.i93, i64 %117 acquire, !dbg !3525
  store i64 %118, i64* %atomic-temp.i91, align 8, !dbg !3525
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99, !dbg !3525

release.i96:                                      ; preds = %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112
  %119 = load i64, i64* %.atomictmp.i90, align 8, !dbg !3527
  %120 = atomicrmw add i64* %__a_.i93, i64 %119 release, !dbg !3527
  store i64 %120, i64* %atomic-temp.i91, align 8, !dbg !3527
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99, !dbg !3527

acqrel.i97:                                       ; preds = %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112
  %121 = load i64, i64* %.atomictmp.i90, align 8, !dbg !3529
  %122 = atomicrmw add i64* %__a_.i93, i64 %121 acq_rel, !dbg !3529
  store i64 %122, i64* %atomic-temp.i91, align 8, !dbg !3529
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99, !dbg !3529

seqcst.i98:                                       ; preds = %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit112
  %123 = load i64, i64* %.atomictmp.i90, align 8, !dbg !3531
  %124 = atomicrmw add i64* %__a_.i93, i64 %123 seq_cst, !dbg !3531
  store i64 %124, i64* %atomic-temp.i91, align 8, !dbg !3531
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99, !dbg !3531

_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99: ; preds = %monotonic.i94, %acquire.i95, %release.i96, %acqrel.i97, %seqcst.i98
  %125 = load i64, i64* %atomic-temp.i91, align 8, !dbg !3533
  store %"struct.std::__1::__atomic_base.29"* getelementptr inbounds (%"struct.std::__1::atomic.28", %"struct.std::__1::atomic.28"* @x_char16_t, i32 0, i32 0), %"struct.std::__1::__atomic_base.29"** %this.addr.i75, align 8
  store i16 1, i16* %__op.addr.i76, align 2
  store i32 0, i32* %__m.addr.i77, align 4
  %this1.i80 = load %"struct.std::__1::__atomic_base.29"*, %"struct.std::__1::__atomic_base.29"** %this.addr.i75, align 8
  %126 = bitcast %"struct.std::__1::__atomic_base.29"* %this1.i80 to %"struct.std::__1::__atomic_base.30"*, !dbg !3535
  %__a_.i81 = getelementptr inbounds %"struct.std::__1::__atomic_base.30", %"struct.std::__1::__atomic_base.30"* %126, i32 0, i32 0, !dbg !3535
  %127 = load i32, i32* %__m.addr.i77, align 4, !dbg !3536
  %128 = load i16, i16* %__op.addr.i76, align 2, !dbg !3537
  store i16 %128, i16* %.atomictmp.i78, align 2, !dbg !3538
  switch i32 %127, label %monotonic.i82 [
    i32 1, label %acquire.i83
    i32 2, label %acquire.i83
    i32 3, label %release.i84
    i32 4, label %acqrel.i85
    i32 5, label %seqcst.i86
  ], !dbg !3538

monotonic.i82:                                    ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99
  %129 = load i16, i16* %.atomictmp.i78, align 2, !dbg !3539
  %130 = atomicrmw add i16* %__a_.i81, i16 %129 monotonic, !dbg !3539
  store i16 %130, i16* %atomic-temp.i79, align 2, !dbg !3539
  br label %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit, !dbg !3539

acquire.i83:                                      ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99, %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99
  %131 = load i16, i16* %.atomictmp.i78, align 2, !dbg !3541
  %132 = atomicrmw add i16* %__a_.i81, i16 %131 acquire, !dbg !3541
  store i16 %132, i16* %atomic-temp.i79, align 2, !dbg !3541
  br label %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit, !dbg !3541

release.i84:                                      ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99
  %133 = load i16, i16* %.atomictmp.i78, align 2, !dbg !3543
  %134 = atomicrmw add i16* %__a_.i81, i16 %133 release, !dbg !3543
  store i16 %134, i16* %atomic-temp.i79, align 2, !dbg !3543
  br label %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit, !dbg !3543

acqrel.i85:                                       ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99
  %135 = load i16, i16* %.atomictmp.i78, align 2, !dbg !3545
  %136 = atomicrmw add i16* %__a_.i81, i16 %135 acq_rel, !dbg !3545
  store i16 %136, i16* %atomic-temp.i79, align 2, !dbg !3545
  br label %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit, !dbg !3545

seqcst.i86:                                       ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit99
  %137 = load i16, i16* %.atomictmp.i78, align 2, !dbg !3547
  %138 = atomicrmw add i16* %__a_.i81, i16 %137 seq_cst, !dbg !3547
  store i16 %138, i16* %atomic-temp.i79, align 2, !dbg !3547
  br label %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit, !dbg !3547

_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit: ; preds = %monotonic.i82, %acquire.i83, %release.i84, %acqrel.i85, %seqcst.i86
  %139 = load i16, i16* %atomic-temp.i79, align 2, !dbg !3549
  store %"struct.std::__1::__atomic_base.32"* getelementptr inbounds (%"struct.std::__1::atomic.31", %"struct.std::__1::atomic.31"* @x_char32_t, i32 0, i32 0), %"struct.std::__1::__atomic_base.32"** %this.addr.i63, align 8
  store i32 1, i32* %__op.addr.i64, align 4
  store i32 0, i32* %__m.addr.i65, align 4
  %this1.i68 = load %"struct.std::__1::__atomic_base.32"*, %"struct.std::__1::__atomic_base.32"** %this.addr.i63, align 8
  %140 = bitcast %"struct.std::__1::__atomic_base.32"* %this1.i68 to %"struct.std::__1::__atomic_base.33"*, !dbg !3551
  %__a_.i69 = getelementptr inbounds %"struct.std::__1::__atomic_base.33", %"struct.std::__1::__atomic_base.33"* %140, i32 0, i32 0, !dbg !3551
  %141 = load i32, i32* %__m.addr.i65, align 4, !dbg !3552
  %142 = load i32, i32* %__op.addr.i64, align 4, !dbg !3553
  store i32 %142, i32* %.atomictmp.i66, align 4, !dbg !3554
  switch i32 %141, label %monotonic.i70 [
    i32 1, label %acquire.i71
    i32 2, label %acquire.i71
    i32 3, label %release.i72
    i32 4, label %acqrel.i73
    i32 5, label %seqcst.i74
  ], !dbg !3554

monotonic.i70:                                    ; preds = %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit
  %143 = load i32, i32* %.atomictmp.i66, align 4, !dbg !3555
  %144 = atomicrmw add i32* %__a_.i69, i32 %143 monotonic, !dbg !3555
  store i32 %144, i32* %atomic-temp.i67, align 4, !dbg !3555
  br label %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit, !dbg !3555

acquire.i71:                                      ; preds = %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit
  %145 = load i32, i32* %.atomictmp.i66, align 4, !dbg !3557
  %146 = atomicrmw add i32* %__a_.i69, i32 %145 acquire, !dbg !3557
  store i32 %146, i32* %atomic-temp.i67, align 4, !dbg !3557
  br label %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit, !dbg !3557

release.i72:                                      ; preds = %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit
  %147 = load i32, i32* %.atomictmp.i66, align 4, !dbg !3559
  %148 = atomicrmw add i32* %__a_.i69, i32 %147 release, !dbg !3559
  store i32 %148, i32* %atomic-temp.i67, align 4, !dbg !3559
  br label %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit, !dbg !3559

acqrel.i73:                                       ; preds = %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit
  %149 = load i32, i32* %.atomictmp.i66, align 4, !dbg !3561
  %150 = atomicrmw add i32* %__a_.i69, i32 %149 acq_rel, !dbg !3561
  store i32 %150, i32* %atomic-temp.i67, align 4, !dbg !3561
  br label %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit, !dbg !3561

seqcst.i74:                                       ; preds = %_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE.exit
  %151 = load i32, i32* %.atomictmp.i66, align 4, !dbg !3563
  %152 = atomicrmw add i32* %__a_.i69, i32 %151 seq_cst, !dbg !3563
  store i32 %152, i32* %atomic-temp.i67, align 4, !dbg !3563
  br label %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit, !dbg !3563

_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit: ; preds = %monotonic.i70, %acquire.i71, %release.i72, %acqrel.i73, %seqcst.i74
  %153 = load i32, i32* %atomic-temp.i67, align 4, !dbg !3565
  store %"struct.std::__1::__atomic_base.35"* getelementptr inbounds (%"struct.std::__1::atomic.34", %"struct.std::__1::atomic.34"* @x_wchar_t, i32 0, i32 0), %"struct.std::__1::__atomic_base.35"** %this.addr.i51, align 8
  store i32 1, i32* %__op.addr.i52, align 4
  store i32 0, i32* %__m.addr.i53, align 4
  %this1.i56 = load %"struct.std::__1::__atomic_base.35"*, %"struct.std::__1::__atomic_base.35"** %this.addr.i51, align 8
  %154 = bitcast %"struct.std::__1::__atomic_base.35"* %this1.i56 to %"struct.std::__1::__atomic_base.36"*, !dbg !3567
  %__a_.i57 = getelementptr inbounds %"struct.std::__1::__atomic_base.36", %"struct.std::__1::__atomic_base.36"* %154, i32 0, i32 0, !dbg !3567
  %155 = load i32, i32* %__m.addr.i53, align 4, !dbg !3568
  %156 = load i32, i32* %__op.addr.i52, align 4, !dbg !3569
  store i32 %156, i32* %.atomictmp.i54, align 4, !dbg !3570
  switch i32 %155, label %monotonic.i58 [
    i32 1, label %acquire.i59
    i32 2, label %acquire.i59
    i32 3, label %release.i60
    i32 4, label %acqrel.i61
    i32 5, label %seqcst.i62
  ], !dbg !3570

monotonic.i58:                                    ; preds = %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit
  %157 = load i32, i32* %.atomictmp.i54, align 4, !dbg !3571
  %158 = atomicrmw add i32* %__a_.i57, i32 %157 monotonic, !dbg !3571
  store i32 %158, i32* %atomic-temp.i55, align 4, !dbg !3571
  br label %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit, !dbg !3571

acquire.i59:                                      ; preds = %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit
  %159 = load i32, i32* %.atomictmp.i54, align 4, !dbg !3573
  %160 = atomicrmw add i32* %__a_.i57, i32 %159 acquire, !dbg !3573
  store i32 %160, i32* %atomic-temp.i55, align 4, !dbg !3573
  br label %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit, !dbg !3573

release.i60:                                      ; preds = %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit
  %161 = load i32, i32* %.atomictmp.i54, align 4, !dbg !3575
  %162 = atomicrmw add i32* %__a_.i57, i32 %161 release, !dbg !3575
  store i32 %162, i32* %atomic-temp.i55, align 4, !dbg !3575
  br label %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit, !dbg !3575

acqrel.i61:                                       ; preds = %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit
  %163 = load i32, i32* %.atomictmp.i54, align 4, !dbg !3577
  %164 = atomicrmw add i32* %__a_.i57, i32 %163 acq_rel, !dbg !3577
  store i32 %164, i32* %atomic-temp.i55, align 4, !dbg !3577
  br label %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit, !dbg !3577

seqcst.i62:                                       ; preds = %_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE.exit
  %165 = load i32, i32* %.atomictmp.i54, align 4, !dbg !3579
  %166 = atomicrmw add i32* %__a_.i57, i32 %165 seq_cst, !dbg !3579
  store i32 %166, i32* %atomic-temp.i55, align 4, !dbg !3579
  br label %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit, !dbg !3579

_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit: ; preds = %monotonic.i58, %acquire.i59, %release.i60, %acqrel.i61, %seqcst.i62
  %167 = load i32, i32* %atomic-temp.i55, align 4, !dbg !3581
  store %"struct.std::__1::__atomic_base.23"* getelementptr inbounds (%"struct.std::__1::atomic.22", %"struct.std::__1::atomic.22"* @x_int_fast64_t, i32 0, i32 0), %"struct.std::__1::__atomic_base.23"** %this.addr.i39, align 8
  store i64 1, i64* %__op.addr.i40, align 8
  store i32 0, i32* %__m.addr.i41, align 4
  %this1.i44 = load %"struct.std::__1::__atomic_base.23"*, %"struct.std::__1::__atomic_base.23"** %this.addr.i39, align 8
  %168 = bitcast %"struct.std::__1::__atomic_base.23"* %this1.i44 to %"struct.std::__1::__atomic_base.24"*, !dbg !3583
  %__a_.i45 = getelementptr inbounds %"struct.std::__1::__atomic_base.24", %"struct.std::__1::__atomic_base.24"* %168, i32 0, i32 0, !dbg !3583
  %169 = load i32, i32* %__m.addr.i41, align 4, !dbg !3584
  %170 = load i64, i64* %__op.addr.i40, align 8, !dbg !3585
  store i64 %170, i64* %.atomictmp.i42, align 8, !dbg !3586
  switch i32 %169, label %monotonic.i46 [
    i32 1, label %acquire.i47
    i32 2, label %acquire.i47
    i32 3, label %release.i48
    i32 4, label %acqrel.i49
    i32 5, label %seqcst.i50
  ], !dbg !3586

monotonic.i46:                                    ; preds = %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit
  %171 = load i64, i64* %.atomictmp.i42, align 8, !dbg !3587
  %172 = atomicrmw add i64* %__a_.i45, i64 %171 monotonic, !dbg !3587
  store i64 %172, i64* %atomic-temp.i43, align 8, !dbg !3587
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit, !dbg !3587

acquire.i47:                                      ; preds = %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit
  %173 = load i64, i64* %.atomictmp.i42, align 8, !dbg !3588
  %174 = atomicrmw add i64* %__a_.i45, i64 %173 acquire, !dbg !3588
  store i64 %174, i64* %atomic-temp.i43, align 8, !dbg !3588
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit, !dbg !3588

release.i48:                                      ; preds = %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit
  %175 = load i64, i64* %.atomictmp.i42, align 8, !dbg !3589
  %176 = atomicrmw add i64* %__a_.i45, i64 %175 release, !dbg !3589
  store i64 %176, i64* %atomic-temp.i43, align 8, !dbg !3589
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit, !dbg !3589

acqrel.i49:                                       ; preds = %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit
  %177 = load i64, i64* %.atomictmp.i42, align 8, !dbg !3590
  %178 = atomicrmw add i64* %__a_.i45, i64 %177 acq_rel, !dbg !3590
  store i64 %178, i64* %atomic-temp.i43, align 8, !dbg !3590
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit, !dbg !3590

seqcst.i50:                                       ; preds = %_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE.exit
  %179 = load i64, i64* %.atomictmp.i42, align 8, !dbg !3591
  %180 = atomicrmw add i64* %__a_.i45, i64 %179 seq_cst, !dbg !3591
  store i64 %180, i64* %atomic-temp.i43, align 8, !dbg !3591
  br label %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit, !dbg !3591

_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit: ; preds = %monotonic.i46, %acquire.i47, %release.i48, %acqrel.i49, %seqcst.i50
  %181 = load i64, i64* %atomic-temp.i43, align 8, !dbg !3592
  store %"struct.std::__1::__atomic_base.17"* getelementptr inbounds (%"struct.std::__1::atomic.16", %"struct.std::__1::atomic.16"* @x_ptrdiff_t, i32 0, i32 0), %"struct.std::__1::__atomic_base.17"** %this.addr.i27, align 8
  store i64 1, i64* %__op.addr.i28, align 8
  store i32 0, i32* %__m.addr.i29, align 4
  %this1.i32 = load %"struct.std::__1::__atomic_base.17"*, %"struct.std::__1::__atomic_base.17"** %this.addr.i27, align 8
  %182 = bitcast %"struct.std::__1::__atomic_base.17"* %this1.i32 to %"struct.std::__1::__atomic_base.18"*, !dbg !3593
  %__a_.i33 = getelementptr inbounds %"struct.std::__1::__atomic_base.18", %"struct.std::__1::__atomic_base.18"* %182, i32 0, i32 0, !dbg !3593
  %183 = load i32, i32* %__m.addr.i29, align 4, !dbg !3594
  %184 = load i64, i64* %__op.addr.i28, align 8, !dbg !3595
  store i64 %184, i64* %.atomictmp.i30, align 8, !dbg !3596
  switch i32 %183, label %monotonic.i34 [
    i32 1, label %acquire.i35
    i32 2, label %acquire.i35
    i32 3, label %release.i36
    i32 4, label %acqrel.i37
    i32 5, label %seqcst.i38
  ], !dbg !3596

monotonic.i34:                                    ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit
  %185 = load i64, i64* %.atomictmp.i30, align 8, !dbg !3597
  %186 = atomicrmw add i64* %__a_.i33, i64 %185 monotonic, !dbg !3597
  store i64 %186, i64* %atomic-temp.i31, align 8, !dbg !3597
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit, !dbg !3597

acquire.i35:                                      ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit
  %187 = load i64, i64* %.atomictmp.i30, align 8, !dbg !3598
  %188 = atomicrmw add i64* %__a_.i33, i64 %187 acquire, !dbg !3598
  store i64 %188, i64* %atomic-temp.i31, align 8, !dbg !3598
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit, !dbg !3598

release.i36:                                      ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit
  %189 = load i64, i64* %.atomictmp.i30, align 8, !dbg !3599
  %190 = atomicrmw add i64* %__a_.i33, i64 %189 release, !dbg !3599
  store i64 %190, i64* %atomic-temp.i31, align 8, !dbg !3599
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit, !dbg !3599

acqrel.i37:                                       ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit
  %191 = load i64, i64* %.atomictmp.i30, align 8, !dbg !3600
  %192 = atomicrmw add i64* %__a_.i33, i64 %191 acq_rel, !dbg !3600
  store i64 %192, i64* %atomic-temp.i31, align 8, !dbg !3600
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit, !dbg !3600

seqcst.i38:                                       ; preds = %_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE.exit
  %193 = load i64, i64* %.atomictmp.i30, align 8, !dbg !3601
  %194 = atomicrmw add i64* %__a_.i33, i64 %193 seq_cst, !dbg !3601
  store i64 %194, i64* %atomic-temp.i31, align 8, !dbg !3601
  br label %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit, !dbg !3601

_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit: ; preds = %monotonic.i34, %acquire.i35, %release.i36, %acqrel.i37, %seqcst.i38
  %195 = load i64, i64* %atomic-temp.i31, align 8, !dbg !3602
  store %"struct.std::__1::__atomic_base.20"* getelementptr inbounds (%"struct.std::__1::atomic.19", %"struct.std::__1::atomic.19"* @x_uintmax_t, i32 0, i32 0), %"struct.std::__1::__atomic_base.20"** %this.addr.i15, align 8
  store i64 1, i64* %__op.addr.i16, align 8
  store i32 0, i32* %__m.addr.i17, align 4
  %this1.i20 = load %"struct.std::__1::__atomic_base.20"*, %"struct.std::__1::__atomic_base.20"** %this.addr.i15, align 8
  %196 = bitcast %"struct.std::__1::__atomic_base.20"* %this1.i20 to %"struct.std::__1::__atomic_base.21"*, !dbg !3603
  %__a_.i21 = getelementptr inbounds %"struct.std::__1::__atomic_base.21", %"struct.std::__1::__atomic_base.21"* %196, i32 0, i32 0, !dbg !3603
  %197 = load i32, i32* %__m.addr.i17, align 4, !dbg !3604
  %198 = load i64, i64* %__op.addr.i16, align 8, !dbg !3605
  store i64 %198, i64* %.atomictmp.i18, align 8, !dbg !3606
  switch i32 %197, label %monotonic.i22 [
    i32 1, label %acquire.i23
    i32 2, label %acquire.i23
    i32 3, label %release.i24
    i32 4, label %acqrel.i25
    i32 5, label %seqcst.i26
  ], !dbg !3606

monotonic.i22:                                    ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit
  %199 = load i64, i64* %.atomictmp.i18, align 8, !dbg !3607
  %200 = atomicrmw add i64* %__a_.i21, i64 %199 monotonic, !dbg !3607
  store i64 %200, i64* %atomic-temp.i19, align 8, !dbg !3607
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit, !dbg !3607

acquire.i23:                                      ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit, %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit
  %201 = load i64, i64* %.atomictmp.i18, align 8, !dbg !3608
  %202 = atomicrmw add i64* %__a_.i21, i64 %201 acquire, !dbg !3608
  store i64 %202, i64* %atomic-temp.i19, align 8, !dbg !3608
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit, !dbg !3608

release.i24:                                      ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit
  %203 = load i64, i64* %.atomictmp.i18, align 8, !dbg !3609
  %204 = atomicrmw add i64* %__a_.i21, i64 %203 release, !dbg !3609
  store i64 %204, i64* %atomic-temp.i19, align 8, !dbg !3609
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit, !dbg !3609

acqrel.i25:                                       ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit
  %205 = load i64, i64* %.atomictmp.i18, align 8, !dbg !3610
  %206 = atomicrmw add i64* %__a_.i21, i64 %205 acq_rel, !dbg !3610
  store i64 %206, i64* %atomic-temp.i19, align 8, !dbg !3610
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit, !dbg !3610

seqcst.i26:                                       ; preds = %_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE.exit
  %207 = load i64, i64* %.atomictmp.i18, align 8, !dbg !3611
  %208 = atomicrmw add i64* %__a_.i21, i64 %207 seq_cst, !dbg !3611
  store i64 %208, i64* %atomic-temp.i19, align 8, !dbg !3611
  br label %_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit, !dbg !3611

_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE.exit: ; preds = %monotonic.i22, %acquire.i23, %release.i24, %acqrel.i25, %seqcst.i26
  %209 = load i64, i64* %atomic-temp.i19, align 8, !dbg !3612
  ret i32 0, !dbg !3613
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3191, !3192, !3193}
!llvm.ident = !{!3194}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "x_char", scope: !2, file: !3, line: 7, type: !3038, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !17, imports: !2112)
!3 = !DIFile(filename: "test.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!7 = !DINamespace(name: "__1", scope: !9, file: !8, line: 438, exportSymbols: true)
!8 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!9 = !DINamespace(name: "std", scope: null, file: !8, line: 437)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!12 = !DIEnumerator(name: "memory_order_consume", value: 1)
!13 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!14 = !DIEnumerator(name: "memory_order_release", value: 3)
!15 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!16 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!17 = !{!0, !18, !179, !335, !491, !647, !803, !959, !1115, !1271, !1427, !1583, !1739, !1895, !1897, !1899, !1901, !1903, !2054, !2056, !2058, !2060, !2062, !2064, !2066, !2068, !2070, !2072, !2074, !2076, !2078, !2080, !2082, !2084, !2086, !2088, !2090, !2092, !2094, !2096, !2098, !2100, !2102, !2104, !2106, !2108, !2110}
!18 = !DIGlobalVariableExpression(var: !19)
!19 = distinct !DIGlobalVariable(name: "x_signed_char", scope: !2, file: !3, line: 8, type: !20, isLocal: false, isDefinition: true)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<signed char>", scope: !7, file: !6, line: 1084, size: 8, elements: !21, templateParams: !178, identifier: "_ZTSNSt3__16atomicIaEE")
!21 = !{!22, !163, !167, !170, !175}
!22 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !20, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<signed char, true>", scope: !7, file: !6, line: 1003, size: 8, elements: !24, templateParams: !161, identifier: "_ZTSNSt3__113__atomic_baseIaLb1EEE")
!24 = !{!25, !107, !111, !114, !119, !122, !123, !124, !125, !126, !127, !128, !129, !130, !134, !137, !138, !139, !142, !145, !146, !147, !150, !153, !154, !155, !156, !157, !158, !159, !160}
!25 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !23, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<signed char, false>", scope: !7, file: !6, line: 891, size: 8, elements: !27, templateParams: !104, identifier: "_ZTSNSt3__113__atomic_baseIaLb0EEE")
!27 = !{!28, !31, !38, !43, !48, !52, !55, !58, !61, !64, !67, !70, !74, !77, !78, !79, !82, !85, !86, !87, !90, !93, !97, !101}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !26, file: !6, line: 893, baseType: !29, size: 8)
!29 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !30)
!30 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIaLb0EE12is_lock_freeEv", scope: !26, file: !6, line: 900, type: !32, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !35}
!34 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!38 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIaLb0EE12is_lock_freeEv", scope: !26, file: !6, line: 909, type: !39, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DISubroutineType(types: !40)
!40 = !{!34, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!43 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIaLb0EE5storeEaNS_12memory_orderE", scope: !26, file: !6, line: 912, type: !44, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !30, !47}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !7, file: !6, line: 585, baseType: !5)
!48 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIaLb0EE5storeEaNS_12memory_orderE", scope: !26, file: !6, line: 916, type: !49, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !30, !47}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!52 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIaLb0EE4loadENS_12memory_orderE", scope: !26, file: !6, line: 920, type: !53, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DISubroutineType(types: !54)
!54 = !{!30, !35, !47}
!55 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIaLb0EE4loadENS_12memory_orderE", scope: !26, file: !6, line: 924, type: !56, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DISubroutineType(types: !57)
!57 = !{!30, !41, !47}
!58 = !DISubprogram(name: "operator signed char", linkageName: "_ZNVKSt3__113__atomic_baseIaLb0EEcvaEv", scope: !26, file: !6, line: 928, type: !59, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!59 = !DISubroutineType(types: !60)
!60 = !{!30, !35}
!61 = !DISubprogram(name: "operator signed char", linkageName: "_ZNKSt3__113__atomic_baseIaLb0EEcvaEv", scope: !26, file: !6, line: 930, type: !62, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DISubroutineType(types: !63)
!63 = !{!30, !41}
!64 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIaLb0EE8exchangeEaNS_12memory_orderE", scope: !26, file: !6, line: 932, type: !65, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!65 = !DISubroutineType(types: !66)
!66 = !{!30, !46, !30, !47}
!67 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIaLb0EE8exchangeEaNS_12memory_orderE", scope: !26, file: !6, line: 935, type: !68, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DISubroutineType(types: !69)
!69 = !{!30, !51, !30, !47}
!70 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIaLb0EE21compare_exchange_weakERaaNS_12memory_orderES3_", scope: !26, file: !6, line: 938, type: !71, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DISubroutineType(types: !72)
!72 = !{!34, !46, !73, !30, !47, !47}
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !30, size: 64)
!74 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIaLb0EE21compare_exchange_weakERaaNS_12memory_orderES3_", scope: !26, file: !6, line: 943, type: !75, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DISubroutineType(types: !76)
!76 = !{!34, !51, !73, !30, !47, !47}
!77 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIaLb0EE23compare_exchange_strongERaaNS_12memory_orderES3_", scope: !26, file: !6, line: 948, type: !71, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIaLb0EE23compare_exchange_strongERaaNS_12memory_orderES3_", scope: !26, file: !6, line: 953, type: !75, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIaLb0EE21compare_exchange_weakERaaNS_12memory_orderE", scope: !26, file: !6, line: 958, type: !80, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DISubroutineType(types: !81)
!81 = !{!34, !46, !73, !30, !47}
!82 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIaLb0EE21compare_exchange_weakERaaNS_12memory_orderE", scope: !26, file: !6, line: 962, type: !83, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DISubroutineType(types: !84)
!84 = !{!34, !51, !73, !30, !47}
!85 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIaLb0EE23compare_exchange_strongERaaNS_12memory_orderE", scope: !26, file: !6, line: 966, type: !80, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIaLb0EE23compare_exchange_strongERaaNS_12memory_orderE", scope: !26, file: !6, line: 970, type: !83, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!87 = !DISubprogram(name: "__atomic_base", scope: !26, file: !6, line: 976, type: !88, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !51}
!90 = !DISubprogram(name: "__atomic_base", scope: !26, file: !6, line: 982, type: !91, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !51, !30}
!93 = !DISubprogram(name: "__atomic_base", scope: !26, file: !6, line: 984, type: !94, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !51, !96}
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 64)
!97 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIaLb0EEaSERKS1_", scope: !26, file: !6, line: 985, type: !98, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !51, !96}
!100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!101 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIaLb0EEaSERKS1_", scope: !26, file: !6, line: 986, type: !102, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DISubroutineType(types: !103)
!103 = !{!100, !46, !96}
!104 = !{!105, !106}
!105 = !DITemplateTypeParameter(name: "_Tp", type: !30)
!106 = !DITemplateValueParameter(type: !34, value: i8 0)
!107 = !DISubprogram(name: "__atomic_base", scope: !23, file: !6, line: 1008, type: !108, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !DISubprogram(name: "__atomic_base", scope: !23, file: !6, line: 1010, type: !112, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !110, !30}
!114 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE", scope: !23, file: !6, line: 1013, type: !115, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{!30, !117, !30, !47}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!118 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!119 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE", scope: !23, file: !6, line: 1016, type: !120, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DISubroutineType(types: !121)
!121 = !{!30, !110, !30, !47}
!122 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EE9fetch_subEaNS_12memory_orderE", scope: !23, file: !6, line: 1019, type: !115, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIaLb1EE9fetch_subEaNS_12memory_orderE", scope: !23, file: !6, line: 1022, type: !120, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EE9fetch_andEaNS_12memory_orderE", scope: !23, file: !6, line: 1025, type: !115, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIaLb1EE9fetch_andEaNS_12memory_orderE", scope: !23, file: !6, line: 1028, type: !120, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EE8fetch_orEaNS_12memory_orderE", scope: !23, file: !6, line: 1031, type: !115, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIaLb1EE8fetch_orEaNS_12memory_orderE", scope: !23, file: !6, line: 1034, type: !120, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EE9fetch_xorEaNS_12memory_orderE", scope: !23, file: !6, line: 1037, type: !115, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIaLb1EE9fetch_xorEaNS_12memory_orderE", scope: !23, file: !6, line: 1040, type: !120, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEppEi", scope: !23, file: !6, line: 1044, type: !131, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DISubroutineType(types: !132)
!132 = !{!30, !117, !133}
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEppEi", scope: !23, file: !6, line: 1046, type: !135, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DISubroutineType(types: !136)
!136 = !{!30, !110, !133}
!137 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEmmEi", scope: !23, file: !6, line: 1048, type: !131, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEmmEi", scope: !23, file: !6, line: 1050, type: !135, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEppEv", scope: !23, file: !6, line: 1052, type: !140, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!140 = !DISubroutineType(types: !141)
!141 = !{!30, !117}
!142 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEppEv", scope: !23, file: !6, line: 1054, type: !143, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DISubroutineType(types: !144)
!144 = !{!30, !110}
!145 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEmmEv", scope: !23, file: !6, line: 1056, type: !140, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEmmEv", scope: !23, file: !6, line: 1058, type: !143, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEpLEa", scope: !23, file: !6, line: 1060, type: !148, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DISubroutineType(types: !149)
!149 = !{!30, !117, !30}
!150 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEpLEa", scope: !23, file: !6, line: 1062, type: !151, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!30, !110, !30}
!153 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEmIEa", scope: !23, file: !6, line: 1064, type: !148, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEmIEa", scope: !23, file: !6, line: 1066, type: !151, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEaNEa", scope: !23, file: !6, line: 1068, type: !148, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEaNEa", scope: !23, file: !6, line: 1070, type: !151, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEoREa", scope: !23, file: !6, line: 1072, type: !148, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEoREa", scope: !23, file: !6, line: 1074, type: !151, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIaLb1EEeOEa", scope: !23, file: !6, line: 1076, type: !148, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIaLb1EEeOEa", scope: !23, file: !6, line: 1078, type: !151, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!161 = !{!105, !162}
!162 = !DITemplateValueParameter(type: !34, value: i8 1)
!163 = !DISubprogram(name: "atomic", scope: !20, file: !6, line: 1089, type: !164, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!167 = !DISubprogram(name: "atomic", scope: !20, file: !6, line: 1091, type: !168, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !166, !30}
!170 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIaEaSEa", scope: !20, file: !6, line: 1094, type: !171, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!30, !173, !30}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!174 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!175 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIaEaSEa", scope: !20, file: !6, line: 1097, type: !176, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!30, !166, !30}
!178 = !{!105}
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "x_unsigned_char", scope: !2, file: !3, line: 9, type: !181, isLocal: false, isDefinition: true)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned char>", scope: !7, file: !6, line: 1084, size: 8, elements: !182, templateParams: !334, identifier: "_ZTSNSt3__16atomicIhEE")
!182 = !{!183, !319, !323, !326, !331}
!183 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !181, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned char, true>", scope: !7, file: !6, line: 1003, size: 8, elements: !185, templateParams: !318, identifier: "_ZTSNSt3__113__atomic_baseIhLb1EEE")
!185 = !{!186, !265, !269, !272, !277, !280, !281, !282, !283, !284, !285, !286, !287, !288, !291, !294, !295, !296, !299, !302, !303, !304, !307, !310, !311, !312, !313, !314, !315, !316, !317}
!186 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !184, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned char, false>", scope: !7, file: !6, line: 891, size: 8, elements: !188, templateParams: !263, identifier: "_ZTSNSt3__113__atomic_baseIhLb0EEE")
!188 = !{!189, !192, !198, !203, !207, !211, !214, !217, !220, !223, !226, !229, !233, !236, !237, !238, !241, !244, !245, !246, !249, !252, !256, !260}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !187, file: !6, line: 893, baseType: !190, size: 8)
!190 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !191)
!191 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!192 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIhLb0EE12is_lock_freeEv", scope: !187, file: !6, line: 900, type: !193, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!34, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!198 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIhLb0EE12is_lock_freeEv", scope: !187, file: !6, line: 909, type: !199, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DISubroutineType(types: !200)
!200 = !{!34, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!203 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIhLb0EE5storeEhNS_12memory_orderE", scope: !187, file: !6, line: 912, type: !204, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206, !191, !47}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!207 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIhLb0EE5storeEhNS_12memory_orderE", scope: !187, file: !6, line: 916, type: !208, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !210, !191, !47}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!211 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIhLb0EE4loadENS_12memory_orderE", scope: !187, file: !6, line: 920, type: !212, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubroutineType(types: !213)
!213 = !{!191, !195, !47}
!214 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIhLb0EE4loadENS_12memory_orderE", scope: !187, file: !6, line: 924, type: !215, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{!191, !201, !47}
!217 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNVKSt3__113__atomic_baseIhLb0EEcvhEv", scope: !187, file: !6, line: 928, type: !218, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DISubroutineType(types: !219)
!219 = !{!191, !195}
!220 = !DISubprogram(name: "operator unsigned char", linkageName: "_ZNKSt3__113__atomic_baseIhLb0EEcvhEv", scope: !187, file: !6, line: 930, type: !221, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!191, !201}
!223 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIhLb0EE8exchangeEhNS_12memory_orderE", scope: !187, file: !6, line: 932, type: !224, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!191, !206, !191, !47}
!226 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIhLb0EE8exchangeEhNS_12memory_orderE", scope: !187, file: !6, line: 935, type: !227, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!191, !210, !191, !47}
!229 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIhLb0EE21compare_exchange_weakERhhNS_12memory_orderES3_", scope: !187, file: !6, line: 938, type: !230, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!34, !206, !232, !191, !47, !47}
!232 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !191, size: 64)
!233 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIhLb0EE21compare_exchange_weakERhhNS_12memory_orderES3_", scope: !187, file: !6, line: 943, type: !234, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DISubroutineType(types: !235)
!235 = !{!34, !210, !232, !191, !47, !47}
!236 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIhLb0EE23compare_exchange_strongERhhNS_12memory_orderES3_", scope: !187, file: !6, line: 948, type: !230, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIhLb0EE23compare_exchange_strongERhhNS_12memory_orderES3_", scope: !187, file: !6, line: 953, type: !234, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIhLb0EE21compare_exchange_weakERhhNS_12memory_orderE", scope: !187, file: !6, line: 958, type: !239, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!34, !206, !232, !191, !47}
!241 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIhLb0EE21compare_exchange_weakERhhNS_12memory_orderE", scope: !187, file: !6, line: 962, type: !242, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubroutineType(types: !243)
!243 = !{!34, !210, !232, !191, !47}
!244 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIhLb0EE23compare_exchange_strongERhhNS_12memory_orderE", scope: !187, file: !6, line: 966, type: !239, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIhLb0EE23compare_exchange_strongERhhNS_12memory_orderE", scope: !187, file: !6, line: 970, type: !242, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DISubprogram(name: "__atomic_base", scope: !187, file: !6, line: 976, type: !247, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !210}
!249 = !DISubprogram(name: "__atomic_base", scope: !187, file: !6, line: 982, type: !250, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !210, !191}
!252 = !DISubprogram(name: "__atomic_base", scope: !187, file: !6, line: 984, type: !253, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !210, !255}
!255 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !202, size: 64)
!256 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIhLb0EEaSERKS1_", scope: !187, file: !6, line: 985, type: !257, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !210, !255}
!259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !187, size: 64)
!260 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIhLb0EEaSERKS1_", scope: !187, file: !6, line: 986, type: !261, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{!259, !206, !255}
!263 = !{!264, !106}
!264 = !DITemplateTypeParameter(name: "_Tp", type: !191)
!265 = !DISubprogram(name: "__atomic_base", scope: !184, file: !6, line: 1008, type: !266, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!269 = !DISubprogram(name: "__atomic_base", scope: !184, file: !6, line: 1010, type: !270, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !268, !191}
!272 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE", scope: !184, file: !6, line: 1013, type: !273, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubroutineType(types: !274)
!274 = !{!191, !275, !191, !47}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!276 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!277 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE", scope: !184, file: !6, line: 1016, type: !278, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!191, !268, !191, !47}
!280 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EE9fetch_subEhNS_12memory_orderE", scope: !184, file: !6, line: 1019, type: !273, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIhLb1EE9fetch_subEhNS_12memory_orderE", scope: !184, file: !6, line: 1022, type: !278, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EE9fetch_andEhNS_12memory_orderE", scope: !184, file: !6, line: 1025, type: !273, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIhLb1EE9fetch_andEhNS_12memory_orderE", scope: !184, file: !6, line: 1028, type: !278, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EE8fetch_orEhNS_12memory_orderE", scope: !184, file: !6, line: 1031, type: !273, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIhLb1EE8fetch_orEhNS_12memory_orderE", scope: !184, file: !6, line: 1034, type: !278, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EE9fetch_xorEhNS_12memory_orderE", scope: !184, file: !6, line: 1037, type: !273, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIhLb1EE9fetch_xorEhNS_12memory_orderE", scope: !184, file: !6, line: 1040, type: !278, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEppEi", scope: !184, file: !6, line: 1044, type: !289, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DISubroutineType(types: !290)
!290 = !{!191, !275, !133}
!291 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEppEi", scope: !184, file: !6, line: 1046, type: !292, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DISubroutineType(types: !293)
!293 = !{!191, !268, !133}
!294 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEmmEi", scope: !184, file: !6, line: 1048, type: !289, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEmmEi", scope: !184, file: !6, line: 1050, type: !292, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEppEv", scope: !184, file: !6, line: 1052, type: !297, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DISubroutineType(types: !298)
!298 = !{!191, !275}
!299 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEppEv", scope: !184, file: !6, line: 1054, type: !300, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!191, !268}
!302 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEmmEv", scope: !184, file: !6, line: 1056, type: !297, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEmmEv", scope: !184, file: !6, line: 1058, type: !300, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEpLEh", scope: !184, file: !6, line: 1060, type: !305, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{!191, !275, !191}
!307 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEpLEh", scope: !184, file: !6, line: 1062, type: !308, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DISubroutineType(types: !309)
!309 = !{!191, !268, !191}
!310 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEmIEh", scope: !184, file: !6, line: 1064, type: !305, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEmIEh", scope: !184, file: !6, line: 1066, type: !308, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEaNEh", scope: !184, file: !6, line: 1068, type: !305, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEaNEh", scope: !184, file: !6, line: 1070, type: !308, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEoREh", scope: !184, file: !6, line: 1072, type: !305, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEoREh", scope: !184, file: !6, line: 1074, type: !308, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIhLb1EEeOEh", scope: !184, file: !6, line: 1076, type: !305, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIhLb1EEeOEh", scope: !184, file: !6, line: 1078, type: !308, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!318 = !{!264, !162}
!319 = !DISubprogram(name: "atomic", scope: !181, file: !6, line: 1089, type: !320, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!323 = !DISubprogram(name: "atomic", scope: !181, file: !6, line: 1091, type: !324, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !322, !191}
!326 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIhEaSEh", scope: !181, file: !6, line: 1094, type: !327, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{!191, !329, !191}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!330 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!331 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIhEaSEh", scope: !181, file: !6, line: 1097, type: !332, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{!191, !322, !191}
!334 = !{!264}
!335 = !DIGlobalVariableExpression(var: !336)
!336 = distinct !DIGlobalVariable(name: "x_short", scope: !2, file: !3, line: 10, type: !337, isLocal: false, isDefinition: true)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<short>", scope: !7, file: !6, line: 1084, size: 16, elements: !338, templateParams: !490, identifier: "_ZTSNSt3__16atomicIsEE")
!338 = !{!339, !475, !479, !482, !487}
!339 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !337, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<short, true>", scope: !7, file: !6, line: 1003, size: 16, elements: !341, templateParams: !474, identifier: "_ZTSNSt3__113__atomic_baseIsLb1EEE")
!341 = !{!342, !421, !425, !428, !433, !436, !437, !438, !439, !440, !441, !442, !443, !444, !447, !450, !451, !452, !455, !458, !459, !460, !463, !466, !467, !468, !469, !470, !471, !472, !473}
!342 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !340, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<short, false>", scope: !7, file: !6, line: 891, size: 16, elements: !344, templateParams: !419, identifier: "_ZTSNSt3__113__atomic_baseIsLb0EEE")
!344 = !{!345, !348, !354, !359, !363, !367, !370, !373, !376, !379, !382, !385, !389, !392, !393, !394, !397, !400, !401, !402, !405, !408, !412, !416}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !343, file: !6, line: 893, baseType: !346, size: 16)
!346 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !347)
!347 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!348 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIsLb0EE12is_lock_freeEv", scope: !343, file: !6, line: 900, type: !349, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!349 = !DISubroutineType(types: !350)
!350 = !{!34, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !343)
!354 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIsLb0EE12is_lock_freeEv", scope: !343, file: !6, line: 909, type: !355, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DISubroutineType(types: !356)
!356 = !{!34, !357}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!359 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIsLb0EE5storeEsNS_12memory_orderE", scope: !343, file: !6, line: 912, type: !360, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362, !347, !47}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!363 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIsLb0EE5storeEsNS_12memory_orderE", scope: !343, file: !6, line: 916, type: !364, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366, !347, !47}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!367 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIsLb0EE4loadENS_12memory_orderE", scope: !343, file: !6, line: 920, type: !368, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DISubroutineType(types: !369)
!369 = !{!347, !351, !47}
!370 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIsLb0EE4loadENS_12memory_orderE", scope: !343, file: !6, line: 924, type: !371, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DISubroutineType(types: !372)
!372 = !{!347, !357, !47}
!373 = !DISubprogram(name: "operator short", linkageName: "_ZNVKSt3__113__atomic_baseIsLb0EEcvsEv", scope: !343, file: !6, line: 928, type: !374, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!347, !351}
!376 = !DISubprogram(name: "operator short", linkageName: "_ZNKSt3__113__atomic_baseIsLb0EEcvsEv", scope: !343, file: !6, line: 930, type: !377, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DISubroutineType(types: !378)
!378 = !{!347, !357}
!379 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIsLb0EE8exchangeEsNS_12memory_orderE", scope: !343, file: !6, line: 932, type: !380, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!380 = !DISubroutineType(types: !381)
!381 = !{!347, !362, !347, !47}
!382 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIsLb0EE8exchangeEsNS_12memory_orderE", scope: !343, file: !6, line: 935, type: !383, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{!347, !366, !347, !47}
!385 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIsLb0EE21compare_exchange_weakERssNS_12memory_orderES3_", scope: !343, file: !6, line: 938, type: !386, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!34, !362, !388, !347, !47, !47}
!388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !347, size: 64)
!389 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIsLb0EE21compare_exchange_weakERssNS_12memory_orderES3_", scope: !343, file: !6, line: 943, type: !390, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!34, !366, !388, !347, !47, !47}
!392 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIsLb0EE23compare_exchange_strongERssNS_12memory_orderES3_", scope: !343, file: !6, line: 948, type: !386, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIsLb0EE23compare_exchange_strongERssNS_12memory_orderES3_", scope: !343, file: !6, line: 953, type: !390, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIsLb0EE21compare_exchange_weakERssNS_12memory_orderE", scope: !343, file: !6, line: 958, type: !395, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!395 = !DISubroutineType(types: !396)
!396 = !{!34, !362, !388, !347, !47}
!397 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIsLb0EE21compare_exchange_weakERssNS_12memory_orderE", scope: !343, file: !6, line: 962, type: !398, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!34, !366, !388, !347, !47}
!400 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIsLb0EE23compare_exchange_strongERssNS_12memory_orderE", scope: !343, file: !6, line: 966, type: !395, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!401 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIsLb0EE23compare_exchange_strongERssNS_12memory_orderE", scope: !343, file: !6, line: 970, type: !398, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubprogram(name: "__atomic_base", scope: !343, file: !6, line: 976, type: !403, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !366}
!405 = !DISubprogram(name: "__atomic_base", scope: !343, file: !6, line: 982, type: !406, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !366, !347}
!408 = !DISubprogram(name: "__atomic_base", scope: !343, file: !6, line: 984, type: !409, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !366, !411}
!411 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !358, size: 64)
!412 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIsLb0EEaSERKS1_", scope: !343, file: !6, line: 985, type: !413, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!413 = !DISubroutineType(types: !414)
!414 = !{!415, !366, !411}
!415 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !343, size: 64)
!416 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIsLb0EEaSERKS1_", scope: !343, file: !6, line: 986, type: !417, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!417 = !DISubroutineType(types: !418)
!418 = !{!415, !362, !411}
!419 = !{!420, !106}
!420 = !DITemplateTypeParameter(name: "_Tp", type: !347)
!421 = !DISubprogram(name: "__atomic_base", scope: !340, file: !6, line: 1008, type: !422, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!425 = !DISubprogram(name: "__atomic_base", scope: !340, file: !6, line: 1010, type: !426, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !424, !347}
!428 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE", scope: !340, file: !6, line: 1013, type: !429, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!429 = !DISubroutineType(types: !430)
!430 = !{!347, !431, !347, !47}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!432 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !340)
!433 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE", scope: !340, file: !6, line: 1016, type: !434, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!347, !424, !347, !47}
!436 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EE9fetch_subEsNS_12memory_orderE", scope: !340, file: !6, line: 1019, type: !429, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!437 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIsLb1EE9fetch_subEsNS_12memory_orderE", scope: !340, file: !6, line: 1022, type: !434, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EE9fetch_andEsNS_12memory_orderE", scope: !340, file: !6, line: 1025, type: !429, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIsLb1EE9fetch_andEsNS_12memory_orderE", scope: !340, file: !6, line: 1028, type: !434, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!440 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EE8fetch_orEsNS_12memory_orderE", scope: !340, file: !6, line: 1031, type: !429, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!441 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIsLb1EE8fetch_orEsNS_12memory_orderE", scope: !340, file: !6, line: 1034, type: !434, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EE9fetch_xorEsNS_12memory_orderE", scope: !340, file: !6, line: 1037, type: !429, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!443 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIsLb1EE9fetch_xorEsNS_12memory_orderE", scope: !340, file: !6, line: 1040, type: !434, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!444 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEppEi", scope: !340, file: !6, line: 1044, type: !445, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DISubroutineType(types: !446)
!446 = !{!347, !431, !133}
!447 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEppEi", scope: !340, file: !6, line: 1046, type: !448, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!448 = !DISubroutineType(types: !449)
!449 = !{!347, !424, !133}
!450 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEmmEi", scope: !340, file: !6, line: 1048, type: !445, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!451 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEmmEi", scope: !340, file: !6, line: 1050, type: !448, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEppEv", scope: !340, file: !6, line: 1052, type: !453, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DISubroutineType(types: !454)
!454 = !{!347, !431}
!455 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEppEv", scope: !340, file: !6, line: 1054, type: !456, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{!347, !424}
!458 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEmmEv", scope: !340, file: !6, line: 1056, type: !453, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEmmEv", scope: !340, file: !6, line: 1058, type: !456, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEpLEs", scope: !340, file: !6, line: 1060, type: !461, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!461 = !DISubroutineType(types: !462)
!462 = !{!347, !431, !347}
!463 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEpLEs", scope: !340, file: !6, line: 1062, type: !464, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DISubroutineType(types: !465)
!465 = !{!347, !424, !347}
!466 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEmIEs", scope: !340, file: !6, line: 1064, type: !461, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEmIEs", scope: !340, file: !6, line: 1066, type: !464, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEaNEs", scope: !340, file: !6, line: 1068, type: !461, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEaNEs", scope: !340, file: !6, line: 1070, type: !464, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEoREs", scope: !340, file: !6, line: 1072, type: !461, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEoREs", scope: !340, file: !6, line: 1074, type: !464, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!472 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIsLb1EEeOEs", scope: !340, file: !6, line: 1076, type: !461, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIsLb1EEeOEs", scope: !340, file: !6, line: 1078, type: !464, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!474 = !{!420, !162}
!475 = !DISubprogram(name: "atomic", scope: !337, file: !6, line: 1089, type: !476, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DISubprogram(name: "atomic", scope: !337, file: !6, line: 1091, type: !480, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !478, !347}
!482 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIsEaSEs", scope: !337, file: !6, line: 1094, type: !483, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{!347, !485, !347}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!486 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !337)
!487 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIsEaSEs", scope: !337, file: !6, line: 1097, type: !488, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!488 = !DISubroutineType(types: !489)
!489 = !{!347, !478, !347}
!490 = !{!420}
!491 = !DIGlobalVariableExpression(var: !492)
!492 = distinct !DIGlobalVariable(name: "x_unsigned_short", scope: !2, file: !3, line: 11, type: !493, isLocal: false, isDefinition: true)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned short>", scope: !7, file: !6, line: 1084, size: 16, elements: !494, templateParams: !646, identifier: "_ZTSNSt3__16atomicItEE")
!494 = !{!495, !631, !635, !638, !643}
!495 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !493, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned short, true>", scope: !7, file: !6, line: 1003, size: 16, elements: !497, templateParams: !630, identifier: "_ZTSNSt3__113__atomic_baseItLb1EEE")
!497 = !{!498, !577, !581, !584, !589, !592, !593, !594, !595, !596, !597, !598, !599, !600, !603, !606, !607, !608, !611, !614, !615, !616, !619, !622, !623, !624, !625, !626, !627, !628, !629}
!498 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !496, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned short, false>", scope: !7, file: !6, line: 891, size: 16, elements: !500, templateParams: !575, identifier: "_ZTSNSt3__113__atomic_baseItLb0EEE")
!500 = !{!501, !504, !510, !515, !519, !523, !526, !529, !532, !535, !538, !541, !545, !548, !549, !550, !553, !556, !557, !558, !561, !564, !568, !572}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !499, file: !6, line: 893, baseType: !502, size: 16)
!502 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !503)
!503 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!504 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseItLb0EE12is_lock_freeEv", scope: !499, file: !6, line: 900, type: !505, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{!34, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !499)
!510 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseItLb0EE12is_lock_freeEv", scope: !499, file: !6, line: 909, type: !511, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DISubroutineType(types: !512)
!512 = !{!34, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!515 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseItLb0EE5storeEtNS_12memory_orderE", scope: !499, file: !6, line: 912, type: !516, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518, !503, !47}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseItLb0EE5storeEtNS_12memory_orderE", scope: !499, file: !6, line: 916, type: !520, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522, !503, !47}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseItLb0EE4loadENS_12memory_orderE", scope: !499, file: !6, line: 920, type: !524, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!503, !507, !47}
!526 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseItLb0EE4loadENS_12memory_orderE", scope: !499, file: !6, line: 924, type: !527, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{!503, !513, !47}
!529 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNVKSt3__113__atomic_baseItLb0EEcvtEv", scope: !499, file: !6, line: 928, type: !530, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!503, !507}
!532 = !DISubprogram(name: "operator unsigned short", linkageName: "_ZNKSt3__113__atomic_baseItLb0EEcvtEv", scope: !499, file: !6, line: 930, type: !533, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!503, !513}
!535 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseItLb0EE8exchangeEtNS_12memory_orderE", scope: !499, file: !6, line: 932, type: !536, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!536 = !DISubroutineType(types: !537)
!537 = !{!503, !518, !503, !47}
!538 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseItLb0EE8exchangeEtNS_12memory_orderE", scope: !499, file: !6, line: 935, type: !539, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!539 = !DISubroutineType(types: !540)
!540 = !{!503, !522, !503, !47}
!541 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseItLb0EE21compare_exchange_weakERttNS_12memory_orderES3_", scope: !499, file: !6, line: 938, type: !542, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!34, !518, !544, !503, !47, !47}
!544 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !503, size: 64)
!545 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseItLb0EE21compare_exchange_weakERttNS_12memory_orderES3_", scope: !499, file: !6, line: 943, type: !546, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!546 = !DISubroutineType(types: !547)
!547 = !{!34, !522, !544, !503, !47, !47}
!548 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseItLb0EE23compare_exchange_strongERttNS_12memory_orderES3_", scope: !499, file: !6, line: 948, type: !542, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseItLb0EE23compare_exchange_strongERttNS_12memory_orderES3_", scope: !499, file: !6, line: 953, type: !546, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseItLb0EE21compare_exchange_weakERttNS_12memory_orderE", scope: !499, file: !6, line: 958, type: !551, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DISubroutineType(types: !552)
!552 = !{!34, !518, !544, !503, !47}
!553 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseItLb0EE21compare_exchange_weakERttNS_12memory_orderE", scope: !499, file: !6, line: 962, type: !554, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!34, !522, !544, !503, !47}
!556 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseItLb0EE23compare_exchange_strongERttNS_12memory_orderE", scope: !499, file: !6, line: 966, type: !551, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseItLb0EE23compare_exchange_strongERttNS_12memory_orderE", scope: !499, file: !6, line: 970, type: !554, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubprogram(name: "__atomic_base", scope: !499, file: !6, line: 976, type: !559, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !522}
!561 = !DISubprogram(name: "__atomic_base", scope: !499, file: !6, line: 982, type: !562, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !522, !503}
!564 = !DISubprogram(name: "__atomic_base", scope: !499, file: !6, line: 984, type: !565, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !522, !567}
!567 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !514, size: 64)
!568 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseItLb0EEaSERKS1_", scope: !499, file: !6, line: 985, type: !569, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !522, !567}
!571 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !499, size: 64)
!572 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseItLb0EEaSERKS1_", scope: !499, file: !6, line: 986, type: !573, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!573 = !DISubroutineType(types: !574)
!574 = !{!571, !518, !567}
!575 = !{!576, !106}
!576 = !DITemplateTypeParameter(name: "_Tp", type: !503)
!577 = !DISubprogram(name: "__atomic_base", scope: !496, file: !6, line: 1008, type: !578, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!581 = !DISubprogram(name: "__atomic_base", scope: !496, file: !6, line: 1010, type: !582, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !580, !503}
!584 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE", scope: !496, file: !6, line: 1013, type: !585, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DISubroutineType(types: !586)
!586 = !{!503, !587, !503, !47}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!588 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !496)
!589 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE", scope: !496, file: !6, line: 1016, type: !590, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DISubroutineType(types: !591)
!591 = !{!503, !580, !503, !47}
!592 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseItLb1EE9fetch_subEtNS_12memory_orderE", scope: !496, file: !6, line: 1019, type: !585, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!593 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseItLb1EE9fetch_subEtNS_12memory_orderE", scope: !496, file: !6, line: 1022, type: !590, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!594 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseItLb1EE9fetch_andEtNS_12memory_orderE", scope: !496, file: !6, line: 1025, type: !585, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!595 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseItLb1EE9fetch_andEtNS_12memory_orderE", scope: !496, file: !6, line: 1028, type: !590, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!596 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseItLb1EE8fetch_orEtNS_12memory_orderE", scope: !496, file: !6, line: 1031, type: !585, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!597 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseItLb1EE8fetch_orEtNS_12memory_orderE", scope: !496, file: !6, line: 1034, type: !590, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!598 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseItLb1EE9fetch_xorEtNS_12memory_orderE", scope: !496, file: !6, line: 1037, type: !585, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseItLb1EE9fetch_xorEtNS_12memory_orderE", scope: !496, file: !6, line: 1040, type: !590, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!600 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEppEi", scope: !496, file: !6, line: 1044, type: !601, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!601 = !DISubroutineType(types: !602)
!602 = !{!503, !587, !133}
!603 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseItLb1EEppEi", scope: !496, file: !6, line: 1046, type: !604, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!604 = !DISubroutineType(types: !605)
!605 = !{!503, !580, !133}
!606 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEmmEi", scope: !496, file: !6, line: 1048, type: !601, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!607 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseItLb1EEmmEi", scope: !496, file: !6, line: 1050, type: !604, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEppEv", scope: !496, file: !6, line: 1052, type: !609, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!609 = !DISubroutineType(types: !610)
!610 = !{!503, !587}
!611 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseItLb1EEppEv", scope: !496, file: !6, line: 1054, type: !612, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!612 = !DISubroutineType(types: !613)
!613 = !{!503, !580}
!614 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEmmEv", scope: !496, file: !6, line: 1056, type: !609, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!615 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseItLb1EEmmEv", scope: !496, file: !6, line: 1058, type: !612, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!616 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEpLEt", scope: !496, file: !6, line: 1060, type: !617, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!617 = !DISubroutineType(types: !618)
!618 = !{!503, !587, !503}
!619 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseItLb1EEpLEt", scope: !496, file: !6, line: 1062, type: !620, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!620 = !DISubroutineType(types: !621)
!621 = !{!503, !580, !503}
!622 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEmIEt", scope: !496, file: !6, line: 1064, type: !617, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseItLb1EEmIEt", scope: !496, file: !6, line: 1066, type: !620, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!624 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEaNEt", scope: !496, file: !6, line: 1068, type: !617, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!625 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseItLb1EEaNEt", scope: !496, file: !6, line: 1070, type: !620, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!626 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEoREt", scope: !496, file: !6, line: 1072, type: !617, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!627 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseItLb1EEoREt", scope: !496, file: !6, line: 1074, type: !620, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!628 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseItLb1EEeOEt", scope: !496, file: !6, line: 1076, type: !617, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!629 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseItLb1EEeOEt", scope: !496, file: !6, line: 1078, type: !620, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!630 = !{!576, !162}
!631 = !DISubprogram(name: "atomic", scope: !493, file: !6, line: 1089, type: !632, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!635 = !DISubprogram(name: "atomic", scope: !493, file: !6, line: 1091, type: !636, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !634, !503}
!638 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicItEaSEt", scope: !493, file: !6, line: 1094, type: !639, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!639 = !DISubroutineType(types: !640)
!640 = !{!503, !641, !503}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!642 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !493)
!643 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicItEaSEt", scope: !493, file: !6, line: 1097, type: !644, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!644 = !DISubroutineType(types: !645)
!645 = !{!503, !634, !503}
!646 = !{!576}
!647 = !DIGlobalVariableExpression(var: !648)
!648 = distinct !DIGlobalVariable(name: "x_unsigned_int", scope: !2, file: !3, line: 12, type: !649, isLocal: false, isDefinition: true)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned int>", scope: !7, file: !6, line: 1084, size: 32, elements: !650, templateParams: !802, identifier: "_ZTSNSt3__16atomicIjEE")
!650 = !{!651, !787, !791, !794, !799}
!651 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !649, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !653, templateParams: !786, identifier: "_ZTSNSt3__113__atomic_baseIjLb1EEE")
!653 = !{!654, !733, !737, !740, !745, !748, !749, !750, !751, !752, !753, !754, !755, !756, !759, !762, !763, !764, !767, !770, !771, !772, !775, !778, !779, !780, !781, !782, !783, !784, !785}
!654 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !652, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !656, templateParams: !731, identifier: "_ZTSNSt3__113__atomic_baseIjLb0EEE")
!656 = !{!657, !660, !666, !671, !675, !679, !682, !685, !688, !691, !694, !697, !701, !704, !705, !706, !709, !712, !713, !714, !717, !720, !724, !728}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !655, file: !6, line: 893, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !659)
!659 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!660 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIjLb0EE12is_lock_freeEv", scope: !655, file: !6, line: 900, type: !661, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubroutineType(types: !662)
!662 = !{!34, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !655)
!666 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIjLb0EE12is_lock_freeEv", scope: !655, file: !6, line: 909, type: !667, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!667 = !DISubroutineType(types: !668)
!668 = !{!34, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!671 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIjLb0EE5storeEjNS_12memory_orderE", scope: !655, file: !6, line: 912, type: !672, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !674, !659, !47}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!675 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIjLb0EE5storeEjNS_12memory_orderE", scope: !655, file: !6, line: 916, type: !676, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !678, !659, !47}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!679 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIjLb0EE4loadENS_12memory_orderE", scope: !655, file: !6, line: 920, type: !680, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DISubroutineType(types: !681)
!681 = !{!659, !663, !47}
!682 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIjLb0EE4loadENS_12memory_orderE", scope: !655, file: !6, line: 924, type: !683, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DISubroutineType(types: !684)
!684 = !{!659, !669, !47}
!685 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNVKSt3__113__atomic_baseIjLb0EEcvjEv", scope: !655, file: !6, line: 928, type: !686, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DISubroutineType(types: !687)
!687 = !{!659, !663}
!688 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNKSt3__113__atomic_baseIjLb0EEcvjEv", scope: !655, file: !6, line: 930, type: !689, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DISubroutineType(types: !690)
!690 = !{!659, !669}
!691 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIjLb0EE8exchangeEjNS_12memory_orderE", scope: !655, file: !6, line: 932, type: !692, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DISubroutineType(types: !693)
!693 = !{!659, !674, !659, !47}
!694 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIjLb0EE8exchangeEjNS_12memory_orderE", scope: !655, file: !6, line: 935, type: !695, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DISubroutineType(types: !696)
!696 = !{!659, !678, !659, !47}
!697 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIjLb0EE21compare_exchange_weakERjjNS_12memory_orderES3_", scope: !655, file: !6, line: 938, type: !698, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!698 = !DISubroutineType(types: !699)
!699 = !{!34, !674, !700, !659, !47, !47}
!700 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !659, size: 64)
!701 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIjLb0EE21compare_exchange_weakERjjNS_12memory_orderES3_", scope: !655, file: !6, line: 943, type: !702, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!702 = !DISubroutineType(types: !703)
!703 = !{!34, !678, !700, !659, !47, !47}
!704 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIjLb0EE23compare_exchange_strongERjjNS_12memory_orderES3_", scope: !655, file: !6, line: 948, type: !698, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIjLb0EE23compare_exchange_strongERjjNS_12memory_orderES3_", scope: !655, file: !6, line: 953, type: !702, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!706 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIjLb0EE21compare_exchange_weakERjjNS_12memory_orderE", scope: !655, file: !6, line: 958, type: !707, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!707 = !DISubroutineType(types: !708)
!708 = !{!34, !674, !700, !659, !47}
!709 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIjLb0EE21compare_exchange_weakERjjNS_12memory_orderE", scope: !655, file: !6, line: 962, type: !710, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!710 = !DISubroutineType(types: !711)
!711 = !{!34, !678, !700, !659, !47}
!712 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIjLb0EE23compare_exchange_strongERjjNS_12memory_orderE", scope: !655, file: !6, line: 966, type: !707, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!713 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIjLb0EE23compare_exchange_strongERjjNS_12memory_orderE", scope: !655, file: !6, line: 970, type: !710, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubprogram(name: "__atomic_base", scope: !655, file: !6, line: 976, type: !715, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !678}
!717 = !DISubprogram(name: "__atomic_base", scope: !655, file: !6, line: 982, type: !718, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !678, !659}
!720 = !DISubprogram(name: "__atomic_base", scope: !655, file: !6, line: 984, type: !721, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !678, !723}
!723 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !670, size: 64)
!724 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIjLb0EEaSERKS1_", scope: !655, file: !6, line: 985, type: !725, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DISubroutineType(types: !726)
!726 = !{!727, !678, !723}
!727 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !655, size: 64)
!728 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIjLb0EEaSERKS1_", scope: !655, file: !6, line: 986, type: !729, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!729 = !DISubroutineType(types: !730)
!730 = !{!727, !674, !723}
!731 = !{!732, !106}
!732 = !DITemplateTypeParameter(name: "_Tp", type: !659)
!733 = !DISubprogram(name: "__atomic_base", scope: !652, file: !6, line: 1008, type: !734, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!737 = !DISubprogram(name: "__atomic_base", scope: !652, file: !6, line: 1010, type: !738, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !736, !659}
!740 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE", scope: !652, file: !6, line: 1013, type: !741, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!659, !743, !659, !47}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!744 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !652)
!745 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE", scope: !652, file: !6, line: 1016, type: !746, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!659, !736, !659, !47}
!748 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EE9fetch_subEjNS_12memory_orderE", scope: !652, file: !6, line: 1019, type: !741, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIjLb1EE9fetch_subEjNS_12memory_orderE", scope: !652, file: !6, line: 1022, type: !746, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EE9fetch_andEjNS_12memory_orderE", scope: !652, file: !6, line: 1025, type: !741, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!751 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIjLb1EE9fetch_andEjNS_12memory_orderE", scope: !652, file: !6, line: 1028, type: !746, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!752 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EE8fetch_orEjNS_12memory_orderE", scope: !652, file: !6, line: 1031, type: !741, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIjLb1EE8fetch_orEjNS_12memory_orderE", scope: !652, file: !6, line: 1034, type: !746, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EE9fetch_xorEjNS_12memory_orderE", scope: !652, file: !6, line: 1037, type: !741, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!755 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIjLb1EE9fetch_xorEjNS_12memory_orderE", scope: !652, file: !6, line: 1040, type: !746, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!756 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEppEi", scope: !652, file: !6, line: 1044, type: !757, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!757 = !DISubroutineType(types: !758)
!758 = !{!659, !743, !133}
!759 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEppEi", scope: !652, file: !6, line: 1046, type: !760, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!760 = !DISubroutineType(types: !761)
!761 = !{!659, !736, !133}
!762 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEmmEi", scope: !652, file: !6, line: 1048, type: !757, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEmmEi", scope: !652, file: !6, line: 1050, type: !760, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEppEv", scope: !652, file: !6, line: 1052, type: !765, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!659, !743}
!767 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEppEv", scope: !652, file: !6, line: 1054, type: !768, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DISubroutineType(types: !769)
!769 = !{!659, !736}
!770 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEmmEv", scope: !652, file: !6, line: 1056, type: !765, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!771 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEmmEv", scope: !652, file: !6, line: 1058, type: !768, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!772 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEpLEj", scope: !652, file: !6, line: 1060, type: !773, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DISubroutineType(types: !774)
!774 = !{!659, !743, !659}
!775 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEpLEj", scope: !652, file: !6, line: 1062, type: !776, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!776 = !DISubroutineType(types: !777)
!777 = !{!659, !736, !659}
!778 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEmIEj", scope: !652, file: !6, line: 1064, type: !773, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEmIEj", scope: !652, file: !6, line: 1066, type: !776, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEaNEj", scope: !652, file: !6, line: 1068, type: !773, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!781 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEaNEj", scope: !652, file: !6, line: 1070, type: !776, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!782 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEoREj", scope: !652, file: !6, line: 1072, type: !773, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEoREj", scope: !652, file: !6, line: 1074, type: !776, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIjLb1EEeOEj", scope: !652, file: !6, line: 1076, type: !773, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!785 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIjLb1EEeOEj", scope: !652, file: !6, line: 1078, type: !776, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!786 = !{!732, !162}
!787 = !DISubprogram(name: "atomic", scope: !649, file: !6, line: 1089, type: !788, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!791 = !DISubprogram(name: "atomic", scope: !649, file: !6, line: 1091, type: !792, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !790, !659}
!794 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIjEaSEj", scope: !649, file: !6, line: 1094, type: !795, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!795 = !DISubroutineType(types: !796)
!796 = !{!659, !797, !659}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!798 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !649)
!799 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIjEaSEj", scope: !649, file: !6, line: 1097, type: !800, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DISubroutineType(types: !801)
!801 = !{!659, !790, !659}
!802 = !{!732}
!803 = !DIGlobalVariableExpression(var: !804)
!804 = distinct !DIGlobalVariable(name: "x_long", scope: !2, file: !3, line: 13, type: !805, isLocal: false, isDefinition: true)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<long>", scope: !7, file: !6, line: 1084, size: 64, elements: !806, templateParams: !958, identifier: "_ZTSNSt3__16atomicIlEE")
!806 = !{!807, !943, !947, !950, !955}
!807 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !805, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<long, true>", scope: !7, file: !6, line: 1003, size: 64, elements: !809, templateParams: !942, identifier: "_ZTSNSt3__113__atomic_baseIlLb1EEE")
!809 = !{!810, !889, !893, !896, !901, !904, !905, !906, !907, !908, !909, !910, !911, !912, !915, !918, !919, !920, !923, !926, !927, !928, !931, !934, !935, !936, !937, !938, !939, !940, !941}
!810 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !808, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<long, false>", scope: !7, file: !6, line: 891, size: 64, elements: !812, templateParams: !887, identifier: "_ZTSNSt3__113__atomic_baseIlLb0EEE")
!812 = !{!813, !816, !822, !827, !831, !835, !838, !841, !844, !847, !850, !853, !857, !860, !861, !862, !865, !868, !869, !870, !873, !876, !880, !884}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !811, file: !6, line: 893, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !815)
!815 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!816 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIlLb0EE12is_lock_freeEv", scope: !811, file: !6, line: 900, type: !817, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!817 = !DISubroutineType(types: !818)
!818 = !{!34, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !811)
!822 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIlLb0EE12is_lock_freeEv", scope: !811, file: !6, line: 909, type: !823, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!823 = !DISubroutineType(types: !824)
!824 = !{!34, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!827 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIlLb0EE5storeElNS_12memory_orderE", scope: !811, file: !6, line: 912, type: !828, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !830, !815, !47}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!831 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIlLb0EE5storeElNS_12memory_orderE", scope: !811, file: !6, line: 916, type: !832, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834, !815, !47}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!835 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIlLb0EE4loadENS_12memory_orderE", scope: !811, file: !6, line: 920, type: !836, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DISubroutineType(types: !837)
!837 = !{!815, !819, !47}
!838 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIlLb0EE4loadENS_12memory_orderE", scope: !811, file: !6, line: 924, type: !839, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!839 = !DISubroutineType(types: !840)
!840 = !{!815, !825, !47}
!841 = !DISubprogram(name: "operator long", linkageName: "_ZNVKSt3__113__atomic_baseIlLb0EEcvlEv", scope: !811, file: !6, line: 928, type: !842, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DISubroutineType(types: !843)
!843 = !{!815, !819}
!844 = !DISubprogram(name: "operator long", linkageName: "_ZNKSt3__113__atomic_baseIlLb0EEcvlEv", scope: !811, file: !6, line: 930, type: !845, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!845 = !DISubroutineType(types: !846)
!846 = !{!815, !825}
!847 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIlLb0EE8exchangeElNS_12memory_orderE", scope: !811, file: !6, line: 932, type: !848, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!815, !830, !815, !47}
!850 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIlLb0EE8exchangeElNS_12memory_orderE", scope: !811, file: !6, line: 935, type: !851, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!815, !834, !815, !47}
!853 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIlLb0EE21compare_exchange_weakERllNS_12memory_orderES3_", scope: !811, file: !6, line: 938, type: !854, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!854 = !DISubroutineType(types: !855)
!855 = !{!34, !830, !856, !815, !47, !47}
!856 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !815, size: 64)
!857 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIlLb0EE21compare_exchange_weakERllNS_12memory_orderES3_", scope: !811, file: !6, line: 943, type: !858, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DISubroutineType(types: !859)
!859 = !{!34, !834, !856, !815, !47, !47}
!860 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIlLb0EE23compare_exchange_strongERllNS_12memory_orderES3_", scope: !811, file: !6, line: 948, type: !854, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!861 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIlLb0EE23compare_exchange_strongERllNS_12memory_orderES3_", scope: !811, file: !6, line: 953, type: !858, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIlLb0EE21compare_exchange_weakERllNS_12memory_orderE", scope: !811, file: !6, line: 958, type: !863, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DISubroutineType(types: !864)
!864 = !{!34, !830, !856, !815, !47}
!865 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIlLb0EE21compare_exchange_weakERllNS_12memory_orderE", scope: !811, file: !6, line: 962, type: !866, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!866 = !DISubroutineType(types: !867)
!867 = !{!34, !834, !856, !815, !47}
!868 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIlLb0EE23compare_exchange_strongERllNS_12memory_orderE", scope: !811, file: !6, line: 966, type: !863, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!869 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIlLb0EE23compare_exchange_strongERllNS_12memory_orderE", scope: !811, file: !6, line: 970, type: !866, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!870 = !DISubprogram(name: "__atomic_base", scope: !811, file: !6, line: 976, type: !871, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !834}
!873 = !DISubprogram(name: "__atomic_base", scope: !811, file: !6, line: 982, type: !874, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !834, !815}
!876 = !DISubprogram(name: "__atomic_base", scope: !811, file: !6, line: 984, type: !877, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !834, !879}
!879 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !826, size: 64)
!880 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIlLb0EEaSERKS1_", scope: !811, file: !6, line: 985, type: !881, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!881 = !DISubroutineType(types: !882)
!882 = !{!883, !834, !879}
!883 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !811, size: 64)
!884 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIlLb0EEaSERKS1_", scope: !811, file: !6, line: 986, type: !885, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DISubroutineType(types: !886)
!886 = !{!883, !830, !879}
!887 = !{!888, !106}
!888 = !DITemplateTypeParameter(name: "_Tp", type: !815)
!889 = !DISubprogram(name: "__atomic_base", scope: !808, file: !6, line: 1008, type: !890, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!893 = !DISubprogram(name: "__atomic_base", scope: !808, file: !6, line: 1010, type: !894, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !892, !815}
!896 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE", scope: !808, file: !6, line: 1013, type: !897, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!897 = !DISubroutineType(types: !898)
!898 = !{!815, !899, !815, !47}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!900 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !808)
!901 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE", scope: !808, file: !6, line: 1016, type: !902, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DISubroutineType(types: !903)
!903 = !{!815, !892, !815, !47}
!904 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EE9fetch_subElNS_12memory_orderE", scope: !808, file: !6, line: 1019, type: !897, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIlLb1EE9fetch_subElNS_12memory_orderE", scope: !808, file: !6, line: 1022, type: !902, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!906 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EE9fetch_andElNS_12memory_orderE", scope: !808, file: !6, line: 1025, type: !897, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!907 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIlLb1EE9fetch_andElNS_12memory_orderE", scope: !808, file: !6, line: 1028, type: !902, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!908 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EE8fetch_orElNS_12memory_orderE", scope: !808, file: !6, line: 1031, type: !897, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIlLb1EE8fetch_orElNS_12memory_orderE", scope: !808, file: !6, line: 1034, type: !902, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!910 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EE9fetch_xorElNS_12memory_orderE", scope: !808, file: !6, line: 1037, type: !897, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!911 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIlLb1EE9fetch_xorElNS_12memory_orderE", scope: !808, file: !6, line: 1040, type: !902, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEppEi", scope: !808, file: !6, line: 1044, type: !913, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DISubroutineType(types: !914)
!914 = !{!815, !899, !133}
!915 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEppEi", scope: !808, file: !6, line: 1046, type: !916, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!916 = !DISubroutineType(types: !917)
!917 = !{!815, !892, !133}
!918 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEmmEi", scope: !808, file: !6, line: 1048, type: !913, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!919 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEmmEi", scope: !808, file: !6, line: 1050, type: !916, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!920 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEppEv", scope: !808, file: !6, line: 1052, type: !921, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!921 = !DISubroutineType(types: !922)
!922 = !{!815, !899}
!923 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEppEv", scope: !808, file: !6, line: 1054, type: !924, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DISubroutineType(types: !925)
!925 = !{!815, !892}
!926 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEmmEv", scope: !808, file: !6, line: 1056, type: !921, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!927 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEmmEv", scope: !808, file: !6, line: 1058, type: !924, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEpLEl", scope: !808, file: !6, line: 1060, type: !929, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!929 = !DISubroutineType(types: !930)
!930 = !{!815, !899, !815}
!931 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEpLEl", scope: !808, file: !6, line: 1062, type: !932, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!932 = !DISubroutineType(types: !933)
!933 = !{!815, !892, !815}
!934 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEmIEl", scope: !808, file: !6, line: 1064, type: !929, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!935 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEmIEl", scope: !808, file: !6, line: 1066, type: !932, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!936 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEaNEl", scope: !808, file: !6, line: 1068, type: !929, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!937 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEaNEl", scope: !808, file: !6, line: 1070, type: !932, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!938 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEoREl", scope: !808, file: !6, line: 1072, type: !929, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!939 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEoREl", scope: !808, file: !6, line: 1074, type: !932, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!940 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIlLb1EEeOEl", scope: !808, file: !6, line: 1076, type: !929, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIlLb1EEeOEl", scope: !808, file: !6, line: 1078, type: !932, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!942 = !{!888, !162}
!943 = !DISubprogram(name: "atomic", scope: !805, file: !6, line: 1089, type: !944, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!947 = !DISubprogram(name: "atomic", scope: !805, file: !6, line: 1091, type: !948, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !946, !815}
!950 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIlEaSEl", scope: !805, file: !6, line: 1094, type: !951, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DISubroutineType(types: !952)
!952 = !{!815, !953, !815}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!954 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !805)
!955 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIlEaSEl", scope: !805, file: !6, line: 1097, type: !956, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!956 = !DISubroutineType(types: !957)
!957 = !{!815, !946, !815}
!958 = !{!888}
!959 = !DIGlobalVariableExpression(var: !960)
!960 = distinct !DIGlobalVariable(name: "x_unsigned_long", scope: !2, file: !3, line: 14, type: !961, isLocal: false, isDefinition: true)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned long>", scope: !7, file: !6, line: 1084, size: 64, elements: !962, templateParams: !1114, identifier: "_ZTSNSt3__16atomicImEE")
!962 = !{!963, !1099, !1103, !1106, !1111}
!963 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !961, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long, true>", scope: !7, file: !6, line: 1003, size: 64, elements: !965, templateParams: !1098, identifier: "_ZTSNSt3__113__atomic_baseImLb1EEE")
!965 = !{!966, !1045, !1049, !1052, !1057, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1071, !1074, !1075, !1076, !1079, !1082, !1083, !1084, !1087, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!966 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !964, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long, false>", scope: !7, file: !6, line: 891, size: 64, elements: !968, templateParams: !1043, identifier: "_ZTSNSt3__113__atomic_baseImLb0EEE")
!968 = !{!969, !972, !978, !983, !987, !991, !994, !997, !1000, !1003, !1006, !1009, !1013, !1016, !1017, !1018, !1021, !1024, !1025, !1026, !1029, !1032, !1036, !1040}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !967, file: !6, line: 893, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !971)
!971 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!972 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseImLb0EE12is_lock_freeEv", scope: !967, file: !6, line: 900, type: !973, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!34, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !967)
!978 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseImLb0EE12is_lock_freeEv", scope: !967, file: !6, line: 909, type: !979, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DISubroutineType(types: !980)
!980 = !{!34, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!983 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseImLb0EE5storeEmNS_12memory_orderE", scope: !967, file: !6, line: 912, type: !984, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !986, !971, !47}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!987 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseImLb0EE5storeEmNS_12memory_orderE", scope: !967, file: !6, line: 916, type: !988, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !990, !971, !47}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!991 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseImLb0EE4loadENS_12memory_orderE", scope: !967, file: !6, line: 920, type: !992, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!992 = !DISubroutineType(types: !993)
!993 = !{!971, !975, !47}
!994 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseImLb0EE4loadENS_12memory_orderE", scope: !967, file: !6, line: 924, type: !995, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DISubroutineType(types: !996)
!996 = !{!971, !981, !47}
!997 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNVKSt3__113__atomic_baseImLb0EEcvmEv", scope: !967, file: !6, line: 928, type: !998, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!998 = !DISubroutineType(types: !999)
!999 = !{!971, !975}
!1000 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNKSt3__113__atomic_baseImLb0EEcvmEv", scope: !967, file: !6, line: 930, type: !1001, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!971, !981}
!1003 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseImLb0EE8exchangeEmNS_12memory_orderE", scope: !967, file: !6, line: 932, type: !1004, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!971, !986, !971, !47}
!1006 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseImLb0EE8exchangeEmNS_12memory_orderE", scope: !967, file: !6, line: 935, type: !1007, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!971, !990, !971, !47}
!1009 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseImLb0EE21compare_exchange_weakERmmNS_12memory_orderES3_", scope: !967, file: !6, line: 938, type: !1010, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!34, !986, !1012, !971, !47, !47}
!1012 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !971, size: 64)
!1013 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseImLb0EE21compare_exchange_weakERmmNS_12memory_orderES3_", scope: !967, file: !6, line: 943, type: !1014, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!34, !990, !1012, !971, !47, !47}
!1016 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseImLb0EE23compare_exchange_strongERmmNS_12memory_orderES3_", scope: !967, file: !6, line: 948, type: !1010, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!1017 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseImLb0EE23compare_exchange_strongERmmNS_12memory_orderES3_", scope: !967, file: !6, line: 953, type: !1014, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1018 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseImLb0EE21compare_exchange_weakERmmNS_12memory_orderE", scope: !967, file: !6, line: 958, type: !1019, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!34, !986, !1012, !971, !47}
!1021 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseImLb0EE21compare_exchange_weakERmmNS_12memory_orderE", scope: !967, file: !6, line: 962, type: !1022, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!34, !990, !1012, !971, !47}
!1024 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseImLb0EE23compare_exchange_strongERmmNS_12memory_orderE", scope: !967, file: !6, line: 966, type: !1019, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseImLb0EE23compare_exchange_strongERmmNS_12memory_orderE", scope: !967, file: !6, line: 970, type: !1022, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!1026 = !DISubprogram(name: "__atomic_base", scope: !967, file: !6, line: 976, type: !1027, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !990}
!1029 = !DISubprogram(name: "__atomic_base", scope: !967, file: !6, line: 982, type: !1030, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !990, !971}
!1032 = !DISubprogram(name: "__atomic_base", scope: !967, file: !6, line: 984, type: !1033, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !990, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !982, size: 64)
!1036 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseImLb0EEaSERKS1_", scope: !967, file: !6, line: 985, type: !1037, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!1039, !990, !1035}
!1039 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !967, size: 64)
!1040 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseImLb0EEaSERKS1_", scope: !967, file: !6, line: 986, type: !1041, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!1039, !986, !1035}
!1043 = !{!1044, !106}
!1044 = !DITemplateTypeParameter(name: "_Tp", type: !971)
!1045 = !DISubprogram(name: "__atomic_base", scope: !964, file: !6, line: 1008, type: !1046, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1049 = !DISubprogram(name: "__atomic_base", scope: !964, file: !6, line: 1010, type: !1050, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !1048, !971}
!1052 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE", scope: !964, file: !6, line: 1013, type: !1053, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!971, !1055, !971, !47}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1056 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !964)
!1057 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE", scope: !964, file: !6, line: 1016, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!971, !1048, !971, !47}
!1060 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseImLb1EE9fetch_subEmNS_12memory_orderE", scope: !964, file: !6, line: 1019, type: !1053, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!1061 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseImLb1EE9fetch_subEmNS_12memory_orderE", scope: !964, file: !6, line: 1022, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!1062 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseImLb1EE9fetch_andEmNS_12memory_orderE", scope: !964, file: !6, line: 1025, type: !1053, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseImLb1EE9fetch_andEmNS_12memory_orderE", scope: !964, file: !6, line: 1028, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!1064 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseImLb1EE8fetch_orEmNS_12memory_orderE", scope: !964, file: !6, line: 1031, type: !1053, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseImLb1EE8fetch_orEmNS_12memory_orderE", scope: !964, file: !6, line: 1034, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!1066 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseImLb1EE9fetch_xorEmNS_12memory_orderE", scope: !964, file: !6, line: 1037, type: !1053, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseImLb1EE9fetch_xorEmNS_12memory_orderE", scope: !964, file: !6, line: 1040, type: !1058, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!1068 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEppEi", scope: !964, file: !6, line: 1044, type: !1069, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!971, !1055, !133}
!1071 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseImLb1EEppEi", scope: !964, file: !6, line: 1046, type: !1072, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!971, !1048, !133}
!1074 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEmmEi", scope: !964, file: !6, line: 1048, type: !1069, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseImLb1EEmmEi", scope: !964, file: !6, line: 1050, type: !1072, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!1076 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEppEv", scope: !964, file: !6, line: 1052, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!971, !1055}
!1079 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseImLb1EEppEv", scope: !964, file: !6, line: 1054, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!971, !1048}
!1082 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEmmEv", scope: !964, file: !6, line: 1056, type: !1077, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseImLb1EEmmEv", scope: !964, file: !6, line: 1058, type: !1080, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEpLEm", scope: !964, file: !6, line: 1060, type: !1085, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!971, !1055, !971}
!1087 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseImLb1EEpLEm", scope: !964, file: !6, line: 1062, type: !1088, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!971, !1048, !971}
!1090 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEmIEm", scope: !964, file: !6, line: 1064, type: !1085, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseImLb1EEmIEm", scope: !964, file: !6, line: 1066, type: !1088, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!1092 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEaNEm", scope: !964, file: !6, line: 1068, type: !1085, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!1093 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseImLb1EEaNEm", scope: !964, file: !6, line: 1070, type: !1088, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!1094 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEoREm", scope: !964, file: !6, line: 1072, type: !1085, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseImLb1EEoREm", scope: !964, file: !6, line: 1074, type: !1088, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!1096 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseImLb1EEeOEm", scope: !964, file: !6, line: 1076, type: !1085, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1097 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseImLb1EEeOEm", scope: !964, file: !6, line: 1078, type: !1088, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!1098 = !{!1044, !162}
!1099 = !DISubprogram(name: "atomic", scope: !961, file: !6, line: 1089, type: !1100, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1103 = !DISubprogram(name: "atomic", scope: !961, file: !6, line: 1091, type: !1104, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !1102, !971}
!1106 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicImEaSEm", scope: !961, file: !6, line: 1094, type: !1107, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!971, !1109, !971}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !961)
!1111 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicImEaSEm", scope: !961, file: !6, line: 1097, type: !1112, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!971, !1102, !971}
!1114 = !{!1044}
!1115 = !DIGlobalVariableExpression(var: !1116)
!1116 = distinct !DIGlobalVariable(name: "x_long_long", scope: !2, file: !3, line: 15, type: !1117, isLocal: false, isDefinition: true)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<long long>", scope: !7, file: !6, line: 1084, size: 64, elements: !1118, templateParams: !1270, identifier: "_ZTSNSt3__16atomicIxEE")
!1118 = !{!1119, !1255, !1259, !1262, !1267}
!1119 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1117, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<long long, true>", scope: !7, file: !6, line: 1003, size: 64, elements: !1121, templateParams: !1254, identifier: "_ZTSNSt3__113__atomic_baseIxLb1EEE")
!1121 = !{!1122, !1201, !1205, !1208, !1213, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1227, !1230, !1231, !1232, !1235, !1238, !1239, !1240, !1243, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1122 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1120, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<long long, false>", scope: !7, file: !6, line: 891, size: 64, elements: !1124, templateParams: !1199, identifier: "_ZTSNSt3__113__atomic_baseIxLb0EEE")
!1124 = !{!1125, !1128, !1134, !1139, !1143, !1147, !1150, !1153, !1156, !1159, !1162, !1165, !1169, !1172, !1173, !1174, !1177, !1180, !1181, !1182, !1185, !1188, !1192, !1196}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !1123, file: !6, line: 893, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !1127)
!1127 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1128 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIxLb0EE12is_lock_freeEv", scope: !1123, file: !6, line: 900, type: !1129, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!34, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1123)
!1134 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIxLb0EE12is_lock_freeEv", scope: !1123, file: !6, line: 909, type: !1135, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!34, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1139 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIxLb0EE5storeExNS_12memory_orderE", scope: !1123, file: !6, line: 912, type: !1140, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1142, !1127, !47}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1143 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIxLb0EE5storeExNS_12memory_orderE", scope: !1123, file: !6, line: 916, type: !1144, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !1146, !1127, !47}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1147 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIxLb0EE4loadENS_12memory_orderE", scope: !1123, file: !6, line: 920, type: !1148, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!1127, !1131, !47}
!1150 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIxLb0EE4loadENS_12memory_orderE", scope: !1123, file: !6, line: 924, type: !1151, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1127, !1137, !47}
!1153 = !DISubprogram(name: "operator long long", linkageName: "_ZNVKSt3__113__atomic_baseIxLb0EEcvxEv", scope: !1123, file: !6, line: 928, type: !1154, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!1127, !1131}
!1156 = !DISubprogram(name: "operator long long", linkageName: "_ZNKSt3__113__atomic_baseIxLb0EEcvxEv", scope: !1123, file: !6, line: 930, type: !1157, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1127, !1137}
!1159 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIxLb0EE8exchangeExNS_12memory_orderE", scope: !1123, file: !6, line: 932, type: !1160, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1127, !1142, !1127, !47}
!1162 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIxLb0EE8exchangeExNS_12memory_orderE", scope: !1123, file: !6, line: 935, type: !1163, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!1127, !1146, !1127, !47}
!1165 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIxLb0EE21compare_exchange_weakERxxNS_12memory_orderES3_", scope: !1123, file: !6, line: 938, type: !1166, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!34, !1142, !1168, !1127, !47, !47}
!1168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1127, size: 64)
!1169 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIxLb0EE21compare_exchange_weakERxxNS_12memory_orderES3_", scope: !1123, file: !6, line: 943, type: !1170, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!34, !1146, !1168, !1127, !47, !47}
!1172 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIxLb0EE23compare_exchange_strongERxxNS_12memory_orderES3_", scope: !1123, file: !6, line: 948, type: !1166, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!1173 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIxLb0EE23compare_exchange_strongERxxNS_12memory_orderES3_", scope: !1123, file: !6, line: 953, type: !1170, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIxLb0EE21compare_exchange_weakERxxNS_12memory_orderE", scope: !1123, file: !6, line: 958, type: !1175, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!34, !1142, !1168, !1127, !47}
!1177 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIxLb0EE21compare_exchange_weakERxxNS_12memory_orderE", scope: !1123, file: !6, line: 962, type: !1178, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!34, !1146, !1168, !1127, !47}
!1180 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIxLb0EE23compare_exchange_strongERxxNS_12memory_orderE", scope: !1123, file: !6, line: 966, type: !1175, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIxLb0EE23compare_exchange_strongERxxNS_12memory_orderE", scope: !1123, file: !6, line: 970, type: !1178, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!1182 = !DISubprogram(name: "__atomic_base", scope: !1123, file: !6, line: 976, type: !1183, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1146}
!1185 = !DISubprogram(name: "__atomic_base", scope: !1123, file: !6, line: 982, type: !1186, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1146, !1127}
!1188 = !DISubprogram(name: "__atomic_base", scope: !1123, file: !6, line: 984, type: !1189, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !1146, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1138, size: 64)
!1192 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIxLb0EEaSERKS1_", scope: !1123, file: !6, line: 985, type: !1193, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!1195, !1146, !1191}
!1195 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1123, size: 64)
!1196 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIxLb0EEaSERKS1_", scope: !1123, file: !6, line: 986, type: !1197, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1195, !1142, !1191}
!1199 = !{!1200, !106}
!1200 = !DITemplateTypeParameter(name: "_Tp", type: !1127)
!1201 = !DISubprogram(name: "__atomic_base", scope: !1120, file: !6, line: 1008, type: !1202, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1205 = !DISubprogram(name: "__atomic_base", scope: !1120, file: !6, line: 1010, type: !1206, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1204, !1127}
!1208 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE", scope: !1120, file: !6, line: 1013, type: !1209, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1127, !1211, !1127, !47}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1212 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1120)
!1213 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE", scope: !1120, file: !6, line: 1016, type: !1214, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!1127, !1204, !1127, !47}
!1216 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EE9fetch_subExNS_12memory_orderE", scope: !1120, file: !6, line: 1019, type: !1209, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIxLb1EE9fetch_subExNS_12memory_orderE", scope: !1120, file: !6, line: 1022, type: !1214, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!1218 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EE9fetch_andExNS_12memory_orderE", scope: !1120, file: !6, line: 1025, type: !1209, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!1219 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIxLb1EE9fetch_andExNS_12memory_orderE", scope: !1120, file: !6, line: 1028, type: !1214, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!1220 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EE8fetch_orExNS_12memory_orderE", scope: !1120, file: !6, line: 1031, type: !1209, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!1221 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIxLb1EE8fetch_orExNS_12memory_orderE", scope: !1120, file: !6, line: 1034, type: !1214, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!1222 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EE9fetch_xorExNS_12memory_orderE", scope: !1120, file: !6, line: 1037, type: !1209, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIxLb1EE9fetch_xorExNS_12memory_orderE", scope: !1120, file: !6, line: 1040, type: !1214, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!1224 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEppEi", scope: !1120, file: !6, line: 1044, type: !1225, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1127, !1211, !133}
!1227 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEppEi", scope: !1120, file: !6, line: 1046, type: !1228, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1127, !1204, !133}
!1230 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEmmEi", scope: !1120, file: !6, line: 1048, type: !1225, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!1231 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEmmEi", scope: !1120, file: !6, line: 1050, type: !1228, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!1232 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEppEv", scope: !1120, file: !6, line: 1052, type: !1233, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1127, !1211}
!1235 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEppEv", scope: !1120, file: !6, line: 1054, type: !1236, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1127, !1204}
!1238 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEmmEv", scope: !1120, file: !6, line: 1056, type: !1233, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!1239 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEmmEv", scope: !1120, file: !6, line: 1058, type: !1236, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!1240 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEpLEx", scope: !1120, file: !6, line: 1060, type: !1241, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1127, !1211, !1127}
!1243 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEpLEx", scope: !1120, file: !6, line: 1062, type: !1244, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1127, !1204, !1127}
!1246 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEmIEx", scope: !1120, file: !6, line: 1064, type: !1241, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!1247 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEmIEx", scope: !1120, file: !6, line: 1066, type: !1244, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!1248 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEaNEx", scope: !1120, file: !6, line: 1068, type: !1241, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!1249 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEaNEx", scope: !1120, file: !6, line: 1070, type: !1244, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!1250 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEoREx", scope: !1120, file: !6, line: 1072, type: !1241, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!1251 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEoREx", scope: !1120, file: !6, line: 1074, type: !1244, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!1252 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIxLb1EEeOEx", scope: !1120, file: !6, line: 1076, type: !1241, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1253 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIxLb1EEeOEx", scope: !1120, file: !6, line: 1078, type: !1244, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!1254 = !{!1200, !162}
!1255 = !DISubprogram(name: "atomic", scope: !1117, file: !6, line: 1089, type: !1256, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1259 = !DISubprogram(name: "atomic", scope: !1117, file: !6, line: 1091, type: !1260, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !1258, !1127}
!1262 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIxEaSEx", scope: !1117, file: !6, line: 1094, type: !1263, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1127, !1265, !1127}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1266 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1117)
!1267 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIxEaSEx", scope: !1117, file: !6, line: 1097, type: !1268, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1127, !1258, !1127}
!1270 = !{!1200}
!1271 = !DIGlobalVariableExpression(var: !1272)
!1272 = distinct !DIGlobalVariable(name: "x_unsigned_long_long", scope: !2, file: !3, line: 16, type: !1273, isLocal: false, isDefinition: true)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned long long>", scope: !7, file: !6, line: 1084, size: 64, elements: !1274, templateParams: !1426, identifier: "_ZTSNSt3__16atomicIyEE")
!1274 = !{!1275, !1411, !1415, !1418, !1423}
!1275 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1273, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long long, true>", scope: !7, file: !6, line: 1003, size: 64, elements: !1277, templateParams: !1410, identifier: "_ZTSNSt3__113__atomic_baseIyLb1EEE")
!1277 = !{!1278, !1357, !1361, !1364, !1369, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1383, !1386, !1387, !1388, !1391, !1394, !1395, !1396, !1399, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1278 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1276, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned long long, false>", scope: !7, file: !6, line: 891, size: 64, elements: !1280, templateParams: !1355, identifier: "_ZTSNSt3__113__atomic_baseIyLb0EEE")
!1280 = !{!1281, !1284, !1290, !1295, !1299, !1303, !1306, !1309, !1312, !1315, !1318, !1321, !1325, !1328, !1329, !1330, !1333, !1336, !1337, !1338, !1341, !1344, !1348, !1352}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !1279, file: !6, line: 893, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !1283)
!1283 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1284 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIyLb0EE12is_lock_freeEv", scope: !1279, file: !6, line: 900, type: !1285, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!34, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1279)
!1290 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIyLb0EE12is_lock_freeEv", scope: !1279, file: !6, line: 909, type: !1291, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!34, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1295 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIyLb0EE5storeEyNS_12memory_orderE", scope: !1279, file: !6, line: 912, type: !1296, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1298, !1283, !47}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1299 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIyLb0EE5storeEyNS_12memory_orderE", scope: !1279, file: !6, line: 916, type: !1300, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1302, !1283, !47}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1303 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIyLb0EE4loadENS_12memory_orderE", scope: !1279, file: !6, line: 920, type: !1304, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1283, !1287, !47}
!1306 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIyLb0EE4loadENS_12memory_orderE", scope: !1279, file: !6, line: 924, type: !1307, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1283, !1293, !47}
!1309 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNVKSt3__113__atomic_baseIyLb0EEcvyEv", scope: !1279, file: !6, line: 928, type: !1310, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1283, !1287}
!1312 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNKSt3__113__atomic_baseIyLb0EEcvyEv", scope: !1279, file: !6, line: 930, type: !1313, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1283, !1293}
!1315 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIyLb0EE8exchangeEyNS_12memory_orderE", scope: !1279, file: !6, line: 932, type: !1316, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1283, !1298, !1283, !47}
!1318 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIyLb0EE8exchangeEyNS_12memory_orderE", scope: !1279, file: !6, line: 935, type: !1319, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1283, !1302, !1283, !47}
!1321 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIyLb0EE21compare_exchange_weakERyyNS_12memory_orderES3_", scope: !1279, file: !6, line: 938, type: !1322, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!34, !1298, !1324, !1283, !47, !47}
!1324 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1283, size: 64)
!1325 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakERyyNS_12memory_orderES3_", scope: !1279, file: !6, line: 943, type: !1326, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!34, !1302, !1324, !1283, !47, !47}
!1328 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIyLb0EE23compare_exchange_strongERyyNS_12memory_orderES3_", scope: !1279, file: !6, line: 948, type: !1322, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!1329 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIyLb0EE23compare_exchange_strongERyyNS_12memory_orderES3_", scope: !1279, file: !6, line: 953, type: !1326, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1330 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIyLb0EE21compare_exchange_weakERyyNS_12memory_orderE", scope: !1279, file: !6, line: 958, type: !1331, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!34, !1298, !1324, !1283, !47}
!1333 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIyLb0EE21compare_exchange_weakERyyNS_12memory_orderE", scope: !1279, file: !6, line: 962, type: !1334, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!34, !1302, !1324, !1283, !47}
!1336 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIyLb0EE23compare_exchange_strongERyyNS_12memory_orderE", scope: !1279, file: !6, line: 966, type: !1331, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!1337 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIyLb0EE23compare_exchange_strongERyyNS_12memory_orderE", scope: !1279, file: !6, line: 970, type: !1334, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!1338 = !DISubprogram(name: "__atomic_base", scope: !1279, file: !6, line: 976, type: !1339, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !1302}
!1341 = !DISubprogram(name: "__atomic_base", scope: !1279, file: !6, line: 982, type: !1342, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !1302, !1283}
!1344 = !DISubprogram(name: "__atomic_base", scope: !1279, file: !6, line: 984, type: !1345, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !1302, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1294, size: 64)
!1348 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIyLb0EEaSERKS1_", scope: !1279, file: !6, line: 985, type: !1349, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !1302, !1347}
!1351 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1279, size: 64)
!1352 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIyLb0EEaSERKS1_", scope: !1279, file: !6, line: 986, type: !1353, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1351, !1298, !1347}
!1355 = !{!1356, !106}
!1356 = !DITemplateTypeParameter(name: "_Tp", type: !1283)
!1357 = !DISubprogram(name: "__atomic_base", scope: !1276, file: !6, line: 1008, type: !1358, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1361 = !DISubprogram(name: "__atomic_base", scope: !1276, file: !6, line: 1010, type: !1362, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !1360, !1283}
!1364 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EE9fetch_addEyNS_12memory_orderE", scope: !1276, file: !6, line: 1013, type: !1365, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!1283, !1367, !1283, !47}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1368 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1276)
!1369 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIyLb1EE9fetch_addEyNS_12memory_orderE", scope: !1276, file: !6, line: 1016, type: !1370, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1283, !1360, !1283, !47}
!1372 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EE9fetch_subEyNS_12memory_orderE", scope: !1276, file: !6, line: 1019, type: !1365, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!1373 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIyLb1EE9fetch_subEyNS_12memory_orderE", scope: !1276, file: !6, line: 1022, type: !1370, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!1374 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EE9fetch_andEyNS_12memory_orderE", scope: !1276, file: !6, line: 1025, type: !1365, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!1375 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIyLb1EE9fetch_andEyNS_12memory_orderE", scope: !1276, file: !6, line: 1028, type: !1370, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!1376 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EE8fetch_orEyNS_12memory_orderE", scope: !1276, file: !6, line: 1031, type: !1365, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!1377 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIyLb1EE8fetch_orEyNS_12memory_orderE", scope: !1276, file: !6, line: 1034, type: !1370, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!1378 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EE9fetch_xorEyNS_12memory_orderE", scope: !1276, file: !6, line: 1037, type: !1365, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!1379 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIyLb1EE9fetch_xorEyNS_12memory_orderE", scope: !1276, file: !6, line: 1040, type: !1370, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!1380 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEppEi", scope: !1276, file: !6, line: 1044, type: !1381, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1283, !1367, !133}
!1383 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEppEi", scope: !1276, file: !6, line: 1046, type: !1384, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1283, !1360, !133}
!1386 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEmmEi", scope: !1276, file: !6, line: 1048, type: !1381, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!1387 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEmmEi", scope: !1276, file: !6, line: 1050, type: !1384, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!1388 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEppEv", scope: !1276, file: !6, line: 1052, type: !1389, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!1283, !1367}
!1391 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEppEv", scope: !1276, file: !6, line: 1054, type: !1392, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1283, !1360}
!1394 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEmmEv", scope: !1276, file: !6, line: 1056, type: !1389, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!1395 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEmmEv", scope: !1276, file: !6, line: 1058, type: !1392, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!1396 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEpLEy", scope: !1276, file: !6, line: 1060, type: !1397, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!1283, !1367, !1283}
!1399 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEpLEy", scope: !1276, file: !6, line: 1062, type: !1400, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1283, !1360, !1283}
!1402 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEmIEy", scope: !1276, file: !6, line: 1064, type: !1397, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!1403 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEmIEy", scope: !1276, file: !6, line: 1066, type: !1400, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!1404 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEaNEy", scope: !1276, file: !6, line: 1068, type: !1397, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!1405 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEaNEy", scope: !1276, file: !6, line: 1070, type: !1400, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!1406 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEoREy", scope: !1276, file: !6, line: 1072, type: !1397, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!1407 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEoREy", scope: !1276, file: !6, line: 1074, type: !1400, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!1408 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIyLb1EEeOEy", scope: !1276, file: !6, line: 1076, type: !1397, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1409 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIyLb1EEeOEy", scope: !1276, file: !6, line: 1078, type: !1400, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!1410 = !{!1356, !162}
!1411 = !DISubprogram(name: "atomic", scope: !1273, file: !6, line: 1089, type: !1412, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1415 = !DISubprogram(name: "atomic", scope: !1273, file: !6, line: 1091, type: !1416, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1414, !1283}
!1418 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIyEaSEy", scope: !1273, file: !6, line: 1094, type: !1419, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1283, !1421, !1283}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1422 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1273)
!1423 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIyEaSEy", scope: !1273, file: !6, line: 1097, type: !1424, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1283, !1414, !1283}
!1426 = !{!1356}
!1427 = !DIGlobalVariableExpression(var: !1428)
!1428 = distinct !DIGlobalVariable(name: "x_char16_t", scope: !2, file: !3, line: 17, type: !1429, isLocal: false, isDefinition: true)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<char16_t>", scope: !7, file: !6, line: 1084, size: 16, elements: !1430, templateParams: !1582, identifier: "_ZTSNSt3__16atomicIDsEE")
!1430 = !{!1431, !1567, !1571, !1574, !1579}
!1431 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1429, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<char16_t, true>", scope: !7, file: !6, line: 1003, size: 16, elements: !1433, templateParams: !1566, identifier: "_ZTSNSt3__113__atomic_baseIDsLb1EEE")
!1433 = !{!1434, !1513, !1517, !1520, !1525, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1539, !1542, !1543, !1544, !1547, !1550, !1551, !1552, !1555, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1434 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1432, baseType: !1435)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<char16_t, false>", scope: !7, file: !6, line: 891, size: 16, elements: !1436, templateParams: !1511, identifier: "_ZTSNSt3__113__atomic_baseIDsLb0EEE")
!1436 = !{!1437, !1440, !1446, !1451, !1455, !1459, !1462, !1465, !1468, !1471, !1474, !1477, !1481, !1484, !1485, !1486, !1489, !1492, !1493, !1494, !1497, !1500, !1504, !1508}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !1435, file: !6, line: 893, baseType: !1438, size: 16)
!1438 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !1439)
!1439 = !DIBasicType(name: "char16_t", size: 16, encoding: DW_ATE_UTF)
!1440 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIDsLb0EE12is_lock_freeEv", scope: !1435, file: !6, line: 900, type: !1441, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!34, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1435)
!1446 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIDsLb0EE12is_lock_freeEv", scope: !1435, file: !6, line: 909, type: !1447, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!34, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1451 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIDsLb0EE5storeEDsNS_12memory_orderE", scope: !1435, file: !6, line: 912, type: !1452, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1454, !1439, !47}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1455 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIDsLb0EE5storeEDsNS_12memory_orderE", scope: !1435, file: !6, line: 916, type: !1456, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458, !1439, !47}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1459 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIDsLb0EE4loadENS_12memory_orderE", scope: !1435, file: !6, line: 920, type: !1460, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1439, !1443, !47}
!1462 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIDsLb0EE4loadENS_12memory_orderE", scope: !1435, file: !6, line: 924, type: !1463, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1439, !1449, !47}
!1465 = !DISubprogram(name: "operator char16_t", linkageName: "_ZNVKSt3__113__atomic_baseIDsLb0EEcvDsEv", scope: !1435, file: !6, line: 928, type: !1466, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1439, !1443}
!1468 = !DISubprogram(name: "operator char16_t", linkageName: "_ZNKSt3__113__atomic_baseIDsLb0EEcvDsEv", scope: !1435, file: !6, line: 930, type: !1469, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1439, !1449}
!1471 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIDsLb0EE8exchangeEDsNS_12memory_orderE", scope: !1435, file: !6, line: 932, type: !1472, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1439, !1454, !1439, !47}
!1474 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIDsLb0EE8exchangeEDsNS_12memory_orderE", scope: !1435, file: !6, line: 935, type: !1475, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1439, !1458, !1439, !47}
!1477 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIDsLb0EE21compare_exchange_weakERDsDsNS_12memory_orderES3_", scope: !1435, file: !6, line: 938, type: !1478, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!34, !1454, !1480, !1439, !47, !47}
!1480 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1439, size: 64)
!1481 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIDsLb0EE21compare_exchange_weakERDsDsNS_12memory_orderES3_", scope: !1435, file: !6, line: 943, type: !1482, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!34, !1458, !1480, !1439, !47, !47}
!1484 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIDsLb0EE23compare_exchange_strongERDsDsNS_12memory_orderES3_", scope: !1435, file: !6, line: 948, type: !1478, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!1485 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIDsLb0EE23compare_exchange_strongERDsDsNS_12memory_orderES3_", scope: !1435, file: !6, line: 953, type: !1482, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1486 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIDsLb0EE21compare_exchange_weakERDsDsNS_12memory_orderE", scope: !1435, file: !6, line: 958, type: !1487, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!34, !1454, !1480, !1439, !47}
!1489 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIDsLb0EE21compare_exchange_weakERDsDsNS_12memory_orderE", scope: !1435, file: !6, line: 962, type: !1490, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!34, !1458, !1480, !1439, !47}
!1492 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIDsLb0EE23compare_exchange_strongERDsDsNS_12memory_orderE", scope: !1435, file: !6, line: 966, type: !1487, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!1493 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIDsLb0EE23compare_exchange_strongERDsDsNS_12memory_orderE", scope: !1435, file: !6, line: 970, type: !1490, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!1494 = !DISubprogram(name: "__atomic_base", scope: !1435, file: !6, line: 976, type: !1495, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !1458}
!1497 = !DISubprogram(name: "__atomic_base", scope: !1435, file: !6, line: 982, type: !1498, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !1458, !1439}
!1500 = !DISubprogram(name: "__atomic_base", scope: !1435, file: !6, line: 984, type: !1501, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !1458, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1450, size: 64)
!1504 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIDsLb0EEaSERKS1_", scope: !1435, file: !6, line: 985, type: !1505, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!1507, !1458, !1503}
!1507 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1435, size: 64)
!1508 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIDsLb0EEaSERKS1_", scope: !1435, file: !6, line: 986, type: !1509, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!1507, !1454, !1503}
!1511 = !{!1512, !106}
!1512 = !DITemplateTypeParameter(name: "_Tp", type: !1439)
!1513 = !DISubprogram(name: "__atomic_base", scope: !1432, file: !6, line: 1008, type: !1514, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1517 = !DISubprogram(name: "__atomic_base", scope: !1432, file: !6, line: 1010, type: !1518, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !1516, !1439}
!1520 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1013, type: !1521, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1439, !1523, !1439, !47}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1524 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1432)
!1525 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1016, type: !1526, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1439, !1516, !1439, !47}
!1528 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EE9fetch_subEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1019, type: !1521, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!1529 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EE9fetch_subEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1022, type: !1526, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!1530 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EE9fetch_andEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1025, type: !1521, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!1531 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EE9fetch_andEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1028, type: !1526, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!1532 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EE8fetch_orEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1031, type: !1521, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!1533 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EE8fetch_orEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1034, type: !1526, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!1534 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EE9fetch_xorEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1037, type: !1521, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!1535 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EE9fetch_xorEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1040, type: !1526, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!1536 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEppEi", scope: !1432, file: !6, line: 1044, type: !1537, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1439, !1523, !133}
!1539 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEppEi", scope: !1432, file: !6, line: 1046, type: !1540, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1439, !1516, !133}
!1542 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEmmEi", scope: !1432, file: !6, line: 1048, type: !1537, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!1543 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEmmEi", scope: !1432, file: !6, line: 1050, type: !1540, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!1544 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEppEv", scope: !1432, file: !6, line: 1052, type: !1545, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1439, !1523}
!1547 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEppEv", scope: !1432, file: !6, line: 1054, type: !1548, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1439, !1516}
!1550 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEmmEv", scope: !1432, file: !6, line: 1056, type: !1545, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!1551 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEmmEv", scope: !1432, file: !6, line: 1058, type: !1548, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!1552 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEpLEDs", scope: !1432, file: !6, line: 1060, type: !1553, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1439, !1523, !1439}
!1555 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEpLEDs", scope: !1432, file: !6, line: 1062, type: !1556, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1439, !1516, !1439}
!1558 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEmIEDs", scope: !1432, file: !6, line: 1064, type: !1553, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!1559 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEmIEDs", scope: !1432, file: !6, line: 1066, type: !1556, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!1560 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEaNEDs", scope: !1432, file: !6, line: 1068, type: !1553, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!1561 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEaNEDs", scope: !1432, file: !6, line: 1070, type: !1556, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!1562 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEoREDs", scope: !1432, file: !6, line: 1072, type: !1553, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!1563 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEoREDs", scope: !1432, file: !6, line: 1074, type: !1556, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!1564 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIDsLb1EEeOEDs", scope: !1432, file: !6, line: 1076, type: !1553, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1565 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EEeOEDs", scope: !1432, file: !6, line: 1078, type: !1556, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!1566 = !{!1512, !162}
!1567 = !DISubprogram(name: "atomic", scope: !1429, file: !6, line: 1089, type: !1568, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1571 = !DISubprogram(name: "atomic", scope: !1429, file: !6, line: 1091, type: !1572, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !1570, !1439}
!1574 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIDsEaSEDs", scope: !1429, file: !6, line: 1094, type: !1575, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!1439, !1577, !1439}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1429)
!1579 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIDsEaSEDs", scope: !1429, file: !6, line: 1097, type: !1580, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!1439, !1570, !1439}
!1582 = !{!1512}
!1583 = !DIGlobalVariableExpression(var: !1584)
!1584 = distinct !DIGlobalVariable(name: "x_char32_t", scope: !2, file: !3, line: 18, type: !1585, isLocal: false, isDefinition: true)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<char32_t>", scope: !7, file: !6, line: 1084, size: 32, elements: !1586, templateParams: !1738, identifier: "_ZTSNSt3__16atomicIDiEE")
!1586 = !{!1587, !1723, !1727, !1730, !1735}
!1587 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1585, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<char32_t, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !1589, templateParams: !1722, identifier: "_ZTSNSt3__113__atomic_baseIDiLb1EEE")
!1589 = !{!1590, !1669, !1673, !1676, !1681, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1695, !1698, !1699, !1700, !1703, !1706, !1707, !1708, !1711, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1590 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1588, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<char32_t, false>", scope: !7, file: !6, line: 891, size: 32, elements: !1592, templateParams: !1667, identifier: "_ZTSNSt3__113__atomic_baseIDiLb0EEE")
!1592 = !{!1593, !1596, !1602, !1607, !1611, !1615, !1618, !1621, !1624, !1627, !1630, !1633, !1637, !1640, !1641, !1642, !1645, !1648, !1649, !1650, !1653, !1656, !1660, !1664}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !1591, file: !6, line: 893, baseType: !1594, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !1595)
!1595 = !DIBasicType(name: "char32_t", size: 32, encoding: DW_ATE_UTF)
!1596 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIDiLb0EE12is_lock_freeEv", scope: !1591, file: !6, line: 900, type: !1597, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!34, !1599}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1591)
!1602 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIDiLb0EE12is_lock_freeEv", scope: !1591, file: !6, line: 909, type: !1603, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!34, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1607 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIDiLb0EE5storeEDiNS_12memory_orderE", scope: !1591, file: !6, line: 912, type: !1608, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1610, !1595, !47}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1611 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIDiLb0EE5storeEDiNS_12memory_orderE", scope: !1591, file: !6, line: 916, type: !1612, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1614, !1595, !47}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1615 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIDiLb0EE4loadENS_12memory_orderE", scope: !1591, file: !6, line: 920, type: !1616, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1595, !1599, !47}
!1618 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIDiLb0EE4loadENS_12memory_orderE", scope: !1591, file: !6, line: 924, type: !1619, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!1595, !1605, !47}
!1621 = !DISubprogram(name: "operator char32_t", linkageName: "_ZNVKSt3__113__atomic_baseIDiLb0EEcvDiEv", scope: !1591, file: !6, line: 928, type: !1622, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1595, !1599}
!1624 = !DISubprogram(name: "operator char32_t", linkageName: "_ZNKSt3__113__atomic_baseIDiLb0EEcvDiEv", scope: !1591, file: !6, line: 930, type: !1625, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!1595, !1605}
!1627 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIDiLb0EE8exchangeEDiNS_12memory_orderE", scope: !1591, file: !6, line: 932, type: !1628, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1595, !1610, !1595, !47}
!1630 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIDiLb0EE8exchangeEDiNS_12memory_orderE", scope: !1591, file: !6, line: 935, type: !1631, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1595, !1614, !1595, !47}
!1633 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIDiLb0EE21compare_exchange_weakERDiDiNS_12memory_orderES3_", scope: !1591, file: !6, line: 938, type: !1634, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!34, !1610, !1636, !1595, !47, !47}
!1636 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1595, size: 64)
!1637 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIDiLb0EE21compare_exchange_weakERDiDiNS_12memory_orderES3_", scope: !1591, file: !6, line: 943, type: !1638, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!34, !1614, !1636, !1595, !47, !47}
!1640 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIDiLb0EE23compare_exchange_strongERDiDiNS_12memory_orderES3_", scope: !1591, file: !6, line: 948, type: !1634, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!1641 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIDiLb0EE23compare_exchange_strongERDiDiNS_12memory_orderES3_", scope: !1591, file: !6, line: 953, type: !1638, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1642 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIDiLb0EE21compare_exchange_weakERDiDiNS_12memory_orderE", scope: !1591, file: !6, line: 958, type: !1643, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!34, !1610, !1636, !1595, !47}
!1645 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIDiLb0EE21compare_exchange_weakERDiDiNS_12memory_orderE", scope: !1591, file: !6, line: 962, type: !1646, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!34, !1614, !1636, !1595, !47}
!1648 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIDiLb0EE23compare_exchange_strongERDiDiNS_12memory_orderE", scope: !1591, file: !6, line: 966, type: !1643, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!1649 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIDiLb0EE23compare_exchange_strongERDiDiNS_12memory_orderE", scope: !1591, file: !6, line: 970, type: !1646, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!1650 = !DISubprogram(name: "__atomic_base", scope: !1591, file: !6, line: 976, type: !1651, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1614}
!1653 = !DISubprogram(name: "__atomic_base", scope: !1591, file: !6, line: 982, type: !1654, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1614, !1595}
!1656 = !DISubprogram(name: "__atomic_base", scope: !1591, file: !6, line: 984, type: !1657, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1614, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1606, size: 64)
!1660 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIDiLb0EEaSERKS1_", scope: !1591, file: !6, line: 985, type: !1661, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1663, !1614, !1659}
!1663 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1591, size: 64)
!1664 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIDiLb0EEaSERKS1_", scope: !1591, file: !6, line: 986, type: !1665, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1663, !1610, !1659}
!1667 = !{!1668, !106}
!1668 = !DITemplateTypeParameter(name: "_Tp", type: !1595)
!1669 = !DISubprogram(name: "__atomic_base", scope: !1588, file: !6, line: 1008, type: !1670, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1673 = !DISubprogram(name: "__atomic_base", scope: !1588, file: !6, line: 1010, type: !1674, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1672, !1595}
!1676 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1013, type: !1677, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1595, !1679, !1595, !47}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1680 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1588)
!1681 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1016, type: !1682, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!1595, !1672, !1595, !47}
!1684 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EE9fetch_subEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1019, type: !1677, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!1685 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EE9fetch_subEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1022, type: !1682, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!1686 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EE9fetch_andEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1025, type: !1677, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!1687 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EE9fetch_andEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1028, type: !1682, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!1688 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EE8fetch_orEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1031, type: !1677, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!1689 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EE8fetch_orEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1034, type: !1682, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!1690 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EE9fetch_xorEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1037, type: !1677, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!1691 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EE9fetch_xorEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1040, type: !1682, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!1692 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEppEi", scope: !1588, file: !6, line: 1044, type: !1693, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1595, !1679, !133}
!1695 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEppEi", scope: !1588, file: !6, line: 1046, type: !1696, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1595, !1672, !133}
!1698 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEmmEi", scope: !1588, file: !6, line: 1048, type: !1693, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!1699 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEmmEi", scope: !1588, file: !6, line: 1050, type: !1696, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!1700 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEppEv", scope: !1588, file: !6, line: 1052, type: !1701, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1595, !1679}
!1703 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEppEv", scope: !1588, file: !6, line: 1054, type: !1704, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1595, !1672}
!1706 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEmmEv", scope: !1588, file: !6, line: 1056, type: !1701, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!1707 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEmmEv", scope: !1588, file: !6, line: 1058, type: !1704, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!1708 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEpLEDi", scope: !1588, file: !6, line: 1060, type: !1709, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1595, !1679, !1595}
!1711 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEpLEDi", scope: !1588, file: !6, line: 1062, type: !1712, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!1595, !1672, !1595}
!1714 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEmIEDi", scope: !1588, file: !6, line: 1064, type: !1709, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!1715 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEmIEDi", scope: !1588, file: !6, line: 1066, type: !1712, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!1716 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEaNEDi", scope: !1588, file: !6, line: 1068, type: !1709, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!1717 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEaNEDi", scope: !1588, file: !6, line: 1070, type: !1712, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!1718 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEoREDi", scope: !1588, file: !6, line: 1072, type: !1709, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!1719 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEoREDi", scope: !1588, file: !6, line: 1074, type: !1712, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!1720 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIDiLb1EEeOEDi", scope: !1588, file: !6, line: 1076, type: !1709, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1721 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EEeOEDi", scope: !1588, file: !6, line: 1078, type: !1712, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!1722 = !{!1668, !162}
!1723 = !DISubprogram(name: "atomic", scope: !1585, file: !6, line: 1089, type: !1724, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1727 = !DISubprogram(name: "atomic", scope: !1585, file: !6, line: 1091, type: !1728, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1726, !1595}
!1730 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIDiEaSEDi", scope: !1585, file: !6, line: 1094, type: !1731, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1595, !1733, !1595}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1734 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1585)
!1735 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIDiEaSEDi", scope: !1585, file: !6, line: 1097, type: !1736, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1595, !1726, !1595}
!1738 = !{!1668}
!1739 = !DIGlobalVariableExpression(var: !1740)
!1740 = distinct !DIGlobalVariable(name: "x_wchar_t", scope: !2, file: !3, line: 19, type: !1741, isLocal: false, isDefinition: true)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<wchar_t>", scope: !7, file: !6, line: 1084, size: 32, elements: !1742, templateParams: !1894, identifier: "_ZTSNSt3__16atomicIwEE")
!1742 = !{!1743, !1879, !1883, !1886, !1891}
!1743 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1741, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<wchar_t, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !1745, templateParams: !1878, identifier: "_ZTSNSt3__113__atomic_baseIwLb1EEE")
!1745 = !{!1746, !1825, !1829, !1832, !1837, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1851, !1854, !1855, !1856, !1859, !1862, !1863, !1864, !1867, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877}
!1746 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1744, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<wchar_t, false>", scope: !7, file: !6, line: 891, size: 32, elements: !1748, templateParams: !1823, identifier: "_ZTSNSt3__113__atomic_baseIwLb0EEE")
!1748 = !{!1749, !1752, !1758, !1763, !1767, !1771, !1774, !1777, !1780, !1783, !1786, !1789, !1793, !1796, !1797, !1798, !1801, !1804, !1805, !1806, !1809, !1812, !1816, !1820}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !1747, file: !6, line: 893, baseType: !1750, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !1751)
!1751 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1752 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIwLb0EE12is_lock_freeEv", scope: !1747, file: !6, line: 900, type: !1753, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!34, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1747)
!1758 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIwLb0EE12is_lock_freeEv", scope: !1747, file: !6, line: 909, type: !1759, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!34, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1763 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIwLb0EE5storeEwNS_12memory_orderE", scope: !1747, file: !6, line: 912, type: !1764, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1766, !1751, !47}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1767 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIwLb0EE5storeEwNS_12memory_orderE", scope: !1747, file: !6, line: 916, type: !1768, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1770, !1751, !47}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1771 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIwLb0EE4loadENS_12memory_orderE", scope: !1747, file: !6, line: 920, type: !1772, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1751, !1755, !47}
!1774 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIwLb0EE4loadENS_12memory_orderE", scope: !1747, file: !6, line: 924, type: !1775, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1751, !1761, !47}
!1777 = !DISubprogram(name: "operator wchar_t", linkageName: "_ZNVKSt3__113__atomic_baseIwLb0EEcvwEv", scope: !1747, file: !6, line: 928, type: !1778, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1751, !1755}
!1780 = !DISubprogram(name: "operator wchar_t", linkageName: "_ZNKSt3__113__atomic_baseIwLb0EEcvwEv", scope: !1747, file: !6, line: 930, type: !1781, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1751, !1761}
!1783 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIwLb0EE8exchangeEwNS_12memory_orderE", scope: !1747, file: !6, line: 932, type: !1784, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1751, !1766, !1751, !47}
!1786 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIwLb0EE8exchangeEwNS_12memory_orderE", scope: !1747, file: !6, line: 935, type: !1787, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1751, !1770, !1751, !47}
!1789 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIwLb0EE21compare_exchange_weakERwwNS_12memory_orderES3_", scope: !1747, file: !6, line: 938, type: !1790, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!34, !1766, !1792, !1751, !47, !47}
!1792 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1751, size: 64)
!1793 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIwLb0EE21compare_exchange_weakERwwNS_12memory_orderES3_", scope: !1747, file: !6, line: 943, type: !1794, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!34, !1770, !1792, !1751, !47, !47}
!1796 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIwLb0EE23compare_exchange_strongERwwNS_12memory_orderES3_", scope: !1747, file: !6, line: 948, type: !1790, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!1797 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIwLb0EE23compare_exchange_strongERwwNS_12memory_orderES3_", scope: !1747, file: !6, line: 953, type: !1794, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1798 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIwLb0EE21compare_exchange_weakERwwNS_12memory_orderE", scope: !1747, file: !6, line: 958, type: !1799, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!34, !1766, !1792, !1751, !47}
!1801 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIwLb0EE21compare_exchange_weakERwwNS_12memory_orderE", scope: !1747, file: !6, line: 962, type: !1802, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!34, !1770, !1792, !1751, !47}
!1804 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIwLb0EE23compare_exchange_strongERwwNS_12memory_orderE", scope: !1747, file: !6, line: 966, type: !1799, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!1805 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIwLb0EE23compare_exchange_strongERwwNS_12memory_orderE", scope: !1747, file: !6, line: 970, type: !1802, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!1806 = !DISubprogram(name: "__atomic_base", scope: !1747, file: !6, line: 976, type: !1807, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !1770}
!1809 = !DISubprogram(name: "__atomic_base", scope: !1747, file: !6, line: 982, type: !1810, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1770, !1751}
!1812 = !DISubprogram(name: "__atomic_base", scope: !1747, file: !6, line: 984, type: !1813, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1770, !1815}
!1815 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1762, size: 64)
!1816 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIwLb0EEaSERKS1_", scope: !1747, file: !6, line: 985, type: !1817, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!1819, !1770, !1815}
!1819 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1747, size: 64)
!1820 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIwLb0EEaSERKS1_", scope: !1747, file: !6, line: 986, type: !1821, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1819, !1766, !1815}
!1823 = !{!1824, !106}
!1824 = !DITemplateTypeParameter(name: "_Tp", type: !1751)
!1825 = !DISubprogram(name: "__atomic_base", scope: !1744, file: !6, line: 1008, type: !1826, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1829 = !DISubprogram(name: "__atomic_base", scope: !1744, file: !6, line: 1010, type: !1830, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1828, !1751}
!1832 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE", scope: !1744, file: !6, line: 1013, type: !1833, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1751, !1835, !1751, !47}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1836 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1744)
!1837 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE", scope: !1744, file: !6, line: 1016, type: !1838, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!1751, !1828, !1751, !47}
!1840 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EE9fetch_subEwNS_12memory_orderE", scope: !1744, file: !6, line: 1019, type: !1833, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!1841 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIwLb1EE9fetch_subEwNS_12memory_orderE", scope: !1744, file: !6, line: 1022, type: !1838, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!1842 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EE9fetch_andEwNS_12memory_orderE", scope: !1744, file: !6, line: 1025, type: !1833, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!1843 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIwLb1EE9fetch_andEwNS_12memory_orderE", scope: !1744, file: !6, line: 1028, type: !1838, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!1844 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EE8fetch_orEwNS_12memory_orderE", scope: !1744, file: !6, line: 1031, type: !1833, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!1845 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIwLb1EE8fetch_orEwNS_12memory_orderE", scope: !1744, file: !6, line: 1034, type: !1838, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!1846 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EE9fetch_xorEwNS_12memory_orderE", scope: !1744, file: !6, line: 1037, type: !1833, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!1847 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIwLb1EE9fetch_xorEwNS_12memory_orderE", scope: !1744, file: !6, line: 1040, type: !1838, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!1848 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEppEi", scope: !1744, file: !6, line: 1044, type: !1849, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!1751, !1835, !133}
!1851 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEppEi", scope: !1744, file: !6, line: 1046, type: !1852, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1751, !1828, !133}
!1854 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEmmEi", scope: !1744, file: !6, line: 1048, type: !1849, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!1855 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEmmEi", scope: !1744, file: !6, line: 1050, type: !1852, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!1856 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEppEv", scope: !1744, file: !6, line: 1052, type: !1857, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1751, !1835}
!1859 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEppEv", scope: !1744, file: !6, line: 1054, type: !1860, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1751, !1828}
!1862 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEmmEv", scope: !1744, file: !6, line: 1056, type: !1857, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!1863 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEmmEv", scope: !1744, file: !6, line: 1058, type: !1860, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!1864 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEpLEw", scope: !1744, file: !6, line: 1060, type: !1865, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!1751, !1835, !1751}
!1867 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEpLEw", scope: !1744, file: !6, line: 1062, type: !1868, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1751, !1828, !1751}
!1870 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEmIEw", scope: !1744, file: !6, line: 1064, type: !1865, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!1871 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEmIEw", scope: !1744, file: !6, line: 1066, type: !1868, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!1872 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEaNEw", scope: !1744, file: !6, line: 1068, type: !1865, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!1873 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEaNEw", scope: !1744, file: !6, line: 1070, type: !1868, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!1874 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEoREw", scope: !1744, file: !6, line: 1072, type: !1865, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!1875 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEoREw", scope: !1744, file: !6, line: 1074, type: !1868, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!1876 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIwLb1EEeOEw", scope: !1744, file: !6, line: 1076, type: !1865, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1877 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIwLb1EEeOEw", scope: !1744, file: !6, line: 1078, type: !1868, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!1878 = !{!1824, !162}
!1879 = !DISubprogram(name: "atomic", scope: !1741, file: !6, line: 1089, type: !1880, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1883 = !DISubprogram(name: "atomic", scope: !1741, file: !6, line: 1091, type: !1884, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1882, !1751}
!1886 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIwEaSEw", scope: !1741, file: !6, line: 1094, type: !1887, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!1751, !1889, !1751}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1890 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1741)
!1891 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIwEaSEw", scope: !1741, file: !6, line: 1097, type: !1892, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1751, !1882, !1751}
!1894 = !{!1824}
!1895 = !DIGlobalVariableExpression(var: !1896)
!1896 = distinct !DIGlobalVariable(name: "x_int8_t", scope: !2, file: !3, line: 20, type: !20, isLocal: false, isDefinition: true)
!1897 = !DIGlobalVariableExpression(var: !1898)
!1898 = distinct !DIGlobalVariable(name: "x_uint8_t", scope: !2, file: !3, line: 21, type: !181, isLocal: false, isDefinition: true)
!1899 = !DIGlobalVariableExpression(var: !1900)
!1900 = distinct !DIGlobalVariable(name: "x_int16_t", scope: !2, file: !3, line: 22, type: !337, isLocal: false, isDefinition: true)
!1901 = !DIGlobalVariableExpression(var: !1902)
!1902 = distinct !DIGlobalVariable(name: "x_uint16_t", scope: !2, file: !3, line: 23, type: !493, isLocal: false, isDefinition: true)
!1903 = !DIGlobalVariableExpression(var: !1904)
!1904 = distinct !DIGlobalVariable(name: "x_int32_t", scope: !2, file: !3, line: 24, type: !1905, isLocal: false, isDefinition: true)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !6, line: 1084, size: 32, elements: !1906, templateParams: !2053, identifier: "_ZTSNSt3__16atomicIiEE")
!1906 = !{!1907, !2038, !2042, !2045, !2050}
!1907 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1905, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !1909, templateParams: !2037, identifier: "_ZTSNSt3__113__atomic_baseIiLb1EEE")
!1909 = !{!1910, !1988, !1992, !1995, !2000, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2014, !2017, !2018, !2019, !2022, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036}
!1910 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1908, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !1912, templateParams: !1986, identifier: "_ZTSNSt3__113__atomic_baseIiLb0EEE")
!1912 = !{!1913, !1915, !1921, !1926, !1930, !1934, !1937, !1940, !1943, !1946, !1949, !1952, !1956, !1959, !1960, !1961, !1964, !1967, !1968, !1969, !1972, !1975, !1979, !1983}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !1911, file: !6, line: 893, baseType: !1914, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !133)
!1915 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !1911, file: !6, line: 900, type: !1916, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!34, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1911)
!1921 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !1911, file: !6, line: 909, type: !1922, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!34, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1926 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !1911, file: !6, line: 912, type: !1927, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1929, !133, !47}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1930 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !1911, file: !6, line: 916, type: !1931, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !1933, !133, !47}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1934 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !1911, file: !6, line: 920, type: !1935, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!133, !1918, !47}
!1937 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !1911, file: !6, line: 924, type: !1938, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!133, !1924, !47}
!1940 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EEcviEv", scope: !1911, file: !6, line: 928, type: !1941, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!133, !1918}
!1943 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !1911, file: !6, line: 930, type: !1944, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!133, !1924}
!1946 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !1911, file: !6, line: 932, type: !1947, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!133, !1929, !133, !47}
!1949 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !1911, file: !6, line: 935, type: !1950, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!133, !1933, !133, !47}
!1952 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !1911, file: !6, line: 938, type: !1953, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!34, !1929, !1955, !133, !47, !47}
!1955 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !133, size: 64)
!1956 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !1911, file: !6, line: 943, type: !1957, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!34, !1933, !1955, !133, !47, !47}
!1959 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !1911, file: !6, line: 948, type: !1953, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!1960 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !1911, file: !6, line: 953, type: !1957, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1961 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !1911, file: !6, line: 958, type: !1962, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!34, !1929, !1955, !133, !47}
!1964 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !1911, file: !6, line: 962, type: !1965, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!34, !1933, !1955, !133, !47}
!1967 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !1911, file: !6, line: 966, type: !1962, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!1968 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !1911, file: !6, line: 970, type: !1965, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!1969 = !DISubprogram(name: "__atomic_base", scope: !1911, file: !6, line: 976, type: !1970, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1933}
!1972 = !DISubprogram(name: "__atomic_base", scope: !1911, file: !6, line: 982, type: !1973, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1933, !133}
!1975 = !DISubprogram(name: "__atomic_base", scope: !1911, file: !6, line: 984, type: !1976, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1933, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1925, size: 64)
!1979 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !1911, file: !6, line: 985, type: !1980, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1982, !1933, !1978}
!1982 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1911, size: 64)
!1983 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !1911, file: !6, line: 986, type: !1984, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1982, !1929, !1978}
!1986 = !{!1987, !106}
!1987 = !DITemplateTypeParameter(name: "_Tp", type: !133)
!1988 = !DISubprogram(name: "__atomic_base", scope: !1908, file: !6, line: 1008, type: !1989, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1991}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1992 = !DISubprogram(name: "__atomic_base", scope: !1908, file: !6, line: 1010, type: !1993, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1991, !133}
!1995 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !1908, file: !6, line: 1013, type: !1996, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!133, !1998, !133, !47}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1999 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1908)
!2000 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !1908, file: !6, line: 1016, type: !2001, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!133, !1991, !133, !47}
!2003 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !1908, file: !6, line: 1019, type: !1996, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!2004 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !1908, file: !6, line: 1022, type: !2001, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!2005 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !1908, file: !6, line: 1025, type: !1996, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!2006 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !1908, file: !6, line: 1028, type: !2001, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!2007 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !1908, file: !6, line: 1031, type: !1996, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!2008 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !1908, file: !6, line: 1034, type: !2001, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!2009 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !1908, file: !6, line: 1037, type: !1996, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!2010 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !1908, file: !6, line: 1040, type: !2001, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!2011 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEi", scope: !1908, file: !6, line: 1044, type: !2012, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!133, !1998, !133}
!2014 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEi", scope: !1908, file: !6, line: 1046, type: !2015, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!133, !1991, !133}
!2017 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEi", scope: !1908, file: !6, line: 1048, type: !2012, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!2018 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEi", scope: !1908, file: !6, line: 1050, type: !2015, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!2019 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEv", scope: !1908, file: !6, line: 1052, type: !2020, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!133, !1998}
!2022 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEv", scope: !1908, file: !6, line: 1054, type: !2023, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!133, !1991}
!2025 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEv", scope: !1908, file: !6, line: 1056, type: !2020, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!2026 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEv", scope: !1908, file: !6, line: 1058, type: !2023, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!2027 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEpLEi", scope: !1908, file: !6, line: 1060, type: !2012, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!2028 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEpLEi", scope: !1908, file: !6, line: 1062, type: !2015, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!2029 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmIEi", scope: !1908, file: !6, line: 1064, type: !2012, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!2030 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmIEi", scope: !1908, file: !6, line: 1066, type: !2015, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!2031 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEaNEi", scope: !1908, file: !6, line: 1068, type: !2012, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!2032 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEaNEi", scope: !1908, file: !6, line: 1070, type: !2015, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!2033 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEoREi", scope: !1908, file: !6, line: 1072, type: !2012, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!2034 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEoREi", scope: !1908, file: !6, line: 1074, type: !2015, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!2035 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEeOEi", scope: !1908, file: !6, line: 1076, type: !2012, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!2036 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEeOEi", scope: !1908, file: !6, line: 1078, type: !2015, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!2037 = !{!1987, !162}
!2038 = !DISubprogram(name: "atomic", scope: !1905, file: !6, line: 1089, type: !2039, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2042 = !DISubprogram(name: "atomic", scope: !1905, file: !6, line: 1091, type: !2043, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !2041, !133}
!2045 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIiEaSEi", scope: !1905, file: !6, line: 1094, type: !2046, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!133, !2048, !133}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2049 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1905)
!2050 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !1905, file: !6, line: 1097, type: !2051, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!133, !2041, !133}
!2053 = !{!1987}
!2054 = !DIGlobalVariableExpression(var: !2055)
!2055 = distinct !DIGlobalVariable(name: "x_uint32_t", scope: !2, file: !3, line: 25, type: !649, isLocal: false, isDefinition: true)
!2056 = !DIGlobalVariableExpression(var: !2057)
!2057 = distinct !DIGlobalVariable(name: "x_int64_t", scope: !2, file: !3, line: 26, type: !1117, isLocal: false, isDefinition: true)
!2058 = !DIGlobalVariableExpression(var: !2059)
!2059 = distinct !DIGlobalVariable(name: "x_uint64_t", scope: !2, file: !3, line: 27, type: !1273, isLocal: false, isDefinition: true)
!2060 = !DIGlobalVariableExpression(var: !2061)
!2061 = distinct !DIGlobalVariable(name: "x_int_least8_t", scope: !2, file: !3, line: 28, type: !20, isLocal: false, isDefinition: true)
!2062 = !DIGlobalVariableExpression(var: !2063)
!2063 = distinct !DIGlobalVariable(name: "x_uint_least8_t", scope: !2, file: !3, line: 29, type: !181, isLocal: false, isDefinition: true)
!2064 = !DIGlobalVariableExpression(var: !2065)
!2065 = distinct !DIGlobalVariable(name: "x_int_least16_t", scope: !2, file: !3, line: 30, type: !337, isLocal: false, isDefinition: true)
!2066 = !DIGlobalVariableExpression(var: !2067)
!2067 = distinct !DIGlobalVariable(name: "x_uint_least16_t", scope: !2, file: !3, line: 31, type: !493, isLocal: false, isDefinition: true)
!2068 = !DIGlobalVariableExpression(var: !2069)
!2069 = distinct !DIGlobalVariable(name: "x_int_least32_t", scope: !2, file: !3, line: 32, type: !1905, isLocal: false, isDefinition: true)
!2070 = !DIGlobalVariableExpression(var: !2071)
!2071 = distinct !DIGlobalVariable(name: "x_uint_least32_t", scope: !2, file: !3, line: 33, type: !649, isLocal: false, isDefinition: true)
!2072 = !DIGlobalVariableExpression(var: !2073)
!2073 = distinct !DIGlobalVariable(name: "x_int_least64_t", scope: !2, file: !3, line: 34, type: !1117, isLocal: false, isDefinition: true)
!2074 = !DIGlobalVariableExpression(var: !2075)
!2075 = distinct !DIGlobalVariable(name: "x_uint_least64_t", scope: !2, file: !3, line: 35, type: !1273, isLocal: false, isDefinition: true)
!2076 = !DIGlobalVariableExpression(var: !2077)
!2077 = distinct !DIGlobalVariable(name: "x_int_fast8_t", scope: !2, file: !3, line: 36, type: !20, isLocal: false, isDefinition: true)
!2078 = !DIGlobalVariableExpression(var: !2079)
!2079 = distinct !DIGlobalVariable(name: "x_uint_fast8_t", scope: !2, file: !3, line: 37, type: !181, isLocal: false, isDefinition: true)
!2080 = !DIGlobalVariableExpression(var: !2081)
!2081 = distinct !DIGlobalVariable(name: "x_int_fast16_t", scope: !2, file: !3, line: 38, type: !337, isLocal: false, isDefinition: true)
!2082 = !DIGlobalVariableExpression(var: !2083)
!2083 = distinct !DIGlobalVariable(name: "x_uint_fast16_t", scope: !2, file: !3, line: 39, type: !493, isLocal: false, isDefinition: true)
!2084 = !DIGlobalVariableExpression(var: !2085)
!2085 = distinct !DIGlobalVariable(name: "x_int_fast32_t", scope: !2, file: !3, line: 40, type: !1905, isLocal: false, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087)
!2087 = distinct !DIGlobalVariable(name: "x_uint_fast32_t", scope: !2, file: !3, line: 41, type: !649, isLocal: false, isDefinition: true)
!2088 = !DIGlobalVariableExpression(var: !2089)
!2089 = distinct !DIGlobalVariable(name: "x_int_fast64_t", scope: !2, file: !3, line: 42, type: !1117, isLocal: false, isDefinition: true)
!2090 = !DIGlobalVariableExpression(var: !2091)
!2091 = distinct !DIGlobalVariable(name: "x_uint_fast64_t", scope: !2, file: !3, line: 43, type: !1273, isLocal: false, isDefinition: true)
!2092 = !DIGlobalVariableExpression(var: !2093)
!2093 = distinct !DIGlobalVariable(name: "x_intptr_t", scope: !2, file: !3, line: 44, type: !805, isLocal: false, isDefinition: true)
!2094 = !DIGlobalVariableExpression(var: !2095)
!2095 = distinct !DIGlobalVariable(name: "x_uintptr_t", scope: !2, file: !3, line: 45, type: !961, isLocal: false, isDefinition: true)
!2096 = !DIGlobalVariableExpression(var: !2097)
!2097 = distinct !DIGlobalVariable(name: "x_size_t", scope: !2, file: !3, line: 46, type: !961, isLocal: false, isDefinition: true)
!2098 = !DIGlobalVariableExpression(var: !2099)
!2099 = distinct !DIGlobalVariable(name: "x_ptrdiff_t", scope: !2, file: !3, line: 47, type: !805, isLocal: false, isDefinition: true)
!2100 = !DIGlobalVariableExpression(var: !2101)
!2101 = distinct !DIGlobalVariable(name: "x_intmax_t", scope: !2, file: !3, line: 48, type: !805, isLocal: false, isDefinition: true)
!2102 = !DIGlobalVariableExpression(var: !2103)
!2103 = distinct !DIGlobalVariable(name: "x_uintmax_t", scope: !2, file: !3, line: 49, type: !961, isLocal: false, isDefinition: true)
!2104 = !DIGlobalVariableExpression(var: !2105)
!2105 = distinct !DIGlobalVariable(name: "data1", scope: !2, file: !3, line: 51, type: !133, isLocal: false, isDefinition: true)
!2106 = !DIGlobalVariableExpression(var: !2107)
!2107 = distinct !DIGlobalVariable(name: "data2", scope: !2, file: !3, line: 51, type: !133, isLocal: false, isDefinition: true)
!2108 = !DIGlobalVariableExpression(var: !2109)
!2109 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 52, type: !1905, isLocal: false, isDefinition: true)
!2110 = !DIGlobalVariableExpression(var: !2111)
!2111 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 52, type: !1905, isLocal: false, isDefinition: true)
!2112 = !{!2113, !2116, !2121, !2125, !2126, !2134, !2136, !2144, !2148, !2150, !2152, !2156, !2160, !2164, !2166, !2170, !2175, !2179, !2183, !2185, !2187, !2189, !2191, !2193, !2195, !2199, !2203, !2206, !2209, !2212, !2215, !2218, !2221, !2224, !2227, !2230, !2232, !2234, !2236, !2238, !2240, !2242, !2244, !2246, !2248, !2250, !2252, !2254, !2256, !2258, !2260, !2264, !2267, !2270, !2273, !2274, !2281, !2287, !2293, !2298, !2302, !2306, !2310, !2315, !2320, !2324, !2328, !2332, !2336, !2340, !2344, !2348, !2352, !2356, !2360, !2364, !2368, !2373, !2377, !2379, !2383, !2385, !2392, !2396, !2401, !2405, !2407, !2411, !2415, !2417, !2421, !2426, !2430, !2434, !2440, !2494, !2495, !2496, !2501, !2503, !2507, !2511, !2515, !2517, !2521, !2525, !2529, !2540, !2542, !2546, !2550, !2554, !2556, !2560, !2564, !2568, !2570, !2572, !2574, !2578, !2582, !2587, !2591, !2597, !2601, !2605, !2607, !2609, !2611, !2615, !2619, !2623, !2625, !2627, !2631, !2635, !2637, !2639, !2643, !2647, !2649, !2653, !2655, !2657, !2660, !2662, !2664, !2666, !2668, !2670, !2672, !2674, !2676, !2678, !2680, !2682, !2684, !2686, !2690, !2695, !2700, !2705, !2707, !2710, !2712, !2714, !2716, !2718, !2720, !2722, !2724, !2726, !2728, !2732, !2736, !2740, !2742, !2746, !2750, !2762, !2763, !2778, !2779, !2780, !2785, !2787, !2791, !2795, !2799, !2803, !2805, !2809, !2813, !2817, !2821, !2825, !2829, !2831, !2833, !2837, !2842, !2846, !2850, !2854, !2858, !2862, !2866, !2870, !2874, !2876, !2878, !2882, !2884, !2888, !2892, !2897, !2899, !2901, !2903, !2907, !2911, !2915, !2917, !2921, !2923, !2925, !2927, !2929, !2935, !2939, !2941, !2947, !2952, !2956, !2960, !2965, !2970, !2974, !2978, !2982, !2986, !2988, !2990, !2994, !2995, !2999, !3000, !3004, !3008, !3013, !3018, !3022, !3028, !3032, !3034}
!2113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2114, line: 49)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !2115, line: 51, baseType: !815)
!2115 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2117, line: 50)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2118, line: 30, baseType: !2119)
!2118 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !2120, line: 92, baseType: !971)
!2120 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2122, line: 55)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !2123, line: 32, baseType: !2124)
!2123 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2124 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!2125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2117, line: 69)
!2126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2127, line: 70)
!2127 = !DISubprogram(name: "memcpy", scope: !2128, file: !2128, line: 72, type: !2129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2128 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2131, !2131, !2132, !2117}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2135, line: 71)
!2135 = !DISubprogram(name: "memmove", scope: !2128, file: !2128, line: 73, type: !2129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2137, line: 72)
!2137 = !DISubprogram(name: "strcpy", scope: !2128, file: !2128, line: 79, type: !2138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!2140, !2140, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2145, line: 73)
!2145 = !DISubprogram(name: "strncpy", scope: !2128, file: !2128, line: 85, type: !2146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2140, !2140, !2142, !2117}
!2148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2149, line: 74)
!2149 = !DISubprogram(name: "strcat", scope: !2128, file: !2128, line: 75, type: !2138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2151, line: 75)
!2151 = !DISubprogram(name: "strncat", scope: !2128, file: !2128, line: 83, type: !2146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2153, line: 76)
!2153 = !DISubprogram(name: "memcmp", scope: !2128, file: !2128, line: 71, type: !2154, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!133, !2132, !2132, !2117}
!2156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2157, line: 77)
!2157 = !DISubprogram(name: "strcmp", scope: !2128, file: !2128, line: 77, type: !2158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!133, !2142, !2142}
!2160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2161, line: 78)
!2161 = !DISubprogram(name: "strncmp", scope: !2128, file: !2128, line: 84, type: !2162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!133, !2142, !2142, !2117}
!2164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2165, line: 79)
!2165 = !DISubprogram(name: "strcoll", scope: !2128, file: !2128, line: 78, type: !2158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2167, line: 80)
!2167 = !DISubprogram(name: "strxfrm", scope: !2128, file: !2128, line: 91, type: !2168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2117, !2140, !2142, !2117}
!2170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2171, line: 81)
!2171 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !2172, file: !2172, line: 99, type: !2173, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2172 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2131, !2131, !133, !2117}
!2175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2176, line: 82)
!2176 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !2172, file: !2172, line: 78, type: !2177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2140, !2140, !133}
!2179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2180, line: 83)
!2180 = !DISubprogram(name: "strcspn", scope: !2128, file: !2128, line: 80, type: !2181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!2117, !2142, !2142}
!2183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2184, line: 84)
!2184 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !2172, file: !2172, line: 85, type: !2138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2186, line: 85)
!2186 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !2172, file: !2172, line: 92, type: !2177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2188, line: 86)
!2188 = !DISubprogram(name: "strspn", scope: !2128, file: !2128, line: 88, type: !2181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2190, line: 87)
!2190 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !2172, file: !2172, line: 106, type: !2138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2192, line: 89)
!2192 = !DISubprogram(name: "strtok", scope: !2128, file: !2128, line: 90, type: !2138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2194, line: 91)
!2194 = !DISubprogram(name: "memset", scope: !2128, file: !2128, line: 74, type: !2173, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2196, line: 92)
!2196 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !2128, file: !2128, line: 81, type: !2197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2140, !133}
!2199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2200, line: 93)
!2200 = !DISubprogram(name: "strlen", scope: !2128, file: !2128, line: 82, type: !2201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2117, !2142}
!2203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2204, line: 153)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !2205, line: 30, baseType: !30)
!2205 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2207, line: 154)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !2208, line: 30, baseType: !347)
!2208 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2210, line: 155)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !2211, line: 30, baseType: !133)
!2211 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2213, line: 156)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !2214, line: 30, baseType: !1127)
!2214 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2216, line: 158)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !2217, line: 31, baseType: !191)
!2217 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2219, line: 159)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !2220, line: 31, baseType: !503)
!2220 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2222, line: 160)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !2223, line: 31, baseType: !659)
!2223 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2225, line: 161)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !2226, line: 31, baseType: !1283)
!2226 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2228, line: 163)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !2229, line: 29, baseType: !2204)
!2229 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2231, line: 164)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !2229, line: 30, baseType: !2207)
!2232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2233, line: 165)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !2229, line: 31, baseType: !2210)
!2234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2235, line: 166)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !2229, line: 32, baseType: !2213)
!2236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2237, line: 168)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !2229, line: 33, baseType: !2216)
!2238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2239, line: 169)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !2229, line: 34, baseType: !2219)
!2240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2241, line: 170)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !2229, line: 35, baseType: !2222)
!2242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2243, line: 171)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !2229, line: 36, baseType: !2225)
!2244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2245, line: 173)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !2229, line: 40, baseType: !2204)
!2246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2247, line: 174)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !2229, line: 41, baseType: !2207)
!2248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2249, line: 175)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !2229, line: 42, baseType: !2210)
!2250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2251, line: 176)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !2229, line: 43, baseType: !2213)
!2252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2253, line: 178)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !2229, line: 44, baseType: !2216)
!2254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2255, line: 179)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !2229, line: 45, baseType: !2219)
!2256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2257, line: 180)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !2229, line: 46, baseType: !2222)
!2258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2259, line: 181)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !2229, line: 47, baseType: !2225)
!2260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2261, line: 183)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !2262, line: 30, baseType: !2263)
!2262 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !2120, line: 49, baseType: !815)
!2264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2265, line: 184)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !2266, line: 30, baseType: !971)
!2266 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2268, line: 186)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2269, line: 32, baseType: !815)
!2269 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2271, line: 187)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2272, line: 32, baseType: !971)
!2272 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2117, line: 100)
!2274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2275, line: 101)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !2276, line: 85, baseType: !2277)
!2276 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2276, line: 82, size: 64, elements: !2278, identifier: "_ZTS5div_t")
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2277, file: !2276, line: 83, baseType: !133, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2277, file: !2276, line: 84, baseType: !133, size: 32, offset: 32)
!2281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2282, line: 102)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !2276, line: 90, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2276, line: 87, size: 128, elements: !2284, identifier: "_ZTS6ldiv_t")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2283, file: !2276, line: 88, baseType: !815, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2283, file: !2276, line: 89, baseType: !815, size: 64, offset: 64)
!2287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2288, line: 104)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !2276, line: 96, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2276, line: 93, size: 128, elements: !2290, identifier: "_ZTS7lldiv_t")
!2290 = !{!2291, !2292}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2289, file: !2276, line: 94, baseType: !1127, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2289, file: !2276, line: 95, baseType: !1127, size: 64, offset: 64)
!2293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2294, line: 106)
!2294 = !DISubprogram(name: "atof", scope: !2276, file: !2276, line: 131, type: !2295, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!2297, !2142}
!2297 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2299, line: 107)
!2299 = !DISubprogram(name: "atoi", scope: !2276, file: !2276, line: 132, type: !2300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!133, !2142}
!2302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2303, line: 108)
!2303 = !DISubprogram(name: "atol", scope: !2276, file: !2276, line: 133, type: !2304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!815, !2142}
!2306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2307, line: 110)
!2307 = !DISubprogram(name: "atoll", scope: !2276, file: !2276, line: 136, type: !2308, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!1127, !2142}
!2310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2311, line: 112)
!2311 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !2276, file: !2276, line: 162, type: !2312, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2297, !2142, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2316, line: 113)
!2316 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !2276, file: !2276, line: 163, type: !2317, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!2319, !2142, !2314}
!2319 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!2320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2321, line: 114)
!2321 = !DISubprogram(name: "strtold", scope: !2276, file: !2276, line: 166, type: !2322, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!2124, !2142, !2314}
!2324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2325, line: 115)
!2325 = !DISubprogram(name: "strtol", scope: !2276, file: !2276, line: 164, type: !2326, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!815, !2142, !2314, !133}
!2328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2329, line: 117)
!2329 = !DISubprogram(name: "strtoll", scope: !2276, file: !2276, line: 169, type: !2330, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!1127, !2142, !2314, !133}
!2332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2333, line: 119)
!2333 = !DISubprogram(name: "strtoul", scope: !2276, file: !2276, line: 172, type: !2334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!971, !2142, !2314, !133}
!2336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2337, line: 121)
!2337 = !DISubprogram(name: "strtoull", scope: !2276, file: !2276, line: 175, type: !2338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!1283, !2142, !2314, !133}
!2340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2341, line: 123)
!2341 = !DISubprogram(name: "rand", scope: !2276, file: !2276, line: 159, type: !2342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!133}
!2344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2345, line: 124)
!2345 = !DISubprogram(name: "srand", scope: !2276, file: !2276, line: 161, type: !2346, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !659}
!2348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2349, line: 125)
!2349 = !DISubprogram(name: "calloc", scope: !2276, file: !2276, line: 140, type: !2350, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!2131, !2117, !2117}
!2352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2353, line: 126)
!2353 = !DISubprogram(name: "free", scope: !2276, file: !2276, line: 143, type: !2354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !2131}
!2356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2357, line: 127)
!2357 = !DISubprogram(name: "malloc", scope: !2276, file: !2276, line: 152, type: !2358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!2131, !2117}
!2360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2361, line: 128)
!2361 = !DISubprogram(name: "realloc", scope: !2276, file: !2276, line: 160, type: !2362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!2131, !2131, !2117}
!2364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2365, line: 129)
!2365 = !DISubprogram(name: "abort", scope: !2276, file: !2276, line: 128, type: !2366, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null}
!2368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2369, line: 130)
!2369 = !DISubprogram(name: "atexit", scope: !2276, file: !2276, line: 130, type: !2370, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!133, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2374, line: 131)
!2374 = !DISubprogram(name: "exit", scope: !2276, file: !2276, line: 142, type: !2375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !133}
!2377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2378, line: 132)
!2378 = !DISubprogram(name: "_Exit", scope: !2276, file: !2276, line: 182, type: !2375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!2379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2380, line: 134)
!2380 = !DISubprogram(name: "getenv", scope: !2276, file: !2276, line: 144, type: !2381, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!2140, !2142}
!2383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2384, line: 135)
!2384 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !2276, file: !2276, line: 177, type: !2300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2386, line: 137)
!2386 = !DISubprogram(name: "bsearch", scope: !2276, file: !2276, line: 138, type: !2387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!2131, !2132, !2132, !2117, !2117, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!133, !2132, !2132}
!2392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2393, line: 138)
!2393 = !DISubprogram(name: "qsort", scope: !2276, file: !2276, line: 157, type: !2394, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2131, !2117, !2117, !2389}
!2396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2397, line: 139)
!2397 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !2398, file: !2398, line: 113, type: !2399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2398 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!1127, !1127}
!2401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2402, line: 140)
!2402 = !DISubprogram(name: "labs", scope: !2276, file: !2276, line: 145, type: !2403, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!815, !815}
!2405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2406, line: 142)
!2406 = !DISubprogram(name: "llabs", scope: !2276, file: !2276, line: 149, type: !2399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2408, line: 144)
!2408 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !2398, file: !2398, line: 118, type: !2409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!2288, !1127, !1127}
!2411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2412, line: 145)
!2412 = !DISubprogram(name: "ldiv", scope: !2276, file: !2276, line: 146, type: !2413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2282, !815, !815}
!2415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2416, line: 147)
!2416 = !DISubprogram(name: "lldiv", scope: !2276, file: !2276, line: 150, type: !2409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2418, line: 149)
!2418 = !DISubprogram(name: "mblen", scope: !2276, file: !2276, line: 153, type: !2419, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!133, !2142, !2117}
!2421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2422, line: 150)
!2422 = !DISubprogram(name: "mbtowc", scope: !2276, file: !2276, line: 155, type: !2423, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!133, !2425, !2142, !2117}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!2426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2427, line: 151)
!2427 = !DISubprogram(name: "wctomb", scope: !2276, file: !2276, line: 179, type: !2428, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!133, !2140, !1751}
!2430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2431, line: 152)
!2431 = !DISubprogram(name: "mbstowcs", scope: !2276, file: !2276, line: 154, type: !2432, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!2117, !2425, !2142, !2117}
!2434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2435, line: 153)
!2435 = !DISubprogram(name: "wcstombs", scope: !2276, file: !2276, line: 178, type: !2436, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2117, !2140, !2438, !2117}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1751)
!2440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2441, line: 108)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2442, line: 153, baseType: !2443)
!2442 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !2442, line: 122, size: 1216, elements: !2444, identifier: "_ZTS7__sFILE")
!2444 = !{!2445, !2447, !2448, !2449, !2450, !2451, !2456, !2457, !2458, !2462, !2466, !2474, !2478, !2479, !2482, !2483, !2487, !2491, !2492, !2493}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !2443, file: !2442, line: 123, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !2443, file: !2442, line: 124, baseType: !133, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !2443, file: !2442, line: 125, baseType: !133, size: 32, offset: 96)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2443, file: !2442, line: 126, baseType: !347, size: 16, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !2443, file: !2442, line: 127, baseType: !347, size: 16, offset: 144)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !2443, file: !2442, line: 128, baseType: !2452, size: 128, offset: 192)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !2442, line: 88, size: 128, elements: !2453, identifier: "_ZTS6__sbuf")
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !2452, file: !2442, line: 89, baseType: !2446, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !2452, file: !2442, line: 90, baseType: !133, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !2443, file: !2442, line: 129, baseType: !133, size: 32, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !2443, file: !2442, line: 132, baseType: !2131, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !2443, file: !2442, line: 133, baseType: !2459, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!133, !2131}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2443, file: !2442, line: 134, baseType: !2463, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!133, !2131, !2140, !133}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !2443, file: !2442, line: 135, baseType: !2467, size: 64, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!2470, !2131, !2470, !133}
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !2442, line: 77, baseType: !2471)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !2472, line: 71, baseType: !2473)
!2472 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !2120, line: 46, baseType: !1127)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2443, file: !2442, line: 136, baseType: !2475, size: 64, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!133, !2131, !2142, !133}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !2443, file: !2442, line: 139, baseType: !2452, size: 128, offset: 704)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !2443, file: !2442, line: 140, baseType: !2480, size: 64, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !2442, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !2443, file: !2442, line: 141, baseType: !133, size: 32, offset: 896)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !2443, file: !2442, line: 144, baseType: !2484, size: 24, offset: 928)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 24, elements: !2485)
!2485 = !{!2486}
!2486 = !DISubrange(count: 3)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !2443, file: !2442, line: 145, baseType: !2488, size: 8, offset: 952)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 8, elements: !2489)
!2489 = !{!2490}
!2490 = !DISubrange(count: 1)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !2443, file: !2442, line: 148, baseType: !2452, size: 128, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !2443, file: !2442, line: 151, baseType: !133, size: 32, offset: 1088)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2443, file: !2442, line: 152, baseType: !2470, size: 64, offset: 1152)
!2494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2470, line: 109)
!2495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2117, line: 110)
!2496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2497, line: 112)
!2497 = !DISubprogram(name: "fclose", scope: !2442, file: !2442, line: 232, type: !2498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!133, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2502, line: 113)
!2502 = !DISubprogram(name: "fflush", scope: !2442, file: !2442, line: 235, type: !2498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2504, line: 114)
!2504 = !DISubprogram(name: "setbuf", scope: !2442, file: !2442, line: 267, type: !2505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2500, !2140}
!2507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2508, line: 115)
!2508 = !DISubprogram(name: "setvbuf", scope: !2442, file: !2442, line: 268, type: !2509, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!133, !2500, !2140, !133, !2117}
!2511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2512, line: 116)
!2512 = !DISubprogram(name: "fprintf", scope: !2442, file: !2442, line: 244, type: !2513, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!133, !2500, !2142, null}
!2515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2516, line: 117)
!2516 = !DISubprogram(name: "fscanf", scope: !2442, file: !2442, line: 250, type: !2513, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2518, line: 118)
!2518 = !DISubprogram(name: "snprintf", scope: !2442, file: !2442, line: 421, type: !2519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!133, !2140, !2117, !2142, null}
!2521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2522, line: 119)
!2522 = !DISubprogram(name: "sprintf", scope: !2442, file: !2442, line: 269, type: !2523, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!133, !2140, !2142, null}
!2525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2526, line: 120)
!2526 = !DISubprogram(name: "sscanf", scope: !2442, file: !2442, line: 270, type: !2527, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!133, !2142, !2142, null}
!2529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2530, line: 121)
!2530 = !DISubprogram(name: "vfprintf", scope: !2442, file: !2442, line: 278, type: !2531, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!133, !2500, !2142, !2533}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2535, identifier: "_ZTS13__va_list_tag")
!2535 = !{!2536, !2537, !2538, !2539}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2534, file: !3, baseType: !659, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2534, file: !3, baseType: !659, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2534, file: !3, baseType: !2131, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2534, file: !3, baseType: !2131, size: 64, offset: 128)
!2540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2541, line: 122)
!2541 = !DISubprogram(name: "vfscanf", scope: !2442, file: !2442, line: 422, type: !2531, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2543, line: 123)
!2543 = !DISubprogram(name: "vsscanf", scope: !2442, file: !2442, line: 425, type: !2544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!133, !2142, !2142, !2533}
!2546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2547, line: 124)
!2547 = !DISubprogram(name: "vsnprintf", scope: !2442, file: !2442, line: 424, type: !2548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!133, !2140, !2117, !2142, !2533}
!2550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2551, line: 125)
!2551 = !DISubprogram(name: "vsprintf", scope: !2442, file: !2442, line: 280, type: !2552, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!133, !2140, !2142, !2533}
!2554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2555, line: 126)
!2555 = !DISubprogram(name: "fgetc", scope: !2442, file: !2442, line: 236, type: !2498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2557, line: 127)
!2557 = !DISubprogram(name: "fgets", scope: !2442, file: !2442, line: 238, type: !2558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!2140, !2140, !133, !2500}
!2560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2561, line: 128)
!2561 = !DISubprogram(name: "fputc", scope: !2442, file: !2442, line: 245, type: !2562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!133, !133, !2500}
!2564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2565, line: 129)
!2565 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !2442, file: !2442, line: 246, type: !2566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!133, !2142, !2500}
!2568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2569, line: 130)
!2569 = !DISubprogram(name: "getc", scope: !2442, file: !2442, line: 255, type: !2498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2571, line: 131)
!2571 = !DISubprogram(name: "putc", scope: !2442, file: !2442, line: 260, type: !2562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2573, line: 132)
!2573 = !DISubprogram(name: "ungetc", scope: !2442, file: !2442, line: 277, type: !2562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2575, line: 133)
!2575 = !DISubprogram(name: "fread", scope: !2442, file: !2442, line: 247, type: !2576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!2117, !2131, !2117, !2117, !2500}
!2578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2579, line: 134)
!2579 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !2442, file: !2442, line: 254, type: !2580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!2117, !2132, !2117, !2117, !2500}
!2582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2583, line: 135)
!2583 = !DISubprogram(name: "fgetpos", scope: !2442, file: !2442, line: 237, type: !2584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!133, !2500, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2588, line: 136)
!2588 = !DISubprogram(name: "fseek", scope: !2442, file: !2442, line: 251, type: !2589, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!133, !2500, !815, !133}
!2591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2592, line: 137)
!2592 = !DISubprogram(name: "fsetpos", scope: !2442, file: !2442, line: 252, type: !2593, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!133, !2500, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2598, line: 138)
!2598 = !DISubprogram(name: "ftell", scope: !2442, file: !2442, line: 253, type: !2599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!815, !2500}
!2601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2602, line: 139)
!2602 = !DISubprogram(name: "rewind", scope: !2442, file: !2442, line: 265, type: !2603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !2500}
!2605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2606, line: 140)
!2606 = !DISubprogram(name: "clearerr", scope: !2442, file: !2442, line: 231, type: !2603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2608, line: 141)
!2608 = !DISubprogram(name: "feof", scope: !2442, file: !2442, line: 233, type: !2498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2610, line: 142)
!2610 = !DISubprogram(name: "ferror", scope: !2442, file: !2442, line: 234, type: !2498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2612, line: 143)
!2612 = !DISubprogram(name: "perror", scope: !2442, file: !2442, line: 258, type: !2613, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !2142}
!2615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2616, line: 146)
!2616 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !2442, file: !2442, line: 242, type: !2617, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!2500, !2142, !2142}
!2619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2620, line: 147)
!2620 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !2442, file: !2442, line: 248, type: !2621, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!2500, !2142, !2142, !2500}
!2623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2624, line: 148)
!2624 = !DISubprogram(name: "remove", scope: !2442, file: !2442, line: 263, type: !2300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2626, line: 149)
!2626 = !DISubprogram(name: "rename", scope: !2442, file: !2442, line: 264, type: !2158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2628, line: 150)
!2628 = !DISubprogram(name: "tmpfile", scope: !2442, file: !2442, line: 271, type: !2629, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!2500}
!2631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2632, line: 151)
!2632 = !DISubprogram(name: "tmpnam", scope: !2442, file: !2442, line: 276, type: !2633, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!2140, !2140}
!2635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2636, line: 155)
!2636 = !DISubprogram(name: "getchar", scope: !2442, file: !2442, line: 256, type: !2342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2638, line: 157)
!2638 = !DISubprogram(name: "gets", scope: !2442, file: !2442, line: 257, type: !2633, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2640, line: 159)
!2640 = !DISubprogram(name: "scanf", scope: !2442, file: !2442, line: 266, type: !2641, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!133, !2142, null}
!2643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2644, line: 160)
!2644 = !DISubprogram(name: "vscanf", scope: !2442, file: !2442, line: 423, type: !2645, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!133, !2142, !2533}
!2647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2648, line: 164)
!2648 = !DISubprogram(name: "printf", scope: !2442, file: !2442, line: 259, type: !2641, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2650, line: 165)
!2650 = !DISubprogram(name: "putchar", scope: !2442, file: !2442, line: 261, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!133, !133}
!2653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2654, line: 166)
!2654 = !DISubprogram(name: "puts", scope: !2442, file: !2442, line: 262, type: !2300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2656, line: 167)
!2656 = !DISubprogram(name: "vprintf", scope: !2442, file: !2442, line: 279, type: !2645, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2658, line: 104)
!2658 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !2659, file: !2659, line: 212, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2659 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2661, line: 105)
!2661 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !2659, file: !2659, line: 218, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2663, line: 106)
!2663 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !2659, file: !2659, line: 224, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2665, line: 107)
!2665 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !2659, file: !2659, line: 230, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2667, line: 108)
!2667 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !2659, file: !2659, line: 237, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2669, line: 109)
!2669 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !2659, file: !2659, line: 243, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2671, line: 110)
!2671 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !2659, file: !2659, line: 249, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2673, line: 111)
!2673 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !2659, file: !2659, line: 255, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2675, line: 112)
!2675 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !2659, file: !2659, line: 261, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2677, line: 113)
!2677 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !2659, file: !2659, line: 267, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2679, line: 114)
!2679 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !2659, file: !2659, line: 273, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2681, line: 115)
!2681 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !2659, file: !2659, line: 280, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2683, line: 116)
!2683 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !2659, file: !2659, line: 292, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2685, line: 117)
!2685 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !2659, file: !2659, line: 298, type: !2651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2687, line: 63)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2688, line: 31, baseType: !2689)
!2688 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !2120, line: 112, baseType: !133)
!2690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2691, line: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2692, line: 31, baseType: !2693)
!2692 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !2694, line: 40, baseType: !133)
!2694 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2696, line: 65)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2697, line: 31, baseType: !2698)
!2697 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !2694, line: 42, baseType: !2699)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !2120, line: 45, baseType: !659)
!2700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2701, line: 66)
!2701 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !2702, file: !2702, line: 66, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2702 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!133, !2687}
!2705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2706, line: 67)
!2706 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !2702, file: !2702, line: 72, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2708, line: 68)
!2708 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !2709, file: !2709, line: 50, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2709 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2711, line: 69)
!2711 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !2702, file: !2702, line: 78, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2713, line: 70)
!2713 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !2702, file: !2702, line: 90, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2715, line: 71)
!2715 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !2702, file: !2702, line: 96, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2717, line: 72)
!2717 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !2702, file: !2702, line: 102, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2719, line: 73)
!2719 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !2702, file: !2702, line: 108, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2721, line: 74)
!2721 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !2702, file: !2702, line: 114, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2723, line: 75)
!2723 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !2702, file: !2702, line: 120, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2725, line: 76)
!2725 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !2702, file: !2702, line: 126, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2727, line: 77)
!2727 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !2702, file: !2702, line: 132, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2729, line: 78)
!2729 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !2702, file: !2702, line: 84, type: !2730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!133, !2687, !2696}
!2732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2733, line: 79)
!2733 = !DISubprogram(name: "wctype", scope: !2702, file: !2702, line: 172, type: !2734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!2696, !2142}
!2736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2737, line: 80)
!2737 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !2702, file: !2702, line: 138, type: !2738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!2687, !2687}
!2740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2741, line: 81)
!2741 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !2702, file: !2702, line: 144, type: !2738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2743, line: 82)
!2743 = !DISubprogram(name: "towctrans", scope: !2709, file: !2709, line: 121, type: !2744, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!2687, !2687, !2691}
!2746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2747, line: 83)
!2747 = !DISubprogram(name: "wctrans", scope: !2709, file: !2709, line: 123, type: !2748, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!2691, !2142}
!2750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2751, line: 116)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2752, line: 31, baseType: !2753)
!2752 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !2120, line: 81, baseType: !2754)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2120, line: 79, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2120, line: 76, size: 1024, elements: !2756, identifier: "_ZTS11__mbstate_t")
!2756 = !{!2757, !2761}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !2755, file: !2120, line: 77, baseType: !2758, size: 1024)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2141, size: 1024, elements: !2759)
!2759 = !{!2760}
!2760 = !DISubrange(count: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !2755, file: !2120, line: 78, baseType: !1127, size: 64)
!2762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2117, line: 117)
!2763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2764, line: 118)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2765, line: 73, size: 448, elements: !2766, identifier: "_ZTS2tm")
!2765 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2764, file: !2765, line: 74, baseType: !133, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2764, file: !2765, line: 75, baseType: !133, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2764, file: !2765, line: 76, baseType: !133, size: 32, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2764, file: !2765, line: 77, baseType: !133, size: 32, offset: 96)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2764, file: !2765, line: 78, baseType: !133, size: 32, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2764, file: !2765, line: 79, baseType: !133, size: 32, offset: 160)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2764, file: !2765, line: 80, baseType: !133, size: 32, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2764, file: !2765, line: 81, baseType: !133, size: 32, offset: 224)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2764, file: !2765, line: 82, baseType: !133, size: 32, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2764, file: !2765, line: 83, baseType: !815, size: 64, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2764, file: !2765, line: 84, baseType: !2140, size: 64, offset: 384)
!2778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2687, line: 119)
!2779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2441, line: 120)
!2780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2781, line: 121)
!2781 = !DISubprogram(name: "fwprintf", scope: !2782, file: !2782, line: 103, type: !2783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2782 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!133, !2500, !2438, null}
!2785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2786, line: 122)
!2786 = !DISubprogram(name: "fwscanf", scope: !2782, file: !2782, line: 104, type: !2783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2788, line: 123)
!2788 = !DISubprogram(name: "swprintf", scope: !2782, file: !2782, line: 115, type: !2789, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!133, !2425, !2117, !2438, null}
!2791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2792, line: 124)
!2792 = !DISubprogram(name: "vfwprintf", scope: !2782, file: !2782, line: 118, type: !2793, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!133, !2500, !2438, !2533}
!2795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2796, line: 125)
!2796 = !DISubprogram(name: "vswprintf", scope: !2782, file: !2782, line: 120, type: !2797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!133, !2425, !2117, !2438, !2533}
!2799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2800, line: 126)
!2800 = !DISubprogram(name: "swscanf", scope: !2782, file: !2782, line: 116, type: !2801, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!133, !2438, !2438, null}
!2803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2804, line: 127)
!2804 = !DISubprogram(name: "vfwscanf", scope: !2782, file: !2782, line: 170, type: !2793, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2806, line: 128)
!2806 = !DISubprogram(name: "vswscanf", scope: !2782, file: !2782, line: 172, type: !2807, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!133, !2438, !2438, !2533}
!2809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2810, line: 129)
!2810 = !DISubprogram(name: "fgetwc", scope: !2782, file: !2782, line: 98, type: !2811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!2687, !2500}
!2813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2814, line: 130)
!2814 = !DISubprogram(name: "fgetws", scope: !2782, file: !2782, line: 99, type: !2815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!2425, !2425, !133, !2500}
!2817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2818, line: 131)
!2818 = !DISubprogram(name: "fputwc", scope: !2782, file: !2782, line: 100, type: !2819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!2687, !1751, !2500}
!2821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2822, line: 132)
!2822 = !DISubprogram(name: "fputws", scope: !2782, file: !2782, line: 101, type: !2823, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!133, !2438, !2500}
!2825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2826, line: 133)
!2826 = !DISubprogram(name: "fwide", scope: !2782, file: !2782, line: 102, type: !2827, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!133, !2500, !133}
!2829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2830, line: 134)
!2830 = !DISubprogram(name: "getwc", scope: !2782, file: !2782, line: 105, type: !2811, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2832, line: 135)
!2832 = !DISubprogram(name: "putwc", scope: !2782, file: !2782, line: 113, type: !2819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2834, line: 136)
!2834 = !DISubprogram(name: "ungetwc", scope: !2782, file: !2782, line: 117, type: !2835, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!2687, !2687, !2500}
!2837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2838, line: 137)
!2838 = !DISubprogram(name: "wcstod", scope: !2782, file: !2782, line: 144, type: !2839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!2297, !2438, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2843, line: 138)
!2843 = !DISubprogram(name: "wcstof", scope: !2782, file: !2782, line: 175, type: !2844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!2319, !2438, !2841}
!2846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2847, line: 139)
!2847 = !DISubprogram(name: "wcstold", scope: !2782, file: !2782, line: 177, type: !2848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!2124, !2438, !2841}
!2850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2851, line: 140)
!2851 = !DISubprogram(name: "wcstol", scope: !2782, file: !2782, line: 147, type: !2852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!815, !2438, !2841, !133}
!2854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2855, line: 142)
!2855 = !DISubprogram(name: "wcstoll", scope: !2782, file: !2782, line: 180, type: !2856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!1127, !2438, !2841, !133}
!2858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2859, line: 144)
!2859 = !DISubprogram(name: "wcstoul", scope: !2782, file: !2782, line: 149, type: !2860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!971, !2438, !2841, !133}
!2862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2863, line: 146)
!2863 = !DISubprogram(name: "wcstoull", scope: !2782, file: !2782, line: 182, type: !2864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!1283, !2438, !2841, !133}
!2866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2867, line: 148)
!2867 = !DISubprogram(name: "wcscpy", scope: !2782, file: !2782, line: 128, type: !2868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!2425, !2425, !2438}
!2870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2871, line: 149)
!2871 = !DISubprogram(name: "wcsncpy", scope: !2782, file: !2782, line: 135, type: !2872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!2425, !2425, !2438, !2117}
!2874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2875, line: 150)
!2875 = !DISubprogram(name: "wcscat", scope: !2782, file: !2782, line: 124, type: !2868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2877, line: 151)
!2877 = !DISubprogram(name: "wcsncat", scope: !2782, file: !2782, line: 133, type: !2872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2879, line: 152)
!2879 = !DISubprogram(name: "wcscmp", scope: !2782, file: !2782, line: 126, type: !2880, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!133, !2438, !2438}
!2882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2883, line: 153)
!2883 = !DISubprogram(name: "wcscoll", scope: !2782, file: !2782, line: 127, type: !2880, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2885, line: 154)
!2885 = !DISubprogram(name: "wcsncmp", scope: !2782, file: !2782, line: 134, type: !2886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!133, !2438, !2438, !2117}
!2888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2889, line: 155)
!2889 = !DISubprogram(name: "wcsxfrm", scope: !2782, file: !2782, line: 142, type: !2890, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!2117, !2425, !2438, !2117}
!2892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2893, line: 156)
!2893 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !2894, file: !2894, line: 137, type: !2895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2894 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!2425, !2425, !1751}
!2897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2898, line: 157)
!2898 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !2894, file: !2894, line: 144, type: !2868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2900, line: 158)
!2900 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !2894, file: !2894, line: 151, type: !2895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2902, line: 159)
!2902 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !2894, file: !2894, line: 158, type: !2868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2904, line: 160)
!2904 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !2894, file: !2894, line: 165, type: !2905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!2425, !2425, !1751, !2117}
!2907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2908, line: 161)
!2908 = !DISubprogram(name: "wcscspn", scope: !2782, file: !2782, line: 129, type: !2909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!2117, !2438, !2438}
!2911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2912, line: 162)
!2912 = !DISubprogram(name: "wcslen", scope: !2782, file: !2782, line: 132, type: !2913, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!2117, !2438}
!2915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2916, line: 163)
!2916 = !DISubprogram(name: "wcsspn", scope: !2782, file: !2782, line: 140, type: !2909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2918, line: 164)
!2918 = !DISubprogram(name: "wcstok", scope: !2782, file: !2782, line: 145, type: !2919, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!2425, !2425, !2438, !2841}
!2921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2922, line: 165)
!2922 = !DISubprogram(name: "wmemcmp", scope: !2782, file: !2782, line: 151, type: !2886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2924, line: 166)
!2924 = !DISubprogram(name: "wmemcpy", scope: !2782, file: !2782, line: 152, type: !2872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2926, line: 167)
!2926 = !DISubprogram(name: "wmemmove", scope: !2782, file: !2782, line: 153, type: !2872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2928, line: 168)
!2928 = !DISubprogram(name: "wmemset", scope: !2782, file: !2782, line: 154, type: !2905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2930, line: 169)
!2930 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !2782, file: !2782, line: 130, type: !2931, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2117, !2425, !2117, !2438, !2933}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2764)
!2935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2936, line: 170)
!2936 = !DISubprogram(name: "btowc", scope: !2782, file: !2782, line: 97, type: !2937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!2687, !133}
!2939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2940, line: 171)
!2940 = !DISubprogram(name: "wctob", scope: !2782, file: !2782, line: 143, type: !2703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2942, line: 172)
!2942 = !DISubprogram(name: "mbsinit", scope: !2782, file: !2782, line: 110, type: !2943, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!133, !2945}
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2751)
!2947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2948, line: 173)
!2948 = !DISubprogram(name: "mbrlen", scope: !2782, file: !2782, line: 107, type: !2949, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!2117, !2142, !2117, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2953, line: 174)
!2953 = !DISubprogram(name: "mbrtowc", scope: !2782, file: !2782, line: 108, type: !2954, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!2117, !2425, !2142, !2117, !2951}
!2956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2957, line: 175)
!2957 = !DISubprogram(name: "wcrtomb", scope: !2782, file: !2782, line: 123, type: !2958, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!2117, !2140, !1751, !2951}
!2960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2961, line: 176)
!2961 = !DISubprogram(name: "mbsrtowcs", scope: !2782, file: !2782, line: 111, type: !2962, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!2117, !2425, !2964, !2117, !2951}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2966, line: 177)
!2966 = !DISubprogram(name: "wcsrtombs", scope: !2782, file: !2782, line: 138, type: !2967, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!2117, !2140, !2969, !2117, !2951}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2971, line: 180)
!2971 = !DISubprogram(name: "getwchar", scope: !2782, file: !2782, line: 106, type: !2972, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!2687}
!2974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2975, line: 181)
!2975 = !DISubprogram(name: "vwscanf", scope: !2782, file: !2782, line: 174, type: !2976, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!133, !2438, !2533}
!2978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2979, line: 182)
!2979 = !DISubprogram(name: "wscanf", scope: !2782, file: !2782, line: 156, type: !2980, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!133, !2438, null}
!2982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2983, line: 186)
!2983 = !DISubprogram(name: "putwchar", scope: !2782, file: !2782, line: 114, type: !2984, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2687, !1751}
!2986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2987, line: 187)
!2987 = !DISubprogram(name: "vwprintf", scope: !2782, file: !2782, line: 122, type: !2976, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2989, line: 188)
!2989 = !DISubprogram(name: "wprintf", scope: !2782, file: !2782, line: 155, type: !2980, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!2990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2991, line: 56)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !2992, line: 30, baseType: !2993)
!2992 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !2120, line: 117, baseType: !971)
!2994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2117, line: 57)
!2995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2996, line: 58)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2997, line: 30, baseType: !2998)
!2997 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/fetch_add")
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !2120, line: 120, baseType: !815)
!2999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !2764, line: 59)
!3000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3001, line: 60)
!3001 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !2765, file: !2765, line: 107, type: !3002, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!2991}
!3004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3005, line: 61)
!3005 = !DISubprogram(name: "difftime", scope: !2765, file: !2765, line: 109, type: !3006, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!2297, !2996, !2996}
!3008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3009, line: 62)
!3009 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !2765, file: !2765, line: 113, type: !3010, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!2996, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!3013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3014, line: 63)
!3014 = !DISubprogram(name: "time", scope: !2765, file: !2765, line: 116, type: !3015, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!2996, !3017}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!3018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3019, line: 65)
!3019 = !DISubprogram(name: "asctime", scope: !2765, file: !2765, line: 106, type: !3020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!2140, !2933}
!3022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3023, line: 66)
!3023 = !DISubprogram(name: "ctime", scope: !2765, file: !2765, line: 108, type: !3024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!2140, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2996)
!3028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3029, line: 67)
!3029 = !DISubprogram(name: "gmtime", scope: !2765, file: !2765, line: 111, type: !3030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!3012, !3026}
!3032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3033, line: 68)
!3033 = !DISubprogram(name: "localtime", scope: !2765, file: !2765, line: 112, type: !3030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !3035, line: 70)
!3035 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !2765, file: !2765, line: 114, type: !3036, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!2117, !2140, !2117, !2142, !2933}
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<char>", scope: !7, file: !6, line: 1084, size: 8, elements: !3039, templateParams: !3190, identifier: "_ZTSNSt3__16atomicIcEE")
!3039 = !{!3040, !3175, !3179, !3182, !3187}
!3040 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3038, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<char, true>", scope: !7, file: !6, line: 1003, size: 8, elements: !3042, templateParams: !3174, identifier: "_ZTSNSt3__113__atomic_baseIcLb1EEE")
!3042 = !{!3043, !3121, !3125, !3128, !3133, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3147, !3150, !3151, !3152, !3155, !3158, !3159, !3160, !3163, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173}
!3043 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3041, baseType: !3044)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<char, false>", scope: !7, file: !6, line: 891, size: 8, elements: !3045, templateParams: !3119, identifier: "_ZTSNSt3__113__atomic_baseIcLb0EEE")
!3045 = !{!3046, !3048, !3054, !3059, !3063, !3067, !3070, !3073, !3076, !3079, !3082, !3085, !3089, !3092, !3093, !3094, !3097, !3100, !3101, !3102, !3105, !3108, !3112, !3116}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !3044, file: !6, line: 893, baseType: !3047, size: 8)
!3047 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !2141)
!3048 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIcLb0EE12is_lock_freeEv", scope: !3044, file: !6, line: 900, type: !3049, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!34, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3053)
!3053 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3044)
!3054 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIcLb0EE12is_lock_freeEv", scope: !3044, file: !6, line: 909, type: !3055, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!34, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3044)
!3059 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIcLb0EE5storeEcNS_12memory_orderE", scope: !3044, file: !6, line: 912, type: !3060, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{null, !3062, !2141, !47}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3063 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIcLb0EE5storeEcNS_12memory_orderE", scope: !3044, file: !6, line: 916, type: !3064, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3066, !2141, !47}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3067 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIcLb0EE4loadENS_12memory_orderE", scope: !3044, file: !6, line: 920, type: !3068, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!2141, !3051, !47}
!3070 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIcLb0EE4loadENS_12memory_orderE", scope: !3044, file: !6, line: 924, type: !3071, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!2141, !3057, !47}
!3073 = !DISubprogram(name: "operator char", linkageName: "_ZNVKSt3__113__atomic_baseIcLb0EEcvcEv", scope: !3044, file: !6, line: 928, type: !3074, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!2141, !3051}
!3076 = !DISubprogram(name: "operator char", linkageName: "_ZNKSt3__113__atomic_baseIcLb0EEcvcEv", scope: !3044, file: !6, line: 930, type: !3077, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!2141, !3057}
!3079 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIcLb0EE8exchangeEcNS_12memory_orderE", scope: !3044, file: !6, line: 932, type: !3080, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!2141, !3062, !2141, !47}
!3082 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIcLb0EE8exchangeEcNS_12memory_orderE", scope: !3044, file: !6, line: 935, type: !3083, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!2141, !3066, !2141, !47}
!3085 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIcLb0EE21compare_exchange_weakERccNS_12memory_orderES3_", scope: !3044, file: !6, line: 938, type: !3086, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!34, !3062, !3088, !2141, !47, !47}
!3088 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2141, size: 64)
!3089 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIcLb0EE21compare_exchange_weakERccNS_12memory_orderES3_", scope: !3044, file: !6, line: 943, type: !3090, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!34, !3066, !3088, !2141, !47, !47}
!3092 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIcLb0EE23compare_exchange_strongERccNS_12memory_orderES3_", scope: !3044, file: !6, line: 948, type: !3086, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!3093 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIcLb0EE23compare_exchange_strongERccNS_12memory_orderES3_", scope: !3044, file: !6, line: 953, type: !3090, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!3094 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIcLb0EE21compare_exchange_weakERccNS_12memory_orderE", scope: !3044, file: !6, line: 958, type: !3095, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!34, !3062, !3088, !2141, !47}
!3097 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIcLb0EE21compare_exchange_weakERccNS_12memory_orderE", scope: !3044, file: !6, line: 962, type: !3098, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!34, !3066, !3088, !2141, !47}
!3100 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIcLb0EE23compare_exchange_strongERccNS_12memory_orderE", scope: !3044, file: !6, line: 966, type: !3095, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!3101 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIcLb0EE23compare_exchange_strongERccNS_12memory_orderE", scope: !3044, file: !6, line: 970, type: !3098, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!3102 = !DISubprogram(name: "__atomic_base", scope: !3044, file: !6, line: 976, type: !3103, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3066}
!3105 = !DISubprogram(name: "__atomic_base", scope: !3044, file: !6, line: 982, type: !3106, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !3066, !2141}
!3108 = !DISubprogram(name: "__atomic_base", scope: !3044, file: !6, line: 984, type: !3109, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !3066, !3111}
!3111 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3058, size: 64)
!3112 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIcLb0EEaSERKS1_", scope: !3044, file: !6, line: 985, type: !3113, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!3115, !3066, !3111}
!3115 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3044, size: 64)
!3116 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIcLb0EEaSERKS1_", scope: !3044, file: !6, line: 986, type: !3117, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!3115, !3062, !3111}
!3119 = !{!3120, !106}
!3120 = !DITemplateTypeParameter(name: "_Tp", type: !2141)
!3121 = !DISubprogram(name: "__atomic_base", scope: !3041, file: !6, line: 1008, type: !3122, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !3124}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3125 = !DISubprogram(name: "__atomic_base", scope: !3041, file: !6, line: 1010, type: !3126, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: false)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !3124, !2141}
!3128 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE", scope: !3041, file: !6, line: 1013, type: !3129, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!2141, !3131, !2141, !47}
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3041)
!3133 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE", scope: !3041, file: !6, line: 1016, type: !3134, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: false)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!2141, !3124, !2141, !47}
!3136 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EE9fetch_subEcNS_12memory_orderE", scope: !3041, file: !6, line: 1019, type: !3129, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!3137 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIcLb1EE9fetch_subEcNS_12memory_orderE", scope: !3041, file: !6, line: 1022, type: !3134, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: false)
!3138 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EE9fetch_andEcNS_12memory_orderE", scope: !3041, file: !6, line: 1025, type: !3129, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!3139 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIcLb1EE9fetch_andEcNS_12memory_orderE", scope: !3041, file: !6, line: 1028, type: !3134, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false)
!3140 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EE8fetch_orEcNS_12memory_orderE", scope: !3041, file: !6, line: 1031, type: !3129, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: false)
!3141 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIcLb1EE8fetch_orEcNS_12memory_orderE", scope: !3041, file: !6, line: 1034, type: !3134, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false)
!3142 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EE9fetch_xorEcNS_12memory_orderE", scope: !3041, file: !6, line: 1037, type: !3129, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false)
!3143 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIcLb1EE9fetch_xorEcNS_12memory_orderE", scope: !3041, file: !6, line: 1040, type: !3134, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false)
!3144 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEppEi", scope: !3041, file: !6, line: 1044, type: !3145, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: false)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!2141, !3131, !133}
!3147 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEppEi", scope: !3041, file: !6, line: 1046, type: !3148, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: false)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!2141, !3124, !133}
!3150 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEmmEi", scope: !3041, file: !6, line: 1048, type: !3145, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false)
!3151 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEmmEi", scope: !3041, file: !6, line: 1050, type: !3148, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false)
!3152 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEppEv", scope: !3041, file: !6, line: 1052, type: !3153, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!2141, !3131}
!3155 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEppEv", scope: !3041, file: !6, line: 1054, type: !3156, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: false)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!2141, !3124}
!3158 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEmmEv", scope: !3041, file: !6, line: 1056, type: !3153, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false)
!3159 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEmmEv", scope: !3041, file: !6, line: 1058, type: !3156, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false)
!3160 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEpLEc", scope: !3041, file: !6, line: 1060, type: !3161, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!2141, !3131, !2141}
!3163 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEpLEc", scope: !3041, file: !6, line: 1062, type: !3164, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!2141, !3124, !2141}
!3166 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEmIEc", scope: !3041, file: !6, line: 1064, type: !3161, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false)
!3167 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEmIEc", scope: !3041, file: !6, line: 1066, type: !3164, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false)
!3168 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEaNEc", scope: !3041, file: !6, line: 1068, type: !3161, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false)
!3169 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEaNEc", scope: !3041, file: !6, line: 1070, type: !3164, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: false)
!3170 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEoREc", scope: !3041, file: !6, line: 1072, type: !3161, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false)
!3171 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEoREc", scope: !3041, file: !6, line: 1074, type: !3164, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false)
!3172 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIcLb1EEeOEc", scope: !3041, file: !6, line: 1076, type: !3161, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!3173 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIcLb1EEeOEc", scope: !3041, file: !6, line: 1078, type: !3164, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false)
!3174 = !{!3120, !162}
!3175 = !DISubprogram(name: "atomic", scope: !3038, file: !6, line: 1089, type: !3176, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: false)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !3178}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3179 = !DISubprogram(name: "atomic", scope: !3038, file: !6, line: 1091, type: !3180, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !3178, !2141}
!3182 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIcEaSEc", scope: !3038, file: !6, line: 1094, type: !3183, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!2141, !3185, !2141}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3186 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3038)
!3187 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIcEaSEc", scope: !3038, file: !6, line: 1097, type: !3188, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!2141, !3178, !2141}
!3190 = !{!3120}
!3191 = !{i32 2, !"Dwarf Version", i32 2}
!3192 = !{i32 2, !"Debug Info Version", i32 3}
!3193 = !{i32 1, !"PIC Level", i32 2}
!3194 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!3195 = distinct !DISubprogram(name: "f1", linkageName: "_Z2f1v", scope: !3, file: !3, line: 54, type: !2366, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !3196)
!3196 = !{}
!3197 = !DILocalVariable(name: "this", arg: 1, scope: !3198, type: !3199, flags: DIFlagArtificial | DIFlagObjectPointer)
!3198 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !1908, file: !6, line: 1016, type: !2001, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !2000, variables: !3196)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!3200 = !DIExpression()
!3201 = !DILocation(line: 0, scope: !3198, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 58, column: 7, scope: !3195)
!3203 = !DILocalVariable(name: "__op", arg: 2, scope: !3198, file: !6, line: 1016, type: !133)
!3204 = !DILocation(line: 1016, column: 23, scope: !3198, inlinedAt: !3202)
!3205 = !DILocalVariable(name: "__m", arg: 3, scope: !3198, file: !6, line: 1016, type: !47)
!3206 = !DILocation(line: 1016, column: 42, scope: !3198, inlinedAt: !3202)
!3207 = !DILocalVariable(name: "this", arg: 1, scope: !3208, type: !3209, flags: DIFlagArtificial | DIFlagObjectPointer)
!3208 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !1911, file: !6, line: 924, type: !1938, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1937, variables: !3196)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!3210 = !DILocation(line: 0, scope: !3208, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 56, column: 15, scope: !3195)
!3212 = !DILocalVariable(name: "__m", arg: 2, scope: !3208, file: !6, line: 924, type: !47)
!3213 = !DILocation(line: 924, column: 27, scope: !3208, inlinedAt: !3211)
!3214 = !DILocation(line: 926, column: 36, scope: !3208, inlinedAt: !3211)
!3215 = !DILocation(line: 926, column: 42, scope: !3208, inlinedAt: !3211)
!3216 = !DILocation(line: 926, column: 17, scope: !3208, inlinedAt: !3211)
!3217 = !DILocation(line: 926, column: 17, scope: !3218, inlinedAt: !3211)
!3218 = !DILexicalBlockFile(scope: !3208, file: !6, discriminator: 1)
!3219 = !DILocation(line: 926, column: 17, scope: !3220, inlinedAt: !3211)
!3220 = !DILexicalBlockFile(scope: !3208, file: !6, discriminator: 2)
!3221 = !DILocation(line: 926, column: 17, scope: !3222, inlinedAt: !3211)
!3222 = !DILexicalBlockFile(scope: !3208, file: !6, discriminator: 3)
!3223 = !DILocation(line: 926, column: 17, scope: !3224, inlinedAt: !3211)
!3224 = !DILexicalBlockFile(scope: !3208, file: !6, discriminator: 4)
!3225 = !DILocation(line: 56, column: 11, scope: !3195)
!3226 = !DILocation(line: 1017, column: 47, scope: !3198, inlinedAt: !3202)
!3227 = !DILocation(line: 1017, column: 59, scope: !3198, inlinedAt: !3202)
!3228 = !DILocation(line: 1017, column: 53, scope: !3198, inlinedAt: !3202)
!3229 = !DILocation(line: 1017, column: 17, scope: !3198, inlinedAt: !3202)
!3230 = !DILocation(line: 1017, column: 17, scope: !3231, inlinedAt: !3202)
!3231 = !DILexicalBlockFile(scope: !3198, file: !6, discriminator: 1)
!3232 = !DILocation(line: 1017, column: 17, scope: !3233, inlinedAt: !3202)
!3233 = !DILexicalBlockFile(scope: !3198, file: !6, discriminator: 2)
!3234 = !DILocation(line: 1017, column: 17, scope: !3235, inlinedAt: !3202)
!3235 = !DILexicalBlockFile(scope: !3198, file: !6, discriminator: 3)
!3236 = !DILocation(line: 1017, column: 17, scope: !3237, inlinedAt: !3202)
!3237 = !DILexicalBlockFile(scope: !3198, file: !6, discriminator: 4)
!3238 = !DILocation(line: 1017, column: 17, scope: !3239, inlinedAt: !3202)
!3239 = !DILexicalBlockFile(scope: !3198, file: !6, discriminator: 5)
!3240 = !DILocation(line: 1017, column: 17, scope: !3241, inlinedAt: !3202)
!3241 = !DILexicalBlockFile(scope: !3198, file: !6, discriminator: 6)
!3242 = !DILocation(line: 59, column: 1, scope: !3195)
!3243 = distinct !DISubprogram(name: "f2", linkageName: "_Z2f2v", scope: !3, file: !3, line: 61, type: !2366, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !3196)
!3244 = !DILocation(line: 0, scope: !3198, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 65, column: 7, scope: !3243)
!3246 = !DILocation(line: 1016, column: 23, scope: !3198, inlinedAt: !3245)
!3247 = !DILocation(line: 1016, column: 42, scope: !3198, inlinedAt: !3245)
!3248 = !DILocation(line: 0, scope: !3208, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 63, column: 15, scope: !3243)
!3250 = !DILocation(line: 924, column: 27, scope: !3208, inlinedAt: !3249)
!3251 = !DILocation(line: 926, column: 36, scope: !3208, inlinedAt: !3249)
!3252 = !DILocation(line: 926, column: 42, scope: !3208, inlinedAt: !3249)
!3253 = !DILocation(line: 926, column: 17, scope: !3208, inlinedAt: !3249)
!3254 = !DILocation(line: 926, column: 17, scope: !3218, inlinedAt: !3249)
!3255 = !DILocation(line: 926, column: 17, scope: !3220, inlinedAt: !3249)
!3256 = !DILocation(line: 926, column: 17, scope: !3222, inlinedAt: !3249)
!3257 = !DILocation(line: 926, column: 17, scope: !3224, inlinedAt: !3249)
!3258 = !DILocation(line: 63, column: 11, scope: !3243)
!3259 = !DILocation(line: 1017, column: 47, scope: !3198, inlinedAt: !3245)
!3260 = !DILocation(line: 1017, column: 59, scope: !3198, inlinedAt: !3245)
!3261 = !DILocation(line: 1017, column: 53, scope: !3198, inlinedAt: !3245)
!3262 = !DILocation(line: 1017, column: 17, scope: !3198, inlinedAt: !3245)
!3263 = !DILocation(line: 1017, column: 17, scope: !3231, inlinedAt: !3245)
!3264 = !DILocation(line: 1017, column: 17, scope: !3233, inlinedAt: !3245)
!3265 = !DILocation(line: 1017, column: 17, scope: !3235, inlinedAt: !3245)
!3266 = !DILocation(line: 1017, column: 17, scope: !3237, inlinedAt: !3245)
!3267 = !DILocation(line: 1017, column: 17, scope: !3239, inlinedAt: !3245)
!3268 = !DILocation(line: 1017, column: 17, scope: !3241, inlinedAt: !3245)
!3269 = !DILocation(line: 66, column: 1, scope: !3243)
!3270 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 69, type: !2342, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !3196)
!3271 = !DILocalVariable(name: "this", arg: 1, scope: !3272, type: !3273, flags: DIFlagArtificial | DIFlagObjectPointer)
!3272 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIaLb1EE9fetch_addEaNS_12memory_orderE", scope: !23, file: !6, line: 1016, type: !120, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !119, variables: !3196)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!3274 = !DILocation(line: 0, scope: !3272, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 72, column: 19, scope: !3270)
!3276 = !DILocalVariable(name: "__op", arg: 2, scope: !3272, file: !6, line: 1016, type: !30)
!3277 = !DILocation(line: 1016, column: 23, scope: !3272, inlinedAt: !3275)
!3278 = !DILocalVariable(name: "__m", arg: 3, scope: !3272, file: !6, line: 1016, type: !47)
!3279 = !DILocation(line: 1016, column: 42, scope: !3272, inlinedAt: !3275)
!3280 = !DILocalVariable(name: "this", arg: 1, scope: !3281, type: !3282, flags: DIFlagArtificial | DIFlagObjectPointer)
!3281 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIhLb1EE9fetch_addEhNS_12memory_orderE", scope: !184, file: !6, line: 1016, type: !278, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !277, variables: !3196)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!3283 = !DILocation(line: 0, scope: !3281, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 73, column: 21, scope: !3270)
!3285 = !DILocalVariable(name: "__op", arg: 2, scope: !3281, file: !6, line: 1016, type: !191)
!3286 = !DILocation(line: 1016, column: 23, scope: !3281, inlinedAt: !3284)
!3287 = !DILocalVariable(name: "__m", arg: 3, scope: !3281, file: !6, line: 1016, type: !47)
!3288 = !DILocation(line: 1016, column: 42, scope: !3281, inlinedAt: !3284)
!3289 = !DILocalVariable(name: "this", arg: 1, scope: !3290, type: !3291, flags: DIFlagArtificial | DIFlagObjectPointer)
!3290 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIsLb1EE9fetch_addEsNS_12memory_orderE", scope: !340, file: !6, line: 1016, type: !434, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !433, variables: !3196)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3292 = !DILocation(line: 0, scope: !3290, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 74, column: 13, scope: !3270)
!3294 = !DILocalVariable(name: "__op", arg: 2, scope: !3290, file: !6, line: 1016, type: !347)
!3295 = !DILocation(line: 1016, column: 23, scope: !3290, inlinedAt: !3293)
!3296 = !DILocalVariable(name: "__m", arg: 3, scope: !3290, file: !6, line: 1016, type: !47)
!3297 = !DILocation(line: 1016, column: 42, scope: !3290, inlinedAt: !3293)
!3298 = !DILocalVariable(name: "this", arg: 1, scope: !3299, type: !3300, flags: DIFlagArtificial | DIFlagObjectPointer)
!3299 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseItLb1EE9fetch_addEtNS_12memory_orderE", scope: !496, file: !6, line: 1016, type: !590, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !589, variables: !3196)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!3301 = !DILocation(line: 0, scope: !3299, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 75, column: 22, scope: !3270)
!3303 = !DILocalVariable(name: "__op", arg: 2, scope: !3299, file: !6, line: 1016, type: !503)
!3304 = !DILocation(line: 1016, column: 23, scope: !3299, inlinedAt: !3302)
!3305 = !DILocalVariable(name: "__m", arg: 3, scope: !3299, file: !6, line: 1016, type: !47)
!3306 = !DILocation(line: 1016, column: 42, scope: !3299, inlinedAt: !3302)
!3307 = !DILocalVariable(name: "this", arg: 1, scope: !3308, type: !3309, flags: DIFlagArtificial | DIFlagObjectPointer)
!3308 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIjLb1EE9fetch_addEjNS_12memory_orderE", scope: !652, file: !6, line: 1016, type: !746, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !745, variables: !3196)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!3310 = !DILocation(line: 0, scope: !3308, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 76, column: 20, scope: !3270)
!3312 = !DILocalVariable(name: "__op", arg: 2, scope: !3308, file: !6, line: 1016, type: !659)
!3313 = !DILocation(line: 1016, column: 23, scope: !3308, inlinedAt: !3311)
!3314 = !DILocalVariable(name: "__m", arg: 3, scope: !3308, file: !6, line: 1016, type: !47)
!3315 = !DILocation(line: 1016, column: 42, scope: !3308, inlinedAt: !3311)
!3316 = !DILocalVariable(name: "this", arg: 1, scope: !3317, type: !3318, flags: DIFlagArtificial | DIFlagObjectPointer)
!3317 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIlLb1EE9fetch_addElNS_12memory_orderE", scope: !808, file: !6, line: 1016, type: !902, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !901, variables: !3196)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!3319 = !DILocation(line: 0, scope: !3317, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 77, column: 12, scope: !3270)
!3321 = !DILocalVariable(name: "__op", arg: 2, scope: !3317, file: !6, line: 1016, type: !815)
!3322 = !DILocation(line: 1016, column: 23, scope: !3317, inlinedAt: !3320)
!3323 = !DILocalVariable(name: "__m", arg: 3, scope: !3317, file: !6, line: 1016, type: !47)
!3324 = !DILocation(line: 1016, column: 42, scope: !3317, inlinedAt: !3320)
!3325 = !DILocalVariable(name: "this", arg: 1, scope: !3326, type: !3327, flags: DIFlagArtificial | DIFlagObjectPointer)
!3326 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseImLb1EE9fetch_addEmNS_12memory_orderE", scope: !964, file: !6, line: 1016, type: !1058, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1057, variables: !3196)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!3328 = !DILocation(line: 0, scope: !3326, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 78, column: 21, scope: !3270)
!3330 = !DILocalVariable(name: "__op", arg: 2, scope: !3326, file: !6, line: 1016, type: !971)
!3331 = !DILocation(line: 1016, column: 23, scope: !3326, inlinedAt: !3329)
!3332 = !DILocalVariable(name: "__m", arg: 3, scope: !3326, file: !6, line: 1016, type: !47)
!3333 = !DILocation(line: 1016, column: 42, scope: !3326, inlinedAt: !3329)
!3334 = !DILocalVariable(name: "this", arg: 1, scope: !3335, type: !3336, flags: DIFlagArtificial | DIFlagObjectPointer)
!3335 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIxLb1EE9fetch_addExNS_12memory_orderE", scope: !1120, file: !6, line: 1016, type: !1214, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1213, variables: !3196)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!3337 = !DILocation(line: 0, scope: !3335, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 79, column: 17, scope: !3270)
!3339 = !DILocalVariable(name: "__op", arg: 2, scope: !3335, file: !6, line: 1016, type: !1127)
!3340 = !DILocation(line: 1016, column: 23, scope: !3335, inlinedAt: !3338)
!3341 = !DILocalVariable(name: "__m", arg: 3, scope: !3335, file: !6, line: 1016, type: !47)
!3342 = !DILocation(line: 1016, column: 42, scope: !3335, inlinedAt: !3338)
!3343 = !DILocalVariable(name: "this", arg: 1, scope: !3344, type: !3345, flags: DIFlagArtificial | DIFlagObjectPointer)
!3344 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIDsLb1EE9fetch_addEDsNS_12memory_orderE", scope: !1432, file: !6, line: 1016, type: !1526, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1525, variables: !3196)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!3346 = !DILocation(line: 0, scope: !3344, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 80, column: 16, scope: !3270)
!3348 = !DILocalVariable(name: "__op", arg: 2, scope: !3344, file: !6, line: 1016, type: !1439)
!3349 = !DILocation(line: 1016, column: 23, scope: !3344, inlinedAt: !3347)
!3350 = !DILocalVariable(name: "__m", arg: 3, scope: !3344, file: !6, line: 1016, type: !47)
!3351 = !DILocation(line: 1016, column: 42, scope: !3344, inlinedAt: !3347)
!3352 = !DILocalVariable(name: "this", arg: 1, scope: !3353, type: !3354, flags: DIFlagArtificial | DIFlagObjectPointer)
!3353 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIDiLb1EE9fetch_addEDiNS_12memory_orderE", scope: !1588, file: !6, line: 1016, type: !1682, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1681, variables: !3196)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!3355 = !DILocation(line: 0, scope: !3353, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 81, column: 16, scope: !3270)
!3357 = !DILocalVariable(name: "__op", arg: 2, scope: !3353, file: !6, line: 1016, type: !1595)
!3358 = !DILocation(line: 1016, column: 23, scope: !3353, inlinedAt: !3356)
!3359 = !DILocalVariable(name: "__m", arg: 3, scope: !3353, file: !6, line: 1016, type: !47)
!3360 = !DILocation(line: 1016, column: 42, scope: !3353, inlinedAt: !3356)
!3361 = !DILocalVariable(name: "this", arg: 1, scope: !3362, type: !3363, flags: DIFlagArtificial | DIFlagObjectPointer)
!3362 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIwLb1EE9fetch_addEwNS_12memory_orderE", scope: !1744, file: !6, line: 1016, type: !1838, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !1837, variables: !3196)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!3364 = !DILocation(line: 0, scope: !3362, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 82, column: 15, scope: !3270)
!3366 = !DILocalVariable(name: "__op", arg: 2, scope: !3362, file: !6, line: 1016, type: !1751)
!3367 = !DILocation(line: 1016, column: 23, scope: !3362, inlinedAt: !3365)
!3368 = !DILocalVariable(name: "__m", arg: 3, scope: !3362, file: !6, line: 1016, type: !47)
!3369 = !DILocation(line: 1016, column: 42, scope: !3362, inlinedAt: !3365)
!3370 = !DILocation(line: 0, scope: !3335, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 83, column: 20, scope: !3270)
!3372 = !DILocation(line: 1016, column: 23, scope: !3335, inlinedAt: !3371)
!3373 = !DILocation(line: 1016, column: 42, scope: !3335, inlinedAt: !3371)
!3374 = !DILocation(line: 0, scope: !3317, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 84, column: 17, scope: !3270)
!3376 = !DILocation(line: 1016, column: 23, scope: !3317, inlinedAt: !3375)
!3377 = !DILocation(line: 1016, column: 42, scope: !3317, inlinedAt: !3375)
!3378 = !DILocation(line: 0, scope: !3326, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 85, column: 17, scope: !3270)
!3380 = !DILocation(line: 1016, column: 23, scope: !3326, inlinedAt: !3379)
!3381 = !DILocation(line: 1016, column: 42, scope: !3326, inlinedAt: !3379)
!3382 = !DILocalVariable(name: "this", arg: 1, scope: !3383, type: !3384, flags: DIFlagArtificial | DIFlagObjectPointer)
!3383 = distinct !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIcLb1EE9fetch_addEcNS_12memory_orderE", scope: !3041, file: !6, line: 1016, type: !3134, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !2, declaration: !3133, variables: !3196)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3385 = !DILocation(line: 0, scope: !3383, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 71, column: 12, scope: !3270)
!3387 = !DILocalVariable(name: "__op", arg: 2, scope: !3383, file: !6, line: 1016, type: !2141)
!3388 = !DILocation(line: 1016, column: 23, scope: !3383, inlinedAt: !3386)
!3389 = !DILocalVariable(name: "__m", arg: 3, scope: !3383, file: !6, line: 1016, type: !47)
!3390 = !DILocation(line: 1016, column: 42, scope: !3383, inlinedAt: !3386)
!3391 = !DILocation(line: 1017, column: 47, scope: !3383, inlinedAt: !3386)
!3392 = !DILocation(line: 1017, column: 59, scope: !3383, inlinedAt: !3386)
!3393 = !DILocation(line: 1017, column: 53, scope: !3383, inlinedAt: !3386)
!3394 = !DILocation(line: 1017, column: 17, scope: !3383, inlinedAt: !3386)
!3395 = !DILocation(line: 1017, column: 17, scope: !3396, inlinedAt: !3386)
!3396 = !DILexicalBlockFile(scope: !3383, file: !6, discriminator: 1)
!3397 = !DILocation(line: 1017, column: 17, scope: !3398, inlinedAt: !3386)
!3398 = !DILexicalBlockFile(scope: !3383, file: !6, discriminator: 2)
!3399 = !DILocation(line: 1017, column: 17, scope: !3400, inlinedAt: !3386)
!3400 = !DILexicalBlockFile(scope: !3383, file: !6, discriminator: 3)
!3401 = !DILocation(line: 1017, column: 17, scope: !3402, inlinedAt: !3386)
!3402 = !DILexicalBlockFile(scope: !3383, file: !6, discriminator: 4)
!3403 = !DILocation(line: 1017, column: 17, scope: !3404, inlinedAt: !3386)
!3404 = !DILexicalBlockFile(scope: !3383, file: !6, discriminator: 5)
!3405 = !DILocation(line: 1017, column: 17, scope: !3406, inlinedAt: !3386)
!3406 = !DILexicalBlockFile(scope: !3383, file: !6, discriminator: 6)
!3407 = !DILocation(line: 1017, column: 47, scope: !3272, inlinedAt: !3275)
!3408 = !DILocation(line: 1017, column: 59, scope: !3272, inlinedAt: !3275)
!3409 = !DILocation(line: 1017, column: 53, scope: !3272, inlinedAt: !3275)
!3410 = !DILocation(line: 1017, column: 17, scope: !3272, inlinedAt: !3275)
!3411 = !DILocation(line: 1017, column: 17, scope: !3412, inlinedAt: !3275)
!3412 = !DILexicalBlockFile(scope: !3272, file: !6, discriminator: 1)
!3413 = !DILocation(line: 1017, column: 17, scope: !3414, inlinedAt: !3275)
!3414 = !DILexicalBlockFile(scope: !3272, file: !6, discriminator: 2)
!3415 = !DILocation(line: 1017, column: 17, scope: !3416, inlinedAt: !3275)
!3416 = !DILexicalBlockFile(scope: !3272, file: !6, discriminator: 3)
!3417 = !DILocation(line: 1017, column: 17, scope: !3418, inlinedAt: !3275)
!3418 = !DILexicalBlockFile(scope: !3272, file: !6, discriminator: 4)
!3419 = !DILocation(line: 1017, column: 17, scope: !3420, inlinedAt: !3275)
!3420 = !DILexicalBlockFile(scope: !3272, file: !6, discriminator: 5)
!3421 = !DILocation(line: 1017, column: 17, scope: !3422, inlinedAt: !3275)
!3422 = !DILexicalBlockFile(scope: !3272, file: !6, discriminator: 6)
!3423 = !DILocation(line: 1017, column: 47, scope: !3281, inlinedAt: !3284)
!3424 = !DILocation(line: 1017, column: 59, scope: !3281, inlinedAt: !3284)
!3425 = !DILocation(line: 1017, column: 53, scope: !3281, inlinedAt: !3284)
!3426 = !DILocation(line: 1017, column: 17, scope: !3281, inlinedAt: !3284)
!3427 = !DILocation(line: 1017, column: 17, scope: !3428, inlinedAt: !3284)
!3428 = !DILexicalBlockFile(scope: !3281, file: !6, discriminator: 1)
!3429 = !DILocation(line: 1017, column: 17, scope: !3430, inlinedAt: !3284)
!3430 = !DILexicalBlockFile(scope: !3281, file: !6, discriminator: 2)
!3431 = !DILocation(line: 1017, column: 17, scope: !3432, inlinedAt: !3284)
!3432 = !DILexicalBlockFile(scope: !3281, file: !6, discriminator: 3)
!3433 = !DILocation(line: 1017, column: 17, scope: !3434, inlinedAt: !3284)
!3434 = !DILexicalBlockFile(scope: !3281, file: !6, discriminator: 4)
!3435 = !DILocation(line: 1017, column: 17, scope: !3436, inlinedAt: !3284)
!3436 = !DILexicalBlockFile(scope: !3281, file: !6, discriminator: 5)
!3437 = !DILocation(line: 1017, column: 17, scope: !3438, inlinedAt: !3284)
!3438 = !DILexicalBlockFile(scope: !3281, file: !6, discriminator: 6)
!3439 = !DILocation(line: 1017, column: 47, scope: !3290, inlinedAt: !3293)
!3440 = !DILocation(line: 1017, column: 59, scope: !3290, inlinedAt: !3293)
!3441 = !DILocation(line: 1017, column: 53, scope: !3290, inlinedAt: !3293)
!3442 = !DILocation(line: 1017, column: 17, scope: !3290, inlinedAt: !3293)
!3443 = !DILocation(line: 1017, column: 17, scope: !3444, inlinedAt: !3293)
!3444 = !DILexicalBlockFile(scope: !3290, file: !6, discriminator: 1)
!3445 = !DILocation(line: 1017, column: 17, scope: !3446, inlinedAt: !3293)
!3446 = !DILexicalBlockFile(scope: !3290, file: !6, discriminator: 2)
!3447 = !DILocation(line: 1017, column: 17, scope: !3448, inlinedAt: !3293)
!3448 = !DILexicalBlockFile(scope: !3290, file: !6, discriminator: 3)
!3449 = !DILocation(line: 1017, column: 17, scope: !3450, inlinedAt: !3293)
!3450 = !DILexicalBlockFile(scope: !3290, file: !6, discriminator: 4)
!3451 = !DILocation(line: 1017, column: 17, scope: !3452, inlinedAt: !3293)
!3452 = !DILexicalBlockFile(scope: !3290, file: !6, discriminator: 5)
!3453 = !DILocation(line: 1017, column: 17, scope: !3454, inlinedAt: !3293)
!3454 = !DILexicalBlockFile(scope: !3290, file: !6, discriminator: 6)
!3455 = !DILocation(line: 1017, column: 47, scope: !3299, inlinedAt: !3302)
!3456 = !DILocation(line: 1017, column: 59, scope: !3299, inlinedAt: !3302)
!3457 = !DILocation(line: 1017, column: 53, scope: !3299, inlinedAt: !3302)
!3458 = !DILocation(line: 1017, column: 17, scope: !3299, inlinedAt: !3302)
!3459 = !DILocation(line: 1017, column: 17, scope: !3460, inlinedAt: !3302)
!3460 = !DILexicalBlockFile(scope: !3299, file: !6, discriminator: 1)
!3461 = !DILocation(line: 1017, column: 17, scope: !3462, inlinedAt: !3302)
!3462 = !DILexicalBlockFile(scope: !3299, file: !6, discriminator: 2)
!3463 = !DILocation(line: 1017, column: 17, scope: !3464, inlinedAt: !3302)
!3464 = !DILexicalBlockFile(scope: !3299, file: !6, discriminator: 3)
!3465 = !DILocation(line: 1017, column: 17, scope: !3466, inlinedAt: !3302)
!3466 = !DILexicalBlockFile(scope: !3299, file: !6, discriminator: 4)
!3467 = !DILocation(line: 1017, column: 17, scope: !3468, inlinedAt: !3302)
!3468 = !DILexicalBlockFile(scope: !3299, file: !6, discriminator: 5)
!3469 = !DILocation(line: 1017, column: 17, scope: !3470, inlinedAt: !3302)
!3470 = !DILexicalBlockFile(scope: !3299, file: !6, discriminator: 6)
!3471 = !DILocation(line: 1017, column: 47, scope: !3308, inlinedAt: !3311)
!3472 = !DILocation(line: 1017, column: 59, scope: !3308, inlinedAt: !3311)
!3473 = !DILocation(line: 1017, column: 53, scope: !3308, inlinedAt: !3311)
!3474 = !DILocation(line: 1017, column: 17, scope: !3308, inlinedAt: !3311)
!3475 = !DILocation(line: 1017, column: 17, scope: !3476, inlinedAt: !3311)
!3476 = !DILexicalBlockFile(scope: !3308, file: !6, discriminator: 1)
!3477 = !DILocation(line: 1017, column: 17, scope: !3478, inlinedAt: !3311)
!3478 = !DILexicalBlockFile(scope: !3308, file: !6, discriminator: 2)
!3479 = !DILocation(line: 1017, column: 17, scope: !3480, inlinedAt: !3311)
!3480 = !DILexicalBlockFile(scope: !3308, file: !6, discriminator: 3)
!3481 = !DILocation(line: 1017, column: 17, scope: !3482, inlinedAt: !3311)
!3482 = !DILexicalBlockFile(scope: !3308, file: !6, discriminator: 4)
!3483 = !DILocation(line: 1017, column: 17, scope: !3484, inlinedAt: !3311)
!3484 = !DILexicalBlockFile(scope: !3308, file: !6, discriminator: 5)
!3485 = !DILocation(line: 1017, column: 17, scope: !3486, inlinedAt: !3311)
!3486 = !DILexicalBlockFile(scope: !3308, file: !6, discriminator: 6)
!3487 = !DILocation(line: 1017, column: 47, scope: !3317, inlinedAt: !3320)
!3488 = !DILocation(line: 1017, column: 59, scope: !3317, inlinedAt: !3320)
!3489 = !DILocation(line: 1017, column: 53, scope: !3317, inlinedAt: !3320)
!3490 = !DILocation(line: 1017, column: 17, scope: !3317, inlinedAt: !3320)
!3491 = !DILocation(line: 1017, column: 17, scope: !3492, inlinedAt: !3320)
!3492 = !DILexicalBlockFile(scope: !3317, file: !6, discriminator: 1)
!3493 = !DILocation(line: 1017, column: 17, scope: !3494, inlinedAt: !3320)
!3494 = !DILexicalBlockFile(scope: !3317, file: !6, discriminator: 2)
!3495 = !DILocation(line: 1017, column: 17, scope: !3496, inlinedAt: !3320)
!3496 = !DILexicalBlockFile(scope: !3317, file: !6, discriminator: 3)
!3497 = !DILocation(line: 1017, column: 17, scope: !3498, inlinedAt: !3320)
!3498 = !DILexicalBlockFile(scope: !3317, file: !6, discriminator: 4)
!3499 = !DILocation(line: 1017, column: 17, scope: !3500, inlinedAt: !3320)
!3500 = !DILexicalBlockFile(scope: !3317, file: !6, discriminator: 5)
!3501 = !DILocation(line: 1017, column: 17, scope: !3502, inlinedAt: !3320)
!3502 = !DILexicalBlockFile(scope: !3317, file: !6, discriminator: 6)
!3503 = !DILocation(line: 1017, column: 47, scope: !3326, inlinedAt: !3329)
!3504 = !DILocation(line: 1017, column: 59, scope: !3326, inlinedAt: !3329)
!3505 = !DILocation(line: 1017, column: 53, scope: !3326, inlinedAt: !3329)
!3506 = !DILocation(line: 1017, column: 17, scope: !3326, inlinedAt: !3329)
!3507 = !DILocation(line: 1017, column: 17, scope: !3508, inlinedAt: !3329)
!3508 = !DILexicalBlockFile(scope: !3326, file: !6, discriminator: 1)
!3509 = !DILocation(line: 1017, column: 17, scope: !3510, inlinedAt: !3329)
!3510 = !DILexicalBlockFile(scope: !3326, file: !6, discriminator: 2)
!3511 = !DILocation(line: 1017, column: 17, scope: !3512, inlinedAt: !3329)
!3512 = !DILexicalBlockFile(scope: !3326, file: !6, discriminator: 3)
!3513 = !DILocation(line: 1017, column: 17, scope: !3514, inlinedAt: !3329)
!3514 = !DILexicalBlockFile(scope: !3326, file: !6, discriminator: 4)
!3515 = !DILocation(line: 1017, column: 17, scope: !3516, inlinedAt: !3329)
!3516 = !DILexicalBlockFile(scope: !3326, file: !6, discriminator: 5)
!3517 = !DILocation(line: 1017, column: 17, scope: !3518, inlinedAt: !3329)
!3518 = !DILexicalBlockFile(scope: !3326, file: !6, discriminator: 6)
!3519 = !DILocation(line: 1017, column: 47, scope: !3335, inlinedAt: !3338)
!3520 = !DILocation(line: 1017, column: 59, scope: !3335, inlinedAt: !3338)
!3521 = !DILocation(line: 1017, column: 53, scope: !3335, inlinedAt: !3338)
!3522 = !DILocation(line: 1017, column: 17, scope: !3335, inlinedAt: !3338)
!3523 = !DILocation(line: 1017, column: 17, scope: !3524, inlinedAt: !3338)
!3524 = !DILexicalBlockFile(scope: !3335, file: !6, discriminator: 1)
!3525 = !DILocation(line: 1017, column: 17, scope: !3526, inlinedAt: !3338)
!3526 = !DILexicalBlockFile(scope: !3335, file: !6, discriminator: 2)
!3527 = !DILocation(line: 1017, column: 17, scope: !3528, inlinedAt: !3338)
!3528 = !DILexicalBlockFile(scope: !3335, file: !6, discriminator: 3)
!3529 = !DILocation(line: 1017, column: 17, scope: !3530, inlinedAt: !3338)
!3530 = !DILexicalBlockFile(scope: !3335, file: !6, discriminator: 4)
!3531 = !DILocation(line: 1017, column: 17, scope: !3532, inlinedAt: !3338)
!3532 = !DILexicalBlockFile(scope: !3335, file: !6, discriminator: 5)
!3533 = !DILocation(line: 1017, column: 17, scope: !3534, inlinedAt: !3338)
!3534 = !DILexicalBlockFile(scope: !3335, file: !6, discriminator: 6)
!3535 = !DILocation(line: 1017, column: 47, scope: !3344, inlinedAt: !3347)
!3536 = !DILocation(line: 1017, column: 59, scope: !3344, inlinedAt: !3347)
!3537 = !DILocation(line: 1017, column: 53, scope: !3344, inlinedAt: !3347)
!3538 = !DILocation(line: 1017, column: 17, scope: !3344, inlinedAt: !3347)
!3539 = !DILocation(line: 1017, column: 17, scope: !3540, inlinedAt: !3347)
!3540 = !DILexicalBlockFile(scope: !3344, file: !6, discriminator: 1)
!3541 = !DILocation(line: 1017, column: 17, scope: !3542, inlinedAt: !3347)
!3542 = !DILexicalBlockFile(scope: !3344, file: !6, discriminator: 2)
!3543 = !DILocation(line: 1017, column: 17, scope: !3544, inlinedAt: !3347)
!3544 = !DILexicalBlockFile(scope: !3344, file: !6, discriminator: 3)
!3545 = !DILocation(line: 1017, column: 17, scope: !3546, inlinedAt: !3347)
!3546 = !DILexicalBlockFile(scope: !3344, file: !6, discriminator: 4)
!3547 = !DILocation(line: 1017, column: 17, scope: !3548, inlinedAt: !3347)
!3548 = !DILexicalBlockFile(scope: !3344, file: !6, discriminator: 5)
!3549 = !DILocation(line: 1017, column: 17, scope: !3550, inlinedAt: !3347)
!3550 = !DILexicalBlockFile(scope: !3344, file: !6, discriminator: 6)
!3551 = !DILocation(line: 1017, column: 47, scope: !3353, inlinedAt: !3356)
!3552 = !DILocation(line: 1017, column: 59, scope: !3353, inlinedAt: !3356)
!3553 = !DILocation(line: 1017, column: 53, scope: !3353, inlinedAt: !3356)
!3554 = !DILocation(line: 1017, column: 17, scope: !3353, inlinedAt: !3356)
!3555 = !DILocation(line: 1017, column: 17, scope: !3556, inlinedAt: !3356)
!3556 = !DILexicalBlockFile(scope: !3353, file: !6, discriminator: 1)
!3557 = !DILocation(line: 1017, column: 17, scope: !3558, inlinedAt: !3356)
!3558 = !DILexicalBlockFile(scope: !3353, file: !6, discriminator: 2)
!3559 = !DILocation(line: 1017, column: 17, scope: !3560, inlinedAt: !3356)
!3560 = !DILexicalBlockFile(scope: !3353, file: !6, discriminator: 3)
!3561 = !DILocation(line: 1017, column: 17, scope: !3562, inlinedAt: !3356)
!3562 = !DILexicalBlockFile(scope: !3353, file: !6, discriminator: 4)
!3563 = !DILocation(line: 1017, column: 17, scope: !3564, inlinedAt: !3356)
!3564 = !DILexicalBlockFile(scope: !3353, file: !6, discriminator: 5)
!3565 = !DILocation(line: 1017, column: 17, scope: !3566, inlinedAt: !3356)
!3566 = !DILexicalBlockFile(scope: !3353, file: !6, discriminator: 6)
!3567 = !DILocation(line: 1017, column: 47, scope: !3362, inlinedAt: !3365)
!3568 = !DILocation(line: 1017, column: 59, scope: !3362, inlinedAt: !3365)
!3569 = !DILocation(line: 1017, column: 53, scope: !3362, inlinedAt: !3365)
!3570 = !DILocation(line: 1017, column: 17, scope: !3362, inlinedAt: !3365)
!3571 = !DILocation(line: 1017, column: 17, scope: !3572, inlinedAt: !3365)
!3572 = !DILexicalBlockFile(scope: !3362, file: !6, discriminator: 1)
!3573 = !DILocation(line: 1017, column: 17, scope: !3574, inlinedAt: !3365)
!3574 = !DILexicalBlockFile(scope: !3362, file: !6, discriminator: 2)
!3575 = !DILocation(line: 1017, column: 17, scope: !3576, inlinedAt: !3365)
!3576 = !DILexicalBlockFile(scope: !3362, file: !6, discriminator: 3)
!3577 = !DILocation(line: 1017, column: 17, scope: !3578, inlinedAt: !3365)
!3578 = !DILexicalBlockFile(scope: !3362, file: !6, discriminator: 4)
!3579 = !DILocation(line: 1017, column: 17, scope: !3580, inlinedAt: !3365)
!3580 = !DILexicalBlockFile(scope: !3362, file: !6, discriminator: 5)
!3581 = !DILocation(line: 1017, column: 17, scope: !3582, inlinedAt: !3365)
!3582 = !DILexicalBlockFile(scope: !3362, file: !6, discriminator: 6)
!3583 = !DILocation(line: 1017, column: 47, scope: !3335, inlinedAt: !3371)
!3584 = !DILocation(line: 1017, column: 59, scope: !3335, inlinedAt: !3371)
!3585 = !DILocation(line: 1017, column: 53, scope: !3335, inlinedAt: !3371)
!3586 = !DILocation(line: 1017, column: 17, scope: !3335, inlinedAt: !3371)
!3587 = !DILocation(line: 1017, column: 17, scope: !3524, inlinedAt: !3371)
!3588 = !DILocation(line: 1017, column: 17, scope: !3526, inlinedAt: !3371)
!3589 = !DILocation(line: 1017, column: 17, scope: !3528, inlinedAt: !3371)
!3590 = !DILocation(line: 1017, column: 17, scope: !3530, inlinedAt: !3371)
!3591 = !DILocation(line: 1017, column: 17, scope: !3532, inlinedAt: !3371)
!3592 = !DILocation(line: 1017, column: 17, scope: !3534, inlinedAt: !3371)
!3593 = !DILocation(line: 1017, column: 47, scope: !3317, inlinedAt: !3375)
!3594 = !DILocation(line: 1017, column: 59, scope: !3317, inlinedAt: !3375)
!3595 = !DILocation(line: 1017, column: 53, scope: !3317, inlinedAt: !3375)
!3596 = !DILocation(line: 1017, column: 17, scope: !3317, inlinedAt: !3375)
!3597 = !DILocation(line: 1017, column: 17, scope: !3492, inlinedAt: !3375)
!3598 = !DILocation(line: 1017, column: 17, scope: !3494, inlinedAt: !3375)
!3599 = !DILocation(line: 1017, column: 17, scope: !3496, inlinedAt: !3375)
!3600 = !DILocation(line: 1017, column: 17, scope: !3498, inlinedAt: !3375)
!3601 = !DILocation(line: 1017, column: 17, scope: !3500, inlinedAt: !3375)
!3602 = !DILocation(line: 1017, column: 17, scope: !3502, inlinedAt: !3375)
!3603 = !DILocation(line: 1017, column: 47, scope: !3326, inlinedAt: !3379)
!3604 = !DILocation(line: 1017, column: 59, scope: !3326, inlinedAt: !3379)
!3605 = !DILocation(line: 1017, column: 53, scope: !3326, inlinedAt: !3379)
!3606 = !DILocation(line: 1017, column: 17, scope: !3326, inlinedAt: !3379)
!3607 = !DILocation(line: 1017, column: 17, scope: !3508, inlinedAt: !3379)
!3608 = !DILocation(line: 1017, column: 17, scope: !3510, inlinedAt: !3379)
!3609 = !DILocation(line: 1017, column: 17, scope: !3512, inlinedAt: !3379)
!3610 = !DILocation(line: 1017, column: 17, scope: !3514, inlinedAt: !3379)
!3611 = !DILocation(line: 1017, column: 17, scope: !3516, inlinedAt: !3379)
!3612 = !DILocation(line: 1017, column: 17, scope: !3518, inlinedAt: !3379)
!3613 = !DILocation(line: 128, column: 5, scope: !3270)
