; ModuleID = 'test.bc'
source_filename = "test.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%class.stack = type { %"struct.std::__1::atomic" }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %struct.node* }
%struct.node = type { i32, %struct.node* }

; Function Attrs: noinline norecurse ssp uwtable
define i32 @main() #0 !dbg !110 {
entry:
  %s = alloca %class.stack, align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp1 = alloca i32, align 4
  %ref.tmp2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %class.stack* %s, metadata !114, metadata !266), !dbg !267
  store i32 1, i32* %ref.tmp, align 4, !dbg !268
  call void @_ZN5stackIiE4pushERKi(%class.stack* %s, i32* dereferenceable(4) %ref.tmp), !dbg !269
  store i32 2, i32* %ref.tmp1, align 4, !dbg !270
  call void @_ZN5stackIiE4pushERKi(%class.stack* %s, i32* dereferenceable(4) %ref.tmp1), !dbg !271
  store i32 3, i32* %ref.tmp2, align 4, !dbg !272
  call void @_ZN5stackIiE4pushERKi(%class.stack* %s, i32* dereferenceable(4) %ref.tmp2), !dbg !273
  ret i32 0, !dbg !274
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZN5stackIiE4pushERKi(%class.stack* %this, i32* dereferenceable(4) %data) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !275 {
entry:
  %this.addr.i.i = alloca %"struct.std::__1::__atomic_base"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base"** %this.addr.i.i, metadata !276, metadata !266), !dbg !279
  %__e.addr.i.i = alloca %struct.node**, align 8
  call void @llvm.dbg.declare(metadata %struct.node*** %__e.addr.i.i, metadata !288, metadata !266), !dbg !289
  %__d.addr.i.i = alloca %struct.node*, align 8
  call void @llvm.dbg.declare(metadata %struct.node** %__d.addr.i.i, metadata !290, metadata !266), !dbg !291
  %__s.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__s.addr.i.i, metadata !292, metadata !266), !dbg !293
  %__f.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__f.addr.i.i, metadata !294, metadata !266), !dbg !295
  %.atomictmp.i.i = alloca %struct.node*, align 8
  %cmpxchg.bool.i.i = alloca i8, align 1
  %__o.addr.i = alloca %"struct.std::__1::atomic"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::atomic"** %__o.addr.i, metadata !296, metadata !266), !dbg !297
  %__e.addr.i = alloca %struct.node**, align 8
  call void @llvm.dbg.declare(metadata %struct.node*** %__e.addr.i, metadata !298, metadata !266), !dbg !299
  %__d.addr.i = alloca %struct.node*, align 8
  call void @llvm.dbg.declare(metadata %struct.node** %__d.addr.i, metadata !300, metadata !266), !dbg !301
  %__s.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__s.addr.i, metadata !302, metadata !266), !dbg !303
  %__f.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__f.addr.i, metadata !304, metadata !266), !dbg !305
  %this.addr.i = alloca %"struct.std::__1::__atomic_base"*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__1::__atomic_base"** %this.addr.i, metadata !306, metadata !266), !dbg !309
  %__m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__m.addr.i, metadata !311, metadata !266), !dbg !312
  %atomic-temp.i = alloca %struct.node*, align 8
  %this.addr = alloca %class.stack*, align 8
  %data.addr = alloca i32*, align 8
  %new_node = alloca %struct.node*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.stack* %this, %class.stack** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.stack** %this.addr, metadata !313, metadata !266), !dbg !315
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !316, metadata !266), !dbg !317
  %this1 = load %class.stack*, %class.stack** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.node** %new_node, metadata !318, metadata !266), !dbg !319
  %call = call i8* @_Znwm(i64 16) #6, !dbg !320
  %0 = bitcast i8* %call to %struct.node*, !dbg !320
  %1 = load i32*, i32** %data.addr, align 8, !dbg !321
  invoke void @_ZN4nodeIiEC1ERKi(%struct.node* %0, i32* dereferenceable(4) %1)
          to label %invoke.cont unwind label %lpad, !dbg !322

invoke.cont:                                      ; preds = %entry
  store %struct.node* %0, %struct.node** %new_node, align 8, !dbg !323
  %head = getelementptr inbounds %class.stack, %class.stack* %this1, i32 0, i32 0, !dbg !324
  %2 = bitcast %"struct.std::__1::atomic"* %head to %"struct.std::__1::__atomic_base"*, !dbg !324
  store %"struct.std::__1::__atomic_base"* %2, %"struct.std::__1::__atomic_base"** %this.addr.i, align 8
  store i32 0, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %this.addr.i, align 8
  %__a_.i = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %this1.i, i32 0, i32 0, !dbg !325
  %3 = load i32, i32* %__m.addr.i, align 4, !dbg !326
  %4 = bitcast %struct.node** %__a_.i to i64*, !dbg !327
  %5 = bitcast %struct.node** %atomic-temp.i to i64*, !dbg !327
  switch i32 %3, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ], !dbg !327

monotonic.i:                                      ; preds = %invoke.cont
  %6 = load atomic i64, i64* %4 monotonic, align 8, !dbg !328
  store i64 %6, i64* %5, align 8, !dbg !328
  br label %_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE.exit, !dbg !328

acquire.i:                                        ; preds = %invoke.cont, %invoke.cont
  %7 = load atomic i64, i64* %4 acquire, align 8, !dbg !330
  store i64 %7, i64* %5, align 8, !dbg !330
  br label %_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE.exit, !dbg !330

seqcst.i:                                         ; preds = %invoke.cont
  %8 = load atomic i64, i64* %4 seq_cst, align 8, !dbg !332
  store i64 %8, i64* %5, align 8, !dbg !332
  br label %_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE.exit, !dbg !332

_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %9 = load %struct.node*, %struct.node** %atomic-temp.i, align 8, !dbg !334
  %10 = load %struct.node*, %struct.node** %new_node, align 8, !dbg !336
  %next = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1, !dbg !337
  store %struct.node* %9, %struct.node** %next, align 8, !dbg !338
  br label %while.cond, !dbg !339

