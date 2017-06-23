; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%class.stack = type { %"struct.std::__1::atomic" }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %struct.node* }
%struct.node = type { i32, %struct.node* }

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #0 personality i32 (...)* @__gxx_personality_v0 !dbg !110 {
entry:
  %s = alloca %class.stack, align 8
  %0 = bitcast %class.stack* %s to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #4, !dbg !266
  tail call void @llvm.dbg.value(metadata %class.stack* %s, i64 0, metadata !114, metadata !267), !dbg !268
  tail call void @llvm.dbg.value(metadata %class.stack* %s, i64 0, metadata !269, metadata !275), !dbg !276
  %call.i = tail call i8* @_Znwm(i64 16) #5, !dbg !278
  %data2.i.i.i = bitcast i8* %call.i to i32*, !dbg !279
  %myCast = bitcast i32* %data2.i.i.i to i8*
  call void @preNonAtomicStore_int(i8* %myCast, i32 1)
  store i32 1, i32* %data2.i.i.i, align 8, !dbg !279, !tbaa !290
  %next.i.i.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !296
  %1 = bitcast i8* %next.i.i.i to %struct.node**, !dbg !296
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !297, metadata !275), !dbg !302
  %2 = bitcast %class.stack* %s to i64*, !dbg !304
  %myCast1 = bitcast i64* %2 to i8*
  %3 = call i64 @preAtomicLoad_double(i8* %myCast1, i32 2)
  %4 = inttoptr i64 %3 to %struct.node*, !dbg !305
  store %struct.node* %4, %struct.node** %1, align 8, !dbg !307, !tbaa !308
  tail call void @llvm.dbg.value(metadata %struct.node** %1, i64 0, metadata !309, metadata !275), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !318, metadata !275), !dbg !323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !275), !dbg !324
  tail call void @llvm.dbg.value(metadata %struct.node** %1, i64 0, metadata !325, metadata !275), !dbg !333
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !331, metadata !275), !dbg !335
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !332, metadata !275), !dbg !336
  %5 = ptrtoint i8* %call.i to i64, !dbg !337
  %6 = bitcast i8* %next.i.i.i to i64*, !dbg !337
  %myCast2 = bitcast i64* %2 to i8*
  %myCmpXchg = call i64 @preCmpXchg_64(i8* %myCast2, i64 %3, i64 %5, i32 5, i32 2)
  %7 = cmpxchg weak i64* %2, i64 %3, i64 %5 release monotonic, !dbg !338
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !338
  br i1 %8, label %_ZN5stackIiE4pushERKi.exit, label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i.preheader, !dbg !338

_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i.preheader: ; preds = %entry
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i, !dbg !338

_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i: ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i.preheader, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i
  %9 = phi { i64, i1 } [ %11, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i ], [ %7, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i.preheader ]
  %10 = extractvalue { i64, i1 } %9, 0, !dbg !338
  store i64 %10, i64* %6, align 8, !dbg !340
  call void @llvm.dbg.value(metadata %struct.node** %1, i64 0, metadata !309, metadata !275), !dbg !320
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !318, metadata !275), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !275), !dbg !324
  call void @llvm.dbg.value(metadata %struct.node** %1, i64 0, metadata !325, metadata !275), !dbg !333
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !331, metadata !275), !dbg !335
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !332, metadata !275), !dbg !336
  %myCast3 = bitcast i64* %2 to i8*
  %myCmpXchg4 = call i64 @preCmpXchg_64(i8* %myCast3, i64 %10, i64 %5, i32 5, i32 2)
  %11 = cmpxchg weak i64* %2, i64 %10, i64 %5 release monotonic, !dbg !338
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !338
  br i1 %12, label %_ZN5stackIiE4pushERKi.exit.loopexit, label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i, !dbg !338

_ZN5stackIiE4pushERKi.exit.loopexit:              ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i
  br label %_ZN5stackIiE4pushERKi.exit, !dbg !268

