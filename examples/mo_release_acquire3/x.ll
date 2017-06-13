; ModuleID = 'x.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@data1 = local_unnamed_addr global i32 0, align 4, !dbg !0
@data2 = local_unnamed_addr global i32 0, align 4, !dbg !18
@data3 = local_unnamed_addr global i32 0, align 4, !dbg !21
@data4 = local_unnamed_addr global i32 0, align 4, !dbg !23
@x = global { i32 } zeroinitializer, align 4, !dbg !25
@y = global { i32 } zeroinitializer, align 4, !dbg !180
@.str = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"f3\00", align 1

; Function Attrs: ssp uwtable
define void @_Z2f1v() local_unnamed_addr #0 !dbg !1122 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1125, metadata !1131), !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1130, metadata !1131), !dbg !1134
  %myCast = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast, i32 10, i32 5)
  store atomic i32 10, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) release, align 4, !dbg !1135
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1125, metadata !1131), !dbg !1137
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1130, metadata !1131), !dbg !1139
  %myCast1 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) to i8*
  call void @preAtomicStore_int(i8* %myCast1, i32 10, i32 5)
  store atomic i32 10, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) release, align 4, !dbg !1140
  tail call void @checker_thread_end(), !dbg !1141
  ret void, !dbg !1142
}

declare void @checker_thread_begin(i8*) local_unnamed_addr #1

declare void @checker_thread_end() local_unnamed_addr #1

; Function Attrs: ssp uwtable
define void @_Z2f2v() local_unnamed_addr #0 !dbg !1143 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !1144
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1145, metadata !1131), !dbg !1150
  %myCast = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  %0 = call i32 @preAtomicLoad_int(i8* %myCast, i32 4)
  %newLoad = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) acquire, align 4
  %1 = icmp eq i32 %0, 255
  %mySelect = select i1 %1, i32 %newLoad, i32 %0
  call void @postAtomicLoad_int(i8* %myCast, i32 %mySelect, i32 4)
  %myCast1 = bitcast i32* @data1 to i8*
  call void @preNonAtomicStore_int(i8* %myCast1, i32 %mySelect)
  store i32 %mySelect, i32* @data1, align 4, !dbg !1152, !tbaa !1153
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1145, metadata !1131), !dbg !1157
  %myCast2 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) to i8*
  %2 = call i32 @preAtomicLoad_int(i8* %myCast2, i32 4)
  %newLoad3 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) acquire, align 4
  %3 = icmp eq i32 %2, 255
  %mySelect4 = select i1 %3, i32 %newLoad3, i32 %2
  call void @postAtomicLoad_int(i8* %myCast2, i32 %mySelect4, i32 4)
  %myCast5 = bitcast i32* @data2 to i8*
  call void @preNonAtomicStore_int(i8* %myCast5, i32 %mySelect4)
  store i32 %mySelect4, i32* @data2, align 4, !dbg !1159, !tbaa !1153
  tail call void @checker_thread_end(), !dbg !1160
  ret void, !dbg !1161
}

; Function Attrs: ssp uwtable
define void @_Z2f3v() local_unnamed_addr #0 !dbg !1162 {
entry:
  tail call void @checker_thread_begin(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !1163
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1145, metadata !1131), !dbg !1164
  %myCast = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) to i8*
  %0 = call i32 @preAtomicLoad_int(i8* %myCast, i32 4)
  %newLoad = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) acquire, align 4
  %1 = icmp eq i32 %0, 255
  %mySelect = select i1 %1, i32 %newLoad, i32 %0
  call void @postAtomicLoad_int(i8* %myCast, i32 %mySelect, i32 4)
  %myCast1 = bitcast i32* @data3 to i8*
  call void @preNonAtomicStore_int(i8* %myCast1, i32 %mySelect)
  store i32 %mySelect, i32* @data3, align 4, !dbg !1166, !tbaa !1153
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1145, metadata !1131), !dbg !1167
  %myCast2 = bitcast i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) to i8*
  %2 = call i32 @preAtomicLoad_int(i8* %myCast2, i32 4)
  %newLoad3 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) acquire, align 4
  %3 = icmp eq i32 %2, 255
  %mySelect4 = select i1 %3, i32 %newLoad3, i32 %2
  call void @postAtomicLoad_int(i8* %myCast2, i32 %mySelect4, i32 4)
  %myCast5 = bitcast i32* @data4 to i8*
  call void @preNonAtomicStore_int(i8* %myCast5, i32 %mySelect4)
  store i32 %mySelect4, i32* @data4, align 4, !dbg !1169, !tbaa !1153
  tail call void @checker_thread_end(), !dbg !1170
  ret void, !dbg !1171
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @user_main() local_unnamed_addr #2 !dbg !1172 {
entry:
  ret i32 0, !dbg !1173
}

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

declare void @preCmpXchg_int(i8*, i32, i32, i32, i32)

declare void @preRMW_Xchg(i8*, i32, i32)

declare void @preRMW_Add(i8*, i32, i32)

declare void @preRMW_Sub(i8*, i32, i32)

declare void @preRMW_And(i8*, i32, i32)

declare void @preRMW_Nand(i8*, i32, i32)

declare void @preRMW_Or(i8*, i32, i32)

declare void @preRMW_Xor(i8*, i32, i32)

declare void @preRMW_Max(i8*, i32, i32)

declare void @preRMW_Min(i8*, i32, i32)

declare void @preRMW_UMax(i8*, i32, i32)