while.cond:                                       ; preds = %while.body, %_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE.exit
  %head3 = getelementptr inbounds %class.stack, %class.stack* %this1, i32 0, i32 0, !dbg !340
  %11 = load %struct.node*, %struct.node** %new_node, align 8, !dbg !341
  %next4 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1, !dbg !342
  %12 = load %struct.node*, %struct.node** %new_node, align 8, !dbg !343
  store %"struct.std::__1::atomic"* %head3, %"struct.std::__1::atomic"** %__o.addr.i, align 8
  store %struct.node** %next4, %struct.node*** %__e.addr.i, align 8
  store %struct.node* %12, %struct.node** %__d.addr.i, align 8
  store i32 3, i32* %__s.addr.i, align 4
  store i32 0, i32* %__f.addr.i, align 4
  %13 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %__o.addr.i, align 8, !dbg !344
  %14 = bitcast %"struct.std::__1::atomic"* %13 to %"struct.std::__1::__atomic_base"*, !dbg !345
  %15 = load %struct.node**, %struct.node*** %__e.addr.i, align 8, !dbg !346
  %16 = load %struct.node*, %struct.node** %__d.addr.i, align 8, !dbg !347
  %17 = load i32, i32* %__s.addr.i, align 4, !dbg !348
  %18 = load i32, i32* %__f.addr.i, align 4, !dbg !349
  store %"struct.std::__1::__atomic_base"* %14, %"struct.std::__1::__atomic_base"** %this.addr.i.i, align 8
  store %struct.node** %15, %struct.node*** %__e.addr.i.i, align 8
  store %struct.node* %16, %struct.node** %__d.addr.i.i, align 8
  store i32 %17, i32* %__s.addr.i.i, align 4
  store i32 %18, i32* %__f.addr.i.i, align 4
  %this1.i.i = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %this.addr.i.i, align 8
  %__a_.i.i = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %this1.i.i, i32 0, i32 0, !dbg !350
  %19 = load i32, i32* %__s.addr.i.i, align 4, !dbg !351
  %20 = load %struct.node**, %struct.node*** %__e.addr.i.i, align 8, !dbg !352
  %21 = load %struct.node*, %struct.node** %__d.addr.i.i, align 8, !dbg !353
  store %struct.node* %21, %struct.node** %.atomictmp.i.i, align 8, !dbg !354
  %22 = load i32, i32* %__f.addr.i.i, align 4, !dbg !355
  %23 = bitcast %struct.node** %__a_.i.i to i64*, !dbg !354
  %24 = bitcast %struct.node** %20 to i64*, !dbg !354
  %25 = bitcast %struct.node** %.atomictmp.i.i to i64*, !dbg !354
  switch i32 %19, label %monotonic.i.i [
    i32 1, label %acquire.i.i
    i32 2, label %acquire.i.i
    i32 3, label %release.i.i
    i32 4, label %acqrel.i.i
    i32 5, label %seqcst.i.i
  ], !dbg !354

monotonic.i.i:                                    ; preds = %while.cond
  %26 = load i64, i64* %24, align 8, !dbg !356
  %27 = load i64, i64* %25, align 8, !dbg !356
  %28 = cmpxchg weak i64* %23, i64 %26, i64 %27 monotonic monotonic, !dbg !356
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !356
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !356
  br i1 %30, label %cmpxchg.continue.i.i, label %cmpxchg.store_expected.i.i, !dbg !356

acquire.i.i:                                      ; preds = %while.cond, %while.cond
  switch i32 %22, label %monotonic_fail3.i.i [
    i32 1, label %acquire_fail.i.i
    i32 2, label %acquire_fail.i.i
  ], !dbg !358

release.i.i:                                      ; preds = %while.cond
  %31 = load i64, i64* %24, align 8, !dbg !360
  %32 = load i64, i64* %25, align 8, !dbg !360
  %33 = cmpxchg weak i64* %23, i64 %31, i64 %32 release monotonic, !dbg !360
  %34 = extractvalue { i64, i1 } %33, 0, !dbg !360
  %35 = extractvalue { i64, i1 } %33, 1, !dbg !360
  br i1 %35, label %cmpxchg.continue14.i.i, label %cmpxchg.store_expected13.i.i, !dbg !360

acqrel.i.i:                                       ; preds = %while.cond
  switch i32 %22, label %monotonic_fail16.i.i [
    i32 1, label %acquire_fail17.i.i
    i32 2, label %acquire_fail17.i.i
  ], !dbg !362

seqcst.i.i:                                       ; preds = %while.cond
  switch i32 %22, label %monotonic_fail25.i.i [
    i32 1, label %acquire_fail26.i.i
    i32 2, label %acquire_fail26.i.i
    i32 5, label %seqcst_fail.i.i
  ], !dbg !364

cmpxchg.store_expected.i.i:                       ; preds = %monotonic.i.i
  store i64 %29, i64* %24, align 8, !dbg !366
  br label %cmpxchg.continue.i.i, !dbg !366

cmpxchg.continue.i.i:                             ; preds = %cmpxchg.store_expected.i.i, %monotonic.i.i
  %frombool.i.i = zext i1 %30 to i8, !dbg !368
  store i8 %frombool.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !368
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit, !dbg !370

monotonic_fail3.i.i:                              ; preds = %acquire.i.i
  %36 = load i64, i64* %24, align 8, !dbg !372
  %37 = load i64, i64* %25, align 8, !dbg !372
  %38 = cmpxchg weak i64* %23, i64 %36, i64 %37 acquire monotonic, !dbg !372
  %39 = extractvalue { i64, i1 } %38, 0, !dbg !372
  %40 = extractvalue { i64, i1 } %38, 1, !dbg !372
  br i1 %40, label %cmpxchg.continue6.i.i, label %cmpxchg.store_expected5.i.i, !dbg !372