_ZN5stackIiE4pushERKi.exit:                       ; preds = %_ZN5stackIiE4pushERKi.exit.loopexit, %entry
  call void @llvm.dbg.value(metadata %class.stack* %s, i64 0, metadata !114, metadata !267), !dbg !268
  call void @llvm.dbg.value(metadata %class.stack* %s, i64 0, metadata !269, metadata !275), !dbg !342
  %call.i3 = call i8* @_Znwm(i64 16) #5, !dbg !344
  %data2.i.i.i4 = bitcast i8* %call.i3 to i32*, !dbg !345
  %myCast5 = bitcast i32* %data2.i.i.i4 to i8*
  call void @preNonAtomicStore_int(i8* %myCast5, i32 2)
  store i32 2, i32* %data2.i.i.i4, align 8, !dbg !345, !tbaa !290
  %next.i.i.i5 = getelementptr inbounds i8, i8* %call.i3, i64 8, !dbg !348
  %13 = bitcast i8* %next.i.i.i5 to %struct.node**, !dbg !348
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !297, metadata !275), !dbg !349
  %myCast6 = bitcast i64* %2 to i8*
  %14 = call i64 @preAtomicLoad_double(i8* %myCast6, i32 2)
  %15 = inttoptr i64 %14 to %struct.node*, !dbg !351
  store %struct.node* %15, %struct.node** %13, align 8, !dbg !352, !tbaa !308
  call void @llvm.dbg.value(metadata %struct.node** %13, i64 0, metadata !309, metadata !275), !dbg !353
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !318, metadata !275), !dbg !355
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !275), !dbg !356
  call void @llvm.dbg.value(metadata %struct.node** %13, i64 0, metadata !325, metadata !275), !dbg !357
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !331, metadata !275), !dbg !359
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !332, metadata !275), !dbg !360
  %16 = ptrtoint i8* %call.i3 to i64, !dbg !361
  %17 = bitcast i8* %next.i.i.i5 to i64*, !dbg !361
  %myCast7 = bitcast i64* %2 to i8*
  %myCmpXchg8 = call i64 @preCmpXchg_64(i8* %myCast7, i64 %14, i64 %16, i32 5, i32 2)
  %18 = cmpxchg weak i64* %2, i64 %14, i64 %16 release monotonic, !dbg !362
  %19 = extractvalue { i64, i1 } %18, 1, !dbg !362
  br i1 %19, label %_ZN5stackIiE4pushERKi.exit7, label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6.preheader, !dbg !362

_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6.preheader: ; preds = %_ZN5stackIiE4pushERKi.exit
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6, !dbg !362

_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6: ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6.preheader, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6
  %20 = phi { i64, i1 } [ %22, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6 ], [ %18, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6.preheader ]
  %21 = extractvalue { i64, i1 } %20, 0, !dbg !362
  store i64 %21, i64* %17, align 8, !dbg !363
  call void @llvm.dbg.value(metadata %struct.node** %13, i64 0, metadata !309, metadata !275), !dbg !353
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !318, metadata !275), !dbg !355
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !275), !dbg !356
  call void @llvm.dbg.value(metadata %struct.node** %13, i64 0, metadata !325, metadata !275), !dbg !357
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !331, metadata !275), !dbg !359
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !332, metadata !275), !dbg !360
  %myCast9 = bitcast i64* %2 to i8*
  %myCmpXchg10 = call i64 @preCmpXchg_64(i8* %myCast9, i64 %21, i64 %16, i32 5, i32 2)
  %22 = cmpxchg weak i64* %2, i64 %21, i64 %16 release monotonic, !dbg !362
  %23 = extractvalue { i64, i1 } %22, 1, !dbg !362
  br i1 %23, label %_ZN5stackIiE4pushERKi.exit7.loopexit, label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6, !dbg !362

_ZN5stackIiE4pushERKi.exit7.loopexit:             ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i6
  br label %_ZN5stackIiE4pushERKi.exit7, !dbg !268

_ZN5stackIiE4pushERKi.exit7:                      ; preds = %_ZN5stackIiE4pushERKi.exit7.loopexit, %_ZN5stackIiE4pushERKi.exit
  call void @llvm.dbg.value(metadata %class.stack* %s, i64 0, metadata !114, metadata !267), !dbg !268
  call void @llvm.dbg.value(metadata %class.stack* %s, i64 0, metadata !269, metadata !275), !dbg !364
  %call.i8 = call i8* @_Znwm(i64 16) #5, !dbg !366
  %data2.i.i.i9 = bitcast i8* %call.i8 to i32*, !dbg !367
  %myCast11 = bitcast i32* %data2.i.i.i9 to i8*
  call void @preNonAtomicStore_int(i8* %myCast11, i32 3)
  store i32 3, i32* %data2.i.i.i9, align 8, !dbg !367, !tbaa !290
  %next.i.i.i10 = getelementptr inbounds i8, i8* %call.i8, i64 8, !dbg !370
  %24 = bitcast i8* %next.i.i.i10 to %struct.node**, !dbg !370
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !297, metadata !275), !dbg !371
  %myCast12 = bitcast i64* %2 to i8*
  %25 = call i64 @preAtomicLoad_double(i8* %myCast12, i32 2)
  %26 = inttoptr i64 %25 to %struct.node*, !dbg !373
  store %struct.node* %26, %struct.node** %24, align 8, !dbg !374, !tbaa !308
  call void @llvm.dbg.value(metadata %struct.node** %24, i64 0, metadata !309, metadata !275), !dbg !375
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !318, metadata !275), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !275), !dbg !378
  call void @llvm.dbg.value(metadata %struct.node** %24, i64 0, metadata !325, metadata !275), !dbg !379
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !331, metadata !275), !dbg !381
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !332, metadata !275), !dbg !382
  %27 = ptrtoint i8* %call.i8 to i64, !dbg !383
  %28 = bitcast i8* %next.i.i.i10 to i64*, !dbg !383
  %myCast13 = bitcast i64* %2 to i8*
  %myCmpXchg14 = call i64 @preCmpXchg_64(i8* %myCast13, i64 %25, i64 %27, i32 5, i32 2)
  %29 = cmpxchg weak i64* %2, i64 %25, i64 %27 release monotonic, !dbg !384
  %30 = extractvalue { i64, i1 } %29, 1, !dbg !384
  br i1 %30, label %_ZN5stackIiE4pushERKi.exit12, label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11.preheader, !dbg !384