declare void @preRMW_UMin(i8*, i32, i32)

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1118, !1119, !1120}
!llvm.ident = !{!1121}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "data1", scope: !2, file: !3, line: 7, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !17, imports: !182)
!3 = !DIFile(filename: "example.cpp", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!4 = !{!5}
!5 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !7, file: !6, line: 581, size: 32, elements: !10, identifier: "_ZTSNSt3__112memory_orderE")
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
!17 = !{!0, !18, !21, !23, !25, !180}
!18 = !DIGlobalVariableExpression(var: !19)
!19 = distinct !DIGlobalVariable(name: "data2", scope: !2, file: !3, line: 7, type: !20, isLocal: false, isDefinition: true)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIGlobalVariableExpression(var: !22)
!22 = distinct !DIGlobalVariable(name: "data3", scope: !2, file: !3, line: 7, type: !20, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24)
!24 = distinct !DIGlobalVariable(name: "data4", scope: !2, file: !3, line: 7, type: !20, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26)
!26 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 8, type: !27, isLocal: false, isDefinition: true)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !7, file: !6, line: 1084, size: 32, elements: !28, templateParams: !179, identifier: "_ZTSNSt3__16atomicIiEE")
!28 = !{!29, !164, !168, !171, !176}
!29 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !27, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, true>", scope: !7, file: !6, line: 1003, size: 32, elements: !31, templateParams: !162, identifier: "_ZTSNSt3__113__atomic_baseIiLb1EEE")
!31 = !{!32, !113, !117, !120, !125, !128, !129, !130, !131, !132, !133, !134, !135, !136, !139, !142, !143, !144, !147, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!32 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !30, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int, false>", scope: !7, file: !6, line: 891, size: 32, elements: !34, templateParams: !110, identifier: "_ZTSNSt3__113__atomic_baseIiLb0EEE")
!34 = !{!35, !37, !44, !49, !54, !58, !61, !64, !67, !70, !73, !76, !80, !83, !84, !85, !88, !91, !92, !93, !96, !99, !103, !107}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__a_", scope: !33, file: !6, line: 893, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !20)
!37 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !33, file: !6, line: 900, type: !38, isLocal: false, isDefinition: false, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41}
!40 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!44 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE12is_lock_freeEv", scope: !33, file: !6, line: 909, type: !45, isLocal: false, isDefinition: false, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true)
!45 = !DISubroutineType(types: !46)
!46 = !{!40, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!49 = !DISubprogram(name: "store", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !33, file: !6, line: 912, type: !50, isLocal: false, isDefinition: false, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !20, !53}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !7, file: !6, line: 585, baseType: !5)
!54 = !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !33, file: !6, line: 916, type: !55, isLocal: false, isDefinition: false, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !20, !53}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!58 = !DISubprogram(name: "load", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !33, file: !6, line: 920, type: !59, isLocal: false, isDefinition: false, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true)
!59 = !DISubroutineType(types: !60)
!60 = !{!20, !41, !53}
!61 = !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !33, file: !6, line: 924, type: !62, isLocal: false, isDefinition: false, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true)
!62 = !DISubroutineType(types: !63)
!63 = !{!20, !47, !53}
!64 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt3__113__atomic_baseIiLb0EEcviEv", scope: !33, file: !6, line: 928, type: !65, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true)
!65 = !DISubroutineType(types: !66)
!66 = !{!20, !41}
!67 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EEcviEv", scope: !33, file: !6, line: 930, type: !68, isLocal: false, isDefinition: false, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true)
!68 = !DISubroutineType(types: !69)
!69 = !{!20, !47}
!70 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !33, file: !6, line: 932, type: !71, isLocal: false, isDefinition: false, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true)
!71 = !DISubroutineType(types: !72)
!72 = !{!20, !52, !20, !53}
!73 = !DISubprogram(name: "exchange", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE", scope: !33, file: !6, line: 935, type: !74, isLocal: false, isDefinition: false, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true)
!74 = !DISubroutineType(types: !75)
!75 = !{!20, !57, !20, !53}
!76 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !33, file: !6, line: 938, type: !77, isLocal: false, isDefinition: false, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true)
!77 = !DISubroutineType(types: !78)
!78 = !{!40, !52, !79, !20, !53, !53}
!79 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!80 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderES3_", scope: !33, file: !6, line: 943, type: !81, isLocal: false, isDefinition: false, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true)
!81 = !DISubroutineType(types: !82)
!82 = !{!40, !57, !79, !20, !53, !53}
!83 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !33, file: !6, line: 948, type: !77, isLocal: false, isDefinition: false, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true)
!84 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderES3_", scope: !33, file: !6, line: 953, type: !81, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true)
!85 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !33, file: !6, line: 958, type: !86, isLocal: false, isDefinition: false, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true)
!86 = !DISubroutineType(types: !87)
!87 = !{!40, !52, !79, !20, !53}
!88 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE21compare_exchange_weakERiiNS_12memory_orderE", scope: !33, file: !6, line: 962, type: !89, isLocal: false, isDefinition: false, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true)
!89 = !DISubroutineType(types: !90)
!90 = !{!40, !57, !79, !20, !53}
!91 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !33, file: !6, line: 966, type: !86, isLocal: false, isDefinition: false, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true)
!92 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE23compare_exchange_strongERiiNS_12memory_orderE", scope: !33, file: !6, line: 970, type: !89, isLocal: false, isDefinition: false, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true)
!93 = !DISubprogram(name: "__atomic_base", scope: !33, file: !6, line: 976, type: !94, isLocal: false, isDefinition: false, scopeLine: 976, flags: DIFlagPrototyped, isOptimized: true)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !57}
!96 = !DISubprogram(name: "__atomic_base", scope: !33, file: !6, line: 982, type: !97, isLocal: false, isDefinition: false, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: true)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !57, !20}
!99 = !DISubprogram(name: "__atomic_base", scope: !33, file: !6, line: 984, type: !100, isLocal: false, isDefinition: false, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: true)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !57, !102}
!102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !48, size: 64)
!103 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !33, file: !6, line: 985, type: !104, isLocal: false, isDefinition: false, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !57, !102}
!106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !33, size: 64)
!107 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__113__atomic_baseIiLb0EEaSERKS1_", scope: !33, file: !6, line: 986, type: !108, isLocal: false, isDefinition: false, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true)
!108 = !DISubroutineType(types: !109)
!109 = !{!106, !52, !102}
!110 = !{!111, !112}
!111 = !DITemplateTypeParameter(name: "_Tp", type: !20)
!112 = !DITemplateValueParameter(type: !40, value: i8 0)
!113 = !DISubprogram(name: "__atomic_base", scope: !30, file: !6, line: 1008, type: !114, isLocal: false, isDefinition: false, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!117 = !DISubprogram(name: "__atomic_base", scope: !30, file: !6, line: 1010, type: !118, isLocal: false, isDefinition: false, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !116, !20}
!120 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !30, file: !6, line: 1013, type: !121, isLocal: false, isDefinition: false, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true)
!121 = !DISubroutineType(types: !122)
!122 = !{!20, !123, !20, !53}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!125 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE", scope: !30, file: !6, line: 1016, type: !126, isLocal: false, isDefinition: false, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true)
!126 = !DISubroutineType(types: !127)
!127 = !{!20, !116, !20, !53}
!128 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !30, file: !6, line: 1019, type: !121, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: true)
!129 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_subEiNS_12memory_orderE", scope: !30, file: !6, line: 1022, type: !126, isLocal: false, isDefinition: false, scopeLine: 1022, flags: DIFlagPrototyped, isOptimized: true)
!130 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !30, file: !6, line: 1025, type: !121, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true)
!131 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_andEiNS_12memory_orderE", scope: !30, file: !6, line: 1028, type: !126, isLocal: false, isDefinition: false, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true)
!132 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !30, file: !6, line: 1031, type: !121, isLocal: false, isDefinition: false, scopeLine: 1031, flags: DIFlagPrototyped, isOptimized: true)
!133 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE8fetch_orEiNS_12memory_orderE", scope: !30, file: !6, line: 1034, type: !126, isLocal: false, isDefinition: false, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true)
!134 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !30, file: !6, line: 1037, type: !121, isLocal: false, isDefinition: false, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: true)
!135 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt3__113__atomic_baseIiLb1EE9fetch_xorEiNS_12memory_orderE", scope: !30, file: !6, line: 1040, type: !126, isLocal: false, isDefinition: false, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true)
!136 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEi", scope: !30, file: !6, line: 1044, type: !137, isLocal: false, isDefinition: false, scopeLine: 1044, flags: DIFlagPrototyped, isOptimized: true)
!137 = !DISubroutineType(types: !138)
!138 = !{!20, !123, !20}
!139 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEi", scope: !30, file: !6, line: 1046, type: !140, isLocal: false, isDefinition: false, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true)
!140 = !DISubroutineType(types: !141)
!141 = !{!20, !116, !20}
!142 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEi", scope: !30, file: !6, line: 1048, type: !137, isLocal: false, isDefinition: false, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true)
!143 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEi", scope: !30, file: !6, line: 1050, type: !140, isLocal: false, isDefinition: false, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: true)
!144 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEppEv", scope: !30, file: !6, line: 1052, type: !145, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true)
!145 = !DISubroutineType(types: !146)
!146 = !{!20, !123}
!147 = !DISubprogram(name: "operator++", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEppEv", scope: !30, file: !6, line: 1054, type: !148, isLocal: false, isDefinition: false, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true)
!148 = !DISubroutineType(types: !149)
!149 = !{!20, !116}
!150 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmmEv", scope: !30, file: !6, line: 1056, type: !145, isLocal: false, isDefinition: false, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true)
!151 = !DISubprogram(name: "operator--", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmmEv", scope: !30, file: !6, line: 1058, type: !148, isLocal: false, isDefinition: false, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true)
!152 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEpLEi", scope: !30, file: !6, line: 1060, type: !137, isLocal: false, isDefinition: false, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: true)
!153 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEpLEi", scope: !30, file: !6, line: 1062, type: !140, isLocal: false, isDefinition: false, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true)
!154 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEmIEi", scope: !30, file: !6, line: 1064, type: !137, isLocal: false, isDefinition: false, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true)
!155 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEmIEi", scope: !30, file: !6, line: 1066, type: !140, isLocal: false, isDefinition: false, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true)
!156 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEaNEi", scope: !30, file: !6, line: 1068, type: !137, isLocal: false, isDefinition: false, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true)
!157 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEaNEi", scope: !30, file: !6, line: 1070, type: !140, isLocal: false, isDefinition: false, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true)
!158 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEoREi", scope: !30, file: !6, line: 1072, type: !137, isLocal: false, isDefinition: false, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: true)
!159 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEoREi", scope: !30, file: !6, line: 1074, type: !140, isLocal: false, isDefinition: false, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true)
!160 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt3__113__atomic_baseIiLb1EEeOEi", scope: !30, file: !6, line: 1076, type: !137, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true)
!161 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt3__113__atomic_baseIiLb1EEeOEi", scope: !30, file: !6, line: 1078, type: !140, isLocal: false, isDefinition: false, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true)
!162 = !{!111, !163}
!163 = !DITemplateValueParameter(type: !40, value: i8 1)
!164 = !DISubprogram(name: "atomic", scope: !27, file: !6, line: 1089, type: !165, isLocal: false, isDefinition: false, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!168 = !DISubprogram(name: "atomic", scope: !27, file: !6, line: 1091, type: !169, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !167, !20}
!171 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt3__16atomicIiEaSEi", scope: !27, file: !6, line: 1094, type: !172, isLocal: false, isDefinition: false, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true)
!172 = !DISubroutineType(types: !173)
!173 = !{!20, !174, !20}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!175 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!176 = !DISubprogram(name: "operator=", linkageName: "_ZNSt3__16atomicIiEaSEi", scope: !27, file: !6, line: 1097, type: !177, isLocal: false, isDefinition: false, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: true)
!177 = !DISubroutineType(types: !178)
!178 = !{!20, !167, !20}
!179 = !{!111}
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 8, type: !27, isLocal: false, isDefinition: true)
!182 = !{!183, !187, !193, !197, !198, !206, !208, !216, !220, !222, !224, !228, !232, !236, !238, !242, !247, !251, !255, !257, !259, !261, !263, !265, !267, !271, !275, !279, !283, !286, !290, !294, !298, !302, !306, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !343, !346, !349, !352, !353, !360, !366, !372, !377, !381, !385, !389, !394, !399, !403, !407, !411, !415, !419, !423, !427, !431, !435, !439, !443, !447, !452, !456, !458, !462, !464, !471, !475, !480, !484, !486, !490, !494, !496, !500, !506, !510, !514, !520, !574, !575, !576, !581, !583, !587, !591, !595, !597, !601, !605, !609, !620, !622, !626, !630, !634, !636, !640, !644, !648, !650, !652, !654, !658, !662, !667, !671, !677, !681, !685, !687, !689, !691, !695, !699, !703, !705, !707, !711, !715, !717, !719, !723, !727, !729, !733, !735, !737, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !770, !775, !780, !785, !787, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !812, !816, !820, !822, !826, !830, !842, !843, !858, !859, !860, !865, !867, !871, !875, !879, !883, !885, !889, !893, !897, !901, !905, !909, !911, !913, !917, !922, !926, !930, !934, !938, !942, !946, !950, !954, !956, !958, !962, !964, !968, !972, !977, !979, !981, !983, !987, !991, !995, !997, !1001, !1003, !1005, !1007, !1009, !1015, !1019, !1021, !1027, !1032, !1036, !1040, !1045, !1050, !1054, !1058, !1062, !1066, !1068, !1070, !1074, !1075, !1079, !1080, !1084, !1088, !1093, !1098, !1102, !1108, !1112, !1114}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !184, line: 49)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !185, line: 51, baseType: !186)
!185 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!186 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, line: 50)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 30, baseType: !190)
!189 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !191, line: 92, baseType: !192)
!191 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!192 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !194, line: 55)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !195, line: 32, baseType: !196)
!195 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../lib/clang/4.0.0/include/__stddef_max_align_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!196 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, line: 69)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !199, line: 70)
!199 = !DISubprogram(name: "memcpy", scope: !200, file: !200, line: 72, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!200 = !DIFile(filename: "/usr/include/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !203, !204, !188}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !207, line: 71)
!207 = !DISubprogram(name: "memmove", scope: !200, file: !200, line: 73, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !209, line: 72)
!209 = !DISubprogram(name: "strcpy", scope: !200, file: !200, line: 79, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !212, !214}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !217, line: 73)
!217 = !DISubprogram(name: "strncpy", scope: !200, file: !200, line: 85, type: !218, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!218 = !DISubroutineType(types: !219)
!219 = !{!212, !212, !214, !188}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !221, line: 74)
!221 = !DISubprogram(name: "strcat", scope: !200, file: !200, line: 75, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !223, line: 75)
!223 = !DISubprogram(name: "strncat", scope: !200, file: !200, line: 83, type: !218, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !225, line: 76)
!225 = !DISubprogram(name: "memcmp", scope: !200, file: !200, line: 71, type: !226, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!226 = !DISubroutineType(types: !227)
!227 = !{!20, !204, !204, !188}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !229, line: 77)
!229 = !DISubprogram(name: "strcmp", scope: !200, file: !200, line: 77, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!230 = !DISubroutineType(types: !231)
!231 = !{!20, !214, !214}
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !233, line: 78)
!233 = !DISubprogram(name: "strncmp", scope: !200, file: !200, line: 84, type: !234, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!234 = !DISubroutineType(types: !235)
!235 = !{!20, !214, !214, !188}
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !237, line: 79)
!237 = !DISubprogram(name: "strcoll", scope: !200, file: !200, line: 78, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !239, line: 80)
!239 = !DISubprogram(name: "strxfrm", scope: !200, file: !200, line: 91, type: !240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!240 = !DISubroutineType(types: !241)
!241 = !{!188, !212, !214, !188}
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !243, line: 81)
!243 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifIXLb1EEEPvim", scope: !244, file: !244, line: 99, type: !245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!244 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/string.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!245 = !DISubroutineType(types: !246)
!246 = !{!203, !203, !20, !188}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !248, line: 82)
!248 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifIXLb1EEEPci", scope: !244, file: !244, line: 78, type: !249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!249 = !DISubroutineType(types: !250)
!250 = !{!212, !212, !20}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !252, line: 83)
!252 = !DISubprogram(name: "strcspn", scope: !200, file: !200, line: 80, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!253 = !DISubroutineType(types: !254)
!254 = !{!188, !214, !214}
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !256, line: 84)
!256 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifIXLb1EEEPcPKc", scope: !244, file: !244, line: 85, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !258, line: 85)
!258 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifIXLb1EEEPci", scope: !244, file: !244, line: 92, type: !249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !260, line: 86)
!260 = !DISubprogram(name: "strspn", scope: !200, file: !200, line: 88, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !262, line: 87)
!262 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifIXLb1EEEPcPKc", scope: !244, file: !244, line: 106, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !264, line: 89)
!264 = !DISubprogram(name: "strtok", scope: !200, file: !200, line: 90, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !266, line: 91)
!266 = !DISubprogram(name: "memset", scope: !200, file: !200, line: 74, type: !245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !268, line: 92)
!268 = !DISubprogram(name: "strerror", linkageName: "\01_strerror", scope: !200, file: !200, line: 81, type: !269, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!269 = !DISubroutineType(types: !270)
!270 = !{!212, !20}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !272, line: 93)
!272 = !DISubprogram(name: "strlen", scope: !200, file: !200, line: 82, type: !273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!273 = !DISubroutineType(types: !274)
!274 = !{!188, !214}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !276, line: 153)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !277, line: 30, baseType: !278)
!277 = !DIFile(filename: "/usr/include/sys/_types/_int8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!278 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !280, line: 154)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !281, line: 30, baseType: !282)
!281 = !DIFile(filename: "/usr/include/sys/_types/_int16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!282 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !284, line: 155)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !285, line: 30, baseType: !20)
!285 = !DIFile(filename: "/usr/include/sys/_types/_int32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !287, line: 156)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !288, line: 30, baseType: !289)
!288 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!289 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !291, line: 158)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !292, line: 31, baseType: !293)
!292 = !DIFile(filename: "/usr/include/_types/_uint8_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!293 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !295, line: 159)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !296, line: 31, baseType: !297)
!296 = !DIFile(filename: "/usr/include/_types/_uint16_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!297 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !299, line: 160)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !300, line: 31, baseType: !301)
!300 = !DIFile(filename: "/usr/include/_types/_uint32_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!301 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !303, line: 161)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !304, line: 31, baseType: !305)
!304 = !DIFile(filename: "/usr/include/_types/_uint64_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!305 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !307, line: 163)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !308, line: 29, baseType: !276)
!308 = !DIFile(filename: "/usr/include/stdint.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !310, line: 164)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !308, line: 30, baseType: !280)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !312, line: 165)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !308, line: 31, baseType: !284)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !314, line: 166)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !308, line: 32, baseType: !287)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !316, line: 168)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !308, line: 33, baseType: !291)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !318, line: 169)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !308, line: 34, baseType: !295)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !320, line: 170)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !308, line: 35, baseType: !299)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !322, line: 171)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !308, line: 36, baseType: !303)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !324, line: 173)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !308, line: 40, baseType: !276)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !326, line: 174)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !308, line: 41, baseType: !280)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !328, line: 175)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !308, line: 42, baseType: !284)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !330, line: 176)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !308, line: 43, baseType: !287)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !332, line: 178)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !308, line: 44, baseType: !291)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !334, line: 179)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !308, line: 45, baseType: !295)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !336, line: 180)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !308, line: 46, baseType: !299)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !338, line: 181)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !308, line: 47, baseType: !303)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !340, line: 183)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !341, line: 30, baseType: !342)
!341 = !DIFile(filename: "/usr/include/sys/_types/_intptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !191, line: 49, baseType: !186)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !344, line: 184)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !345, line: 30, baseType: !192)
!345 = !DIFile(filename: "/usr/include/sys/_types/_uintptr_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !347, line: 186)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !348, line: 32, baseType: !186)
!348 = !DIFile(filename: "/usr/include/_types/_intmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !350, line: 187)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !351, line: 32, baseType: !192)
!351 = !DIFile(filename: "/usr/include/_types/_uintmax_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, line: 100)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !354, line: 101)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !355, line: 85, baseType: !356)
!355 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 82, size: 64, elements: !357, identifier: "_ZTS5div_t")
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !356, file: !355, line: 83, baseType: !20, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !356, file: !355, line: 84, baseType: !20, size: 32, offset: 32)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !361, line: 102)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !355, line: 90, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 87, size: 128, elements: !363, identifier: "_ZTS6ldiv_t")
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !362, file: !355, line: 88, baseType: !186, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !362, file: !355, line: 89, baseType: !186, size: 64, offset: 64)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !367, line: 104)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !355, line: 96, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 93, size: 128, elements: !369, identifier: "_ZTS7lldiv_t")
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !368, file: !355, line: 94, baseType: !289, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !368, file: !355, line: 95, baseType: !289, size: 64, offset: 64)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !373, line: 106)
!373 = !DISubprogram(name: "atof", scope: !355, file: !355, line: 131, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !214}
!376 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !378, line: 107)
!378 = !DISubprogram(name: "atoi", scope: !355, file: !355, line: 132, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!379 = !DISubroutineType(types: !380)
!380 = !{!20, !214}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !382, line: 108)
!382 = !DISubprogram(name: "atol", scope: !355, file: !355, line: 133, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!383 = !DISubroutineType(types: !384)
!384 = !{!186, !214}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !386, line: 110)
!386 = !DISubprogram(name: "atoll", scope: !355, file: !355, line: 136, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!387 = !DISubroutineType(types: !388)
!388 = !{!289, !214}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !390, line: 112)
!390 = !DISubprogram(name: "strtod", linkageName: "\01_strtod", scope: !355, file: !355, line: 162, type: !391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!391 = !DISubroutineType(types: !392)
!392 = !{!376, !214, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !395, line: 113)
!395 = !DISubprogram(name: "strtof", linkageName: "\01_strtof", scope: !355, file: !355, line: 163, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!396 = !DISubroutineType(types: !397)
!397 = !{!398, !214, !393}
!398 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !400, line: 114)
!400 = !DISubprogram(name: "strtold", scope: !355, file: !355, line: 166, type: !401, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!401 = !DISubroutineType(types: !402)
!402 = !{!196, !214, !393}
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !404, line: 115)
!404 = !DISubprogram(name: "strtol", scope: !355, file: !355, line: 164, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!405 = !DISubroutineType(types: !406)
!406 = !{!186, !214, !393, !20}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !408, line: 117)
!408 = !DISubprogram(name: "strtoll", scope: !355, file: !355, line: 169, type: !409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!409 = !DISubroutineType(types: !410)
!410 = !{!289, !214, !393, !20}
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !412, line: 119)
!412 = !DISubprogram(name: "strtoul", scope: !355, file: !355, line: 172, type: !413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!413 = !DISubroutineType(types: !414)
!414 = !{!192, !214, !393, !20}
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !416, line: 121)
!416 = !DISubprogram(name: "strtoull", scope: !355, file: !355, line: 175, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!417 = !DISubroutineType(types: !418)
!418 = !{!305, !214, !393, !20}
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !420, line: 123)
!420 = !DISubprogram(name: "rand", scope: !355, file: !355, line: 159, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!421 = !DISubroutineType(types: !422)
!422 = !{!20}
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !424, line: 124)
!424 = !DISubprogram(name: "srand", scope: !355, file: !355, line: 161, type: !425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !301}
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !428, line: 125)
!428 = !DISubprogram(name: "calloc", scope: !355, file: !355, line: 140, type: !429, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!429 = !DISubroutineType(types: !430)
!430 = !{!203, !188, !188}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !432, line: 126)
!432 = !DISubprogram(name: "free", scope: !355, file: !355, line: 143, type: !433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !203}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !436, line: 127)
!436 = !DISubprogram(name: "malloc", scope: !355, file: !355, line: 152, type: !437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!437 = !DISubroutineType(types: !438)
!438 = !{!203, !188}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !440, line: 128)
!440 = !DISubprogram(name: "realloc", scope: !355, file: !355, line: 160, type: !441, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!441 = !DISubroutineType(types: !442)
!442 = !{!203, !203, !188}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !444, line: 129)
!444 = !DISubprogram(name: "abort", scope: !355, file: !355, line: 128, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!445 = !DISubroutineType(types: !446)
!446 = !{null}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !448, line: 130)
!448 = !DISubprogram(name: "atexit", scope: !355, file: !355, line: 130, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!449 = !DISubroutineType(types: !450)
!450 = !{!20, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !453, line: 131)
!453 = !DISubprogram(name: "exit", scope: !355, file: !355, line: 142, type: !454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !20}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !457, line: 132)
!457 = !DISubprogram(name: "_Exit", scope: !355, file: !355, line: 182, type: !454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !459, line: 134)
!459 = !DISubprogram(name: "getenv", scope: !355, file: !355, line: 144, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!460 = !DISubroutineType(types: !461)
!461 = !{!212, !214}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !463, line: 135)
!463 = !DISubprogram(name: "system", linkageName: "\01_system", scope: !355, file: !355, line: 177, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !465, line: 137)
!465 = !DISubprogram(name: "bsearch", scope: !355, file: !355, line: 138, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!466 = !DISubroutineType(types: !467)
!467 = !{!203, !204, !204, !188, !188, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!20, !204, !204}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !472, line: 138)
!472 = !DISubprogram(name: "qsort", scope: !355, file: !355, line: 157, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !203, !188, !188, !468}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !476, line: 139)
!476 = !DISubprogram(name: "abs", linkageName: "_Z3absx", scope: !477, file: !477, line: 113, type: !478, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!477 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/stdlib.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!478 = !DISubroutineType(types: !479)
!479 = !{!289, !289}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !481, line: 140)
!481 = !DISubprogram(name: "labs", scope: !355, file: !355, line: 145, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!482 = !DISubroutineType(types: !483)
!483 = !{!186, !186}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !485, line: 142)
!485 = !DISubprogram(name: "llabs", scope: !355, file: !355, line: 149, type: !478, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !487, line: 144)
!487 = !DISubprogram(name: "div", linkageName: "_Z3divxx", scope: !477, file: !477, line: 118, type: !488, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!488 = !DISubroutineType(types: !489)
!489 = !{!367, !289, !289}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !491, line: 145)
!491 = !DISubprogram(name: "ldiv", scope: !355, file: !355, line: 146, type: !492, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!492 = !DISubroutineType(types: !493)
!493 = !{!361, !186, !186}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !495, line: 147)
!495 = !DISubprogram(name: "lldiv", scope: !355, file: !355, line: 150, type: !488, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !497, line: 149)
!497 = !DISubprogram(name: "mblen", scope: !355, file: !355, line: 153, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!498 = !DISubroutineType(types: !499)
!499 = !{!20, !214, !188}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !501, line: 150)
!501 = !DISubprogram(name: "mbtowc", scope: !355, file: !355, line: 155, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!502 = !DISubroutineType(types: !503)
!503 = !{!20, !504, !214, !188}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !507, line: 151)
!507 = !DISubprogram(name: "wctomb", scope: !355, file: !355, line: 179, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!508 = !DISubroutineType(types: !509)
!509 = !{!20, !212, !505}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !511, line: 152)
!511 = !DISubprogram(name: "mbstowcs", scope: !355, file: !355, line: 154, type: !512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!512 = !DISubroutineType(types: !513)
!513 = !{!188, !504, !214, !188}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !515, line: 153)
!515 = !DISubprogram(name: "wcstombs", scope: !355, file: !355, line: 178, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!516 = !DISubroutineType(types: !517)
!517 = !{!188, !212, !518, !188}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !521, line: 108)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !522, line: 153, baseType: !523)
!522 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !522, line: 122, size: 1216, elements: !524, identifier: "_ZTS7__sFILE")
!524 = !{!525, !527, !528, !529, !530, !531, !536, !537, !538, !542, !546, !554, !558, !559, !562, !563, !567, !571, !572, !573}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !523, file: !522, line: 123, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !523, file: !522, line: 124, baseType: !20, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !523, file: !522, line: 125, baseType: !20, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !523, file: !522, line: 126, baseType: !282, size: 16, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !523, file: !522, line: 127, baseType: !282, size: 16, offset: 144)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !523, file: !522, line: 128, baseType: !532, size: 128, offset: 192)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !522, line: 88, size: 128, elements: !533, identifier: "_ZTS6__sbuf")
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !532, file: !522, line: 89, baseType: !526, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !532, file: !522, line: 90, baseType: !20, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !523, file: !522, line: 129, baseType: !20, size: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !523, file: !522, line: 132, baseType: !203, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !523, file: !522, line: 133, baseType: !539, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!20, !203}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !523, file: !522, line: 134, baseType: !543, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!20, !203, !212, !20}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !523, file: !522, line: 135, baseType: !547, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!550, !203, !550, !20}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !522, line: 77, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !552, line: 71, baseType: !553)
!552 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !191, line: 46, baseType: !289)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !523, file: !522, line: 136, baseType: !555, size: 64, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!20, !203, !214, !20}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !523, file: !522, line: 139, baseType: !532, size: 128, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !523, file: !522, line: 140, baseType: !560, size: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !522, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS8__sFILEX")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !523, file: !522, line: 141, baseType: !20, size: 32, offset: 896)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !523, file: !522, line: 144, baseType: !564, size: 24, offset: 928)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 24, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 3)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !523, file: !522, line: 145, baseType: !568, size: 8, offset: 952)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 8, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 1)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !523, file: !522, line: 148, baseType: !532, size: 128, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !523, file: !522, line: 151, baseType: !20, size: 32, offset: 1088)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !523, file: !522, line: 152, baseType: !550, size: 64, offset: 1152)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !550, line: 109)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, line: 110)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !577, line: 112)
!577 = !DISubprogram(name: "fclose", scope: !522, file: !522, line: 232, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!578 = !DISubroutineType(types: !579)
!579 = !{!20, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !582, line: 113)
!582 = !DISubprogram(name: "fflush", scope: !522, file: !522, line: 235, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !584, line: 114)
!584 = !DISubprogram(name: "setbuf", scope: !522, file: !522, line: 267, type: !585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !580, !212}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !588, line: 115)
!588 = !DISubprogram(name: "setvbuf", scope: !522, file: !522, line: 268, type: !589, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!589 = !DISubroutineType(types: !590)
!590 = !{!20, !580, !212, !20, !188}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !592, line: 116)
!592 = !DISubprogram(name: "fprintf", scope: !522, file: !522, line: 244, type: !593, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!593 = !DISubroutineType(types: !594)
!594 = !{!20, !580, !214, null}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !596, line: 117)
!596 = !DISubprogram(name: "fscanf", scope: !522, file: !522, line: 250, type: !593, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !598, line: 118)
!598 = !DISubprogram(name: "snprintf", scope: !522, file: !522, line: 421, type: !599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!599 = !DISubroutineType(types: !600)
!600 = !{!20, !212, !188, !214, null}
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !602, line: 119)
!602 = !DISubprogram(name: "sprintf", scope: !522, file: !522, line: 269, type: !603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!603 = !DISubroutineType(types: !604)
!604 = !{!20, !212, !214, null}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !606, line: 120)
!606 = !DISubprogram(name: "sscanf", scope: !522, file: !522, line: 270, type: !607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!607 = !DISubroutineType(types: !608)
!608 = !{!20, !214, !214, null}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !610, line: 121)
!610 = !DISubprogram(name: "vfprintf", scope: !522, file: !522, line: 278, type: !611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!611 = !DISubroutineType(types: !612)
!612 = !{!20, !580, !214, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !615, identifier: "_ZTS13__va_list_tag")
!615 = !{!616, !617, !618, !619}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !614, file: !3, baseType: !301, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !614, file: !3, baseType: !301, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !614, file: !3, baseType: !203, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !614, file: !3, baseType: !203, size: 64, offset: 128)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !621, line: 122)
!621 = !DISubprogram(name: "vfscanf", scope: !522, file: !522, line: 422, type: !611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !623, line: 123)
!623 = !DISubprogram(name: "vsscanf", scope: !522, file: !522, line: 425, type: !624, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!624 = !DISubroutineType(types: !625)
!625 = !{!20, !214, !214, !613}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !627, line: 124)
!627 = !DISubprogram(name: "vsnprintf", scope: !522, file: !522, line: 424, type: !628, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!628 = !DISubroutineType(types: !629)
!629 = !{!20, !212, !188, !214, !613}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !631, line: 125)
!631 = !DISubprogram(name: "vsprintf", scope: !522, file: !522, line: 280, type: !632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!632 = !DISubroutineType(types: !633)
!633 = !{!20, !212, !214, !613}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !635, line: 126)
!635 = !DISubprogram(name: "fgetc", scope: !522, file: !522, line: 236, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !637, line: 127)
!637 = !DISubprogram(name: "fgets", scope: !522, file: !522, line: 238, type: !638, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!638 = !DISubroutineType(types: !639)
!639 = !{!212, !212, !20, !580}
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !641, line: 128)
!641 = !DISubprogram(name: "fputc", scope: !522, file: !522, line: 245, type: !642, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!642 = !DISubroutineType(types: !643)
!643 = !{!20, !20, !580}
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !645, line: 129)
!645 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !522, file: !522, line: 246, type: !646, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!646 = !DISubroutineType(types: !647)
!647 = !{!20, !214, !580}
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !649, line: 130)
!649 = !DISubprogram(name: "getc", scope: !522, file: !522, line: 255, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !651, line: 131)
!651 = !DISubprogram(name: "putc", scope: !522, file: !522, line: 260, type: !642, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !653, line: 132)
!653 = !DISubprogram(name: "ungetc", scope: !522, file: !522, line: 277, type: !642, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !655, line: 133)
!655 = !DISubprogram(name: "fread", scope: !522, file: !522, line: 247, type: !656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!656 = !DISubroutineType(types: !657)
!657 = !{!188, !203, !188, !188, !580}
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !659, line: 134)
!659 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !522, file: !522, line: 254, type: !660, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!660 = !DISubroutineType(types: !661)
!661 = !{!188, !204, !188, !188, !580}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !663, line: 135)
!663 = !DISubprogram(name: "fgetpos", scope: !522, file: !522, line: 237, type: !664, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!664 = !DISubroutineType(types: !665)
!665 = !{!20, !580, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !668, line: 136)
!668 = !DISubprogram(name: "fseek", scope: !522, file: !522, line: 251, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!669 = !DISubroutineType(types: !670)
!670 = !{!20, !580, !186, !20}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !672, line: 137)
!672 = !DISubprogram(name: "fsetpos", scope: !522, file: !522, line: 252, type: !673, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!673 = !DISubroutineType(types: !674)
!674 = !{!20, !580, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !678, line: 138)
!678 = !DISubprogram(name: "ftell", scope: !522, file: !522, line: 253, type: !679, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!679 = !DISubroutineType(types: !680)
!680 = !{!186, !580}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !682, line: 139)
!682 = !DISubprogram(name: "rewind", scope: !522, file: !522, line: 265, type: !683, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !580}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !686, line: 140)
!686 = !DISubprogram(name: "clearerr", scope: !522, file: !522, line: 231, type: !683, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !688, line: 141)
!688 = !DISubprogram(name: "feof", scope: !522, file: !522, line: 233, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !690, line: 142)
!690 = !DISubprogram(name: "ferror", scope: !522, file: !522, line: 234, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !692, line: 143)
!692 = !DISubprogram(name: "perror", scope: !522, file: !522, line: 258, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !214}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !696, line: 146)
!696 = !DISubprogram(name: "fopen", linkageName: "\01_fopen", scope: !522, file: !522, line: 242, type: !697, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!697 = !DISubroutineType(types: !698)
!698 = !{!580, !214, !214}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !700, line: 147)
!700 = !DISubprogram(name: "freopen", linkageName: "\01_freopen", scope: !522, file: !522, line: 248, type: !701, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!701 = !DISubroutineType(types: !702)
!702 = !{!580, !214, !214, !580}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !704, line: 148)
!704 = !DISubprogram(name: "remove", scope: !522, file: !522, line: 263, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !706, line: 149)
!706 = !DISubprogram(name: "rename", scope: !522, file: !522, line: 264, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !708, line: 150)
!708 = !DISubprogram(name: "tmpfile", scope: !522, file: !522, line: 271, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!709 = !DISubroutineType(types: !710)
!710 = !{!580}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !712, line: 151)
!712 = !DISubprogram(name: "tmpnam", scope: !522, file: !522, line: 276, type: !713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!713 = !DISubroutineType(types: !714)
!714 = !{!212, !212}
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !716, line: 155)
!716 = !DISubprogram(name: "getchar", scope: !522, file: !522, line: 256, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !718, line: 157)
!718 = !DISubprogram(name: "gets", scope: !522, file: !522, line: 257, type: !713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !720, line: 159)
!720 = !DISubprogram(name: "scanf", scope: !522, file: !522, line: 266, type: !721, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!721 = !DISubroutineType(types: !722)
!722 = !{!20, !214, null}
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !724, line: 160)
!724 = !DISubprogram(name: "vscanf", scope: !522, file: !522, line: 423, type: !725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!725 = !DISubroutineType(types: !726)
!726 = !{!20, !214, !613}
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !728, line: 164)
!728 = !DISubprogram(name: "printf", scope: !522, file: !522, line: 259, type: !721, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !730, line: 165)
!730 = !DISubprogram(name: "putchar", scope: !522, file: !522, line: 261, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!731 = !DISubroutineType(types: !732)
!732 = !{!20, !20}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !734, line: 166)
!734 = !DISubprogram(name: "puts", scope: !522, file: !522, line: 262, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !736, line: 167)
!736 = !DISubprogram(name: "vprintf", scope: !522, file: !522, line: 279, type: !725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !738, line: 104)
!738 = !DISubprogram(name: "isalnum", linkageName: "_Z7isalnumi", scope: !739, file: !739, line: 212, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!739 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !741, line: 105)
!741 = !DISubprogram(name: "isalpha", linkageName: "_Z7isalphai", scope: !739, file: !739, line: 218, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !743, line: 106)
!743 = !DISubprogram(name: "isblank", linkageName: "_Z7isblanki", scope: !739, file: !739, line: 224, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !745, line: 107)
!745 = !DISubprogram(name: "iscntrl", linkageName: "_Z7iscntrli", scope: !739, file: !739, line: 230, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !747, line: 108)
!747 = !DISubprogram(name: "isdigit", linkageName: "_Z7isdigiti", scope: !739, file: !739, line: 237, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !749, line: 109)
!749 = !DISubprogram(name: "isgraph", linkageName: "_Z7isgraphi", scope: !739, file: !739, line: 243, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !751, line: 110)
!751 = !DISubprogram(name: "islower", linkageName: "_Z7isloweri", scope: !739, file: !739, line: 249, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !753, line: 111)
!753 = !DISubprogram(name: "isprint", linkageName: "_Z7isprinti", scope: !739, file: !739, line: 255, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !755, line: 112)
!755 = !DISubprogram(name: "ispunct", linkageName: "_Z7ispuncti", scope: !739, file: !739, line: 261, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !757, line: 113)
!757 = !DISubprogram(name: "isspace", linkageName: "_Z7isspacei", scope: !739, file: !739, line: 267, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !759, line: 114)
!759 = !DISubprogram(name: "isupper", linkageName: "_Z7isupperi", scope: !739, file: !739, line: 273, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !761, line: 115)
!761 = !DISubprogram(name: "isxdigit", linkageName: "_Z8isxdigiti", scope: !739, file: !739, line: 280, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !763, line: 116)
!763 = !DISubprogram(name: "tolower", linkageName: "_Z7toloweri", scope: !739, file: !739, line: 292, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !765, line: 117)
!765 = !DISubprogram(name: "toupper", linkageName: "_Z7toupperi", scope: !739, file: !739, line: 298, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !767, line: 63)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !768, line: 31, baseType: !769)
!768 = !DIFile(filename: "/usr/include/sys/_types/_wint_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !191, line: 112, baseType: !20)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !771, line: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !772, line: 31, baseType: !773)
!772 = !DIFile(filename: "/usr/include/_types/_wctrans_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctrans_t", file: !774, line: 40, baseType: !20)
!774 = !DIFile(filename: "/usr/include/_types.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !776, line: 65)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !777, line: 31, baseType: !778)
!777 = !DIFile(filename: "/usr/include/_types/_wctype_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wctype_t", file: !774, line: 42, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !191, line: 45, baseType: !301)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !781, line: 66)
!781 = !DISubprogram(name: "iswalnum", linkageName: "_Z8iswalnumi", scope: !782, file: !782, line: 66, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!782 = !DIFile(filename: "/usr/include/_wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!783 = !DISubroutineType(types: !784)
!784 = !{!20, !767}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !786, line: 67)
!786 = !DISubprogram(name: "iswalpha", linkageName: "_Z8iswalphai", scope: !782, file: !782, line: 72, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !788, line: 68)
!788 = !DISubprogram(name: "iswblank", linkageName: "_Z8iswblanki", scope: !789, file: !789, line: 50, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!789 = !DIFile(filename: "/usr/include/wctype.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !791, line: 69)
!791 = !DISubprogram(name: "iswcntrl", linkageName: "_Z8iswcntrli", scope: !782, file: !782, line: 78, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !793, line: 70)
!793 = !DISubprogram(name: "iswdigit", linkageName: "_Z8iswdigiti", scope: !782, file: !782, line: 90, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !795, line: 71)
!795 = !DISubprogram(name: "iswgraph", linkageName: "_Z8iswgraphi", scope: !782, file: !782, line: 96, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !797, line: 72)
!797 = !DISubprogram(name: "iswlower", linkageName: "_Z8iswloweri", scope: !782, file: !782, line: 102, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !799, line: 73)
!799 = !DISubprogram(name: "iswprint", linkageName: "_Z8iswprinti", scope: !782, file: !782, line: 108, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !801, line: 74)
!801 = !DISubprogram(name: "iswpunct", linkageName: "_Z8iswpuncti", scope: !782, file: !782, line: 114, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !803, line: 75)
!803 = !DISubprogram(name: "iswspace", linkageName: "_Z8iswspacei", scope: !782, file: !782, line: 120, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !805, line: 76)
!805 = !DISubprogram(name: "iswupper", linkageName: "_Z8iswupperi", scope: !782, file: !782, line: 126, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !807, line: 77)
!807 = !DISubprogram(name: "iswxdigit", linkageName: "_Z9iswxdigiti", scope: !782, file: !782, line: 132, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !809, line: 78)
!809 = !DISubprogram(name: "iswctype", linkageName: "_Z8iswctypeij", scope: !782, file: !782, line: 84, type: !810, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!810 = !DISubroutineType(types: !811)
!811 = !{!20, !767, !776}
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !813, line: 79)
!813 = !DISubprogram(name: "wctype", scope: !782, file: !782, line: 172, type: !814, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!814 = !DISubroutineType(types: !815)
!815 = !{!776, !214}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !817, line: 80)
!817 = !DISubprogram(name: "towlower", linkageName: "_Z8towloweri", scope: !782, file: !782, line: 138, type: !818, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!818 = !DISubroutineType(types: !819)
!819 = !{!767, !767}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !821, line: 81)
!821 = !DISubprogram(name: "towupper", linkageName: "_Z8towupperi", scope: !782, file: !782, line: 144, type: !818, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !823, line: 82)
!823 = !DISubprogram(name: "towctrans", scope: !789, file: !789, line: 121, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!824 = !DISubroutineType(types: !825)
!825 = !{!767, !767, !771}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !827, line: 83)
!827 = !DISubprogram(name: "wctrans", scope: !789, file: !789, line: 123, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!828 = !DISubroutineType(types: !829)
!829 = !{!771, !214}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !831, line: 116)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !832, line: 31, baseType: !833)
!832 = !DIFile(filename: "/usr/include/sys/_types/_mbstate_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !191, line: 81, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !191, line: 79, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !191, line: 76, size: 1024, elements: !836, identifier: "_ZTS11__mbstate_t")
!836 = !{!837, !841}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !835, file: !191, line: 77, baseType: !838, size: 1024)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1024, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !835, file: !191, line: 78, baseType: !289, size: 64)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, line: 117)
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !844, line: 118)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !845, line: 73, size: 448, elements: !846, identifier: "_ZTS2tm")
!845 = !DIFile(filename: "/usr/include/time.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !844, file: !845, line: 74, baseType: !20, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !844, file: !845, line: 75, baseType: !20, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !844, file: !845, line: 76, baseType: !20, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !844, file: !845, line: 77, baseType: !20, size: 32, offset: 96)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !844, file: !845, line: 78, baseType: !20, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !844, file: !845, line: 79, baseType: !20, size: 32, offset: 160)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !844, file: !845, line: 80, baseType: !20, size: 32, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !844, file: !845, line: 81, baseType: !20, size: 32, offset: 224)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !844, file: !845, line: 82, baseType: !20, size: 32, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !844, file: !845, line: 83, baseType: !186, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !844, file: !845, line: 84, baseType: !212, size: 64, offset: 384)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !767, line: 119)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !521, line: 120)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !861, line: 121)
!861 = !DISubprogram(name: "fwprintf", scope: !862, file: !862, line: 103, type: !863, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!862 = !DIFile(filename: "/usr/include/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!863 = !DISubroutineType(types: !864)
!864 = !{!20, !580, !518, null}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !866, line: 122)
!866 = !DISubprogram(name: "fwscanf", scope: !862, file: !862, line: 104, type: !863, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !868, line: 123)
!868 = !DISubprogram(name: "swprintf", scope: !862, file: !862, line: 115, type: !869, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!869 = !DISubroutineType(types: !870)
!870 = !{!20, !504, !188, !518, null}
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !872, line: 124)
!872 = !DISubprogram(name: "vfwprintf", scope: !862, file: !862, line: 118, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!873 = !DISubroutineType(types: !874)
!874 = !{!20, !580, !518, !613}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !876, line: 125)
!876 = !DISubprogram(name: "vswprintf", scope: !862, file: !862, line: 120, type: !877, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!877 = !DISubroutineType(types: !878)
!878 = !{!20, !504, !188, !518, !613}
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !880, line: 126)
!880 = !DISubprogram(name: "swscanf", scope: !862, file: !862, line: 116, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!881 = !DISubroutineType(types: !882)
!882 = !{!20, !518, !518, null}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !884, line: 127)
!884 = !DISubprogram(name: "vfwscanf", scope: !862, file: !862, line: 170, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !886, line: 128)
!886 = !DISubprogram(name: "vswscanf", scope: !862, file: !862, line: 172, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!887 = !DISubroutineType(types: !888)
!888 = !{!20, !518, !518, !613}
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !890, line: 129)
!890 = !DISubprogram(name: "fgetwc", scope: !862, file: !862, line: 98, type: !891, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!891 = !DISubroutineType(types: !892)
!892 = !{!767, !580}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !894, line: 130)
!894 = !DISubprogram(name: "fgetws", scope: !862, file: !862, line: 99, type: !895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!895 = !DISubroutineType(types: !896)
!896 = !{!504, !504, !20, !580}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !898, line: 131)
!898 = !DISubprogram(name: "fputwc", scope: !862, file: !862, line: 100, type: !899, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!899 = !DISubroutineType(types: !900)
!900 = !{!767, !505, !580}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !902, line: 132)
!902 = !DISubprogram(name: "fputws", scope: !862, file: !862, line: 101, type: !903, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!903 = !DISubroutineType(types: !904)
!904 = !{!20, !518, !580}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !906, line: 133)
!906 = !DISubprogram(name: "fwide", scope: !862, file: !862, line: 102, type: !907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!907 = !DISubroutineType(types: !908)
!908 = !{!20, !580, !20}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !910, line: 134)
!910 = !DISubprogram(name: "getwc", scope: !862, file: !862, line: 105, type: !891, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !912, line: 135)
!912 = !DISubprogram(name: "putwc", scope: !862, file: !862, line: 113, type: !899, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !914, line: 136)
!914 = !DISubprogram(name: "ungetwc", scope: !862, file: !862, line: 117, type: !915, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!915 = !DISubroutineType(types: !916)
!916 = !{!767, !767, !580}
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !918, line: 137)
!918 = !DISubprogram(name: "wcstod", scope: !862, file: !862, line: 144, type: !919, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!919 = !DISubroutineType(types: !920)
!920 = !{!376, !518, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !923, line: 138)
!923 = !DISubprogram(name: "wcstof", scope: !862, file: !862, line: 175, type: !924, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!924 = !DISubroutineType(types: !925)
!925 = !{!398, !518, !921}
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !927, line: 139)
!927 = !DISubprogram(name: "wcstold", scope: !862, file: !862, line: 177, type: !928, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!928 = !DISubroutineType(types: !929)
!929 = !{!196, !518, !921}
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !931, line: 140)
!931 = !DISubprogram(name: "wcstol", scope: !862, file: !862, line: 147, type: !932, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!932 = !DISubroutineType(types: !933)
!933 = !{!186, !518, !921, !20}
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !935, line: 142)
!935 = !DISubprogram(name: "wcstoll", scope: !862, file: !862, line: 180, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!936 = !DISubroutineType(types: !937)
!937 = !{!289, !518, !921, !20}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !939, line: 144)
!939 = !DISubprogram(name: "wcstoul", scope: !862, file: !862, line: 149, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!940 = !DISubroutineType(types: !941)
!941 = !{!192, !518, !921, !20}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !943, line: 146)
!943 = !DISubprogram(name: "wcstoull", scope: !862, file: !862, line: 182, type: !944, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!944 = !DISubroutineType(types: !945)
!945 = !{!305, !518, !921, !20}
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !947, line: 148)
!947 = !DISubprogram(name: "wcscpy", scope: !862, file: !862, line: 128, type: !948, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!948 = !DISubroutineType(types: !949)
!949 = !{!504, !504, !518}
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !951, line: 149)
!951 = !DISubprogram(name: "wcsncpy", scope: !862, file: !862, line: 135, type: !952, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!952 = !DISubroutineType(types: !953)
!953 = !{!504, !504, !518, !188}
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !955, line: 150)
!955 = !DISubprogram(name: "wcscat", scope: !862, file: !862, line: 124, type: !948, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !957, line: 151)
!957 = !DISubprogram(name: "wcsncat", scope: !862, file: !862, line: 133, type: !952, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !959, line: 152)
!959 = !DISubprogram(name: "wcscmp", scope: !862, file: !862, line: 126, type: !960, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!960 = !DISubroutineType(types: !961)
!961 = !{!20, !518, !518}
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !963, line: 153)
!963 = !DISubprogram(name: "wcscoll", scope: !862, file: !862, line: 127, type: !960, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !965, line: 154)
!965 = !DISubprogram(name: "wcsncmp", scope: !862, file: !862, line: 134, type: !966, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!966 = !DISubroutineType(types: !967)
!967 = !{!20, !518, !518, !188}
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !969, line: 155)
!969 = !DISubprogram(name: "wcsxfrm", scope: !862, file: !862, line: 142, type: !970, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!970 = !DISubroutineType(types: !971)
!971 = !{!188, !504, !518, !188}
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !973, line: 156)
!973 = !DISubprogram(name: "wcschr", linkageName: "_Z6wcschrUa9enable_ifIXLb1EEEPww", scope: !974, file: !974, line: 137, type: !975, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!974 = !DIFile(filename: "/Users/aser/Documents/LLVM/llvm-4.0/build/bin/../include/c++/v1/wchar.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!975 = !DISubroutineType(types: !976)
!976 = !{!504, !504, !505}
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !978, line: 157)
!978 = !DISubprogram(name: "wcspbrk", linkageName: "_Z7wcspbrkUa9enable_ifIXLb1EEEPwPKw", scope: !974, file: !974, line: 144, type: !948, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !980, line: 158)
!980 = !DISubprogram(name: "wcsrchr", linkageName: "_Z7wcsrchrUa9enable_ifIXLb1EEEPww", scope: !974, file: !974, line: 151, type: !975, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !982, line: 159)
!982 = !DISubprogram(name: "wcsstr", linkageName: "_Z6wcsstrUa9enable_ifIXLb1EEEPwPKw", scope: !974, file: !974, line: 158, type: !948, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !984, line: 160)
!984 = !DISubprogram(name: "wmemchr", linkageName: "_Z7wmemchrUa9enable_ifIXLb1EEEPwwm", scope: !974, file: !974, line: 165, type: !985, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!985 = !DISubroutineType(types: !986)
!986 = !{!504, !504, !505, !188}
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !988, line: 161)
!988 = !DISubprogram(name: "wcscspn", scope: !862, file: !862, line: 129, type: !989, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!989 = !DISubroutineType(types: !990)
!990 = !{!188, !518, !518}
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !992, line: 162)
!992 = !DISubprogram(name: "wcslen", scope: !862, file: !862, line: 132, type: !993, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!993 = !DISubroutineType(types: !994)
!994 = !{!188, !518}
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !996, line: 163)
!996 = !DISubprogram(name: "wcsspn", scope: !862, file: !862, line: 140, type: !989, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !998, line: 164)
!998 = !DISubprogram(name: "wcstok", scope: !862, file: !862, line: 145, type: !999, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!504, !504, !518, !921}
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1002, line: 165)
!1002 = !DISubprogram(name: "wmemcmp", scope: !862, file: !862, line: 151, type: !966, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1004, line: 166)
!1004 = !DISubprogram(name: "wmemcpy", scope: !862, file: !862, line: 152, type: !952, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1006, line: 167)
!1006 = !DISubprogram(name: "wmemmove", scope: !862, file: !862, line: 153, type: !952, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1008, line: 168)
!1008 = !DISubprogram(name: "wmemset", scope: !862, file: !862, line: 154, type: !985, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1010, line: 169)
!1010 = !DISubprogram(name: "wcsftime", linkageName: "\01_wcsftime", scope: !862, file: !862, line: 130, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!188, !504, !188, !518, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1016, line: 170)
!1016 = !DISubprogram(name: "btowc", scope: !862, file: !862, line: 97, type: !1017, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!767, !20}
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1020, line: 171)
!1020 = !DISubprogram(name: "wctob", scope: !862, file: !862, line: 143, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1022, line: 172)
!1022 = !DISubprogram(name: "mbsinit", scope: !862, file: !862, line: 110, type: !1023, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!20, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1028, line: 173)
!1028 = !DISubprogram(name: "mbrlen", scope: !862, file: !862, line: 107, type: !1029, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!188, !214, !188, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1033, line: 174)
!1033 = !DISubprogram(name: "mbrtowc", scope: !862, file: !862, line: 108, type: !1034, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!188, !504, !214, !188, !1031}
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1037, line: 175)
!1037 = !DISubprogram(name: "wcrtomb", scope: !862, file: !862, line: 123, type: !1038, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!188, !212, !505, !1031}
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1041, line: 176)
!1041 = !DISubprogram(name: "mbsrtowcs", scope: !862, file: !862, line: 111, type: !1042, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!188, !504, !1044, !188, !1031}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1046, line: 177)
!1046 = !DISubprogram(name: "wcsrtombs", scope: !862, file: !862, line: 138, type: !1047, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!188, !212, !1049, !188, !1031}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1051, line: 180)
!1051 = !DISubprogram(name: "getwchar", scope: !862, file: !862, line: 106, type: !1052, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!767}
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1055, line: 181)
!1055 = !DISubprogram(name: "vwscanf", scope: !862, file: !862, line: 174, type: !1056, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!20, !518, !613}
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1059, line: 182)
!1059 = !DISubprogram(name: "wscanf", scope: !862, file: !862, line: 156, type: !1060, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!20, !518, null}
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1063, line: 186)
!1063 = !DISubprogram(name: "putwchar", scope: !862, file: !862, line: 114, type: !1064, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!767, !505}
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1067, line: 187)
!1067 = !DISubprogram(name: "vwprintf", scope: !862, file: !862, line: 122, type: !1056, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1069, line: 188)
!1069 = !DISubprogram(name: "wprintf", scope: !862, file: !862, line: 155, type: !1060, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1071, line: 56)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1072, line: 30, baseType: !1073)
!1072 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !191, line: 117, baseType: !192)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, line: 57)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1076, line: 58)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1077, line: 30, baseType: !1078)
!1077 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_release_acquire3")
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !191, line: 120, baseType: !186)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !844, line: 59)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1081, line: 60)
!1081 = !DISubprogram(name: "clock", linkageName: "\01_clock", scope: !845, file: !845, line: 107, type: !1082, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!1071}
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1085, line: 61)
!1085 = !DISubprogram(name: "difftime", scope: !845, file: !845, line: 109, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!376, !1076, !1076}
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1089, line: 62)
!1089 = !DISubprogram(name: "mktime", linkageName: "\01_mktime", scope: !845, file: !845, line: 113, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1076, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1094, line: 63)
!1094 = !DISubprogram(name: "time", scope: !845, file: !845, line: 116, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1076, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1099, line: 65)
!1099 = !DISubprogram(name: "asctime", scope: !845, file: !845, line: 106, type: !1100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!212, !1013}
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1103, line: 66)
!1103 = !DISubprogram(name: "ctime", scope: !845, file: !845, line: 108, type: !1104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!212, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1109, line: 67)
!1109 = !DISubprogram(name: "gmtime", scope: !845, file: !845, line: 111, type: !1110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1092, !1106}
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1113, line: 68)
!1113 = !DISubprogram(name: "localtime", scope: !845, file: !845, line: 112, type: !1110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1115, line: 70)
!1115 = !DISubprogram(name: "strftime", linkageName: "\01_strftime", scope: !845, file: !845, line: 114, type: !1116, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!188, !212, !188, !214, !1013}
!1118 = !{i32 2, !"Dwarf Version", i32 2}
!1119 = !{i32 2, !"Debug Info Version", i32 3}
!1120 = !{i32 1, !"PIC Level", i32 2}
!1121 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1122 = distinct !DISubprogram(name: "f1", linkageName: "_Z2f1v", scope: !3, file: !3, line: 10, type: !445, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1123)
!1123 = !{}
!1124 = !DILocation(line: 11, column: 5, scope: !1122)
!1125 = !DILocalVariable(name: "__d", arg: 2, scope: !1126, file: !6, line: 916, type: !20)
!1126 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt3__113__atomic_baseIiLb0EE5storeEiNS_12memory_orderE", scope: !33, file: !6, line: 916, type: !55, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !54, variables: !1127)
!1127 = !{!1128, !1125, !1130}
!1128 = !DILocalVariable(name: "this", arg: 1, scope: !1126, type: !1129, flags: DIFlagArtificial | DIFlagObjectPointer)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1130 = !DILocalVariable(name: "__m", arg: 3, scope: !1126, file: !6, line: 916, type: !53)
!1131 = !DIExpression()
!1132 = !DILocation(line: 916, column: 20, scope: !1126, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 12, column: 7, scope: !1122)
!1134 = !DILocation(line: 916, column: 38, scope: !1126, inlinedAt: !1133)
!1135 = !DILocation(line: 918, column: 10, scope: !1136, inlinedAt: !1133)
!1136 = !DILexicalBlockFile(scope: !1126, file: !6, discriminator: 2)
!1137 = !DILocation(line: 916, column: 20, scope: !1126, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 13, column: 7, scope: !1122)
!1139 = !DILocation(line: 916, column: 38, scope: !1126, inlinedAt: !1138)
!1140 = !DILocation(line: 918, column: 10, scope: !1136, inlinedAt: !1138)
!1141 = !DILocation(line: 14, column: 5, scope: !1122)
!1142 = !DILocation(line: 15, column: 1, scope: !1122)
!1143 = distinct !DISubprogram(name: "f2", linkageName: "_Z2f2v", scope: !3, file: !3, line: 17, type: !445, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1123)
!1144 = !DILocation(line: 18, column: 5, scope: !1143)
!1145 = !DILocalVariable(name: "__m", arg: 2, scope: !1146, file: !6, line: 924, type: !53)
!1146 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE", scope: !33, file: !6, line: 924, type: !62, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, unit: !2, declaration: !61, variables: !1147)
!1147 = !{!1148, !1145}
!1148 = !DILocalVariable(name: "this", arg: 1, scope: !1146, type: !1149, flags: DIFlagArtificial | DIFlagObjectPointer)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1150 = !DILocation(line: 924, column: 27, scope: !1146, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 19, column: 15, scope: !1143)
!1152 = !DILocation(line: 19, column: 11, scope: !1143)
!1153 = !{!1154, !1154, i64 0}
!1154 = !{!"int", !1155, i64 0}
!1155 = !{!"omnipotent char", !1156, i64 0}
!1156 = !{!"Simple C++ TBAA"}
!1157 = !DILocation(line: 924, column: 27, scope: !1146, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 20, column: 15, scope: !1143)
!1159 = !DILocation(line: 20, column: 11, scope: !1143)
!1160 = !DILocation(line: 21, column: 5, scope: !1143)
!1161 = !DILocation(line: 22, column: 1, scope: !1143)
!1162 = distinct !DISubprogram(name: "f3", linkageName: "_Z2f3v", scope: !3, file: !3, line: 24, type: !445, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1123)
!1163 = !DILocation(line: 25, column: 5, scope: !1162)
!1164 = !DILocation(line: 924, column: 27, scope: !1146, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 26, column: 15, scope: !1162)
!1166 = !DILocation(line: 26, column: 11, scope: !1162)
!1167 = !DILocation(line: 924, column: 27, scope: !1146, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 27, column: 15, scope: !1162)
!1169 = !DILocation(line: 27, column: 11, scope: !1162)
!1170 = !DILocation(line: 28, column: 5, scope: !1162)
!1171 = !DILocation(line: 29, column: 1, scope: !1162)
!1172 = distinct !DISubprogram(name: "user_main", scope: !3, file: !3, line: 33, type: !421, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1123)
!1173 = !DILocation(line: 35, column: 5, scope: !1172)