acquire_fail.i.i:                                 ; preds = %acquire.i.i, %acquire.i.i
  %41 = load i64, i64* %24, align 8, !dbg !374
  %42 = load i64, i64* %25, align 8, !dbg !374
  %43 = cmpxchg weak i64* %23, i64 %41, i64 %42 acquire acquire, !dbg !374
  %44 = extractvalue { i64, i1 } %43, 0, !dbg !374
  %45 = extractvalue { i64, i1 } %43, 1, !dbg !374
  br i1 %45, label %cmpxchg.continue9.i.i, label %cmpxchg.store_expected8.i.i, !dbg !374

atomic.continue4.i.i:                             ; preds = %cmpxchg.continue9.i.i, %cmpxchg.continue6.i.i
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit, !dbg !376

cmpxchg.store_expected5.i.i:                      ; preds = %monotonic_fail3.i.i
  store i64 %39, i64* %24, align 8, !dbg !378
  br label %cmpxchg.continue6.i.i, !dbg !378

cmpxchg.continue6.i.i:                            ; preds = %cmpxchg.store_expected5.i.i, %monotonic_fail3.i.i
  %frombool7.i.i = zext i1 %40 to i8, !dbg !380
  store i8 %frombool7.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !380
  br label %atomic.continue4.i.i, !dbg !380

cmpxchg.store_expected8.i.i:                      ; preds = %acquire_fail.i.i
  store i64 %44, i64* %24, align 8, !dbg !382
  br label %cmpxchg.continue9.i.i, !dbg !382

cmpxchg.continue9.i.i:                            ; preds = %cmpxchg.store_expected8.i.i, %acquire_fail.i.i
  %frombool10.i.i = zext i1 %45 to i8, !dbg !384
  store i8 %frombool10.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !384
  br label %atomic.continue4.i.i, !dbg !384

cmpxchg.store_expected13.i.i:                     ; preds = %release.i.i
  store i64 %34, i64* %24, align 8, !dbg !386
  br label %cmpxchg.continue14.i.i, !dbg !386

cmpxchg.continue14.i.i:                           ; preds = %cmpxchg.store_expected13.i.i, %release.i.i
  %frombool15.i.i = zext i1 %35 to i8, !dbg !388
  store i8 %frombool15.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !388
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit, !dbg !390

monotonic_fail16.i.i:                             ; preds = %acqrel.i.i
  %46 = load i64, i64* %24, align 8, !dbg !392
  %47 = load i64, i64* %25, align 8, !dbg !392
  %48 = cmpxchg weak i64* %23, i64 %46, i64 %47 acq_rel monotonic, !dbg !392
  %49 = extractvalue { i64, i1 } %48, 0, !dbg !392
  %50 = extractvalue { i64, i1 } %48, 1, !dbg !392
  br i1 %50, label %cmpxchg.continue20.i.i, label %cmpxchg.store_expected19.i.i, !dbg !392

acquire_fail17.i.i:                               ; preds = %acqrel.i.i, %acqrel.i.i
  %51 = load i64, i64* %24, align 8, !dbg !394
  %52 = load i64, i64* %25, align 8, !dbg !394
  %53 = cmpxchg weak i64* %23, i64 %51, i64 %52 acq_rel acquire, !dbg !394
  %54 = extractvalue { i64, i1 } %53, 0, !dbg !394
  %55 = extractvalue { i64, i1 } %53, 1, !dbg !394
  br i1 %55, label %cmpxchg.continue23.i.i, label %cmpxchg.store_expected22.i.i, !dbg !394

atomic.continue18.i.i:                            ; preds = %cmpxchg.continue23.i.i, %cmpxchg.continue20.i.i
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit, !dbg !396

cmpxchg.store_expected19.i.i:                     ; preds = %monotonic_fail16.i.i
  store i64 %49, i64* %24, align 8, !dbg !398
  br label %cmpxchg.continue20.i.i, !dbg !398

cmpxchg.continue20.i.i:                           ; preds = %cmpxchg.store_expected19.i.i, %monotonic_fail16.i.i
  %frombool21.i.i = zext i1 %50 to i8, !dbg !400
  store i8 %frombool21.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !400
  br label %atomic.continue18.i.i, !dbg !400

cmpxchg.store_expected22.i.i:                     ; preds = %acquire_fail17.i.i
  store i64 %54, i64* %24, align 8, !dbg !402
  br label %cmpxchg.continue23.i.i, !dbg !402

cmpxchg.continue23.i.i:                           ; preds = %cmpxchg.store_expected22.i.i, %acquire_fail17.i.i
  %frombool24.i.i = zext i1 %55 to i8, !dbg !404
  store i8 %frombool24.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !404
  br label %atomic.continue18.i.i, !dbg !404

monotonic_fail25.i.i:                             ; preds = %seqcst.i.i
  %56 = load i64, i64* %24, align 8, !dbg !406
  %57 = load i64, i64* %25, align 8, !dbg !406
  %58 = cmpxchg weak i64* %23, i64 %56, i64 %57 seq_cst monotonic, !dbg !406
  %59 = extractvalue { i64, i1 } %58, 0, !dbg !406
  %60 = extractvalue { i64, i1 } %58, 1, !dbg !406
  br i1 %60, label %cmpxchg.continue29.i.i, label %cmpxchg.store_expected28.i.i, !dbg !406

acquire_fail26.i.i:                               ; preds = %seqcst.i.i, %seqcst.i.i
  %61 = load i64, i64* %24, align 8, !dbg !408
  %62 = load i64, i64* %25, align 8, !dbg !408
  %63 = cmpxchg weak i64* %23, i64 %61, i64 %62 seq_cst acquire, !dbg !408
  %64 = extractvalue { i64, i1 } %63, 0, !dbg !408
  %65 = extractvalue { i64, i1 } %63, 1, !dbg !408
  br i1 %65, label %cmpxchg.continue32.i.i, label %cmpxchg.store_expected31.i.i, !dbg !408

seqcst_fail.i.i:                                  ; preds = %seqcst.i.i
  %66 = load i64, i64* %24, align 8, !dbg !410
  %67 = load i64, i64* %25, align 8, !dbg !410
  %68 = cmpxchg weak i64* %23, i64 %66, i64 %67 seq_cst seq_cst, !dbg !410
  %69 = extractvalue { i64, i1 } %68, 0, !dbg !410
  %70 = extractvalue { i64, i1 } %68, 1, !dbg !410
  br i1 %70, label %cmpxchg.continue35.i.i, label %cmpxchg.store_expected34.i.i, !dbg !410