_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11.preheader: ; preds = %_ZN5stackIiE4pushERKi.exit7
  br label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11, !dbg !384

_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11: ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11.preheader, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11
  %31 = phi { i64, i1 } [ %33, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11 ], [ %29, %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11.preheader ]
  %32 = extractvalue { i64, i1 } %31, 0, !dbg !384
  store i64 %32, i64* %28, align 8, !dbg !385
  call void @llvm.dbg.value(metadata %struct.node** %24, i64 0, metadata !309, metadata !275), !dbg !375
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !318, metadata !275), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !275), !dbg !378
  call void @llvm.dbg.value(metadata %struct.node** %24, i64 0, metadata !325, metadata !275), !dbg !379
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !331, metadata !275), !dbg !381
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !332, metadata !275), !dbg !382
  %myCast15 = bitcast i64* %2 to i8*
  %myCmpXchg16 = call i64 @preCmpXchg_64(i8* %myCast15, i64 %32, i64 %27, i32 5, i32 2)
  %33 = cmpxchg weak i64* %2, i64 %32, i64 %27 release monotonic, !dbg !384
  %34 = extractvalue { i64, i1 } %33, 1, !dbg !384
  br i1 %34, label %_ZN5stackIiE4pushERKi.exit12.loopexit, label %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11, !dbg !384

_ZN5stackIiE4pushERKi.exit12.loopexit:            ; preds = %_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_.exit.i11
  br label %_ZN5stackIiE4pushERKi.exit12, !dbg !386

_ZN5stackIiE4pushERKi.exit12:                     ; preds = %_ZN5stackIiE4pushERKi.exit12.loopexit, %_ZN5stackIiE4pushERKi.exit7
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #4, !dbg !386
  ret i32 0, !dbg !386
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

declare void @preNonAtomicStore_char(i8*, i8)

declare void @preNonAtomicStore_int(i8*, i32)

declare void @preNonAtomicStore_double(i8*, i64)

declare void @preAtomicStore_char(i8*, i8, i32)

declare void @preAtomicStore_int(i8*, i32, i32)

declare void @preAtomicStore_double(i8*, i64, i32)

declare i8 @preNonAtomicLoad_char(i8*)

declare i32 @preNonAtomicLoad_int(i8*)

declare i64 @preNonAtomicLoad_double(i8*)

declare i8 @preAtomicLoad_char(i8*, i32)

declare i32 @preAtomicLoad_int(i8*, i32)

declare i64 @preAtomicLoad_double(i8*, i32)

declare void @postAtomicLoad_char(i8*, i8, i32)

declare void @postAtomicLoad_int(i8*, i32, i32)

declare void @postAtomicLoad_double(i8*, i64, i32)

declare void @preFence(i32)

declare void @preTryLock(i8*)

declare void @preLock(i8*)

declare void @preUnlock(i8*)

declare i8 @preCmpXchg_8(i8*, i8, i8, i32, i32)

declare i16 @preCmpXchg_16(i8*, i16, i16, i32, i32)

declare i32 @preCmpXchg_32(i8*, i32, i32, i32, i32)

declare i64 @preCmpXchg_64(i8*, i64, i64, i32, i32)

declare i8 @preRMW_Xchg_8(i8*, i8, i32)

declare i8 @preRMW_Add_8(i8*, i8, i32)

declare i8 @preRMW_Sub_8(i8*, i8, i32)

declare i8 @preRMW_And_8(i8*, i8, i32)

declare i8 @preRMW_Nand_8(i8*, i8, i32)

declare i8 @preRMW_Or_8(i8*, i8, i32)

declare i8 @preRMW_Xor_8(i8*, i8, i32)

declare i8 @preRMW_Max_8(i8*, i8, i32)

declare i8 @preRMW_Min_8(i8*, i8, i32)

declare i8 @preRMW_UMax_8(i8*, i8, i32)

declare i8 @preRMW_UMin_8(i8*, i8, i32)

declare i16 @preRMW_Xchg_16(i8*, i16, i32)

declare i16 @preRMW_Add_16(i8*, i16, i32)

declare i16 @preRMW_Sub_16(i8*, i16, i32)

declare i16 @preRMW_And_16(i8*, i16, i32)

declare i16 @preRMW_Nand_16(i8*, i16, i32)

declare i16 @preRMW_Or_16(i8*, i16, i32)

declare i16 @preRMW_Xor_16(i8*, i16, i32)

declare i16 @preRMW_Max_16(i8*, i16, i32)

declare i16 @preRMW_Min_16(i8*, i16, i32)

declare i16 @preRMW_UMax_16(i8*, i16, i32)

declare i16 @preRMW_UMin_16(i8*, i16, i32)

declare i32 @preRMW_Xchg_32(i8*, i32, i32)

declare i32 @preRMW_Add_32(i8*, i32, i32)

declare i32 @preRMW_Sub_32(i8*, i32, i32)

declare i32 @preRMW_And_32(i8*, i32, i32)

declare i32 @preRMW_Nand_32(i8*, i32, i32)

declare i32 @preRMW_Or_32(i8*, i32, i32)

declare i32 @preRMW_Xor_32(i8*, i32, i32)

declare i32 @preRMW_Max_32(i8*, i32, i32)

declare i32 @preRMW_Min_32(i8*, i32, i32)

declare i32 @preRMW_UMax_32(i8*, i32, i32)

declare i32 @preRMW_UMin_32(i8*, i32, i32)

declare i64 @preRMW_Xchg_64(i8*, i64, i32)

declare i64 @preRMW_Add_64(i8*, i64, i32)

declare i64 @preRMW_Sub_64(i8*, i64, i32)

declare i64 @preRMW_And_64(i8*, i64, i32)

declare i64 @preRMW_Nand_64(i8*, i64, i32)

declare i64 @preRMW_Or_64(i8*, i64, i32)

declare i64 @preRMW_Xor_64(i8*, i64, i32)

declare i64 @preRMW_Max_64(i8*, i64, i32)

declare i64 @preRMW_Min_64(i8*, i64, i32)

declare i64 @preRMW_UMax_64(i8*, i64, i32)

declare i64 @preRMW_UMin_64(i8*, i64, i32)