atomic.continue27.i.i:                            ; preds = %cmpxchg.continue35.i.i, %cmpxchg.continue32.i.i, %cmpxchg.continue29.i.i
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit, !dbg !412

cmpxchg.store_expected28.i.i:                     ; preds = %monotonic_fail25.i.i
  store i64 %59, i64* %24, align 8, !dbg !414
  br label %cmpxchg.continue29.i.i, !dbg !414

cmpxchg.continue29.i.i:                           ; preds = %cmpxchg.store_expected28.i.i, %monotonic_fail25.i.i
  %frombool30.i.i = zext i1 %60 to i8, !dbg !416
  store i8 %frombool30.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !416
  br label %atomic.continue27.i.i, !dbg !416

cmpxchg.store_expected31.i.i:                     ; preds = %acquire_fail26.i.i
  store i64 %64, i64* %24, align 8, !dbg !418
  br label %cmpxchg.continue32.i.i, !dbg !418

cmpxchg.continue32.i.i:                           ; preds = %cmpxchg.store_expected31.i.i, %acquire_fail26.i.i
  %frombool33.i.i = zext i1 %65 to i8, !dbg !420
  store i8 %frombool33.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !420
  br label %atomic.continue27.i.i, !dbg !420

cmpxchg.store_expected34.i.i:                     ; preds = %seqcst_fail.i.i
  store i64 %69, i64* %24, align 8, !dbg !422
  br label %cmpxchg.continue35.i.i, !dbg !422

cmpxchg.continue35.i.i:                           ; preds = %cmpxchg.store_expected34.i.i, %seqcst_fail.i.i
  %frombool36.i.i = zext i1 %70 to i8, !dbg !424
  store i8 %frombool36.i.i, i8* %cmpxchg.bool.i.i, align 1, !dbg !424
  br label %atomic.continue27.i.i, !dbg !424

_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit: ; preds = %cmpxchg.continue.i.i, %atomic.continue4.i.i, %cmpxchg.continue14.i.i, %atomic.continue18.i.i, %atomic.continue27.i.i
  %71 = load i8, i8* %cmpxchg.bool.i.i, align 1, !dbg !426
  %tobool.i.i = trunc i8 %71 to i1, !dbg !426
  %lnot = xor i1 %tobool.i.i, true, !dbg !428
  br i1 %lnot, label %while.body, label %while.end, !dbg !429

while.body:                                       ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit
  br label %while.cond, !dbg !430, !llvm.loop !432

lpad:                                             ; preds = %entry
  %72 = landingpad { i8*, i32 }
          cleanup, !dbg !434
  %73 = extractvalue { i8*, i32 } %72, 0, !dbg !434
  store i8* %73, i8** %exn.slot, align 8, !dbg !434
  %74 = extractvalue { i8*, i32 } %72, 1, !dbg !434
  store i32 %74, i32* %ehselector.slot, align 4, !dbg !434
  call void @_ZdlPv(i8* %call) #7, !dbg !435
  br label %eh.resume, !dbg !435

while.end:                                        ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit
  ret void, !dbg !436

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !437
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !437
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !437
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !437
  resume { i8*, i32 } %lpad.val6, !dbg !437
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #3

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZN4nodeIiEC1ERKi(%struct.node* %this, i32* dereferenceable(4) %data) unnamed_addr #2 align 2 !dbg !439 {
entry:
  %this.addr = alloca %struct.node*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.node* %this, %struct.node** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.node** %this.addr, metadata !440, metadata !266), !dbg !441
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !442, metadata !266), !dbg !443
  %this1 = load %struct.node*, %struct.node** %this.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8, !dbg !444
  call void @_ZN4nodeIiEC2ERKi(%struct.node* %this1, i32* dereferenceable(4) %0), !dbg !444
  ret void, !dbg !445
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZN4nodeIiEC2ERKi(%struct.node* %this, i32* dereferenceable(4) %data) unnamed_addr #5 align 2 !dbg !446 {
entry:
  %this.addr = alloca %struct.node*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.node* %this, %struct.node** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.node** %this.addr, metadata !447, metadata !266), !dbg !448
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !449, metadata !266), !dbg !450
  %this1 = load %struct.node*, %struct.node** %this.addr, align 8
  %data2 = getelementptr inbounds %struct.node, %struct.node* %this1, i32 0, i32 0, !dbg !451
  %0 = load i32*, i32** %data.addr, align 8, !dbg !452
  %1 = load i32, i32* %0, align 4, !dbg !452
  store i32 %1, i32* %data2, align 8, !dbg !451
  %next = getelementptr inbounds %struct.node, %struct.node* %this1, i32 0, i32 1, !dbg !453
  store %struct.node* null, %struct.node** %next, align 8, !dbg !453
  ret void, !dbg !454
}