attributes #0 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { builtin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !15)
!1 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/cmp_xchg")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !5, file: !4, line: 581, size: 32, elements: !8, identifier: "_ZTSNSt3__112memory_orderE")
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
!110 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !111, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!38}
!113 = !{!114}
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
!130 = !DISubprogram(name: "node", scope: !126, file: !1, line: 8, type: !131, isLocal: false, isDefinition: false, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133, !134}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!134 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!136 = !{!137}
!137 = !DITemplateTypeParameter(name: "T", type: !38)
!138 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIP4nodeIiELb0EE12is_lock_freeEv", scope: !121, file: !4, line: 900, type: !139, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !142}
!141 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!145 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE12is_lock_freeEv", scope: !121, file: !4, line: 909, type: !146, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!146 = !DISubroutineType(types: !147)
!147 = !{!141, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!150 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE5storeES3_NS_12memory_orderE", scope: !121, file: !4, line: 912, type: !151, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153, !125, !154}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !5, file: !4, line: 585, baseType: !3)
!155 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE5storeES3_NS_12memory_orderE", scope: !121, file: !4, line: 916, type: !156, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !158, !125, !154}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!159 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE", scope: !121, file: !4, line: 920, type: !160, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!160 = !DISubroutineType(types: !161)
!161 = !{!125, !142, !154}
!162 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE", scope: !121, file: !4, line: 924, type: !163, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!163 = !DISubroutineType(types: !164)
!164 = !{!125, !148, !154}
!165 = !DISubprogram(name: "operator node<int> *", linkageName: "_ZNVKSt3__113__atomic_baseIP4nodeIiELb0EEcvS3_Ev", scope: !121, file: !4, line: 928, type: !166, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!166 = !DISubroutineType(types: !167)
!167 = !{!125, !142}
!168 = !DISubprogram(name: "operator node<int> *", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EEcvS3_Ev", scope: !121, file: !4, line: 930, type: !169, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!169 = !DISubroutineType(types: !170)
!170 = !{!125, !148}
!171 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE8exchangeES3_NS_12memory_orderE", scope: !121, file: !4, line: 932, type: !172, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!172 = !DISubroutineType(types: !173)
!173 = !{!125, !153, !125, !154}
!174 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE8exchangeES3_NS_12memory_orderE", scope: !121, file: !4, line: 935, type: !175, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!175 = !DISubroutineType(types: !176)
!176 = !{!125, !158, !125, !154}
!177 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 938, type: !178, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!178 = !DISubroutineType(types: !179)
!179 = !{!141, !153, !180, !125, !154, !154}
!180 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !125, size: 64)
!181 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 943, type: !182, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!182 = !DISubroutineType(types: !183)
!183 = !{!141, !158, !180, !125, !154, !154}
!184 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 948, type: !178, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!185 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 953, type: !182, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!186 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 958, type: !187, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!187 = !DISubroutineType(types: !188)
!188 = !{!141, !153, !180, !125, !154}
!189 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 962, type: !190, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!190 = !DISubroutineType(types: !191)
!191 = !{!141, !158, !180, !125, !154}
!192 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 966, type: !187, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!193 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE23compare_exchange_strongERS3_S3_NS_12memory_orderE", scope: !121, file: !4, line: 970, type: !190, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!194 = !DISubprogram(name: "__atomic_base", scope: !121, file: !4, line: 976, type: !195, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !158}
!197 = !DISubprogram(name: "__atomic_base", scope: !121, file: !4, line: 982, type: !198, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !158, !125}
!200 = !DISubprogram(name: "__atomic_base", scope: !121, file: !4, line: 984, type: !201, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !158, !203}
!203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !149, size: 64)
!204 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EEaSERKS4_", scope: !121, file: !4, line: 985, type: !205, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !158, !203}
!207 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !121, size: 64)
!208 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIP4nodeIiELb0EEaSERKS4_", scope: !121, file: !4, line: 986, type: !209, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!209 = !DISubroutineType(types: !210)
!210 = !{!207, !153, !203}
!211 = !{!212, !213}
!212 = !DITemplateTypeParameter(name: "_Tp", type: !125)
!213 = !DITemplateValueParameter(type: !141, value: i8 0)
!214 = !DISubprogram(name: "atomic", scope: !118, file: !4, line: 1109, type: !215, isLocal: false, isDefinition: false, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: true)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!218 = !DISubprogram(name: "atomic", scope: !118, file: !4, line: 1111, type: !219, isLocal: false, isDefinition: false, scopeLine: 1111, flags: DIFlagPrototyped, isOptimized: true)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !217, !125}
!221 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEaSES3_", scope: !118, file: !4, line: 1114, type: !222, isLocal: false, isDefinition: false, scopeLine: 1114, flags: DIFlagPrototyped, isOptimized: true)
!222 = !DISubroutineType(types: !223)
!223 = !{!125, !224, !125}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!226 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIP4nodeIiEEaSES3_", scope: !118, file: !4, line: 1117, type: !227, isLocal: false, isDefinition: false, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: true)
!227 = !DISubroutineType(types: !228)
!228 = !{!125, !217, !125}
!229 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__16atomicIP4nodeIiEE9fetch_addElNS_12memory_orderE", scope: !118, file: !4, line: 1121, type: !230, isLocal: false, isDefinition: false, scopeLine: 1121, flags: DIFlagPrototyped, isOptimized: true)
!230 = !DISubroutineType(types: !231)
!231 = !{!125, !224, !17, !154}
!232 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__16atomicIP4nodeIiEE9fetch_addElNS_12memory_orderE", scope: !118, file: !4, line: 1125, type: !233, isLocal: false, isDefinition: false, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: true)
!233 = !DISubroutineType(types: !234)
!234 = !{!125, !217, !17, !154}
!235 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__16atomicIP4nodeIiEE9fetch_subElNS_12memory_orderE", scope: !118, file: !4, line: 1128, type: !230, isLocal: false, isDefinition: false, scopeLine: 1128, flags: DIFlagPrototyped, isOptimized: true)
!236 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__16atomicIP4nodeIiEE9fetch_subElNS_12memory_orderE", scope: !118, file: !4, line: 1132, type: !233, isLocal: false, isDefinition: false, scopeLine: 1132, flags: DIFlagPrototyped, isOptimized: true)
!237 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEppEi", scope: !118, file: !4, line: 1136, type: !238, isLocal: false, isDefinition: false, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: true)
!238 = !DISubroutineType(types: !239)
!239 = !{!125, !224, !38}
!240 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16atomicIP4nodeIiEEppEi", scope: !118, file: !4, line: 1138, type: !241, isLocal: false, isDefinition: false, scopeLine: 1138, flags: DIFlagPrototyped, isOptimized: true)
!241 = !DISubroutineType(types: !242)
!242 = !{!125, !217, !38}
!243 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEmmEi", scope: !118, file: !4, line: 1140, type: !238, isLocal: false, isDefinition: false, scopeLine: 1140, flags: DIFlagPrototyped, isOptimized: true)
!244 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16atomicIP4nodeIiEEmmEi", scope: !118, file: !4, line: 1142, type: !241, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true)
!245 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEppEv", scope: !118, file: !4, line: 1144, type: !246, isLocal: false, isDefinition: false, scopeLine: 1144, flags: DIFlagPrototyped, isOptimized: true)
!246 = !DISubroutineType(types: !247)
!247 = !{!125, !224}
!248 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__16atomicIP4nodeIiEEppEv", scope: !118, file: !4, line: 1146, type: !249, isLocal: false, isDefinition: false, scopeLine: 1146, flags: DIFlagPrototyped, isOptimized: true)
!249 = !DISubroutineType(types: !250)
!250 = !{!125, !217}
!251 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEmmEv", scope: !118, file: !4, line: 1148, type: !246, isLocal: false, isDefinition: false, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: true)
!252 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__16atomicIP4nodeIiEEmmEv", scope: !118, file: !4, line: 1150, type: !249, isLocal: false, isDefinition: false, scopeLine: 1150, flags: DIFlagPrototyped, isOptimized: true)
!253 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEpLEl", scope: !118, file: !4, line: 1152, type: !254, isLocal: false, isDefinition: false, scopeLine: 1152, flags: DIFlagPrototyped, isOptimized: true)
!254 = !DISubroutineType(types: !255)
!255 = !{!125, !224, !17}
!256 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__16atomicIP4nodeIiEEpLEl", scope: !118, file: !4, line: 1154, type: !257, isLocal: false, isDefinition: false, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true)
!257 = !DISubroutineType(types: !258)
!258 = !{!125, !217, !17}
!259 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__16atomicIP4nodeIiEEmIEl", scope: !118, file: !4, line: 1156, type: !254, isLocal: false, isDefinition: false, scopeLine: 1156, flags: DIFlagPrototyped, isOptimized: true)
!260 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__16atomicIP4nodeIiEEmIEl", scope: !118, file: !4, line: 1158, type: !257, isLocal: false, isDefinition: false, scopeLine: 1158, flags: DIFlagPrototyped, isOptimized: true)
!261 = !{!212}
!262 = !DISubprogram(name: "push", linkageName: "_ZN5stackIiE4pushERKi", scope: !115, file: !1, line: 16, type: !263, isLocal: false, isDefinition: false, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265, !134}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!266 = !DILocation(line: 42, column: 5, scope: !110)
!267 = !DIExpression(DW_OP_deref)
!268 = !DILocation(line: 42, column: 16, scope: !110)
!269 = !DILocalVariable(name: "this", arg: 1, scope: !270, type: !274, flags: DIFlagArtificial | DIFlagObjectPointer)
!270 = distinct !DISubprogram(name: "push", linkageName: "_ZN5stackIiE4pushERKi", scope: !115, file: !1, line: 16, type: !263, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !262, variables: !271)
!271 = !{!269, !272, !273}
!272 = !DILocalVariable(name: "data", arg: 2, scope: !270, file: !1, line: 16, type: !134)
!273 = !DILocalVariable(name: "new_node", scope: !270, file: !1, line: 18, type: !125)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!275 = !DIExpression()
!276 = !DILocation(line: 0, scope: !270, inlinedAt: !277)
!277 = distinct !DILocation(line: 43, column: 7, scope: !110)
!278 = !DILocation(line: 18, column: 29, scope: !270, inlinedAt: !277)
!279 = !DILocation(line: 8, column: 27, scope: !280, inlinedAt: !284)
!280 = distinct !DISubprogram(name: "node", linkageName: "_ZN4nodeIiEC2ERKi", scope: !126, file: !1, line: 8, type: !131, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !130, variables: !281)
!281 = !{!282, !283}
!282 = !DILocalVariable(name: "this", arg: 1, scope: !280, type: !125, flags: DIFlagArtificial | DIFlagObjectPointer)
!283 = !DILocalVariable(name: "data", arg: 2, scope: !280, file: !1, line: 8, type: !134)
!284 = distinct !DILocation(line: 8, column: 53, scope: !285, inlinedAt: !289)
!285 = distinct !DISubprogram(name: "node", linkageName: "_ZN4nodeIiEC1ERKi", scope: !126, file: !1, line: 8, type: !131, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !130, variables: !286)
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "this", arg: 1, scope: !285, type: !125, flags: DIFlagArtificial | DIFlagObjectPointer)
!288 = !DILocalVariable(name: "data", arg: 2, scope: !285, file: !1, line: 8, type: !134)
!289 = distinct !DILocation(line: 18, column: 33, scope: !270, inlinedAt: !277)
!290 = !{!291, !292, i64 0}
!291 = !{!"_ZTS4nodeIiE", !292, i64 0, !295, i64 8}
!292 = !{!"int", !293, i64 0}
!293 = !{!"omnipotent char", !294, i64 0}
!294 = !{!"Simple C++ TBAA"}
!295 = !{!"any pointer", !293, i64 0}
!296 = !DILocation(line: 8, column: 39, scope: !280, inlinedAt: !284)
!297 = !DILocalVariable(name: "__m", arg: 2, scope: !298, file: !4, line: 924, type: !154)
!298 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIP4nodeIiELb0EE4loadENS_12memory_orderE", scope: !121, file: !4, line: 924, type: !163, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !162, variables: !299)
!299 = !{!300, !297}
!300 = !DILocalVariable(name: "this", arg: 1, scope: !298, type: !301, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!302 = !DILocation(line: 924, column: 27, scope: !298, inlinedAt: !303)
!303 = distinct !DILocation(line: 21, column: 31, scope: !270, inlinedAt: !277)
!304 = !DILocation(line: 926, column: 17, scope: !298, inlinedAt: !303)
!305 = !DILocation(line: 926, column: 17, scope: !306, inlinedAt: !303)
!306 = !DILexicalBlockFile(scope: !298, file: !4, discriminator: 4)
!307 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !277)
!308 = !{!291, !295, i64 8}
!309 = !DILocalVariable(name: "__e", arg: 2, scope: !310, file: !4, line: 1361, type: !314)
!310 = distinct !DISubprogram(name: "atomic_compare_exchange_weak_explicit<node<int> *>", linkageName: "_ZNSt3__137atomic_compare_exchange_weak_explicitIP4nodeIiEEEbPNS_6atomicIT_EEPS5_S5_NS_12memory_orderES9_", scope: !5, file: !4, line: 1361, type: !311, isLocal: false, isDefinition: true, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: true, unit: !0, templateParams: !261, variables: !315)
!311 = !DISubroutineType(types: !312)
!312 = !{!141, !313, !314, !125, !154, !154}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!315 = !{!316, !309, !317, !318, !319}
!316 = !DILocalVariable(name: "__o", arg: 1, scope: !310, file: !4, line: 1361, type: !313)
!317 = !DILocalVariable(name: "__d", arg: 3, scope: !310, file: !4, line: 1361, type: !125)
!318 = !DILocalVariable(name: "__s", arg: 4, scope: !310, file: !4, line: 1362, type: !154)
!319 = !DILocalVariable(name: "__f", arg: 5, scope: !310, file: !4, line: 1362, type: !154)
!320 = !DILocation(line: 1361, column: 62, scope: !310, inlinedAt: !321)
!321 = distinct !DILocation(line: 27, column: 16, scope: !322, inlinedAt: !277)
!322 = !DILexicalBlockFile(scope: !270, file: !1, discriminator: 1)
!323 = !DILocation(line: 1362, column: 52, scope: !310, inlinedAt: !321)
!324 = !DILocation(line: 1362, column: 70, scope: !310, inlinedAt: !321)
!325 = !DILocalVariable(name: "__e", arg: 2, scope: !326, file: !4, line: 943, type: !180)
!326 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIP4nodeIiELb0EE21compare_exchange_weakERS3_S3_NS_12memory_orderES6_", scope: !121, file: !4, line: 943, type: !182, isLocal: false, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !181, variables: !327)
!327 = !{!328, !325, !330, !331, !332}
!328 = !DILocalVariable(name: "this", arg: 1, scope: !326, type: !329, flags: DIFlagArtificial | DIFlagObjectPointer)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!330 = !DILocalVariable(name: "__d", arg: 3, scope: !326, file: !4, line: 943, type: !125)
!331 = !DILocalVariable(name: "__s", arg: 4, scope: !326, file: !4, line: 944, type: !154)
!332 = !DILocalVariable(name: "__f", arg: 5, scope: !326, file: !4, line: 944, type: !154)
!333 = !DILocation(line: 943, column: 37, scope: !326, inlinedAt: !334)
!334 = distinct !DILocation(line: 1365, column: 17, scope: !310, inlinedAt: !321)
!335 = !DILocation(line: 944, column: 45, scope: !326, inlinedAt: !334)
!336 = !DILocation(line: 944, column: 63, scope: !326, inlinedAt: !334)
!337 = !DILocation(line: 946, column: 17, scope: !326, inlinedAt: !334)
!338 = !DILocation(line: 946, column: 17, scope: !339, inlinedAt: !334)
!339 = !DILexicalBlockFile(scope: !326, file: !4, discriminator: 18)
!340 = !DILocation(line: 946, column: 17, scope: !341, inlinedAt: !334)
!341 = !DILexicalBlockFile(scope: !326, file: !4, discriminator: 20)
!342 = !DILocation(line: 0, scope: !270, inlinedAt: !343)
!343 = distinct !DILocation(line: 44, column: 7, scope: !110)
!344 = !DILocation(line: 18, column: 29, scope: !270, inlinedAt: !343)
!345 = !DILocation(line: 8, column: 27, scope: !280, inlinedAt: !346)
!346 = distinct !DILocation(line: 8, column: 53, scope: !285, inlinedAt: !347)
!347 = distinct !DILocation(line: 18, column: 33, scope: !270, inlinedAt: !343)
!348 = !DILocation(line: 8, column: 39, scope: !280, inlinedAt: !346)
!349 = !DILocation(line: 924, column: 27, scope: !298, inlinedAt: !350)
!350 = distinct !DILocation(line: 21, column: 31, scope: !270, inlinedAt: !343)
!351 = !DILocation(line: 926, column: 17, scope: !306, inlinedAt: !350)
!352 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !343)
!353 = !DILocation(line: 1361, column: 62, scope: !310, inlinedAt: !354)
!354 = distinct !DILocation(line: 27, column: 16, scope: !322, inlinedAt: !343)
!355 = !DILocation(line: 1362, column: 52, scope: !310, inlinedAt: !354)
!356 = !DILocation(line: 1362, column: 70, scope: !310, inlinedAt: !354)
!357 = !DILocation(line: 943, column: 37, scope: !326, inlinedAt: !358)
!358 = distinct !DILocation(line: 1365, column: 17, scope: !310, inlinedAt: !354)
!359 = !DILocation(line: 944, column: 45, scope: !326, inlinedAt: !358)
!360 = !DILocation(line: 944, column: 63, scope: !326, inlinedAt: !358)
!361 = !DILocation(line: 946, column: 17, scope: !326, inlinedAt: !358)
!362 = !DILocation(line: 946, column: 17, scope: !339, inlinedAt: !358)
!363 = !DILocation(line: 946, column: 17, scope: !341, inlinedAt: !358)
!364 = !DILocation(line: 0, scope: !270, inlinedAt: !365)
!365 = distinct !DILocation(line: 45, column: 7, scope: !110)
!366 = !DILocation(line: 18, column: 29, scope: !270, inlinedAt: !365)
!367 = !DILocation(line: 8, column: 27, scope: !280, inlinedAt: !368)
!368 = distinct !DILocation(line: 8, column: 53, scope: !285, inlinedAt: !369)
!369 = distinct !DILocation(line: 18, column: 33, scope: !270, inlinedAt: !365)
!370 = !DILocation(line: 8, column: 39, scope: !280, inlinedAt: !368)
!371 = !DILocation(line: 924, column: 27, scope: !298, inlinedAt: !372)
!372 = distinct !DILocation(line: 21, column: 31, scope: !270, inlinedAt: !365)
!373 = !DILocation(line: 926, column: 17, scope: !306, inlinedAt: !372)
!374 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !365)
!375 = !DILocation(line: 1361, column: 62, scope: !310, inlinedAt: !376)
!376 = distinct !DILocation(line: 27, column: 16, scope: !322, inlinedAt: !365)
!377 = !DILocation(line: 1362, column: 52, scope: !310, inlinedAt: !376)
!378 = !DILocation(line: 1362, column: 70, scope: !310, inlinedAt: !376)
!379 = !DILocation(line: 943, column: 37, scope: !326, inlinedAt: !380)
!380 = distinct !DILocation(line: 1365, column: 17, scope: !310, inlinedAt: !376)
!381 = !DILocation(line: 944, column: 45, scope: !326, inlinedAt: !380)
!382 = !DILocation(line: 944, column: 63, scope: !326, inlinedAt: !380)
!383 = !DILocation(line: 946, column: 17, scope: !326, inlinedAt: !380)
!384 = !DILocation(line: 946, column: 17, scope: !339, inlinedAt: !380)
!385 = !DILocation(line: 946, column: 17, scope: !341, inlinedAt: !380)
!386 = !DILocation(line: 46, column: 1, scope: !110)