attributes #0 = { noinline norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin }
attributes #7 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !15)
!1 = !DIFile(filename: "test.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !5, file: !4, line: 581, size: 32, elements: !8, identifier: "_ZTSNSt3__112memory_orderE")
!4 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/atomic", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!5 = !DINamespace(name: "__1", scope: !7, file: !6, line: 438, exportSymbols: true)
!6 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/__config", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!7 = !DINamespace(name: "std", scope: null, file: !6, line: 437)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!10 = !DIEnumerator(name: "memory_order_consume", value: 1)
!11 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!12 = !DIEnumerator(name: "memory_order_release", value: 3)
!13 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!14 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!15 = !{!16, !20, !23, !27, !31, !35, !39, !43, !47, !51, !55, !59, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !97, !100, !103}
!16 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !17, line: 49)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !18, line: 51, baseType: !19)
!18 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !21, line: 50)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 62, baseType: !22)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !24, line: 55)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !25, line: 32, baseType: !26)
!25 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!26 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !28, line: 153)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !29, line: 30, baseType: !30)
!29 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!30 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !32, line: 154)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !33, line: 30, baseType: !34)
!33 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !36, line: 155)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 30, baseType: !38)
!37 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !40, line: 156)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !41, line: 30, baseType: !42)
!41 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!42 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !44, line: 158)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 31, baseType: !46)
!45 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !48, line: 159)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !49, line: 31, baseType: !50)
!49 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !52, line: 160)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 31, baseType: !54)
!53 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !56, line: 161)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !57, line: 31, baseType: !58)
!57 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!58 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !60, line: 163)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !61, line: 29, baseType: !28)
!61 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !63, line: 164)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !61, line: 30, baseType: !32)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !65, line: 165)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !61, line: 31, baseType: !36)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !67, line: 166)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !61, line: 32, baseType: !40)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !69, line: 168)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !61, line: 33, baseType: !44)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !71, line: 169)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !61, line: 34, baseType: !48)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !73, line: 170)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !61, line: 35, baseType: !52)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !75, line: 171)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !61, line: 36, baseType: !56)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !77, line: 173)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !61, line: 40, baseType: !28)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !79, line: 174)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !61, line: 41, baseType: !32)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !81, line: 175)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !61, line: 42, baseType: !36)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !83, line: 176)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !61, line: 43, baseType: !40)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !85, line: 178)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !61, line: 44, baseType: !44)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !87, line: 179)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !61, line: 45, baseType: !48)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !89, line: 180)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !61, line: 46, baseType: !52)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !91, line: 181)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !61, line: 47, baseType: !56)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !93, line: 183)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !94, line: 30, baseType: !95)
!94 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !96, line: 49, baseType: !19)
!96 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !98, line: 184)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !99, line: 30, baseType: !22)
!99 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !101, line: 186)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !102, line: 32, baseType: !19)
!102 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !104, line: 187)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !105, line: 32, baseType: !22)
!105 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!106 = !{i32 2, !"Dwarf Version", i32 2}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"PIC Level", i32 2}
!109 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!110 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !111, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!38}
!113 = !{}
!114 = !DILocalVariable(name: "s", scope: !110, file: !1, line: 42, type: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stack<int>", file: !1, line: 12, size: 64, elements: !116, templateParams: !136, identifier: "_ZTS5stackIiE")
!116 = !{!117, !262}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !115, file: !1, line: 14, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<node<int> *>", scope: !5, file: !4, line: 1104, size: 64, elements: !119, templateParams: !261, identifier: "_ZTSNSt3__16atomicIP4nodeIiEEE")
!119 = !{!120, !214, !218, !221, !226, !229, !232, !235, !236, !237, !240, !243, !244, !245, !248, !251, !252, !253, !256, !259, !260}
!120 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !118, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<node<int> *, false>", scope: !5, file: !4, line: 891, size: 64, elements: !122, templateParams: !211, identifier: "_ZTSNSt3__113__atomic_baseIP4nodeIiELb0EEE")
!122 = !{!123, !138, !145, !150, !155, !159, !162, !165, !168, !171, !174, !177, !181, !184, !185, !186, !189, !192, !193, !194, !197, !200, !204, !208}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !121, file: !4, line: 893, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node<int>", file: !1, line: 4, size: 128, elements: !127, templateParams: !136, identifier: "_ZTS4nodeIiE")
!127 = !{!128, !129, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !126, file: !1, line: 6, baseType: !38, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !1, line: 7, baseType: !125, size: 64, offset: 64)
!130 = !DISubprogram(name: "node", scope: !126, file: !1, line: 8, type: !131, isLocal: false, isDefinition: false, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133, !134}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!134 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!136 = !{!137}
!137 = !DITemplateTypeParameter(name: "T", type: !38)
!138 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIP4nodeIiELb0EE12is_lock_freeEv", scope: !121, file: !4, line: 900, type: !139, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !142}
!141 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!145 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE12is_lock_freeEv", scope: !121, file: !4, line: 909, type: !146, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{!141, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!150 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE5storeES3_NS_12memory_orderE", scope: !121, file: !4, line: 912, type: !151, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153, !125, !154}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !5, file: !4, line: 585, baseType: !3)
!155 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE5storeES3_NS_12memory_orderE", scope: !121, file: !4, line: 916, type: !156, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !158, !125, !154}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!159 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE", scope: !121, file: !4, line: 920, type: !160, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DISubroutineType(types: !161)
!161 = !{!125, !142, !154}
!162 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE", scope: !121, file: !4, line: 924, type: !163, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!125, !148, !154}
!165 = !DISubprogram(name: "operator node<int> *", linkageName: "_ZNVKSt3__113__atomic_baseIP4nodeIiELb0EEcvS3_Ev", scope: !121, file: !4, line: 928, type: !166, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{!125, !142}
!168 = !DISubprogram(name: "operator node<int> *", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EEcvS3_Ev", scope: !121, file: !4, line: 930, type: !169, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DISubroutineType(types: !170)
!170 = !{!125, !148}
!171 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE8exchangeES3_NS_12memory_orderE", scope: !121, file: !4, line: 932, type: !172, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DISubroutineType(types: !173)
!173 = !{!125, !153, !125, !154}
!174 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE8exchangeES3_NS_12memory_orderE", scope: !121, file: !4, line: 935, type: !175, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DISubroutineType(types: !176)
!176 = !{!125, !158, !125, !154}
!177 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 938, type: !178, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!141, !153, !180, !125, !154, !154}
!180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !125, size: 64)
!181 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 943, type: !182, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DISubroutineType(types: !183)
!183 = !{!141, !158, !180, !125, !154, !154}
!184 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 948, type: !178, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 953, type: !182, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 958, type: !187, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!141, !153, !180, !125, !154}
!189 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 962, type: !190, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false)
!190 = !DISubroutineType(types: !191)
!191 = !{!141, !158, !180, !125, !154}
!192 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 966, type: !187, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 970, type: !190, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubprogram(name: "__atomic_base", scope: !121, file: !4, line: 976, type: !195, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !158}
!197 = !DISubprogram(name: "__atomic_base", scope: !121, file: !4, line: 982, type: !198, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !158, !125}
!200 = !DISubprogram(name: "__atomic_base", scope: !121, file: !4, line: 984, type: !201, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !158, !203}
!203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !149, size: 64)
!204 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EEaSERKS4_", scope: !121, file: !4, line: 985, type: !205, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !158, !203}
!207 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !121, size: 64)
!208 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EEaSERKS4_", scope: !121, file: !4, line: 986, type: !209, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DISubroutineType(types: !210)
!210 = !{!207, !153, !203}
!211 = !{!212, !213}
!212 = !DITemplateTypeParameter(name: "_Tp", type: !125)
!213 = !DITemplateValueParameter(type: !141, value: i8 0)
!214 = !DISubprogram(name: "atomic", scope: !118, file: !4, line: 1109, type: !215, isLocal: false, isDefinition: false, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!218 = !DISubprogram(name: "atomic", scope: !118, file: !4, line: 1111, type: !219, isLocal: false, isDefinition: false, scopeLine: 1111, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !217, !125}
!221 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEaSES3_", scope: !118, file: !4, line: 1114, type: !222, isLocal: false, isDefinition: false, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DISubroutineType(types: !223)
!223 = !{!125, !224, !125}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!226 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIP4nodeIiEEaSES3_", scope: !118, file: !4, line: 1117, type: !227, isLocal: false, isDefinition: false, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!125, !217, !125}
!229 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__16atomicIP4nodeIiEE9fetch_addElNS_12memory_orderE", scope: !118, file: !4, line: 1121, type: !230, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!125, !224, !17, !154}
!232 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__16atomicIP4nodeIiEE9fetch_addElNS_12memory_orderE", scope: !118, file: !4, line: 1125, type: !233, isLocal: false, isDefinition: false, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DISubroutineType(types: !234)
!234 = !{!125, !217, !17, !154}
!235 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__16atomicIP4nodeIiEE9fetch_subElNS_12memory_orderE", scope: !118, file: !4, line: 1128, type: !230, isLocal: false, isDefinition: false, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__16atomicIP4nodeIiEE9fetch_subElNS_12memory_orderE", scope: !118, file: !4, line: 1132, type: !233, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEppEi", scope: !118, file: !4, line: 1136, type: !238, isLocal: false, isDefinition: false, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!125, !224, !38}
!240 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16atomicIP4nodeIiEEppEi", scope: !118, file: !4, line: 1138, type: !241, isLocal: false, isDefinition: false, scopeLine: 1138, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DISubroutineType(types: !242)
!242 = !{!125, !217, !38}
!243 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEmmEi", scope: !118, file: !4, line: 1140, type: !238, isLocal: false, isDefinition: false, scopeLine: 1140, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16atomicIP4nodeIiEEmmEi", scope: !118, file: !4, line: 1142, type: !241, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEppEv", scope: !118, file: !4, line: 1144, type: !246, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DISubroutineType(types: !247)
!247 = !{!125, !224}
!248 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16atomicIP4nodeIiEEppEv", scope: !118, file: !4, line: 1146, type: !249, isLocal: false, isDefinition: false, scopeLine: 1146, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DISubroutineType(types: !250)
!250 = !{!125, !217}
!251 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEmmEv", scope: !118, file: !4, line: 1148, type: !246, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16atomicIP4nodeIiEEmmEv", scope: !118, file: !4, line: 1150, type: !249, isLocal: false, isDefinition: false, scopeLine: 1150, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEpLEl", scope: !118, file: !4, line: 1152, type: !254, isLocal: false, isDefinition: false, scopeLine: 1152, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!125, !224, !17}
!256 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16atomicIP4nodeIiEEpLEl", scope: !118, file: !4, line: 1154, type: !257, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!125, !217, !17}
!259 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEmIEl", scope: !118, file: !4, line: 1156, type: !254, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16atomicIP4nodeIiEEmIEl", scope: !118, file: !4, line: 1158, type: !257, isLocal: false, isDefinition: false, scopeLine: 1158, flags: DIFlagPrototyped, isOptimized: false)
!261 = !{!212}
!262 = !DISubprogram(name: "push", linkageName: "_ZN5stackIiE4pushERKi", scope: !115, file: !1, line: 16, type: !263, isLocal: false, isDefinition: false, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265, !134}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!266 = !DIExpression()
!267 = !DILocation(line: 42, column: 16, scope: !110)
!268 = !DILocation(line: 43, column: 12, scope: !110)
!269 = !DILocation(line: 43, column: 7, scope: !110)
!270 = !DILocation(line: 44, column: 12, scope: !110)
!271 = !DILocation(line: 44, column: 7, scope: !110)
!272 = !DILocation(line: 45, column: 12, scope: !110)
!273 = !DILocation(line: 45, column: 7, scope: !110)
!274 = !DILocation(line: 46, column: 1, scope: !110)
!275 = distinct !DISubprogram(name: "push", linkageName: "_ZN5stackIiE4pushERKi", scope: !115, file: !1, line: 16, type: !263, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !262, variables: !113)
!276 = !DILocalVariable(name: "this", arg: 1, scope: !277, type: !278, flags: DIFlagArtificial | DIFlagObjectPointer)
!277 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 943, type: !182, isLocal: false, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !181, variables: !113)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!279 = !DILocation(line: 0, scope: !277, inlinedAt: !280)
!280 = distinct !DILocation(line: 1365, column: 17, scope: !281, inlinedAt: !286)
!281 = distinct !DISubprogram(name: "atomic_compare_exchange_weak_explicit<node<int> *>", linkageName: "_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_", scope: !5, file: !4, line: 1361, type: !282, isLocal: false, isDefinition: true, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, templateParams: !261, variables: !113)
!282 = !DISubroutineType(types: !283)
!283 = !{!141, !284, !285, !125, !154, !154}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!286 = distinct !DILocation(line: 27, column: 16, scope: !287)
!287 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 1)
!288 = !DILocalVariable(name: "__e", arg: 2, scope: !277, file: !4, line: 943, type: !180)
!289 = !DILocation(line: 943, column: 37, scope: !277, inlinedAt: !280)
!290 = !DILocalVariable(name: "__d", arg: 3, scope: !277, file: !4, line: 943, type: !125)
!291 = !DILocation(line: 943, column: 46, scope: !277, inlinedAt: !280)
!292 = !DILocalVariable(name: "__s", arg: 4, scope: !277, file: !4, line: 944, type: !154)
!293 = !DILocation(line: 944, column: 45, scope: !277, inlinedAt: !280)
!294 = !DILocalVariable(name: "__f", arg: 5, scope: !277, file: !4, line: 944, type: !154)
!295 = !DILocation(line: 944, column: 63, scope: !277, inlinedAt: !280)
!296 = !DILocalVariable(name: "__o", arg: 1, scope: !281, file: !4, line: 1361, type: !284)
!297 = !DILocation(line: 1361, column: 52, scope: !281, inlinedAt: !286)
!298 = !DILocalVariable(name: "__e", arg: 2, scope: !281, file: !4, line: 1361, type: !285)
!299 = !DILocation(line: 1361, column: 62, scope: !281, inlinedAt: !286)
!300 = !DILocalVariable(name: "__d", arg: 3, scope: !281, file: !4, line: 1361, type: !125)
!301 = !DILocation(line: 1361, column: 71, scope: !281, inlinedAt: !286)
!302 = !DILocalVariable(name: "__s", arg: 4, scope: !281, file: !4, line: 1362, type: !154)
!303 = !DILocation(line: 1362, column: 52, scope: !281, inlinedAt: !286)
!304 = !DILocalVariable(name: "__f", arg: 5, scope: !281, file: !4, line: 1362, type: !154)
!305 = !DILocation(line: 1362, column: 70, scope: !281, inlinedAt: !286)
!306 = !DILocalVariable(name: "this", arg: 1, scope: !307, type: !308, flags: DIFlagArtificial | DIFlagObjectPointer)
!307 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE", scope: !121, file: !4, line: 924, type: !163, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !162, variables: !113)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!309 = !DILocation(line: 0, scope: !307, inlinedAt: !310)
!310 = distinct !DILocation(line: 21, column: 31, scope: !275)
!311 = !DILocalVariable(name: "__m", arg: 2, scope: !307, file: !4, line: 924, type: !154)
!312 = !DILocation(line: 924, column: 27, scope: !307, inlinedAt: !310)
!313 = !DILocalVariable(name: "this", arg: 1, scope: !275, type: !314, flags: DIFlagArtificial | DIFlagObjectPointer)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!315 = !DILocation(line: 0, scope: !275)
!316 = !DILocalVariable(name: "data", arg: 2, scope: !275, file: !1, line: 16, type: !134)
!317 = !DILocation(line: 16, column: 24, scope: !275)
!318 = !DILocalVariable(name: "new_node", scope: !275, file: !1, line: 18, type: !125)
!319 = !DILocation(line: 18, column: 18, scope: !275)
!320 = !DILocation(line: 18, column: 29, scope: !275)
!321 = !DILocation(line: 18, column: 41, scope: !275)
!322 = !DILocation(line: 18, column: 33, scope: !275)
!323 = !DILocation(line: 18, column: 18, scope: !287)
!324 = !DILocation(line: 21, column: 26, scope: !275)
!325 = !DILocation(line: 926, column: 36, scope: !307, inlinedAt: !310)
!326 = !DILocation(line: 926, column: 42, scope: !307, inlinedAt: !310)
!327 = !DILocation(line: 926, column: 17, scope: !307, inlinedAt: !310)
!328 = !DILocation(line: 926, column: 17, scope: !329, inlinedAt: !310)
!329 = !DILexicalBlockFile(scope: !307, file: !4, discriminator: 1)
!330 = !DILocation(line: 926, column: 17, scope: !331, inlinedAt: !310)
!331 = !DILexicalBlockFile(scope: !307, file: !4, discriminator: 2)
!332 = !DILocation(line: 926, column: 17, scope: !333, inlinedAt: !310)
!333 = !DILexicalBlockFile(scope: !307, file: !4, discriminator: 3)
!334 = !DILocation(line: 926, column: 17, scope: !335, inlinedAt: !310)
!335 = !DILexicalBlockFile(scope: !307, file: !4, discriminator: 4)
!336 = !DILocation(line: 21, column: 9, scope: !275)
!337 = !DILocation(line: 21, column: 19, scope: !275)
!338 = !DILocation(line: 21, column: 24, scope: !275)
!339 = !DILocation(line: 27, column: 9, scope: !275)
!340 = !DILocation(line: 28, column: 22, scope: !275)
!341 = !DILocation(line: 29, column: 22, scope: !275)
!342 = !DILocation(line: 29, column: 32, scope: !275)
!343 = !DILocation(line: 30, column: 21, scope: !275)
!344 = !DILocation(line: 1365, column: 12, scope: !281, inlinedAt: !286)
!345 = !DILocation(line: 1365, column: 17, scope: !281, inlinedAt: !286)
!346 = !DILocation(line: 1365, column: 40, scope: !281, inlinedAt: !286)
!347 = !DILocation(line: 1365, column: 45, scope: !281, inlinedAt: !286)
!348 = !DILocation(line: 1365, column: 50, scope: !281, inlinedAt: !286)
!349 = !DILocation(line: 1365, column: 55, scope: !281, inlinedAt: !286)
!350 = !DILocation(line: 946, column: 53, scope: !277, inlinedAt: !280)
!351 = !DILocation(line: 946, column: 70, scope: !277, inlinedAt: !280)
!352 = !DILocation(line: 946, column: 60, scope: !277, inlinedAt: !280)
!353 = !DILocation(line: 946, column: 65, scope: !277, inlinedAt: !280)
!354 = !DILocation(line: 946, column: 17, scope: !277, inlinedAt: !280)
!355 = !DILocation(line: 946, column: 75, scope: !277, inlinedAt: !280)
!356 = !DILocation(line: 946, column: 17, scope: !357, inlinedAt: !280)
!357 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 7)
!358 = !DILocation(line: 946, column: 17, scope: !359, inlinedAt: !280)
!359 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 2)
!360 = !DILocation(line: 946, column: 17, scope: !361, inlinedAt: !280)
!361 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 18)
!362 = !DILocation(line: 946, column: 17, scope: !363, inlinedAt: !280)
!363 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 4)
!364 = !DILocation(line: 946, column: 17, scope: !365, inlinedAt: !280)
!365 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 5)
!366 = !DILocation(line: 946, column: 17, scope: !367, inlinedAt: !280)
!367 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 9)
!368 = !DILocation(line: 946, column: 17, scope: !369, inlinedAt: !280)
!369 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 10)
!370 = !DILocation(line: 946, column: 17, scope: !371, inlinedAt: !280)
!371 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 8)
!372 = !DILocation(line: 946, column: 17, scope: !373, inlinedAt: !280)
!373 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 11)
!374 = !DILocation(line: 946, column: 17, scope: !375, inlinedAt: !280)
!375 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 12)
!376 = !DILocation(line: 946, column: 17, scope: !377, inlinedAt: !280)
!377 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 13)
!378 = !DILocation(line: 946, column: 17, scope: !379, inlinedAt: !280)
!379 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 14)
!380 = !DILocation(line: 946, column: 17, scope: !381, inlinedAt: !280)
!381 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 15)
!382 = !DILocation(line: 946, column: 17, scope: !383, inlinedAt: !280)
!383 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 16)
!384 = !DILocation(line: 946, column: 17, scope: !385, inlinedAt: !280)
!385 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 17)
!386 = !DILocation(line: 946, column: 17, scope: !387, inlinedAt: !280)
!387 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 20)
!388 = !DILocation(line: 946, column: 17, scope: !389, inlinedAt: !280)
!389 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 21)
!390 = !DILocation(line: 946, column: 17, scope: !391, inlinedAt: !280)
!391 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 19)
!392 = !DILocation(line: 946, column: 17, scope: !393, inlinedAt: !280)
!393 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 22)
!394 = !DILocation(line: 946, column: 17, scope: !395, inlinedAt: !280)
!395 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 23)
!396 = !DILocation(line: 946, column: 17, scope: !397, inlinedAt: !280)
!397 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 24)
!398 = !DILocation(line: 946, column: 17, scope: !399, inlinedAt: !280)
!399 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 25)
!400 = !DILocation(line: 946, column: 17, scope: !401, inlinedAt: !280)
!401 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 26)
!402 = !DILocation(line: 946, column: 17, scope: !403, inlinedAt: !280)
!403 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 27)
!404 = !DILocation(line: 946, column: 17, scope: !405, inlinedAt: !280)
!405 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 28)
!406 = !DILocation(line: 946, column: 17, scope: !407, inlinedAt: !280)
!407 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 29)
!408 = !DILocation(line: 946, column: 17, scope: !409, inlinedAt: !280)
!409 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 30)
!410 = !DILocation(line: 946, column: 17, scope: !411, inlinedAt: !280)
!411 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 31)
!412 = !DILocation(line: 946, column: 17, scope: !413, inlinedAt: !280)
!413 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 32)
!414 = !DILocation(line: 946, column: 17, scope: !415, inlinedAt: !280)
!415 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 33)
!416 = !DILocation(line: 946, column: 17, scope: !417, inlinedAt: !280)
!417 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 34)
!418 = !DILocation(line: 946, column: 17, scope: !419, inlinedAt: !280)
!419 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 35)
!420 = !DILocation(line: 946, column: 17, scope: !421, inlinedAt: !280)
!421 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 36)
!422 = !DILocation(line: 946, column: 17, scope: !423, inlinedAt: !280)
!423 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 37)
!424 = !DILocation(line: 946, column: 17, scope: !425, inlinedAt: !280)
!425 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 38)
!426 = !DILocation(line: 946, column: 17, scope: !427, inlinedAt: !280)
!427 = !DILexicalBlockFile(scope: !277, file: !4, discriminator: 6)
!428 = !DILocation(line: 27, column: 15, scope: !287)
!429 = !DILocation(line: 27, column: 9, scope: !287)
!430 = !DILocation(line: 27, column: 9, scope: !431)
!431 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 2)
!432 = distinct !{!432, !339, !433}
!433 = !DILocation(line: 33, column: 13, scope: !275)
!434 = !DILocation(line: 37, column: 5, scope: !275)
!435 = !DILocation(line: 18, column: 29, scope: !431)
!436 = !DILocation(line: 37, column: 5, scope: !287)
!437 = !DILocation(line: 18, column: 29, scope: !438)
!438 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 3)
!439 = distinct !DISubprogram(name: "node", linkageName: "_ZN4nodeIiEC1ERKi", scope: !126, file: !1, line: 8, type: !131, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !130, variables: !113)
!440 = !DILocalVariable(name: "this", arg: 1, scope: !439, type: !125, flags: DIFlagArtificial | DIFlagObjectPointer)
!441 = !DILocation(line: 0, scope: !439)
!442 = !DILocalVariable(name: "data", arg: 2, scope: !439, file: !1, line: 8, type: !134)
!443 = !DILocation(line: 8, column: 19, scope: !439)
!444 = !DILocation(line: 8, column: 53, scope: !439)
!445 = !DILocation(line: 8, column: 54, scope: !439)
!446 = distinct !DISubprogram(name: "node", linkageName: "_ZN4nodeIiEC2ERKi", scope: !126, file: !1, line: 8, type: !131, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !130, variables: !113)
!447 = !DILocalVariable(name: "this", arg: 1, scope: !446, type: !125, flags: DIFlagArtificial | DIFlagObjectPointer)
!448 = !DILocation(line: 0, scope: !446)
!449 = !DILocalVariable(name: "data", arg: 2, scope: !446, file: !1, line: 8, type: !134)
!450 = !DILocation(line: 8, column: 19, scope: !446)
!451 = !DILocation(line: 8, column: 27, scope: !446)
!452 = !DILocation(line: 8, column: 32, scope: !446)
!453 = !DILocation(line: 8, column: 39, scope: !446)
!454 = !DILocation(line: 8, column: 54, scope: !446)
